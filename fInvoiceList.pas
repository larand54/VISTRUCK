unit fInvoiceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Menus, dxDBTLCl, dxGrClms, SqlTimSt, dxEditor, dxExEdtr, dxEdLib,
  dxBarExtItems, dxBar, FMTBcd, DB, SqlExpr,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxLabel, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxGridExportLink, cxTextEdit, cxCurrencyEdit,
  cxCalc, cxLookAndFeels, cxDropDownEdit, cxContainer, cxMaskEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxGroupBox, cxRadioGroup, DateUtils,
  cxCheckComboBox, cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, CheckLst,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDBEdit, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Buttons, kbmMemTable, Math, cxDBLabel ;

type
  TfrmInvoiceList = class(TForm)
    lbLO_To_Invoice: TListBox;
    ActionList1: TActionList;
    acOpenInvoice: TAction;
    acRefresh: TAction;
    acQuickInvoice: TAction;
    acDeleteInvoice: TAction;
    acCreditInvoice: TAction;
    acGroupedInvoice: TAction;
    acAttestInvoice: TAction;
    acDeleteInvoiceWithNumber: TAction;
    acPrintClientsInvoice: TAction;
    dxBarManager1: TdxBarManager;
    pmPrint: TdxBarPopupMenu;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    acClientPackageSpecification: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    pmInvoiceGrid: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    acFakturaSvensk: TAction;
    dxBarButton6: TdxBarButton;
    acFakturaEngelsk: TAction;
    dxBarButton7: TdxBarButton;
    acFakturaEngelskLangd: TAction;
    acSpecificationSvensk: TAction;
    acSpecificationEngelsk: TAction;
    acSpecificationEngelskMedProducent: TAction;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acSpecifikationEngelskAktuellDimension: TAction;
    acTrpBrev: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acSpecifikatinUtanPaketNr: TAction;
    acSpecifikationIdahoStyle: TAction;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    acFakturaEngelskAgust: TAction;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    acFakturaEngelskLengthPlusNM3: TAction;
    dxBarButton16: TdxBarButton;
    acFakturaEngelskLangdPerPakettyp: TAction;
    dxBarButton17: TdxBarButton;
    acFakturaSvenskUtanMoms_DK: TAction;
    dxBarButton18: TdxBarButton;
    acFakturaEngelsk_DK: TAction;
    dxBarButton19: TdxBarButton;
    acSpecifikationSvensk_DK: TAction;
    dxBarButton20: TdxBarButton;
    acSpecifikatikonEngelsk_DK: TAction;
    dxBarButton21: TdxBarButton;
    acTrpBrvTest: TAction;
    acClose: TAction;
    Panel2: TPanel;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    Panel6: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel7: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    nfSearchLastNr: TcxTextEdit;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton8: TdxBarLargeButton;
    imglistActions: TImageList;
    Label5: TLabel;
    grdFakturaLevel1: TcxGridLevel;
    grdFaktura: TcxGrid;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acChangeLayout: TAction;
    Label6: TLabel;
    Label7: TLabel;
    pmShortCuts: TPopupMenu;
    Uppdatera1: TMenuItem;
    dxBarSubItem1: TdxBarSubItem;
    acPrintClientInvoiceAndSpecification: TAction;
    dxBarButton22: TdxBarButton;
    acEmailFakturaAndSpec: TAction;
    dxBarButton24: TdxBarButton;
    acPrintTRPOrder: TAction;
    acPrintTrpOrderAndSpec: TAction;
    dxBarButton25: TdxBarButton;
    Timer1: TTimer;
    acExportInvoiceSpec: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    acEmailaTrpBrev: TAction;
    dxBarButton26: TdxBarButton;
    acSpecSV_GroupByLoadNo: TAction;
    dxBarButton27: TdxBarButton;
    acPreViewInvoice: TAction;
    dxBarButton28: TdxBarButton;
    acPrintCreditInvoices: TAction;
    dxBarButton29: TdxBarButton;
    acPrintMeny: TAction;
    SnabbfakturaF21: TMenuItem;
    SnabbfakturaF22: TMenuItem;
    abortF51: TMenuItem;
    SkrivutF81: TMenuItem;
    KrediteraShiftF21: TMenuItem;
    SamlingsfakturaF101: TMenuItem;
    AttesteratjnsterShiftF101: TMenuItem;
    ExporterafakturaspecF111: TMenuItem;
    StngF121: TMenuItem;
    acKundSpecifika: TAction;
    dxBarButton30: TdxBarButton;
    lcSaljgrupp: TcxDBLookupComboBox;
    icBetalStatus: TcxDBImageComboBox;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    ccbInvoiceType: TcxCheckComboBox;
    grdFakturaDBBandedTableView1: TcxGridDBBandedTableView;
    grdFakturaDBBandedTableView1QuickInvoice: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1INT_INVNO: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1INV_DATE: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1CUSTOMER: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1INVOICE_NO: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1INVOICE_TYPE: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1INVOICE_KONTO: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1KURS: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1CURRENCY: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1AGENT: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1TRADING: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1FrsljOrgNr: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1VECKA: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1LAND: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1FrsljReg: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1SljGrupp: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1CustomerNo: TcxGridDBBandedColumn;
    cbTyp: TcxDBImageComboBox;
    cbKonto: TcxDBImageComboBox;
    cbVaruSlag: TcxDBImageComboBox;
    grdFakturaDBBandedTableView1InvoiceType: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1LO: TcxGridDBBandedColumn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    pmKredit: TdxBarPopupMenu;
    acDelKredit: TAction;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    nfSearchInvoiceNoII: TcxTextEdit;
    lcSR: TcxDBLookupComboBox;
    Label11: TLabel;
    grdFakturaDBBandedTableView1Kvantitet: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1NM3_Int: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1NM3_Ext: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Paket: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1momsvarde: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Produktvarde: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1ProduktVardeSEK: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1ProduktvardeUtanFrakt: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1ProduktVardeUtanFraktSEK: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1FraktValuta: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1LevORT: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1ErReferens: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Ordernr: TcxGridDBBandedColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    grdFakturaDBBandedTableView1DueDate: TcxGridDBBandedColumn;
    bSparaDueDate: TcxButton;
    acSave: TAction;
    acEMailaKundOchAgentFakturaOchSpec: TAction;
    dxBarButton33: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    acTransferInvoices: TAction;
    mtSelectedInvoices: TkbmMemTable;
    mtSelectedInvoicesInvoiceNo: TIntegerField;
    mtSelectedInvoicesInternalInvoiceNo: TIntegerField;
    icTransferredStatus: TcxDBImageComboBox;
    dxBarLargeButton11: TdxBarLargeButton;
    lcKund: TcxDBLookupComboBox;
    Label12: TLabel;
    teSaleOrgNr: TcxTextEdit;
    Label13: TLabel;
    grdFakturaDBBandedTableView1SHIPPER: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Postit: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1PO_prefix: TcxGridDBBandedColumn;
    acSaveMall: TAction;
    acSaveMallAs: TAction;
    acOpenMall: TAction;
    cds_mall: TFDQuery;
    ds_mall: TDataSource;
    cds_PropsInv: TFDQuery;
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
    ds_Props: TDataSource;
    bMallar: TcxButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    pmMallar: TPopupMenu;
    ppnamall1: TMenuItem;
    Sparamall1: TMenuItem;
    Sparamallsom1: TMenuItem;
    Label14: TLabel;
    acSetMallAsStrd: TAction;
    Sattsomstandardmall1: TMenuItem;
    cxDBLabel1: TcxDBLabel;
    cds_PropsInvUserID: TIntegerField;
    cds_PropsInvForm: TStringField;
    cds_PropsInvName: TStringField;
    cds_mallUserID: TIntegerField;
    cds_mallForm: TStringField;
    cds_mallVerkNo: TIntegerField;
    cds_mallOwnerNo: TIntegerField;
    cds_mallLOObjectType: TIntegerField;
    cds_mallName: TStringField;
    grdFakturaDBBandedTableView1Skatteupplag: TcxGridDBBandedColumn;
    Timer2: TTimer;
    Timer3: TTimer;
    acGotoLOnr: TAction;
    acGotoLOnr1: TMenuItem;
    Timer4: TTimer;
    Sparamall2: TMenuItem;
    cbFillterOnInvoiceDate: TcxDBCheckBox;
    acPrintFRInvoice: TAction;
    dxBarButton23: TdxBarButton;
    grdFakturaDBBandedTableView1Varukonto: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Fraktkonto: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Momskonto: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1Momskod: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1CountryName: TcxGridDBBandedColumn;
    grdFakturaDBBandedTableView1FraktValutaSEK: TcxGridDBBandedColumn;
    cbDelKredit: TcxDBCheckBox;
    grdFakturaDBBandedTableView1DelKredit: TcxGridDBBandedColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    acExportXLS: TAction;
    dxBarLargeButton12: TdxBarLargeButton;
    SaveDialog2: TSaveDialog;
    acShowVerifikatLogg: TAction;
    cxButton1: TcxButton;
    pmExport: TdxBarPopupMenu;
    dxBarButton37: TdxBarButton;
    acReCalcInvoice: TAction;
    grdFakturaDBBandedTableView1ArticleName: TcxGridDBBandedColumn;
    BKalkylera: TcxButton;
    BKontonr: TcxButton;
    acGetKontoNr: TAction;
    acFilterOnLO: TAction;
    dxBarButton38: TdxBarButton;
    acAssignMissingLoads: TAction;
    procedure rgConfirmedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchLastNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acOpenInvoiceExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acQuickInvoiceExecute(Sender: TObject);
    procedure acDeleteInvoiceExecute(Sender: TObject);
    procedure acCreditInvoiceExecute(Sender: TObject);
    procedure acGroupedInvoiceExecute(Sender: TObject);
    procedure acAttestInvoiceExecute(Sender: TObject);
    procedure acDeleteInvoiceWithNumberExecute(Sender: TObject);
    procedure acPrintClientsInvoiceExecute(Sender: TObject);
    procedure acClientPackageSpecificationExecute(Sender: TObject);
    procedure acFakturaSvenskExecute(Sender: TObject);
    procedure acFakturaEngelskExecute(Sender: TObject);
    procedure acFakturaEngelskLangdExecute(Sender: TObject);
    procedure acSpecificationSvenskExecute(Sender: TObject);
    procedure acSpecificationEngelskExecute(Sender: TObject);
    procedure acSpecificationEngelskMedProducentExecute(Sender: TObject);
    procedure acSpecifikationEngelskAktuellDimensionExecute(Sender: TObject);
    procedure acTrpBrevExecute(Sender: TObject);
    procedure acSpecifikatinUtanPaketNrExecute(Sender: TObject);
    procedure acSpecifikationIdahoStyleExecute(Sender: TObject);
    procedure acFakturaEngelskAgustExecute(Sender: TObject);
    procedure acFakturaEngelskLengthPlusNM3Execute(Sender: TObject);
    procedure acFakturaEngelskLangdPerPakettypExecute(Sender: TObject);
    procedure acFakturaSvenskUtanMoms_DKExecute(Sender: TObject);
    procedure acFakturaEngelsk_DKExecute(Sender: TObject);
    procedure acSpecifikationSvensk_DKExecute(Sender: TObject);
    procedure acSpecifikatikonEngelsk_DKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acCreditInvoiceUpdate(Sender: TObject);
    procedure acTrpBrvTestUpdate(Sender: TObject);
    procedure acAttestInvoiceUpdate(Sender: TObject);
    procedure acDeleteInvoiceUpdate(Sender: TObject);
    procedure acGroupedInvoiceUpdate(Sender: TObject);
    procedure acOpenInvoiceUpdate(Sender: TObject);
    procedure acPrintClientInvoiceAndSpecificationExecute(Sender: TObject);
    procedure acEmailFakturaAndSpecExecute(Sender: TObject);
    procedure acPrintTRPOrderExecute(Sender: TObject);
    procedure acPrintTrpOrderAndSpecExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acExportInvoiceSpecExecute(Sender: TObject);
    procedure acEmailaTrpBrevExecute(Sender: TObject);
    procedure acExportInvoiceSpecUpdate(Sender: TObject);
    procedure acSpecSV_GroupByLoadNoExecute(Sender: TObject);
    procedure acFakturaSvenskUpdate(Sender: TObject);
    procedure acFakturaEngelskUpdate(Sender: TObject);
    procedure acFakturaEngelskLangdUpdate(Sender: TObject);
    procedure acFakturaEngelskAgustUpdate(Sender: TObject);
    procedure acFakturaEngelskLengthPlusNM3Update(Sender: TObject);
    procedure acFakturaEngelskLangdPerPakettypUpdate(Sender: TObject);
    procedure acFakturaSvenskUtanMoms_DKUpdate(Sender: TObject);
    procedure acFakturaEngelsk_DKUpdate(Sender: TObject);
    procedure acPreViewInvoiceExecute(Sender: TObject);
    procedure acPrintCreditInvoicesExecute(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acKundSpecifikaExecute(Sender: TObject);
    procedure grdFakturaDBBandedTableView1DblClick(Sender: TObject);
    procedure acDelKreditExecute(Sender: TObject);
    procedure nfSearchInvoiceNoIIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSaveExecute(Sender: TObject);
    procedure acEMailaKundOchAgentFakturaOchSpecExecute(Sender: TObject);
    procedure acTransferInvoicesExecute(Sender: TObject);
    procedure acTransferInvoicesUpdate(Sender: TObject);
    procedure acSaveMallExecute(Sender: TObject);
    procedure acSaveMallAsExecute(Sender: TObject);
    procedure acOpenMallExecute(Sender: TObject);
    procedure cds_PropsInvAfterInsert(DataSet: TDataSet);
    procedure acSetMallAsStrdExecute(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure acGotoLOnrExecute(Sender: TObject);
    procedure teSaleOrgNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer4Timer(Sender: TObject);
    procedure cds_PropsInvFilterOrderDateChange(Sender: TField);
    procedure acPrintFRInvoiceExecute(Sender: TObject);
    procedure acExportXLSExecute(Sender: TObject);
    procedure acShowVerifikatLoggExecute(Sender: TObject);
    procedure acReCalcInvoiceExecute(Sender: TObject);
    procedure acShowVerifikatLoggUpdate(Sender: TObject);
    procedure acReCalcInvoiceUpdate(Sender: TObject);
    procedure acGetKontoNrExecute(Sender: TObject);
    procedure acFilterOnLOExecute(Sender: TObject);
    procedure acAssignMissingLoadsExecute(Sender: TObject);

  private
    { Private declarations }
    ExcelDir : String ;
    //Reskontra
    procedure AssignKontoNrToSelectedInvoices ;
    procedure OpenInvoiceAndAssignKontoNr(const IntInvNo  : Integer) ;
    procedure ReCalcSelectedInvoices ;
    procedure OpenInvoiceAndReCalc(const IntInvNo  : Integer) ;
    procedure OpenStandardMall(Sender: TObject);
    Function  OpenMall : Boolean ;
    Function  NoOfCheckedRowsComboFilter(combo : TcxCheckComboBox;var InvoiceType : Integer) : Integer ;
//    procedure TransferInvoiceToXorOLD(const Test : Boolean;const InvoiceNo, InternalInvoiceNo : Integer);
//    procedure TransferInvoiceToXor(const Test : Boolean;const InvoiceNo, InternalInvoiceNo : Integer);
    procedure TransferSelectedInvoicesToXOR ;
    procedure SelectMarkedInvoices ;
    procedure EMailaKundOchAgentFakturaOchSpecExecute(InternalInvoiceNo : Integer) ;
    Function  GetMarkedInvoiceAndLOToCredit : Boolean ;
    procedure OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst, DelKredit  : Integer) ;
    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    procedure RefreshInvoiceList (Sender: TObject;const SalesOrgNo : String;const InvoiceNo, InvoiceNoII, LONo, InternalInvoiceNo : Integer) ;
//    procedure RefreshInvoice(Sender: TObject;const InvoiceNo, LONo, InternalInvoiceNo : Integer);
    procedure DeleteInvoiceNoAndInvoice(Sender: TObject);
    procedure printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
    procedure GetMarkedInvoices ;
    procedure RemoveInvoiceFromList (const InternalInvoiceNo : Integer) ;
    Procedure ExportToWoodx ;
    procedure EmailFakturaAndSpecExecute(const InternalInvoiceNo : Integer) ;
    procedure EmailaTrpBrevExecute(const InternalInvoiceNo : Integer) ;
    procedure PrintKundSpecifikFaktura(const RapportNamn : String);
  public
    { Public declarations }
  end;

var
  frmInvoiceList: TfrmInvoiceList;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, UnitCRViewReport, dmcVidaInvoice,
  uConfirmCodeDialog, dmsVidaContact, fAttestInvoice,
  UnitCRPrintReport, UnitCRExportOneReport, uSendMapiMail,
  UnitCRPrintOneReport, dmc_ImportWoodx, MainU, dmsVidaSystem,
  uInvoiceWizard, uKundspecifika, uAddKundSpecifika, uShowInvTrfLog,
  uSokAvropMall, uEntryField , uFastReports, uVerifikationLogg;

{$R *.dfm}

procedure TfrmInvoiceList.rgConfirmedClick(Sender: TObject);
begin
{ if rgConfirmed.ItemIndex = 0 then
  fomDate.Enabled:= False
   else
    fomDate.Enabled:= True ; }
 acRefreshExecute(Sender) ;
end;

procedure TfrmInvoiceList.FormShow(Sender: TObject);
begin
// acRefreshExecute(Sender) ;
 With dmVidaInvoice do
 Begin
//  LoadUserProps (Self.Caption) ;
//  if (cds_PropsLengthVolUnitNo.IsNull) or (cds_PropsLengthVolUnitNo.AsInteger = 0) then
//   dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFaktura.Name, grdFakturaDBBandedTableView1) ;
  OpenStandardMall(Sender) ;
  if thisuser.userid = 8 then
  Begin
   BKontonr.Visible   := True ;
   BKalkylera.Visible := True ;
  End
  else
  Begin
   BKontonr.Visible   := False ;
   BKalkylera.Visible := False ;
  End ;
 End ;
end;

procedure TfrmInvoiceList.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoiceList(Sender, '', -1, -1, StrToIntDef(Trim(nfSearchLO.Text),0), -1);

  cdsInvoiceList.Locate('LO', StrToIntDef(Trim(nfSearchLO.Text),0), []) ;
  Timer1.Enabled:= True ;
 End ; //with
end;

procedure TfrmInvoiceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmInvoiceList.FormCreate(Sender: TObject);
//Var SalesGroup : Integer ;
begin
// SalesGroup               := -1 ;
 if (not Assigned(dmVidaInvoice)) then
 dmVidaInvoice  := TdmVidaInvoice.Create(nil);
 dmsSystem.AssignDMToThisWork('TfrmInvoiceList', 'dmVidaInvoice') ;
// peInvoiceType.ItemIndex  := 6 ;
// fomDate.Date             := Date - 15 ;


// bcFakturaStatus.ItemIndex:= 0 ;

// dmsContact.Load_SalesGroups(cbSalesGroup.Properties.Items) ;
// cbSalesGroup.Properties.Items.Insert(0,'ALLA') ;
// if cbSalesGroup.Properties.Items.Count > 0 then
// cbSalesGroup.ItemIndex:= 0 ;

 ExcelDir          := dmsSystem.Get_Dir('ExcelDir') ;

 ccbInvoiceType.Properties.Items.Clear ;
 ccbInvoiceType.Properties.Items.AddCheckItem('VIDA (VWK1)', '0') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('Proforma, fakturera senare', '1') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('Proforma, flytta paket', '2') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('INK?P', '3') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('USA (VWK2)', '4') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('FW (VWK4)', '5') ;
 ccbInvoiceType.Properties.Items.AddCheckItem('AGENT', '6') ;

// For x:= 0 to cbSalesGroup.Properties.Items.Count -1 do
// if integer(cbSalesGroup.Properties.Items.Objects[x]) = SalesGroup then
//  cbSalesGroup.ItemIndex:= x ;
end;

procedure TfrmInvoiceList.FormDestroy(Sender: TObject);
begin
  frmInvoiceList:= Nil ;

  if dmsSystem.DeleteAssigned('TfrmInvoiceList', 'dmVidaInvoice') = True then
  Begin
   dmVidaInvoice.Free ;
   dmVidaInvoice := Nil ;
  End ;
end;

procedure TfrmInvoiceList.DeleteInvoiceNoAndInvoice(Sender: TObject);
begin
 if dmVidaInvoice.cdsInvoiceListINVOICE_KONTO.AsString  = 'DEBIT' then
 Begin
 if MessageDlg('?r du s?ker p? att du vill ta bort fakturan?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   With dmVidaInvoice do
   Begin
     dmsConnector.StartTransaction ;
     Try
// taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
//     sq_SetLSInvoicedStatus.ExecSQL(false) ;
//Om Fakturan ?r av typ Proforma flytta paket
     if cdsInvoiceListInvoiceType.AsInteger = 2 then
     Begin
      sq_Delete_Confirmed_Load.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
      sq_Delete_Confirmed_Load.ExecSQL ;

      sq_CghInv_PkgNos.ParamByName('InternalInvoiceNo').AsInteger  := cdsInvoiceListInternalInvoiceNo.AsInteger ;
      sq_CghInv_PkgNos.ParamByName('Status').AsInteger             := 0 ;
      sq_CghInv_PkgNos.ExecSQL ;
     End ;

     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
     sq_DeleteInvoice.ExecSQL ;
     dmsConnector.Commit ;
     Except
      dmsConnector.Rollback ;
      ShowMessage('Misslyckades med att ta bort fakturan.') ;
     End ;
     cdsInvoiceList.Active:= False ;
     cdsInvoiceList.Active:= True ;

   End ;
  End ;
 End
 else
  ShowMessage('Kan inte ta bort kredit faktura.') ;
end;

procedure TfrmInvoiceList.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoiceList(Sender, '', StrToIntDef(Trim(nfSearchInvoiceNo.Text),0), -1, -1, -1);
  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(Trim(nfSearchInvoiceNo.Text),0), []) ;
  Timer3.Enabled  := True ;
 End ; //with
end;

procedure TfrmInvoiceList.printSamlingsFaktura (const InvoiceGroupNo : Integer) ;
Var FormCRViewReport : TFormCRViewReport ;
begin
 if InvoiceGroupNo < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SAML_FAKT.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(InvoiceGroupNo);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.nfSearchLastNrKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
Var InvoiceType, InternalInvoiceNo : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  InternalInvoiceNo := Get_InternalInvoiceNo (InvoiceType, StrToIntDef(nfSearchLastNr.Text,0)) ;
  if InternalInvoiceNo <> -1 then
  Begin
//   peInvoiceType.ItemIndex:= InvoiceType ;
   RefreshInvoiceList(Sender, '', -1, -1, -1, InternalInvoiceNo);
  End ;
//  else
//   ShowMessage('No match') ;
  Timer2.Enabled  := True ;
 End ; //with
end;

procedure TfrmInvoiceList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdFaktura.Name, grdFakturaDBBandedTableView1) ;
 CanClose:= True ;
//  With dmVidaInvoice do
//   SaveUserProps (Self.Caption) ;
end;

procedure TfrmInvoiceList.acOpenInvoiceExecute(Sender: TObject);
begin
 with dmVidaInvoice do
 Begin
   OpenInvoice(cdsInvoiceListInternalInvoiceNo.AsInteger, -1, -1) ;
 End ;//with dmVidaInvoice do
End ;

procedure TfrmInvoiceList.acRefreshExecute(Sender: TObject);
begin
 with dmVidaInvoice do
 Begin
 if (cds_PropsINVEndPeriod.IsNull) or (cds_PropsINVStartPeriod.IsNull) then
 Begin
  ShowMessage('Ange en period.') ;
  Exit ;
 End ;
 RefreshInvoiceList(Sender, '', -1, -1, -1, -1) ;
 grdFaktura.Setfocus ;
 End ;
end;

procedure TfrmInvoiceList.acQuickInvoiceExecute(Sender: TObject);
Var frmInvoice      : TfrmInvoice ;
    x               : Integer ;
//    fInvoiceWizard  : TfInvoiceWizard;
begin
 if MessageDlg('Vill du skapa snabbfaktura? ',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with  dmVidaInvoice do
 Begin
//Check and Compare that LO are valid to be invoiced together, if OK then
//Insert InvoiceHeader

   For x := 0 to cdsInvoiceDetail.FieldCount-1 do
   cdsInvoiceDetail.Fields.Fields[x].ReadOnly := False ;
   cdsInvoiceDetail.UpdateOptions.ReadOnly  := False ;

  cdsInvoiceHead.Active   := True ;
  cdsInvoiceLO.Active     := True ;
  cdsInvoiceDetail.Active := True ;
//  cdsOneLoad.Active:= True ;



//Insert Invoice Head
  dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := nil ;
  Try
  cdsInvoiceHead.Insert ;
  cdsInvoiceHeadResponsibleSeller.AsInteger                     := ThisUser.UserID ;
  Finally
   dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := dmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange ;
  End ;
  cdsInvoiceHeadTrading.AsInteger                               := 0 ;
  cdsInvoiceHeadQuickInvoice.AsInteger                          := 1 ;
  cdsInvoiceHeadInternalInvoiceNo.AsInteger                     := dmsConnector.NextMaxNo('InvoiceHeader');

  cdsInvoiceHeadDebit_Credit.AsInteger                          := 0 ;

  cdsInvoiceHeadInvoiceType.AsInteger                           := 0 ;
  cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(now) ;
  cdsInvoiceHeadSupplierNo.AsInteger                            := VIDA_WOOD_COMPANY_NO ; //Vida Wood
  cdsInvoiceHeadCustomerNo.AsInteger                            := -1 ;
  cdsInvoiceHeadAgentNo.AsInteger                               := -1 ;
  cdsInvoiceHeadAgentCommission.AsFloat                         := 0 ;
//  cdsInvoiceHeadSendInvoiceToAgent.AsInteger                    := -1 ;
  cdsInvoiceHeadPaymentTermsNo.AsInteger                        := -1 ;
  cdsInvoiceHeadCommissionPaidByCustomer.AsInteger              := -1 ;
  cdsInvoiceHeadFreightInDiscount.AsInteger                     := -1 ;
  cdsInvoiceHeadFreightInCommission.AsInteger                   := -1 ;
  cdsInvoiceHeadDiscount1.AsFloat                               := 1 ;
  cdsInvoiceHeadCurrencyName.AsString                           := '' ;

  cdsInvoiceHeadDeliveryTermsNo.AsInteger                       := -1 ;
  cdsInvoiceHeadDestinationNo.AsInteger                         := -1 ;
  cdsInvoiceHeadStatus.AsInteger                                := 0 ;
  cdsInvoiceHeadVAT_OnInvoice.AsInteger                         := 0 ;
  cdsInvoiceHeadSpecialMoms.AsInteger                           := 0 ;
{  cdsInvoiceHeadInvoiceText.AsVariant                           := sq_GetInvoiceHeadDataInvoiceText.AsVariant ;
  cdsInvoiceHeadPaymentText.AsVariant                           := sq_GetInvoiceHeadDataPaymentText.AsVariant ;

  cdsInvoiceHeadCurrencyNo.AsInteger                            := sq_GetInvoiceHeadDataCurrencyNo.AsInteger ;
  cdsInvoiceHeadIncome_Account.AsString                         := '' ;
  cdsInvoiceHeadCustomerRecivablesAccount.AsString              := '' ;
  cdsInvoiceHeadVAT_OnInvoice.AsInteger                         := 0 ;
  cdsInvoiceHeadCarrierName.AsString                            := sq_GetInvoiceHeadDataCarrierName.AsString ;
  cdsInvoiceHeadETD.AsSQLTimeStamp                              := sq_GetInvoiceHeadDataETD.AsSQLTimeStamp ;
  cdsInvoiceHeadETA.AsSQLTimeStamp                              := sq_GetInvoiceHeadDataETA.AsSQLTimeStamp ;
  cdsInvoiceHeadDestinationNo.AsInteger                         := sq_GetInvoiceHeadDataDestinationNo.AsInteger ;
  cdsInvoiceHeadClientBillingAddressNo.AsInteger                := sq_GetInvoiceHeadDataClientBillingAddressNo.AsInteger ;
  cdsInvoiceHeadAddressName.AsString                            := sq_GetInvoiceHeadDataBILL_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadAddressLine1.AsString                           := sq_GetInvoiceHeadDataAddressLine1.AsString ;
  cdsInvoiceHeadAddressLine2.AsString                           := sq_GetInvoiceHeadDataAddressLine2.AsString ;
  cdsInvoiceHeadAddressLine3.AsString                           := sq_GetInvoiceHeadDataAddressLine3.AsString ;
  cdsInvoiceHeadAddressLine4.AsString                           := sq_GetInvoiceHeadDataAddressLine4.AsString ;
  cdsInvoiceHeadStateOrProvince.AsString                        := sq_GetInvoiceHeadDataStateOrProvince.AsString ;
  cdsInvoiceHeadPostalCode.AsString                             := sq_GetInvoiceHeadDataPostalCode.AsString ;
  cdsInvoiceHeadCityName.AsString                               := sq_GetInvoiceHeadDataAddressCity.AsString ;
  cdsInvoiceHeadCountryName.AsString                            := sq_GetInvoiceHeadDataAddressCountry.AsString ;

  cdsInvoiceHeadAgentName.AsString                              := sq_GetInvoiceHeadDataAgentName.AsString ;
  cdsInvoiceHeadShipper.AsString                                := sq_GetInvoiceHeadDataShipper.AsString ;
  cdsInvoiceHeadCustomerName.AsString                           := sq_GetInvoiceHeadDataCustomerName.AsString ;
  cdsInvoiceHeadDeliveryTerm.AsString                           := sq_GetInvoiceHeadDataDeliveryTerm.AsString ;
  cdsInvoiceHeadPaymentDescription.AsString                     := sq_GetInvoiceHeadDataPayDesc.AsString ;
}
  cdsInvoiceHeadLanguageCode.AsInteger                          := 1 ;
//  cdsInvoiceHeadDestination.AsString                            := sq_GetInvoiceHeadDataDestination.AsString ;

  cdsInvoiceHeadCreatedUser.AsInteger                           := 2 ;
  cdsInvoiceHeadModifiedUser.AsInteger                          := 2 ;
  cdsInvoiceHeadDateCreated.AsSQLTimeStamp                      := DateTimeToSQLTimeStamp(Now) ;
  cdsInvoiceHeadInvoiced.AsInteger                              := 0 ;

{  cdsInvoiceHeadST_AddressName.AsString                         := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadST_AddressLine1.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1.AsString ;
  cdsInvoiceHeadST_AddressLine2.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2.AsString ;
  cdsInvoiceHeadST_AddressLine3.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3.AsString ;
  cdsInvoiceHeadST_AddressLine4.AsString                        := sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4.AsString ;
  cdsInvoiceHeadST_StateOrProvince.AsString                     := sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE.AsString ;
  cdsInvoiceHeadST_PostalCode.AsString                          := sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE.AsString ;
  cdsInvoiceHeadST_CityName.AsString                            := sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY.AsString ;
  cdsInvoiceHeadST_CountryName.AsString                         := sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY.AsString ;

  cdsInvoiceHeadAGENT_ADDRESS_NAME.AsString                     := sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString              := sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString                  := sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString                := sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString                      := sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY.AsString ;
  cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString                   := sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY.AsString ;
 }
  cdsInvoiceHead.Post ;

//  sq_GetInvoiceHeadData.Next ;

 // sq_GetInvoiceHeadData.Close ;

    cdsInvoiceLO.Insert ;
    cdsInvoiceLOInternalInvoiceNo.AsInteger              := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cdsInvoiceLOShippingPlanNo.AsInteger                 := dmsConnector.NextMinNo('LO_Neg') ; //Mars 18 2006

    cdsInvoiceLOOrderNoText.AsString                     := '' ;
    cdsInvoiceLOReference.AsString                       := '' ;
    cdsInvoiceLOOurReference.AsString                    := '' ;
    cdsInvoiceLOSalesMan.AsString                        := dmsContact.GetFullUserName(ThisUser.UserID) ;
    cdsInvoiceLOBookingNo.AsInteger                      := -1 ;
    cdsInvoiceLOTotalFreightCost.AsFloat                 := 0 ;
    cdsInvoiceLOFreightCostPerUnit.AsFloat               := 0 ;
    cdsInvoiceLOInvoiceAdditionAmount.AsFloat := 0 ;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger          := 0 ;
    cdsInvoiceLOInvoiceAdditionDescription.AsString      := '' ;

    cdsInvoiceLOCreatedUser.AsInteger                    := 2 ;
    cdsInvoiceLOModifiedUser.AsInteger                   := 2 ;
    cdsInvoiceLODateCreated.AsSQLTimeStamp               := DateTimeToSQLTimeStamp(Now) ;
    cdsInvoiceLO.Post ;


{    cdsInvoiceDetail.Insert ;
    cdsInvoiceDetailReference.AsString                  := '1' ;
    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
    cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
//    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := 1 ;
    cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additonal cost
    cdsInvoiceDetail.Post ;
}

{    fInvoiceWizard:= TfInvoiceWizard.Create(nil) ;
    Try
     fInvoiceWizard.ShowModal ;
    Finally
     FreeAndNil(fInvoiceWizard) ;
    End ; }



 frmInvoice:= TfrmInvoice.Create(Nil);
 Try
  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;
  cdsInvoiceLO.Filtered     := True ;
  cdsInvoiceDetail.Filter   := 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;
  cdsInvoiceDetail.Filtered := True ;

  frmInvoice.TabControl1.Tabs.Clear ;

// for x := 0 to ListBox1.Count - 1 do
  frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;

  frmInvoice.rgDebitCredit.Enabled:= True ;
  frmInvoice.ShowModal ;
 Finally
  FreeAndNil(frmInvoice) ;
  cdsInvoiceLO.Filtered     := False ;
  cdsInvoiceLO.Active       := False ;
  cdsInvoiceDetail.Filtered := False ;
  cdsInvoiceDetail.Active   := False ;
  cdsInvoiceShipTo.Active   := False ;
 End ;

  sq_GetLOData.Close ;
 End ; //with dmVidaInvoice do
End;

procedure TfrmInvoiceList.RemoveInvoiceFromList (const InternalInvoiceNo : Integer) ;
Begin
 With dmVidaInvoice do
 Begin
  cdsInvoiceList.Filter:= 'InternalInvoiceNo = '+inttostr(InternalInvoiceNo) ;
  cdsInvoiceList.Filtered:= True ;
  Try
  cdsInvoiceList.First ;
  While not cdsInvoiceList.Eof do
   cdsInvoiceList.Delete ;
  Finally
   cdsInvoiceList.Filtered:= False ;  
  End ;
 End ;
End ;

procedure TfrmInvoiceList.acDeleteInvoiceExecute(Sender: TObject);
begin
 if MessageDlg('Attester gjorda mot fakturan f?rsvinner om fakturan tas bort, vill du forts?tta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmVidaInvoice do
 Begin

 Try

 if MessageDlg('?r du s?ker p? att du vill ta bort fakturan?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    cdsInvoiceNumber.Active:= True ;
    if not cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceListInternalInvoiceNo.AsInteger, []) then
    Begin
     dmsConnector.StartTransaction ;
     Try
// taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
//     sq_SetLSInvoicedStatus.ExecSQL(false) ;
     sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
     sq_DeleteInvoice.ExecSQL ;
     dmsConnector.Commit ;
     RemoveInvoiceFromList (cdsInvoiceListInternalInvoiceNo.AsInteger)
     Except
      dmsConnector.Rollback ;
     End ;
//     cdsInvoiceList.Active:= False ;
//     cdsInvoiceList.Active:= True ;
    End
    else
    ShowMessage('Cannot delete, Invoice number assigned!') ;
   End ;
 Finally
  cdsInvoiceNumber.Active:= False ;
 End ;
 End ;//With
end;

procedure TfrmInvoiceList.acCreditInvoiceExecute(Sender: TObject);
Var Credit_Int_Inv_No : Integer ;
    Year, Month, Day  : Word ;
    DatumString       : String ;
begin
 with dmVidaInvoice do
 Begin
  DecodeDate(SQLTimeStampToDateTime(cdsInvoiceListINV_DATE.AsSQLTimeStamp), Year, Month, Day) ;
  DatumString := Copy(IntToStr(Year),3,2) ;
  if Month < 10 then
   DatumString  := DatumString + '0' + IntToStr(Month)
    else
     DatumString  := DatumString + IntToStr(Month) ;

  if Day < 10 then
   DatumString  := DatumString + '0' + IntToStr(Day)
    else
     DatumString  := DatumString + IntToStr(Day) ;

 Credit_Int_Inv_No:= 0 ;
 if MessageDlg('Vill du kreditera faktura nr '+
 cdsInvoiceListINVOICE_NO.AsString+' ?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0)
  = mrYes then
 Begin
 if cdsInvoiceListINVOICE_KONTO.AsString = 'DEBIT' then
 Begin
 Try
  cdsInvoice_Credited.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
  cdsInvoice_Credited.Active:= True ;
  cdsInvoiceNumber.Active:= True ;
 if cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceListInternalInvoiceNo.AsInteger, []) then
  Begin
   fInternalInvoiceNo:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
   if cdsInvoice_Credited.Locate('InternalInvoiceNo',cdsInvoiceListInternalInvoiceNo.AsInteger, []) then
   Begin
    ShowMessage('Info, fakturan ?r krediterad tidigare av ' + cdsInvoice_CreditedCreatedUser.AsString + '  Se internt fakturanr : ' + cdsInvoice_CreditedNewInternalInvoiceNo.AsString) ;
   End ;
   Credit_Int_Inv_No:= CreateCreditInvoiceByCopyDebitInvoice(cdsInvoiceListINVOICE_NO.AsInteger, cdsInvoiceListInternalInvoiceNo.AsInteger, DatumString) ;

  End
  else
   ShowMessage('Prelimin?ra fakturor kan inte krediteras.') ;

 Finally

  cdsInvoiceLO.Filtered       := False ;
  cdsInvoiceLO.Active         := False ;
  cdsInvoiceDetail.Filtered   := False ;
  cdsInvoiceDetail.Filter     := '';
  cdsInvoiceDetail.Active     := False ;
  cdsInvoice_Credited.Active  := False ;
  cdsInvoiceNumber.Active     := False ;
  cdsInvoiceShipTo.Active     := False ;

  if Credit_Int_Inv_No > 0 then
  Begin
   OpenInvoice(Credit_Int_Inv_No, -1, -1) ;
  End ; 
 End ;

 End
  else
   ShowMessage('Kan inte kreditera en kreditfaktura.') ;
 End ;
 End ;// with
end;

procedure TfrmInvoiceList.GetMarkedInvoices ;
 Var y, i, RecIDX   : Integer ;
 Save_Cursor        : TCursor;
 ColIdx             : Integer ;
 InternalInvoiceNo  : Integer ;
 Duplicate          : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmVidaInvoice do
 Begin
  lbLO_To_Invoice.Items.Clear ;
  grdFakturaDBBandedTableView1.BeginUpdate ;
  grdFakturaDBBandedTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdFakturaDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdFakturaDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdFakturaDBBandedTableView1.DataController.GetItemByFieldName('InternalInvoiceNo').Index;
    InternalInvoiceNo   := grdFakturaDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
    Begin
     if IntToStr(InternalInvoiceNo) = lbLO_To_Invoice.Items[y] then
     Duplicate := True ;
    End ;
    if Duplicate = False then
    Begin
     lbLO_To_Invoice.Items.Add(IntToStr(InternalInvoiceNo)) ;
    End ;

   End ;//for y

 Finally
  grdFakturaDBBandedTableView1.DataController.EndLocate ;
  grdFakturaDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;


procedure TfrmInvoiceList.acGroupedInvoiceExecute(Sender: TObject);
Var
    Roll_Back     : Boolean ;
    Save_Cursor   : TCursor;
    InvoiceGroupNo, x : Integer ;
begin
 if MessageDlg('Vill skapa samlingsfaktura? ',
 mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
 with dmVidaInvoice do
 begin
  Roll_Back:= False ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBBandedTableView1.DataController.DataSet.DisableControls ;
  Try
  GetMarkedInvoices ;

{  lbLO_To_Invoice.Items.Clear ;
  DataSource.DataSet.DisableControls;
//Insert LO # to ListBox list
  for x := 0 to (SelectedCount - 1) do
  begin
   Duplicate := False ;
//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant

   For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
   Begin
    if cdsInvoiceListINVOICE_NO.AsString = lbLO_To_Invoice.Items[y] then
    Duplicate := True ;
   End ;
   if Duplicate = False then
   Begin
    lbLO_To_Invoice.Items.Add(cdsInvoiceListInternalInvoiceNo.AsString) ;
   End ;
  end; //for.. }

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage('Minst en faktura m?ste v?ljas.') ;
    Exit ;
   End ;



   Try
   InvoiceGroupNo := dmsConnector.NextMaxNo('InvoiceGroup') ;//dmsConnector.NextIDinTable('InvoiceGroup') ;
   dmsConnector.StartTransaction;
   Try
   cds_InvoiceInGroup.Active  := True ;
   cds_InvoiceGroup.Active    := True ;
   cds_InvoiceGroup.Insert ;
   cds_InvoiceGroupInvoiceGroupNo.AsInteger     := InvoiceGroupNo ;//dmsConnector.NextMaxNo('InvoiceGroup');//dmsConnector.NextIDinTable('InvoiceGroup') ;
   cds_InvoiceGroupCreatedUser.AsInteger        := ThisUser.UserID ;
   cds_InvoiceGroupModifiedUser.AsInteger       := ThisUser.UserID ;
   cds_InvoiceGroupCreatedDate.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
   cds_InvoiceGroupModifiedDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
//   cds_InvoiceGroupNote.AsVariant:= '' ;
   cds_InvoiceGroup.Post ;

   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    cds_InvoiceInGroup.Insert ;
    cds_InvoiceInGroupInvoiceGroupNo.AsInteger    := cds_InvoiceGroupInvoiceGroupNo.AsInteger ;
    cds_InvoiceInGroupInternalInvoiceNo.AsInteger := StrToInt(lbLO_To_Invoice.Items[x]) ;
    cds_InvoiceInGroup.Post;
   End ;

   if cds_InvoiceGroup.ChangeCount > 0 then
    Roll_Back:=  cds_InvoiceGroup.ApplyUpdates(0) > 0 ;
    if Roll_Back = False then cds_InvoiceGroup.CommitUpdates ;

   if cds_InvoiceInGroup.ChangeCount > 0 then
    Roll_Back:= cds_InvoiceInGroup.ApplyUpdates(0) > 0 ;
    if Roll_Back = False then cds_InvoiceInGroup.CommitUpdates ;

   Try
   sp_vida_Populate_SamFaktura.ParamByName('@InvGroupNo').AsInteger:= InvoiceGroupNo ;
   sp_vida_Populate_SamFaktura.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


   if Roll_Back then
   Begin
    dmsConnector.Rollback ;
    ShowMessage('Error skapa samlingsfaktura, rolling back.') ;
   End
   else
   Begin
    dmsConnector.Commit ;
    if MessageDlg('SamlingsfakturaNr ' + cds_InvoiceGroupInvoiceGroupNo.AsString + ' skapad. Vill du skriva ut?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     printSamlingsFaktura (InvoiceGroupNo) ;
   End ;

   except
    dmsConnector.Rollback ;
    raise;
   end;
   Finally
    cds_InvoiceInGroup.Active:= False ;
    cds_InvoiceGroup.Active:= False ;
   End ;


   Finally
    grdFakturaDBBandedTableView1.DataController.DataSet.EnableControls ;
    grdFakturaDBBandedTableView1.Controller.ClearSelection ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; //with
end;

procedure TfrmInvoiceList.acAttestInvoiceExecute(Sender: TObject);
Var x                 : Integer ;
    Save_Cursor       : TCursor;
    frmAttestInvoice  : TfrmAttestInvoice;
begin
 with dmVidaInvoice do
 Begin
  mt_AttestRow.Active   := False ;
  mt_AttestRow.Active   := True ;
  mt_InvDtl_Att.Active  := False ;
  mt_InvDtl_Att.Active  := True ;
  
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//ta bort next och prior, ladda inte allt, g?r det att undvika
 frmAttestInvoice:= TfrmAttestInvoice.Create(Nil);
// cdsInvoiceShipToAddress.DataSource:= dsrcInvoiceHead_II ;
 Try

//  if peInvoiceType.ItemIndex = 3 then
//   frmAttestInvoice.LCustomer.Caption:= 'Leverant?r:'
//    else
//     frmAttestInvoice.LCustomer.Caption:= 'Kund:' ;
  if cdsInvoiceListInvoiceType.AsInteger = 3 then
   frmAttestInvoice.LCustomer.Caption:= 'Leverant?r:'
    else
     frmAttestInvoice.LCustomer.Caption:= 'Kund:' ;

  frmAttestInvoice.cbInvoiceType.ItemIndex  := cdsInvoiceListInvoiceType.AsInteger ;
//  frmAttestInvoice.cbInvoiceType.ReadOnly   := True ;
  mt_AttestRow.Active                   := True ;
  mt_InvDtl_Att.Active                  := True ;
  cdsInvoiceShipTo.Active               := True ;
  frmAttestInvoice.TabControl1.Tabs.Clear ;

//  sq_InvoiceHead_II.ParamByName('InvoiceType').AsInteger:= peInvoiceType.ItemIndex ;
  cdsInvoiceHead_II.Active:= False ;
  OpenInvoiceHeaderForAttest(cdsInvoiceListInternalInvoiceNo.AsInteger, cdsInvoiceListInvoiceType.AsInteger {peInvoiceType.ItemIndex}) ;
  cdsInvoiceHead_II.Active:= True ;
//  cdsInvoiceHead_II.Filter:= 'InvoiceType = '+IntToStr(peInvoiceType.ItemIndex) ;
//  cdsInvoiceHead_II.Filtered:= True ;
//  if cdsInvoiceHead_II.FindKey([cdsInvoiceListInternalInvoiceNo.AsInteger]) then
  if cdsInvoiceHead_II.RecordCount > 0 then
  Begin
  cdsInvoiceLO.Close ;
  cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;


  cdsInvoiceLO.Active:= True ;

  cdsInvoiceLO.First ;
  While not cdsInvoiceLO.Eof do
  Begin
   frmAttestInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;

  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHead_IIInternalInvoiceNo.AsString+
  ' AND ShippingPlanNo = '+frmAttestInvoice.TabControl1.Tabs[0] ;
  cdsInvoiceLO.Filtered:= True ;



  dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= False ;
  dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo').AsInteger:= dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
//  dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('ShippingPlanNo').AsInteger:= 0 ;  
  dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= True ;

  dmVidaInvoice.cds_InvDtl_Att.Close ;
  dmVidaInvoice.cds_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
//  dmVidaInvoice.sq_InvDtl_Att.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(frmAttestInvoice.TabControl1.Tabs[frmAttestInvoice.TabControl1.TabIndex]) ;
//  dmVidaInvoice.sq_InvDtl_Att.ParamByName('Sequensno').AsInteger:=
//  dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  cds_InvDtl_Att.Active:= True ;
  While not cds_InvDtl_Att.Eof do
  Begin
   mt_InvDtl_Att.Insert ;
   For x := 0 to 15 do
   mt_InvDtl_Att.Fields.Fields[x].AsVariant:= cds_InvDtl_Att.Fields.Fields[x].AsVariant ;
   mt_InvDtl_AttSequensNo.AsInteger:= 0 ;
   mt_InvDtl_AttChecked.AsInteger:= 0 ;
   mt_InvDtl_Att.Post ;
   cds_InvDtl_Att.next ;
  End ;

  sq_GetAttestRow.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
  sq_GetAttestRow.Open ;
  While not sq_GetAttestRow.Eof do
  Begin
   mt_AttestRow.Insert ;
   For x := 0 to 3 do
    mt_AttestRow.Fields.Fields[x].AsVariant:= sq_GetAttestRow.Fields.Fields[x].AsVariant ;
    mt_AttestRow.Post ;
   sq_GetAttestRow.Next ;
  End ;

  sq_GetAttestRow.Close ;


  frmAttestInvoice.ShowModal ;

  End
   else
    ShowMessage('Kan inte fokusera internal fakturanr '+cdsInvoiceListInternalInvoiceNo.AsString) ;

 Finally
  fInternalInvoiceNo                  := -1 ;
//  cdsInvoiceShipToAddress.DataSource  := dsrcInvoiceHead ;

  cdsInvoiceLO.Filtered               := False ;
  cdsInvoiceLO.Active                 := False ;
  cds_InvDtl_Att.Active               := False ;
  cdsInvoiceShipTo.Active             := False ;
  mt_InvDtl_Att.Active                := False ;
  mt_AttestRow.Active                 := False ;
  FreeAndNil(frmAttestInvoice) ;
  Screen.Cursor                       := Save_Cursor;  { Always restore to normal }
 End ;

 End ; // with dmVidaInvoice do
end;


procedure TfrmInvoiceList.acDeleteInvoiceWithNumberExecute(
  Sender: TObject);
var frmConfirmCodeDialog: TfrmConfirmCodeDialog;
begin
 if (dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger = 3135)
 or (dmVidaInvoice.cdsInvoiceListInvoiceType.AsInteger = 3) then
 Begin
 if MessageDlg('Attester gjorda mot fakturan f?rsvinner om fakturan tas bort, vill du forts?tta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
     Exit ;

 frmConfirmCodeDialog:= TfrmConfirmCodeDialog.Create(Nil) ;
 Try
 if frmConfirmCodeDialog.ShowModal = mrOk then
 Begin
  if Trim(frmConfirmCodeDialog.eConfirmationCode.Text) = '19vida100' then
  Begin
   if dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0 then
   Begin
    if MessageDlg('Fakturan har ett nummer tilldelat, vill du ta bort det och fakturan?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DeleteInvoiceNoAndInvoice(Sender) ;
   End
   else
    DeleteInvoiceNoAndInvoice(Sender) ;
  End
   else
    ShowMessage('Wrong confirmation code, please ask your supervisor for help.') ;
 End ;
 Finally
  FreeAndNil(frmConfirmCodeDialog) ;//.Free ;
 End ;
 End
 else
 ShowMessage('Endast VIDA_NUM fakturor kan tas bort.') ;
end;


procedure TfrmInvoiceList.acPrintClientsInvoiceExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    A                       : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType:= 1 ;
 Try
  SetLength(A, 1) ;
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
//const OverRideNoOfCopies, ClientNo, DocTyp : Integer;const A: array of variant);
  FormCRPrintReport.CreateCo(1, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cFaktura, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ; //.Free ;
 End ;
end;

procedure TfrmInvoiceList.acClientPackageSpecificationExecute(Sender: TObject);
Var FormCRPrintReport   : TFormCRPrintReport;
    A                   : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType                := 1 ;
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRPrintReport.CreateCo(1,dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cPkgSpec, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaSvenskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.acFakturaEngelskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmInvoiceList.acFakturaEngelskLangdExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_l?ngd_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;


procedure TfrmInvoiceList.acSpecificationSvenskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;


procedure TfrmInvoiceList.acSpecificationEngelskExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;


procedure TfrmInvoiceList.acSpecificationEngelskMedProducentExecute(
  Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_PROD_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmInvoiceList.acSpecifikationEngelskAktuellDimensionExecute(Sender: TObject);
  Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ACT_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmInvoiceList.acTrpBrevExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger) ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('TRP_BREV.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmInvoiceList.acSpecifikatinUtanPaketNrExecute(
  Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_NOPKGNO.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acSpecifikationIdahoStyleExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_IDAHO_VER2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ; 
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaEngelskAgustExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_IDAHO_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmInvoiceList.acFakturaEngelskLengthPlusNM3Execute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_l?ngd_plus_NM3_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLangdPerPakettypExecute(Sender: TObject);
 Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_PKTTYP_NOTE.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;


procedure TfrmInvoiceList.acFakturaSvenskUtanMoms_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaEngelsk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acSpecifikationSvensk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acSpecifikatikonEngelsk_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPECIFICATION_VER2_dk.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInvoiceList.acCreditInvoiceUpdate(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  acCreditInvoice.Enabled:=  (cdsInvoiceListInvoiceType.AsInteger = 0) and (cdsInvoiceListINVOICE_NO.AsInteger > 0) ;
 End ;
end;

procedure TfrmInvoiceList.acTrpBrvTestUpdate(Sender: TObject);
begin
 acTrpBrvTest.Enabled:= ThisUser.UserID = 8 ;
end;

procedure TfrmInvoiceList.acAttestInvoiceUpdate(Sender: TObject);
begin
 acAttestInvoice.Enabled:= 
  ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0) or (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull = False))
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acDeleteInvoiceUpdate(Sender: TObject);
begin
 acDeleteInvoice.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 AND ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger < 1) or (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull))
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acGroupedInvoiceUpdate(Sender: TObject);
begin
 acGroupedInvoice.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.Controller.SelectedRecordCount > 0)
// and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0)
 AND ((dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger > 0) AND (dmVidaInvoice.cdsInvoiceListINVOICE_NO.IsNull = False)) ;
end;

procedure TfrmInvoiceList.acOpenInvoiceUpdate(Sender: TObject);
begin
 acOpenInvoice.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acPrintClientInvoiceAndSpecificationExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    A                       : array of variant;
    RoleType                : Integer ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 RoleType                := 1;
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
//const OverRideNoOfCopies, ClientNo, DocTyp : Integer;const A: array of variant);
  FormCRPrintReport.CreateCo(0, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger,     RoleType, cFaktura, A) ;
  FormCRPrintReport.CreateCo(0,dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger,     RoleType, cPkgSpec, A) ;
 Finally
  FreeAndNil(FormCRPrintReport) ;//.Free ;
 End ;
end;

procedure TfrmInvoiceList.acEmailFakturaAndSpecExecute(Sender: TObject);
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
 GetMarkedInvoices ;
 For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
 Begin
  EmailFakturaAndSpecExecute(StrToInt(lbLO_To_Invoice.Items[x])) ;
 End ;

(* MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas f?r klienten, ange adressen i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString
  +' - Invoice/package specification. InvoiceNo: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas f?r klienten!') ;
   *)
end;

procedure TfrmInvoiceList.acPrintTRPOrderExecute(Sender: TObject);
var FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 dmsContact.InsertUserIssueReport (ThisUser.UserID, dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger) ;

 FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
 Try
//CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRPrintOneReport.CreateCo(1, False, False, A, 'TRP_BREV.RPT')

 Finally
  FreeAndNil(FormCRPrintOneReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acPrintTrpOrderAndSpecExecute(Sender: TObject);
begin
 acPrintTRPOrderExecute(Sender) ;
 acClientPackageSpecificationExecute(Sender) ;
end;

procedure TfrmInvoiceList.Timer1Timer(Sender: TObject);
begin
 nfSearchLO.SetFocus ;
 nfSearchLO.SelectAll ;
 Timer1.Enabled:= False ;
end;

procedure TfrmInvoiceList.acExportInvoiceSpecExecute(Sender: TObject);
begin
 dm_ImportWoodx:= Tdm_ImportWoodx.Create(nil);
 Try
 With dm_ImportWoodx do
 Begin
//  DeliveryMessageNumber:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsString ;
  Try
   ExportDeliveryWoodMessage(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger) ;
   ExportToWoodx ;
  Except
  End ;
 End ;
 Finally
  FreeAndNil(dm_ImportWoodx) ;
 End ;
end;

Procedure TfrmInvoiceList.ExportToWoodx ;
//Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.InvoiceNo             := dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsInteger ;
  XMLImportExport.InternalInvoiceNo     := dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  XMLImportExport.CustomerNo            := dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger ;  
  XMLImportExport.tsImport.TabVisible   := False ;
   if XMLImportExport.ShowModal = mrOK then
   Begin
//    DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
   End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfrmInvoiceList.acEmailaTrpBrevExecute(Sender: TObject);
Var x                       : Integer ;
begin
 GetMarkedInvoices ;
 For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
 Begin
  EmailaTrpBrevExecute(StrToInt(lbLO_To_Invoice.Items[x])) ;
 End ;
(*
// MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 MailToAddress:= dmsContact.GetEmailAddressForSpeditorByLO(dmVidaInvoice.cdsInvoiceListLO.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas f?r klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin


 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);

  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cTrpBrev, A, ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;



 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Transportbrev/Paketspecifikation bifogad. '
  +LF+''
  +'Transport letter/Package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas f?r klienten!') ;
   *)
end;

procedure TfrmInvoiceList.EmailFakturaAndSpecExecute(const InternalInvoiceNo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddressAgent,
    MailToAddressKund,    
    MailToAddress           : String ;
begin
 if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
 Begin

{ if (not dmVidaInvoice.cdsInvoiceListAgentNo.IsNull) and
 (dmVidaInvoice.cdsInvoiceListAgentNo.AsInteger > 0) then
 MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListAgentNo.AsInteger)
 else
 MailToAddress:= dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ; }

 if (not dmVidaInvoice.cdsInvoiceListAgentNo.IsNull) and
 (dmVidaInvoice.cdsInvoiceListAgentNo.AsInteger > 0) then
 MailToAddressAgent := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListAgentNo.AsInteger) ;

 MailToAddressKund  := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;

 if (Length(MailToAddressAgent) > 0) and (Length(MailToAddressKund) > 0) then
 MailToAddress := MailToAddressAgent + MailToAddressKund
 else
 if (Length(MailToAddressAgent) > 0) then
 MailToAddress := MailToAddressAgent
 else
 if (Length(MailToAddressKund) > 0) then
 MailToAddress := MailToAddressKund ;


 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas f?r klienten, ange adressen i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString
  +' - Invoice/package specification. InvoiceNo: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas f?r klienten!') ;
 End ;//if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
end;

procedure TfrmInvoiceList.EmailaTrpBrevExecute(const InternalInvoiceNo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
begin
 if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
 Begin
 MailToAddress:= dmsContact.GetEmailAddressForSpeditorByLO(dmVidaInvoice.cdsInvoiceListLO.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas f?r klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin


 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);

  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cTrpBrev, A, ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;



 SetLength(Attach, 2);
 Attach[0]        := ExcelDir + 'Transportbrev '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString,
  'Transportbrev/Paketspecifikation bifogad. '
  +LF+''
  +'Transport letter/Package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas f?r klienten!') ;
 End ;//if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
end;

procedure TfrmInvoiceList.acExportInvoiceSpecUpdate(Sender: TObject);
begin
 acExportInvoiceSpec.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acSpecSV_GroupByLoadNoExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('SPECIFICATION_SV_GrpLast_VER2.rpt') ;
  if FormCRViewReport.ReportFound then
  Begin
   FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
   FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
   FormCRViewReport.CRViewer91.ViewReport ;
   FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfrmInvoiceList.acFakturaSvenskUpdate(Sender: TObject);
begin
 acFakturaSvensk.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskUpdate(Sender: TObject);
begin
 acFakturaEngelsk.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLangdUpdate(Sender: TObject);
begin
 acFakturaEngelskLangd.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskAgustUpdate(Sender: TObject);
begin
 acFakturaEngelskAgust.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLengthPlusNM3Update(
  Sender: TObject);
begin
 acFakturaEngelskLengthPlusNM3.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelskLangdPerPakettypUpdate(
  Sender: TObject);
begin
 acFakturaEngelskLangdPerPakettyp.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaSvenskUtanMoms_DKUpdate(
  Sender: TObject);
begin
 acFakturaSvenskUtanMoms_DK.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acFakturaEngelsk_DKUpdate(Sender: TObject);
begin
 acFakturaEngelsk_DK.Enabled:= (ThisUser.UserID = 8) or (ThisUser.UserID = 4) ;
end;

procedure TfrmInvoiceList.acPreViewInvoiceExecute(Sender: TObject);
var
  ReportName : String ;
  promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
  PrinterSetup : Integer ;
  FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 dmsContact.GetClientDocPrefs ( dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura {DocTyp}, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
 if (Length(ReportName) < 4) then
 Begin
  ShowMessage('Rapporten finns inte upplagd p? klienten') ;
  Exit ;
 End ; //if

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo(ReportName) ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;



procedure TfrmInvoiceList.acPrintCreditInvoicesExecute(Sender: TObject);
Var FormCRPrintReport       : TFormCRPrintReport;
    IntInvNo, Client        : array of variant;
    x, RoleType             : Integer ;
begin
 x := 0 ;
 if MessageDlg('Vill du skriva ut alla kreditfakturor gjorda under 2008?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmVidaInvoice do
 Begin
  sq_CreditInv.Open ;
  Try
  sq_CreditInv.First ;
  While not sq_CreditInv.Eof do
  Begin
    SetLength(IntInvNo, x + 1) ;
    SetLength(Client, x + 1) ;
    IntInvNo[x] := sq_CreditInvInternalInvoiceNo.AsInteger ;
    Client[x]   := sq_CreditInvCustomerNo.AsInteger ;
    x := succ(x) ;
  sq_CreditInv.Next ;
  End ;//While
  Finally
   sq_CreditInv.Close ;
  End ;

  if High(IntInvNo) > 0 then
  Begin
   FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
   RoleType:= 1 ;
   Try
    FormCRPrintReport.CreateCoForPrintMany(1, dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, RoleType, cFaktura, IntInvNo, Client) ;
   Finally
    FreeAndNil(FormCRPrintReport) ; //.Free ;
   End ;
  End ;

 End ;//With
end;

procedure TfrmInvoiceList.acPrintMenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300,200) ;
end;

procedure TfrmInvoiceList.acKundSpecifikaExecute(Sender: TObject);
var fAddKundSpecifika: TfAddKundSpecifika;
begin
 with dmVidaInvoice do
 Begin
  dmsSystem.Open_ClientPrefDocs ;
  fAddKundSpecifika:= TfAddKundSpecifika.Create(nil) ;
  try
   if fAddKundSpecifika.ShowModal = mrOK then
    PrintKundSpecifikFaktura(dmsSystem.cdsClientPrefDocsRAPPORT.AsString) ;
  finally
   FreeAndNil(fAddKundSpecifika) ;
   dmsSystem.Close_ClientPrefDocs ;
  end;
 End ;//With
end;

procedure TfrmInvoiceList.PrintKundSpecifikFaktura(const RapportNamn : String);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo(RapportNamn) ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

(*
procedure TfrmInvoiceList.RefreshInvoiceList (Sender: TObject;const SalesOrgNo : String;const InvoiceNo, InvoiceNoII, LONo, InternalInvoiceNo : Integer) ;
Var
 Save_Cursor  : TCursor;
 InvoiceType  : Integer ;
begin
// with daMoLM1 do
 with  dmVidaInvoice do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBBandedTableView1.BeginUpdate ;
//  grdInvoice.DataSource.DataSet.DisableControls ;
  Try


  if cds_PropsInv.State = dsBrowse then
   cds_PropsInv.Edit ;

  if Length(icBetalStatus.Text) = 0 then
   cds_PropsInvStatus.Clear ;

  if Length(lcSaljgrupp.Text) = 0 then
   cds_PropsInvSalesPersonNo.Clear ;

  if Length(lcSR.Text) = 0 then
   cds_PropsInvSalesRegionNo.Clear ;

  if Length(lcKund.Text) = 0 then
   cds_PropsInvClientNo.Clear ;

  if Length(cbTyp.Text) = 0 then
   cds_PropsInvBarCodeNo.Clear ;

  if Length(cbKonto.Text) = 0 then
   cds_PropsInvBookingTypeNo.Clear ;

  if Length(cbVaruSlag.Text) = 0 then
   cds_PropsInvCopyPcs.Clear ;

  if Length(icTransferredStatus.Text) = 0 then
   cds_PropsInvGradeStampNo.Clear ;

  if cds_PropsInv.State in [dsEdit, dsInsert] then
   cds_PropsInv.Post ;


  cdsInvoiceList.Active:= False ;
  cdsInvoiceList.Close ;
  cdsInvoiceList.SQL.Clear ;

  cdsInvoiceList.SQL.Add('SELECT Distinct IH.QuickInvoice, IH.InternalInvoiceNo, IH.InvoiceDate AS INV_DATE, ') ;
  cdsInvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.Shipper AS SHIPPER,') ;

  cdsInvoiceList.SQL.Add('inos.InvoiceNo AS INVOICE_NO,') ;

   cdsInvoiceList.SQL.Add('CASE') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''VIDA (VWK1)''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, fakturera senare''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA, flytta paket''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 3 THEN '+'''INK?P''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 4 THEN '+'''USA (VWK2)''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 5 THEN '+'''FW (VWK4)''') ;
   cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;

   cdsInvoiceList.SQL.Add('CASE') ;
   cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;

  cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
  cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
  cdsInvoiceList.SQL.Add('	WHERE') ;
  cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
  cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
  cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
  cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS KURS,') ;

  cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;


  cdsInvoiceList.SQL.Add('(Select SUM(invd.Volume_OrderUnit) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND invd.TypeOfRow < 3) AS Kvantitet,') ; // Prisgrundande volym

  cdsInvoiceList.SQL.Add('(Select SUM(invd.ActualNetM3) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND invd.TypeOfRow < 3) AS AM3,') ; // Aktuell m3

  cdsInvoiceList.SQL.Add('(Select SUM(invd.intNM3) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('and (invd.ArticleNo = 1)) AS NM3_Int,') ; // Intern NM3

  cdsInvoiceList.SQL.Add('(Select SUM(invd.NominalM3) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('and (invd.ArticleNo = 1)) AS NM3_Ext,') ; // Extern NM3

  cdsInvoiceList.SQL.Add('(Select SUM(invd.NoOfPkgs) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND invd.TypeOfRow < 3) AS Paket,') ; // Paket

  cdsInvoiceList.SQL.Add('CASE WHEN ih.VAT_OnInvoice = 0 THEN') ;
  cdsInvoiceList.SQL.Add('(Select SUM(invd.VatValue) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('and ((invd.ArticleNo = 1) or (invd.ArticleNo = 3)))') ; // moms v?rde
  cdsInvoiceList.SQL.Add('ELSE 0 END AS momsvarde,') ;


//Belopp Valuta
  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND ((invd.ArticleNo = 1 or invd.ArticleNo = 3) OR (TypeOfRow = 2))) AS Produktvarde,') ; // Produktv?rde

//Belopp SEK
  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND ((invd.ArticleNo = 1 or invd.ArticleNo = 3) OR (TypeOfRow = 2)))') ;
  cdsInvoiceList.SQL.Add('*') ;
  cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
  cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
  cdsInvoiceList.SQL.Add('	WHERE') ;
  cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
  cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
  cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
  cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS ProduktVardeSEK,') ;

  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValueWOFreight) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND (invd.ArticleNo = 1 or invd.ArticleNo = 3)) AS ProduktvardeUtanFrakt,') ; // Produktv?rdeUtanFrakt


  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValueWOFreight) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND (invd.ArticleNo = 1 or invd.ArticleNo = 3))') ;
  cdsInvoiceList.SQL.Add('*') ;
  cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
  cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
  cdsInvoiceList.SQL.Add('	WHERE') ;
  cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
  cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
  cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
  cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS ProduktVardeUtanFraktSEK,') ;

  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND (invd.ArticleNo = 2 or invd.ArticleNo = 4)) AS FraktValuta,') ; // Frakt i s?ld valuta

  cdsInvoiceList.SQL.Add('(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd') ;
  cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND (invd.ArticleNo = 2 or invd.ArticleNo = 4))') ;
  cdsInvoiceList.SQL.Add('*') ;
  cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
  cdsInvoiceList.SQL.Add('FROM ExChangeRate EX, Currency C') ;
  cdsInvoiceList.SQL.Add('WHERE') ;
  cdsInvoiceList.SQL.Add('C.CurrencyName = IH.CurrencyName') ;
  cdsInvoiceList.SQL.Add('and EX.CurrencyNo = C.CurrencyNo') ;
  cdsInvoiceList.SQL.Add('AND EX.ValidFrom <= IH.InvoiceDate') ;
  cdsInvoiceList.SQL.Add('group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS FraktValutaSEK,') ;

   cdsInvoiceList.SQL.Add('IH.AgentName AS AGENT, ') ;

   cdsInvoiceList.SQL.Add('isnull(IH.Trading,0) AS TRADING,') ;

   cdsInvoiceList.SQL.Add('IH.SalesOrgNo AS F?rs?ljOrgNr,') ;

   cdsInvoiceList.SQL.Add('CASE WHEN [dbo].[IsoWk](IH.InvoiceDate) < 10 THEN 	CAST(DATEPART (Year, IH.InvoiceDate) AS CHAR(4)) + ') ;
   cdsInvoiceList.SQL.Add(QuotedStr('-0') + ' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2))') ;
   cdsInvoiceList.SQL.Add('ELSE CAST(DATEPART (Year, IH.InvoiceDate) AS CHAR(4)) + ') ;
   cdsInvoiceList.SQL.Add(QuotedStr('-') + ' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2)) END AS VECKA,') ;

   cdsInvoiceList.SQL.Add('IH.CountryName AS LAND,') ;
   cdsInvoiceList.SQL.Add('SR.ClientName AS F?rs?ljReg,') ;
   cdsInvoiceList.SQL.Add('SalesGroupName AS S?ljGrupp, IH.CustomerNo, IH.InvoiceType, IL.ShippingPlanNo AS LO,') ;
   cdsInvoiceList.SQL.Add('IH.ST_CityName AS LevORT, IL.Reference AS ErReferens, IL.OrderNoText AS Ordernr, IH.DueDate, IH.AgentNo,') ;
   cdsInvoiceList.SQL.Add('IH.StickyNote AS Postit, Inos.Prefix AS PO_prefix, IH.VAT_OnInvoice AS Skatteupplag,') ;

   cdsInvoiceList.SQL.Add('(Select Top 1 invd.Konto from dbo.InvoiceDetail invd') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.FS_Article fsa on fsa.ArticleNo = invd.ArticleNo') ;
   cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
   cdsInvoiceList.SQL.Add('AND fsa.ArticleGroupNo = 0) AS Varukonto,') ;

   cdsInvoiceList.SQL.Add('(Select Top 1 invd.Konto from dbo.InvoiceDetail invd') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.FS_Article fsa on fsa.ArticleNo = invd.ArticleNo') ;
   cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
   cdsInvoiceList.SQL.Add('AND fsa.ArticleGroupNo = 1) AS Fraktkonto,') ;

   cdsInvoiceList.SQL.Add('(Select Top 1 invd.moms_konto from dbo.InvoiceDetail invd') ;
   cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo) AS Momskonto,') ;

   cdsInvoiceList.SQL.Add('(Select Top 1 invd.VatCode from dbo.InvoiceDetail invd') ;
   cdsInvoiceList.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo) AS Momskod,') ;

   cdsInvoiceList.SQL.Add('IH.IntraStatCountryNo, ISC.CountryName AS Statistikland, IH.DelKredit, IH.IncludeFreightCostInPrice') ;

   cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH') ;
   cdsInvoiceList.SQL.Add('Left Outer Join dbo.Country ISC on ISC.CountryNo = IH.IntraStatCountryNo') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   cdsInvoiceList.SQL.Add('Inner join dbo.Client SR ON SR.ClientNo = IH.SupplierNo') ;

   cdsInvoiceList.SQL.Add('Left Outer Join dbo.SalesManGroupRow smg') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGroupNo') ;
   cdsInvoiceList.SQL.Add('on smg.UserID = IH.ResponsibleSeller') ;
   cdsInvoiceList.SQL.Add('Left Outer Join dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   cdsInvoiceList.SQL.Add('WHERE 1=1') ;

   if (not cds_PropsInvClientNo.IsNull) and (cds_PropsInvClientNo.AsInteger > 0) then
   Begin
   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   cdsInvoiceList.SQL.Add('AND IH.CustomerNo = ' + cds_PropsInvClientNo.AsString) ;
   End ;

   if Length(SalesOrgNo) > 0 then
   cdsInvoiceList.SQL.Add('AND IH.SalesOrgNo LIKE ' + QuotedStr('%' + teSaleOrgNr.Text + '%') ) ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if (cds_PropsINVSalesPersonNo.AsInteger > 0) and (InvoiceNo = -1) and (LONo = -1) then
    cdsInvoiceList.SQL.Add('AND smg.SalesGroupNo = ' + cds_PropsINVSalesPersonNo.AsString) ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsInvLengthFormatNo.AsInteger = 1 then
     cdsInvoiceList.SQL.Add('AND ((IH.DelKredit = 0) or (IH.DelKredit is null))') ;
   End ;

   if cds_PropsInvLengthOption.AsInteger = 1 then
   Begin
    cdsInvoiceList.SQL.Add('AND exists (Select  inos2.InternalInvoiceNo FROM ') ;
    cdsInvoiceList.SQL.Add('dbo.InvoiceNos inos2 WHERE inos2.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsINVSalesRegionNo.AsInteger > 0 then
    cdsInvoiceList.SQL.Add('AND IH.SupplierNo = ' + cds_PropsINVSalesRegionNo.AsString) ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsInvFilterOrderDate.AsInteger = 1 then
    Begin
     cdsInvoiceList.SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date)) ) ;
     cdsInvoiceList.SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date)) ) ;
    End ;
   End ;


   if InvoiceNo > -1 then
   Begin
    cdsInvoiceList.SQL.Add('AND inos.InvoiceNo = ' + IntToStr(InvoiceNo)) ;
   End ;


   if LONo <> -1 then
    cdsInvoiceList.SQL.Add('AND IL.ShippingPlanNo = ' + IntToStr(LONo)) ;


   if InternalInvoiceNo  <> -1 then
    cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo = ' + IntToStr(InternalInvoiceNo)) ;


   cdsInvoiceList.SQL.Add(GetSQLofComboFilter(0, 'IH.InvoiceType', ccbInvoiceType)) ;

  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  Case cbTyp.ItemIndex of
   0 : cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 0 ') ;
   1 : cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1 ') ;
// 2 visa b?de snabb och normala
  End ;
  End ;

  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  Case cbKonto.ItemIndex of
   0 : cdsInvoiceList.SQL.Add('AND IH.Tot_Inv_Inc_Freight_Extras > 0 ') ;
   1 : cdsInvoiceList.SQL.Add('AND IH.Tot_Inv_Inc_Freight_Extras < 0 ') ;
// 2 : visa b?de debit och credit
  End ;
  End ;

  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
   if (cds_PropsINVCopyPcs.AsInteger = 1) or (cds_PropsINVCopyPcs.AsInteger = 3) then
   Begin
    cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo in (Select InvD.InternalInvoiceNo FROM') ;
    cdsInvoiceList.SQL.Add('dbo.InvoiceDetail InvD') ;
    cdsInvoiceList.SQL.Add('Where InvD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    cdsInvoiceList.SQL.Add('AND InvD.ArticleNo = ' + IntToStr(cds_PropsINVCopyPcs.AsInteger) + ')') ;
   End ;
  End ;


  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  if cds_PropsINVStatus.AsInteger = 1 then //DEL OCH OBETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo not IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End
  else
  if cds_PropsINVStatus.AsInteger = 2 then //ENDAST DEL BETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 0 AND AmountPaid > 0)') ;
  End
  else
  if cds_PropsINVStatus.AsInteger = 3 then //FULL BETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End ;
  End ;//if  (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
//  ShowMessage('DisplayName = ' + ccbInvoiceType.Properties.Items.Items.DisplayName) ;



// if cbOpenQuery.Checked = False then
 if NoOfCheckedRowsComboFilter(ccbInvoiceType, InvoiceType) = 1 then
 Begin
 if cds_PropsINVGradeStampNo.AsInteger = 1 then
  //EJ ?verf?rda
 Begin
 Case InvoiceType of
    0 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK1') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    4 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK2') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    5 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK4') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;

   End ; //Case
 End //if dmVidaInvoice.cds_PropsINVGradeStampNo.AsInteger = 1 then
 else
 //?verf?rda
 if cds_PropsINVGradeStampNo.AsInteger = 2 then
 Begin
 Case InvoiceType of
    0 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK1') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    4 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK2') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    5 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK4') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;

   End ; //Case
 End ; //if dmVidaInvoice.cds_PropsINVGradeStampNo.AsInteger = 2 then
 End ;//

   cdsInvoiceList.SQL.Add('ORDER BY InvoiceDate desc') ;
//  if ThisUser.UserID = 8 then cdsInvoiceList.SQL.SaveToFile('sq_fakturaRapport.TXT');

  cdsInvoiceList.Active:= True ;

   Finally
//    grdInvoice.DataSource.DataSet.EnableControls ;
    grdFakturaDBBandedTableView1.EndUpdate ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; // with
end;
*)

Function TfrmInvoiceList.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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
        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ;
        if dType = 0 then
         Result:= Result + ' ' + Kolumn + ' = ' + QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' ' + Kolumn + ' = ' + ReplaceCommas(Properties.Items[x].ShortDescription) ;

        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
      if Length(Result) > 0 then
      Result:= Result +' ) ' ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

procedure TfrmInvoiceList.grdFakturaDBBandedTableView1DblClick(
  Sender: TObject);
begin
 acOpenInvoiceExecute(Sender) ;
end;

procedure TfrmInvoiceList.acDelKreditExecute(Sender: TObject);
Var Credit_Int_Inv_No : Integer ;
    Year, Month, Day  : Word ;
    DatumString       : String ;
begin
 with dmVidaInvoice do
 Begin
  DecodeDate(SQLTimeStampToDateTime(cdsInvoiceListINV_DATE.AsSQLTimeStamp), Year, Month, Day) ;
  DatumString := Copy(IntToStr(Year),3,2) ;
  if Month < 10 then
   DatumString  := DatumString + '0' + IntToStr(Month)
    else
     DatumString  := DatumString + IntToStr(Month) ;

  if Day < 10 then
   DatumString  := DatumString + '0' + IntToStr(Day)
    else
     DatumString  := DatumString + IntToStr(Day) ;

  amt_Credit.Active := True ;
  Try

 if GetMarkedInvoiceAndLOToCredit then
 Begin
 Credit_Int_Inv_No:= 0 ;
 if MessageDlg('Vill du delkreditera faktura nr '+
 cdsInvoiceListINVOICE_NO.AsString+' ?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
 Begin
 if cdsInvoiceListINVOICE_KONTO.AsString = 'DEBIT' then
 Begin
 Try
  cdsInvoice_Credited.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
  cdsInvoice_Credited.Active:= True ;
  cdsInvoiceNumber.Active:= True ;
 if cdsInvoiceNumber.Locate('InternalInvoiceNo',cdsInvoiceListInternalInvoiceNo.AsInteger, []) then
  Begin
   fInternalInvoiceNo:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
   if cdsInvoice_Credited.Locate('InternalInvoiceNo',cdsInvoiceListInternalInvoiceNo.AsInteger, []) then
   Begin
    ShowMessage('Info, fakturan ?r krediterad tidigare av ' + cdsInvoice_CreditedCreatedUser.AsString + '  Se internt fakturanr : ' + cdsInvoice_CreditedNewInternalInvoiceNo.AsString) ;
   End ;
   Credit_Int_Inv_No:= CreateDELCreditInvoiceByCopyDebitInvoice(cdsInvoiceListINVOICE_NO.AsInteger, cdsInvoiceListInternalInvoiceNo.AsInteger, DatumString) ;
  End
  else
   ShowMessage('Prelimin?ra fakturor kan inte krediteras.') ;

 Finally

  cdsInvoiceLO.Filtered       := False ;
  cdsInvoiceLO.Active         := False ;
  cdsInvoiceDetail.Filtered   := False ;
  cdsInvoiceDetail.Filter     := '';
  cdsInvoiceDetail.Active     := False ;
  cdsInvoice_Credited.Active  := False ;
  cdsInvoiceNumber.Active     := False ;
  cdsInvoiceShipTo.Active     := False ;
  if Credit_Int_Inv_No > 0 then
  Begin
   OpenInvoice(Credit_Int_Inv_No, cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger, cdsInvoiceHeadDelKredit.AsInteger) ;
  End ;
 End ;

 End
  else
   ShowMessage('Kan inte kreditera en kreditfaktura.') ;
 End ;

  End //if GetMarkedInvoiceAndLOToCredit
   else
    ShowMessage('Endast EN faktura kan krediteras, du kan d?remot v?lja flera lastordernr fr?n ett fakturanr.') ;
  Finally
   amt_Credit.Active := False ;
  End ;
 End ;// with
end;

procedure TfrmInvoiceList.OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst, DelKredit  : Integer) ;
Var frmInvoice  : TfrmInvoice ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
  frmInvoice:= TfrmInvoice.Create(NIL);
  Try
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceShipTo.Active:= True ;
   frmInvoice.TabControl1.Tabs.Clear ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= False ;
   cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
//   cdsInvoiceHead.Open ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= True ;

   if (IntInvNoToAttestAgainst > 0) and (DelKredit > 0) then
   Begin
    cdsInvoiceHead.Edit ;
    cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger := IntInvNoToAttestAgainst ;
    cdsInvoiceHeadDelKredit.AsInteger               := DelKredit ;
    cdsInvoiceHead.Post ;
   End ;


   cdsInvoiceLO.Active:= False ;
//   sq_InvoiceLO.Close ;
   cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  cdsInvoiceLO.Active:= False ;
//  cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
//  cdsInvoiceLO.Filtered:= True ;

   cdsInvoiceLO.Active:= True ;

   cds_PIP.Active:= False ;
   cds_PIP.ParamByName('OwnerNo').AsInteger:= cdsInvoiceHeadSupplierNo.AsInteger ;
   cds_PIP.Active:= True ;

   cds_IH_SpecLoad.Active:= False ;
   cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   cds_IH_SpecLoad.Active:= True ;
   if cds_IH_SpecLoad.RecordCount = 0 then
   Begin
    cds_IH_SpecLoad.Insert ;
    cds_IH_SpecLoad.Post ;
   End ;


  cdsInvoiceLO.First ;
  While not cdsInvoiceLO.Eof do
  Begin
   frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  if frmInvoice.TabControl1.Tabs.Count > 0 then
  Begin
   cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
   ' AND ShippingPlanNo = ' + frmInvoice.TabControl1.Tabs[0] ;
   cdsInvoiceLO.Filtered:= True ;
   cdsInvoiceDetail.Close ;
   cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString+
   ' AND ShippingPlanNo = '+frmInvoice.TabControl1.Tabs[0] ;
   cdsInvoiceDetail.Filtered:= True ;
   cdsInvoiceDetail.Active:= True ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }


//   frmInvoice.CreateParams(Params.WndParent  := Self ;
//   frmInvoice.PopupParent := Self;
   frmInvoice.ShowModal ;

   if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cds_IH_SpecLoad.Post ;
   if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
   Begin
    dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0) ;
    dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates ;
   End ;
  End
  else
  Begin
   Exit ;
  End ;

 Finally
  fInternalInvoiceNo        := -1 ;
  cdsInvoiceDetail.Close ;
  cdsInvoiceLO.Filtered     := False ;
  cdsInvoiceLO.Active       := False ;
  cdsInvoiceDetail.Filtered := False ;
  cdsInvoiceDetail.Filter   := '';
  cdsInvoiceDetail.Active   := False ;
  cdsInvoiceShipTo.Active   := False ;
  FreeAndNil(frmInvoice) ;
 End ;
 End ; // with
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

Function TfrmInvoiceList.GetMarkedInvoiceAndLOToCredit : Boolean ;
 Var y, i, RecIDX   : Integer ;
 Save_Cursor        : TCursor;
 ColIdx             : Integer ;
 InternalInvoiceNo,
 IntInvNo,
 LONo               : Integer ;
 Duplicate          : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmVidaInvoice do
 Begin
  Result  := True ;
  lbLO_To_Invoice.Items.Clear ;
  grdFakturaDBBandedTableView1.BeginUpdate ;
  grdFakturaDBBandedTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdFakturaDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx            := grdFakturaDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx            := grdFakturaDBBandedTableView1.DataController.GetItemByFieldName('InternalInvoiceNo').Index;
    InternalInvoiceNo := grdFakturaDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdFakturaDBBandedTableView1.DataController.GetItemByFieldName('LO').Index;
    LONo        := grdFakturaDBBandedTableView1.DataController.Values[RecIdx, ColIdx];
    if I = 0 then
     IntInvNo :=  InternalInvoiceNo ;

    if IntInvNo <> InternalInvoiceNo then
    Begin
     Result := False ;
    End ;

    amt_Credit.Insert ;
    amt_CreditLONo.AsInteger      := LONo ;
    amt_CreditIntInvNo.AsInteger  := InternalInvoiceNo ;
    amt_Credit.Post ;

   End ;//for y

 Finally
  grdFakturaDBBandedTableView1.DataController.EndLocate ;
  grdFakturaDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmInvoiceList.nfSearchInvoiceNoIIKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoiceList(Sender, '', StrToIntDef(Trim(nfSearchInvoiceNo.Text),0), StrToIntDef(Trim(nfSearchInvoiceNoII.Text),0), -1, -1);
  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(Trim(nfSearchInvoiceNo.Text),0), []) ;
 End ; //with
end;

procedure TfrmInvoiceList.acSaveExecute(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  if cdsInvoiceList.State in [dsEdit] then
   cdsInvoiceList.Post ;
  if cdsInvoiceList.ChangeCount > 0 then
  Begin
   cdsInvoiceList.ApplyUpdates(0) ;
   cdsInvoiceList.CommitUpdates ;
  End ;
 End ;
end;

procedure TfrmInvoiceList.acEMailaKundOchAgentFakturaOchSpecExecute(
  Sender: TObject);
Var x : Integer ;
begin
 GetMarkedInvoices ;
 For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
 Begin
  EMailaKundOchAgentFakturaOchSpecExecute(StrToInt(lbLO_To_Invoice.Items[x])) ;
 End ;
end;

procedure TfrmInvoiceList.EMailaKundOchAgentFakturaOchSpecExecute(InternalInvoiceNo : Integer) ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress,
    AgentMailToAddress,
    InvoiceNo               : String ;
begin
 if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
 Begin
 InvoiceNo:= intToStr(dmVidaInvoice.GetInvoiceNo(dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger, dmVidaInvoice.cdsInvoiceListInvoiceType.AsInteger)) ;
 MailToAddress      := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger) ;
 AgentMailToAddress := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceListAgentNo.AsInteger) ;
 if Length(AgentMailToAddress) > 0 then
  MailToAddress := MailToAddress + ';' + AgentMailToAddress ;
 if Length(MailToAddress) > 0 then
 Begin
 if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
// const ClientNo, DocTyp : Integer;const A: array of variant);
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;

  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo ' + dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification ' + dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
//ExtractFilePath(Forms.Application.ExeName) + '\'+ExportFile+'.pdf';

 SetLength(Attach, 2);

 Attach[0]:= ExcelDir + 'InvoiceNo ' + InvoiceNo+'.pdf' ;
 Attach[1]:= ExcelDir + 'Specification ' + InvoiceNo+'.pdf' ;

// Attach[0]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'InvoiceNo '+InvoiceNo+'.pdf' ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+InvoiceNo+'.pdf' ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Faktura/paketspecifikation. Fakturanr: '+InvoiceNo
  +' - Invoice/package specification. InvoiceNo: '+InvoiceNo,
  'Faktura och paketspecifikation bifogad. '
  +LF+''
  +'Invoice and package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
//  'lars.makiaho@falubo.se', //getinvoice emailaddress

  Attach) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if Length(MailToAddress) > 0 then
  else
   ShowMessage('Emailadress saknas f?r klienten!') ;
 End ;// if dmVidaInvoice.cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then   
end;

procedure TfrmInvoiceList.acTransferInvoicesExecute(Sender: TObject);
begin
 if MessageDlg('Vill du ?verf?ra markerade fakturor?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  mtSelectedInvoices.Active := False ;
  mtSelectedInvoices.Active := True ;
  Try
  SelectMarkedInvoices ;
  TransferSelectedInvoicesToXOR ;
  Finally
   mtSelectedInvoices.Active  := False ;
  End ;
 End ;
end;

procedure TfrmInvoiceList.SelectMarkedInvoices ;
 Var i, RecIDX      : Integer ;
 RecID              : Variant ;
 ColIdx             : Integer ;
 InternalInvoiceNo  : Integer ;
 ADATASET           : TDATASET;
 Save_Cursor        : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  grdFakturaDBBandedTableView1.BeginUpdate ;
  grdFakturaDBBandedTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdFakturaDBBandedTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdFakturaDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdFakturaDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
//    RecID       := grdFakturaDBBandedTableView1.DataController.GetRecordId(RecIdx) ;

//    RecIDx      := grdFakturaDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdFakturaDBBandedTableView1.DataController.GetItemByFieldName('InternalInvoiceNo').Index;
    InternalInvoiceNo   := grdFakturaDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    if ADataSet.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
    Begin
//     if not mtSelectedInvoices.Locate('InvoiceNo', ADataSet.FieldByName('INVOICE_NO').AsInteger, []) then
     if not mtSelectedInvoices.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
     Begin
      mtSelectedInvoices.Insert ;
      mtSelectedInvoicesInvoiceNo.AsInteger         := ADataSet.FieldByName('INVOICE_NO').AsInteger ;
      mtSelectedInvoicesInternalInvoiceNo.AsInteger := ADataSet.FieldByName('InternalInvoiceNo').AsInteger ;
      mtSelectedInvoices.Post ;
     End ;//if..
    End ; //if..
   End ;


  grdFakturaDBBandedTableView1.Controller.ClearSelection ;
 Finally
  grdFakturaDBBandedTableView1.DataController.EndLocate ;
  grdFakturaDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmInvoiceList.TransferSelectedInvoicesToXOR ;
Var
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
  mt_VerLogg.Active := True ;
  Try
  mtSelectedInvoices.First ;
  While not mtSelectedInvoices.Eof do
  Begin
//   TransferInvoiceToXor(False, mtSelectedInvoicesInvoiceNo.AsInteger, mtSelectedInvoicesInternalInvoiceNo.AsInteger) ;
   InsertVerifikatLogg (False, mtSelectedInvoicesInvoiceNo.AsInteger, mtSelectedInvoicesInternalInvoiceNo.AsInteger) ;
   mtSelectedInvoices.Next ;
  End ;
  Finally
   mt_VerLogg.Active  := False ;
  End ;
 End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

(*
procedure TfrmInvoiceList.TransferInvoiceToXor(const Test : Boolean;const InvoiceNo, InternalInvoiceNo : Integer);
Var Object2, Object5                    : String ;
    ResKontraSerie                      : String ;
    KundResKontra                       : String ;
    Forsaljningskonto                   : String ;
    Frakt_konto                         : String ;
    Moms_konto                          : String ;
    Rounding_Konto                      : String ;
    Provision_Konto                     : String ;
    KassaRabattKonto                    : String ;
    Debit_Credit                        : String ;
    AgentNo                             : Integer ;
    Region, Currency                    : String ;
    CountryNo                           : Integer ;
    Trading                             : Integer ;
    VaruGrupp                           : Integer ;
    PO_CountryNo                        : Integer ;

    InvoiceTotal_SEK,
//    InvVal_No_moms_freight_SEK,
    ForsaljningsKonto_SEK,
    moms_sek,
    moms_for,
    Rounding_SEK,
    TotalInvoiceValueNoRounding_SEK,
    Provision_SEK,
    KassaRabatt_SEK,
    frakt_SEK                           : Double ;

    RInvoiceTotal_SEK,
    Rmoms_sek,
    RForsaljningsKonto_SEK,
    Rfrakt_SEK                          : Double ;



    InvoiceTotal_For,
//    InvVal_No_moms_freight_For,
    ForsaljningsKonto_For,
    Rounding_For,
    Provision_For,
    TotalInvoiceValueNoRounding_For,
    KassaRabatt_For,
    frakt_for                           : Double ;

    SkatteUpplag                        : Integer ;
    InvoiceDate, DueDate                : TSQLTimeStamp ;
    InvoiceDateAsDateTime,
    DueDateAsDateTime                   : TDateTime ;
    Vatcode                             : Integer ;
    InvoiceType                         : Integer ;
    Moms_20Percent                      : Double ;
    SalesmanGroupNo                     : Integer ;
    SalesRegionNo                       : Integer ;
    xorID, XorID_KundNamn               : String ;
    Volume                              : Double ;
    fShowInvTrfLog                      : TfShowInvTrfLog ;
//begin TransferInvoiceToXor
begin
 with dmVidaInvoice do
 Begin
  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
  Begin
  Try
  cdsInvTrfLogg.Active:= True ;
  cdsInvTrfLogg.Insert ;

  xorID           := '' ;
  Moms_20Percent  := 0.20 ;
  moms_konto      :=  '2610' ;
  Rounding_SEK    := 0 ;
  Rounding_For    := 0 ;
  Rounding_Konto  := '3740' ;


  frakt_SEK       := 0 ;
  frakt_for       := 0 ;

    RInvoiceTotal_SEK     := 0 ;
    Rmoms_sek     := 0 ;
    RForsaljningsKonto_SEK     := 0 ;
    Rfrakt_SEK                           := 0 ;

//  ShowMessage('InternalInvoiceNo = '+inttostr(InternalInvoiceNo));
  sp_InvTotals.Active := False ;
  sp_InvTotals.ParamByName('@IntInvNo').AsInteger:= InternalInvoiceNo ;
  sp_InvTotals.Active := True ;
//  ShowMessage('1: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
  if not sp_InvTotals.Eof then
  Begin

   Provision_Konto                     := '' ;
   Forsaljningskonto                   := cdsInvoiceListVarukonto.AsString ;
   Frakt_konto                         := sp_InvTotalsFraktKonto.AsString ;//cdsInvoiceListFraktkonto.AsString ;
   Moms_konto                          := cdsInvoiceListMomskonto.AsString ;
   Vatcode                             := cdsInvoiceListMomskod.AsInteger ;
   Debit_Credit                        := cdsInvoiceListINVOICE_KONTO.AsString ;

  //Om volymen ?r 0 eller null s?tt volymen till 1, f?r att ekonomin kr?ver det!
   if (sp_InvTotalsNM3.IsNull = False) and (sp_InvTotalsNM3.AsFloat > 0) then
   Volume:= sp_InvTotalsNM3.AsFloat
   else
   Volume:= 1 ;

//   ShowMessage('2: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
   SalesRegionNo                    := sp_InvTotalsSupplierNo.AsInteger ;
   SalesmanGroupNo                  := sp_InvTotalsSalesGroupNo.AsInteger ;
   Trading                          := sp_InvTotalsTrading.AsInteger ;
   KassaRabatt_For                  := sp_InvTotalsKassaRabatt_For.AsFloat ;
   KassaRabatt_SEK                  := sp_InvTotalsKassaRabatt_SEK.AsFloat ;
   Provision_For                    := sp_InvTotalsCommission_for.AsFloat ;
   Provision_SEK                    := sp_InvTotalsCommission_SEK.AsFloat ;

   TotalInvoiceValueNoRounding_For  := sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat ;
   TotalInvoiceValueNoRounding_SEK  := sp_InvTotalsTotalInvoiceValueNoRounding_SEK.AsFloat ;

   //FAKTURATOTAL I SEK
   InvoiceTotal_SEK                 := sp_InvTotalsInvoiceTotal_SEK.AsFloat ;

   //FAKTURA BELOPP SEK UTAN moms_sek OCH FRAKT
//   InvVal_No_moms_freight_SEK       := sp_InvTotalsInvValnofreight_SEK.AsFloat ;

   //FAKTURATOTAL I UTL?NDSVALUTA
   InvoiceTotal_For                 := sp_InvTotalsInvoiceTotal.AsFloat ;
   //FAKTURA BELOPP I UTL?NDSVALUTA UTAN moms_sek OCH FRAKT
//   InvVal_No_moms_freight_For       := sp_InvTotalsInvValnofreight.AsFloat ;

   //MOMSBELOPP SEK
   moms_sek                             := sp_InvTotalsVAT_SEK.AsFloat ;

   //MOMSBELOPP FOR
   moms_for                             := sp_InvTotalsVAT_FOR.AsFloat ;

  //DEBIT ELLER KREDIT INVOICE TYPE
   if InvoiceTotal_SEK > 0 then
    InvoiceType:= 1 //Debit
     else
      InvoiceType:= 2 ;//Credit

   AgentNo:= sp_InvTotalsAgentNo.AsInteger ;
  //XorID_KundNamn L?GGS I FREETEXT B?DE I HUVUD OCH RAD I VERIFIKATIONEN
   XorID_KundNamn := sp_InvTotalsidXOR.AsString+':'+sp_InvTotalsCustomerName.AsString ;
   xorID          := sp_InvTotalsidXOR.AsString ;
   //TEX EU REGION
   Region         := sp_InvTotalsRegion.AsString ;
   Currency       := sp_InvTotalsCurr.AsString ;
   //LANDNR FR?N FAKTURAADRESS
   CountryNo      := sp_InvTotalsCountryNo.AsInteger ;

   VaruGrupp      := sp_InvTotalsVaruGrupp.AsInteger ;
   PO_CountryNo   := sp_InvTotalsPO_CountryNo.AsInteger ;

   //0 = INGET SKATTEUPPLAG, 1 = SKATTEUPPLAG
   SkatteUpplag:= sp_InvTotalsSkatteUpplag.AsInteger ;
   //FAKTURADATUM
   InvoiceDate            := sp_InvTotalsInvoiceDate.AsSQLTimeStamp ;
   InvoiceDateAsDateTime  := SQLTimeStampToDateTime(InvoiceDate) ;
   InvoiceDateAsDateTime  := RecodeTime(InvoiceDateAsDateTime, 0, 0, 0, 0) ;
   InvoiceDate            := DateTimeToSQLTimeStamp(InvoiceDateAsDateTime) ;
//   RecodeTime(const AValue: TDateTime; const AHour, AMinute, ASecond, AMilliSecond: Word): TDateTime;
   //F?RFALLODATUM
   DueDate            := sp_InvTotalsDueDate.AsSQLTimeStamp ;
   DueDateAsDateTime  := SQLTimeStampToDateTime(DueDate) ;
   DueDateAsDateTime  := RecodeTime(DueDateAsDateTime, 0, 0, 0, 0) ;
   DueDate            := DateTimeToSQLTimeStamp(DueDateAsDateTime) ;

{   if ThisUser.UserID = 8 then
   Begin
    ShowMessage('Fakturadatum = ' + SqlTimeStampToStr);
   End ; }





//   Diff := InvoiceTotal_SEK (Rounding_SEK + TotalInvoiceValueNoRounding_SEK
//   InvoiceTotal_SEK


//Okt 24 2005 borttaget fr?n nedan formel KassaRabatt_For + Provision_For +
//   ForsaljningsKonto_For:= InvoiceTotal_For - (frakt_for + moms_for + Rounding_For) ;
//Okt 24 2005 borttaget fr?n nedan formel KassaRabatt_SEK + Provision_SEK ?
//   ForsaljningsKonto_SEK:= InvoiceTotal_SEK - (frakt_SEK + moms_sek + Rounding_SEK ) ;

   //FRAKTBELOPP I SEK
   frakt_SEK              := sp_InvTotalsFRAKT_SEK.AsFloat ;
   //FRAKTBELOPP I UTL?NDSVALUTA
   frakt_for              := sp_InvTotalsFRAKT_CURR.AsFloat ;

   ForsaljningsKonto_For  :=  sp_InvTotalsProduktvardeFOR.AsFloat ;
   ForsaljningsKonto_SEK  :=  sp_InvTotalsProduktvardeSEK.AsFloat ;


   //?RESUTJ?MNING BARA SEK f?rs ?ver till XOR
//   Rounding_SEK       := InvoiceTotal_SEK - (moms_sek + TotalInvoiceValueNoRounding_SEK) ;
   //?ndrat 9/11 2010

   if Debit_Credit = 'DEBIT' then
   Begin
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1 ;

     if frakt_for > 0 then
      frakt_for := frakt_for * -1 ;
    End ;

    if frakt_SEK < 0 then
     Rfrakt_SEK := frakt_SEK * -1
      else
       Rfrakt_SEK := frakt_SEK ;

    Rounding_SEK       := InvoiceTotal_SEK - (moms_sek + Rfrakt_SEK + ForsaljningsKonto_SEK) ;
   End
   else   //CREDIT
   Begin
   //************************************************************************//
   // only for rounding
   //************************************************************************//
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      Rfrakt_SEK := frakt_SEK * -1
       else
        Rfrakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK < 0 then
      Rfrakt_SEK := frakt_SEK * -1
       else
        Rfrakt_SEK := frakt_SEK ;
    End ;

    if ForsaljningsKonto_SEK > 0 then
     RForsaljningsKonto_SEK  := ForsaljningsKonto_SEK * -1
      else
       RForsaljningsKonto_SEK  := ForsaljningsKonto_SEK ;

    if moms_sek > 0 then
     Rmoms_sek := moms_sek * -1
      else
       Rmoms_sek := moms_sek ;

    if InvoiceTotal_SEK > 0 then
     RInvoiceTotal_SEK  := InvoiceTotal_SEK * -1
      else
       RInvoiceTotal_SEK  := InvoiceTotal_SEK ;

    Rounding_SEK       := RInvoiceTotal_SEK - (Rmoms_sek + Rfrakt_SEK + RForsaljningsKonto_SEK) ;
   End ;   //**


   if Debit_Credit = 'DEBIT' then
   Begin
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK < 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End ;
   End
   else
   Begin //Credit
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 0 then
    Begin
     if frakt_SEK < 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End ;
   End ;
   //OBJECT 5 ?R MOTPART
   Object5:= sp_InvTotalsO5.AsString ;

   if Length(Trim(Object5)) = 0 then
   Begin
    ShowMessage('Motpart (Object5) saknas f?r kund '+sp_InvTotalsCustomerName.AsString) ;
    Exit ;
   End ;

   //S?tt object2 till blank till att b?rja med...
    Object2:= '' ;

  if SalesmanGroupNo = 1 then //Danmark
   Object2:= '990' ;

  if cdsInvoiceListInvoiceType.AsInteger = 0 then
  Begin
   if Object5 = '99' then //Om extern kund
    ResKontraSerie:= 'VWK1'
     else
      ResKontraSerie:= 'VWK1' ;
  End
   else //Om det ?r en USA faktura skall serien vara VWK2
     if cdsInvoiceListInvoiceType.AsInteger = 4 then
      ResKontraSerie:= 'VWK2'
       else //Irland
        if cdsInvoiceListInvoiceType.AsInteger = 5 then
         ResKontraSerie:= 'VWK4' ;

  if Length(Trim(ResKontraSerie)) = 0 then
   Begin
    ShowMessage('Reskontraserie kan inte best?mmas f?r fakturanr '+IntToStr(InvoiceNo)) ;
    Exit ;
   End ;


//sq_invoiceTrf KOLLAR OM FAKTURANNUMRET REDAN FINNS I XOR
  sq_invoiceTrf.ParamByName('Invno').AsInteger      := InvoiceNo ;
  sq_invoiceTrf.ParamByName('enumerator').AsString  := ResKontraSerie ;
  sq_invoiceTrf.Open ;
  if sq_invoiceTrf.FieldByName('Invno').AsInteger > 1 then
  Begin
   ShowMessage('Faktura nr '+inttostr(InvoiceNo)+' ?r redan i loggen.') ;
   sq_invoiceTrf.Close ;
   Exit ;
  End ;
  sq_invoiceTrf.Close ;


//R?kna om bara om valutan ?r SEK
{   if (Currency = 'SEK') and (moms_sek <> 0) then
    moms_sek := InvoiceTotal_SEK * Moms_20Percent ;
   if Currency = 'SEK' then
    InvVal_No_moms_freight_SEK:= InvoiceTotal_SEK - (moms_sek + frakt_SEK) ; }

//Kundreskontra
   if Object5 = '99' then //99 = extern kund
   Begin
    if CountryNo = 9 then //CountryNo 9 = Sverige
     KundResKontra:= '1510' //Kundfordring Sverige externa kunder
      else
       KundResKontra:= '1512' ; //Kundfordring utl?ndska externa kunder
   End
    else //Intern kund
    Begin
     if Object5 = '22' then
      KundResKontra:= '1562' //Kundfordring koncern Vida Wood UK
       else
        KundResKontra:= '1560' ; //Kundfordring koncern Sverige
    End ;





  if Length(Trim(Object2)) = 0 then
  Object2:= '980' ;

   if Length(Trim(xorID)) = 0 then
   Begin
    ShowMessage('Fakturanr '+IntToStr(InvoiceNo)+ ' kan inte ?verf?ras, f?r att kund '+Trim(sp_InvTotalsCustomerName.AsString)+' har inget xorID i rolltypen kund') ;
    Exit ;
   End ;

   cdsInvTrfLoggInvoiceNo.AsInteger                     := InvoiceNo ;
   cdsInvTrfLoggInternalInvoiceNo.AsInteger             := InternalInvoiceNo ;
   cdsInvTrfLoggObject2.AsString                        := Object2 ;
   cdsInvTrfLoggObject5.AsString                        := Object5 ;
   cdsInvTrfLoggResKontraSerie.AsString                 := ResKontraSerie ;
   cdsInvTrfLoggKundResKontra.AsString                  := KundResKontra ;
   cdsInvTrfLoggForsaljningskonto.AsString              := Forsaljningskonto ;
   cdsInvTrfLoggFrakt_konto.AsString                    := Frakt_konto ;
   cdsInvTrfLoggMoms_konto.AsString                     := Moms_konto ;
   cdsInvTrfLoggRounding_Konto.AsString                 := Rounding_Konto ;
   cdsInvTrfLoggProvision_Konto.AsString                := Provision_Konto ;
   cdsInvTrfLoggKassaRabattKonto.AsString               := KassaRabattKonto ;
   cdsInvTrfLoggAgentNo.AsInteger                       := AgentNo ;
   cdsInvTrfLoggRegion.AsString                         := Region ;
   cdsInvTrfLoggCurrency.AsString                       := Currency ;
   cdsInvTrfLoggCountryNo.AsInteger                     := CountryNo ;
   cdsInvTrfLoggSkatteUpplag.AsInteger                  := SkatteUpplag ;
   cdsInvTrfLoggInvoiceTotal_SEK.AsFloat                := InvoiceTotal_SEK ;
   cdsInvTrfLoggForsaljningsKonto_SEK.AsFloat           := ForsaljningsKonto_SEK ;
   cdsInvTrfLoggmoms_sek.AsFloat                        := moms_sek ;
   cdsInvTrfLoggmoms_for.AsFloat                        := moms_For ;
   cdsInvTrfLoggmoms.AsFloat                            := moms_sek ;
   cdsInvTrfLoggRounding_SEK.AsFloat                    := Rounding_SEK ;
   cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK.AsFloat := TotalInvoiceValueNoRounding_SEK ;
   cdsInvTrfLoggProvision_SEK.AsFloat                   := Provision_SEK ;
   cdsInvTrfLoggKassaRabatt_SEK.AsFloat                 := KassaRabatt_SEK ;
   cdsInvTrfLoggfrakt_SEK.AsFloat                       := frakt_SEK ;
   cdsInvTrfLoggInvoiceTotal_For.AsFloat                := InvoiceTotal_For ;
   cdsInvTrfLoggForsaljningsKonto_For.AsFloat           := ForsaljningsKonto_For ;
   cdsInvTrfLoggRounding_For.AsFloat                    := Rounding_For ;
   cdsInvTrfLoggProvision_For.AsFloat                   := Provision_For ;
   cdsInvTrfLoggTotalInvoiceValueNoRounding_For.AsFloat := TotalInvoiceValueNoRounding_For ;
   cdsInvTrfLoggKassaRabatt_For.AsFloat                 := KassaRabatt_For ;
   cdsInvTrfLoggfrakt_for.AsFloat                       := frakt_for ;
   cdsInvTrfLoggInvoiceDate.AsSQLTimeStamp              := InvoiceDate ;
   cdsInvTrfLoggVatcode.AsInteger                       := Vatcode ;
   cdsInvTrfLoggInvoiceType.AsInteger                   := InvoiceType ;
   cdsInvTrfLoggEventDate.AsSQLTimeStamp                := DateTimeToSQLTimeStamp(Now) ;
   cdsInvTrfLoggUserId.AsInteger                        := ThisUser.UserID ;
   cdsInvTrfLoggXorID_KundNamn.AsString                 := XorID_KundNamn ;
   cdsInvTrfLoggTrading.AsInteger                       := Trading ;
   cdsInvTrfLoggVaruGrupp.AsInteger                     := VaruGrupp ;
   cdsInvTrfLoggPO_Country.AsInteger                    := PO_CountryNo ;

   cdsInvTrfLogg.Post ;
   if Test = False then
   Begin
    if cdsInvTrfLogg.ChangeCount > 0 then
     cdsInvTrfLogg.ApplyUpdates(0) ;
    cdsInvTrfLogg.Active:= False ;
   End
   else
   Begin
    fShowInvTrfLog:= TfShowInvTrfLog.Create(nil) ;
    try
      fShowInvTrfLog.ShowModal ;
      Exit ;
    finally
      FreeAndNil(fShowInvTrfLog) ;
      cdsInvTrfLogg.Active:= False ;
    end;
   End ;

//   ShowMessage('cdsInvTrfLogg.Post') ;

{   if (Round(rounding_SEK*100)/100) <> 0 then
   Begin
    ShowMessage('rounding_SEK = '+FloatToStr(rounding_SEK)+' Rounded = '+FloatToStr(Round(rounding_SEK*100)/100)) ;
   End ;

   if RoundTo(rounding_SEK,-2) <> 0 then
   Begin
    ShowMessage('rounding_SEK = '+FloatToStr(rounding_SEK)
    +' Rounded = '+FloatToStr(Round(rounding_SEK*100)/100)
    +' RoundTo = '+FloatToStr(RoundTo(rounding_SEK,-2))) ;
   End ;

   if ((Currency <> 'SEK') AND (rounding_For <> 0)) then
   Begin
    ShowMessage('rounding_For = '+FloatToStr(rounding_For)) ;
   End ; }

   if Thisuser.UserID = 8 then  Exit ;


//Skapa verifikationshuvudet
   EXEC_sp_VIS_xp_voulogwrite ('VWAB',
   3{logtype},
   InvoiceDate,
   ResKontraSerie,
   InvoiceNo,
   Copy(XorID_KundNamn, 1,80) //FreeText
   ) ;
//   ShowMessage('EXEC_sp_VIS_xp_voulogwrite');

//Skapa KUNDFORDRINGSKONTO verifikationsrad
   if InvoiceTotal_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   KundResKontra,//account tex 1560
   InvoiceDate, //logdate
   Currency, //currency
   InvoiceTotal_SEK,
   InvoiceTotal_For,
//   -1*InvVal_No_moms_freight_SEK, //amount : double;
//   -1*InvVal_No_moms_freight_For, //foramount : double;
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;

//   ShowMessage('EXEC_xp_vourowlogwrite');
//Skapa varv?rde verifikationsrad f?r F?rs?ljningskonto 30xx
   if ForsaljningsKonto_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Forsaljningskonto ,//account tex 3020
   InvoiceDate, //logdate
   Currency, //currency
//   InvoiceTotal_SEK,
//   InvoiceTotal_For,
//Tog bort *-1 p? nedan 2 rader
   ForsaljningsKonto_SEK, //SEK amount : double;
   ForsaljningsKonto_For, //foramount : double;
   vatcode,//skall ha en vatcode
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
        ) ;

//   ShowMessage('2 EXEC_xp_vourowlogwrite');
//Skapa frakt verifikationsrad
//h?r!
   if Frakt_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Frakt_Konto ,//account tex 2610
   InvoiceDate, //logdate
   Currency, //currency
   frakt_SEK, //SEK amount : double;
   frakt_For, //foramount : double;
   vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;

//   ShowMessage('3 EXEC_xp_vourowlogwrite');
  //Skapa moms_sek verifikationsrad
   if moms_sek <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   moms_Konto ,//account tex 2610
   InvoiceDate, //logdate
   Currency, //currency
   -1*moms_sek, //Sek amount : double;
   -1*moms_for, //foramount : double;
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;
//   ShowMessage('4 EXEC_xp_vourowlogwrite');

  //Skapa ?resutj?mnings verifikationsrad
{   if  ((Currency = 'SEK') AND (rounding_SEK <> 0))
   OR ((Currency <> 'SEK') AND (rounding_For <> 0)) then }
   if RoundTo(rounding_SEK,-2) <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Rounding_Konto ,//account tex 3740
   InvoiceDate, //logdate
   Currency, //currency
   -1*RoundTo(rounding_SEK,-2), //amount : double;
   0, //-1*rounding_For, OBS bara SEK avrundningsv?rdet skall ?verf?ras till xor!!
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
   ) ;

//   ShowMessage('5 EXEC_xp_vourowlogwrite');


//Skapa Reskontra
   EXEC_xp_ldglogwrite ('VWAB',
   sp_InvTotalsidXOR.AsString,
   InvoiceType,
   ResKontraSerie,
   InvoiceNo,
   0,   //seq
   IntToStr(InvoiceNo),
   InvoiceDate,
   InvoiceDate,
   DueDate,
   Currency,
   InvoiceTotal_SEK,
   InvoiceTotal_For,
   moms_sek,
   vatcode,
   KundResKontra,
   'MJ',
   logno,
   vouno,
   serie,
   Object2, Object5 ) ;

//   ShowMessage('2 EXEC_xp_ldglogwrite');

{const cid, person : String;
const stype : Integer;  //invoiceType
const enum : String;
const invno, seq : Integer ;
const org : String;
const bookdate, invdate, duedate : TSQLTimeStamp;
const currency : String;
const amount, foramount, moms_sek : Double;
const vatcode : Integer;
const account : String;
const approval1 : String;
const logno, vouno : Integer;
const serie : String) ;  }
  End
   else
    ShowMessage('Fakturan har inga v?rden.') ;
  Finally
   sp_InvTotals.Active := False ;
  End ;
  End //  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
   else
    ShowMessage('Problem lokalisera faktura...') ;  
 End ; //With
end;

procedure TfrmInvoiceList.TransferInvoiceToXorOLD(const Test : Boolean;const InvoiceNo, InternalInvoiceNo : Integer);
Var Object2, Object5                    : String ;
    ResKontraSerie                      : String ;
    KundResKontra                       : String ;
    Forsaljningskonto                   : String ;
    Frakt_konto                         : String ;
    Moms_konto                          : String ;
    Rounding_Konto                      : String ;
    Provision_Konto                     : String ;
    KassaRabattKonto                    : String ;
    Debit_Credit                        : String ;
    AgentNo                             : Integer ;
    Region, Currency                    : String ;
    CountryNo                           : Integer ;
    Trading                             : Integer ;
    VaruGrupp                           : Integer ;
    PO_CountryNo                        : Integer ;

    InvoiceTotal_SEK,
//    InvVal_No_moms_freight_SEK,
    ForsaljningsKonto_SEK,
    moms_sek,
    moms_for,
    Rounding_SEK,
    TotalInvoiceValueNoRounding_SEK,
    Provision_SEK,
    KassaRabatt_SEK,
    frakt_SEK                           : Double ;

    RInvoiceTotal_SEK,
    Rmoms_sek,
    RForsaljningsKonto_SEK,
    Rfrakt_SEK                          : Double ;



    InvoiceTotal_For,
//    InvVal_No_moms_freight_For,
    ForsaljningsKonto_For,
    Rounding_For,
    Provision_For,
    TotalInvoiceValueNoRounding_For,
    KassaRabatt_For,
    frakt_for                           : Double ;

    SkatteUpplag                        : Integer ;
    InvoiceDate, DueDate                : TSQLTimeStamp ;
    InvoiceDateAsDateTime,
    DueDateAsDateTime                   : TDateTime ;
    Vatcode                             : Integer ;
    InvoiceType                         : Integer ;
    Moms_20Percent                      : Double ;
    SalesmanGroupNo                     : Integer ;
    SalesRegionNo                       : Integer ;
    xorID, XorID_KundNamn               : String ;
    Volume                              : Double ;
    fShowInvTrfLog                      : TfShowInvTrfLog ;
//begin TransferInvoiceToXor
begin
 with dmVidaInvoice do
 Begin
  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
  Begin
  Try
  cdsInvTrfLogg.Active:= True ;
  cdsInvTrfLogg.Insert ;

  xorID           := '' ;
  Moms_20Percent  := 0.20 ;
  moms_konto      :=  '2610' ;
  Rounding_SEK    := 0 ;
  Rounding_For    := 0 ;
  Rounding_Konto  := '3740' ;


  frakt_SEK       := 0 ;
  frakt_for       := 0 ;

    RInvoiceTotal_SEK     := 0 ;
    Rmoms_sek     := 0 ;
    RForsaljningsKonto_SEK     := 0 ;
    Rfrakt_SEK                           := 0 ;

//  ShowMessage('InternalInvoiceNo = '+inttostr(InternalInvoiceNo));
  sp_InvTotals.Active := False ;
  sp_InvTotals.ParamByName('@IntInvNo').AsInteger:= InternalInvoiceNo ;
  sp_InvTotals.Active := True ;
//  ShowMessage('1: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
  if not sp_InvTotals.Eof then
  Begin

   Provision_Konto                     := '' ;
   Forsaljningskonto                   := cdsInvoiceListVarukonto.AsString ;
   Frakt_konto                         := sp_InvTotalsFraktKonto.AsString ;//cdsInvoiceListFraktkonto.AsString ;
   Moms_konto                          := cdsInvoiceListMomskonto.AsString ;
   Vatcode                             := cdsInvoiceListMomskod.AsInteger ;
   Debit_Credit                        := cdsInvoiceListINVOICE_KONTO.AsString ;

  //Om volymen ?r 0 eller null s?tt volymen till 1, f?r att ekonomin kr?ver det!
   if (sp_InvTotalsNM3.IsNull = False) and (sp_InvTotalsNM3.AsFloat > 0) then
   Volume:= sp_InvTotalsNM3.AsFloat
   else
   Volume:= 1 ;

//   ShowMessage('2: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
   SalesRegionNo                    := sp_InvTotalsSupplierNo.AsInteger ;
   SalesmanGroupNo                  := sp_InvTotalsSalesGroupNo.AsInteger ;
   Trading                          := sp_InvTotalsTrading.AsInteger ;
   KassaRabatt_For                  := sp_InvTotalsKassaRabatt_For.AsFloat ;
   KassaRabatt_SEK                  := sp_InvTotalsKassaRabatt_SEK.AsFloat ;
   Provision_For                    := sp_InvTotalsCommission_for.AsFloat ;
   Provision_SEK                    := sp_InvTotalsCommission_SEK.AsFloat ;

   TotalInvoiceValueNoRounding_For  := sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat ;
   TotalInvoiceValueNoRounding_SEK  := sp_InvTotalsTotalInvoiceValueNoRounding_SEK.AsFloat ;

   //FAKTURATOTAL I SEK
   InvoiceTotal_SEK                 := sp_InvTotalsInvoiceTotal_SEK.AsFloat ;

   //FAKTURA BELOPP SEK UTAN moms_sek OCH FRAKT
//   InvVal_No_moms_freight_SEK       := sp_InvTotalsInvValnofreight_SEK.AsFloat ;

   //FAKTURATOTAL I UTL?NDSVALUTA
   InvoiceTotal_For                 := sp_InvTotalsInvoiceTotal.AsFloat ;
   //FAKTURA BELOPP I UTL?NDSVALUTA UTAN moms_sek OCH FRAKT
//   InvVal_No_moms_freight_For       := sp_InvTotalsInvValnofreight.AsFloat ;

   //MOMSBELOPP SEK
   moms_sek                             := sp_InvTotalsVAT_SEK.AsFloat ;

   //MOMSBELOPP FOR
   moms_for                             := sp_InvTotalsVAT_FOR.AsFloat ;

  //DEBIT ELLER KREDIT INVOICE TYPE
   if InvoiceTotal_SEK > 0 then
    InvoiceType:= 1 //Debit
     else
      InvoiceType:= 2 ;//Credit


   AgentNo:= sp_InvTotalsAgentNo.AsInteger ;
  //XorID_KundNamn L?GGS I FREETEXT B?DE I HUVUD OCH RAD I VERIFIKATIONEN
   XorID_KundNamn := sp_InvTotalsidXOR.AsString+':'+sp_InvTotalsCustomerName.AsString ;
   xorID          := sp_InvTotalsidXOR.AsString ;
   //TEX EU REGION
   Region         := sp_InvTotalsRegion.AsString ;
   Currency       := sp_InvTotalsCurr.AsString ;
   //LANDNR FR?N FAKTURAADRESS
   CountryNo      := sp_InvTotalsCountryNo.AsInteger ;

   VaruGrupp      := sp_InvTotalsVaruGrupp.AsInteger ;
   PO_CountryNo   := sp_InvTotalsPO_CountryNo.AsInteger ;

   //0 = INGET SKATTEUPPLAG, 1 = SKATTEUPPLAG
   SkatteUpplag:= sp_InvTotalsSkatteUpplag.AsInteger ;
   //FAKTURADATUM
   InvoiceDate            := sp_InvTotalsInvoiceDate.AsSQLTimeStamp ;
   InvoiceDateAsDateTime  := SQLTimeStampToDateTime(InvoiceDate) ;
   InvoiceDateAsDateTime  := RecodeTime(InvoiceDateAsDateTime, 0, 0, 0, 0) ;
   InvoiceDate            := DateTimeToSQLTimeStamp(InvoiceDateAsDateTime) ;
//   RecodeTime(const AValue: TDateTime; const AHour, AMinute, ASecond, AMilliSecond: Word): TDateTime;
   //F?RFALLODATUM
   DueDate            := sp_InvTotalsDueDate.AsSQLTimeStamp ;
   DueDateAsDateTime  := SQLTimeStampToDateTime(DueDate) ;
   DueDateAsDateTime  := RecodeTime(DueDateAsDateTime, 0, 0, 0, 0) ;
   DueDate            := DateTimeToSQLTimeStamp(DueDateAsDateTime) ;

{   if ThisUser.UserID = 8 then
   Begin
    ShowMessage('Fakturadatum = ' + SqlTimeStampToStr);
   End ; }





//   Diff := InvoiceTotal_SEK (Rounding_SEK + TotalInvoiceValueNoRounding_SEK
//   InvoiceTotal_SEK


//Okt 24 2005 borttaget fr?n nedan formel KassaRabatt_For + Provision_For +
//   ForsaljningsKonto_For:= InvoiceTotal_For - (frakt_for + moms_for + Rounding_For) ;
//Okt 24 2005 borttaget fr?n nedan formel KassaRabatt_SEK + Provision_SEK ?
//   ForsaljningsKonto_SEK:= InvoiceTotal_SEK - (frakt_SEK + moms_sek + Rounding_SEK ) ;

   //FRAKTBELOPP I SEK
   frakt_SEK              := sp_InvTotalsFRAKT_SEK.AsFloat ;
   //FRAKTBELOPP I UTL?NDSVALUTA
   frakt_for              := sp_InvTotalsFRAKT_CURR.AsFloat ;




   ForsaljningsKonto_For  :=  sp_InvTotalsProduktvardeFOR.AsFloat ;
   ForsaljningsKonto_SEK  :=  sp_InvTotalsProduktvardeSEK.AsFloat ;


   //?RESUTJ?MNING BARA SEK f?rs ?ver till XOR
//   Rounding_SEK       := InvoiceTotal_SEK - (moms_sek + TotalInvoiceValueNoRounding_SEK) ;
   //?ndrat 9/11 2010

   if Debit_Credit = 'DEBIT' then
   Begin
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1 ;

     if frakt_for > 0 then
      frakt_for := frakt_for * -1 ;
    End ;

    if frakt_SEK < 0 then
     Rfrakt_SEK := frakt_SEK * -1
      else
       Rfrakt_SEK := frakt_SEK ;

    Rounding_SEK       := InvoiceTotal_SEK - (moms_sek + Rfrakt_SEK + ForsaljningsKonto_SEK) ;
   End
   else   //CREDIT
   Begin
   //************************************************************************//
   // only for rounding
   //************************************************************************//
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      Rfrakt_SEK := frakt_SEK * -1
       else
        Rfrakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK < 0 then
      Rfrakt_SEK := frakt_SEK * -1
       else
        Rfrakt_SEK := frakt_SEK ;
    End ;

    if ForsaljningsKonto_SEK > 0 then
     RForsaljningsKonto_SEK  := ForsaljningsKonto_SEK * -1
      else
       RForsaljningsKonto_SEK  := ForsaljningsKonto_SEK ;

    if moms_sek > 0 then
     Rmoms_sek := moms_sek * -1
      else
       Rmoms_sek := moms_sek ;

    if InvoiceTotal_SEK > 0 then
     RInvoiceTotal_SEK  := InvoiceTotal_SEK * -1
      else
       RInvoiceTotal_SEK  := InvoiceTotal_SEK ;

    Rounding_SEK       := RInvoiceTotal_SEK - (Rmoms_sek + Rfrakt_SEK + RForsaljningsKonto_SEK) ;
   End ;   //**


   if Debit_Credit = 'DEBIT' then
   Begin
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 1 then
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK < 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End ;
   End
   else
   Begin //Credit
    if cdsInvoiceListIncludeFreightCostInPrice.AsInteger = 0 then
    Begin
     if frakt_SEK < 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End
    else
    Begin
     if frakt_SEK > 0 then
      frakt_SEK := frakt_SEK * -1
       else
        frakt_SEK := frakt_SEK ;
    End ;
   End ;
   //OBJECT 5 ?R MOTPART
   Object5:= sp_InvTotalsO5.AsString ;

   if Length(Trim(Object5)) = 0 then
   Begin
    ShowMessage('Motpart (Object5) saknas f?r kund '+sp_InvTotalsCustomerName.AsString) ;
    Exit ;
   End ;

   //S?tt object2 till blank till att b?rja med...
    Object2:= '' ;

  if SalesmanGroupNo = 1 then //Danmark
   Object2:= '990' ;

  if cdsInvoiceListInvoiceType.AsInteger = 0 then
  Begin
   if Object5 = '99' then //Om extern kund
    ResKontraSerie:= 'VWK1'
     else
      ResKontraSerie:= 'VWK1' ;
  End
   else //Om det ?r en USA faktura skall serien vara VWK2
     if cdsInvoiceListInvoiceType.AsInteger = 4 then
      ResKontraSerie:= 'VWK2'
       else //Irland
        if cdsInvoiceListInvoiceType.AsInteger = 5 then
         ResKontraSerie:= 'VWK4' ;

  if Length(Trim(ResKontraSerie)) = 0 then
   Begin
    ShowMessage('Reskontraserie kan inte best?mmas f?r fakturanr '+IntToStr(InvoiceNo)) ;
    Exit ;
   End ;


//sq_invoiceTrf KOLLAR OM FAKTURANNUMRET REDAN FINNS I XOR
  sq_invoiceTrf.ParamByName('Invno').AsInteger      := InvoiceNo ;
  sq_invoiceTrf.ParamByName('enumerator').AsString  := ResKontraSerie ;
  sq_invoiceTrf.Open ;
  if sq_invoiceTrf.FieldByName('Invno').AsInteger > 1 then
  Begin
   ShowMessage('Faktura nr '+inttostr(InvoiceNo)+' ?r redan i loggen.') ;
   sq_invoiceTrf.Close ;
   Exit ;
  End ;
  sq_invoiceTrf.Close ;


//R?kna om bara om valutan ?r SEK
{   if (Currency = 'SEK') and (moms_sek <> 0) then
    moms_sek := InvoiceTotal_SEK * Moms_20Percent ;
   if Currency = 'SEK' then
    InvVal_No_moms_freight_SEK:= InvoiceTotal_SEK - (moms_sek + frakt_SEK) ; }

//Kundreskontra
   if Object5 = '99' then //99 = extern kund
   Begin
    if CountryNo = 9 then //CountryNo 9 = Sverige
     KundResKontra:= '1510' //Kundfordring Sverige externa kunder
      else
       KundResKontra:= '1512' ; //Kundfordring utl?ndska externa kunder
   End
    else //Intern kund
    Begin
     if Object5 = '22' then
      KundResKontra:= '1562' //Kundfordring koncern Vida Wood UK
       else
        KundResKontra:= '1560' ; //Kundfordring koncern Sverige
    End ;






  if Length(Trim(Object2)) = 0 then
  Object2:= '980' ;

   if Length(Trim(xorID)) = 0 then
   Begin
    ShowMessage('Fakturanr '+IntToStr(InvoiceNo)+ ' kan inte ?verf?ras, f?r att kund '+Trim(sp_InvTotalsCustomerName.AsString)+' har inget xorID i rolltypen kund') ;
    Exit ;
   End ;

   cdsInvTrfLoggInvoiceNo.AsInteger                     := InvoiceNo ;
   cdsInvTrfLoggInternalInvoiceNo.AsInteger             := InternalInvoiceNo ;
   cdsInvTrfLoggObject2.AsString                        := Object2 ;
   cdsInvTrfLoggObject5.AsString                        := Object5 ;
   cdsInvTrfLoggResKontraSerie.AsString                 := ResKontraSerie ;
   cdsInvTrfLoggKundResKontra.AsString                  := KundResKontra ;
   cdsInvTrfLoggForsaljningskonto.AsString              := Forsaljningskonto ;
   cdsInvTrfLoggFrakt_konto.AsString                    := Frakt_konto ;
   cdsInvTrfLoggMoms_konto.AsString                     := Moms_konto ;
   cdsInvTrfLoggRounding_Konto.AsString                 := Rounding_Konto ;
   cdsInvTrfLoggProvision_Konto.AsString                := Provision_Konto ;
   cdsInvTrfLoggKassaRabattKonto.AsString               := KassaRabattKonto ;
   cdsInvTrfLoggAgentNo.AsInteger                       := AgentNo ;
   cdsInvTrfLoggRegion.AsString                         := Region ;
   cdsInvTrfLoggCurrency.AsString                       := Currency ;
   cdsInvTrfLoggCountryNo.AsInteger                     := CountryNo ;
   cdsInvTrfLoggSkatteUpplag.AsInteger                  := SkatteUpplag ;
   cdsInvTrfLoggInvoiceTotal_SEK.AsFloat                := InvoiceTotal_SEK ;
   cdsInvTrfLoggForsaljningsKonto_SEK.AsFloat           := ForsaljningsKonto_SEK ;
   cdsInvTrfLoggmoms_sek.AsFloat                        := moms_sek ;
   cdsInvTrfLoggmoms_for.AsFloat                        := moms_For ;
   cdsInvTrfLoggmoms.AsFloat                            := moms_sek ;
   cdsInvTrfLoggRounding_SEK.AsFloat                    := Rounding_SEK ;
   cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK.AsFloat := TotalInvoiceValueNoRounding_SEK ;
   cdsInvTrfLoggProvision_SEK.AsFloat                   := Provision_SEK ;
   cdsInvTrfLoggKassaRabatt_SEK.AsFloat                 := KassaRabatt_SEK ;
   cdsInvTrfLoggfrakt_SEK.AsFloat                       := frakt_SEK ;
   cdsInvTrfLoggInvoiceTotal_For.AsFloat                := InvoiceTotal_For ;
   cdsInvTrfLoggForsaljningsKonto_For.AsFloat           := ForsaljningsKonto_For ;
   cdsInvTrfLoggRounding_For.AsFloat                    := Rounding_For ;
   cdsInvTrfLoggProvision_For.AsFloat                   := Provision_For ;
   cdsInvTrfLoggTotalInvoiceValueNoRounding_For.AsFloat := TotalInvoiceValueNoRounding_For ;
   cdsInvTrfLoggKassaRabatt_For.AsFloat                 := KassaRabatt_For ;
   cdsInvTrfLoggfrakt_for.AsFloat                       := frakt_for ;
   cdsInvTrfLoggInvoiceDate.AsSQLTimeStamp              := InvoiceDate ;
   cdsInvTrfLoggVatcode.AsInteger                       := Vatcode ;
   cdsInvTrfLoggInvoiceType.AsInteger                   := InvoiceType ;
   cdsInvTrfLoggEventDate.AsSQLTimeStamp                := DateTimeToSQLTimeStamp(Now) ;
   cdsInvTrfLoggUserId.AsInteger                        := ThisUser.UserID ;
   cdsInvTrfLoggXorID_KundNamn.AsString                 := XorID_KundNamn ;
   cdsInvTrfLoggTrading.AsInteger                       := Trading ;
   cdsInvTrfLoggVaruGrupp.AsInteger                     := VaruGrupp ;
   cdsInvTrfLoggPO_Country.AsInteger                    := PO_CountryNo ;

   cdsInvTrfLogg.Post ;
   if Test = False then
   Begin
    if cdsInvTrfLogg.ChangeCount > 0 then
     cdsInvTrfLogg.ApplyUpdates(0) ;
    cdsInvTrfLogg.Active:= False ;
   End
   else
   Begin
    fShowInvTrfLog:= TfShowInvTrfLog.Create(nil) ;
    try
      fShowInvTrfLog.ShowModal ;
      Exit ;
    finally
      FreeAndNil(fShowInvTrfLog) ;
      cdsInvTrfLogg.Active:= False ;
    end;
   End ;

//   ShowMessage('cdsInvTrfLogg.Post') ;

{   if (Round(rounding_SEK*100)/100) <> 0 then
   Begin
    ShowMessage('rounding_SEK = '+FloatToStr(rounding_SEK)+' Rounded = '+FloatToStr(Round(rounding_SEK*100)/100)) ;
   End ;

   if RoundTo(rounding_SEK,-2) <> 0 then
   Begin
    ShowMessage('rounding_SEK = '+FloatToStr(rounding_SEK)
    +' Rounded = '+FloatToStr(Round(rounding_SEK*100)/100)
    +' RoundTo = '+FloatToStr(RoundTo(rounding_SEK,-2))) ;
   End ;

   if ((Currency <> 'SEK') AND (rounding_For <> 0)) then
   Begin
    ShowMessage('rounding_For = '+FloatToStr(rounding_For)) ;
   End ; }

   if Thisuser.UserID = 8 then  Exit ;


//Skapa verifikationshuvudet
   EXEC_sp_VIS_xp_voulogwrite ('VWAB',
   3{logtype},
   InvoiceDate,
   ResKontraSerie,
   InvoiceNo,
   Copy(XorID_KundNamn, 1,80) //FreeText
   ) ;
//   ShowMessage('EXEC_sp_VIS_xp_voulogwrite');

//Skapa KUNDFORDRINGSKONTO verifikationsrad
   if InvoiceTotal_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   KundResKontra,//account tex 1560
   InvoiceDate, //logdate
   Currency, //currency
   InvoiceTotal_SEK,
   InvoiceTotal_For,
//   -1*InvVal_No_moms_freight_SEK, //amount : double;
//   -1*InvVal_No_moms_freight_For, //foramount : double;
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;

//   ShowMessage('EXEC_xp_vourowlogwrite');
//Skapa varv?rde verifikationsrad f?r F?rs?ljningskonto 30xx
   if ForsaljningsKonto_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Forsaljningskonto ,//account tex 3020
   InvoiceDate, //logdate
   Currency, //currency
//   InvoiceTotal_SEK,
//   InvoiceTotal_For,
   -1 * ForsaljningsKonto_SEK, //SEK amount : double;
   -1 * ForsaljningsKonto_For, //foramount : double;
   vatcode,//skall ha en vatcode
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
        ) ;

//   ShowMessage('2 EXEC_xp_vourowlogwrite');
//Skapa frakt verifikationsrad
//h?r!
   if Frakt_SEK <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Frakt_Konto ,//account tex 2610
   InvoiceDate, //logdate
   Currency, //currency
   frakt_SEK, //SEK amount : double;
   frakt_For, //foramount : double;
   vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;

//   ShowMessage('3 EXEC_xp_vourowlogwrite');
  //Skapa moms_sek verifikationsrad
   if moms_sek <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   moms_Konto ,//account tex 2610
   InvoiceDate, //logdate
   Currency, //currency
   -1*moms_sek, //Sek amount : double;
   -1*moms_for, //foramount : double;
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
    ) ;
//   ShowMessage('4 EXEC_xp_vourowlogwrite');

  //Skapa ?resutj?mnings verifikationsrad
{   if  ((Currency = 'SEK') AND (rounding_SEK <> 0))
   OR ((Currency <> 'SEK') AND (rounding_For <> 0)) then }
   if RoundTo(rounding_SEK,-2) <> 0 then
   EXEC_xp_vourowlogwrite (logno,
   Rounding_Konto ,//account tex 3740
   InvoiceDate, //logdate
   Currency, //currency
   -1*RoundTo(rounding_SEK,-2), //amount : double;
   0, //-1*rounding_For, OBS bara SEK avrundningsv?rdet skall ?verf?ras till xor!!
   0, //vatcode,
   sp_InvTotalsidXOR.AsString, //Creator
   Object2, Object5,
   Volume,
   Copy(XorID_KundNamn,1,30) //FreeText
   ) ;

//   ShowMessage('5 EXEC_xp_vourowlogwrite');



//Skapa Reskontra
   EXEC_xp_ldglogwrite ('VWAB',
   sp_InvTotalsidXOR.AsString,
   InvoiceType,
   ResKontraSerie,
   InvoiceNo,
   0,   //seq
   IntToStr(InvoiceNo),
   InvoiceDate,
   InvoiceDate,
   DueDate,
   Currency,
   InvoiceTotal_SEK,
   InvoiceTotal_For,
   moms_sek,
   vatcode,
   KundResKontra,
   'MJ',
   logno,
   vouno,
   serie,
   Object2, Object5 ) ;

//   ShowMessage('2 EXEC_xp_ldglogwrite');

{const cid, person : String;
const stype : Integer;  //invoiceType
const enum : String;
const invno, seq : Integer ;
const org : String;
const bookdate, invdate, duedate : TSQLTimeStamp;
const currency : String;
const amount, foramount, moms_sek : Double;
const vatcode : Integer;
const account : String;
const approval1 : String;
const logno, vouno : Integer;
const serie : String) ;  }
  End
   else
    ShowMessage('Fakturan har inga v?rden.') ;
  Finally
   sp_InvTotals.Active := False ;
  End ;
  End //  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
   else
    ShowMessage('Problem lokalisera faktura...') ;
 End ; //With
end;
*)

Function TfrmInvoiceList.NoOfCheckedRowsComboFilter(combo : TcxCheckComboBox;var InvoiceType  : Integer) : Integer ;
Var
    APCheckStates : ^TcxCheckStates;
    x             : Integer ;
Begin
 Result:= 0 ;
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
        Result  := Result + 1 ;
        InvoiceType := StrToIntDef(Properties.Items[x].ShortDescription,-1) ;
       End ;//if..
      End ;//for..
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

procedure TfrmInvoiceList.acTransferInvoicesUpdate(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  acTransferInvoices.Enabled := (icTransferredStatus.ItemIndex = 1)
  and (cdsInvoiceList.Active) and (cdsInvoiceList.RecordCount > 0) and (cdsInvoiceListINVOICE_NO.AsInteger > 0) ;
 End ;//With.. 
end;

procedure TfrmInvoiceList.acSaveMallExecute(Sender: TObject);
//Var x                 : Integer ;
//    fSokAvropMall     : TfSokAvropMall;
begin
// with dmVidaInvoice do
// Begin
//  cds_PropsInvInv.Active:= False ;
//  cds_PropsInv.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
//  cds_PropsInv.ParamByName('Name').AsString     := 'frmInvoiceList' ;
//  cds_PropsInv.Active:= True ;
// fSokAvropMall:= TfSokAvropMall.Create(nil) ;
// Try
//  if (fSokAvropMall.ShowModal = mrOK) and
  if (cds_PropsInv.RecordCount > 0) AND (cds_PropsInvName.AsString > '') then
  Begin
   if MessageDlg('Vill du spara aktuella inst?llningar som mall ' + cds_PropsInvForm.AsString + '?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin

   dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsInvName.AsString + '/' + cds_PropsInvForm.AsString, grdFakturaDBBandedTableView1) ;

   if cds_PropsInv.State in [dsBrowse] then
    cds_PropsInv.Edit ;

   cds_PropsInv.Post ;
   if cds_PropsInv.ChangeCount > 0 then
   Begin
    cds_PropsInv.ApplyUpdates(0) ;
    cds_PropsInv.CommitUpdates ;
   End ;
  End ;//if MessageDlg('Vill du spara aktuella inst?llningar som mall ' + cds_PropsInvName.AsString + '?',

  End //if fSokAvropMall.ShowModal = mrOK then
   else
    ShowMessage('Finns ingen mall att spara, anv?nd "Spara mall som"');
//  Finally
//   FreeAndNil(fSokAvropMall) ;
//  End ;
// End ;//With...
end;

procedure TfrmInvoiceList.acSaveMallAsExecute(Sender: TObject);
Var fEntryField       : TfEntryField;
    Props             : Array of variant ;
    I                 : Integer ;

Procedure CopyOldProps ;
Var i : Integer ;
Begin
  SetLength(Props, cds_PropsInv.FieldCount) ;
  for i:= 0 to cds_PropsInv.FieldCount-1 do
  Begin
   Props[i]:= cds_PropsInv.Fields[i].Value ;
  End ;
End ;

begin
 fEntryField:= TfEntryField.Create(nil) ;
 Try
  fEntryField.Caption         := 'Spara mall' ;
  fEntryField.Label1.Caption  := 'Mall namn:' ;
  fEntryField.eNoofpkgs.Properties.EditMask := '' ;
  if fEntryField.ShowModal = mrOK then
  Begin
   if MessageDlg('Vill g?ra en ny mall? ' + fEntryField.eNoofpkgs.Text + '?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    if (cds_PropsInv.Active) and (cds_PropsInv.RecordCount > 0) then
    Begin
     CopyOldProps ;
     cds_PropsInv.Insert ;
     For i := 0 to cds_PropsInv.FieldCount-1 do
     cds_PropsInv.Fields[i].Value := Props[i] ;
     cds_PropsInvForm.AsString := fEntryField.eNoofpkgs.Text ;
    End
    else
    Begin
     if not cds_PropsInv.Active then cds_PropsInv.Active  := True ;
     cds_PropsInv.Insert ;
     cds_PropsInvForm.AsString := fEntryField.eNoofpkgs.Text ;
     cds_PropsInvBarCodeNo.AsInteger      := 0 ;
     cds_PropsInvBookingTypeNo.AsInteger  := 2 ;
     cds_PropsInvCopyPcs.AsInteger        := 3 ;
     cds_PropsInvStatus.AsInteger         := 0 ;
     cds_PropsInvGradeStampNo.AsInteger   := 0 ;
    End ;




    dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsInvName.AsString + '/' + cds_PropsInvForm.AsString, grdFakturaDBBandedTableView1) ;


    cds_PropsInv.Post ;
    if cds_PropsInv.ChangeCount > 0 then
    Begin
     cds_PropsInv.ApplyUpdates(0) ;
     cds_PropsInv.CommitUpdates ;
    End ;
   End ;//if MessageDlg('Vill du spara aktuella inst?llningar som mall ' + cds_PropsInvName.AsString + '?',

  End ;//if fEntryField.ShowModal = mrOK then
  Finally
   FreeAndNil(fEntryField) ;
  End ;

// End ;//With...
end;

procedure TfrmInvoiceList.acOpenMallExecute(Sender: TObject);
begin
 OpenMall ;
end;

Function TfrmInvoiceList.OpenMall : Boolean ;
Var
    fSokAvropMall     : TfSokAvropMall;
begin
 Result := False ;
// With dmVidaInvoice do
// Begin
  cds_mall.Active:= False ;
  cds_mall.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  cds_mall.ParamByName('Name').AsString          := 'frmInvoiceList' ;
  cds_mall.ParamByName('LOObjectType').AsInteger := 0 ;
  cds_mall.Active:= True ;
  fSokAvropMall:= TfSokAvropMall.Create(nil) ;
  Try
   fSokAvropMall.ds_mall.DataSet  := cds_mall ;
   if (fSokAvropMall.ShowModal = mrOK) and (cds_mall.RecordCount > 0) AND (cds_mallName.AsString > '') then
   Begin
    cds_PropsInv.Active:= False ;
    cds_PropsInv.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
    cds_PropsInv.ParamByName('Name').AsString          := cds_mallName.AsString ;
    cds_PropsInv.ParamByName('Form').AsString          := cds_mallForm.AsString ;// cds_mallName.AsString ;
    cds_PropsInv.ParamByName('LOObjectType').AsInteger := 0 ;
    cds_PropsInv.Active:= True ;

    if cds_PropsInv.RecordCount > 0 then
    Begin
     Result  := True ;
     Application.ProcessMessages ;
//     dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_mallName.AsString + '/' + cds_mallForm.AsString, grdFakturaDBBandedTableView1) ;
     dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsInvName.AsString + '/' + cds_PropsInvForm.AsString, grdFakturaDBBandedTableView1) ;
    End ;

//   if cds_PropsInv.State in [dsEdit, dsInsert] then
//  cds_PropsInv.Post ;

 End ;//If ShowModal..
  Finally
   FreeAndNil(fSokAvropMall) ;
//   cds_PropsInv.Active:= False ;
  End ;
// End ;//With dm_SokFormular do
end;

procedure TfrmInvoiceList.OpenStandardMall(Sender: TObject);
begin
// With dmVidaInvoice do
// Begin
  cds_mall.Active:= False ;
  cds_mall.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  cds_mall.ParamByName('Name').AsString          := 'frmInvoiceList' ;
  cds_mall.ParamByName('LOObjectType').AsInteger := 1 ;
  cds_mall.Active:= True ;

  if (cds_mall.RecordCount > 0) AND (cds_mallName.AsString > '') then
  Begin
  cds_PropsInv.Active:= False ;
  cds_PropsInv.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  cds_PropsInv.ParamByName('Name').AsString          := cds_mallName.AsString ;
  cds_PropsInv.ParamByName('Form').AsString          := cds_mallForm.AsString ;// cds_mallName.AsString ;
  cds_PropsInv.ParamByName('LOObjectType').AsInteger := 1 ;
  cds_PropsInv.Active:= True ;
//  cds_PropsInv.Filter:= 'LOObjectType = 1' ;
//  cds_PropsInv.Filtered:= True ;
  Try
   if (cds_PropsInv.RecordCount > 0) AND (cds_PropsInvName.AsString > '') then
   Begin
    cds_PropsInv.Edit ;
    cds_PropsInvLengthFormatNo.AsInteger  := 0 ;
//    cds_PropsInvLengthOption.AsInteger    := 0 ;
    Application.ProcessMessages ;
//    dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsInvName.AsString, grdFakturaDBBandedTableView1) ;
    dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsInvName.AsString+'/'+cds_PropsInvForm.AsString, grdFakturaDBBandedTableView1) ;

    if cds_PropsInv.State in [dsEdit, dsInsert] then
      cds_PropsInv.Post ;

   End ;//if (cds_PropsInv.RecordCount > 0) AND (cds_PropsInvName.AsString > '') then
  Finally
//   cds_PropsInv.Filtered:= False ;
//   cds_PropsInv.Active:= False ;
  End ;
  End //if (fSokAvropMall.ShowModal = mrOK) and (cds_mall.RecordCount > 0) AND (cds_mallName.AsString > '') then
   else
    Begin
     ShowMessage('Du har ingen mall angiven som standard eller inga mallar alls, ?ppna och s?tt en mall som standard eller skapa en ny mall') ;
     if cds_PropsInv.Active then cds_PropsInv.Active:= False ;
    End ;
// End ;//With dm_SokFormular do
end;


procedure TfrmInvoiceList.cds_PropsInvAfterInsert(DataSet: TDataSet);
begin
 cds_PropsInvUserID.AsInteger        := ThisUser.UserID ;
 cds_PropsInvName.AsString           := 'frmInvoiceList' ;
 cds_PropsInvLOObjectType.AsInteger  := 0 ;
end;

procedure TfrmInvoiceList.acSetMallAsStrdExecute(Sender: TObject);
begin
 dmsSystem.Set_SetMallAsStd(cds_PropsInvName.AsString,  cds_PropsInvForm  .AsString) ;
end;

procedure TfrmInvoiceList.Timer2Timer(Sender: TObject);
begin
 nfSearchLastNr.SetFocus ;
 nfSearchLastNr.SelectAll ;
 Timer2.Enabled:= False ;
end;

procedure TfrmInvoiceList.Timer3Timer(Sender: TObject);
begin
 nfSearchInvoiceNo.SetFocus ;
 nfSearchInvoiceNo.SelectAll ;
 Timer3.Enabled:= False ;
end;

procedure TfrmInvoiceList.acGotoLOnrExecute(Sender: TObject);
begin
 nfSearchLO.SetFocus ;
 nfSearchLO.SelectAll ;
end;

procedure TfrmInvoiceList.teSaleOrgNrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmVidaInvoice do
 Begin
  RefreshInvoiceList(Sender, Trim(teSaleOrgNr.Text), -1, -1, -1, -1);
//  cdsInvoiceList.Locate('INVOICE_NO', StrToIntDef(teSaleOrgNr.Text,0), []) ;
  Timer4.Enabled  := True ;
 End ; //with
end;

procedure TfrmInvoiceList.Timer4Timer(Sender: TObject);
begin
 teSaleOrgNr.SetFocus ;
 teSaleOrgNr.SelectAll ;
 Timer4.Enabled:= False ;
end;

procedure TfrmInvoiceList.cds_PropsInvFilterOrderDateChange(
  Sender: TField);
begin
 if cds_PropsInvFilterOrderDate.AsInteger = 1 then
 Begin
  deStartPeriod.Enabled := True ;
  deEndPeriod.Enabled   := True ;
 End
 else
 Begin
  deStartPeriod.Enabled := False ;
  deEndPeriod.Enabled   := False ;
 End ;
end;

procedure TfrmInvoiceList.acPrintFRInvoiceExecute(Sender: TObject);
Var dmFR: TdmFR;
begin
 dmFR:= TdmFR.Create(nil) ;
 Try
 With dmFR do
 Begin
  Try
   sp_vis_FR_Invoice.Active := False ;
   sp_vis_FR_Invoice.ParamByName('@INVOICENO').AsInteger := dmVidaInvoice.cdsInvoiceListInternalInvoiceNo.AsInteger ;
   sp_vis_FR_Invoice.Active := True ;

   if frxReport1.PrepareReport then
   frxReport1.ShowReport ;// . Preview  := frxPreview1 ;
  Finally
   sp_vis_FR_Invoice.Active := False ;
  End ;
 End ;//with dmFR
 Finally
  FreeAndNil(dmFR) ;
 End ;
end;

procedure TfrmInvoiceList.acExportXLSExecute(Sender: TObject);
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
  ExportGridToExcel(FileName, grdFaktura, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmInvoiceList.acShowVerifikatLoggExecute(Sender: TObject);
var fVerifikationLogg: TfVerifikationLogg;
begin
 with dmVidaInvoice do
 Begin
  mt_VerLogg.Active := True ;
  Try
  InsertVerifikatLogg (True,
  cdsInvoiceListINVOICE_NO.AsInteger,
  cdsInvoiceListInternalInvoiceNo.AsInteger) ;
  fVerifikationLogg:= TfVerifikationLogg.Create(nil) ;
  Try
  fVerifikationLogg.Caption := 'Verifikatlogg - Fakturanr: ' + cdsInvoiceListINVOICE_NO.AsString ;
  fVerifikationLogg.ShowModal ;
  Finally
   FreeAndNil(fVerifikationLogg) ;
  End ;
  Finally
   mt_VerLogg.Active  := False ;
  End ;
 End ;//With
end;

procedure TfrmInvoiceList.acReCalcInvoiceExecute(Sender: TObject);
begin
 if MessageDlg('Vill du kalkylera om markerade fakturor?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  mtSelectedInvoices.Active := False ;
  mtSelectedInvoices.Active := True ;
  Try
  SelectMarkedInvoices ;
  ReCalcSelectedInvoices ;
  Finally
   mtSelectedInvoices.Active  := False ;
  End ;
 End ;

 //Set kontonr, artikelnr mm
 //ReCalc produktv?rde utan frakt
 //Then it will be easy to make a pivottable
end;

procedure TfrmInvoiceList.ReCalcSelectedInvoices ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
//  mt_VerLogg.Active := True ;
//  Try
  mtSelectedInvoices.First ;
  While not mtSelectedInvoices.Eof do
  Begin
   OpenInvoiceAndReCalc(mtSelectedInvoicesInternalInvoiceNo.AsInteger) ;
   mtSelectedInvoices.Next ;
  End ;
//  Finally
//   mt_VerLogg.Active  := False ;
//  End ;
 End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmInvoiceList.OpenInvoiceAndReCalc(const IntInvNo  : Integer) ;
Var //frmInvoice  : TfrmInvoice ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
//  frmInvoice:= TfrmInvoice.Create(NIL);
  Try
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//   cdsInvoiceShipTo.Active:= True ;
//   frmInvoice.TabControl1.Tabs.Clear ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= False ;
   cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= True ;

   cdsInvoiceLO.Active:= False ;
   cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceLO.Active:= True ;

{   cds_PIP.Active:= False ;
   cds_PIP.ParamByName('OwnerNo').AsInteger:= cdsInvoiceHeadSupplierNo.AsInteger ;
   cds_PIP.Active:= True ;

   cds_IH_SpecLoad.Active:= False ;
   cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   cds_IH_SpecLoad.Active:= True ;
   if cds_IH_SpecLoad.RecordCount = 0 then
   Begin
    cds_IH_SpecLoad.Insert ;
    cds_IH_SpecLoad.Post ;
   End ;
 }

  cdsInvoiceLO.First ;

{  While not cdsInvoiceLO.Eof do
  Begin
   frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;
   Screen.Cursor := crSQLWait;
   }

//  if frmInvoice.TabControl1.Tabs.Count > 0 then
  if cdsInvoiceLO.RecordCount > 0 then
  Begin
//   cdsInvoiceLO.Filter:= 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
//   ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;// frmInvoice.TabControl1.Tabs[0] ;
//   cdsInvoiceLO.Filtered:= True ;
   cdsInvoiceDetail.Close ;
   cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
//   cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
//   ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;// frmInvoice.TabControl1.Tabs[0] ;
//   cdsInvoiceDetail.Filtered:= True ;
   cdsInvoiceDetail.Active:= True ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   CalcAndUpdateNetProductValueInInvoiceDetail ;

   if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cdsInvoiceDetail.Post ;
   if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
   Begin
    dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(0) ;
    dmVidaInvoice.cdsInvoiceDetail.CommitUpdates ;
   End ;

   SummarizeWithOutOpenInvoiceForm ;

   if cdsInvoiceHead.ChangeCount > 0 then
   Begin
    cdsInvoiceHead.ApplyUpdates(0) ;
    cdsInvoiceHead.CommitUpdates ;
   End ;
  End ;//if..
//   frmInvoice.ShowModal ;

//   if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
//    dmVidaInvoice.cds_IH_SpecLoad.Post ;
{   if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
   Begin
    dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0) ;
    dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates ;
   End ;
  End
  else
  Begin
   Exit ;
  End ; }

 Finally
  fInternalInvoiceNo        := -1 ;
  cdsInvoiceDetail.Close ;
  cdsInvoiceLO.Filtered     := False ;
  cdsInvoiceLO.Active       := False ;
  cdsInvoiceDetail.Filtered := False ;
  cdsInvoiceDetail.Filter   := '';
  cdsInvoiceDetail.Active   := False ;
//  cdsInvoiceShipTo.Active   := False ;
  cdsInvoiceHead.Active     := False ;
//  frmInvoice.Free ;
 End ;
 End ; // with
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfrmInvoiceList.RefreshInvoiceList (Sender: TObject;const SalesOrgNo : String;const InvoiceNo, InvoiceNoII, LONo, InternalInvoiceNo : Integer) ;
Var
 Save_Cursor  : TCursor;
 InvoiceType  : Integer ;
begin
// with daMoLM1 do
 with  dmVidaInvoice do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  grdFakturaDBBandedTableView1.BeginUpdate ;
//  grdInvoice.DataSource.DataSet.DisableControls ;
  Try


  if cds_PropsInv.State = dsBrowse then
   cds_PropsInv.Edit ;

  if Length(icBetalStatus.Text) = 0 then
   cds_PropsInvStatus.Clear ;

  if Length(lcSaljgrupp.Text) = 0 then
   cds_PropsInvSalesPersonNo.Clear ;

  if Length(lcSR.Text) = 0 then
   cds_PropsInvSalesRegionNo.Clear ;

  if Length(lcKund.Text) = 0 then
   cds_PropsInvClientNo.Clear ;

  if Length(cbTyp.Text) = 0 then
   cds_PropsInvBarCodeNo.Clear ;

  if Length(cbKonto.Text) = 0 then
   cds_PropsInvBookingTypeNo.Clear ;

  if Length(cbVaruSlag.Text) = 0 then
   cds_PropsInvCopyPcs.Clear ;

  if Length(icTransferredStatus.Text) = 0 then
   cds_PropsInvGradeStampNo.Clear ;

  if cds_PropsInv.State in [dsEdit, dsInsert] then
   cds_PropsInv.Post ;


  cdsInvoiceList.Active:= False ;
  cdsInvoiceList.Close ;
  cdsInvoiceList.SQL.Clear ;

  cdsInvoiceList.SQL.Add('SELECT Distinct IH.QuickInvoice, IH.InternalInvoiceNo, IH.InvoiceDate AS INV_DATE,') ;

  cdsInvoiceList.SQL.Add('invd.VatCode AS Momskod, invd.Konto AS Varukonto,') ;
  cdsInvoiceList.SQL.Add('ART.ArticleName, invd.moms_konto AS Momskonto,') ;

  cdsInvoiceList.SQL.Add('(Select TOP 1 invd2.Konto from dbo.InvoiceDetail invd2') ;
  cdsInvoiceList.SQL.Add('WHERE invd2.InternalInvoiceNo = ih.InternalInvoiceNo') ;
  cdsInvoiceList.SQL.Add('AND invd2.ShippingPlanNo = IL.ShippingPlanNo') ;
  cdsInvoiceList.SQL.Add('AND (invd2.ArticleNo = 2 or invd2.ArticleNo = 4)) AS Fraktkonto,') ;

//  cdsInvoiceList.SQL.Add('invd.VatCode, invd.Konto, ART.ArticleName, invd.moms_konto, invd.Konto AS FraktKonto,') ;
  cdsInvoiceList.SQL.Add('IH.CustomerName AS CUSTOMER, IL.Shipper AS SHIPPER,') ;

  cdsInvoiceList.SQL.Add('inos.InvoiceNo AS INVOICE_NO,') ;

   cdsInvoiceList.SQL.Add('CASE') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN '+'''VIDA (VWK1)''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN '+'''PROFORMA, fakturera senare''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN '+'''PROFORMA, flytta paket''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 3 THEN '+'''INK?P''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 4 THEN '+'''USA (VWK2)''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 5 THEN '+'''FW (VWK4)''') ;
   cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,') ;

   cdsInvoiceList.SQL.Add('CASE') ;
   cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN '+'''DEBIT''') ;
   cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN '+'''CREDIT''') ;
   cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,') ;

  cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
  cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
  cdsInvoiceList.SQL.Add('	WHERE') ;
  cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
  cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
  cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
  cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS KURS,') ;

  cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,') ;



   cdsInvoiceList.SQL.Add('IH.AgentName AS AGENT, ') ;

   cdsInvoiceList.SQL.Add('isnull(IH.Trading,0) AS TRADING,') ;

   cdsInvoiceList.SQL.Add('IH.SalesOrgNo AS F?rs?ljOrgNr,') ;

   cdsInvoiceList.SQL.Add('CASE WHEN [dbo].[IsoWk](IH.InvoiceDate) < 10 THEN 	CAST(DATEPART (Year, IH.InvoiceDate) AS CHAR(4)) + ') ;
   cdsInvoiceList.SQL.Add(QuotedStr('-0') + ' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2))') ;
   cdsInvoiceList.SQL.Add('ELSE CAST(DATEPART (Year, IH.InvoiceDate) AS CHAR(4)) + ') ;
   cdsInvoiceList.SQL.Add(QuotedStr('-') + ' + CAST([dbo].[IsoWk] (IH.InvoiceDate) AS CHAR(2)) END AS VECKA,') ;

   cdsInvoiceList.SQL.Add('IH.CountryName AS LAND,') ;
   cdsInvoiceList.SQL.Add('SR.ClientName AS F?rs?ljReg,') ;
   cdsInvoiceList.SQL.Add('SalesGroupName AS S?ljGrupp, IH.CustomerNo, IH.InvoiceType, IL.ShippingPlanNo AS LO,') ;
   cdsInvoiceList.SQL.Add('IH.ST_CityName AS LevORT, IL.Reference AS ErReferens, IL.OrderNoText AS Ordernr, IH.DueDate, IH.AgentNo,') ;
   cdsInvoiceList.SQL.Add('IH.StickyNote AS Postit, Inos.Prefix AS PO_prefix, IH.VAT_OnInvoice AS Skatteupplag,') ;
   cdsInvoiceList.SQL.Add('IH.IntraStatCountryNo, ISC.CountryName AS Statistikland, IH.DelKredit, IH.IncludeFreightCostInPrice,') ;


   cdsInvoiceList.SQL.Add('SUM(invd.NoOfPkgs) AS Paket,') ;
   cdsInvoiceList.SQL.Add('SUM(invd.intNM3) AS NM3_Int,') ;
   cdsInvoiceList.SQL.Add('SUM(invd.NominalM3) AS NM3_Ext,') ;
   cdsInvoiceList.SQL.Add('SUM(invd.ActualNetM3) AS AM3,') ;
   cdsInvoiceList.SQL.Add('SUM(invd.Volume_OrderUnit) AS Kvantitet,') ;
   cdsInvoiceList.SQL.Add('SUM(invd.ProductValue) AS Produktvarde,') ;

   cdsInvoiceList.SQL.Add('SUM(invd.ProductValue)') ;
   cdsInvoiceList.SQL.Add('*') ;
   cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
   cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
   cdsInvoiceList.SQL.Add('	WHERE') ;
   cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
   cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
   cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
   cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS ProduktVardeSEK,') ;

   cdsInvoiceList.SQL.Add('SUM(invd.ProductValueWOFreight) AS ProduktvardeUtanFrakt,') ;

   cdsInvoiceList.SQL.Add('SUM(invd.ProductValueWOFreight)') ;
   cdsInvoiceList.SQL.Add('*') ;
   cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
   cdsInvoiceList.SQL.Add('	FROM ExChangeRate EX, Currency C') ;
   cdsInvoiceList.SQL.Add('	WHERE') ;
   cdsInvoiceList.SQL.Add('	C.CurrencyName = IH.CurrencyName') ;
   cdsInvoiceList.SQL.Add('	and EX.CurrencyNo = C.CurrencyNo') ;
   cdsInvoiceList.SQL.Add('	AND EX.ValidFrom <= IH.InvoiceDate') ;
   cdsInvoiceList.SQL.Add('	group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS ProduktVardeUtanFraktSEK,') ;

//   cdsInvoiceList.SQL.Add('SUM(invd.ProductValue) - SUM(invd.ProductValueWOFreight) AS FraktValuta,') ;


   cdsInvoiceList.SQL.Add('(Select abs(SUM(invd2.FreightCostCurr)) from dbo.InvoiceDetail invd2') ;
   cdsInvoiceList.SQL.Add('WHERE invd2.InternalInvoiceNo = ih.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('AND invd2.ShippingPlanNo = IL.ShippingPlanNo') ;
   cdsInvoiceList.SQL.Add('AND invd2.ArticleNo = invd.ArticleNo) AS FraktValuta,') ;

   cdsInvoiceList.SQL.Add('(SUM(invd.ProductValue) - SUM(invd.ProductValueWOFreight))') ;
   cdsInvoiceList.SQL.Add('*') ;
   cdsInvoiceList.SQL.Add('(Select top 1 IsNull(EX.ExChangeRate, 0)') ;
   cdsInvoiceList.SQL.Add('FROM ExChangeRate EX, Currency C') ;
   cdsInvoiceList.SQL.Add('WHERE') ;
   cdsInvoiceList.SQL.Add('C.CurrencyName = IH.CurrencyName') ;
   cdsInvoiceList.SQL.Add('and EX.CurrencyNo = C.CurrencyNo') ;
   cdsInvoiceList.SQL.Add('AND EX.ValidFrom <= IH.InvoiceDate') ;
   cdsInvoiceList.SQL.Add('group by EX.ValidFrom, EX.ExChangeRate Order by EX.ValidFrom desc ) AS FraktValutaSEK,') ;

   cdsInvoiceList.SQL.Add('CASE WHEN ih.VAT_OnInvoice = 0 THEN') ;
   cdsInvoiceList.SQL.Add('SUM(invd.VatValue)') ;
   cdsInvoiceList.SQL.Add('END AS momsvarde') ;


   cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH') ;
   cdsInvoiceList.SQL.Add('Left Outer Join dbo.Country ISC on ISC.CountryNo = IH.IntraStatCountryNo') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;

   cdsInvoiceList.SQL.Add('Inner join dbo.InvoiceDetail invd on invd.InternalInvoiceNo = IL.InternalInvoiceNo') ;
   cdsInvoiceList.SQL.Add('and invd.ShippingPlanNo = IL.ShippingPlanNo') ;
   cdsInvoiceList.SQL.Add('Inner join dbo.FS_Article ART on ART.ArticleNo = invd.ArticleNo') ;

   cdsInvoiceList.SQL.Add('Left Outer join dbo.Client SR ON SR.ClientNo = IH.SupplierNo') ;

   cdsInvoiceList.SQL.Add('Left Outer Join dbo.SalesManGroupRow smg') ;
   cdsInvoiceList.SQL.Add('Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGroupNo') ;
   cdsInvoiceList.SQL.Add('on smg.UserID = IH.ResponsibleSeller') ;
   cdsInvoiceList.SQL.Add('Left Outer Join dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.InternalInvoiceNo') ;

//   cdsInvoiceList.SQL.Add('WHERE 1=1') ;

    cdsInvoiceList.SQL.Add('WHERE ((invd.ArticleNo = 1 or invd.ArticleNo = 3) OR') ;
    cdsInvoiceList.SQL.Add('((invd.ArticleNo = 2 or invd.ArticleNo = 4)') ;
    cdsInvoiceList.SQL.Add('AND not exists (Select invd3.InternalInvoiceNo') ;
    cdsInvoiceList.SQL.Add('FROM dbo.InvoiceDetail invd3') ;
    cdsInvoiceList.SQL.Add('WHERE invd3.InternalInvoiceNo = invd.InternalInvoiceNo') ;
    cdsInvoiceList.SQL.Add('AND (invd3.ArticleNo = 1 or invd3.ArticleNo = 3))))') ;


   if (not cds_PropsInvClientNo.IsNull) and (cds_PropsInvClientNo.AsInteger > 0) then
   Begin
   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   cdsInvoiceList.SQL.Add('AND IH.CustomerNo = ' + cds_PropsInvClientNo.AsString) ;
   End ;

   if Length(SalesOrgNo) > 0 then
   cdsInvoiceList.SQL.Add('AND IH.SalesOrgNo LIKE ' + QuotedStr('%' + teSaleOrgNr.Text + '%') ) ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if (cds_PropsINVSalesPersonNo.AsInteger > 0) and (InvoiceNo = -1) and (LONo = -1) then
    cdsInvoiceList.SQL.Add('AND smg.SalesGroupNo = ' + cds_PropsINVSalesPersonNo.AsString) ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsInvLengthFormatNo.AsInteger = 1 then
     cdsInvoiceList.SQL.Add('AND ((IH.DelKredit = 0) or (IH.DelKredit is null))') ;
   End ;

   if cds_PropsInvLengthOption.AsInteger = 1 then
   Begin
    cdsInvoiceList.SQL.Add('AND exists (Select  inos2.InternalInvoiceNo FROM ') ;
    cdsInvoiceList.SQL.Add('dbo.InvoiceNos inos2 WHERE inos2.InternalInvoiceNo = IH.InternalInvoiceNo)') ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsINVSalesRegionNo.AsInteger > 0 then
    cdsInvoiceList.SQL.Add('AND IH.SupplierNo = ' + cds_PropsINVSalesRegionNo.AsString) ;
   End ;

   if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
   Begin
    if cds_PropsInvFilterOrderDate.AsInteger = 1 then
    Begin
     cdsInvoiceList.SQL.Add('AND IH.InvoiceDate >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date)) ) ;
     cdsInvoiceList.SQL.Add('AND IH.InvoiceDate <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date)) ) ;
    End ;
   End ;


   if InvoiceNo > -1 then
   Begin
    cdsInvoiceList.SQL.Add('AND inos.InvoiceNo = ' + IntToStr(InvoiceNo)) ;
   End ;


   if LONo <> -1 then
    cdsInvoiceList.SQL.Add('AND IL.ShippingPlanNo = ' + IntToStr(LONo)) ;


   if InternalInvoiceNo  <> -1 then
    cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo = ' + IntToStr(InternalInvoiceNo)) ;


   cdsInvoiceList.SQL.Add(GetSQLofComboFilter(0, 'IH.InvoiceType', ccbInvoiceType)) ;

  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  Case cbTyp.ItemIndex of
   0 : cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 0 ') ;
   1 : cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1 ') ;
// 2 visa b?de snabb och normala
  End ;
  End ;

{  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  Case cbKonto.ItemIndex of
   0 : cdsInvoiceList.SQL.Add('AND IH.Tot_Inv_Inc_Freight_Extras > 0 ') ;
   1 : cdsInvoiceList.SQL.Add('AND IH.Tot_Inv_Inc_Freight_Extras < 0 ') ;
// 2 : visa b?de debit och credit
  End ;
  End ; }

  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
   if (cds_PropsINVCopyPcs.AsInteger = 1) or (cds_PropsINVCopyPcs.AsInteger = 3) then
   Begin
    cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo in (Select InvD.InternalInvoiceNo FROM') ;
    cdsInvoiceList.SQL.Add('dbo.InvoiceDetail InvD') ;
    cdsInvoiceList.SQL.Add('Where InvD.InternalInvoiceNo = IH.InternalInvoiceNo') ;
    cdsInvoiceList.SQL.Add('AND InvD.ArticleNo = ' + IntToStr(cds_PropsINVCopyPcs.AsInteger) + ')') ;
   End ;
  End ;


  if (Length(SalesOrgNo) = 0) and (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
  Begin
  if cds_PropsINVStatus.AsInteger = 1 then //DEL OCH OBETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo not IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End
  else
  if cds_PropsINVStatus.AsInteger = 2 then //ENDAST DEL BETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 0 AND AmountPaid > 0)') ;
  End
  else
  if cds_PropsINVStatus.AsInteger = 3 then //FULL BETALDA
  Begin
   cdsInvoiceList.SQL.Add('AND IH.InternalInvoiceNo IN') ;
   cdsInvoiceList.SQL.Add('(Select  InternalInvoiceNo  FROM dbo.InvoicePayStatus WHERE Paid = 1)') ;
  End ;
  End ;//if  (InternalInvoiceNo  = -1) AND (LONo = -1) and (InvoiceNo = -1) then
//  ShowMessage('DisplayName = ' + ccbInvoiceType.Properties.Items.Items.DisplayName) ;



// if cbOpenQuery.Checked = False then
 if NoOfCheckedRowsComboFilter(ccbInvoiceType, InvoiceType) = 1 then
 Begin
 if cds_PropsINVGradeStampNo.AsInteger = 1 then
  //EJ ?verf?rda
 Begin
 Case InvoiceType of
    0 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK1') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    4 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK2') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    5 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo not in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK4') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;

   End ; //Case
 End //if dmVidaInvoice.cds_PropsINVGradeStampNo.AsInteger = 1 then
 else
 //?verf?rda
 if cds_PropsINVGradeStampNo.AsInteger = 2 then
 Begin
 Case InvoiceType of
    0 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK1') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    4 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK2') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;
    5 : Begin
         cdsInvoiceList.SQL.Add('AND INOs.InvoiceNo in (SELECT invno FROM alvesql04.XOR_VIDA.dbo.ledgerx ') ;
         cdsInvoiceList.SQL.Add('WHERE enumerator = ' + QuotedStr('VWK4') ) ;
         cdsInvoiceList.SQL.Add('AND invno = Inos.InvoiceNo)') ;
        End ;

   End ; //Case
 End ; //if dmVidaInvoice.cds_PropsINVGradeStampNo.AsInteger = 2 then
 End ;//



  cdsInvoiceList.SQL.Add('GROUP BY IH.QuickInvoice, IH.InternalInvoiceNo, IH.InvoiceDate,') ;
  cdsInvoiceList.SQL.Add('IH.CustomerName, IL.Shipper, inos.InvoiceNo, IH.Debit_Credit,') ;
  cdsInvoiceList.SQL.Add('IH.InvoiceType, IH.CurrencyName, IL.ShippingPlanNo, IH.AgentName,') ;
  cdsInvoiceList.SQL.Add('IH.Trading, IH.SalesOrgNo, IH.VAT_OnInvoice, IH.CountryName, SR.ClientName,') ;
  cdsInvoiceList.SQL.Add('SalesGroupName, IH.CustomerNo, IH.InvoiceType, IL.ShippingPlanNo,') ;
  cdsInvoiceList.SQL.Add('IH.ST_CityName, IL.Reference, IL.OrderNoText, IH.DueDate, IH.AgentNo,') ;
  cdsInvoiceList.SQL.Add('IH.StickyNote, Inos.Prefix, IH.IntraStatCountryNo, ISC.CountryName, IH.DelKredit,') ;
  cdsInvoiceList.SQL.Add('IH.IncludeFreightCostInPrice, invd.VatCode, invd.Konto, ART.ArticleName, invd.moms_konto, invd.ArticleNo') ;
//   cdsInvoiceList.SQL.Add('ORDER BY InvoiceDate desc') ;
//  if ThisUser.UserID = 8 then cdsInvoiceList.SQL.SaveToFile('sq_fakturaRapport.TXT');

  cdsInvoiceList.Active:= True ;

   Finally
//    grdInvoice.DataSource.DataSet.EnableControls ;
    grdFakturaDBBandedTableView1.EndUpdate ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
 End ; // with
end;

procedure TfrmInvoiceList.acShowVerifikatLoggUpdate(Sender: TObject);
begin
 acShowVerifikatLogg.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acReCalcInvoiceUpdate(Sender: TObject);
begin
 acReCalcInvoice.Enabled:= (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.Active)
 and (grdFakturaDBBandedTableView1.DataController.DataSource.DataSet.RecordCount > 0) ;
end;

procedure TfrmInvoiceList.acGetKontoNrExecute(Sender: TObject);
begin
 if MessageDlg('Vill du tilldela kontonr p? markerade fakturor?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  mtSelectedInvoices.Active := False ;
  mtSelectedInvoices.Active := True ;
  Try
  SelectMarkedInvoices ;
  AssignKontoNrToSelectedInvoices ;
  Finally
   mtSelectedInvoices.Active  := False ;
  End ;
 End ;
end;

procedure TfrmInvoiceList.AssignKontoNrToSelectedInvoices ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
//  mt_VerLogg.Active := True ;
//  Try
  mtSelectedInvoices.First ;
  While not mtSelectedInvoices.Eof do
  Begin
   OpenInvoiceAndAssignKontoNr(mtSelectedInvoicesInternalInvoiceNo.AsInteger) ;
   mtSelectedInvoices.Next ;
  End ;
//  Finally
//   mt_VerLogg.Active  := False ;
//  End ;
 End ;//With

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmInvoiceList.OpenInvoiceAndAssignKontoNr(const IntInvNo  : Integer) ;
Var //frmInvoice  : TfrmInvoice ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 with dmVidaInvoice do
 Begin
//  frmInvoice:= TfrmInvoice.Create(NIL);
  Try
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//   cdsInvoiceShipTo.Active:= True ;
//   frmInvoice.TabControl1.Tabs.Clear ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= False ;
   cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cdsInvoiceHead.Active:= True ;

//   cdsInvoiceLO.Active:= False ;
//   cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
//   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//   cdsInvoiceLO.Active:= True ;

{   cds_PIP.Active:= False ;
   cds_PIP.ParamByName('OwnerNo').AsInteger:= cdsInvoiceHeadSupplierNo.AsInteger ;
   cds_PIP.Active:= True ;

   cds_IH_SpecLoad.Active:= False ;
   cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
   cds_IH_SpecLoad.Active:= True ;
   if cds_IH_SpecLoad.RecordCount = 0 then
   Begin
    cds_IH_SpecLoad.Insert ;
    cds_IH_SpecLoad.Post ;
   End ; }


//  cdsInvoiceLO.First ;

{  While not cdsInvoiceLO.Eof do
  Begin
   frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString) ;
   cdsInvoiceLO.Next ;
  End ;
   Screen.Cursor := crSQLWait;
   }

//  if frmInvoice.TabControl1.Tabs.Count > 0 then
//  if cdsInvoiceLO.RecordCount > 0 then
//  Begin
//   cdsInvoiceLO.Filter:= 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
//   ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;// frmInvoice.TabControl1.Tabs[0] ;
//   cdsInvoiceLO.Filtered:= True ;
   cdsInvoiceDetail.Close ;
   cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= IntInvNo ;
//   cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = ' + cdsInvoiceHeadInternalInvoiceNo.AsString+
//   ' AND ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString ;// frmInvoice.TabControl1.Tabs[0] ;
   cdsInvoiceDetail.Filtered:= True ;
   cdsInvoiceDetail.Active:= True ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   //CalcAndUpdateNetProductValueInInvoiceDetail ;

   SetKontonr ;

   if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cdsInvoiceDetail.Post ;
   if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
   Begin
    dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(0) ;
    dmVidaInvoice.cdsInvoiceDetail.CommitUpdates ;
   End ;

//   SummarizeWithOutOpenInvoiceForm ;

{   if cdsInvoiceHead.ChangeCount > 0 then
   Begin
    cdsInvoiceHead.ApplyUpdates(0) ;
    cdsInvoiceHead.CommitUpdates ;
   End ;
  End ;//if..
  }
//   frmInvoice.ShowModal ;

//   if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
//    dmVidaInvoice.cds_IH_SpecLoad.Post ;
{   if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
   Begin
    dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0) ;
    dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates ;
   End ;
  End
  else
  Begin
   Exit ;
  End ; }

 Finally
  fInternalInvoiceNo        := -1 ;
  cdsInvoiceDetail.Close ;
//  cdsInvoiceLO.Filtered     := False ;
//  cdsInvoiceLO.Active       := False ;
  cdsInvoiceDetail.Filtered := False ;
  cdsInvoiceDetail.Filter   := '';
  cdsInvoiceDetail.Active   := False ;
//  cdsInvoiceShipTo.Active   := False ;
  cdsInvoiceHead.Active     := False ;
//  frmInvoice.Free ;
 End ;
 End ; // with
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfrmInvoiceList.acFilterOnLOExecute(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  nfSearchLO.Text := grdFakturaDBBandedTableView1.DataController.DataSet.FieldByName('LO').AsString ;

  RefreshInvoiceList(Sender, '', -1, -1, StrToIntDef(Trim(nfSearchLO.Text),0), -1);

  cdsInvoiceList.Locate('LO', StrToIntDef(Trim(nfSearchLO.Text),0), []) ;
//  Timer1.Enabled:= True ;
 End ; //with
end;

procedure TfrmInvoiceList.acAssignMissingLoadsExecute(Sender: TObject);
begin
 //Sist markerade raden ?r senaste fakturan och den som har en eller flera laster
 //F?reg?ende rad ?r credit
end;

end.


