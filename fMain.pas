unit fMain;

interface

uses
  DateUtils,
//  fAvrop,
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
  Menus, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, dxBarApplicationMenu, dxScreenTip, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxRibbonCustomizationForm, siComp, siLngLnk,
  System.Actions, udmFR, uReportController, dxSkinscxPCPainter, cxNavigator,
  System.Variants, cxGridChartView, cxGridDBChartView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridBandedTableView,
  cxGridDBBandedTableView ;



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
    cxbtnChangeReporter: TdxBarLargeButton;
    PanelMain: TPanel;
    acRefresh_Usersmonpu_piv: TAction;
    PanelBottom: TPanel;
    Panel2: TPanel;
    Panelgrid: TPanel;
    Panel4: TPanel;
    grdPkgOutput: TcxGrid;
    grdPkgOutputDBTableView1: TcxGridDBTableView;
    grdPkgOutputLevel1: TcxGridLevel;
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
    PanelTop: TPanel;
    cxButton1: TcxButton;
    mePackageNo: TcxTextEdit;
    cxButton2: TcxButton;
    PanelPkgsPerLine: TPanel;
    grdPkgsPerMPLevel1: TcxGridLevel;
    grdPkgsPerMP: TcxGrid;
    grdPkgsPerMPDBCardView1: TcxGridDBCardView;
    grdPkgsPerMPDBCardView1RegPointName: TcxGridDBCardViewRow;
    grdPkgsPerMPDBCardView1Packages: TcxGridDBCardViewRow;
    grdPkgsPerMPDBChartView1: TcxGridDBChartView;
    grdPkgsPerMPDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    grdPkgsPerMPDBChartView1Series1: TcxGridDBChartSeries;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    grdMatchingGridLevel1: TcxGridLevel;
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
    grdMatchingGridDBBandedTableView1: TcxGridDBBandedTableView;
    grdMatchingGridDBBandedTableView1Vald: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1Position: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1ActualLengthMM: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PositionID: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PhysicalInventoryPointNo: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PosStatus: TcxGridDBBandedColumn;
    cxButton3: TcxButton;
    acSelectPosition: TAction;
    bShowAllOutput: TcxButton;
    acShowAllOutput: TAction;
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
    procedure cxbtnChangeReporterClick(Sender: TObject);
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

  private
    ShowAllOutput   : Boolean ;
    ScanningEnabled : Boolean ;
    TempEditString  : String ;
    OriginalUserID  : Integer ;
    a : String ;
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

var
  FrmMain: TfrmMain;



implementation

uses
  Dialogs,


  VidaConst,
  VidaType,
  VidaUser,  //fInvoiceList,
  dmcVidaSystem, UnitSetup, UnitCRViewReport,
  //dmLM1,
  //UnitShippingInstruction,
  //UnitKP_List,
  //UnitMaintenance,
  fLoadOrder, dmcVidaOrder, UnitAboutBox,
  UnitLoadArrivals, UnitPkgInfo, dmsDataConn,
  //UnitSokAvropFormular,
  //UnitAvrakningar,
  dmsVidaProduct, //dmsVidaPkg,
  dmsVidaSystem, //uFreightLoad,
  uUserPreference, //Ucurrency,
  //uPkgLog,
  UnitCRPrintReport, //UnitProdRep,
  //uGenShipCost, //uProductionUnit,
  //uBasMatPunkter,
  //UnotInvoicedReport,
//  uPkgNoSeries,
  //uSamlingsfaktura,
  //uLastLista,
//  uPktNrPos, uPkgNoPos, //UnitPkgsByPktType, //UExtMovePkg,
  //dm_Inventory,
  uEncode , //fAvrakningar, //fSkapaAvrakning,
  UPortArrivals, uChangeLogins , //uChkAvrLoads,
  dmc_UserProps , uLager, uLastLista, uSetStdPkgSizeIntervall, UchgPkgVard,
  uKilnHandling, ufrmChangeLanguage, udmLanguage, fSortOrder,
  uSelectSortingOrderNo, dmsVidaContact, uPositionView, dm_Inventory,
  uSetupUserOutput;
  //uAttestLegoRun, //fRunAttester, //fSkapaRunAttest,
  //uFreightExternLoad,
//  uFtpParam ;//, uKundspecifika,
  //uKontoLogik, uOrderStocken, uIntrastat,
//  uTradingAnalyze, //uFreightExternLoad, uPayControl,
//  uImportPkgStatusOfHampen ,
  //uCredit, uCreditLimitAnalys, uLager;



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
begin
// ExceptionNotify := MyNotify; // Assign ExceptionNotify variable to MyNotify procedure.
  Application.OnException := AppException;
  ShowAllOutput := False ;
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
 ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;
// ThisUser.Database:= 'alvesql03:vis_vida' ;

// ThisUser.Database:= 'alvesqltest01:vis_vida' ;


// -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
{$IFDEF DEBUG}
  if (Pos('CARMAK',GetEnvironmentVariable('COMPUTERNAME')) > 0) then begin
    dmsConnector.DriveLetter := 'C:\';
    ThisUser.Database:= 'alvesql03:vis_vida' ;
      with dmsConnector.FDConnection1 do begin
        Params.Clear;
        Params.Add('Server=alvesql03');
        Params.Add('Database=vis_vida');
        Params.Add('OSAuthent=No');
        Params.add('MetaDefCatalog=vis_vida');
        Params.Add('MetaDefSchema=dbo');
        Params.Add('User_Name=Lars');
        Params.Add('Password=woods2011');
        Params.Add('DriverID=MSSQL');
        Params.Add('ApplicationName=VIS_LAGER');
      end;
  end
  else begin
  //  ThisUser.Database:= 'alvesqltest01:vis_vida' ;
    ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;
  end;
{$ELSE}
 //ThisUser.Database:= 'alvesqltest01:vis_vida' ;
  ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;
{$ENDIF}
// -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-


//ThisUser.Database:= 'alvesql03:vis_vida' ;

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
  cxbtnChangeReporter.Caption := 'Change to CrystalReports';
  Caption  := lCaption ;

 dmInventory.Set_mtUserUserID ;
end;



//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.cxbtnChangeReporterClick(Sender: TObject);
begin
  if cxbtnChangeReporter.Caption = 'Change to FastReport' then begin
    cxbtnChangeReporter.Caption := 'Change to CrystalReports';
    uReportController.useFR := true;
  end
  else
  begin
    cxbtnChangeReporter.Caption := 'Change to FastReport';
    uReportController.useFR := false;
  end;
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
  PktNrLevKod       : String3 ;//Lev koden i paketnrsträngen
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
    Begin //LÅNGA KODEN
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
//        Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_33' (* 'Koden kunde inte översättas till ett Paketnr' *) ) ;
        Exit ;
       End ;


       sp_allPkgsatoutput.IndexName := 'allPkgsAtOutput_Index02' ;
       Try
       if sp_allPkgsatoutput.FindKey([NewPkgNo]) then
        Begin
          NumberPrefix  := sp_allPkgsatoutputProductionUnitCode.AsString ;
          Action        := eaAccept ;
          LongPkgNo     := inttoStr(NewPkgNo) + NumberPrefix ;
          mtScannedPkgs.InsertRecord([NewPkgNo, NumberPrefix, LongPkgNo, sp_allPkgsatoutputSupplierCode.AsString]);
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

  //Får inte använda post själv, det gör rutinen automatiskt
    if Action = eaACCEPT then
    Begin
        AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
    //Långsamt här
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
           Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' är reserverat av ' *) ) + Res_UserName ;
           Error      := True ;
          End
          else
           if Action = eaDuplicate then
            Begin
             Errortext  := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_99' (* ' är redan inmatat' *) ) ;
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
//    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
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
{
   if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\johlis')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
   or (Trim(dmsConnector.Get_AD_Name) = 'Lars')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\krikuh')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjon')
   or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\kritom')
   or (Trim(dmsConnector.Get_AD_Name) = 'sa')
   then
   Begin
   if FormOpen then
   Begin
    ShowMessage(siLangLinked1.GetTextOrDefault('IDS_9' (* 'Stäng alla formulär först!' *) ));
    Exit ;
   End ;
}


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
Begin
 KorNr  := '' ;
 with dmsSystem do
 Begin
  fSelectSortingOrderNo  := TfSelectSortingOrderNo.Create(nil) ;
  Try
  if fSelectSortingOrderNo.ShowModal = mrOK then
  Begin
   KorNr  := Copy(fSelectSortingOrderNo.meRunNo.Text, 1, 5) ;
   Result  := StrToIntDef(Trim(KorNr),-1) ;
  End
    else
     Result := -1 ;
  Finally
   FreeAndNil(fSelectSortingOrderNo) ;
  End ;
  Application.ProcessMessages ;
 End ;
End ;

procedure TfrmMain.AvregistreraPaket ;
var frmSortOrder        : TfrmSortOrder;
    Default_SortingOrderNo,
    Default_RegPointNo  : Integer ;
    Save_Cursor         : TCursor;
    VerkNo              : Integer ;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 Default_SortingOrderNo   := SelectSortingOrderNo ;// dmc_DB.sq_ProdSumPktKrNr.AsInteger ;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 VerkNo         := dmsSystem.GetVerkNoForSortingOrderServer (Default_SortingOrderNo) ;
 if (Default_SortingOrderNo > 0) and (VerkNo > -1) then
 Begin
  Default_RegPointNo        := -1 ;//dmc_DB.cds_MainParamsStandardMatPunkt.AsInteger ;
  frmSortOrder              := TfrmSortOrder.Create(nil) ;
  Try
   Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

   frmSortOrder.CreateCo(VerkNo);
   Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

   frmSortOrder.LOpenWorkOrder(Default_SortingOrderNo, -1) ;
   Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

   frmSortOrder.ShowModal ;

  Finally
   FreeAndNil(frmSortOrder) ;
  End ;
 End
  else
   begin
 //   if Default_SortingOrderNo < 1 then
 //    Showmessage('Fel körordernr');
     if VerkNo = -1 then
      ShowMessage('Körordernr ' + inttostr(Default_SortingOrderNo) + ' saknas') ;
   end;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

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
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
    end ;
  End ;
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
   dmInventory.sp_invpiv.FieldByName('PIP').DisplayLabel                := 'Ställe' ;
   dmInventory.sp_invpiv.FieldByName('LIP').DisplayLabel                := 'Grupp' ;
   dmInventory.sp_invpiv.FieldByName('ProductDisplayName').DisplayLabel := 'Produkt' ;
   dmInventory.sp_invpiv.FieldByName('PackageSizeName').DisplayLabel    := 'Storlek' ;

   dmInventory.sp_invpiv.FieldByName('AT').DisplayLabel                 := 'AT' ;
   dmInventory.sp_invpiv.FieldByName('AB').DisplayLabel                 := 'AB' ;

   dmInventory.sp_invpiv.FieldByName('AvgLength').DisplayLabel          := 'Medellängd' ;



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
   grdDBBandedPerSortiment.Bands[2].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_5' (* 'NM3 PER LÄNGD' *) );
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


end.
