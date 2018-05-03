unit fSortOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  Math, StdCtrls,
  IniFiles, Menus, DB, DBCtrls, SqlTimSt, dxBarExtItems, dxBar,
  Grids,  DBGrids,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxImageComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  cxButtonEdit, cxDBLookupComboBox, cxCheckBox, cxLabel, cxSpinEdit,
  cxContainer,   DateUtils, cxLookAndFeels, cxSplitter, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxPC, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  cxTimeEdit, cxLookAndFeelPainters, cxButtons, cxCalc,
  cxDBEdit, cxMemo, cxRichEdit, cxDBRichEdit, cxDBLabel, cxImage,
  kbmMemTable, FireDAC.Stan.Async,
  FireDAC.DApt, cxGroupBox, cxRadioGroup, VidaType,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxRibbonPainter, cxNavigator, siComp, siLngLnk, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu, System.Actions ;


  Const
    CM_MOVEIT = WM_USER + 1;
    CM_MOVEITrawmtrl = WM_USER + 2;

 type
  TdxBarButtonControlAccess = class(TdxBarButtonControl);

type
  TfrmSortOrder = class(TForm)
    ActionList1: TActionList;
    ac_Exit: TAction;
    ac_customizeLayout: TAction;
    ac_Refresh: TAction;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    acChangeAvropLayout: TAction;
    acSaveAvropLayout: TAction;
    pmAO: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acChangeRowTable: TAction;
    dxBarButton3: TdxBarButton;
    acApplyUpdates: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    acOpenWorkOrder: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acNewAO: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    acPrintAO: TAction;
    acPrintAOResult: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acDeleteSortOrder: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    acSaveRowLayout: TAction;
    dxBarButton4: TdxBarButton;
    acCreateWeekSchedule: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    acNewDryKilnCharge: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acCalcResult: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    acCalcAll: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    imglOutbar_large: TImageList;
    acOverview: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    acSaveUserProps: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    acSetMarkedRunOrdersToCurrentWeek: TAction;
    dxBarButton5: TdxBarButton;
    acNewFromTemplate: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    cds_SortOrderList: TFDQuery;
    cds_SortOrderListPIPNo: TIntegerField;
    cds_SortOrderListLIPNo: TIntegerField;
    cds_SortOrderListProgramNo: TIntegerField;
    cds_SortOrderListComments: TMemoField;
    cds_SortOrderListRealStartTime: TSQLTimeStampField;
    cds_SortOrderListRealEndTime: TSQLTimeStampField;
    cds_SortOrderListRealProductionTime: TBCDField;
    cds_SortOrderListPrioNo: TIntegerField;
    cds_SortOrderListMCClassNo: TIntegerField;
    cds_SortOrderListMoveToLIPNo: TIntegerField;
    cds_SortOrderListTypeOfRunNo: TIntegerField;
    cds_SortOrderListLego: TIntegerField;
    cds_SortOrderListTemplate: TIntegerField;
    cds_SortOrderListTemplateName: TStringField;
    cds_SortOrderListTemplateUser: TIntegerField;
    cds_SortOrderListLAGERSTLLE: TStringField;
    cds_SortOrderListPRODENHET: TStringField;
    cds_SortOrderListLAGERGRUPP: TStringField;
    cds_SortOrderListPRODUCENT: TStringField;
    cds_SortOrderListGARE: TStringField;
    cds_SortOrderListRvara: TStringField;
    cds_SortOrderListFrdigvara: TStringField;
    cds_SortOrderListKund: TStringField;
    cds_SortOrderListTypeOfRunName: TStringField;
    ds_SortOrderList: TDataSource;
    FD_SortOrderRows: TFDQuery;
    ds_SortOrderRows: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    FD_SOHdr: TFDQuery;
    ds_SOHdr: TDataSource;
    FD_SOHdrKrnr: TIntegerField;
    FD_SOHdrYearWeek: TStringField;
    FD_SOHdrVerk: TStringField;
    FD_SOHdrHyvel: TStringField;
    FD_SOHdrStart: TSQLTimeStampField;
    FD_SOHdrTotaltid: TBCDField;
    FD_SOHdrPosttid: TBCDField;
    FD_SOHdrHyvlatLPM: TBCDField;
    FD_SOHdrLPMperMin: TFMTBCDField;
    FD_SOHdrNM3IN: TBCDField;
    FD_SOHdrKostPerNM3Ut: TFMTBCDField;
    FD_SortOrderRowsProductNo: TIntegerField;
    FD_SortOrderRowsKrnr: TIntegerField;
    FD_SortOrderRowsNT: TFloatField;
    FD_SortOrderRowsNB: TFloatField;
    FD_SortOrderRowsAT: TFloatField;
    FD_SortOrderRowsAB: TFloatField;
    FD_SortOrderRowsProdukt: TStringField;
    FD_SortOrderRowsAM3: TBCDField;
    FD_SortOrderRowsNM3: TBCDField;
    FD_SortOrderRowsAM1: TBCDField;
    FD_SortOrderRowsStyck: TIntegerField;
    FD_SortOrderRowsVrde: TBCDField;
    FD_SortOrderRowsPris: TBCDField;
    FD_SortOrderRowsUtfallonFin: TBCDField;
    FD_SortOrderRowsUtfallonRaw: TBCDField;
    FD_SOHdrKass_AM3: TFloatField;
    FD_SOHdrKass_Styck: TFloatField;
    FD_Rawmtrl: TFDQuery;
    ds_Rawmtrl: TDataSource;
    FD_RawmtrlProductDisplayName: TStringField;
    FD_RawmtrlSortingOrderNo: TIntegerField;
    FD_RawmtrlProductNo: TIntegerField;
    FD_RawmtrlRawMtrlNo: TIntegerField;
    FD_RawmtrlSTYCK: TIntegerField;
    FD_RawmtrlAM3: TFloatField;
    FD_RawmtrlNM3: TFloatField;
    FD_RawmtrlAM1: TFloatField;
    FD_RawmtrlUrlaggPcs: TIntegerField;
    FD_RawmtrlAdjustedPieces: TIntegerField;
    FD_RawmtrlAdjustedAM3: TFloatField;
    FD_RawmtrlAdjustedNM3: TFloatField;
    FD_RawmtrlAdjustedAM1: TFloatField;
    FD_RawmtrlLameller: TIntegerField;
    FD_RawmtrlKapSnitt: TIntegerField;
    FD_RawmtrlExpectedPcsOut: TIntegerField;
    FD_RawmtrlATMM: TFloatField;
    FD_RawmtrlABMM: TFloatField;
    FD_RawmtrlALMM: TFloatField;
    FD_RawmtrlNTMM: TFloatField;
    FD_RawmtrlNBMM: TFloatField;
    FD_RawmtrlNLMM: TFloatField;
    FD_RawmtrlSizePercentOfTotal: TFloatField;
    FD_RawmtrlPercentAdjPcs: TFloatField;
    FD_RawmtrlKassPcs: TFloatField;
    FD_RawmtrlKassAM3: TFloatField;
    FD_RawmtrlKassAM1: TFloatField;
    FD_RawmtrlPricePerNM3: TFloatField;
    FD_RawmtrlProductValue: TFloatField;
    FD_SOHdrSortingOrderNo: TIntegerField;
    FD_SortOrderRowsSortingOrderNo: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1Yellow: TcxStyle;
    cxStyle2MoneyGreen: TcxStyle;
    cxStyleOlive: TcxStyle;
    cxStyle3FardigVara: TcxStyle;
    cxStyleLightYellow: TcxStyle;
    cxStylePkgNotAvail: TcxStyle;
    cxStyle1Red: TcxStyle;
    cxStyle1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    FD_SOHdrFardigVaraUtNM3: TFloatField;
    FD_SOHdrFardigVaraUtAM3: TFloatField;
    FD_SOHdrUrlgg_Styck: TIntegerField;
    FD_SOHdrSlut: TSQLTimeStampField;
    cxStyleGreenBoldText: TcxStyle;
    acExpandRows: TAction;
    dxBarPopupMenuSortOrderRows: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    acCollapseAllRows: TAction;
    dxBarButton7: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    FD_SOHdrATMM: TFloatField;
    FD_SOHdrABMM: TFloatField;
    FD_SOHdrNTMM: TFloatField;
    FD_SOHdrNBMM: TFloatField;
    FD_SOHdrKostPerNM3Raw: TBCDField;
    acAddPkgToRun: TAction;
    PanelAOMain: TPanel;
    pgMain: TcxPageControl;
    tsVeckoVy: TcxTabSheet;
    tsEditKorOrder: TcxTabSheet;
    tsAnalys: TcxTabSheet;
    tsRapportVy: TcxTabSheet;
    grdSortOrderRows: TcxGrid;
    grdSortOrderRowsDBTableView1: TcxGridDBTableView;
    grdSortOrderRowsDBTableView1ProductNo: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1Krnr: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1NT: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1NB: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1AT: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1AB: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1Produkt: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1AM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1NM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1AM1: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1Styck: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1Vrde: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1Pris: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1UtfallonFin: TcxGridDBColumn;
    grdSortOrderRowsDBTableView1UtfallonRaw: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2: TcxGridDBTableView;
    grdSortOrderRowsDBTableView2Krnr: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2YearWeek: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Verk: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Hyvel: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Start: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Slut: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Totaltid: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Posttid: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2HyvlatLPM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2LPMperMin: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2NM3IN: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2KostPerNM3Ut: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Kass_Styck: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Kass_AM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2FardigVaraUtNM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2FardigVaraUtAM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2Urlgg_Styck: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2ATMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2ABMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2NTMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2NBMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView2KostPerNM3Raw: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3: TcxGridDBTableView;
    grdSortOrderRowsDBTableView3ProductDisplayName: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ALMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3SortingOrderNo: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ProductNo: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3RawMtrlNo: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3STYCK: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3NM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AM1: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3UrlaggPcs: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AdjustedPieces: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AdjustedAM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AdjustedNM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3AdjustedAM1: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3Lameller: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3KapSnitt: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ExpectedPcsOut: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ATMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ABMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3NTMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3NBMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3NLMM: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3SizePercentOfTotal: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3PercentAdjPcs: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3KassPcs: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3KassAM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3KassAM1: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3PricePerNM3: TcxGridDBColumn;
    grdSortOrderRowsDBTableView3ProductValue: TcxGridDBColumn;
    grdSortOrderRowsLevel1: TcxGridLevel;
    grdSortOrderRowsLevel2: TcxGridLevel;
    grdSortOrderRowsLevel3: TcxGridLevel;
    grdWorkOrder: TcxGrid;
    grdWorkOrderDBTableView1: TcxGridDBTableView;
    grdWorkOrderDBTableView1PRODUCENT: TcxGridDBColumn;
    grdWorkOrderDBTableView1AGARE: TcxGridDBColumn;
    grdWorkOrderDBTableView1SortingOrderNo: TcxGridDBColumn;
    grdWorkOrderDBTableView1ProgramNo: TcxGridDBColumn;
    grdWorkOrderDBTableView1Status: TcxGridDBColumn;
    grdWorkOrderDBTableView1LAGERSTLLE: TcxGridDBColumn;
    grdWorkOrderDBTableView1LAGERGRUPP: TcxGridDBColumn;
    grdWorkOrderDBTableView1PRODENHET: TcxGridDBColumn;
    grdWorkOrderDBTableView1PlannedProductionTime: TcxGridDBColumn;
    grdWorkOrderDBTableView1RealProductionTime: TcxGridDBColumn;
    grdWorkOrderDBTableView1StopTime: TcxGridDBColumn;
    grdWorkOrderDBTableView1StartTime: TcxGridDBColumn;
    grdWorkOrderDBTableView1WeekNo: TcxGridDBColumn;
    grdWorkOrderDBTableView1Rvara: TcxGridDBColumn;
    grdWorkOrderDBTableView1Frdigvara: TcxGridDBColumn;
    grdWorkOrderDBTableView1Kund: TcxGridDBColumn;
    grdWorkOrderDBTableView1LONR: TcxGridDBColumn;
    grdWorkOrderDBTableView1TemplateName: TcxGridDBColumn;
    grdWorkOrderDBTableView1EndTime: TcxGridDBColumn;
    grdWorkOrderLevel1: TcxGridLevel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel4: TPanel;
    cbShowAll: TcxCheckBox;
    seWeekNo: TcxSpinEdit;
    teAONr: TcxTextEdit;
    cxLabel5: TcxLabel;
    cnShowTemplates: TcxCheckBox;
    pgEditKorOrder: TcxPageControl;
    tsKopplaRavara: TcxTabSheet;
    tsInstruktioner: TcxTabSheet;
    tsForKalkyl: TcxTabSheet;
    PanelKopplaRavara: TPanel;
    Panel10: TPanel;
    grdRawMtrl: TcxGrid;
    grdRawMtrlDBBandedTableView1: TcxGridDBBandedTableView;
    grdRawMtrlDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1LengthDescription: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1MainRawMtrl: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AntalKapSnitt: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AntalLamellerUt: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PlannedAM1: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1UrlaggsProcent: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1RealLPM: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1MCClassNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn;
    grdRawMtrlLevel1: TcxGridLevel;
    dsUrlaggProduct: TDataSource;
    acAddUrlaggFromDropList: TAction;
    acAddProduktToAORow: TAction;
    acRemoveAORow: TAction;
    DataSource1: TDataSource;
    acAddRawMtrlUsedPreviously: TAction;
    acAddRawMtrl: TAction;
    acDeleteRawMtrl: TAction;
    acShowRawMtrilProductInInventoryList: TAction;
    Panel16: TPanel;
    Label72: TLabel;
    Label73: TLabel;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    lcRawPIPNAME: TcxDBLookupComboBox;
    lcRawLIPName: TcxDBLookupComboBox;
    cxButton33: TcxButton;
    cbPrintRawMtrlPart: TcxDBCheckBox;
    cxButton57: TcxButton;
    lcRawProdukt: TcxDBLookupComboBox;
    cxGridPopupMenu3: TcxGridPopupMenu;
    cxGridPopupMenu4: TcxGridPopupMenu;
    tcEditKorOrder: TcxTabControl;
    acSetNormalText: TAction;
    acSetNormalTextHyvelInfo: TAction;
    acCopyLOInternalNoteToHyvelInfo: TAction;
    acAddPI: TAction;
    acCopyPItoMarkedRows: TAction;
    acAddLayoutRow: TAction;
    acDeleteLayout: TAction;
    acAddStdSpecLayout: TAction;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    mtProductProductDisplayName: TStringField;
    mtProductUrlaggProductNo: TIntegerField;
    mtProductUrlaggProdukt: TStringField;
    dsProduct: TDataSource;
    PanelKopplaFardigvara: TPanel;
    grdSortRows: TcxGrid;
    grdSortRowsDBTableView1: TcxGridDBTableView;
    grdSortRowsDBTableView1PRODUKT: TcxGridDBColumn;
    grdSortRowsDBTableView1LengthDescription: TcxGridDBColumn;
    grdSortRowsDBTableView1ALMM: TcxGridDBColumn;
    grdSortRowsDBTableView1PlannedAM3: TcxGridDBColumn;
    grdSortRowsDBTableView1AM3: TcxGridDBColumn;
    grdSortRowsDBTableView1PPP: TcxGridDBColumn;
    grdSortRowsDBTableView1ExLog: TcxGridDBColumn;
    grdSortRowsDBTableView1PcsPerBundle: TcxGridDBColumn;
    grdSortRowsDBTableView1FUKTKVOT: TcxGridDBColumn;
    grdSortRowsDBTableView1TACKNING: TcxGridDBColumn;
    grdSortRowsDBTableView1TypeOfBoard: TcxGridDBColumn;
    grdSortRowsDBTableView1NoOfPkgsNOTE: TcxGridDBColumn;
    grdSortRowsDBBandedTableView1: TcxGridDBBandedTableView;
    grdSortRowsDBBandedTableView1LengthDescription: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PPP: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1FUKTKVOT: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1TargetProduct: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Urlagg: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1EndPkgAllowed: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1MRKE: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1LONR: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Customer: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ExportRow: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Prio: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Lagergrupp: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1SortingOrderRowNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PkgPrefix: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PKT: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1CostDist: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Price: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Prisenhet: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Prislista: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1CSDNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1MCClassNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1VolumeUnitNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ProdInstructNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PriceUnit: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1SortOrder: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Notering: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1StickRecipe: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1RefCopies: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Lggare: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1PlannedNM3: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ProdNM3: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1ArtikelKod: TcxGridDBBandedColumn;
    grdSortRowsLevel1: TcxGridLevel;
    acRegisterMultiplePkgs: TAction;
    acRemovePkgFromSystem: TAction;
    acRefreshPaRegPkg: TAction;
    acLoadSelectedPkgs: TAction;
    acPickPkgToAddAsNewRegs: TAction;
    tsHuvud: TcxTabSheet;
    Panel25: TPanel;
    GroupBox2: TGroupBox;
    cbVisaMeddelande: TcxCheckBox;
    acCalcStartSlutochProdTid: TAction;
    acCalculateProductionsTime: TAction;
    acShowProdTimeSegments: TAction;
    pgSubAttest: TcxPageControl;
    tsAvstamningRavara: TcxTabSheet;
    tsAvstamningTid: TcxTabSheet;
    tsAttest: TcxTabSheet;
    Panel20: TPanel;
    Panel21: TPanel;
    grdNewPkgs: TcxGrid;
    grdNewPkgsDBTableView1: TcxGridDBTableView;
    grdNewPkgsDBTableView1PAKETNR: TcxGridDBColumn;
    grdNewPkgsDBTableView1LEVKOD: TcxGridDBColumn;
    grdNewPkgsDBTableView1PRODUKT: TcxGridDBColumn;
    grdNewPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdNewPkgsDBTableView1AM3: TcxGridDBColumn;
    grdNewPkgsDBTableView1NM3: TcxGridDBColumn;
    grdNewPkgsDBTableView1STYCK: TcxGridDBColumn;
    grdNewPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdNewPkgsDBTableView1AM1: TcxGridDBColumn;
    grdNewPkgsDBTableView1PkgStatus: TcxGridDBColumn;
    grdNewPkgsDBTableView1Registrerad: TcxGridDBColumn;
    grdNewPkgsLevel1: TcxGridLevel;
    PanelPaRegHeader: TPanel;
    Panel22: TPanel;
    PanelAvRegHeader: TPanel;
    grdUsedPkgs: TcxGrid;
    grdUsedPkgsDBTableView1: TcxGridDBTableView;
    grdUsedPkgsDBTableView1PAKETNR: TcxGridDBColumn;
    grdUsedPkgsDBTableView1LEVKOD: TcxGridDBColumn;
    grdUsedPkgsDBTableView1PRODUKT: TcxGridDBColumn;
    grdUsedPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdUsedPkgsDBTableView1AM3: TcxGridDBColumn;
    grdUsedPkgsDBTableView1NM3: TcxGridDBColumn;
    grdUsedPkgsDBTableView1STYCK: TcxGridDBColumn;
    grdUsedPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdUsedPkgsDBTableView1AM1: TcxGridDBColumn;
    grdUsedPkgsDBTableView1Registrerad: TcxGridDBColumn;
    grdUsedPkgsLevel1: TcxGridLevel;
    Panel19: TPanel;
    Panel26: TPanel;
    cxButton7: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton13: TcxButton;
    cxButton31: TcxButton;
    cxButton51: TcxButton;
    cxButton60: TcxButton;
    acAvregistreraPaket: TAction;
    acCancelDeregistration: TAction;
    acRefreshAvReg: TAction;
    acSplitPkg: TAction;
    acDeleteUsedPkgRow: TAction;
    Panel27: TPanel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxButton30: TcxButton;
    cxButton32: TcxButton;
    cxButton52: TcxButton;
    cxButton53: TcxButton;
    cxSplitter1: TcxSplitter;
    acSaveKorOrder: TAction;
    acCancelChanges: TAction;
    pmStatusKorOrder: TPopupMenu;
    acStartSortOrder: TAction;
    acSetToPreliminary: TAction;
    acAvsluta: TAction;
    Avsluta1: TMenuItem;
    Preliminr1: TMenuItem;
    Aktiv1: TMenuItem;
    acPrintAOKorOrder: TAction;
    acAOResult: TAction;
    pmSkrivut: TPopupMenu;
    Krorder1: TMenuItem;
    Resultat1: TMenuItem;
    acSaveAsDeafultKorOrderValues: TAction;
    acControllSortingOrderRows: TAction;
    acSaveAsTemplate: TAction;
    Panel24: TPanel;
    Shape1: TShape;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Shape4: TShape;
    Label61: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    eRealProductionTime: TcxDBTextEdit;
    teNoOfWorkers: TcxDBTextEdit;
    eTotalSalaryCost: TcxDBTextEdit;
    eRealProductionTimeII: TcxDBTextEdit;
    eTotalCost: TcxDBTextEdit;
    eRawMtrlCostII: TcxDBTextEdit;
    eResultAO: TcxDBTextEdit;
    teProductionAM1: TcxDBTextEdit;
    teKostPerNM3Raw: TcxDBTextEdit;
    grdOutputSummary: TcxGrid;
    grdOutputSummaryDBTableView1: TcxGridDBTableView;
    grdOutputSummaryDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdOutputSummaryDBTableView1AM3: TcxGridDBColumn;
    grdOutputSummaryDBTableView1AM1: TcxGridDBColumn;
    grdOutputSummaryDBTableView1NM3: TcxGridDBColumn;
    grdOutputSummaryDBTableView1STYCK: TcxGridDBColumn;
    grdOutputSummaryDBTableView1Utfall: TcxGridDBColumn;
    grdOutputSummaryDBTableView1ProduktVrde: TcxGridDBColumn;
    grdOutputSummaryDBTableView1medelpris: TcxGridDBColumn;
    grdOutputSummaryDBTableView1Medelpris_1: TcxGridDBColumn;
    grdOutputSummaryLevel1: TcxGridLevel;
    ds_RawSum: TDataSource;
    ds_NewPkgSum: TDataSource;
    Panel29: TPanel;
    PanelFardigVaraSamman: TPanel;
    grdOutputPkgs: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SortingOrderNo: TcxGridDBColumn;
    cxGridDBTableView1Produkt: TcxGridDBColumn;
    cxGridDBTableView1ActualLengthMM: TcxGridDBColumn;
    cxGridDBTableView1ActualThicknessMM: TcxGridDBColumn;
    cxGridDBTableView1ActualWidthMM: TcxGridDBColumn;
    cxGridDBTableView1AM3: TcxGridDBColumn;
    cxGridDBTableView1NM3: TcxGridDBColumn;
    cxGridDBTableView1STYCK: TcxGridDBColumn;
    cxGridDBTableView1AM1: TcxGridDBColumn;
    cxGridDBTableView1SurfacingNo: TcxGridDBColumn;
    cxGridDBTableView1ProductNo: TcxGridDBColumn;
    cxGridDBTableView1Pris: TcxGridDBColumn;
    cxGridDBTableView1Vrde: TcxGridDBColumn;
    cxGridDBTableView1SortingOrderRowNo: TcxGridDBColumn;
    cxGridDBTableView1NTMM: TcxGridDBColumn;
    cxGridDBTableView1NBMM: TcxGridDBColumn;
    cxGridDBTableView1NLMM: TcxGridDBColumn;
    cxGridDBTableView1AvrUrlaggPcs: TcxGridDBColumn;
    cxGridDBTableView1Urlagg: TcxGridDBColumn;
    cxGridDBTableView1PcsAttAvrakna: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel31: TPanel;
    PanelRaVaruSamman: TPanel;
    grdInputPkgs: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2ProductDisplayName: TcxGridDBColumn;
    cxGridDBTableView2SortingOrderNo: TcxGridDBColumn;
    cxGridDBTableView2ProductNo: TcxGridDBColumn;
    cxGridDBTableView2RawMtrlNo: TcxGridDBColumn;
    cxGridDBTableView2ALMM: TcxGridDBColumn;
    cxGridDBTableView2STYCK: TcxGridDBColumn;
    cxGridDBTableView2AM3: TcxGridDBColumn;
    cxGridDBTableView2NM3: TcxGridDBColumn;
    cxGridDBTableView2AM1: TcxGridDBColumn;
    cxGridDBTableView2UrlaggPcs: TcxGridDBColumn;
    cxGridDBTableView2AdjustedPieces: TcxGridDBColumn;
    cxGridDBTableView2AdjustedAM3: TcxGridDBColumn;
    cxGridDBTableView2AdjustedNM3: TcxGridDBColumn;
    cxGridDBTableView2AdjustedAM1: TcxGridDBColumn;
    cxGridDBTableView2Lameller: TcxGridDBColumn;
    cxGridDBTableView2KapSnitt: TcxGridDBColumn;
    cxGridDBTableView2ExpectedPcsOut: TcxGridDBColumn;
    cxGridDBTableView2ATMM: TcxGridDBColumn;
    cxGridDBTableView2ABMM: TcxGridDBColumn;
    cxGridDBTableView2NTMM: TcxGridDBColumn;
    cxGridDBTableView2NBMM: TcxGridDBColumn;
    cxGridDBTableView2NLMM: TcxGridDBColumn;
    cxGridDBTableView2SizePercentOfTotal: TcxGridDBColumn;
    cxGridDBTableView2PercentAdjPcs: TcxGridDBColumn;
    cxGridDBTableView2KassPcs: TcxGridDBColumn;
    cxGridDBTableView2KassAM3: TcxGridDBColumn;
    cxGridDBTableView2KassAM1: TcxGridDBColumn;
    cxGridDBTableView2PricePerNM3: TcxGridDBColumn;
    cxGridDBTableView2ProductValue: TcxGridDBColumn;
    grdInputPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdInputPkgsDBBandedTableView1ProductDisplayName: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1RawMtrlNo: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1STYCK: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1UrlaggPcs: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AdjustedPieces: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AdjustedAM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AdjustedNM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1AdjustedAM1: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1Lameller: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1KapSnitt: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ExpectedPcsOut: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ATMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ABMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1NTMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1NBMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1NLMM: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1SizePercentOfTotal: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1PercentAdjPcs: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1KassPcs: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1KassAM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1KassAM1: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn;
    grdInputPkgsDBBandedTableView1ProductValue: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    Panel33: TPanel;
    Panel34: TPanel;
    Label18: TLabel;
    seVeckaRapportVy: TcxSpinEdit;
    dxBarLargeButton13: TdxBarLargeButton;
    ImageList1: TImageList;
    acCalcKassation: TAction;
    acConfirmAO: TAction;
    acAvregPaketFormular: TAction;
    dxBarLargeButton14: TdxBarLargeButton;
    cxGridPopupMenu5: TcxGridPopupMenu;
    teUserID: TcxTextEdit;
    acEMailAOResult: TAction;
    PopupMenu1: TPopupMenu;
    KalkyleraF111: TMenuItem;
    acCalcF11: TAction;
    cxPageControl2: TcxPageControl;
    tsHuvudinstruktioner: TcxTabSheet;
    tsProduktrad: TcxTabSheet;
    tsPaketspec: TcxTabSheet;
    PanelInstruktioner: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label82: TLabel;
    Label88: TLabel;
    Label44: TLabel;
    Label89: TLabel;
    Label31: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label87: TLabel;
    cbMiniBundle: TcxDBCheckBox;
    seMiniHeight: TcxDBSpinEdit;
    seMiniWidth: TcxDBSpinEdit;
    sePackageWidth: TcxDBSpinEdit;
    sePackageHeight: TcxDBSpinEdit;
    eNoOfSticks: TcxDBSpinEdit;
    seNoOfStraps: TcxDBSpinEdit;
    cbShrinkWrap: TcxDBCheckBox;
    spPcsPerMinitie: TcxDBSpinEdit;
    lcPkgSize: TcxDBLookupComboBox;
    lcPackageTypeName: TcxDBLookupComboBox;
    lcTruckStro: TcxDBLookupComboBox;
    icStrapTypeNo: TcxDBImageComboBox;
    lcGradeStamp: TcxDBLookupComboBox;
    lcBarCode: TcxDBLookupComboBox;
    cbKD: TcxDBCheckBox;
    cbFJ: TcxDBCheckBox;
    cbPackageCut: TcxDBCheckBox;
    ePETTolerance: TcxDBTextEdit;
    meFOHC: TcxDBMaskEdit;
    lcPaperWrap: TcxDBLookupComboBox;
    lcCornProt: TcxDBLookupComboBox;
    lcIMP: TcxDBLookupComboBox;
    mNote: TcxDBMemo;
    cxDBImage1: TcxDBImage;
    mExternalNote: TcxDBMemo;
    cxButton5: TcxButton;
    bCopyPI: TcxButton;
    Panel12: TPanel;
    Label78: TLabel;
    Label27: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    cxLabel8: TcxLabel;
    lcLggare: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    sePPP: TcxDBSpinEdit;
    cxLabel10: TcxLabel;
    cbUrlagg: TcxDBCheckBox;
    cbEndPkgAllowed: TcxDBCheckBox;
    sePrio: TcxDBSpinEdit;
    cxLabel17: TcxLabel;
    teNotering: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    teStickRecipe: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    teLengthDescription: TcxDBTextEdit;
    LabelProdukt: TcxDBLabel;
    cbMCClassNo: TcxDBCheckBox;
    tePlannedAM3: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    tePkgPrefix: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    teNoOfUnits: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    tePrice: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    lcPrisenhet: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    lcPrislista: TcxDBLookupComboBox;
    cxLabel16: TcxLabel;
    LabelSortingOrderRowNo: TcxDBLabel;
    cxLabel27: TcxLabel;
    tePlannedNM3: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    teLONR: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    teCustomer: TcxDBTextEdit;
    teMark: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    lcLagergrupp: TcxDBLookupComboBox;
    cxLabel21: TcxLabel;
    seRefCopies: TcxDBSpinEdit;
    cxLabel24: TcxLabel;
    lcLanguagecode: TcxDBLookupComboBox;
    lcSizeFormat: TcxDBLookupComboBox;
    lcLengthFormat: TcxDBLookupComboBox;
    lcVolumeFormat: TcxDBLookupComboBox;
    cxLabel29: TcxLabel;
    teArtikelKod: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    PanelPaketSpec: TPanel;
    Panel18: TPanel;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    grdSpecLayout: TcxGrid;
    grdSpecLayoutDBTableView1: TcxGridDBTableView;
    grdSpecLayoutDBTableView1LayoutNo: TcxGridDBColumn;
    grdSpecLayoutDBTableView1AntalKopior: TcxGridDBColumn;
    grdSpecLayoutDBTableView1PackageLogLayoutName: TcxGridDBColumn;
    grdSpecLayoutDBTableView1SortingOrderNo: TcxGridDBColumn;
    grdSpecLayoutDBTableView1SortingOrderRowNo: TcxGridDBColumn;
    grdSpecLayoutLevel1: TcxGridLevel;
    acCreateNewPackageForMissingPkgNo: TAction;
    Panel23: TPanel;
    Label10: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    eFeedSpeed: TcxDBTextEdit;
    ePlannedProductionTimes: TcxDBTextEdit;
    eNoOfWorkers: TcxDBTextEdit;
    cbSplitBeforeHyvling: TcxDBCheckBox;
    tsTexter: TcxTabSheet;
    PanelRowInfo: TPanel;
    PanelKorOrderInfo: TPanel;
    Panel11: TPanel;
    Panel17: TPanel;
    cxButton35: TcxButton;
    cxButton36: TcxButton;
    cxButton37: TcxButton;
    cxButton38: TcxButton;
    cxButton39: TcxButton;
    cxButton40: TcxButton;
    cxButton47: TcxButton;
    cxButton49: TcxButton;
    cxDBRichEdit_Comments: TcxDBRichEdit;
    Panel13: TPanel;
    Panel28: TPanel;
    cxButton41: TcxButton;
    cxButton42: TcxButton;
    cxButton43: TcxButton;
    cxButton44: TcxButton;
    cxButton45: TcxButton;
    cxButton46: TcxButton;
    cxButton48: TcxButton;
    cxButton50: TcxButton;
    cxButton54: TcxButton;
    reHyvelInfo: TcxDBRichEdit;
    acSetBoldRavara: TAction;
    acSetKursivRavara: TAction;
    acSetUnderlineRavara: TAction;
    acSetColorRavara: TAction;
    acSetColorFardigvara: TAction;
    acSetFontRavara: TAction;
    acSetFontFardigvara: TAction;
    acCopyTextRavara: TAction;
    acCopyTextFardigvara: TAction;
    acPasteTextRavara: TAction;
    acPasteTextFardigvara: TAction;
    acSetNormalTextRavara: TAction;
    acSetNormalTextFardigvara: TAction;
    acSetBoldFardigvara: TAction;
    acSetKursivFardigvara: TAction;
    acSetUnderlineFardigvara: TAction;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Spara1: TMenuItem;
    ngra1: TMenuItem;
    Kontroll1: TMenuItem;
    Krorder2: TMenuItem;
    cxLabel33: TcxLabel;
    sePPP2: TcxDBSpinEdit;
    PopupMenu3: TPopupMenu;
    Skapanyttpaket1: TMenuItem;
    acSearchForPackageToUnReg: TAction;
    Skpaketattavregistrera1: TMenuItem;
    acMoveUsedPkgsToOtherSortOrder: TAction;
    pmUsedPkgs: TdxBarPopupMenu;
    dxBarButton8: TdxBarButton;
    cxLabel6: TcxLabel;
    cxLabel28: TcxLabel;
    efficiencyFactor: TcxDBTextEdit;
    eRealLpmMinute: TcxDBTextEdit;
    PanelAOHeadData: TPanel;
    Label9: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    eStopTime: TcxDBTextEdit;
    eStopTimeNotIncl: TcxDBTextEdit;
    ePostningstid: TcxDBTextEdit;
    teRealProdTid: TcxDBTextEdit;
    cxButton55: TcxButton;
    cxButton34: TcxButton;
    bbShowProdTimeSegments: TcxButton;
    cbManualProdTime: TcxDBCheckBox;
    rgCertifierad: TcxDBRadioGroup;
    grdSortRowsDBBandedTableView1LengthSpec: TcxGridDBBandedColumn;
    cbLengthSpec: TcxDBComboBox;
    grdRawMtrlDBBandedTableView1LengthSpec: TcxGridDBBandedColumn;
    dsRawProdukt: TDataSource;
    cxLabel34: TcxLabel;
    dxBarLargeButton15: TdxBarLargeButton;
    acOpenAndConfirmOrder: TAction;
    acOpenAOInGuide: TAction;
    dxBarLargeButton16: TdxBarLargeButton;
    acSetStatusOutredd: TAction;
    Outredd1: TMenuItem;
    cbTargetProduct: TcxDBCheckBox;
    LabelALMM: TcxDBLabel;
    cxButton16: TcxButton;
    teRealProductionTime: TcxDBTextEdit;
    Label2: TLabel;
    mePreCalcEfficiencyFactor: TcxDBMaskEdit;
    Label49: TLabel;
    acPreCalc: TAction;
    cxButton25: TcxButton;
    grdSortRowsDBBandedTableView1Kvalitet: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Trslag: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Utfrande: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1IMP: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1NB: TcxGridDBBandedColumn;
    DataSource2: TDataSource;
    acPrintPaReg: TAction;
    acPrintAvReg: TAction;
    dxComponentPrinter1Link3: TdxGridReportLink;
    dxComponentPrinter1Link4: TdxGridReportLink;
    acProdUtfall: TAction;
    pmSortOrderRows: TdxBarPopupMenu;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    acSetMarkedOrdersToOtherWeek: TAction;
    cds_SortOrderListSurfacingBkgColor: TIntegerField;
    grdWorkOrderDBTableView1SurfacingBkgColor: TcxGridDBColumn;
    cds_SortOrderListSurfacingTextColor: TIntegerField;
    grdWorkOrderDBTableView1SurfacingTextColor: TcxGridDBColumn;
    Panel14: TPanel;
    Panel35: TPanel;
    cxButton58: TcxButton;
    cxButton59: TcxButton;
    cxLabel36: TcxLabel;
    icTidsEnhet: TcxDBImageComboBox;
    seNoOfTop: TcxDBSpinEdit;
    cxLabel37: TcxLabel;
    cbVisaKortStopp: TcxDBCheckBox;
    acStoppTidPerOrsak: TAction;
    acAntalStoppPerOrsak: TAction;
    acProdUtfallByRawMtrl: TAction;
    pmRawMtrl: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    grdSortRowsDBBandedTableView1ExcludeFromTotal: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1ExcludeFromTotal: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1Produkt: TcxGridDBBandedColumn;
    acCopySortingOrderRow: TAction;
    acBokaRavara: TAction;
    cds_SortOrderListID: TIntegerField;
    cds_SortOrderListStart: TSQLTimeStampField;
    cds_SortOrderListFinish: TSQLTimeStampField;
    cds_SortOrderListTaskStatusField: TIntegerField;
    cds_SortOrderListResourceID: TIntegerField;
    cds_SortOrderListDuration: TFloatField;
    cds_SortOrderListFixedDate: TIntegerField;
    cds_SortOrderListYearWeek: TStringField;
    cds_SortOrderListVerkNo: TIntegerField;
    cds_SortOrderListBookingNo: TIntegerField;
    cds_SortOrderListPostningstid: TBCDField;
    cds_SortOrderListPreCalcEfficiencyFactor: TBCDField;
    cds_SortOrderListFeedSpeed: TBCDField;
    cds_SortOrderListPlannedProductionTime: TBCDField;
    cds_SortOrderListPlannedWorkingTime: TBCDField;
    cds_SortOrderListOwnerNo: TIntegerField;
    cds_SortOrderListWeekNo: TIntegerField;
    cds_SortOrderListYearNo: TIntegerField;
    cds_SortOrderListStopTime: TIntegerField;
    cds_SortOrderListLONR: TIntegerField;
    acSetStatusPause: TAction;
    Pause1: TMenuItem;
    acOpenBooking: TAction;
    dxBarLargeButton17: TdxBarLargeButton;
    acMergeBookings: TAction;
    cxGridPopupMenu6: TcxGridPopupMenu;
    grdWorkOrderDBTableView1BookingNo: TcxGridDBColumn;
    dxBarButton12: TdxBarButton;
    cds_SortOrderListOrgYearWeek: TStringField;
    grdWorkOrderDBTableView1OrgYearWeek: TcxGridDBColumn;
    cds_SortOrderListNM3PlanFardig: TFMTBCDField;
    cds_SortOrderListUtfall: TBCDField;
    cds_SortOrderListBookedNM3: TFMTBCDField;
    grdWorkOrderDBTableView1NM3PlanFardig: TcxGridDBColumn;
    grdWorkOrderDBTableView1Utfall: TcxGridDBColumn;
    grdWorkOrderDBTableView1BookedNM3: TcxGridDBColumn;
    grdWorkOrderDBTableView1YearWeek: TcxGridDBColumn;
    acSaveDefaultLayout: TAction;
    acRestoreDefaultLayout: TAction;
    dxBarLargeButton19: TdxBarLargeButton;
    grdRawMtrlDBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1OrderName: TcxGridDBBandedColumn;
    acSaveSvardKapLayout: TAction;
    acRestoreSvardKapLayout: TAction;
    pmMergeBookings: TdxBarPopupMenu;
    dxBarLargeButton20: TdxBarLargeButton;
    acExtractAndMergeBookingRows: TAction;
    cxStyle7: TcxStyle;
    acSkrivUtKapNota: TAction;
    Skrivutkrorderkap1: TMenuItem;
    cxStyleNormal: TcxStyle;
    grdRawMtrlDBBandedTableView1BookedProductNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1BookedProductLengthNo: TcxGridDBBandedColumn;
    grdSortRowsDBBandedTableView1VP_ProductCode: TcxGridDBBandedColumn;
    pmProfil: TPopupMenu;
    Spapanyprofil1: TMenuItem;
    Sparaprofil1: TMenuItem;
    acSaveUserProfile: TAction;
    acAdminUserProfiles: TAction;
    cds_SortOrderListsspNo: TIntegerField;
    grdSortRowsDBBandedTableView1PlannedPcs: TcxGridDBBandedColumn;
    cds_SortOrderListLOS: TStringField;
    grdWorkOrderDBTableView1LOS: TcxGridDBColumn;
    cds_SortOrderListBookedAM1: TFMTBCDField;
    grdWorkOrderDBTableView1BookedAM1: TcxGridDBColumn;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton18: TdxBarLargeButton;
    pmOthers: TdxBarPopupMenu;
    cxLabel41: TcxLabel;
    dxBarLargeButton21: TdxBarLargeButton;
    PanelMainAvRegPkgs: TPanel;
    Panel36: TPanel;
    acPickPkgToAvreg: TAction;
    PanelResultatKorning: TPanel;
    cxLabelSkannarPaketnr: TcxLabel;
    cxLabelSkannarPaketnrProblem: TcxLabel;
    acStart: TAction;
    ds_AvRegPkgs: TDataSource;
    acAvRegistreraPaketIBufferten: TAction;
    PanelPaketBuffert: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView2PaketNr: TcxGridDBColumn;
    cxGridDBTableView2Prefix: TcxGridDBColumn;
    cxGridDBTableView2Produkt: TcxGridDBColumn;
    cxGridDBTableView2StyckPerLangd: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBTableView2TotaltStyck: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBTableView2OperationStatus: TcxGridDBColumn;
    cxGridDBTableView2Status: TcxGridDBColumn;
    cxGridDBTableView2Lager: TcxGridDBColumn;
    cxGridDBTableView2Registrerad: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel39: TPanel;
    SpeedButton7: TSpeedButton;
    sq_GetPkgData: TFDQuery;
    sq_GetPkgDataPaketnr: TIntegerField;
    sq_GetPkgDataPrefix: TStringField;
    sq_GetPkgDataProdukt: TStringField;
    sq_GetPkgDataStyckPerLangd: TStringField;
    sq_GetPkgDataAM3: TFloatField;
    sq_GetPkgDataStyck: TIntegerField;
    sq_GetPkgDataAM1: TFloatField;
    sq_GetPkgDataNM3: TFloatField;
    sq_GetPkgDataStatus: TIntegerField;
    sq_GetPkgDataPRODUCTNO: TIntegerField;
    sq_GetPkgDataLager: TStringField;
    sq_GetPkgDataM2: TFloatField;
    sq_GetPkgDatagare: TStringField;
    sq_GetPkgDataOwnerNo: TIntegerField;
    sq_GetPkgDataLIPNo: TIntegerField;
    sq_GetPkgDataSupplierNo: TIntegerField;
    sq_GetPkgDataPIP: TIntegerField;
    sq_GetPkgDataSurfacingNo: TIntegerField;
    sq_GetPkgDataPackageTypeNo: TIntegerField;
    sq_GetPkgDataLengthSpecNo: TIntegerField;
    sq_GetPkgDataPkgNoAttAvReg: TIntegerField;
    sq_GetPkgDataPrefixAttAvReg: TStringField;
    sq_GetPkgDataPackageTypeNoAttAvReg: TIntegerField;
    acCancelPkgsInBuffert: TAction;
    SpeedButton8: TSpeedButton;
    PanelAvregPkgs: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel42: TcxLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Panel37: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label7: TLabel;
    StartainlsningmedskannerF101: TMenuItem;
    cbStatus: TcxDBImageComboBox;
    Label13: TLabel;
    eRealStartTimes: TcxDBDateEdit;
    eRealEndTime: TcxDBDateEdit;
    Label11: TLabel;
    cxSplitter2: TcxSplitter;
    Panel30: TPanel;
    Panel38: TPanel;
    Panel5: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton12: TSpeedButton;
    acSetStatusKlarAttKora: TAction;
    SpeedButton13: TSpeedButton;
    trKassationStyck: TcxDBTextEdit;
    Label1: TLabel;
    Label15: TLabel;
    SpeedButton14: TSpeedButton;
    cbTaskCompleteField: TcxDBCheckBox;
    siLangLinked_frmSortOrder: TsiLangLinked;
    procedure acRefresh_AvropExecute(Sender: TObject);
    procedure ac_ExitExecute(Sender: TObject);
    procedure ac_RefreshExecute(Sender: TObject);
    procedure CustomizegrdAvropClick(Sender: TObject);
    procedure acSaveAvropLayoutExecute(Sender: TObject);
    procedure acApplyUpdatesExecute(Sender: TObject);
    procedure acOpenWorkOrderExecute(Sender: TObject);
    procedure acPrintAOExecute(Sender: TObject);
    procedure acDeleteSortOrderExecute(Sender: TObject);
    procedure grdWorkOrderDBTableView1DblClick(Sender: TObject);
    procedure seWeekNoPropertiesChange(Sender: TObject);
    procedure cbShowAllPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acApplyUpdatesUpdate(Sender: TObject);
    procedure acCalcResultExecute(Sender: TObject);
    procedure acCalcAllExecute(Sender: TObject);
    procedure grdWorkOrderDBTableView1InitEdit(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit);
    procedure teAONrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acOpenWorkOrderUpdate(Sender: TObject);
    procedure acOverviewExecute(Sender: TObject);
    procedure acSaveUserPropsExecute(Sender: TObject);
    procedure acSetMarkedRunOrdersToCurrentWeekExecute(Sender: TObject);
    procedure cnShowTemplatesPropertiesChange(Sender: TObject);
    procedure grdSortOrderRowsDBTableView1DblClick(Sender: TObject);
    procedure acExpandRowsExecute(Sender: TObject);
    procedure acCollapseAllRowsExecute(Sender: TObject);
    procedure acCalcAllUpdate(Sender: TObject);
    procedure grdSortOrderRowsDBTableView2DblClick(Sender: TObject);
    procedure grdSortOrderRowsDBTableView2Kass_StyckStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cds_SortOrderListBeforePost(DataSet: TDataSet);
    procedure grdSortOrderRowsDBTableView3KassPcsStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdSortOrderRowsDBTableView1PrisStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdSortOrderRowsDBTableView3PricePerNM3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acAddPkgToRunExecute(Sender: TObject);
    procedure acRemoveAORowExecute(Sender: TObject);
    procedure grdSortRowsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure grdSortRowsDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acAddProduktToAORowUpdate(Sender: TObject);
    procedure acRemoveAORowUpdate(Sender: TObject);
    procedure acAddUrlaggFromDropListUpdate(Sender: TObject);
    procedure grdRawMtrlDBBandedTableView1DblClick(Sender: TObject);
    procedure grdRawMtrlDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acDeleteRawMtrlExecute(Sender: TObject);
    procedure acDeleteRawMtrlUpdate(Sender: TObject);
    procedure acShowRawMtrilProductInInventoryListExecute(Sender: TObject);
    procedure lcRawPIPNAMEEnter(Sender: TObject);
    procedure lcRawPIPNAMEExit(Sender: TObject);
    procedure lcRawLIPNameEnter(Sender: TObject);
    procedure lcRawLIPNameExit(Sender: TObject);
    procedure acSetNormalTextExecute(Sender: TObject);
    procedure acSetNormalTextHyvelInfoExecute(Sender: TObject);
    procedure acCopyLOInternalNoteToHyvelInfoExecute(Sender: TObject);
    procedure lcLggareEnter(Sender: TObject);
    procedure lcLggareExit(Sender: TObject);
    procedure lcALMMExit(Sender: TObject);
    procedure sePPPExit(Sender: TObject);
    procedure cbUrlaggExit(Sender: TObject);
    procedure cbEndPkgAllowedExit(Sender: TObject);
    procedure cbMCClassNoExit(Sender: TObject);
    procedure teNoteringExit(Sender: TObject);
    procedure teStickRecipeExit(Sender: TObject);
    procedure tePriceExit(Sender: TObject);
    procedure lcPrisenhetExit(Sender: TObject);
    procedure lcPrislistaExit(Sender: TObject);
    procedure tePkgPrefixExit(Sender: TObject);
    procedure teNoOfUnitsExit(Sender: TObject);
    procedure tePlannedAM3Exit(Sender: TObject);
    procedure tePlannedNM3Exit(Sender: TObject);
    procedure teCustomerExit(Sender: TObject);
    procedure teMarkExit(Sender: TObject);
    procedure seRefCopiesExit(Sender: TObject);
    procedure lcLagergruppEnter(Sender: TObject);
    procedure lcLagergruppExit(Sender: TObject);
    procedure teArtikelKodExit(Sender: TObject);
    procedure lcLanguagecodeExit(Sender: TObject);
    procedure lcSizeFormatExit(Sender: TObject);
    procedure lcLengthFormatExit(Sender: TObject);
    procedure lcVolumeFormatExit(Sender: TObject);
    procedure acAddPIExecute(Sender: TObject);
    procedure acCopyPItoMarkedRowsExecute(Sender: TObject);
    procedure acAddPIUpdate(Sender: TObject);
    procedure acCopyPItoMarkedRowsUpdate(Sender: TObject);
    procedure acAddLayoutRowExecute(Sender: TObject);
    procedure acDeleteLayoutExecute(Sender: TObject);
    procedure acAddStdSpecLayoutExecute(Sender: TObject);
    procedure acDeleteLayoutUpdate(Sender: TObject);
    procedure acAddLayoutRowUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemExecute(Sender: TObject);
    procedure acRefreshPaRegPkgExecute(Sender: TObject);
    procedure acLoadSelectedPkgsExecute(Sender: TObject);
    procedure acRegisterMultiplePkgsUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemUpdate(Sender: TObject);
    procedure acLoadSelectedPkgsUpdate(Sender: TObject);
    procedure lcProductionUnitNoEnter(Sender: TObject);
    procedure lcProductionUnitNoExit(Sender: TObject);
    procedure lcInvPlaceEnter(Sender: TObject);
    procedure lcInvPlaceExit(Sender: TObject);
    procedure lcInvGrpEnter(Sender: TObject);
    procedure lcInvGrpExit(Sender: TObject);
    procedure cbVisaMeddelandePropertiesChange(Sender: TObject);
    procedure acCalcStartSlutochProdTidExecute(Sender: TObject);
    procedure acCalculateProductionsTimeExecute(Sender: TObject);
    procedure acShowProdTimeSegmentsExecute(Sender: TObject);
    procedure tcEditKorOrderChange(Sender: TObject);
    procedure acShowProdTimeSegmentsUpdate(Sender: TObject);
    procedure acCancelDeregistrationExecute(Sender: TObject);
    procedure acRefreshAvRegExecute(Sender: TObject);
    procedure acSplitPkgExecute(Sender: TObject);
    procedure acDeleteUsedPkgRowExecute(Sender: TObject);
    procedure acAvregistreraPaketUpdate(Sender: TObject);
    procedure acCancelDeregistrationUpdate(Sender: TObject);
    procedure acSplitPkgUpdate(Sender: TObject);
    procedure acDeleteUsedPkgRowUpdate(Sender: TObject);
    procedure acSaveKorOrderUpdate(Sender: TObject);
    procedure acStartSortOrderExecute(Sender: TObject);
    procedure acSetToPreliminaryExecute(Sender: TObject);
    procedure acAvslutaExecute(Sender: TObject);
    procedure acSaveAsDeafultKorOrderValuesExecute(Sender: TObject);
    procedure acControllSortingOrderRowsExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acStartSortOrderUpdate(Sender: TObject);
    procedure acPrintAOKorOrderUpdate(Sender: TObject);
    procedure acAOResultUpdate(Sender: TObject);
    procedure acSaveAsTemplateUpdate(Sender: TObject);
    procedure lcTypeOfRunEnter(Sender: TObject);
    procedure lcTypeOfRunPropertiesChange(Sender: TObject);
    procedure cxGridDBTableView1PcsAttAvraknaStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridDBTableView1PrisStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdInputPkgsDBBandedTableView1KassPcsStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdInputPkgsDBBandedTableView1PricePerNM3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdOutputSummaryDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure seVeckaRapportVyPropertiesChange(Sender: TObject);
    procedure acCalcKassationExecute(Sender: TObject);
    procedure teUserIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdNewPkgsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure sePackageWidthPropertiesChange(Sender: TObject);
    procedure sePackageHeightPropertiesChange(Sender: TObject);
    procedure sePackageWidthPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acSetBoldRavaraExecute(Sender: TObject);
    procedure acSetKursivRavaraExecute(Sender: TObject);
    procedure acSetUnderlineRavaraExecute(Sender: TObject);
    procedure acSetColorRavaraExecute(Sender: TObject);
    procedure acSetColorFardigvaraExecute(Sender: TObject);
    procedure acSetFontRavaraExecute(Sender: TObject);
    procedure acSetFontFardigvaraExecute(Sender: TObject);
    procedure acCopyTextRavaraExecute(Sender: TObject);
    procedure acCopyTextFardigvaraExecute(Sender: TObject);
    procedure acPasteTextRavaraExecute(Sender: TObject);
    procedure acPasteTextFardigvaraExecute(Sender: TObject);
    procedure acSetNormalTextRavaraExecute(Sender: TObject);
    procedure acSetNormalTextFardigvaraExecute(Sender: TObject);
    procedure acSetBoldFardigvaraExecute(Sender: TObject);
    procedure acSetKursivFardigvaraExecute(Sender: TObject);
    procedure acSetUnderlineFardigvaraExecute(Sender: TObject);
    procedure acSearchForPackageToUnRegExecute(Sender: TObject);
    procedure acMoveUsedPkgsToOtherSortOrderExecute(Sender: TObject);
    procedure acAddRawMtrlUsedPreviouslyExecute(Sender: TObject);
    procedure cbLengthSpecExit(Sender: TObject);
    procedure acOpenAOInGuideExecute(Sender: TObject);
    procedure acSetStatusOutreddExecute(Sender: TObject);
    procedure acPreCalcExecute(Sender: TObject);
    procedure acPrintPaRegExecute(Sender: TObject);
    procedure acPrintAvRegExecute(Sender: TObject);
    procedure acProdUtfallExecute(Sender: TObject);
    procedure acCalcStartSlutochProdTidUpdate(Sender: TObject);
    procedure acCalculateProductionsTimeUpdate(Sender: TObject);
    procedure teRealProdTidEnter(Sender: TObject);
    procedure eRealStartTimesEnter(Sender: TObject);
    procedure teRealProdTidExit(Sender: TObject);
    procedure cbManualProdTimeEnter(Sender: TObject);
    procedure cbManualProdTimeExit(Sender: TObject);
    procedure grdWorkOrderDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acStoppTidPerOrsakExecute(Sender: TObject);
    procedure acAntalStoppPerOrsakExecute(Sender: TObject);
    procedure seNoOfTopPropertiesChange(Sender: TObject);
    procedure icTidsEnhetPropertiesChange(Sender: TObject);
    procedure cbVisaKortStoppPropertiesChange(Sender: TObject);
    procedure acProdUtfallByRawMtrlExecute(Sender: TObject);
    procedure cbTargetProductExit(Sender: TObject);
    procedure acCopySortingOrderRowUpdate(Sender: TObject);
    procedure teLONRExit(Sender: TObject);
    procedure acSetStatusPauseExecute(Sender: TObject);
    procedure acAddRawMtrlUsedPreviouslyUpdate(Sender: TObject);
    procedure acSaveDefaultLayoutExecute(Sender: TObject);
    procedure acRestoreDefaultLayoutExecute(Sender: TObject);
    procedure acSaveSvardKapLayoutExecute(Sender: TObject);
    procedure acRestoreSvardKapLayoutExecute(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure grdRawMtrlDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acSaveUserProfileExecute(Sender: TObject);
    procedure lcRegPointEnter(Sender: TObject);
    procedure lcRegPointExit(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure lcuapORTEnter(Sender: TObject);
    procedure lcuapORTExit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure acStartExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acAvRegistreraPaketIBuffertenExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acCancelPkgsInBuffertExecute(Sender: TObject);
    procedure acSetStatusKlarAttKoraExecute(Sender: TObject);
    procedure acCreateNewPackageForMissingPkgNoExecute(Sender: TObject);
  private
    { Private declarations }
    AcceptInput : Boolean ;
    AktivtDiagram  : String ;
    PackageCode_Layout  : Array of array of variant ;
    procedure AvRegistreraPaketIBufferten ;
    procedure ShowPkgInfo(const NewPkgNo : Integer;const PkgSupplierCode : String) ;
    procedure ShowHidePkgsPanels ;
    procedure AddPkgToGrid(Sender: TObject;const PkgNo : Integer;PkgSupplierCode : String3;ProductNo, Status : Integer) ;
    function  IdentifyPackageSupplier(
    const PkgNo           : Integer;
    var PkgSupplierCode   : String3;
    Var ProductNo         : Integer;
    Var Res_UserName      : String;
    var Status            : Integer) : TEditAction ;
    procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
    procedure DeleteMarkedKorOrders(Sender: TObject) ;
    procedure LoadProfile ;
    procedure GetUserProfileGrid(const Form, Name : String; AGridView: TcxGridTableView) ;
    procedure SaveUserProfileAndGrid(const Form, Name : String; AGridView: TcxGridTableView) ;
    procedure RegisterNEWRun(Sender: TObject);
    function  GetMarkedSortingOrders : Integer ;
    procedure SetChartTexter(const DiagramTyp : Integer) ;
    procedure OpenAOInGuideAfterCopyFromMall(const SortingOrderNo : Integer) ;
    procedure LoadLengthGroupNames ;
    procedure CreateNewSortingOrderByWizard(const NewRunOrder : Boolean) ;
    procedure GetMarkedUsedPkgs ;
    function  GetRunNoManually(Sender: TObject) : Integer ;
    procedure GetMarkedSortingOrderRows ;
    procedure CalcKassationExecute(Sender: TObject);
    procedure SaveRawMtrlLayoutExecute(Sender: TObject);
    procedure SaveSortOrderLayoutExecute(Sender: TObject);
    procedure SaveSortOrderRowsPrintOrder ;
    procedure SetTitles ;
    procedure CancelChanges(Sender: TObject);
    procedure SaveAOKorOrder(Sender: TObject);
    procedure AddMarkedPkgsToLoad(Sender: TObject;const LONo : Integer);
    function  GetLONoManually(Sender: TObject) : Integer ;
    procedure UpdatePackageCode_Layout (const SortingOrderRowNo : Integer) ;
    procedure SparaLayouterForSelectedOrderLines(const SortingOrderRowNo : Integer) ;
    procedure SparaProdInstruForSelectedOrderLines(const vProdInstruNo, PPP : Integer) ;
    procedure GetOrderRowLAYOUTS ;
    procedure GetMarkedInputRows ;
    procedure RemoveMarkedInputRows ;
    procedure InsertRAWProductsFromSelectedProducts ;
    procedure ShowRawMtrilProductInInventoryList ;

    procedure InsertPreviouslyUsedRawMtrlProduct ;
    procedure InsertProductsFromSelectedProducts ;
    procedure NewProdinstructExecute ;
    function  EditKorOrderDataSaved : Boolean ;
    procedure RemoveMarkedOutPutRows ;



    procedure PrintVeckyVy ;
    procedure PrintWorkOrders ;
    procedure Refresh_WorkOrderRows ;
    procedure Refresh_WorkOrder(Sender: TObject);
    procedure BuildSQLAO ;
    Function  DataSaved : Boolean ;
    procedure SaveAO ;
    procedure SetSQLForGantView ;
    procedure GetMarkedRows ;
//    procedure CalcWorkOrderResult(Sender: TObject) ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT ;
    procedure CMMoveItrawmtrl(var Msg: TMessage); message CM_MOVEITrawmtrl ;
  public
    { Public declarations }
    procedure SaveAllUserProfileGrids ;
    procedure OpenWorkFromLoadOrderAfterWizard(const SortingOrderNo : Integer) ;
    procedure LOpenWorkOrder (const SortingOrderNo, ProductionUnitNo : Integer) ;
    procedure CreateCo(CompanyNo : Integer);
  end;

//var frmSortOrder: TfrmSortOrder;

implementation

{$R *.dfm}

uses

  VidaConst,
  VidaUser,
  VidaUtils, dmsDataConn,
  dmsVidaContact, dmsVidaSystem, dm_SortOrder, dmsPkgWorkOrder,
  dmsProdPlan, //uAOMall, uAddPkgToRun,
  //uSelectLOfromAO,
  uEntryField, WorkMinutesU, uProdTimeSegment , // UnitRemovePkg, dmcPkgs,
  uConfirmCodeDialog,

 // uMemoForm,
  //uSinglePkgEntry, // uSendMapiMail,
  uSearchPkgToDeReg,
//  uSortingOrderWizard //, uProductUtfall, uAngeStartTid,
//  uCopyLengths, //uBookingRa, UnitInventoryReport, //fMain, //dm_Inventory,
//  dmsVidaProduct, uUserProfiles, dm_SortOrderList,
 // dms_Vis_Vida,
 // dmDB,
  uPkgInfo, dmsVidaProduct, dm_SortOrderList, dmcPkgs, uProductUtfall,
  uSinglePkgEntry, uOKDia, dms_Vis_Vida, uAddPkgToRun, uSelectLOfromAO,
  udmLanguage;

procedure TfrmSortOrder.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
 AGoForward := Boolean(Msg.WParam);
 grdSortRowsDBBandedTableView1.Controller.EditingController.HideEdit(True);
 grdSortRowsDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TfrmSortOrder.CMMoveItrawmtrl(var Msg: TMessage);
var AGoForward: Boolean;
begin
 AGoForward := Boolean(Msg.WParam);
 grdRawMtrlDBBandedTableView1.Controller.EditingController.HideEdit(True);
 grdRawMtrlDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

function TfrmSortOrder.DataSaved : Boolean ;
begin
 Result:= True ;
 With dmsSortOrder do
 Begin
  if cds_SortOrderList.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_SortOrderList.ChangeCount > 0 then
   Result := False ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_SorOrdRow.ChangeCount > 0 then
   Result := False ;
 End ;
end;

procedure TfrmSortOrder.CreateCo(CompanyNo: Integer);
Var Year, WeekNo    : Integer ;
    Save_Cursor     : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try

  With dmsSortOrder do
  Begin
   cds_verk.Active           := False ;
   cds_verk.Active           := True ;
  End ;

   dmSotOrderList.LoadUserProps(Self.Name) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdWorkOrder.Name, grdWorkOrderDBTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView1.Name, grdSortOrderRowsDBTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView2.Name, grdSortOrderRowsDBTableView2) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView3.Name, grdSortOrderRowsDBTableView3) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdInputPkgsDBBandedTableView1.Name, grdInputPkgsDBBandedTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + cxGridDBTableView1.Name, cxGridDBTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/' + grdOutputSummaryDBTableView1.Name, grdOutputSummaryDBTableView1) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdSortRowsDBTableView1.Name, grdSortRowsDBTableView1) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdNewPkgs.Name, grdNewPkgsDBTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdUsedPkgs.Name, grdUsedPkgsDBTableView1) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdRawMtrl.Name, grdRawMtrlDBBandedTableView1) ;
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdSortRowsDBBandedTableView1.Name, grdSortRowsDBBandedTableView1) ;

//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+cxGridDBTableView2.Name, cxGridDBTableView2) ;

   Year := strToInt(Copy(IntToStr(YearOf(Date)),3,2)) ;

  WeekNo:= WeekOfTheYear(Now) ;
  if WeekNo < 10 then
   seWeekNo.Value:= StrToInt(IntToStr(Year)+'0'+IntToStr(WeekOfTheYear(Now)))
    else
     seWeekNo.Value:= StrToInt(IntToStr(Year)+IntToStr(WeekOfTheYear(Now))) ;


  if WeekNo < 10 then
   seVeckaRapportVy.Value:= StrToInt(IntToStr(Year)+'0'+IntToStr(WeekOfTheYear(Now)))
    else
     seVeckaRapportVy.Value:= StrToInt(IntToStr(Year)+IntToStr(WeekOfTheYear(Now))) ;

  if (dmSotOrderList.cds_Props.Active) and (dmSotOrderList.cds_Props.RecordCount > 0) then
   LoadProfile ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.Refresh_WorkOrder(Sender: TObject);
var
  Save_Cursor                 : TCursor;
  SortingOrderNo, Year        : Integer ;
begin
 seWeekNo.Properties.OnChange:= nil ;
 Try
 Year:=  StrToInt(Copy(IntToStr(seWeekNo.Value),1,2)) ;
 if StrToInt( Copy(IntToStr(seWeekNo.Value),3,2)  ) = 54 then
 Begin
  Year:= Year + 1 ;
  seWeekNo.Value:= StrToInt(IntToStr(Year)+'01') ; ;
 End
 else
 if StrToInt( Copy(IntToStr(seWeekNo.Value),3,2)  ) = 0 then
 Begin
  Year:= Year - 1 ;
  seWeekNo.Value:= StrToInt(IntToStr(Year)+'53') ; ;
 End ;

// ShowMessage('Copy(IntToStr(seWeekNo.Value),3,2)= ' + Copy(IntToStr(seWeekNo.Value),3,2) ) ;
 Finally
  seWeekNo.Properties.OnChange:= seWeekNoPropertiesChange ;
 End ;


 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmsSortOrder do
  Begin
   if cnShowTemplates.Checked then
   grdWorkOrderDBTableView1TemplateName.Visible := True
   else
   grdWorkOrderDBTableView1TemplateName.Visible := False ;

   SortingOrderNo           := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
   cds_SortOrderList.Active := False ;
   BuildSQLAO ;
//   cds_SortOrderList.ParamByName('SortingOrderNo').AsInteger := 0 ;
   cds_SortOrderList.Active:= True ;
   cds_SortOrderList.Locate('ID', SortingOrderNo, []) ;

{   if bcProducer.ItemIndex = 0 then
    grdWorkOrderDBTableView1PRODUCENT.Visible:= True
     else
      grdWorkOrderDBTableView1PRODUCENT.Visible:= False ;
   if bcOwner.ItemIndex = 0 then
    grdWorkOrderDBTableView1AGARE.Visible:= True
     else
      grdWorkOrderDBTableView1AGARE.Visible:= False ; }
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.BuildSQLAO ;
Begin
  With dmsSortOrder do
  Begin
   cds_SortOrderList.SQL.Clear ;
   cds_SortOrderList.SQL.Add('Select dbo.GetLONos(cx.ID) AS LOS, cx.ID, cx.Start, cx.Finish, cx.TaskStatusField, cx.ResourceID, cx.Duration,') ;
   cds_SortOrderList.SQL.Add('cx.FixedDate, cx.YearWeek, cx.VerkNo, cx.BookingNo, cx.Postningstid, cx.PreCalcEfficiencyFactor,') ;
   cds_SortOrderList.SQL.Add('cx.FeedSpeed, cx.PlannedProductionTime, cx.PlannedWorkingTime, cx.OwnerNo, cx.WeekNo, cx.YearNo,') ;
   cds_SortOrderList.SQL.Add('So.PIPNo, so.LIPNo, so.ProgramNo, so.Comments, so.RealStartTime,') ;
   cds_SortOrderList.SQL.Add('so.RealEndTime, so.RealProductionTime, so.StopTime, so.PrioNo, so.MCClassNo, so.MoveToLIPNo,') ;
   cds_SortOrderList.SQL.Add('so.Template, so.TemplateName, so.TemplateUser, so.Lego, so.TypeOfRunNo,') ;
   cds_SortOrderList.SQL.Add('ci.CityName AS LAGERSTÄLLE, rp.RegPointName AS PRODENHET,') ;
   cds_SortOrderList.SQL.Add('LIP.LogicalInventoryName AS LAGERGRUPP, pr.ClientName AS PRODUCENT, OWN.ClientName AS ÄGARE,') ;

   cds_SortOrderList.SQL.Add('(Select Top 1 p.ProductDisplayName FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedDtl rmd') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.Product p on p.ProductNo = rmd.BookedProductNo') ;
   cds_SortOrderList.SQL.Add('WHERE rmd.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('Order By rmd.Status desc) AS Råvara,') ;

   cds_SortOrderList.SQL.Add('(Select Top 1 p.ProductDisplayName FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr rmh') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = rmh.BookingNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = rmh.BookingNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.Product p on p.ProductNo = rmh.ProductNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('and rmd.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('Order By rmd.Status desc) AS Färdigvara,') ;

   cds_SortOrderList.SQL.Add('(Select Top 1 c.ClientName FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr SOR') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.BookingNo') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanObjectNo = sor.sspNo') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.CustomerShippingPlanDetails CSD') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.Client C on C.ClientNo = CSH.CustomerNo') ;
   cds_SortOrderList.SQL.Add('on CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObjectNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID) AS Kund,') ;

   cds_SortOrderList.SQL.Add('(Select Top 1 SSP.ShippingPlanNo FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr SOR') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.BookingNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = SOR.BookingNo') ;
   cds_SortOrderList.SQL.Add('and rmd.sspNo = SOR.sspNo') ;
   cds_SortOrderList.SQL.Add('and rmd.ID = cx2.ID') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanObjectNo = SOR.sspNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID) AS LONR,') ;


   cds_SortOrderList.SQL.Add('IsNull((Select Top 1 sc.BackgroundColor FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr SOR') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.BookingNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductGroupNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.SurfacingNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('AND sc.VerkNo = cx.VerkNo') ;
   cds_SortOrderList.SQL.Add('),0) AS SurfacingBkgColor,') ;

   cds_SortOrderList.SQL.Add('IsNull((Select Top 1 sc.TextColor FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr SOR') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.BookingNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductGroupNo') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.SurfacingNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('AND sc.VerkNo = cx.VerkNo') ;
   cds_SortOrderList.SQL.Add('),0) AS SurfacingTextColor, cx.OrgYearWeek,') ;

   cds_SortOrderList.SQL.Add('(Select  sum(rmt.PlannedOutputNM3) From dbo.RawMtrlBookedDtl rmt') ;
   cds_SortOrderList.SQL.Add('Where rmt.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('and rmt.Status = 1) AS NM3PlanFardig,') ;

   cds_SortOrderList.SQL.Add('(Select  TOP 1 rmt.Utfall From dbo.RawMtrlBookedDtl rmt') ;
   cds_SortOrderList.SQL.Add('Where rmt.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('and rmt.Status = 1) AS Utfall,') ;

   cds_SortOrderList.SQL.Add('(Select  sum(rmt.BookedNM3) From dbo.RawMtrlBookedDtl rmt') ;
   cds_SortOrderList.SQL.Add('Where rmt.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('and rmt.Status = 1) AS BookedNM3,') ;

   cds_SortOrderList.SQL.Add('(Select Top 1 sor.sspNo FROM') ;
   cds_SortOrderList.SQL.Add('dbo.RawMtrlBookedHdr SOR') ;
   cds_SortOrderList.SQL.Add('Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.BookingNo') ;
   cds_SortOrderList.SQL.Add('WHERE cx2.ID = cx.ID) AS sspNo,') ;

   cds_SortOrderList.SQL.Add('(Select  sum(rmt.PlannedAM1) From dbo.RawMtrlBookedDtl rmt') ;
   cds_SortOrderList.SQL.Add('Where rmt.ID = cx.ID') ;
   cds_SortOrderList.SQL.Add('and rmt.Status = 1) AS BookedAM1') ;   


   cds_SortOrderList.SQL.Add('FROM dbo.cxSchedulerTable cx') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.SortingOrder SO on so.sortingorderno = cx.ID') ;
   if not cnShowTemplates.Checked then
   cds_SortOrderList.SQL.Add('and so.Template = 0') ;


   cds_SortOrderList.SQL.Add('Left Outer Join dbo.PhysicalInventoryPoint PIP ') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.City Ci on ci.cityNo = PIP.PhyInvPointNameNo') ;
   cds_SortOrderList.SQL.Add('ON PIP.PhysicalInventoryPointNo = SO.PIPNo') ;

   cds_SortOrderList.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SO.LIPNo') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.RegistrationPoint rp on rp.RegPointNo = cx.ResourceID') ;

   cds_SortOrderList.SQL.Add('Left Outer Join dbo.Client PR on pr.ClientNo = cx.VerkNo') ;
   cds_SortOrderList.SQL.Add('Left Outer Join dbo.Client OWN on OWN.ClientNo = cx.OwnerNo') ;

   cds_SortOrderList.SQL.Add('WHERE 1 = 1') ;

   if cnShowTemplates.Checked then
   Begin
    cds_SortOrderList.SQL.Add('AND SO.Template = 1') ;
    cds_SortOrderList.SQL.Add('AND SO.TemplateUser = ' + IntToStr(ThisUser.UserID)) ;
   End
   else
   Begin
    if not cbShowAll.Checked then
     cds_SortOrderList.SQL.Add('AND cx.YearWeek = '+QuotedStr(IntToStr(seWeekNo.value)))
     else
     Begin
      if dmSotOrderList.cds_PropsStatus.AsInteger <> 10 then
       cds_SortOrderList.SQL.Add('AND cx.TaskStatusField = ' + dmSotOrderList.cds_PropsStatus.AsString) ;
{        else
         if biStatus.ItemIndex = 5 then
          cds_SortOrderList.SQL.Add('AND cx.TaskStatusField <> 10')
           else
            cds_SortOrderList.SQL.Add('AND cx.TaskStatusField = ' + IntToStr(biStatus.ItemIndex)) ;}
     End ;

     if dmSotOrderList.cds_PropsProducerNo.AsInteger > 0 then
     cds_SortOrderList.SQL.Add('AND cx.VerkNo = ' + dmSotOrderList.cds_PropsProducerNo.AsString) ;


     if dmSotOrderList.cds_PropsOwnerNo.AsInteger > 0 then
      cds_SortOrderList.SQL.Add('AND cx.OwnerNo = ' + dmSotOrderList.cds_PropsOwnerNo.AsString) ;

     if dmSotOrderList.cds_PropsRegPointNo.AsInteger > 0 then
      cds_SortOrderList.SQL.Add('AND cx.ResourceID = ' + dmSotOrderList.cds_PropsRegPointNo.AsString) ;

     if dmSotOrderList.cds_PropsLoadingLocationNo.AsInteger > 0 then
      cds_SortOrderList.SQL.Add('AND cx.LocationNo = ' + dmSotOrderList.cds_PropsLoadingLocationNo.AsString) ;
   End ;//ShowMallar

//   if thisuser.UserID = 8 then cds_SortOrderList.SQL.SaveToFile('cds_SortOrderList.txt');
  End ;//With
End ;

procedure TfrmSortOrder.acRefresh_AvropExecute(Sender: TObject);
begin
 Refresh_WorkOrder(Sender) ;
end;

procedure TfrmSortOrder.ac_ExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmSortOrder.ac_RefreshExecute(Sender: TObject);
begin
//  FD_SortOrderRows.DisableControls ;
  cds_SortOrderList.DisableControls ;
 Try
 Refresh_WorkOrder(Sender) ;
 Finally
  cds_SortOrderList.EnableControls ;
//  FD_SortOrderRows.EnableControls ;

 End ;
end;

procedure TfrmSortOrder.CustomizegrdAvropClick(Sender: TObject);
begin
// grdAvrop.ColumnsCustomizing ;
end;

procedure TfrmSortOrder.acSaveAvropLayoutExecute(Sender: TObject);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView1.Name, grdSortOrderRowsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView2.Name, grdSortOrderRowsDBTableView2) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdWorkOrder.Name, grdWorkOrderDBTableView1) ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdSortOrderRowsDBTableView3.Name, grdSortOrderRowsDBTableView3) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdInputPkgsDBBandedTableView1.Name, grdInputPkgsDBBandedTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + cxGridDBTableView1.Name, cxGridDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdOutputSummaryDBTableView1.Name, grdOutputSummaryDBTableView1) ;
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdOutputSummaryDBChartView1.Name, grdOutputSummaryDBChartView1) ;

end;

procedure TfrmSortOrder.acApplyUpdatesExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderList.State in [dsEdit, dsInsert] then
   cds_SortOrderList.Post ;
  if cds_SortOrderList.ChangeCount > 0 then
  Begin
   cds_SortOrderList.ApplyUpdates(0) ;
   cds_SortOrderList.CommitUpdates ;
  End ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   cds_SorOrdRow.Post ;
  if cds_SorOrdRow.ChangeCount > 0 then
  Begin
   cds_SorOrdRow.ApplyUpdates(0) ;
   cds_SorOrdRow.CommitUpdates ;
  End ;
 End ;
end;

procedure TfrmSortOrder.acOpenWorkOrderExecute(Sender: TObject);
Var Save_Cursor     : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 With dmsSortOrder do
 Begin
  LOpenWorkOrder(cds_SortOrderListID.AsInteger, -1) ;
  if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) and (cds_SortOrderSortingOrderNo.AsInteger > 0) then
  Begin
   if cds_SchedulerResourceID.AsInteger = 25 then
   Begin
    tcEditKorOrder.TabIndex := 1 ;// pgEditKorOrder.ActivePageIndex := tcEditKorOrder.TabIndex ;
   End ;
  End ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end; 
end;

procedure TfrmSortOrder.OpenWorkFromLoadOrderAfterWizard(const SortingOrderNo : Integer) ;
begin
 With dmsSortOrder do
 Begin
  LOpenWorkOrder(SortingOrderNo, -1) ;
  if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) and (cds_SortOrderSortingOrderNo.AsInteger > 0) then
  Begin

  End ;
 End ;
end;

procedure TfrmSortOrder.LOpenWorkOrder (const SortingOrderNo, ProductionUnitNo : Integer) ;
Var Save_Cursor                 : TCursor;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 LockWindowUpdate(Self.Handle);
 Try

//  dmsSystem.FDoLog('LOpenWorkOrder. SortingOrderNo = ' + inttostr(SortingOrderNo)) ;
// if ThisUser.UserID = 8 then
  cbVisaMeddelande.Visible := True ;
//   else
//    cbVisaMeddelande.Visible := False ;


 With dmsSortOrder, dm_PkgWorkOrder do
 Begin
  cds_UsedPkgs.DisableControls ;
  cds_NewPkgs.DisableControls ;
  cds_SORaw.DisableControls ;
  cds_SorOrdRow.DisableControls ;
  cds_SortOrder.DisableControls ;
  Try

  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

 { dmsSystem.cds_ProductLength.Active := False ;
  dmsSystem.cds_ProductLength.Active := True ;
  cds_producer.Active       := False ;
  cds_producer.Active       := True ;

  cds_verk.Active           := False ;
  cds_verk.Active           := True ;

  cds_ProductionUnit.Active := False ;
  cds_ProductionUnit.Active := True ;

  dmsContact.cdsClient.Active:= True ; }

  Screen.Cursor  := crSQLWait;

  cds_Scheduler.Active:= False ;
  cds_Scheduler.Active:= True ;

  cds_SortOrder.Active    := False ;
  cds_SortOrder.Active    := True ;

  cds_SorOrdRow.Active    := False ;
  cds_SorOrdRow.Active    := True ;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

  if SortingOrderNo = -1 then
  Begin
   cds_Scheduler.Insert ;
   cds_SortOrder.Insert ;

//   cds_ProductionUnit.Active:= False ;
//   cds_ProductionUnit.ParamByName('ProducerNo').AsInteger:= cds_SchedulerVerkNo.AsInteger ;
//   cds_ProductionUnit.Active:= True ;

   cds_SortOrderSortingOrderNo.AsInteger      := cds_SchedulerID.AsInteger ;
   if cds_SchedulerResourceID.IsNull then
   cds_SchedulerResourceID.AsInteger:= ProductionUnitNo ;
   cds_SortOrder.Post ;
   cds_Scheduler.Post ;
  End
  else
   Begin
    cds_Scheduler.Active:= False ;
    cds_Scheduler.ParamByName('ID').AsInteger := SortingOrderNo ;
    cds_Scheduler.Active:= True ;

    Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

    cds_SortOrder.Active:= False ;
    cds_SortOrder.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
    cds_SortOrder.Active:= True ;

    cds_SorOrdRow.Active    := False ;
    cds_SorOrdRow.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
    cds_SorOrdRow.Active    := True ;

    Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

//    cds_ProductionUnit.Active:= False ;
//    cds_ProductionUnit.ParamByName('ProducerNo').AsInteger:= cds_SchedulerVerkNo.AsInteger ;
//    cds_ProductionUnit.Active:= True ;

    Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
   End ;

{ With dmsSortOrder do
 Begin
  sp_OrderList.Active := False ;
  sp_OrderList.ParamByName('@CustomerNo').AsInteger := cds_SchedulerVerkNo.AsInteger ;
  sp_OrderList.Active := True ;
 End ; }

//  cds_ProdInstruct.Active:= False ;
//  cds_ProdInstruct.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
//  cds_ProdInstruct.Active:= True ;

  cds_SORaw.Active        := False ;
  cds_SORaw.Active        := True ;

  cds_SOCngProd.Active    := False ;
  cds_SOCngProd.Active    := True ;

//  cds_FeedBack.Active     := False ;
//  cds_FeedBack.Active     := True ;


  cds_SOShift.Active      := True ;

//  FD_ProdTimeSeg.Active   := False ;
//  FD_ProdTimeSeg.Active   := True ;

  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

  SupplierCode := dmsContact.GetClientCode(cds_SchedulerVerkNo.AsInteger) ;


  Self.Caption:= 'Körorder nr : ' + cds_SchedulerID.AsString ;

  SetTitles ;

//  if not cds_ProdInstruct.Active then
//   cds_ProdInstruct.Active:= True ;

//   cds_SOLayout.Active:= False ;
//   cds_SOLayout.Active:= True ;


  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
  RefreshNewAndUsedPkgs ;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

  Finally
   cds_SORaw.EnableControls ;
   cds_UsedPkgs.EnableControls ;
   cds_NewPkgs.EnableControls ;
   cds_SorOrdRow.EnableControls ;
   cds_SortOrder.EnableControls ;
  End ;
//  UppdateraKontraktsPris ;
 End ;// With dmsSortOrder do

  finally
    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;
End ;

procedure TfrmSortOrder.CreateNewSortingOrderByWizard(const NewRunOrder : Boolean) ;

Begin

End ;

procedure TfrmSortOrder.acPrintAOExecute(Sender: TObject);
//var FormCRViewReport: TFormCRViewReport;
begin
 if pgMain.ActivePage = tsVeckoVy then
  PrintWorkOrders
   else
     PrintVeckyVy ;

(*
 with dmsSortOrder do
 Begin
//  SaveSortOrderRowPrintOrder ;
  cds_AO.Active:= False ;
//  sq_AO.ParamByName('SortingOrderNo').AsInteger:= cds_SortOrderSortingOrderNo.AsInteger ;
  cds_AO.Active:= True ;
  if cds_AO.RecordCount > 0 then
  Begin
//   ppReportAO.DeviceType             := dtScreen ;
//   ppReportAO.Print ;
  End ;
 End ;

 *)

{ FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo( 'AO.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger);
//  FormCRViewReport.CrystalActiveXReportViewer1.ReportSource:= FormCRViewReport.Report ;
//  FormCRViewReport.CrystalActiveXReportViewer1.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ; }
end;

procedure TfrmSortOrder.PrintWorkOrders ;
Begin
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Hyvelrapport, vecka ' + seWeekNo.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Arbetsordernr: ' + cds_SortOrderSortingOrderNo.AsString ) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers:= False ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link1) ;
End ;

procedure TfrmSortOrder.PrintVeckyVy ;
Begin
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Hyvelrapport, vecka ' + seWeekNo.Text) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add('Arbetsordernr: ' + cds_SortOrderSortingOrderNo.AsString ) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation:= poLandscape ;
  dxComponentPrinter1Link2.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers:= False ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link2) ;
End ;

procedure TfrmSortOrder.DeleteMarkedKorOrders(Sender: TObject) ;
begin
 //Sätt markerade körorders till aktuell vecka
 With dmsSystem, dmsSortOrder do
 Begin
  cds_SortOrderList.DisableControls ;
  Try
  GetMarkedRows ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_SortOrderList.FindKey([mtMarkedCodesPkgCodePPNo.AsInteger]) then
   Begin
    dmsSortOrder.DeleteSortOrder(cds_SortOrderListID.AsInteger, True) ;
   End ;
   mtMarkedCodes.Next ;
  End ;
   cds_SortOrderList.Active := False ;
   cds_SortOrderList.Active := True ;

  Finally
   cds_SortOrderList.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmSortOrder.acDeleteSortOrderExecute(Sender: TObject);
begin
 if MessageDlg('Vill du ta bort markerade körorders? Obs även bokningen raderas!',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
 Begin
  With dmsSortOrder do
  Begin
   DeleteMarkedKorOrders(Sender) ;
  End ;
 End ;
end;

procedure TfrmSortOrder.grdWorkOrderDBTableView1DblClick(Sender: TObject);
begin
 acOpenWorkOrderExecute(Sender) ;
end;

procedure TfrmSortOrder.seWeekNoPropertiesChange(Sender: TObject);
begin
// Refresh_WorkOrder(Sender) ;
end;

procedure TfrmSortOrder.cbShowAllPropertiesChange(Sender: TObject);
begin
 if cbShowAll.Checked then
 Begin
// biStatus.Enabled:= True ;
 seWeekNo.Enabled:= False ;
 End
 else
 Begin
//  biStatus.Enabled:= False ;
  seWeekNo.Enabled:= True ;
 End ;
 Refresh_WorkOrder(Sender) ;
end;

procedure TfrmSortOrder.FormCreate(Sender: TObject);
Var Save_Cursor         : TCursor;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
{
   dmsConnector     := TdmsConnector.Create(nil) ;
   dmsSystem        := TdmsSystem.Create(nil) ;
   dmsContact       := TdmsContact.Create(nil) ;
   dmsProduct       := TdmsProduct.Create(nil) ;
}
 dmsSortOrder     := TdmsSortOrder.Create(nil) ;
 dm_PkgWorkOrder  := Tdm_PkgWorkOrder.Create(nil) ;
 dmSotOrderList   := TdmSotOrderList.Create(nil) ;
 dm_ProdPlan      := Tdm_ProdPlan.Create(nil) ;
 dm_Vis_Vida      := Tdm_Vis_Vida.Create(nil) ;

 AcceptInput      := False ;

 //ThisUser.Database:= 'CARMAK-HP8530W\SQLEXPRESS:vis_vida' ;

// ThisUser.Database:= 'alvesql03:vis_vida' ;
// ThisUser.Database:= 'vis.vida.se:vis_vida' ;
//  ThisUser.Database:= '172.24.0.40:vis_vida' ;
// dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;

{
     if not ThisUser.Logon then
      Close
       else
        if dmsConnector.FDConnection1.Connected then
        Begin
        End
        else
        Begin
         Close ;
        End ;

}

{ dm_UserProps.GetAppFormSize('AO' + frmMain.Name, Height, Width, Top, Left) ;
 if (Height > 0) and (Width > 0) then //and (Top > 0) and (Left > 0) then
 Begin
  frmMain.Height  := Height ;
  frmMain.Width   := Width ;
  frmMain.Top     := Top ;
  frmMain.Left    := Left ;
 End ; }


 With dmsSortOrder do
 Init_cds_uapCity ;

 AktivtDiagram                  := 'Tid' ;
 LoadLengthGroupNames ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.acApplyUpdatesUpdate(Sender: TObject);
begin
 acApplyUpdates.Enabled:= not DataSaved ;
end;

procedure TfrmSortOrder.acCalcResultExecute(Sender: TObject);
Var SortingOrderNo : Integer ;
begin
 With dmsSortOrder do
 Begin
  PrepareForPostCalc (cds_SortOrderListID.AsInteger) ;
 End ;//With dmsSortOrder do
// CalcWorkOrderResult(Sender) ;

// CalcWorkOrderResult(Sender) ;

(* With dmsSortOrder do
 Begin
  SortingOrderNo:= cds_SortOrderSortingOrderNo.AsInteger ;
//  if not Assigned(dm_PkgWorkOrder) then dm_PkgWorkOrder:= Tdm_PkgWorkOrder.Create(nil) ;

  cds_SortOrderList.Filter:= 'SortingOrderNo = '+cds_SortOrderSortingOrderNo.AsString ;
  cds_SortOrderList.Filtered:= True ;
  Try

  cds_SorOrdRow.Active:= False ;
  cds_SorOrdRow.Active:= True ;


  cds_SORaw.Active:= False ;
  cds_SORaw.Active:= True ;

  dm_PkgWorkOrder.cds_NewPkgs.Active:= False ;
  dm_PkgWorkOrder.sq_NewPkgs.ParamByName('SortingOrderNo').AsInteger:= cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_NewPkgs.Active:= True ;

  dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
  dm_PkgWorkOrder.sq_UsedPkgs.ParamByName('SortingOrderNo').AsInteger:= cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ;

  cds_PIP.Active:= False ;
  cds_PIP.Active:= True ;
  cds_LIP.Active:= False ;
  cds_LIP.Active:= True ;
  cds_ProductionUnit.Active:= False ;
  cds_ProductionUnit.Active:= True ;

  CheckThatRawMtrlPkgHasProduct ;
  CalcKassation ;
  CalculateSortingOrderResult ;

//  if Assigned(dm_PkgWorkOrder) then FreeAndNil(dm_PkgWorkOrder) ;

  Finally
   cds_SortOrderList.Filtered:= False ;
   cds_SortOrderList.Locate('SortingOrderNo', SortingOrderNo, []) ;

  End ;
 End ;
 *)
end;

procedure TfrmSortOrder.acCalcAllExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 try
 //Calc markerade körorders
 With dmsSystem, dmsSortOrder, dm_PkgWorkOrder do
 Begin
  cds_UsedPkgs.DisableControls ;
  cds_NewPkgs.DisableControls ;
  cds_SORaw.DisableControls ;
  cds_SorOrdRow.DisableControls ;
  cds_SortOrder.DisableControls ;
  cds_SortOrderList.DisableControls ;
  Try
  GetMarkedRows ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_SortOrder.Active := False ;
   cds_SortOrder.ParamByName('SortingOrderNo').AsInteger  := mtMarkedCodesPkgCodePPNo.AsInteger ;
   cds_SortOrder.Active := True ;
   cds_SorOrdRow.Active := False ;
   cds_SorOrdRow.Active := True ;
   cds_SORaw.Active := False ;
   cds_SORaw.Active := True ;
   FD_ProdTimeSeg.Active   := False ;
   FD_ProdTimeSeg.Active   := True ;



   StatusBar1.SimpleText  := 'Kalkylerar körordernr ' + mtMarkedCodesPkgCodePPNo.AsString ;
   Application.ProcessMessages ;

   PrepareForPostCalc (mtMarkedCodesPkgCodePPNo.AsInteger) ;
   mtMarkedCodes.Next ;
  End ;
   StatusBar1.SimpleText  := '' ;
//  if cds_SortOrderList.ChangeCount > 0 then
//   cds_SortOrderList.ApplyUpdates(0) ;

  Finally
   FD_ProdTimeSeg.Active  := False ;
   cds_SORaw.Active       := False ;
   cds_SortOrder.Active   := False ;
   cds_SortOrderList.EnableControls ;
   cds_SORaw.EnableControls ;
   cds_UsedPkgs.EnableControls ;
   cds_NewPkgs.EnableControls ;
   cds_SorOrdRow.EnableControls ;
   cds_SortOrder.EnableControls ;
  End ;
 End ;//With
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.SaveAO ;
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderStartTime.IsNull then
  Begin
//   ShowMessage('Kan inte spara föränn du anger en planerad starttid!') ;
//   Exit ;
  End ;


  if cds_SortOrderList.State in [dsEdit, dsInsert] then
   cds_SortOrderList.Post ;

  if cds_SORaw.State in [dsEdit, dsInsert] then
   cds_SORaw.Post ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   cds_SorOrdRow.Post ;


  if cds_SortOrderList.ChangeCount > 0 then
  Begin
   cds_SortOrderList.ApplyUpdates(0) ;
   cds_SortOrderList.CommitUpdates ;
  End ;

  if cds_SORaw.ChangeCount > 0 then
  Begin
   cds_SORaw.ApplyUpdates(0) ;
   cds_SORaw.CommitUpdates ;
  End ;

  if cds_SorOrdRow.ChangeCount > 0 then
  Begin
   cds_SorOrdRow.ApplyUpdates(0) ;
   cds_SorOrdRow.CommitUpdates ;
  End ; 

  End ;
end;

procedure TfrmSortOrder.grdWorkOrderDBTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
 AEdit.OnDblClick := grdWorkOrderDBTableView1DblClick;
end;

procedure TfrmSortOrder.teAONrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then
  Exit;
 LOpenWorkOrder(strtointDef(Trim(teAONr.Text),0), -1) ;

 With dmsSortOrder do
 Begin
  if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) and (cds_SortOrderSortingOrderNo.AsInteger > 0) then
  Begin

  End ;
 End ; 
end;

procedure TfrmSortOrder.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if PanelAvregPkgs.Visible then
 Begin
  With dmsSortOrder do
  Begin
   dmSotOrderList.SaveUserProps(Self.Name) ;
  End ;
  SaveSortOrderLayoutExecute(Sender) ;
  CanClose  := True ;
 End
 else
 Begin
   ShowMessage('Inlästa paket är inte avregistrerade. Avregistrera eller Ångra inlästa paket.');
   CanClose := False ;
 End;
end;

procedure TfrmSortOrder.acOpenWorkOrderUpdate(Sender: TObject);
begin
  With dmsSortOrder do
  Begin
   acOpenWorkOrder.Enabled  := (cds_SortOrderList.Active) and (cds_SortOrderList.RecordCount > 0)
   and (grdWorkOrderDBTableView1.Controller.SelectedRecordCount > 0) ;
  End ;
end;

procedure TfrmSortOrder.acOverviewExecute(Sender: TObject);
begin
{ SetSQLForGantView ;
  if fmPlanningnew =nil then
    fmPlanningnew := TfmPlanningNew.Create(Self);
  fmPlanningnew.Show; }
end;

procedure TfrmSortOrder.SetSQLForGantView ;
Begin
  With dm_ProdPlan do
  Begin
   cds_SortOrders.SQL.Clear ;
   cds_SortOrders.SQL.Add('Select cx.ID AS SortingOrderNo, SeqNo,') ;
   cds_SortOrders.SQL.Add('(Select SUM(SOR2.PlannedAM3)') ;
   cds_SortOrders.SQL.Add('FROM dbo.SortingOrderRow SOR2') ;
   cds_SortOrders.SQL.Add('WHERE SOR2.SortingOrderNo = cx.ID') ;
   cds_SortOrders.SQL.Add('Group By SOR2.SortingOrderNo) AS PLANAM3,') ;
   cds_SortOrders.SQL.Add('(Select SUM(SOR2.NoOfUnits)') ;
   cds_SortOrders.SQL.Add('FROM dbo.SortingOrderRow SOR2') ;
   cds_SortOrders.SQL.Add('WHERE SOR2.SortingOrderNo = cx.ID') ;
   cds_SortOrders.SQL.Add('Group By SOR2.SortingOrderNo) AS PLANPKGS,') ;

   cds_SortOrders.SQL.Add('SO.PlannedProductionTime / 60 AS PlannedProductionTime,') ;
   cds_SortOrders.SQL.Add('SO.RealStartTime,') ;
   cds_SortOrders.SQL.Add('SO.RealEndTime,') ;
   cds_SortOrders.SQL.Add('cx.TaskStatusField AS Status,') ;

   cds_SortOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderNewPkgs SORP') ;
   cds_SortOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo') ;
   cds_SortOrders.SQL.Add('WHERE') ;
   cds_SortOrders.SQL.Add('SORP.SortingOrderNo = cx.ID)  as Progress,') ;

{   cds_SortOrders.SQL.Add('CASE WHEN (Select SUM(SOR2.PlannedAM3)') ;
   cds_SortOrders.SQL.Add('FROM dbo.SortingOrderRow SOR2') ;
   cds_SortOrders.SQL.Add('WHERE SOR2.SortingOrderNo = SO.SortingOrderNo') ;
   cds_SortOrders.SQL.Add('Group By SOR2.SortingOrderNo) > 0 THEN') ;
   cds_SortOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderNewPkgs SORP') ;
   cds_SortOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo') ;
   cds_SortOrders.SQL.Add('WHERE') ;
   cds_SortOrders.SQL.Add(' SORP.SortingOrderNo = SO.SortingOrderNo) /') ;

   cds_SortOrders.SQL.Add('(Select SUM(SOR2.PlannedAM3)') ;
   cds_SortOrders.SQL.Add('FROM dbo.SortingOrderRow SOR2') ;
   cds_SortOrders.SQL.Add('WHERE SOR2.SortingOrderNo = SO.SortingOrderNo') ;
   cds_SortOrders.SQL.Add('Group By SOR2.SortingOrderNo)') ;
   cds_SortOrders.SQL.Add('* 1') ;
   cds_SortOrders.SQL.Add('ELSE') ;
   cds_SortOrders.SQL.Add('0') ;
   cds_SortOrders.SQL.Add('END') ;
   cds_SortOrders.SQL.Add('AS Progress,') ; }


   cds_SortOrders.SQL.Add('ci.CityName AS LAGERSTÄLLE, rp.RegPointName AS PRODENHET,') ;
   cds_SortOrders.SQL.Add('LIP.LogicalInventoryName AS LAGERGRUPP, pr.ClientName AS PRODUCENT, OWN.ClientName AS ÄGARE,') ;
   cds_SortOrders.SQL.Add('(Select Top 1 p.ProductDisplayName FROM') ;
   cds_SortOrders.SQL.Add('dbo.SortingOrderRawMtrl SOR') ;
   cds_SortOrders.SQL.Add('Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo') ;
   cds_SortOrders.SQL.Add('WHERE SOR.SortingOrderNo = cx.ID) AS Ravara') ;

   cds_SortOrders.SQL.Add('FROM dbo.SortingOrder SO') ;

   cds_SortOrders.SQL.Add('Left Outer Join dbo.PhysicalInventoryPoint PIP') ;
   cds_SortOrders.SQL.Add('Inner Join dbo.City Ci on ci.cityNo = PIP.PhyInvPointNameNo') ;
   cds_SortOrders.SQL.Add('ON PIP.PhysicalInventoryPointNo = SO.PIPNo') ;
   cds_SortOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SO.LIPNo') ;
   cds_SortOrders.SQL.Add('Left Outer Join dbo.ProductionUnit pu') ;
   cds_SortOrders.SQL.Add('Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.RegistrationPointNo') ;
   cds_SortOrders.SQL.Add('on pu.ProductionUnitNo = cx.ResourceID') ;
   cds_SortOrders.SQL.Add('Left Outer Join dbo.Client PR on pr.ClientNo = cx.VerkNo') ;
   cds_SortOrders.SQL.Add('Left Outer Join dbo.Client OWN on OWN.ClientNo = cx.OwnerNo') ;

   cds_SortOrders.SQL.Add('WHERE') ;
   cds_SortOrders.SQL.Add('cx.ID in (Select SO.SortingOrderNo FROM dbo.SortingOrderNewPkgs SORP') ;
   cds_SortOrders.SQL.Add('WHERE') ;
   cds_SortOrders.SQL.Add('SORP.SortingOrderNo = cx.ID)') ;

   if dmSotOrderList.cds_PropsProducerNo.AsInteger > 0 then
   cds_SortOrders.SQL.Add('AND cx.VerkNo = ' + dmSotOrderList.cds_PropsProducerNo.AsString) ;


    if dmSotOrderList.cds_PropsRegPointNo.AsInteger > 0 then
    cds_SortOrders.SQL.Add('AND cx.ResourceID = ' + dmSotOrderList.cds_PropsRegPointNo.AsString) ;


//   if thisuser.UserID = 8 then cds_SortOrders.SQL.SaveToFile('cds_SortOrders.txt');
  End ;//With
End ;

procedure TfrmSortOrder.acSaveUserPropsExecute(Sender: TObject);
begin
  With dmsSortOrder do
  Begin
   dmSotOrderList.SaveUserProps(Self.Name) ;
   acSaveAvropLayoutExecute(Sender) ;
  End ;
end;

procedure TfrmSortOrder.acSetMarkedRunOrdersToCurrentWeekExecute(
  Sender: TObject);
begin
 //Sätt markerade körorders till aktuell vecka
 With dmsSystem, dmsSortOrder do
 Begin
  cds_SortOrderList.DisableControls ;
  Try
  GetMarkedRows ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_SortOrderList.FindKey([mtMarkedCodesPkgCodePPNo.AsInteger]) then
   Begin
    if ((cds_SortOrderListTaskStatusField.AsInteger = 0) or (cds_SortOrderListTaskStatusField.AsInteger = 1)) then
    Begin
     cds_SortOrderList.Edit ;
     cds_SortOrderListRealStartTime.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cds_SortOrderList.Post ;
    End
     else
      ShowMessage('Starttid kan inte ändras på körordernr ' + mtMarkedCodesPkgCodePPNo.AsString + ' pga status inte tillåter');
   End ;
   mtMarkedCodes.Next ;
  End ;
  if cds_SortOrderList.ChangeCount > 0 then
  Begin
   cds_SortOrderList.ApplyUpdates(0) ;
   cds_SortOrderList.CommitUpdates ;
  End ;
  ac_RefreshExecute(Sender) ;
  Finally
   cds_SortOrderList.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmSortOrder.GetMarkedRows ;
Var ProdInstruNo, SortingOrderRowNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    Save_Cursor : TCursor;
begin
 With dmsSystem, dmsSortOrder do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  grdWorkOrderDBTableView1.BeginUpdate ;
  grdWorkOrderDBTableView1.DataController.BeginLocate ;
  Try
   For i := 0 to grdWorkOrderDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdWorkOrderDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx := grdWorkOrderDBTableView1.DataController.GetItemByFieldName('ID').Index;
    OutputVal := grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx];

//    ColIdx := grdWorkOrderDBTableView1.DataController.GetItemByFieldName('ProdInstructNo').Index;
//    if grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
//    ProdInstruNo:= grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx]
//    else
//    ProdInstruNo:= -1 ;


    if not mtMarkedCodes.Locate('PkgCodePPNo', OutputVal, []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
//     mtMarkedCodesProdInstruNo.AsInteger      := BookingNo ;
     mtMarkedCodes.Post ;
    End ;
   End ;

  Finally
   grdWorkOrderDBTableView1.DataController.EndLocate ;
   grdWorkOrderDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfrmSortOrder.cnShowTemplatesPropertiesChange(Sender: TObject);
begin
  Refresh_WorkOrder(Sender) ;
end;

procedure TfrmSortOrder.Refresh_WorkOrderRows ;
var
  Save_Cursor                 : TCursor;
  SortingOrderNo, Year        : Integer ;
begin
 seVeckaRapportVy.Properties.OnChange:= nil ;
 Try
 Year:=  StrToInt(Copy(IntToStr(seVeckaRapportVy.Value),1,1)) ;
 if StrToInt( Copy(IntToStr(seVeckaRapportVy.Value),2,3)  ) = 54 then
 Begin
  Year:= Year + 1 ;
  seVeckaRapportVy.Value:= StrToInt(IntToStr(Year)+'01') ; ;
 End
 else
 if StrToInt( Copy(IntToStr(seVeckaRapportVy.Value),2,3)  ) = 0 then
 Begin
  Year:= Year - 1 ;
  seVeckaRapportVy.Value:= StrToInt(IntToStr(Year)+'53') ; ;
 End ;

 Finally
  seVeckaRapportVy.Properties.OnChange:= seVeckaRapportVyPropertiesChange ;
 End ;


 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 FD_SortOrderRows.DisableControls ;
 try
  With dmsSortOrder do
  Begin

//   SortingOrderNo:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;

   FD_SortOrderRows.Active:= False ;
   FD_SortOrderRows.ParamByName('YearWeek').AsString    := IntToStr(seVeckaRapportVy.value) ;
   FD_SortOrderRows.ParamByName('ProducerNo').AsInteger := dmSotOrderList.cds_PropsProducerNo.AsInteger ;
   FD_SortOrderRows.Active:= True ;

   FD_Rawmtrl.Active:= False ;
   FD_Rawmtrl.ParamByName('YearWeek').AsString    := IntToStr(seVeckaRapportVy.value) ;
   FD_Rawmtrl.ParamByName('ProducerNo').AsInteger := dmSotOrderList.cds_PropsProducerNo.AsInteger ;
   FD_Rawmtrl.Active:= True ;


   FD_SOHdr.Active:= False ;
   FD_SOHdr.ParamByName('YearWeek').AsString    := IntToStr(seVeckaRapportVy.value) ;
   FD_SOHdr.ParamByName('ProducerNo').AsInteger := dmSotOrderList.cds_PropsProducerNo.AsInteger ;
   FD_SOHdr.Active:= True ;



  End ;
 finally
  FD_SortOrderRows.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView1DblClick(
  Sender: TObject);
begin
// OpenWorkOrder(FD_SortOrderRowsKrnr.AsInteger) ;
end;

procedure TfrmSortOrder.acExpandRowsExecute(Sender: TObject);
begin
 grdSortOrderRowsDBTableView2.ViewData.Expand(True);
end;

procedure TfrmSortOrder.acCollapseAllRowsExecute(Sender: TObject);
begin
 grdSortOrderRowsDBTableView2.ViewData.Collapse(True);
end;

procedure TfrmSortOrder.acCalcAllUpdate(Sender: TObject);
begin
 acCalcAll.Enabled  := pgMain.ActivePage = tsVeckoVy ;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView2DblClick(
  Sender: TObject);
begin
  LOpenWorkOrder(FD_SOHdrKrnr.AsInteger, -1) ;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView2Kass_StyckStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Kass_Styck');
  if ARecord.Values[AColumn.Index] < 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.cds_SortOrderListBeforePost(DataSet: TDataSet);
Var Year    : String ;
    WeekNo  : Integer ;
begin
 WeekNo:= WeekOf(cds_SortOrderListRealStartTime.AsDateTime) ;
 if WeekNo < 10 then
  cds_SortOrderListWeekNo.AsString := '0'+inttostr(WeekNo)
   else
    cds_SortOrderListWeekNo.AsString:= inttostr(WeekOf(cds_SortOrderListRealStartTime.AsDateTime)) ;

 cds_SortOrderListYearNo.AsInteger:= YearOf(cds_SortOrderListRealStartTime.AsDateTime) ;
 Year:= IntToStr(cds_SortOrderListYearNo.AsInteger-2000) ;
 cds_SortOrderListYearWeek.AsInteger:= StrToInt(Year + cds_SortOrderListWeekNo.AsString) ;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView3KassPcsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('KassPcs');
  if ARecord.Values[AColumn.Index] < 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView1PrisStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Pris');
  if ARecord.Values[AColumn.Index] <= 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.grdSortOrderRowsDBTableView3PricePerNM3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PricePerNM3');
  if ARecord.Values[AColumn.Index] <= 0 then
    AStyle := cxStyle1Red ;
end;

//Kopplar färdigvaru paket som inte fastnat på en körorder
//Gäller paket som kommer från justerverket
procedure TfrmSortOrder.acAddPkgToRunExecute(Sender: TObject);
var fAddPkgToRun: TfAddPkgToRun;
begin
 fAddPkgToRun:= TfAddPkgToRun.Create(nil) ;
 Try
  fAddPkgToRun.ShowModal ;
 Finally
  FreeAndNil(fAddPkgToRun) ;
 End ;
end;

procedure TfrmSortOrder.acRemoveAORowExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  if MessageDlg('Vill du ta bort markerade färdigvarurader?' ,
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    RemoveMarkedOutPutRows ;
    SaveAOKorOrder(Sender) ;
   End ;
 End ;
end;

procedure TfrmSortOrder.RemoveMarkedOutPutRows ;
Var Save_Cursor : TCursor;
Begin
 With dmsSystem, dmsSortOrder do
 Begin
  Save_Cursor   := Screen.Cursor ;
  Screen.Cursor := crSQLWait ;    { Show hourglass cursor }
  cds_SorOrdRow.DisableControls ;
  Try
  GetMarkedSortingOrderRows ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_SorOrdRow.Locate('SortingOrderRowNo',mtMarkedCodesPkgCodePPNo.AsInteger, []) then
   cds_SorOrdRow.Delete ;
   mtMarkedCodes.Next ;
  End ;
  Finally
   cds_SorOrdRow.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;
End ;

procedure TfrmSortOrder.grdSortRowsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 with dmsSortOrder do
 Begin
{  if cds_SchedulerTaskStatusField.AsInteger > 0  then
  AAllow := False
  else
  AAllow:= True ; }
 End ;
end;

procedure TfrmSortOrder.grdSortRowsDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle, CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle, CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfrmSortOrder.acAddProduktToAORowUpdate(Sender: TObject);
begin
 acAddProduktToAORow.Enabled  := EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.acRemoveAORowUpdate(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  acRemoveAORow.Enabled:= (cds_SorOrdRow.Active) and (cds_SorOrdRow.RecordCount > 0)
  and (grdSortRowsDBBandedTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

function TfrmSortOrder.EditKorOrderDataSaved : Boolean ;
begin
 Result:= True ;
 With dmsSortOrder do
 Begin
  if cds_Scheduler.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SortOrder.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SORaw.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_FeedBack.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SOCngProd.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_ProdInstruct.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SOLayout.State in [dsEdit, dsInsert] then
   Result:= False ;

  if cds_SortOrder.ChangeCount > 0 then
   Result:= False ;

  if cds_SORaw.ChangeCount > 0 then
   Result:= False ;

  if cds_SorOrdRow.ChangeCount > 0 then
   Result:= False ;

  if cds_FeedBack.ChangeCount > 0 then
   Result:= False ;

  if cds_SOCngProd.ChangeCount > 0 then
   Result:= False ;

  if cds_ProdInstruct.ChangeCount > 0 then
   Result:= False ;

  if cds_SOLayout.ChangeCount > 0 then
   Result:= False ;
 End ;
end;

procedure TfrmSortOrder.acAddUrlaggFromDropListUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acAddUrlaggFromDropList.Enabled := (mtUrlaggProduct.Active) and (mtUrlaggProductUrlaggProductNo.AsInteger > 0) and (mtUrlaggProductUrlaggProductNo.IsNull = False) ;
 End ;
end;

procedure TfrmSortOrder.grdRawMtrlDBBandedTableView1DblClick(
  Sender: TObject);
begin
 // acShowRawMtrilProductInInventoryListExecute(Sender) ;
end;

procedure TfrmSortOrder.grdRawMtrlDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle, CM_MOVEITrawmtrl, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle, CM_MOVEITrawmtrl, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfrmSortOrder.NewProdinstructExecute ;
begin
 With dmsSortOrder do
 Begin
  cds_ProdInstruct.Filtered:= False ;
  Try
   cds_ProdInstruct.UpdateOptions.ReadOnly  := False ;
   cds_ProdInstruct.Insert ;
   if cds_ProdInstructProdInstruNo.IsNull = False then
   Begin
    cds_ProdInstruct.Filter :=  'ProdInstruNo = ' + cds_ProdInstructProdInstruNo.AsString ;
    if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;
    cds_SorOrdRowProdInstructNo.AsInteger:= cds_ProdInstructProdInstruNo.AsInteger ;
   End
   else
   cds_ProdInstruct.Filter  :=  'ProdInstruNo = -1' ;

  Finally
   cds_ProdInstruct.Filtered:= True ;
  End ;
 End ; //with
end;

procedure TfrmSortOrder.InsertProductsFromSelectedProducts ;
Var Save_Cursor   : TCursor;
    AntalPoster   : Integer ;
    OrderRowNo    : Integer ;
    LThereIsProductsWithPlanedSurface  : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmsSortOrder, dmsSystem do
 Begin
  LThereIsProductsWithPlanedSurface  := ThereIsProductsWithPlanedSurface ;
  AntalPoster := cds_SorOrdRow.RecordCount ;
  cds_SorOrdRow.DisableControls ;
  Try
   Application.ProcessMessages ;
//    ds_OrderRow.OnDataChange                := Nil ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_SorOrdRow.Insert ;
   cds_SorOrdRowProductNo.AsInteger         := dmsSystem.mtMarkedCodesProductNo.AsInteger ;
   cds_SorOrdRowProductLengthNo.AsInteger   := dmsSystem.mtMarkedCodesProductLengthNo.AsInteger ;
   cds_SorOrdRowPPP.AsInteger               := mtMarkedCodesPPP.AsInteger ;
   cds_SorOrdRowLengthDescription.AsString  := mtMarkedCodesLengthDesc.AsString ;
   cds_SorOrdRowSurfacingNo.AsInteger       := mtMarkedCodesSurfacingNo.AsInteger ;
   cds_SorOrdRowLengthSpec.AsString         := mtMarkedCodesLengthSpec.AsString ;

   cds_SorOrdRowAT.AsFloat                  := dmsSortOrder.GetAT(cds_SorOrdRowProductNo.AsInteger) ;
   cds_SorOrdRowAB.AsFloat                  := dmsSortOrder.GetAB(cds_SorOrdRowProductNo.AsInteger) ;

   OrderRowNo                               := cds_SorOrdRowSortingOrderRowNo.AsInteger ;

   if (LThereIsProductsWithPlanedSurface) and
   (cds_SorOrdRowSurfacingNo.AsInteger = cSawnSurface) then
    cds_SorOrdRowMCClassNo.AsInteger  := 1 //Hyvlas EJ!
    else
    cds_SorOrdRowMCClassNo.AsInteger  := 0 ;

   if AntalPoster > 1 then
   cds_SorOrdRowUrlagg.AsInteger            := 1
   else
   cds_SorOrdRowUrlagg.AsInteger            := 0 ;
   NewProdinstructExecute ;

   if cds_SorOrdRow.State in [dsEdit, dsInsert] then
    cds_SorOrdRow.Post ;
   if cds_SorOrdRow.ChangeCount > 0 then
   Begin
    cds_SorOrdRow.ApplyUpdates(0) ;
    cds_SorOrdRow.CommitUpdates ;
   End ;

   if cds_ProdInstruct.State in [dsEdit, dsInsert] then
    cds_ProdInstruct.Post ;
   if cds_ProdInstruct.ChangeCount > 0 then
   Begin
    cds_ProdInstruct.ApplyUpdates(0) ;
    cds_ProdInstruct.CommitUpdates ;
   End ;

   if cds_SOLayout.State in [dsEdit, dsInsert] then
    cds_SOLayout.Post ;
   if cds_SOLayout.ChangeCount > 0 then
   Begin
    cds_SOLayout.ApplyUpdates(0) ;
    cds_SOLayout.CommitUpdates ;
   End ;

   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   mtMarkedCodes.Next ;
  End ;
  Finally
//    ds_OrderRow.OnDataChange                := ds_OrderRowDataChange ;
    cds_SorOrdRow.EnableControls ;
  End ;
  cds_SorOrdRow.Active:= False ;
  cds_SorOrdRow.Active:= True ;

  cds_SorOrdRow.Locate('SortingOrderRowNo', OrderRowNo, []) ;


  mtMarkedCodes.Active:= False ;
 End ;//With dmcOrder, dmsSystem do
 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmSortOrder.InsertPreviouslyUsedRawMtrlProduct ;
Var Save_Cursor     : TCursor;
    RawMtrlNo       : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 RawMtrlNo      := 0 ;
 Try
 With dmsSortOrder do
 Begin
  cds_SORaw.DisableControls ;
  Try
   Application.ProcessMessages ;

   if cds_FindRaw.Locate('ProductNo', mtRawMtrlRawMtrlProductNo.AsInteger, []) then
   Begin
   cds_SORaw.Insert ;
//   RawMtrlNo                          := cds_SORawRawMtrlNo.AsInteger ;

   cds_SORawProductNo.AsInteger       := cds_FindRawProductNo.AsInteger ;
   cds_SORawProductLengthNo.AsInteger := cds_FindRawProductLengthNo.AsInteger ;
   cds_SORawLengthDescription.AsString:= cds_FindRawLengthDescription.AsString ;

   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   if cds_SORaw.State in [dsEdit, dsInsert] then
    cds_SORaw.Post ;
   if cds_SORaw.ChangeCount > 0 then
   Begin
    cds_SORaw.ApplyUpdates(0) ;
    cds_SORaw.CommitUpdates ;
   End ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   End ;

  Finally
   cds_SORaw.EnableControls ;
  End ;
  cds_SORaw.Active:= False ;
  cds_SORaw.Active:= True ;

//  if RawMtrlNo > 0 then
//   cds_SORaw.Locate('RawMtrlNo', RawMtrlNo, []) ;
 End ;//With dmcOrder, dmsSystem do
 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmSortOrder.acDeleteRawMtrlExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  if MessageDlg('Vill du ta bort markerade Råvarurader?' ,
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   RemoveMarkedInputRows ;
   SaveAOKorOrder(Sender) ; 
 End ;
end;

procedure TfrmSortOrder.acDeleteRawMtrlUpdate(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  acDeleteRawMtrl.Enabled:= (cds_SORaw.Active) and (cds_SORaw.RecordCount > 0) and
 (grdRawMtrlDBBandedTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

procedure TfrmSortOrder.ShowRawMtrilProductInInventoryList ;
Var PIPNo, ProductNo : Integer ;
begin
{
 with dmsSortOrder, dmsSystem do
 Begin
  if pgMAIN.ActivePage = tsEndProdukt then
   Begin
    ProductNo             := cds_SorOrdRowProductNo.AsInteger ;
    PIPNo                 := cds_SortOrderPIPNo.AsInteger ;
    LabelPIPName.Caption  := lcInvPlace.Text ;
    AvregOK               := False ;
   End
    else
     if pgMAIN.ActivePage = tsRawMtrl then
     Begin
      ProductNo             := cds_SORawProductNo.AsInteger ;
      PIPNo                 := cds_SortOrderRawPIPNo.AsInteger ;
      LabelPIPName.Caption  := lcRawPIPNAME.Text ;
      AvregOK               := True ;
     End ;


  RefreshLagerLista(ProductNo, PIPNo) ;

  mtProduct.Active                              := False ;
  cds_ProdInLager.Active                        := False ;
  cds_ProdInLager.ParamByName('PIPNo').AsInteger := PIPNo ;
  cds_ProdInLager.Active                        := True ;
  mtProduct.Active                              := True ;
  mtProduct.Insert ;
  mtProductProductNo.AsInteger  := ProductNo ;
  mtProduct.Post ;
 End ;//With
}
end;

procedure TfrmSortOrder.acShowRawMtrilProductInInventoryListExecute(
  Sender: TObject);
begin
 ShowRawMtrilProductInInventoryList ;
end;

procedure TfrmSortOrder.InsertRAWProductsFromSelectedProducts ;
Var Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmsSortOrder, dmsSystem do
 Begin
  cds_SORaw.DisableControls ;
  Try
   Application.ProcessMessages ;
//    ds_OrderRow.OnDataChange                := Nil ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_SORaw.Insert ;
   cds_SORawBookedProductNo.AsInteger         := dmsSystem.mtMarkedCodesProductNo.AsInteger ;
   cds_SORawBookedProductLengthNo.AsInteger   := dmsSystem.mtMarkedCodesProductLengthNo.AsInteger ;
   cds_SORawLengthDescription.AsString        := mtMarkedCodesLengthDesc.AsString ;
   cds_SORawLengthSpec.AsString               := mtMarkedCodesLengthSpec.AsString ;
   cds_SORawAT.AsFloat                        := mtMarkedCodesAT.AsFloat ;
   cds_SORawAB.AsFloat                        := mtMarkedCodesAB.AsFloat ;
   cds_SORawOrderNo.AsInteger                 := mtMarkedCodesOrderNo.AsInteger ;

   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   if cds_SORaw.State in [dsEdit, dsInsert] then
    cds_SORaw.Post ;
   if cds_SORaw.ChangeCount > 0 then
   Begin
    cds_SORaw.ApplyUpdates(0) ;
    cds_SORaw.CommitUpdates ;
   End ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   mtMarkedCodes.Next ;
  End ;
  Finally
//    ds_OrderRow.OnDataChange                := ds_OrderRowDataChange ;
   cds_SORaw.EnableControls ;
  End ;
  cds_SORaw.Active:= False ;
  cds_SORaw.Active:= True ;
  mtMarkedCodes.Active:= False ;
 End ;//With dmcOrder, dmsSystem do
 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;

procedure TfrmSortOrder.RemoveMarkedInputRows ;
Var Save_Cursor : TCursor;
Begin
 With dmsSystem, dmsSortOrder do
 Begin
  Save_Cursor   := Screen.Cursor ;
  Screen.Cursor := crSQLWait ;    { Show hourglass cursor }
  cds_SORaw.DisableControls ;
  Try
  GetMarkedInputRows ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_SORaw.Locate('BookedProductNo;BookedProductLengthNo', VarArrayOf([mtMarkedCodesPkgCodePPNo.AsInteger, mtMarkedCodesProductLengthNo.AsInteger]), []) then
   cds_SORaw.Delete ;
   mtMarkedCodes.Next ;
  End ;
  Finally
   cds_SORaw.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;
End ;

procedure TfrmSortOrder.GetMarkedInputRows ;
Var BookedProductLengthNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    Save_Cursor : TCursor;
begin
 With dmsSystem, dmsSortOrder do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  grdRawMtrlDBBandedTableView1.BeginUpdate ;
  grdRawMtrlDBBandedTableView1.DataController.BeginLocate ;
  Try
   For i := 0 to grdRawMtrlDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdRawMtrlDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx    := grdRawMtrlDBBandedTableView1.DataController.GetItemByFieldName('BookedProductNo').Index;
    OutputVal := grdRawMtrlDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx          := grdRawMtrlDBBandedTableView1.DataController.GetItemByFieldName('BookedProductLengthNo').Index;
    BookedProductLengthNo := grdRawMtrlDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtMarkedCodes.Locate('PkgCodePPNo;ProductLengthNo', VarArrayOf([OutputVal, BookedProductLengthNo]), []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
     mtMarkedCodesProductLengthNo.AsInteger   := BookedProductLengthNo ;
     mtMarkedCodes.Post ;
    End ;
   End ;

  Finally
   grdRawMtrlDBBandedTableView1.DataController.EndLocate ;
   grdRawMtrlDBBandedTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfrmSortOrder.lcRawPIPNAMEEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if not cds_SchedulerOwnerNo.IsNull then
  cds_RawPIP.Filter   := 'OwnerNo = ' + cds_SchedulerOwnerNo.AsString
  else
  cds_RawPIP.Filter   := 'OwnerNo = -1' ;
  cds_RawPIP.Filtered := True ;
 End ;
end;

procedure TfrmSortOrder.lcRawPIPNAMEExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_RawPIP.Filtered := False ;
 End ;
end;

procedure TfrmSortOrder.lcRawLIPNameEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderRawPIPNo.isNull then
  cds_RawLIP.Filter:= 'PIPNo = -1'
  else
  cds_RawLIP.Filter:= 'PIPNo = ' + cds_SortOrderRawPIPNo.AsString ;
  cds_RawLIP.Filtered  := True ;
 End ;
end;

procedure TfrmSortOrder.lcRawLIPNameExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_RawLIP.Filtered  := False ;
 End ;
end;

procedure TfrmSortOrder.acSetNormalTextExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.SelAttributes.Style := [] ;
end;

procedure TfrmSortOrder.acSetNormalTextHyvelInfoExecute(Sender: TObject);
begin
 reHyvelInfo.SelAttributes.Style := [] ;
end;

procedure TfrmSortOrder.acCopyLOInternalNoteToHyvelInfoExecute(
  Sender: TObject);
Var x, Rader  : Integer ;
    S         : String ;
begin
 Rader  := reHyvelInfo.Lines.Count ;
 For x := 0 to mNote.Lines.Count - 1 do
 Begin
  S := mNote.Lines.Strings[x] ;
  Rader := succ(Rader) ;
  reHyvelInfo.Lines.Add(S);
 End ;//for
end;

procedure TfrmSortOrder.lcLggareEnter(Sender: TObject);
begin
 with dmsSortOrder, dmsContact do
 Begin
  if (not cds_SchedulerResourceID.IsNull) and (not cds_SchedulerVerkNo.IsNull) then
   cds_Stacker.Filter  := 'ProductionUnitNo = ' + cds_SchedulerResourceID.AsString
      + ' AND ClientNo = ' + cds_SchedulerVerkNo.AsString
   else
   cds_Stacker.Filter  := 'ProductionUnitNo = -1' ;
  cds_Stacker.Filtered  := True ;
 End ;
end;

procedure TfrmSortOrder.lcLggareExit(Sender: TObject);
Var StackerNo : Integer ;
begin
// lcLggare.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowStackerNo.OldValue <> cds_SorOrdRowStackerNo.NewValue)
  if (cds_SorOrdRowStackerNo.NewValue <> null) then
  Begin
   StackerNo := cds_SorOrdRowStackerNo.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(StackerNo, 'StackerNo') ;
  End ;
 End ;
 Finally
//  lcLggare.Properties.OnChange := lcLggarePropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcALMMExit(Sender: TObject);
Var Value : Integer ;
begin
// lcALMM.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
  if cds_SorOrdRowProductLengthNo.OldValue <> cds_SorOrdRowProductLengthNo.NewValue then
  Begin
   Value := cds_SorOrdRowProductLengthNo.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'ProductLengthNo') ;
  End ;
 End ;
 Finally
//  lcALMM.Properties.OnChange := lcALMMPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.sePPPExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPPP.OldValue <> cds_SorOrdRowPPP.NewValue)
  if (cds_SorOrdRowPPP.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPPP.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PPP') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.cbUrlaggExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowUrlagg.OldValue <> cds_SorOrdRowUrlagg.NewValue)
  if (cds_SorOrdRowUrlagg.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowUrlagg.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Urlagg') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.cbEndPkgAllowedExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowEndPkgAllowed.OldValue <> cds_SorOrdRowEndPkgAllowed.NewValue)
  if (cds_SorOrdRowEndPkgAllowed.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowEndPkgAllowed.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'EndPkgAllowed') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.cbMCClassNoExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowEndPkgAllowed.OldValue <> cds_SorOrdRowEndPkgAllowed.NewValue)
  if (cds_SorOrdRowEndPkgAllowed.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowMCClassNo.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'MCClassNo') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.teNoteringExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowNotering.OldValue <> cds_SorOrdRowNotering.NewValue)
  if (cds_SorOrdRowNotering.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowNotering.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Notering') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.teStickRecipeExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowStickRecipe.OldValue <> cds_SorOrdRowStickRecipe.NewValue)
  if (cds_SorOrdRowStickRecipe.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowStickRecipe.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'StickRecipe') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.tePriceExit(Sender: TObject);
Var Value : Double ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPrice.OldValue <> cds_SorOrdRowPrice.NewValue)
  if (cds_SorOrdRowPrice.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPrice.AsFloat ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Price') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcPrisenhetExit(Sender: TObject);
Var Value : Integer ;
begin
// lcPrisenhet.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPriceUnit.OldValue <> cds_SorOrdRowPriceUnit.NewValue)
  if (cds_SorOrdRowPriceUnit.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPriceUnit.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PriceUnit') ;
  End ;
 End ;
 Finally
//  lcPrisenhet.Properties.OnChange := lcPrisenhetPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcPrislistaExit(Sender: TObject);
Var Value : Integer ;
begin
// lcPrislista.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
  if ((cds_SorOrdRowPriceListNo.OldValue <> cds_SorOrdRowPriceListNo.NewValue)
  and (cds_SorOrdRowPriceListNo.NewValue <> null)) then
  Begin
   Value := cds_SorOrdRowPriceListNo.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PriceListNo') ;
  End ;
 End ;
 Finally
//  lcPrislista.Properties.OnChange := lcPrislistaPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.tePkgPrefixExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPkgPrefix.OldValue <> cds_SorOrdRowPkgPrefix.NewValue)
  if (cds_SorOrdRowPkgPrefix.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPkgPrefix.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PkgPrefix') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.teNoOfUnitsExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowNoOfUnits.OldValue <> cds_SorOrdRowNoOfUnits.NewValue)
  if (cds_SorOrdRowNoOfUnits.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowNoOfUnits.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'NoOfUnits') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.tePlannedAM3Exit(Sender: TObject);
Var Value : Double ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPlannedAM3.OldValue <> cds_SorOrdRowPlannedAM3.NewValue)
  if (cds_SorOrdRowPlannedAM3.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPlannedAM3.AsFloat ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PlannedAM3') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.tePlannedNM3Exit(Sender: TObject);
Var Value : Double ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowPlannedNM3.OldValue <> cds_SorOrdRowPlannedNM3.NewValue)
  if (cds_SorOrdRowPlannedNM3.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowPlannedNM3.AsFloat ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'PlannedNM3') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.teCustomerExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowCustomer.OldValue <> cds_SorOrdRowCustomer.NewValue)
  if (cds_SorOrdRowCustomer.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowCustomer.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Customer') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.teMarkExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowMark.OldValue <> cds_SorOrdRowMark.NewValue)
  if (cds_SorOrdRowMark.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowMark.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Mark') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.seRefCopiesExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowRefCopies.OldValue <> cds_SorOrdRowRefCopies.NewValue)
  if (cds_SorOrdRowRefCopies.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowRefCopies.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'RefCopies') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcLagergruppEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderPIPNo.isNull then
  cds_LIP.Filter:= 'PIPNo = -1'
  else
  cds_LIP.Filter:= 'PIPNo = ' + cds_SortOrderPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
 End ;
end;

procedure TfrmSortOrder.lcLagergruppExit(Sender: TObject);
Var Value : Integer ;
begin
// lcLagergrupp.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowLIPNo.OldValue <> cds_SorOrdRowLIPNo.NewValue)
  if (cds_SorOrdRowLIPNo.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowLIPNo.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'LIPNo') ;
  End ;
 End ;
 Finally
//  lcLagergrupp.Properties.OnChange := lcLagergruppPropertiesChange ;
 End ;


 With dmsSortOrder do
 Begin
  cds_LIP.Filtered  := False ;
 End ;
end;

procedure TfrmSortOrder.teArtikelKodExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowArtikelKod.OldValue <> cds_SorOrdRowArtikelKod.NewValue)
  if (cds_SorOrdRowArtikelKod.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowArtikelKod.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'ArtikelKod') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcLanguagecodeExit(Sender: TObject);
Var Value : Integer ;
begin
// lcLanguagecode.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowLanguagecode.OldValue <> cds_SorOrdRowLanguagecode.NewValue)
  if (cds_SorOrdRowLanguagecode.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowLanguagecode.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'Languagecode') ;
  End ;
 End ;
 Finally
//  lcLanguagecode.Properties.OnChange := lcLanguagecodePropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcSizeFormatExit(Sender: TObject);
Var Value : Integer ;
begin
// lcSizeFormat.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowSizeFormat.OldValue <> cds_SorOrdRowSizeFormat.NewValue)
  if (cds_SorOrdRowSizeFormat.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowSizeFormat.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'SizeFormat') ;
  End ;
 End ;
 Finally
//  lcSizeFormat.Properties.OnChange := lcSizeFormatPropertiesChange ;
 End ;
end;


procedure TfrmSortOrder.lcLengthFormatExit(Sender: TObject);
Var Value : Integer ;
begin
// lcLengthFormat.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowLengthFormat.OldValue <> cds_SorOrdRowLengthFormat.NewValue)
  if (cds_SorOrdRowLengthFormat.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowLengthFormat.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'LengthFormat') ;
  End ;
 End ;
 Finally
//  lcLengthFormat.Properties.OnChange := lcLengthFormatPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.lcVolumeFormatExit(Sender: TObject);
Var Value : Integer ;
begin
// lcVolumeFormat.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowVolumeFormat.OldValue <> cds_SorOrdRowVolumeFormat.NewValue)
  if (cds_SorOrdRowVolumeFormat.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowVolumeFormat.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'VolumeFormat') ;
  End ;
 End ;
 Finally
//  lcVolumeFormat.Properties.OnChange := lcVolumeFormatPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.acAddPIExecute(Sender: TObject);
Var ProdInstruNo  : Integer ;
begin
 With dmsSortOrder do
 Begin
  ds_SorOrdRow.OnDataChange:= Nil ;
  Try
  if cds_ProdInstruct.RecordCount = 0 then
  Begin
   cds_ProdInstruct.UpdateOptions.ReadOnly:= False ;
   cds_ProdInstruct.Insert ;
   ProdInstruNo :=  cds_ProdInstructProdInstruNo.AsInteger ;
   cds_ProdInstruct.Post ;
   if cds_ProdInstruct.ChangeCount > 0 then
   Begin
    cds_ProdInstruct.ApplyUpdates(0) ;
    cds_ProdInstruct.CommitUpdates ;
   End ;
//   cds_ProdInstruct.Filter:='ProdInstruNo = ' + cds_ProdInstructProdInstruNo.AsString ;
   if cds_SorOrdRow.State in [dsBrowse] then
   cds_SorOrdRow.Edit ;
   cds_SorOrdRowProdInstructNo.AsInteger:= ProdInstruNo ;//cds_ProdInstructProdInstruNo.AsInteger ;
  End ;
  Finally
   ds_SorOrdRow.OnDataChange:= ds_SorOrdRowDataChange ;
  End ;
 End ; //with
end;

procedure TfrmSortOrder.acCopyPItoMarkedRowsExecute(Sender: TObject);
Var SortingOrderRowNo, ProdInstruNo, PPP : Integer ;
    Save_Cursor : TCursor;
begin
// With dm_ProdInstru do
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmsSortOrder do
 Begin
  if grdSortRowsDBBandedTableView1.Controller.SelectedRecordCount > 0 then
  Begin
   ProdInstruNo       := cds_ProdInstructProdInstruNo.AsInteger ;
   SortingOrderRowNo  := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
   cds_ProdInstruct.Filtered  := False ;//'ProdInstruNo = '+cds_SorOrdRowProdInstructNo.AsString ;
   Try
   PPP  := cds_SorOrdRowPPP.AsInteger ;
   GetOrderRowLAYOUTS ;//Hämtar in alla layouter för current orderraden till
   GetMarkedSortingOrderRows ;
   SparaProdInstruForSelectedOrderLines(ProdInstruNo, PPP) ;
   SparaLayouterForSelectedOrderLines(SortingOrderRowNo) ;
   Finally
    cds_ProdInstruct.Filtered := True ;
   End ;
  End ;//if..
 End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.GetOrderRowLAYOUTS ;
Var x, i : Integer ;
begin
 With dmsSortOrder do
 Begin
  cds_SOLayout.First ;
  x:= 1 ;
  While not cds_SOLayout.Eof do
  Begin
   SetLength(PackageCode_Layout, x) ;
   SetLength(PackageCode_Layout[x-1], cds_SOLayout.FieldCount) ;
   for i:= 0 to 1 do //cds_SOLayout.FieldCount-1 do
   Begin
    PackageCode_Layout[x-1,i]:= cds_SOLayout.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cds_SOLayout.Next ;
  End ;
 End ;//With
end;

procedure TfrmSortOrder.acAddPIUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acAddPI.Enabled           := (cds_ProdInstruct.Active) and (cds_ProdInstruct.RecordCount = 0) ;
  cds_ProdInstruct.UpdateOptions.ReadOnly := acAddPI.Enabled ;
 End ;
end;

procedure TfrmSortOrder.acCopyPItoMarkedRowsUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acCopyPItoMarkedRows.Enabled  := (cds_SorOrdRow.Active) and (cds_SorOrdRow.RecordCount > 1)
  and (grdSortRowsDBBandedTableView1.Controller.SelectedRecordCount > 1)
  and ((cds_ProdInstruct.Active) and (cds_ProdInstruct.RecordCount > 0)) ;
 End ;
end;

procedure TfrmSortOrder.acAddLayoutRowExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_SOLayout.Insert ;
  grdSpecLayout.SetFocus ;
 End ;
end;

procedure TfrmSortOrder.acDeleteLayoutExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_SOLayout.Delete ;
 End ;
end;

procedure TfrmSortOrder.acAddStdSpecLayoutExecute(Sender: TObject);
begin
 dmsSortOrder.GetStandardPkgLayouts ;
end;

procedure TfrmSortOrder.acDeleteLayoutUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acDeleteLayout.Enabled  := (cds_SOLayout.Active) and (cds_SOLayout.RecordCount > 0) ;
 End ;
end;

procedure TfrmSortOrder.acAddLayoutRowUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acAddLayoutRow.Enabled  := (cds_SorOrdRow.Active) and (cds_SorOrdRow.RecordCount > 0) ;
 End ;
end;

procedure TfrmSortOrder.SparaProdInstruForSelectedOrderLines(const vProdInstruNo, PPP : Integer) ;
Var cdsProdInstruct : Array of variant ;
    x, ProdInstruNo : Integer ;

begin
 With dmsSystem, dmsSortOrder do
 Begin
//  pProdInstruNo:= vProdInstruNo ;
  cds_SorOrdRow.DisableControls ;
  Try
  SetLength(cdsProdInstruct, cds_ProdInstruct.FieldCount) ;

  cds_ProdInstruct.Filter:= 'ProdInstruNo = ' + IntToStr(vProdInstruNo) ;
  cds_ProdInstruct.Filtered:= True ;
  Try
  For x := 0 to cds_ProdInstruct.FieldCount - 1 do
   cdsProdInstruct[x]:= cds_ProdInstruct.Fields[x].Value ;
  Finally
   cds_ProdInstruct.Filtered:= False ;
  End ;
//*******************************************************************************
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_ProdInstruct.Locate('ProdInstruNo', mtMarkedCodesProdInstruNo.AsInteger, []) then
   Begin
    cds_ProdInstruct.Edit ;
    ProdInstruNo                          := cds_ProdInstructProdInstruNo.AsInteger ;
   End
     else
      Begin
       cds_ProdInstruct.Insert ;
       ProdInstruNo                          := cds_ProdInstructProdInstruNo.AsInteger ;
      End ;
   For x := 0 to cds_ProdInstruct.FieldCount - 1 do
   cds_ProdInstruct.Fields[x].Value       := cdsProdInstruct[x] ;
   cds_ProdInstructProdInstruNo.AsInteger := ProdInstruNo ;
   cds_ProdInstruct.Post ;


   if mtMarkedCodesProdInstruNo.AsInteger < 11 then
   Begin
    if cds_SorOrdRow.Locate('SortingOrderRowNo', mtMarkedCodesPkgCodePPNo.AsInteger, []) then
    Begin
     cds_SorOrdRow.Edit ;
     cds_SorOrdRowProdInstructNo.AsInteger := ProdInstruNo ;
     cds_SorOrdRowPPP.AsInteger            :=  PPP ;
     cds_SorOrdRow.Post ;
    End
   End
   else
   if cds_SorOrdRow.Locate('SortingOrderRowNo', mtMarkedCodesPkgCodePPNo.AsInteger, []) then
   Begin
    cds_SorOrdRow.Edit ;
    cds_SorOrdRowPPP.AsInteger  :=  PPP ;
    cds_SorOrdRow.Post ;    
   End ;

   mtMarkedCodes.Next ;
  End ;//While
  Finally
   cds_SorOrdRow.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmSortOrder.SparaLayouterForSelectedOrderLines(const SortingOrderRowNo : Integer) ;
Var cdsProdInstruct : Array of variant ;
    x, ProdInstruNo : Integer ;
begin
 With dmsSystem, dmsSortOrder do
 Begin
  cds_SorOrdRow.DisableControls ;
  Try
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_SOLayout.Filter        := 'SortingOrderRowNo = ' + mtMarkedCodesPkgCodePPNo.AsString + ' AND SortingOrderNo = ' + cds_SorOrdRowSortingOrderNo.AsString ;
   UpdatePackageCode_Layout(mtMarkedCodesPkgCodePPNo.AsInteger) ;

   mtMarkedCodes.Next ;
  End ;//While
  Finally
   cds_SOLayout.Filter        := 'SortingOrderRowNo = ' + IntToStr(SortingOrderRowNo) + ' AND SortingOrderNo = ' + cds_SorOrdRowSortingOrderNo.AsString ;
   cds_SorOrdRow.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmSortOrder.UpdatePackageCode_Layout (const SortingOrderRowNo : Integer) ;
Var x, i : Integer ;
Begin
 With dmsSortOrder do
 Begin

  cds_SOLayout.First ;
  While not cds_SOLayout.Eof do
   cds_SOLayout.Delete ;
  For x := Low(PackageCode_Layout) to High(PackageCode_Layout) do
  Begin
   if not cds_SOLayout.Locate('LayoutNo', PackageCode_Layout[x,0], []) then
   Begin
    cds_SOLayout.Insert ;
    For i := 0 to 1 do //cds_SOLayout.FieldCount-1 do
    cds_SOLayout.Fields[i].Value:= PackageCode_Layout[x,i] ;
    cds_SOLayoutSortingOrderNo.AsInteger      := cds_SorOrdRowSortingOrderNo.AsInteger ;
    cds_SOLayoutSortingOrderRowNo.AsInteger   := SortingOrderRowNo ;
    cds_SOLayout.Post ;
   End ;
  End ;//for x
 End ;//With
End ;

procedure TfrmSortOrder.acRemovePkgFromSystemExecute(Sender: TObject);
Var SortingOrderRowNo : Integer ;
begin
 With dm_PkgWorkOrder do
 Begin
 if dmsSortOrder.cds_SortOrderTypeOfRunNo.AsInteger = 1 then
 Begin
  if MessageDlg('Är du säker på att du vill ta bort Paketnr ' + cds_NewPkgsPackageNo.AsString + ' från systemet?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   dm_PkgWorkOrder.DeletePackagesFromSystem
  (cds_NewPkgsPackageTypeNo.AsInteger,
   cds_NewPkgsLIPNo.AsInteger,
   cds_NewPkgsPackageNo.AsInteger,
   dmsSortOrder.cds_SchedulerResourceID.AsInteger,
   cds_NewPkgsSupplierCode.AsString) ;

      //Refresh sortingorderrow
   SortingOrderRowNo:= dmsSortOrder.cds_SorOrdRowSortingOrderRowNo.AsInteger ;
   dmsSortOrder.cds_SorOrdRow.Active:= False ;
   dmsSortOrder.cds_SorOrdRow.Active:= True ;
   if dmsSortOrder.cds_SorOrdRow.Locate('SortingOrderRowNo',SortingOrderRowNo,[]) then ;

   cds_NewPkgs.Active:= False ;
   cds_NewPkgs.Active:= True ;
  End ;
 End //if..
  else
  if MessageDlg('Vill du återställa paketnr ' + cds_NewPkgsPackageNo.AsString + ' ?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   RegretChangeToImpregnering(dmsSortOrder.cds_SchedulerResourceID.AsInteger) ;
   cds_NewPkgs.Active   := False ;
   cds_NewPkgs.Active   := True ;
   cds_UsedPkgs.Active  := False ;
   cds_UsedPkgs.Active  := True ;
//   CalcKassationExecute(Sender) ;
  End ;
//(const PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
//const SUPP_CODE : String) : Boolean ;
 End ;//with
end;

procedure TfrmSortOrder.acRefreshPaRegPkgExecute(Sender: TObject);
begin
 with dm_PkgWorkOrder, dmsSortOrder do
 Begin
  cds_NewPkgs.Active:= False ;
  cds_NewPkgs.Active:= True ;

  cds_SorOrdRow.Active:= False ;
  cds_SorOrdRow.Active:= True ;  
 End ;
end;

procedure TfrmSortOrder.acLoadSelectedPkgsExecute(Sender: TObject);
var fSelectLOfromAO : TfSelectLOfromAO;
    LONo, LoadNo    : Integer ;
begin
 if MessageDlg('Vill du lasta ut markerade paket?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmsSortOrder do
 Begin
  dmsConnector.StartTransaction;
  try

  cds_LOinAO.Active := False ;
  cds_LOinAO.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  cds_LOinAO.Active := True ;
  if cds_LOinAO.RecordCount > 1 then
  Begin
   fSelectLOfromAO:= TfSelectLOfromAO.Create(nil) ;
   Try
   if fSelectLOfromAO.ShowModal = mrOK then
    LONo  := cds_LOinAOLONR.AsInteger
     else
      LONo:= 0 ;
   Finally
    FreeAndNil(fSelectLOfromAO) ;
   End ;
  End
   else
    if cds_LOinAO.RecordCount = 1 then
     LONo := cds_LOinAOLONR.AsInteger
      else
       if cds_LOinAO.RecordCount = 0 then
        LONo  := GetLONoManually(Sender) ;
  if LONo > 0 then
  Begin
   Try
    AddMarkedPkgsToLoad(Sender, LONo) ;
    LoadNo:= NewLoad(LONo) ;
    ShowMessage('Lastnr ' + inttostr(LoadNo) + ' skapad ' + ' mot lastordernr ' + inttostr(LONo)) ;
    Except
     On E: Exception do
     Begin
//      E.CreateFmt ('Lasten skapades ej, fel %s', [E.Message]) ;
      ShowMessage('Lasten skapades ej, Error message: ' + E.Message) ;
      Raise ;
     End
    End ;
   End ;//if..

  dmsConnector.Commit ;
  RefreshNewAndUsedPkgs ;
  Except
    dmsConnector.Rollback ;
//    raise;
  End;//Except
 End ;//With
end;

procedure TfrmSortOrder.acRegisterMultiplePkgsUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acRegisterMultiplePkgs.Enabled := cds_SortOrderTypeOfRunNo.AsInteger = 1 ;
 End ;
end;

procedure TfrmSortOrder.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
 with dm_PkgWorkOrder, dmsSortOrder do
 Begin
  acRemovePkgFromSystem.Enabled:= (cds_NewPkgs.Active) and (cds_NewPkgs.RecordCount > 0)
  and (cds_NewPkgsPkgStatus.AsInteger = 1) ;
 End ;
end;

procedure TfrmSortOrder.acLoadSelectedPkgsUpdate(Sender: TObject);
begin
 acLoadSelectedPkgs.Enabled := grdNewPkgsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

function TfrmSortOrder.GetLONoManually(Sender: TObject) : Integer ;
Var fEntryField : TfEntryField ;
begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange Lastordernummer att last ut mot' ;
  fEntryField.Label1.Caption:= 'LastorderNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    Result:= StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0) ;
   End
    else
     Result:= 0 ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
end;

procedure TfrmSortOrder.AddMarkedPkgsToLoad(Sender: TObject;const LONo : Integer);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
(*
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmsSortOrder do
 Begin
  grdNewPkgsDBTableView1.BeginUpdate ;
  grdNewPkgsDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdNewPkgsDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   dmLoadEntrySSP  := TdmLoadEntrySSP.Create(Self);

    Try
    sq_SODELMarkPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
    sq_SODELMarkPkgs.ExecSQL ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     End ;
    End ;

   Try
   For I := 0 to grdNewPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdNewPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdNewPkgsDBTableView1.DataController.GetRecordId(RecIdx) ;
    if ADataSet.Locate('PackageNo;SupplierCode',RecID,[]) then
    Begin
     if ADataSet.FieldByName('PkgStatus').AsInteger = 1 then
     Begin
      Try
      sq_SOMarkPkgs.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
      sq_SOMarkPkgs.ParamByName('PackageNo').AsInteger    := ADataSet.FieldByName('PACKAGENO').AsInteger ;
      sq_SOMarkPkgs.ParamByName('SupplierCode').AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
      sq_SOMarkPkgs.ExecSQL ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
       End ;
      End ;
     End ;//if..
    End ;//if ADataSet.Locate('PackageNo;SupplierCode',RecID,[]) then

{    With dmLoadEntrySSP do
    Begin
     cds_LoadPackages.Insert ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := ADataSet.FieldByName('PACKAGENO').AsInteger ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := ADataSet.FieldByName('SUPPLIERCODE').AsString ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger        := LONo ;
      cds_LoadPackagesProductNo.AsInteger             := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString                := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger             := sq_OnePkgDetailDataPackageNo.AsInteger ;
//      cds_LoadPackagesNOOFPKG.AsInteger               := 1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger         := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString           := sq_OnePkgDetailDataSUPP_CODE.AsString ;
      cds_LoadPackagesM3_NET.AsFloat                  := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                  := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                     := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                    := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                   := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString         := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger           := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger       := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat       := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat           := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger           := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger             := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger           := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                    := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger                 := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger     := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

      cds_LoadPackagesPkg_State.AsInteger             := NEW_PACKAGE ;
      cds_LoadPackagesPkg_Function.AsInteger          := ADD_PKG_TO_LOAD ;
      cds_LoadPackagesChanged.AsInteger               := 1 ;
      cds_LoadPackagesPackageOK.AsInteger             := BAD_PKG ;
      cds_LoadPackagesOverrideRL.AsInteger            := 0 ;
//      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := dmsProduct.mtPackages.FieldByName('OverrideRL').AsInteger ;
      cds_LoadPackagesDefsspno.AsInteger               := -1 ;
//      cds_LoadPackagesProductCategoryNo.AsInteger     := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

      sq_OnePkgDetailData.Close ;
      cds_LoadPackages.Post ;
     End
     else
      cds_LoadPackages.Cancel ;
    End ; //with dmLoadEntrySSP
 }

   End ; //for..

 Finally
  grdNewPkgsDBTableView1.DataController.EndLocate ;
  grdNewPkgsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 Finally
  FreeAndNil(dmLoadEntrySSP) ;
 End ;
 End ;// with dmsSortOrder do
 *)
end;

procedure TfrmSortOrder.lcProductionUnitNoEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_RegPoint.Filter   := 'RegistrationPointNo <> -1' ;
  cds_RegPoint.Filtered := True ;
 End ;
end;

procedure TfrmSortOrder.lcProductionUnitNoExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
//  cds_RegPoint.Filter   := 'RegistrationPointNo <> -1' ;
  cds_RegPoint.Filtered := False ;
 End ;
end;

procedure TfrmSortOrder.lcInvPlaceEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if not cds_SchedulerOwnerNo.IsNull then
  cds_PIP.Filter   := 'OwnerNo = ' + cds_SchedulerOwnerNo.AsString
  else
  cds_PIP.Filter   := 'OwnerNo = -1' ;
  cds_PIP.Filtered := True ;
 End ;
end;

procedure TfrmSortOrder.lcInvPlaceExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_PIP.Filtered := False ;
 End ;
end;

procedure TfrmSortOrder.lcInvGrpEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderPIPNo.isNull then
  cds_LIP.Filter:= 'PIPNo = -1'
  else
  cds_LIP.Filter:= 'PIPNo = '+cds_SortOrderPIPNo.AsString ;
  cds_LIP.Filtered  := True ;
 End ;
end;

procedure TfrmSortOrder.lcInvGrpExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_LIP.Filtered  := False ;
 End ;
end;

procedure TfrmSortOrder.cbVisaMeddelandePropertiesChange(Sender: TObject);
begin
 With dmsSystem, dmsSortOrder do
 Begin
  if cbVisaMeddelande.Checked then
  VisaMeddelande := True
  else
  VisaMeddelande := False ;
 End ;
end;

procedure TfrmSortOrder.acCalcStartSlutochProdTidExecute(Sender: TObject);
var
  TotalPcsProduced  : Integer ;
  Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 TotalPcsProduced          := dm_PkgWorkOrder.GetTotalPcsProducedFromAO ;
 if TotalPcsProduced > 0 then
 dmsSortOrder.CalcStartSlutochProdTidWithMoreTimeSegments ;
// dmsSortOrder.CalcStartSlutochProdTid ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.acCalculateProductionsTimeExecute(Sender: TObject);
var
//  fMs : Double;
  Save_Cursor : TCursor;
begin
  inherited;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 with dmsSortOrder, dm_ProdPlan do
 Begin
//  cds_Calendar.Active := False ;
//  cds_Calendar.ParamByName('DriftPlatsNr').AsInteger := GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;
//  cds_Calendar.Active := True ;
  if cds_SortOrder.State = dsBrowse then
  cds_SortOrder.Edit ;
  cds_SortOrderRealProductionTime.AsFloat := WorkMinutesU.WorkMinutes(
  GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger),
  cds_Calendar,
  SQLTimeStampToDateTime(cds_SchedulerStart.AsSQLTimeStamp),
  SQLTimeStampToDateTime(cds_SchedulerFinish.AsSQLTimeStamp)) ;
//  if cds_SchedulerTaskStatusField.AsInteger = 0 then
//   cds_SortOrderPlannedProductionTime.AsFloat := cds_SortOrderRealProductionTime.AsFloat ;
  cds_SortOrder.Post ;
//  fMs := WorkMinutesU.WorkMinutes(cdsStandardHours, StrToDateTime('2008-01-01 07:00:00'),  StrToDateTime('2008-01-02 17:00:00') );
//  ShowMessage(FormatFloat('Arbetstid, minuter: #',  fMs ) );
 End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.acShowProdTimeSegmentsExecute(Sender: TObject);
Var fProdTimeSegment: TfProdTimeSegment;
begin
 fProdTimeSegment:= TfProdTimeSegment.Create(nil);
 Try
  fProdTimeSegment.ShowModal ;
 Finally
  FreeAndNil(fProdTimeSegment) ;
 End ;
end;

procedure TfrmSortOrder.tcEditKorOrderChange(Sender: TObject);
begin
 pgEditKorOrder.ActivePageIndex := tcEditKorOrder.TabIndex ;
end;

procedure TfrmSortOrder.acShowProdTimeSegmentsUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acShowProdTimeSegments.Enabled := (cds_SortOrder.Active)
  and (cds_SortOrderSortingOrderNo.AsInteger > 0) ;
 End ;
end;

procedure TfrmSortOrder.acCancelDeregistrationExecute(Sender: TObject);
begin
 With dm_PkgWorkOrder do
 Begin
  if cds_UsedPkgsOldPackageNo.AsInteger = 0 then
  Begin
   if MessageDlg('Är du säker på att du vill ångra avregistring av Paketnr ' + cds_UsedPkgsPAKETNR.AsString,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Regret_DeRegisterPackage
   (dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
    cds_UsedPkgsPackageTypeNo.AsInteger,
    cds_UsedPkgsLIPNo.AsInteger,
    cds_UsedPkgsPAKETNR.AsInteger,
    dmsSortOrder.cds_SchedulerResourceID.AsInteger,
    cds_UsedPkgsLEVKOD.AsString,
    Now) ;
//    CalcKassationExecute(Sender) ;
  End
  else
  Begin
   if MessageDlg('Är du säker på att du vill ångra delning av paketnr ' + cds_UsedPkgsPAKETNR.AsString,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dm_PkgWorkOrder.AngraDelningAvPaket
   (dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger,
    dmsSortOrder.cds_SchedulerResourceID.AsInteger,
    cds_UsedPkgsOldPackageNo.AsInteger,
    cds_UsedPkgsOldPackageTypeNo.AsInteger,
    cds_UsedPkgsPAKETNR.AsInteger,
    cds_UsedPkgsOldSupplierCode.AsString,
    cds_UsedPkgsLEVKOD.AsString) ;
//    CalcKassationExecute(Sender) ;
  End ;

    //Ångra split
//Ett split paket kan inte ångras avregistrering men ångra split först
{ 1)Ta bort nya paketet från systemet och usedpkgs
 2) Registrera gamla PackageTypeNo på gamla paketnr och lägg mot usedpkgs
 Vi hittar gamla paketnr och packagetypeno i
 SortingOrderSplitPkgs
  SortingOrderNo
  PackageNo     (old)
  SupplierCode  (old)
  PackageTypeNo (old)
  NewPackageNo
  NewSupplierCode }
 End ;
end;

procedure TfrmSortOrder.acRefreshAvRegExecute(Sender: TObject);
begin
 with dm_PkgWorkOrder, dmsSortOrder do
 Begin
  CheckIfNonSolvedPkgsIsAvailableInInventory(dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
  dmsSortOrder.cds_SchedulerOwnerNo.AsInteger,
  dmsSortOrder.cds_SchedulerResourceID.AsInteger,
  SQLTimeStampToDateTime(dmsSortOrder.cds_SchedulerStart.AsSQLTimeStamp)) ;

  cds_UsedPkgs.Active:= False ;
  cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
//  if dmc_DB.cds_MainParamsAllowDeRegPkg.AsInteger = 0 then
//   cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date)
//    else
     cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date-100) ;

  cds_UsedPkgs.Active:= True ;

  cds_SORaw.Active:= False ;
  cds_SORaw.Active:= True ;
 End ;
end;

procedure TfrmSortOrder.acSplitPkgExecute(Sender: TObject);
Var PcsToDeReg    : Integer ;
    PcsToStore    : Integer ;
    OPkgNo        : Integer ;
    PackageTypeNo : Integer ;
    NewPkgNo      : Integer ;
    NewPrefix     : String3 ;
    OPrefix       : String3 ;
    fEntryField   : TfEntryField ;
begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange antal styck att avregistrera' ;
  fEntryField.Label1.Caption:= 'Antal styck:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    PcsToDeReg:= StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0) ;
   End
   else
    Exit ;
   if PcsToDeReg = 0 then
    Exit ;
  Finally
   FreeAndNil(fEntryField) ;
  End ;

 with dmsSortOrder, dm_PkgWorkOrder do
 Begin
  if PcsToDeReg >= cds_UsedPkgsSTYCK.AsInteger then
  Begin
   ShowMessage('Antal styck att avregistrera måste vara mindre än ' + cds_UsedPkgsSTYCK.AsString) ;
   Exit ;
  End ;
  NewPkgNo      := dm_PkgWorkOrder.GetPackageNo(cds_SchedulerVerkNo.AsInteger,
                  cds_SchedulerResourceID.AsInteger, cDeladePaketSeries, NewPrefix) ;
  if NewPkgNo <= 0 then
  Begin
   if NewPkgNo = 0 then
   Begin
    ShowMessage('Paketnummerserie saknas!') ;
    Exit ;
   End
   else
   if NewPkgNo = -1 then
   Begin
    ShowMessage('Paketnumret som hämtades var redan upptaget!') ;
    Exit ;
   End ;
  End ;

  dmsConnector.StartTransaction;
  Try
 //Dela ett råvaru paket
 //Välj ett paket att dela
 //Ange antal bitar att avregistrera, det skapas ett nytt paket för det med ett paketnr från paketnrserien "VS1"
 //För de bitar som är kvar ändras existerande paket till
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
  mtLoadPackages.Insert ;
  dm_PkgWorkOrder.AddPkgDataTo_mtLoadPackages_ToChangePackage({Status}0, dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsInteger,
  dm_PkgWorkOrder.cds_UsedPkgsLEVKOD.AsString, dmsSortOrder.cds_SchedulerOwnerNo.AsInteger) ;

  OPkgNo        := dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsInteger ;
  OPrefix       := dm_PkgWorkOrder.cds_UsedPkgsLEVKOD.AsString ;

//  NewPrefix     := 'XS1' ;//GetPrefix(SplitSeries) ;
  PackageTypeNo                     := dm_PkgWorkOrder.cds_UsedPkgsPackageTypeNo.AsInteger ;
  mtLoadPackages.Edit ;
  PcsToStore:= mtLoadPackagesPCS.AsInteger - PcsToDeReg ;
  mtLoadPackagesPCS.AsInteger       := PcsToDeReg ;
  mtLoadPackagesPACKAGENO.AsInteger := NewPkgNo ;
  mtLoadPackagesSUPP_CODE.AsString  := NewPrefix ;
  mtLoadPackages.Post ;

 //  Skapa nytt paket och Avregistrera det nya paketet mot körordern
  dm_PkgWorkOrder.SkapaNyttPaket(True, dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
  dmsSortOrder.cds_SchedulerResourceID.AsInteger, SQLTimeStampToDateTime(cds_SchedulerStart.AsSQLTimeStamp), True) ;

  mtLoadPackages.Edit ;
  mtLoadPackagesPCS.AsInteger       := PcsToStore ;
  mtLoadPackagesPACKAGENO.AsInteger := OPkgNo ;
  mtLoadPackagesSUPP_CODE.AsString  := OPrefix ;
  mtLoadPackages.Post ;

 //  Ändra gamla paketnr till det stycketal som återstog
  dm_PkgWorkOrder.SkapaNyttPaket(False, dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
  dmsSortOrder.cds_SchedulerResourceID.AsInteger, SQLTimeStampToDateTime(cds_SchedulerStart.AsSQLTimeStamp), True) ;

//Record split operationen så att den kan ångras
  dmsSortOrder.INS_SplitPkg(cds_SortOrderSortingOrderNo.AsInteger, OPkgNo, PackageTypeNo, NewPkgNo, OPrefix, NewPrefix) ;

// Ändra gamla paket
// Lägg gamla paket på lager


  mtLoadPackages.Active:= False ;

//Ångra split
//Ett split paket kan inte ångras avregistrering men ångra split först
{ 1)Ta bort nya paketet från systemet och usedpkgs
 2) Registrera gamla PackageTypeNo på gamla paketnr och lägg mot usedpkgs
 Vi hittar gamla paketnr och packagetypeno i
 SortingOrderSplitPkgs
  SortingOrderNo
  PackageNo     (old)
  SupplierCode  (old)
  PackageTypeNo (old)
  NewPackageNo
  NewSupplierCode
  Insert into dbo.SortingOrderSplitPkgs(SortingOrderNo, PackageNo, SupplierCode, PackageTypeNo, NewPackageNo, NewSupplierCode)
  Select :OPkgNo, :OPrefix, :PackageTypeNo, :NewPkgNo, :NewPrefix
  }

  dmsConnector.Commit;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
//  if dmc_DB.cds_MainParamsAllowDeRegPkg.AsInteger = 0 then
//   cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date)
//    else
     cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date-100) ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ;
//  CalcKassationExecute(Sender) ;
 except
  On E: Exception do
  Begin
   dmsConnector.Rollback ;
   ShowMessage(E.Message+' Error split package.') ;
   Raise ;
  End ;
 end;

 End ; // with dmsSortOrder do
end;

procedure TfrmSortOrder.acDeleteUsedPkgRowExecute(Sender: TObject);
begin
 if MessageDlg('Är du säker på att du vill ta bort paketet från körordern och inte ändra statusen tillbaka till aktiv?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With dmsSortOrder, dm_PkgWorkOrder do
   Begin
    dm_PkgWorkOrder.DeleteUsedPkgsToSortingOrder(cds_UsedPkgsPAKETNR.AsInteger, cds_SortOrderSortingOrderNo.AsInteger, cds_UsedPkgsLEVKOD.AsString) ;

    cds_UsedPkgs.Active := False ;
    cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger:= cds_SortOrderSortingOrderNo.AsInteger ;
//    if dmc_DB.cds_MainParamsAllowDeRegPkg.AsInteger = 0 then
//     cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date)
//      else
       cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date-100) ;
    cds_UsedPkgs.Active := True ;
   End ;
  End ;
end;

procedure TfrmSortOrder.acAvregistreraPaketUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acAvregistreraPaket.Enabled := cds_SortOrderTypeOfRunNo.AsInteger = 1 ;
 End ;
end;

procedure TfrmSortOrder.acCancelDeregistrationUpdate(Sender: TObject);
begin
 With dm_PkgWorkOrder, dmsSortOrder do
 Begin
  acCancelDeregistration.Enabled:= (cds_UsedPkgs.Active) and (cds_UsedPkgs.RecordCount > 0)
  and (cds_SortOrderTypeOfRunNo.AsInteger = 1)
  and (cds_UsedPkgsPackageTypeNo.AsInteger > 0) ;
 End ;
end;

procedure TfrmSortOrder.acSplitPkgUpdate(Sender: TObject);
begin
 with dmsSortOrder, dm_PkgWorkOrder do
 Begin
  acSplitPkg.Enabled  := (cds_UsedPkgs.Active) and (cds_UsedPkgs.RecordCount > 0)
  and (cds_UsedPkgsOldPackageNo.AsInteger = 0)
  and (cds_SortOrderTypeOfRunNo.AsInteger = 1)
  and (cds_UsedPkgsPackageTypeNo.AsInteger > 0) ;
 End ;
end;

procedure TfrmSortOrder.acDeleteUsedPkgRowUpdate(Sender: TObject);
begin
 With dmsSortOrder, dm_PkgWorkOrder do
 Begin
  acDeleteUsedPkgRow.Enabled  := (cds_UsedPkgs.Active) and (cds_UsedPkgs.RecordCount > 0)
  and (cds_UsedPkgsPackageTypeNo.AsInteger = 0) ;
 End ;
end;

procedure TfrmSortOrder.SaveAOKorOrder(Sender: TObject);
Var Save_Cursor   : TCursor;
    OrderRowNo,
    RawMtrlNo     : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try

 With dmsSortOrder do
 Begin
  OrderRowNo  := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
//  RawMtrlNo   := cds_SORawRawMtrlNo.AsInteger ;

  cds_SortOrder.DisableControls ;
  cds_SORaw.DisableControls ;
  cds_SorOrdRow.DisableControls ;
  cds_ProdInstruct.DisableControls ;
  cds_SOLayout.DisableControls ;
  cds_FeedBack.DisableControls ;
  cds_SOCngProd.DisableControls ;
  dm_PkgWorkOrder.cds_NewPkgs.DisableControls ;
  Try

{  if cds_SortOrderStartTime.IsNull then
  Begin
   ShowMessage('Ange en planerad starttid!') ;
//   Exit ;
  End ; }

  if cds_Scheduler.State in [dsEdit, dsInsert] then
   cds_Scheduler.Post ;

  if cds_SortOrder.State in [dsEdit, dsInsert] then
   cds_SortOrder.Post ;

  if cds_SORaw.State in [dsEdit, dsInsert] then
   cds_SORaw.Post ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   cds_SorOrdRow.Post ;

  if cds_ProdInstruct.State in [dsEdit, dsInsert] then
   cds_ProdInstruct.Post ;

  if cds_SOLayout.State in [dsEdit, dsInsert] then
   cds_SOLayout.Post ;


  if cds_FeedBack.State in [dsEdit, dsInsert] then
   cds_FeedBack.Post ;

  if cds_SOCngProd.State in [dsEdit, dsInsert] then
   cds_SOCngProd.Post ;

  if dm_PkgWorkOrder.cds_NewPkgs.State in [dsEdit, dsInsert] then
   dm_PkgWorkOrder.cds_NewPkgs.Post ;


  if cds_Scheduler.ChangeCount > 0 then
  Begin
   cds_Scheduler.ApplyUpdates(0) ;
   cds_Scheduler.CommitUpdates ;
  End ;

  if cds_SortOrder.ChangeCount > 0 then
  Begin
   cds_SortOrder.ApplyUpdates(0) ;
   cds_SortOrder.CommitUpdates ;
  End ;

  if cds_SORaw.ChangeCount > 0 then
  Begin
   cds_SORaw.ApplyUpdates(0) ;
   cds_SORaw.CommitUpdates ;
  End ;

  if cds_SorOrdRow.ChangeCount > 0 then
  Begin
   cds_SorOrdRow.ApplyUpdates(0) ;
   cds_SorOrdRow.CommitUpdates ;
  End ;

  if cds_ProdInstruct.ChangeCount > 0 then
  Begin
   cds_ProdInstruct.ApplyUpdates(0) ;
   cds_ProdInstruct.CommitUpdates ;
  End ;

  if cds_SOLayout.ChangeCount > 0 then
  Begin
   cds_SOLayout.ApplyUpdates(0) ;
   cds_SOLayout.CommitUpdates ;
  End ;


  if cds_FeedBack.ChangeCount > 0 then
  Begin
   cds_FeedBack.ApplyUpdates(0) ;
   cds_FeedBack.CommitUpdates ;
  End ;

  if cds_SOCngProd.ChangeCount > 0 then
  Begin
   cds_SOCngProd.ApplyUpdates(0) ;
   cds_SOCngProd.CommitUpdates ;
  End ;

  if dm_PkgWorkOrder.cds_NewPkgs.ChangeCount > 0 then
  Begin
   dm_PkgWorkOrder.cds_NewPkgs.ApplyUpdates(0) ;
   dm_PkgWorkOrder.cds_NewPkgs.CommitUpdates ;
  End ;

   SetTitles ;

  Finally
   cds_SortOrder.EnableControls ;
   cds_SORaw.EnableControls ;
   cds_SorOrdRow.EnableControls ;
   cds_ProdInstruct.EnableControls ;
   cds_SOLayout.EnableControls ;
   cds_FeedBack.EnableControls ;
   cds_SOCngProd.EnableControls ;
   dm_PkgWorkOrder.cds_NewPkgs.EnableControls ;
  End ;

   cds_SorOrdRow.Locate('SortingOrderRowNo', OrderRowNo, []) ;
//   cds_SORaw.Locate('RawMtrlNo', RawMtrlNo, []) ;  

  End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.CancelChanges(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if cds_ProdInstruct.State in [dsEdit, dsInsert] then
   cds_ProdInstruct.Cancel ;

  if cds_SOLayout.State in [dsEdit, dsInsert] then
   cds_SOLayout.Cancel ;

  if cds_SOCngProd.State in [dsEdit, dsInsert] then
   cds_SOCngProd.Cancel ;

  if cds_SOCngProd.State in [dsEdit, dsInsert] then
   cds_SOCngProd.Cancel ;

  if cds_FeedBack.State in [dsEdit, dsInsert] then
   cds_FeedBack.Cancel ;

  if cds_SORaw.State in [dsEdit, dsInsert] then
   cds_SORaw.Cancel ;

  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   cds_SorOrdRow.Cancel ;

  if cds_SortOrder.State in [dsEdit, dsInsert] then
   cds_SortOrder.Cancel ;

  if cds_ProdInstruct.ChangeCount > 0 then
   cds_ProdInstruct.CancelUpdates ;

  if cds_SOLayout.ChangeCount > 0 then
   cds_SOLayout.CancelUpdates ;

  if cds_SOCngProd.ChangeCount > 0 then
   cds_SOCngProd.CancelUpdates ;

  if cds_FeedBack.ChangeCount > 0 then
   cds_FeedBack.CancelUpdates ;

  if cds_SORaw.ChangeCount > 0 then
   cds_SORaw.CancelUpdates ;

  if cds_SorOrdRow.ChangeCount > 0 then
   cds_SorOrdRow.CancelUpdates ;

  if cds_SortOrder.ChangeCount > 0 then
   cds_SortOrder.CancelUpdates ;
 End ;
end;

procedure TfrmSortOrder.acSaveKorOrderUpdate(Sender: TObject);
begin
  acSaveKorOrder.Enabled:= not EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.acStartSortOrderExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
   if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;
   cds_SchedulerTaskStatusField.Asinteger:= 1 ;
   SaveAOKorOrder(Sender) ;
 End ;
end;

procedure TfrmSortOrder.acSetToPreliminaryExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;
  cds_SchedulerTaskStatusField.Asinteger:= 0 ;
  SaveAOKorOrder(Sender) ;
 End ;
end;

procedure TfrmSortOrder.acAvslutaExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
 if MessageDlg('Vill du avsluta körordern? ',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    if cds_Scheduler.State in [dsBrowse] then
    cds_Scheduler.Edit ;
    cds_SchedulerTaskCompleteField.Asinteger  := 1 ;
    SaveAOKorOrder(Sender) ;
  //  dmc_DB.FinishRun (cds_SchedulerID.AsInteger) ;
  End;
 End ;//With
end;

procedure TfrmSortOrder.acSaveAsDeafultKorOrderValuesExecute(Sender: TObject);
begin
 dmsSortOrder.SaveAOUserProps(Self.Name) ;
 SaveSortOrderLayoutExecute(Sender) ;
end;

procedure TfrmSortOrder.acControllSortingOrderRowsExecute(Sender: TObject);
Var InfoList    : TStrings ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 InfoList:= TStringList.Create ;
 Try
  dmsSortOrder.MakeControllOfSortingOrderRows(InfoList) ;
  if InfoList.Count > 0 then
  Begin
   dmsSystem.ShowMemo(InfoList) ;
  End ;

 finally
  InfoList.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.acStartSortOrderUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acStartSortOrder.Enabled := cds_SchedulerTaskStatusField.AsInteger < 4 ;
 End ;
end;

procedure TfrmSortOrder.acPrintAOKorOrderUpdate(Sender: TObject);
begin
 acPrintAOKorOrder.Enabled:=  EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.acAOResultUpdate(Sender: TObject);
begin
 acAOResult.Enabled:=  EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.acSaveAsTemplateUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acSaveAsTemplate.Enabled  := (cds_SortOrder.Active) and (cds_SortOrderTemplate.AsInteger = 0)
  and (EditKorOrderDataSaved) ;
 End ;
end;

procedure TfrmSortOrder.SetTitles;
begin
 With dmsSortOrder do
 Begin
  if cds_SortOrderTypeOfRunNo.AsInteger = 1 then
  Begin
//   acAvregistreraMarkeradePaket.Caption:= 'Avregistrera markerade paket' ;

  End
  else
  if cds_SortOrderTypeOfRunNo.AsInteger = 2 then
  Begin
//   acAvregistreraMarkeradePaket.Caption:= 'Ändra markerade paket' ;
  End ;

{  if dm_PkgWorkOrder.PackagePresentInUsedOrNewList then
  Begin
   lcTypeOfRun.Enabled        := False ;
   lcProducer.Enabled         := False ;
   lcProductionUnitNo.Enabled := False ;
   lcOwner.Enabled            := False ;
   lcInvPlace.Enabled         := False ;
   lcInvGrp.Enabled           := False ;
  End
  else
  Begin
   lcTypeOfRun.Enabled        := True ;
   lcProducer.Enabled         := True ;
   lcProductionUnitNo.Enabled := True ;
   lcOwner.Enabled            := True ;
   lcInvPlace.Enabled         := True ;
   lcInvGrp.Enabled           := True ;
  End ; }

  if ((cds_SchedulerTaskStatusField.AsInteger > 2)
  and (cds_SchedulerTaskStatusField.AsInteger < 5))

   then
   grdRawMtrlDBBandedTableView1.Bands[3].Caption:= 'KASSATION'
    else
     grdRawMtrlDBBandedTableView1.Bands[3].Caption:= 'PIA' ;

  Case cds_SortOrderTypeOfRunNo.AsInteger of
   1      : Begin
//             acDeRegisterByPickPkgNo.Caption  := 'Plocka paket att avregistrera som förbrukade' ;
//             bbPickPkgs.Caption               := 'Plocka paket att avregistrera som förbrukade' ;
             acCancelDeregistration.Enabled   := True ;
             acRegisterMultiplePkgs.Enabled   := True ;
             acCancelDeregistration.Caption   := 'Ångra' ;
             PanelAvRegHeader.Caption         := 'Avregistrerade paket' ;
             acRemovePkgFromSystem.Caption    := 'Ångra' ;
             PanelPaRegHeader.Caption                := 'Påregistrerade paket' ;
             //tsEndProdukt.Visible             := True ;
             acRegisterMultiplePkgs.Enabled   := True ;
//             tsConsumedPkgs.Caption           := 'Avregistrerade paket' ;
//             tsChangePkgsTo.Visible           := False ;
//             tsChangePkgsTo.TabVisible        := False ;
            End ;
   2      : Begin
//             acDeRegisterByPickPkgNo.Caption  := 'Plocka paket att ändra' ;
//             bbPickPkgs.Caption               := 'Plocka paket att ändra' ;
             acCancelDeregistration.Enabled   := False ;
             acRegisterMultiplePkgs.Enabled   := False ;
//             acCancelDeregistration.Caption   := 'Ångra ändra paket' ;
             PanelAvRegHeader.Caption           := 'Ändrade paket' ;
             acRemovePkgFromSystem.Caption    := 'Ångra' ;
             PanelPaRegHeader.Caption                := 'Ändrade till' ;
//             tsEndProdukt.Visible             := False ;

             acRegisterMultiplePkgs.Enabled   := False ;
//             tsConsumedPkgs.Caption           := 'Råvara' ;
//             tsChangePkgsTo.Visible           := True ;
//BNSDEF             tsChangePkgsTo.TabVisible        := True ;
            End ;
  End ;//case
 End ;
end;

procedure TfrmSortOrder.SaveSortOrderRowsPrintOrder ;
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 with dmsSortOrder do
 Begin
  Save_Cursor     := Screen.Cursor;
  Screen.Cursor   := crSQLWait;    { Show hourglass cursor }
//  cds_SorOrdRowPlannedAM3.OnChange  := nil ;
  Try
  if cds_SorOrdRow.State in [dsEdit, dsInsert] then
   cds_SorOrdRow.Post ;
  cds_SorOrdRow.DisableControls ;
  grdSortRowsDBBandedTableView1.BeginUpdate ;
  Try
  with grdSortRowsDBBandedTableView1.DataController do
  for I := 0 to FilteredRecordCount - 1 do
   Begin
//    RecIDx    := grdSortRowsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
//    ColIdx    := grdSortRowsDBBandedTableView1.DataController.GetItemByFieldName('SortingOrderRowNo').Index;
//    OutputVal := grdSortRowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    RecID:= grdSortRowsDBBandedTableView1.DataController.GetRecordId(FilteredRecordIndex[I]) ;
    if cds_SorOrdRow.Locate('SortingOrderNo;SortingOrderRowNo', RecID, []) then
    Begin
     cds_SorOrdRow.Edit ;
     cds_SorOrdRow.FieldByName('SortOrder').AsInteger:= I ;
     cds_SorOrdRow.Post ;
    End ;
   End ;//for I
  if cds_SorOrdRow.Changecount > 0 then
  Begin
   cds_SorOrdRow.ApplyUpdates(0) ;
   cds_SorOrdRow.CommitUpdates ;
  End ;
 Finally
  cds_SorOrdRow.EnableControls ;
  grdSortRowsDBBandedTableView1.EndUpdate ;
 End ;
 Finally
//  cds_SorOrdRowPlannedAM3.OnChange  := cds_SorOrdRowPlannedAM3Change ;
  Screen.Cursor             := Save_Cursor;  { Always restore to normal }  
 End ;
 End ;//With
end;

procedure TfrmSortOrder.SaveSortOrderLayoutExecute(Sender: TObject);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdSortRowsDBBandedTableView1.Name, grdSortRowsDBBandedTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdSortRowsDBTableView1.Name, grdSortRowsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdNewPkgs.Name, grdNewPkgsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdUsedPkgs.Name, grdUsedPkgsDBTableView1) ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdRawMtrl.Name, grdRawMtrlDBBandedTableView1) ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+ cxGridDBTableView2.Name, cxGridDBTableView2) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+ cxGridDBTableView1.Name, cxGridDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+ grdOutputSummaryDBTableView1.Name, grdOutputSummaryDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+ grdInputPkgsDBBandedTableView1.Name, grdInputPkgsDBBandedTableView1) ;
end;

procedure TfrmSortOrder.SaveRawMtrlLayoutExecute(Sender: TObject);
begin

end;

procedure TfrmSortOrder.lcTypeOfRunEnter(Sender: TObject);
begin
 With dm_PkgWorkOrder do
 Begin
{  if ((cds_NewPkgs.Active) and (cds_NewPkgs.RecordCount > 0))
  or ((cds_UsedPkgs.Active) and (cds_UsedPkgs.RecordCount > 0)) then
  lcTypeOfRun.Properties.ReadOnly:= True
  else
  lcTypeOfRun.Properties.ReadOnly:= False ;
  }
 End ;
end;

procedure TfrmSortOrder.lcTypeOfRunPropertiesChange(Sender: TObject);
begin
 SetTitles ;
end;

procedure TfrmSortOrder.cxGridDBTableView1PcsAttAvraknaStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PcsAttAvrakna');
  if ARecord.Values[AColumn.Index] > 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.cxGridDBTableView1PrisStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PricePerNM3');
  if ARecord.Values[AColumn.Index] <= 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.grdInputPkgsDBBandedTableView1KassPcsStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
//  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('KassPcs');
  if ARecord.Values[AItem.Index] < 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.grdInputPkgsDBBandedTableView1PricePerNM3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('PricePerNM3');
  if ARecord.Values[AColumn.Index] <= 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.grdOutputSummaryDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Styck');
  if ARecord.Values[AColumn.Index] < 0 then
    AStyle := cxStyle1Red ;
end;

procedure TfrmSortOrder.seVeckaRapportVyPropertiesChange(Sender: TObject);
begin
// Refresh_WorkOrderRows ;
end;

procedure TfrmSortOrder.CalcKassationExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 try
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
// pgMAIN.ActivePage  := tsAnalyze ;

 With dmsSortOrder, dm_PkgWorkOrder do
 Begin
  cds_UsedPkgs.DisableControls ;
  cds_NewPkgs.DisableControls ;
  cds_SORaw.DisableControls ;
  cds_SorOrdRow.DisableControls ;
  cds_SortOrder.DisableControls ;
  FD_SortOrderFinSum.DisableControls ;
  FD_RawSum.DisableControls ;
  Try

  SaveAOKorOrder(Sender) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After SaveAO');
  PrepareForPostCalc(cds_SortOrderSortingOrderNo.AsInteger) ;

{  Try
  dmsSortOrder.GenerateValues (cds_SortOrderSortingOrderNo.AsInteger) ;
  Except
   On E: Exception do
   Begin
    ShowMessage('Fel i GenerateValues, Error message ' + E.Message) ;
//   Raise ;
   End ;
  End ; }

  RefreshNewAndUsedPkgs ;

  Finally
   FD_SortOrderFinSum.EnableControls ;
   FD_RawSum.EnableControls ;
   cds_SORaw.EnableControls ;
   cds_UsedPkgs.EnableControls ;
   cds_NewPkgs.EnableControls ;
   cds_SorOrdRow.EnableControls ;
   cds_SortOrder.EnableControls ;
  End ;
 End ;//With
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmSortOrder.acCalcKassationExecute(Sender: TObject);
begin
  CalcKassationExecute(Sender) ;
end;

procedure TfrmSortOrder.teUserIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 With dmsSystem, dmsSortOrder do
 Begin
  if Key <> VK_RETURN then
   ManualUserID := StrToIntDef(teUserID.Text,0) ;
 End ;//With
end;

procedure TfrmSortOrder.grdNewPkgsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  PkgStatus: TcxCustomGridTableItem;
begin
  PkgStatus := (Sender as TcxGridDBTableView).GetColumnByFieldName('PkgStatus');
  if ARecord.Values[PkgStatus.Index] = 0 then
   AStyle := cxStylePkgNotAvail ;
end;

procedure TfrmSortOrder.sePackageWidthPropertiesChange(Sender: TObject);
begin
{ With dmsSortOrder do
 Begin

   if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;

  if (StrToIntDef(sePackageWidth.Text,0) > 0) and (StrToIntDef(sePackageHeight.Text,0) > 0) then
   cds_SorOrdRowPPP.AsInteger  :=
   StrToIntDef(sePackageWidth.Text,0) * StrToIntDef(sePackageHeight.Text,0) ;
}
{  if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
  cds_SorOrdRowPPP.AsInteger  :=
  cds_ProdInstructPackageWidth.AsInteger * cds_ProdInstructPackageHeight.AsInteger ;
  }
// End ;
end;

procedure TfrmSortOrder.sePackageHeightPropertiesChange(Sender: TObject);
begin
{ With dmsSortOrder do
 Begin
  if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
  Begin
   if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;
   if (StrToIntDef(sePackageWidth.Text,0) > 0) and (StrToIntDef(sePackageHeight.Text,0) > 0) then
    cds_SorOrdRowPPP.AsInteger  :=
    StrToIntDef(sePackageWidth.Text,0) * StrToIntDef(sePackageHeight.Text,0) ;
  End ;
 End ; }
end;

procedure TfrmSortOrder.sePackageWidthPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
(*
 With dmsSortOrder do
 Begin



  if (StrToIntDef(sePackageWidth.Text,0) > 0) and (StrToIntDef(sePackageHeight.Text,0) > 0) then
  Begin
   if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;
   cds_SorOrdRowPPP.AsInteger  :=
   StrToIntDef(sePackageWidth.Text,0) * StrToIntDef(sePackageHeight.Text,0) ;
  End ;

{  if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
  cds_SorOrdRowPPP.AsInteger  :=
  cds_ProdInstructPackageWidth.AsInteger * cds_ProdInstructPackageHeight.AsInteger ;
  }
 End ;         *)
end;

procedure TfrmSortOrder.GetMarkedSortingOrderRows ;
Var ProdInstruNo, SortingOrderRowNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    Save_Cursor : TCursor;
begin
 With dmsSystem, dmsSortOrder do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  grdSortRowsDBBandedTableView1.BeginUpdate ;
  grdSortRowsDBBandedTableView1.DataController.BeginLocate ;
  Try
   For i := 0 to grdSortRowsDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdSortRowsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx := grdSortRowsDBBandedTableView1.DataController.GetItemByFieldName('SortingOrderRowNo').Index;
    OutputVal := grdSortRowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx := grdSortRowsDBBandedTableView1.DataController.GetItemByFieldName('ProdInstructNo').Index;
    if grdSortRowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
    ProdInstruNo:= grdSortRowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx]
    else
    ProdInstruNo:= -1 ;


    if not mtMarkedCodes.Locate('PkgCodePPNo', OutputVal, []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
     mtMarkedCodesProdInstruNo.AsInteger      := ProdInstruNo ;

     mtMarkedCodes.Post ;
    End ;
   End ;

  Finally
   grdSortRowsDBBandedTableView1.DataController.EndLocate ;
   grdSortRowsDBBandedTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfrmSortOrder.acSetBoldRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.SelAttributes.Style := [fsBold] ;
end;

procedure TfrmSortOrder.acSetKursivRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.SelAttributes.Style := [fsItalic] ;
end;

procedure TfrmSortOrder.acSetUnderlineRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.SelAttributes.Style := [fsUnderline] ;
end;

procedure TfrmSortOrder.acSetColorRavaraExecute(Sender: TObject);
begin
 if ColorDialog1.Execute then
 cxDBRichEdit_Comments.SelAttributes.Color  := ColorDialog1.Color ;
end;

procedure TfrmSortOrder.acSetColorFardigvaraExecute(Sender: TObject);
begin
 if ColorDialog1.Execute then
 reHyvelInfo.SelAttributes.Color  := ColorDialog1.Color ;
end;

procedure TfrmSortOrder.acSetFontRavaraExecute(Sender: TObject);
begin
  FontDialog1.Font := cxDBRichEdit_Comments.Style.Font;
  if FontDialog1.Execute then
   cxDBRichEdit_Comments.SelAttributes.Assign(FontDialog1.Font);
end;

procedure TfrmSortOrder.acSetFontFardigvaraExecute(Sender: TObject);
begin
  FontDialog1.Font := reHyvelInfo.Style.Font;
  if FontDialog1.Execute then
   reHyvelInfo.SelAttributes.Assign(FontDialog1.Font);
end;

procedure TfrmSortOrder.acCopyTextRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.CopyToClipboard;
end;

procedure TfrmSortOrder.acCreateNewPackageForMissingPkgNoExecute(
  Sender: TObject);
var  fSinglePkgEntry: TfSinglePkgEntry;
begin
 fSinglePkgEntry  := TfSinglePkgEntry.Create(nil) ;
 Try
 fSinglePkgEntry.PanelProduct.Caption := dmsSortOrder.FD_RawSumProductDisplayName.AsString ;

 fSinglePkgEntry.ShowModal ;
 Finally
  FreeAndNil(fSinglePkgEntry) ;
 End ;
end;

procedure TfrmSortOrder.acCopyTextFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.CopyToClipboard;
end;

procedure TfrmSortOrder.acPasteTextRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.PasteFromClipboard;
end;

procedure TfrmSortOrder.acPasteTextFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.PasteFromClipboard;
end;

procedure TfrmSortOrder.acSetNormalTextRavaraExecute(Sender: TObject);
begin
 cxDBRichEdit_Comments.SelAttributes.Style := [] ;
end;

procedure TfrmSortOrder.acSetNormalTextFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.SelAttributes.Style := [] ;
end;

procedure TfrmSortOrder.acSetBoldFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.SelAttributes.Style := [fsBold] ;
end;

procedure TfrmSortOrder.acSetKursivFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.SelAttributes.Style := [fsItalic] ;
end;

procedure TfrmSortOrder.acSetUnderlineFardigvaraExecute(Sender: TObject);
begin
 reHyvelInfo.SelAttributes.Style := [fsUnderline] ;
end;

{procedure TfPkgWorkOrder.acSearchForPackageToUnRegExecute(Sender: TObject);
var fSearchPkgToDeReg: TfSearchPkgToDeReg;
begin
 fSearchPkgToDeReg:= TfSearchPkgToDeReg.Create(nil) ;
 try
 fSearchPkgToDeReg.mtProduct.Insert ;
 fSearchPkgToDeReg.mtProductPIPNo.AsInteger     := dmsSortOrder.cds_SortOrderRawPIPNo.AsInteger ;
 fSearchPkgToDeReg.mtProductLIPNo.AsInteger     := dmsSortOrder.cds_SortOrderRawLIPNo.AsInteger ;
 fSearchPkgToDeReg.mtProductProductNo.AsInteger := dmsSortOrder.cds_SORawProductNo.AsInteger ;
 fSearchPkgToDeReg.mtProduct.Post ;
 fSearchPkgToDeReg.RefreshLagerListaByPkgNo(dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsInteger) ;
 fSearchPkgToDeReg.tePkgNo.Text                 := dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsString ;
 fSearchPkgToDeReg.ShowModal ;
 finally
  FreeAndNil(fSearchPkgToDeReg) ;
 end;
end;
}

procedure TfrmSortOrder.acSearchForPackageToUnRegExecute(Sender: TObject);
var fSearchPkgToDeReg: TfSearchPkgToDeReg;
begin
 fSearchPkgToDeReg:= TfSearchPkgToDeReg.Create(nil) ;
 try
 fSearchPkgToDeReg.mtProduct.Insert ;
 fSearchPkgToDeReg.mtProductPIPNo.AsInteger     := dmsSortOrder.cds_SortOrderRawPIPNo.AsInteger ;
 fSearchPkgToDeReg.mtProductLIPNo.AsInteger     := dmsSortOrder.cds_SortOrderRawLIPNo.AsInteger ;
 fSearchPkgToDeReg.mtProductProductNo.AsInteger := dmsSortOrder.cds_SORawProductNo.AsInteger ;
 fSearchPkgToDeReg.mtProduct.Post ;
 fSearchPkgToDeReg.RefreshLagerListaByPkgNo(dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsInteger) ;
// fSearchPkgToDeReg.tePkgNo.Text                 := dm_PkgWorkOrder.cds_UsedPkgsPAKETNR.AsString ;
 fSearchPkgToDeReg.ShowModal ;
 Application.ProcessMessages ;
// CalcKassationExecute(Sender) ;
 finally
  FreeAndNil(fSearchPkgToDeReg) ;
 end;
end;

{
procedure TfPkgWorkOrder.acMoveUsedPkgsToOtherSortOrderExecute(
  Sender: TObject);
Var SortOrderNo : Integer ;
begin
 SortOrderNo  := GetRunNoManually(Sender) ;
 if SortOrderNo > 0 then
 Begin
  GetMarkedUsedPkgs ;
  dmsSortOrder.MoveUsedPkgs(SortOrderNo) ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active                                   := False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active                                   := True ;

  dmsSortOrder.cds_SORaw.Active   := False ;
  dmsSortOrder.cds_SORaw.Active   := True ;

  dmsSortOrder.mtPkgNos.Active    := False ;
 End ;
end;

}

function TfrmSortOrder.GetRunNoManually(Sender: TObject) : Integer ;
Var fEntryField : TfEntryField ;
begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange körordernr att flytta förbrukade paket till' ;
  fEntryField.Label1.Caption:= 'KörorderNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    Result:= StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0) ;
   End
    else
     Result:= 0 ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
end;

procedure TfrmSortOrder.GetMarkedUsedPkgs ;
Var PackageNo, ProdInstruNo, SortingOrderRowNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    LevKod  : String ;
    Save_Cursor : TCursor;
begin
 With dmsSortOrder do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtPkgNos.Active:= False ;
  mtPkgNos.Active:= True ;
  grdUsedPkgsDBTableView1.BeginUpdate ;
  grdUsedPkgsDBTableView1.DataController.BeginLocate ;
  Try
   For i := 0 to grdUsedPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdUsedPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx    := grdUsedPkgsDBTableView1.DataController.GetItemByFieldName('PAKETNR').Index;
    Packageno := grdUsedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx    := grdUsedPkgsDBTableView1.DataController.GetItemByFieldName('LEVKOD').Index;
//    if grdUsedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
    LevKod    := grdUsedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx] ;
//    else
//    ProdInstruNo:= -1 ;


    if not mtPkgNos.Locate('PackageNo;LevKod', VarArrayOf([PackageNo, LevKod]), []) then
    Begin
     mtPkgNos.Insert ;
     mtPkgNosPackageNo.AsInteger  := PackageNo ;
     mtPkgNosLevKod.AsString      := LevKod ;
     mtPkgNos.Post ;
    End ;
   End ;

  Finally
   grdUsedPkgsDBTableView1.DataController.EndLocate ;
   grdUsedPkgsDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfrmSortOrder.acMoveUsedPkgsToOtherSortOrderExecute(
  Sender: TObject);
Var SortOrderNo : Integer ;
begin
 SortOrderNo  := GetRunNoManually(Sender) ;
 if SortOrderNo > 0 then
 Begin
  GetMarkedUsedPkgs ;
  dmsSortOrder.MoveUsedPkgs(SortOrderNo) ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active                                   := False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
//  if dmc_DB.cds_MainParamsAllowDeRegPkg.AsInteger = 0 then
//   dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date)
//    else
     dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Date-100) ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active                                   := True ;

  dmsSortOrder.cds_SORaw.Active   := False ;
  dmsSortOrder.cds_SORaw.Active   := True ;

  dmsSortOrder.mtPkgNos.Active    := False ;
 End ;
end;

procedure TfrmSortOrder.acAddRawMtrlUsedPreviouslyExecute(Sender: TObject);
begin
 InsertPreviouslyUsedRawMtrlProduct ;
end;

procedure TfrmSortOrder.LoadLengthGroupNames ;
Begin
 With dmsSystem do
 Begin
  cbLengthSpec.Properties.Items.Clear ;
  TcxComboBoxProperties(grdSortRowsDBBandedTableView1LengthSpec.Properties).Items.Clear ;
  TcxComboBoxProperties(grdRawMtrlDBBandedTableView1LengthSpec.Properties).Items.Clear ;
  with FD_LenGrpName do
  begin
//    DisableControls;
    Active  := True ;
    Try
    First;
    while not Eof do
    begin
      TcxComboBoxProperties(grdSortRowsDBBandedTableView1LengthSpec.Properties).Items.Add(FieldByName('GroupName').AsString);
      TcxComboBoxProperties(grdRawMtrlDBBandedTableView1LengthSpec.Properties).Items.Add(FieldByName('GroupName').AsString);
      cbLengthSpec.Properties.Items.Add(FieldByName('GroupName').AsString);
      Next;
    end;
    Finally
     Active  := False ;
    End ;
//    EnableControls;
  end;
 End ;//With dmcOrder do
End ;

procedure TfrmSortOrder.cbLengthSpecExit(Sender: TObject);
Var Value : String ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowLengthSpec.OldValue <> cds_SorOrdRowLengthSpec.NewValue)
  if (cds_SorOrdRowLengthSpec.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowLengthSpec.AsString ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'LengthSpec') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.acOpenAOInGuideExecute(Sender: TObject);
Var SortingOrderNo      : Integer ;
    Save_Cursor         : TCursor;
    bIsLegoOnLoadingLocation : Integer ;
    AddLOLength         : Boolean ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
  With dmsSortOrder do
  Begin
   dmsSortOrder.cds_SortOrder.Active  := False ;
   dmsSortOrder.cds_SortOrder.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderListID.AsInteger ;
   dmsSortOrder.cds_SortOrder.Active  := True ;
   if dmsSortOrder.cds_SortOrder.Eof then
    RegisterNEWRun(Sender)
     else
      Begin
       LOpenWorkOrder(cds_SortOrderListID.AsInteger, -1) ;
       if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) then
        CreateNewSortingOrderByWizard(False) ;
      End ;
  End ;//
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmSortOrder.RegisterNEWRun(Sender: TObject);
begin
end;

procedure TfrmSortOrder.acSetStatusOutreddExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;
  cds_SchedulerTaskStatusField.Asinteger:= 5 ;
  SaveAOKorOrder(Sender) ;
 End ;//With
end;

procedure TfrmSortOrder.OpenAOInGuideAfterCopyFromMall(const SortingOrderNo : Integer) ;
begin
 With dmsSortOrder do
 Begin
  LOpenWorkOrder(SortingOrderNo, -1) ;
  if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) and (cds_SortOrderSortingOrderNo.AsInteger > 0) then
  Begin

  End ;
  if (cds_SortOrder.Active) and (cds_SortOrder.RecordCount > 0) then
   CreateNewSortingOrderByWizard(True) ;
 End ;//With..
end;

procedure TfrmSortOrder.acPreCalcExecute(Sender: TObject);
begin
 dmsSortOrder.CalcPreCalc ;
end;

procedure TfrmSortOrder.acPrintPaRegExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
//  dxComponentPrinter1Link3.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Påregistrerade paket ') ;
  dxComponentPrinter1Link3.PrinterPage.PageHeader.CenterTitle.Add('Arbetsordernr: ' + cds_SortOrderSortingOrderNo.AsString ) ;

  dxComponentPrinter1Link3.PrinterPage.Orientation:= poPortrait ;
  dxComponentPrinter1Link3.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link3.OptionsOnEveryPage.Footers:= False ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link3) ;
 End ;
end;

procedure TfrmSortOrder.acPrintAvRegExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
//  dxComponentPrinter1Link4.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Avregistrerade paket ') ;
  dxComponentPrinter1Link4.PrinterPage.PageHeader.CenterTitle.Add('Arbetsordernr: ' + cds_SortOrderSortingOrderNo.AsString ) ;

  dxComponentPrinter1Link4.PrinterPage.Orientation:= poPortrait ;
  dxComponentPrinter1Link4.ShrinkToPageWidth:= True ;
  dxComponentPrinter1Link4.OptionsOnEveryPage.Footers:= False ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link4) ;
 End ;
end;

procedure TfrmSortOrder.acProdUtfallExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
 if not Assigned(fProductUtfall) then
 Begin
  fProductUtfall:= TfProductUtfall.Create(nil);
  fProductUtfall.RawMtrl    := False ;
  fProductUtfall.ProductNo  := cds_SorOrdRowProductNo.AsInteger ;
  fProductUtfall.ProducerNo := cds_SchedulerVerkNo.AsInteger ;
  fProductUtfall.acRefreshExecute(Sender);
  fProductUtfall.Show ;
 End
 else
 Begin
  fProductUtfall.ProductNo  := cds_SorOrdRowProductNo.AsInteger ;
  fProductUtfall.ProducerNo := cds_SchedulerVerkNo.AsInteger ;
  fProductUtfall.RawMtrl    := False ;
  fProductUtfall.acRefreshExecute(Sender);
  fProductUtfall.Show ;
 End ;
 End ;//With
end;

procedure TfrmSortOrder.acCalcStartSlutochProdTidUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acCalcStartSlutochProdTid.Enabled  := (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 2)
  or (cds_SchedulerTaskStatusField.AsInteger = 3)) ;
 End ;
end;

procedure TfrmSortOrder.acCalculateProductionsTimeUpdate(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  acCalculateProductionsTime.Enabled  := (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 2)
  or (cds_SchedulerTaskStatusField.AsInteger = 3)) ;
 End ;
end;

procedure TfrmSortOrder.teRealProdTidEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 0)
  or (cds_SchedulerTaskStatusField.AsInteger = 1)
  or (cds_SchedulerTaskStatusField.AsInteger = 2)
  or (cds_SchedulerTaskStatusField.AsInteger = 3)  )
  and (cds_SortOrderManualProdTime.AsInteger = 1) then
   teRealProdTid.Enabled  := True
    else
     teRealProdTid.Enabled  := False ;
 End ;
end;

procedure TfrmSortOrder.eRealStartTimesEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 0)
  or (cds_SchedulerTaskStatusField.AsInteger = 1)) then
   eRealStartTimes.Enabled  := True
    else
     eRealStartTimes.Enabled  := False ;
 End ;
end;

procedure TfrmSortOrder.teRealProdTidExit(Sender: TObject);
begin
 teRealProdTid.Enabled := True ;
end;

procedure TfrmSortOrder.cbManualProdTimeEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  if (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 2)
  or (cds_SchedulerTaskStatusField.AsInteger = 3)) then
   cbManualProdTime.Enabled  := True
    else
     cbManualProdTime.Enabled  := False ;
 End ;
end;

procedure TfrmSortOrder.cbManualProdTimeExit(Sender: TObject);
begin
 cbManualProdTime.Enabled := True ;
end;

procedure TfrmSortOrder.grdWorkOrderDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumnBkgr, AColumnText: TcxCustomGridTableItem;
  AAStyle: TcxStyle;
begin
  AColumnBkgr := (Sender as TcxGridDBTableView).GetColumnByFieldName('SurfacingBkgColor');
  AColumnText := (Sender as TcxGridDBTableView).GetColumnByFieldName('SurfacingTextColor');
  if (ARecord.Values[AColumnText.Index] <> null) and (ARecord.Values[AColumnBkgr.Index] <> null) then
  Begin
   AAStyle := cxStyleRepository1.CreateItem(TcxStyle) as TcxStyle;
   AAStyle.TextColor  := ARecord.Values[AColumnText.Index] ;
   AAStyle.Color      := ARecord.Values[AColumnBkgr.Index] ;
   if ARecord.Values[AColumnText.Index] = 0 then
    AStyle:= cxStyleNormal
     else
      AStyle:= AAStyle ;
  End
  else
   AStyle:= cxStyleNormal ;
end;

procedure TfrmSortOrder.acStoppTidPerOrsakExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  //DBCrossTabSource1.Active  := False ;
  Populate_cds_StoppSum(cds_SchedulerStart.AsSqlTimeStamp, cds_SchedulerFinish.AsSqlTimeStamp,
  1 {Orsak}, mtPropsTimeUnit.AsInteger, mtPropsNoOfTop.AsInteger, mtPropsVisaKortStopp.AsInteger) ;
  SetChartTexter(1) ;
//  pgStopps.ActivePage := tsResultat ;
//  DBCrossTabSource1.Active  := True ;
  AktivtDiagram := 'Tid' ;
 End ;
end;

procedure TfrmSortOrder.acAntalStoppPerOrsakExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
//  DBCrossTabSource1.Active  := False ;
  Populate_cds_StoppSum(cds_SchedulerStart.AsSqlTimeStamp, cds_SchedulerFinish.AsSqlTimeStamp,
  0 {Orsak}, mtPropsTimeUnit.AsInteger, mtPropsNoOfTop.AsInteger, mtPropsVisaKortStopp.AsInteger) ;
  SetChartTexter(0) ;
//  pgStopps.ActivePage := tsResultat ;
 // DBCrossTabSource1.Active  := True ;
  AktivtDiagram := 'Antal' ;
 End ;
end;

procedure TfrmSortOrder.SetChartTexter(const DiagramTyp : Integer) ;
Begin
{ if DiagramTyp = 1 then
 Begin
  DBChart1.Title.Caption          := 'Stopptid/orsak.   ' +
  SQLTimeStampToStr('yy-mm-dd hh:mm',dmsSortOrder.cds_SchedulerStart.AsSqlTimeStamp) + ' - ' +
  SQLTimeStampToStr('yy-mm-dd hh:mm', dmsSortOrder.cds_SchedulerFinish.AsSqlTimeStamp) ;
  if dmsSortOrder.mtPropsTimeUnit.AsInteger = 0 then
  DBChart1.LeftAxis.Title.Caption := 'Minuter'
  else
  DBChart1.LeftAxis.Title.Caption := 'Timmar' ;
  DBChart1.LeftAxis.Increment     := 1 ;
 End
 else
 Begin
  DBChart1.Title.Caption          := 'Antal stopp/orsak.   ' +
  SQLTimeStampToStr('yy-mm-dd hh:mm',dmsSortOrder.cds_SchedulerStart.AsSqlTimeStamp) + ' - ' +
  SQLTimeStampToStr('yy-mm-dd hh:mm', dmsSortOrder.cds_SchedulerFinish.AsSqlTimeStamp) ;
  DBChart1.LeftAxis.Title.Caption := 'Antal stopp' ;
  DBChart1.LeftAxis.Increment     := 1 ;
 End ;     }
End ;

procedure TfrmSortOrder.seNoOfTopPropertiesChange(Sender: TObject);
begin
{ if AktivtDiagram = 'Tid' then
  acStoppTidPerOrsakExecute(Sender)
   else
    acAntalStoppPerOrsakExecute(Sender) ;
    }
end;

procedure TfrmSortOrder.icTidsEnhetPropertiesChange(Sender: TObject);
begin
{ if AktivtDiagram = 'Tid' then
  acStoppTidPerOrsakExecute(Sender)
   else
    acAntalStoppPerOrsakExecute(Sender) ;
    }
end;

procedure TfrmSortOrder.cbVisaKortStoppPropertiesChange(Sender: TObject);
begin
{ if AktivtDiagram = 'Tid' then
  acStoppTidPerOrsakExecute(Sender)
   else
    acAntalStoppPerOrsakExecute(Sender) ;
    }
end;

procedure TfrmSortOrder.acProdUtfallByRawMtrlExecute(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
 if not Assigned(fProductUtfall) then
 Begin
  fProductUtfall:= TfProductUtfall.Create(nil);
  fProductUtfall.RawMtrl    := True ;
  fProductUtfall.ProductNo  := cds_SORawProductNo.AsInteger ;
  fProductUtfall.ProducerNo := cds_SchedulerVerkNo.AsInteger ;
  fProductUtfall.acRefreshExecute(Sender);
  fProductUtfall.Show ;
 End
 else
 Begin
  fProductUtfall.ProductNo  := cds_SORawProductNo.AsInteger ;
  fProductUtfall.ProducerNo := cds_SchedulerVerkNo.AsInteger ;
  fProductUtfall.RawMtrl    := True ;
  fProductUtfall.acRefreshExecute(Sender);
  fProductUtfall.Show ;
 End ;
 End ;//With
end;

procedure TfrmSortOrder.cbTargetProductExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
//  if ((cds_SorOrdRowTargetProduct.OldValue <> cds_SorOrdRowTargetProduct.NewValue)
  if (cds_SorOrdRowTargetProduct.NewValue <> null) then
  Begin
   Value := cds_SorOrdRowTargetProduct.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'TargetProduct') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.acCopySortingOrderRowUpdate(Sender: TObject);
begin
 acCopySortingOrderRow.Enabled  := EditKorOrderDataSaved ;
end;

procedure TfrmSortOrder.teLONRExit(Sender: TObject);
Var Value : Integer ;
begin
// sePPP.Properties.OnChange := nil ;
 Try
 With dmsSystem, dmsSortOrder do
 Begin
  if cds_SorOrdRowLONR.NewValue <> null then
  Begin
   Value := cds_SorOrdRowLONR.AsInteger ;
   GetMarkedSortingOrderRows ;
   if mtMarkedCodes.RecordCount > 1 then
   ChangeMarkedRows(Value, 'LONR') ;
  End ;
 End ;
 Finally
//  sePPP.Properties.OnChange := sePPPPropertiesChange ;
 End ;
end;

procedure TfrmSortOrder.acSetStatusPauseExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
   if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;
   cds_SchedulerTaskStatusField.Asinteger:= 6 ;
   SaveAOKorOrder(Sender) ;
 End ;
end;

procedure TfrmSortOrder.acAddRawMtrlUsedPreviouslyUpdate(Sender: TObject);
begin
 acAddRawMtrlUsedPreviously.Enabled := False ;
end;

function TfrmSortOrder.GetMarkedSortingOrders : Integer ;
Var ProdInstruNo, BookingNo, SortingOrderRowNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    Save_Cursor : TCursor;
begin
 With dmsSystem, dmsSortOrder do
 Begin
  Result  := cds_SortOrderListID.AsInteger ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  grdWorkOrderDBTableView1.BeginUpdate ;
  grdWorkOrderDBTableView1.DataController.BeginLocate ;
  Try
   For i := 0 to grdWorkOrderDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdWorkOrderDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx := grdWorkOrderDBTableView1.DataController.GetItemByFieldName('ID').Index;
    OutputVal := grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx := grdWorkOrderDBTableView1.DataController.GetItemByFieldName('BookingNo').Index;
    if grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
    BookingNo:= grdWorkOrderDBTableView1.DataController.Values[RecIdx, ColIdx]
    else
    BookingNo:= -1 ;


    if not mtMarkedCodes.Locate('PkgCodePPNo', OutputVal, []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
     mtMarkedCodesProdInstruNo.AsInteger      := BookingNo ;
     mtMarkedCodes.Post ;

     dmsSystem.InsRawTemp(BookingNo, OutputVal) ;
    End ;
   End ;

  Finally
   grdWorkOrderDBTableView1.DataController.EndLocate ;
   grdWorkOrderDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfrmSortOrder.acSaveDefaultLayoutExecute(Sender: TObject);
begin
  if MessageDlg('Vill du spara STANDARD layouten?' ,
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  dmsSystem.StoreGridLayout(10000, Self.Name+'/Def' + grdWorkOrder.Name, grdWorkOrderDBTableView1) ;
end;

procedure TfrmSortOrder.acRestoreDefaultLayoutExecute(Sender: TObject);
begin
 dmsSystem.LoadGridLayout(10000, Self.Name+'/Def' + grdWorkOrder.Name, grdWorkOrderDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdWorkOrder.Name, grdWorkOrderDBTableView1) ;
end;

procedure TfrmSortOrder.acSaveSvardKapLayoutExecute(Sender: TObject);
begin
 if MessageDlg('Vill du verkligen spara aktuella tabellinställningar som "Svärdkaplayout"?' ,
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  dmsSystem.StoreGridLayout(10000, Self.Name+'/Def' + grdSortRowsDBBandedTableView1.Name, grdSortRowsDBBandedTableView1) ;
  dmsSystem.StoreGridLayout(10000, Self.Name+'/Def' + grdRawMtrl.Name, grdRawMtrlDBBandedTableView1) ;
 End ;
end;

procedure TfrmSortOrder.acRestoreSvardKapLayoutExecute(Sender: TObject);
begin
 dmsSystem.LoadGridLayout(10000, Self.Name+'/Def' + grdSortRowsDBBandedTableView1.Name, grdSortRowsDBBandedTableView1) ;
 dmsSystem.LoadGridLayout(10000, Self.Name+'/Def' + grdRawMtrl.Name, grdRawMtrlDBBandedTableView1) ;
end;

procedure TfrmSortOrder.dxBarLargeButton20Click(Sender: TObject);
var
  L: TdxBarItemLink;
begin
  with Sender as TdxBarButton do
    if (DropDownMenu <> nil) and (DropDownMenu.SubMenuControl = nil) then
    begin
      L := ClickItemLink;
      if (L <> nil) and (L.Control <> nil) then
      begin
        L.Control.Parent.BarGetFocus(L.Control); // <<< NEW LINE
        TdxBarButtonControlAccess(L.Control).DropDown(True);
      end;
    end;
End ;

procedure TfrmSortOrder.grdRawMtrlDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
begin
//  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PricePerNM3');
  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('PricePerNM3') ;
  if (ARecord.Values[AColumn.Index] <> null)  then
  Begin
  if ARecord.Values[AColumn.Index] = 0 then
    AStyle := cxStyle7 ;
  End
  else
  AStyle := cxStyle7 ;
end;

procedure TfrmSortOrder.acSaveUserProfileExecute(Sender: TObject);
begin
 SaveAllUserProfileGrids ;
end;

procedure TfrmSortOrder.SaveAllUserProfileGrids ;
begin
 With dmSotOrderList do
 Begin
//  cds_UserProfileGrids.

//Sortorderrows
  SaveUserProfileAndGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdSortRowsDBBandedTableView1.Name,
  grdSortRowsDBBandedTableView1) ;

//Veckovy
  SaveUserProfileAndGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdWorkOrderDBTableView1.Name,
  grdWorkOrderDBTableView1) ;

//Råvarurader
  SaveUserProfileAndGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdRawMtrlDBBandedTableView1.Name,
  grdRawMtrlDBBandedTableView1) ;
 End ;
end;

procedure TfrmSortOrder.SaveUserProfileAndGrid(const Form, Name : String; AGridView: TcxGridTableView) ;
begin
 dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Form, Name, AGridView, 'frmSortOrder') ;
end;

procedure TfrmSortOrder.GetUserProfileGrid(const Form, Name : String; AGridView: TcxGridTableView) ;
begin
 dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Form, Name, AGridView, 'frmSortOrder') ;
end;

procedure TfrmSortOrder.LoadProfile ;
Begin
 With dmSotOrderList do
 Begin
//  cds_UserProfileGrids.Active := False ;
//  cds_UserProfileGrids.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
//  cds_UserProfileGrids.Active := True ;

//  cds_UserProfileGrids.Filter   := 'NewItemRow = 1' ;
//  cds_UserProfileGrids.Filtered := True ;

  //Veckovy
  GetUserProfileGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdWorkOrderDBTableView1.Name, grdWorkOrderDBTableView1) ;

//Sortorderrows
  GetUserProfileGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdSortRowsDBBandedTableView1.Name, grdSortRowsDBBandedTableView1) ;

//Råvarurader
  GetUserProfileGrid(cds_PropsForm.AsString, cds_PropsForm.AsString + grdRawMtrlDBBandedTableView1.Name, grdRawMtrlDBBandedTableView1) ;

 End ;
End ;

procedure TfrmSortOrder.lcRegPointEnter(Sender: TObject);
begin
 with dmSotOrderList do
 Begin
  cds_RegPoint.Filter   := 'ClientNo = ' + cds_PropsProducerNo.AsString + ' OR ClientNo = -1' ;
  cds_RegPoint.Filtered := True ;
 End ;
end;

procedure TfrmSortOrder.lcRegPointExit(Sender: TObject);
begin
 with dmSotOrderList do
 Begin
  cds_RegPoint.Filter   := 'ClientNo = ' + cds_PropsProducerNo.AsString + ' OR ClientNo = -1' ;
  cds_RegPoint.Filtered := False ;
 End ;
end;

procedure TfrmSortOrder.dxBarButton13Click(Sender: TObject);
Var BookingNo, NewID, OldID : Integer ;
begin
end;

procedure TfrmSortOrder.lcuapORTEnter(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_uapCity.Filter   := 'UserID = ' + IntToStr(ThisUser.UserID) ;
  cds_uapCity.Filtered := True ;
 End ;
end;

procedure TfrmSortOrder.lcuapORTExit(Sender: TObject);
begin
 With dmsSortOrder do
 Begin
  cds_uapCity.Filtered := False ;
 End ;
end;

procedure TfrmSortOrder.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and (Length(Edit1.Text) > 0) then
  Begin
   Try
    ScanningPkgNo(Sender, Edit1.Text) ;
    Edit1.Text:= '' ;
   Except
    Edit1.Text:= '' ;
   End ;
  End
  else
   Begin
//    if (acStart.Caption = 'Stoppa inläsning med skanner') then
//     if key in ['S','0','1','2','3','4','5','6','7','8','9'] then
//      Edit1.Text:= Edit1.Text + Key ;
//    cxLabelSkannarPaketnr.Caption := Edit1.Text ;
   End ;
//  End ;//if sender
// End ;
//  End
//   else
//    ShowMessage('Välj en körorder') ;
// End ;//With
end;

procedure TfrmSortOrder.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dm_Vis_Vida) ;
 FreeAndNil(dm_ProdPlan) ;
 FreeAndNil(dmSotOrderList) ;
 FreeAndNil(dm_PkgWorkOrder) ;
 FreeAndNil(dmsSortOrder) ;
// FreeAndNil(dmsProduct) ;
// FreeAndNil(dmsContact) ;
// FreeAndNil(dmsSystem) ;
// dmsConnector.FDConnection1.Close ;
// FreeAndNil(dmsConnector) ;
end;

procedure TfrmSortOrder.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo        : Integer ;
//  PktNrLevKod     : String ;//Lev koden i paketnrsträngen
  PkgSupplierCode : String3;
  Action          : TEditAction;
  ProductNo       : Integer ;
  Save_Cursor     : TCursor;
  Res_UserName    : String ;
  RegPointName    : String ;
  Status          : Integer ;
  ScannatPktnr    : String ;
  ActionNo        : Integer ;
begin
 With dm_Vis_Vida do
 Begin
  cxLabelSkannarPaketnr.Caption         := '' ;
  cxLabelSkannarPaketnrProblem.Caption  := '' ;
  Save_Cursor                           := Screen.Cursor;
  Screen.Cursor                         := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 12 then
//************** LONG PACKAGENUMBER STRING ****************
  Begin

//Notera att i den långa koden skall supplier koden finnas!
    Try

    ScannatPktnr      := PkgNo ;
    PkgSupplierCode   := GetPkgPos(PkgNo) ;// dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
    NewPkgNo          := StrToInt(PkgNo) ;

    dmsSystem.FDoLog('PkgSupplierCode = ' + PkgSupplierCode + ' ScanningPkgNo long')  ;
    dmsSystem.FDoLog('NewPkgNo = ' + IntToStr(NewPkgNo)) ;

{
      procedure Tdmc_DB.AddPkgToLoggs (const PackageNo, SortingOrderNo, AvRegStatus : Integer;
      const Prefix, ScannedString : String) ;
}


  {
      dmsSystem.AddPkgToLoggs(NewPkgNo, dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger,
        -1,
       PkgSupplierCode, PkgNo)
 }

    Except
     on E: EConvertError do
      ShowMessage(E.ClassName + LF + E.Message);
    End ;
    if NewPkgNo < 1 then
     Action  := eaREJECT
      else
       Begin
        Action  := eaAccept ;
        Status  := 1 ;
       End ;

      if Action = eaAccept then
      Begin
       Action := IdentifyPackageSupplier(
          NewPkgNo,
          PkgSupplierCode,
          ProductNo,
          Res_UserName,
          Status ) ;
      End;

  End
  else //Length < 13
  Begin
   ScannatPktnr       := PkgNo ;
   NewPkgNo           := StrToIntDef(PkgNo,0) ;
   if NewPkgNo = 0 then
   Begin
    if dmsSystem.ShowAvregErrorDialog = 1 then
    if tfOKDia.Execute('Streckkoden kunde inte översättas till ett Paketnr') = 1 then ;
    cxLabelSkannarPaketnrProblem.Caption := PkgNo + ' streckkoden kunde inte översättas till ett Paketnr' ;
    Exit ;
   End ;

   if Length(PkgSupplierCode) = 0 then
   PkgSupplierCode  := '___' ;
//   else
//   PkgSupplierCode  :=  FDm_SettingsPrefix.AsString ;


   Action := IdentifyPackageSupplier(
      NewPkgNo,
      PkgSupplierCode,
      ProductNo,
      Res_UserName,
      Status ) ;

   if Length(Trim(PkgSupplierCode)) = 0 then
   Begin
//    InsertToadm_AvRegPkgs(NewPkgNo, PkgSupplierCode, 'Inget paket kunde identifieras') ;
    dmsSystem.FDoLog('!! Length(Trim(PkgSupplierCode)) = 0 ' + PkgSupplierCode) ;
    dmsSystem.FDoLog('!! ScannatPktnr kunde inte identifieras ' + ScannatPktnr) ;
//    ShowMessage('Paketnr ' + ScannatPktnr + ' kunde inte identifieras') ;
    ShowPkgInfo(NewPkgNo, PkgSupplierCode) ;
    cxLabelSkannarPaketnrProblem.Caption := 'Paketnr ' + ScannatPktnr + ' kunde inte identifieras' ;
    Exit ;
   End
   else
   Begin
    dmsSystem.FDoLog('PkgSupplierCode = ' + PkgSupplierCode  + ' ScanningPkgNo short')  ;
    dmsSystem.FDoLog('NewPkgNo = ' + IntToStr(NewPkgNo)) ;
   End ;

   if Action = eaUserCancel then
   Begin
//    InsertToadm_AvRegPkgs(NewPkgNo, PkgSupplierCode, 'Inget paket kunde identifieras') ;
//    ShowMessage('Inget paket kunde identifieras') ;
    Exit ;
   End ;


//   PkgSupplierCode:= EgenPkgSupplierCode ;

  End ;  //else //Length < 13

  //Ett paket kan inte avregistreras flera ggr mot en produktionsmätpunkt
{  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
  if RegPointName <> 'NO' then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ; }

  if Action = eaAccept then
  Begin
//   if FDm_AvRegPkgs.Locate('Paketnr;Prefix', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
   if PkgInList(NewPkgNo, PkgSupplierCode) then
   Begin
    Action:= EFDuplicate ;
    dmsSystem.FDoLog('!! Duplicate PkgSupplierCode = ' + PkgSupplierCode) ;
    dmsSystem.FDoLog('!! Duplicate NewPkgNo = ' + IntToStr(NewPkgNo)) ;
    cxLabelSkannarPaketnrProblem.Caption := ('Dublett, paketnr ' + IntToStr(NewPkgNo)) ;
   End
   else
   Action := eaAccept ;
  End
   else
    Action  := eaREJECT ;

{  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = '' + '/' + Self.Name then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;
}

  if Action = eaACCEPT then
  Begin
   cxLabelSkannarPaketnr.Caption := 'Skannat paketnr ' + inttostr(NewPkgNo) + '/' + PkgSupplierCode ;
   AddPkgToGrid(Sender, NewPkgNo, PkgSupplierCode, ProductNo, Status) ;
   if dmsSystem.AllowDeRegPkg = 1 then
   Begin
    AvRegistreraPaketIBufferten ;
    acRefreshAvRegExecute(Sender) ;
   End;
  End
   else
   if Action = eaREJECT then
    Begin
     if dmsSystem.ShowAvregErrorDialog = 1 then
      tfOKDia.Execute('Paketnr ' + ScannatPktnr + ' finns inte') ;
     cxLabelSkannarPaketnrProblem.Caption := 'Paketnr ' + ScannatPktnr + ' finns inte' ;
     dmsSystem.FDoLog('!! eaREJECT = ' + 'Paketnr ' + ScannatPktnr + ' finns inte') ;
    End
    else
     if Action = eaReserved then
      Begin
       if dmsSystem.ShowAvregErrorDialog = 1 then
        ShowMessage('Paketnr ' + IntToStr(NewPkgNo) + '/' + PkgSupplierCode + ' är reserverat av användare ' + Res_UserName) ;
       cxLabelSkannarPaketnrProblem.Caption := 'Paketnr ' + IntToStr(NewPkgNo) + '/' + PkgSupplierCode + ' är reserverat av användare ' + Res_UserName ;
      End
      else
       if (Action = eaAlreadyAvReg) or (Action = EFDuplicate) then
       Begin
        if dmsSystem.ShowAvregErrorDialog = 1 then
         ShowMessage('Paketnr ' + IntToStr(NewPkgNo) + '/' + PkgSupplierCode + ' är redan avregistrerat mot körningen') ;
        cxLabelSkannarPaketnrProblem.Caption := 'Paketnr ' + IntToStr(NewPkgNo) + '/' + PkgSupplierCode + ' är redan avregistrerat mot körningen' ;
       End ;

  dmsSystem.FDoLog('________________________________________________________________________ ') ;

  ShowHidePkgsPanels ;

  finally
    ActionNo  := Ord(Action) ;
    dmsSystem.AddPkgToLoggs(NewPkgNo, dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger,
    {AvRegStatus Scanned string} ActionNo, PkgSupplierCode, ScannatPktnr) ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;// With dm_Vis_Vida  do
end;

procedure TfrmSortOrder.ShowHidePkgsPanels ;
Begin
 With dm_Vis_Vida  do
 Begin
  if (FDm_AvRegPkgs.Active) and (FDm_AvRegPkgs.RecordCount > 0) then
  Begin
   PanelPaketBuffert.Visible  := True ;
   PanelPaketBuffert.Align    := alClient ;
   PanelAvregPkgs.Visible     := False ;
  End
  else
  Begin
   PanelAvregPkgs.Visible     := True ;
   PanelAvregPkgs.Align       := alClient ;
   PanelPaketBuffert.Visible  := False ;
  End ;
 End ;
End ;

function TfrmSortOrder.IdentifyPackageSupplier(
  const PkgNo           : Integer;
  var PkgSupplierCode   : String3;
  Var ProductNo         : Integer;
  Var Res_UserName      : String;
  var Status            : Integer) : TEditAction ;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo,
    LIPNo : Integer;
begin
 With dm_Vis_Vida do
 Begin


 //check that package is available in inventory and Get supplier code
//                        ShowMessage('ThisUser.UserName+Self.Name ' + ThisUser.UserName+'/'+Self.Name);
//    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_IIII(PkgNo, mtUserPropPIPNo.AsInteger, mtUserPropOwnerNo.AsInteger, SupplierNo, ProductNo, LIPNo, Status) ;

    PkgSupplierCode := PkgNoToSuppCode_IIII(PkgNo,
    FDm_SettingsOwnerNo.AsInteger,
    FDm_SettingsPIPNo.AsInteger,
    SupplierNo, ProductNo, LIPNo, Status, PkgSupplierCode) ;

//  PkgSupplierCode := 'AT' ;

    if PkgSupplierCode = '4x4' then
    Begin
      Result := eaUserCancel ;
    End
    else
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
          begin
           Result := eaACCEPT ;
          end ;
{    else
//check that no user has reserved the package
        if Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName + '/' + Self.Name then
          begin
           Result := eaACCEPT ;
          end
        else
         begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end; }
// ShowMessage('dmsSystem.Pkg_Reserved = '+dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, Self.Name, Res_UserName)) ;
// ShowMessage('Length dmsSystem.Pkg_Reserved = '+ inttostr(Length(dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, Self.Name, Res_UserName)))) ;

// ShowMessage('ThisUser.UserName+/+Self.Name = '+ ThisUser.UserName+'/'+Self.Name) ;
// ShowMessage('Length ThisUser.UserName+/+Self.Name = '+ inttostr(Length(ThisUser.UserName+'/'+Self.Name))) ;
// ShowMessage('Res_UserName = ' + Res_UserName) ;
 End ;
end;

procedure TfrmSortOrder.AddPkgToGrid(Sender: TObject;const PkgNo : Integer;PkgSupplierCode : String3;ProductNo, Status : Integer) ;
var
 x : Integer ;
// Res_UserName : String ;
Begin
 With dm_Vis_Vida  do
 Begin
  if not FDm_AvRegPkgs.Active then
   FDm_AvRegPkgs.Active := True ;

     sq_GetPkgData.Close ;

     sq_GetPkgData.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_GetPkgData.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_GetPkgData.ParamByName('SortingOrderNo').AsInteger      := FDm_SettingsSortingOrderNo.AsInteger ;
{     sq_GetPkgData.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_GetPkgData.ParamByName('UserCompanyLoggedIn').AsInteger := dm_Vis_Vida .cds_MainParamsVerkNo.AsInteger ;
     sq_GetPkgData.ParamByName('Status').AsInteger              := 0 ; }
     sq_GetPkgData.Open ;
     Try
     if not sq_GetPkgData.Eof then
     Begin
      if not FDm_AvRegPkgs.Locate('Paketnr;Prefix', VarArrayOf([PkgNo, PkgSupplierCode]), []) then
      Begin
       if (sq_GetPkgDataStatus.AsInteger = 1) or (((sq_GetPkgDataOwnerNo.AsInteger = 76) and (sq_GetPkgDataStatus.AsInteger = 0))
       or ((sq_GetPkgDataOwnerNo.AsInteger = 2846) and (sq_GetPkgDataStatus.AsInteger = 0))) then
       Begin
           FDm_AvRegPkgs.Insert ;
           Try
           For x := 0 to 10 do
            FDm_AvRegPkgs.Fields.Fields[x].AsVariant  := sq_GetPkgData.Fields.Fields[x].AsVariant ;

           FDm_AvRegPkgsShiftTeamNo.AsInteger      := dmsSystem.ShiftTeamNo ;

           FDm_AvRegPkgsRegistrerad.AsDateTime     := Now ;

           FDm_AvRegPkgsStatus.AsInteger           := Status ;
           FDm_AvRegPkgsOperationStatus.AsInteger  := 0 ;
           FDm_AvRegPkgsRegPointNo.AsInteger       := FDm_SettingsRegPointNo.AsInteger ;// cds_SortOrderListRegPointNo.AsInteger ;
           FDm_AvRegPkgsProducerNo.AsInteger       := FDm_SettingsProducerNo.AsInteger ;
           FDm_AvRegPkgsPackageTypeNo.AsInteger    := sq_GetPkgDataPackageTypeNo.AsInteger ;
           FDm_AvRegPkgsSortingOrderNo.AsInteger   := FDm_SettingsSortingOrderNo.AsInteger ;
           FDm_AvRegPkgsLengthSpecNo.AsInteger     := sq_GetPkgDataLengthSpecNo.AsInteger ;
           FDm_AvRegPkgsLIPNo.AsInteger            := sq_GetPkgDataLIPNo.AsInteger ;
           FDm_AvRegPkgsOwnerNo.AsInteger          := sq_GetPkgDataOwnerNo.AsInteger ;

           FDm_AvRegPkgsOriginalPaketnr.AsInteger  := sq_GetPkgDataPkgNoAttAvReg.AsInteger ;
           FDm_AvRegPkgsOriginalPrefix.AsString    := sq_GetPkgDataPrefixAttAvReg.AsString ;

    //       FDm_AvRegPkgsPaketnrAttAvReg.AsInteger  := sq_GetPkgDataPkgNoAttAvReg.AsInteger ;
    //       FDm_AvRegPkgsPrefixAttAvReg.AsString    := sq_GetPkgDataPrefixAttAvReg.AsString ;
           FDm_AvRegPkgsPackageTypeNoAttAvReg.AsInteger  := sq_GetPkgDataPackageTypeNoAttAvReg.AsInteger ;

           FDm_AvRegPkgs.Post ;
    //       Unique_No:= Succ(Unique_No) ;
           Except
            on eDatabaseError do
            Begin
             Raise ;
             FDm_AvRegPkgs.Cancel ;
            End ;
           End ;
       End
        else
         Begin

         End;
      End ;//if FDm_AvRegPkgs.Locate('Paketnr;Prefix', VarArrayOf([FDm_SelectPkgNoPaketNr.AsInteger, FDm_SelectPkgNoPrefix.AsString]), []) then
     End  //if not...
     else
      Begin
       if not FDm_AvRegPkgs.Locate('Paketnr;Prefix', VarArrayOf([FDm_SelectPkgNoPaketNr.AsInteger, FDm_SelectPkgNoPrefix.AsString]), []) then
       Begin
        FDm_AvRegPkgs.Insert ;
        FDm_AvRegPkgsPaketnr.AsInteger := FDm_SelectPkgNoPaketNr.AsInteger ;
        FDm_AvRegPkgsPrefix.AsString   := FDm_SelectPkgNoPrefix.AsString ;
        FDm_AvRegPkgsProdukt.AsString  := 'Paket kan inte lokaliseras' ;
        FDm_AvRegPkgs.Post ;
       End ;
      End ;
    Finally
     sq_GetPkgData.Close ;
    End ;

 End ; //with dm_Vis_Vida
end;

procedure TfrmSortOrder.acStartExecute(Sender: TObject);
begin
 if acStart.Caption = 'Starta inläsning med skanner F10' then
  Begin
   acStart.Caption              := 'Stoppa inläsning med skanner F10' ;
   AcceptInput                  := True ;
   Edit1.Enabled                := False ;
//   lcSortingOrder.Enabled       := False ;
//   teSearchSortingOrder.Enabled := False ;
//   lc_Prefix.Enabled            := False ;
   Self.KeyPreview              := True ;
//   StartScan(Sender) ;
  End
   else
   Begin
    acStart.Caption               := 'Starta inläsning med skanner F10' ;
    AcceptInput                   := False ;
    Edit1.Enabled                 := True ;
//    lcSortingOrder.Enabled        := True ;
//    teSearchSortingOrder.Enabled  := True ;
//    lc_Prefix.Enabled             := True ;
    Self.KeyPreview               := False ;
   End
end;

procedure TfrmSortOrder.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if AcceptInput then
 Begin
  if (Key = #13) and (Length(Edit1.Text) > 0) then
  Begin
   Try
    ScanningPkgNo(Sender, Edit1.Text) ;
    Edit1.Text:= '' ;
   Except
    Edit1.Text:= '' ;
   End ;
  End
  else
   Begin
    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
     if key in ['S','0','1','2','3','4','5','6','7','8','9'] then
      Edit1.Text:= Edit1.Text + Key ;
   End ;
 End ;

end;

procedure TfrmSortOrder.AvRegistreraPaketIBufferten ;
Begin
 With dm_Vis_Vida do
 Begin
   dmsConnector.StartTransaction ;
   try
    RemovePkgsFromInventory ;
    dmsConnector.Commit ;

    ShowHidePkgsPanels ;

    FDm_AvRegPkgs.Active  := False ;
    FDm_AvRegPkgs.Active  := True ;
   except
    dmsSystem.FDoLog('dmsConnector.Rollback') ;
    dmsConnector.Rollback ;
   end;
 End ; //With dm_Vis_Vida do
end;

procedure TfrmSortOrder.acAvRegistreraPaketIBuffertenExecute(
  Sender: TObject);
const
  LF = #10;
//Var Paketnr : Integer ;
//    Prefix  : String ;
Begin
 With dm_Vis_Vida do
 Begin
//  Paketnr := FDm_AvRegPkgsPaketnr.AsInteger ;
//  Prefix  := FDm_AvRegPkgsPrefix.AsString ;
  if MessageDlg('Vill du avregistrera paket ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   AvRegistreraPaketIBufferten ;

   acRefreshAvRegExecute(Sender) ;

 {  dmsConnector.StartTransaction ;
   try
    RemovePkgsFromInventory ;
    dmsConnector.Commit ;

//    CalcKassationExecute(Sender) ;

    ShowHidePkgsPanels ;
//    FDm_AvRegPkgs.FindKey([Paketnr,Prefix]) ;
   except
    dmsSystem.FDoLog('dmsConnector.Rollback') ;
    dmsConnector.Rollback ;
   end;   }
  End ;//if..
 End ; //With dm_Vis_Vida do
end;

procedure TfrmSortOrder.FormShow(Sender: TObject);
begin
  With dm_Vis_Vida, dmsSortOrder do
  Begin
   FDm_PaRegPkgs.Active := True ;

   FDm_AvRegPkgs.Filter   := 'OperationStatus <> 1' ;
   FDm_AvRegPkgs.Filtered := True ;

   FDm_AvRegPkgs.Active := True ;
   FDm_Settings.Active  := True ;

   FDm_Settings.Insert ;
   FDm_SettingsProducerNo.AsInteger       := cds_SchedulerVerkNo.AsInteger ;
   FDm_SettingsPIPNo.AsInteger            := cds_SortOrderRawPIPNo.AsInteger ;
   FDm_SettingsVisaAllaAvRegPkt.AsInteger := 0 ;
   FDm_SettingsOwnerNo.AsInteger          := cds_SchedulerOwnerNo.AsInteger ;
   FDm_SettingsSortingOrderNo.AsInteger   := cds_SchedulerID.AsInteger ;
   FDm_SettingsRegPointNo.AsInteger       := cds_SchedulerResourceID.AsInteger ;
   FDm_SettingsProductInRun.AsInteger     := 0 ;
   FDm_SettingsOwnInventory.AsInteger     := 1 ;
//   FDm_SettingsPIPNo.AsInteger          := cds_SortOrderListPIPNo.AsInteger ;
   FDm_Settings.Post ;
   GetKassationStycketal ;
//   CalcKassationExecute(Sender) ;
  End ;
 acStartExecute(Sender) ;
end;

procedure TfrmSortOrder.acCancelPkgsInBuffertExecute(Sender: TObject);
begin
 With dm_Vis_Vida do
 Begin
//   if MessageDlg('Vill du ångra att du la till Paketnr ' + FDm_AvRegPkgsPaketNr.AsString
//    +'/'+FDm_AvRegPkgsPrefix.AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  FDm_AvRegPkgs.Delete ;
  ShowHidePkgsPanels ;
 End ;
end;

procedure TfrmSortOrder.ShowPkgInfo(const NewPkgNo : Integer;const PkgSupplierCode : String) ;
var fPkgInfo  : TfPkgInfo;
    Prefix    : String ;
Begin
 With dm_Vis_Vida do
 Begin
  if Length(PkgSupplierCode) = 0 then
   Prefix  := '___'
    else
     Prefix := PkgSupplierCode ;
  OpenPkgInfo(NewPkgNo, Prefix) ;
  if PkgInfoExist then
  Begin
   fPkgInfo := TfPkgInfo.Create(nil) ;
   Try
    if Prefix = '___' then
    fPkgInfo.PanelTextInfo.Caption  :=
    'Paketnr: ' + IntToStr(NewPkgNo) + ' Prefix: ALLA, matchar ej, nedan lista visar alla paket med det eftersökta paketnumret och varför paket inte matchar.'
    else
    fPkgInfo.PanelTextInfo.Caption  :=
    'Paketnr: ' + IntToStr(NewPkgNo) + ' Prefix: ' + PkgSupplierCode + ', matchar ej, nedan lista visar alla paket med det eftersökta paketnumret och varför paket inte matchar.' ;

    fPkgInfo.ShowModal ;
    ClosePkgInfo ;
   Finally
    FreeAndNil(fPkgInfo) ;
   End ;
  End //if PkgInfoExist then
   else
   Begin
    if dmsSystem.ShowAvregErrorDialog = 1 then
     tfOKDia.Execute('Paketnr: ' + IntToStr(NewPkgNo) + ' kan inte identifieras') ;
   End;
 End ; // With dm_Vis_Vida do
End ;

procedure TfrmSortOrder.acSetStatusKlarAttKoraExecute(Sender: TObject);
begin
 with dmsSortOrder do
 Begin
  if cds_SchedulerTaskStatusField.Asinteger <> 2 then
  Begin
   if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;
   cds_SchedulerTaskStatusField.Asinteger  := 1 ;
   SaveAOKorOrder(Sender) ;
  End
  else
  ShowMessage('Körorder som avslutats kan inte aktiveras, kolla med förman.') ;
 End ;//With
end;

End.
