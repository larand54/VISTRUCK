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
  System.Actions ;




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
    cxButton1: TcxButton;
    dxBarLargeButton29: TdxBarLargeButton;
    acPkgStdSizeIntervall: TAction;
    dxBarLargeButton30: TdxBarLargeButton;
    siLangLinked1: TsiLangLinked;
    acTorkhanteraren: TAction;
    acChangeLanguage: TAction;
    dxBarButton12: TdxBarButton;
    cxButton2: TcxButton;
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

  private
    a : String ;
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
  uKilnHandling, ufrmChangeLanguage, udmLanguage;
  //uAttestLegoRun, //fRunAttester, //fSkapaRunAttest,
  //uFreightExternLoad,
//  uFtpParam ;//, uKundspecifika,
  //uKontoLogik, uOrderStocken, uIntrastat,
//  uTradingAnalyze, //uFreightExternLoad, uPayControl,
//  uImportPkgStatusOfHampen ,
  //uCredit, uCreditLimitAnalys, uLager;



{$R *.DFM}

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


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
var Height, Width, Top, Left, LanguageNo : Integer ;
begin
 dmsConnector.DriveLetter := 'H:\' ;
 if dmsConnector.DriveLetter = 'C:\' then
  ShowMessage('Change drive to H:\') ;

 CheckMappar ;

// ThisUser.Database:= 'carmak-speed\SQLEXPRESS:vis_vida' ;
// ThisUser.Database:= '172.24.0.40:vis_vida' ;
  ThisUser.Database:= 'vis.vida.se:vis_vida' ;
//  ThisUser.Database:= 'alvesqltest01:vis_vida' ;

// ThisUser.Database  := 'alvesql03:vis_vida' ;
 dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       Caption  := Application.Title + '/' + dmsConnector.GetCompanyName (ThisUser.CompanyNo) + '/' + ThisUser.UserName + ' ver ' + GetVersion
       + ' - ' + dmsConnector.FDConnection1.Params.Values['Server']
       + '/' + dmsConnector.FDConnection1.Params.Values['Database'] + ' ' ;

       dmsSystem.vis_Del_OLD_Load_Res ;
      End
      else
      Begin
       Close ;
      End ;
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
end;

//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
{ if Key = #13 then begin
    Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
  end; }
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

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
  Application.Title   := a;
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
