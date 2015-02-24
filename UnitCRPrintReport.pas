unit UnitCRPrintReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  OleServer,
  StdCtrls, CRAXDDRT_TLB, Printers, Winspool ;

type
  TFormCRPrintReport = class(TForm)
    Application1: TApplication;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   CRreport : IReport ;
   procedure CreateCo(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const A: array of variant) ;
   procedure CreateCoForPrintMany(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const IntInvNo, Client: array of variant) ;
  end;

//var FormCRPrintReport: TFormCRPrintReport;


implementation

{$R *.dfm}

Uses
   VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact , dmsVidaSystem;

  var
  FDevice: PChar;
  FDriver: PChar;
  FPort: PChar;
  DeviceMode: THandle;
  DevMode: PDeviceMode;


procedure TFormCRPrintReport.CreateCo(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const A: array of variant);
  var  ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      startPageN: OleVariant; stopPageN: OleVariant ;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 ReportName := '' ;
// startPageN := 0 ;
// stopPageN  := 0 ;
 if RoleType > 0 then
 Begin
  dmsContact.GetClientDocPrefs ( ClientNo, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
  if (numberOfCopy < 1) or (Length(ReportName) < 4) then
  Begin
   ShowMessage('Rapporten finns inte upplagd på klienten') ;
   Exit ;
  End ; //if
 End  //if
  else
   ReportName:= dmsSystem.GetReportNameByDocTyp(DocTyp) ;

 if OverRideNoOfCopies > 0 then
  numberOfCopy:= OverRideNoOfCopies ;

//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;

  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

  if FileExists(sPath+ReportName) = False then
  Begin
   ShowMessage('Rapporten ' + sPath+ReportName + ' saknas, kontakta admin.') ;
   Exit ;
  End  ;

  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  for I := 0 to High(A) do
  CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

//  if PrinterSetup = 1 then
   CRreport.PrinterSetup(0) ;
  CRreport.PrintOut(False,  numberOfCopy,  False, startPageN, stopPageN) ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure OpenThePrinterDevice;
var
  Driver_Info2: PDriverInfo2;
  Retrieved: dword;
  hPrinter: THandle;
begin
  Printer().GetPrinter(FDevice, FDriver, FPort, DeviceMode);
  if DeviceMode = 0 then
    Printer().GetPrinter(FDevice, FDriver, FPort, DeviceMode);
  OpenPrinter(FDevice, hPrinter, nil);
  GetMem(Driver_Info2, 255);
  GetPrinterDriver(hPrinter, nil, 2, Driver_info2, 255, Retrieved);
  StrLCopy(FDriver, PChar(ExtractFileName(StrPas(Driver_Info2^.PDriverPath)) + #0), 63);
  FreeMem(Driver_info2, 255);
  DevMode := GlobalLock(DeviceMode);
end;



procedure TFormCRPrintReport.CreateCoForPrintMany(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const IntInvNo, Client: array of variant) ;
  var  ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      startPageN: OleVariant; stopPageN: OleVariant ;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
      ADevice, ADriver, APort: PChar;
      ADeviceMode: THandle ;
begin
// Printers.GetPrinter (ADevice, ADriver, APort,  ADeviceMode);
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

// CRreport.PrinterSetup(0) ;
 for I := 0 to High(Client) do
 Begin

 ReportName := '' ;
// startPageN := 0 ;
// stopPageN  := 0 ;
 if RoleType > 0 then
 Begin
  dmsContact.GetClientDocPrefs (Client[I]{ClientNo}, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
  if (numberOfCopy < 1) or (Length(ReportName) < 4) then
  Begin
   ShowMessage('Rapporten finns inte upplagd på klienten, Fakturanr ' + inttostr(IntInvNo[I])) ;
   Exit ;
  End ; //if
 End  //if
  else
   ReportName:= dmsSystem.GetReportNameByDocTyp(DocTyp) ;

 if OverRideNoOfCopies > 0 then
  numberOfCopy:= OverRideNoOfCopies ;

//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;

{  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ; }

  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  //Driver, printer, port
  CRreport.SelectPrinter('winspool', 'HP Color LaserJet PS', 'Ne01:') ;// '\\DOT4_001') ;


//  for I := 0 to High(A) do
  CRreport.ParameterFields.Item[1].AddCurrentValue(IntInvNo[I]);

//  if PrinterSetup = 1 then
//   CRreport.PrinterSetup(0) ;
  ShowMessage('CRreport.PortName = ' + CRreport.PortName + ' CRreport.DriverName = ' + CRreport.DriverName
  + ' CRreport.PrinterName = ' + CRreport.PrinterName ) ;
  CRreport.PrintOut(False,  numberOfCopy,  False, startPageN, stopPageN) ;
  End ;//For I..
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure TFormCRPrintReport.FormDestroy(Sender: TObject);
begin
  CRreport:= Nil ;
  Application1:= Nil ;
end;

end.
