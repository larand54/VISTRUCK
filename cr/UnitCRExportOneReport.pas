unit UnitCRExportOneReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  OleServer, 
  StdCtrls, Printers, CRAXDRT_TLB;

type
  TFormCRExportOneReport = class(TForm)
    Application1: TApplication;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   CRreport : IReport ;
   ReportFound  : Boolean ;
   procedure CreateCo(const ClientNo, DocTyp : Integer;const A: array of variant;const ExportFile : String);
  end;

//var FormCRPrintOneReport: TFormCRPrintOneReport;


implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact , dmsVidaSystem;

procedure TFormCRExportOneReport.CreateCo(const ClientNo, DocTyp : Integer;const A: array of variant;const ExportFile : String);
  var ReportName, HostName, Database, UserName, Password, spath, ServiceUrl : String ;
      promptUser      : OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 ReportFound  := True ;
 dmsContact.GetClientDocPrefs ( ClientNo, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
 if (numberOfCopy < 1) or (Length(ReportName) < 4) then
 Begin
  ShowMessage('Rapporten finns inte upplagd på klienten') ;
  ReportFound:= False ;
  Exit ;
 End ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, ServiceUrl) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

 if not(FileExists(sPath+ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
   Exit ;
  End ;

  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  CRreport.ParameterFields.Item[1].AddCurrentValue(62366);
  for I := 0 to High(A) do
  CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

  // Export the report.
  crReport.ExportOptions.FormatType       := CRAXDRT_TLB.crEFTPortableDocFormat;
  crReport.ExportOptions.DestinationType  := CRAXDRT_TLB.crEDTDiskFile;
  crReport.ExportOptions.DiskFileName     := ExportFile+'.pdf';
  crReport.Export(false);
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TFormCRExportOneReport.FormDestroy(Sender: TObject);
begin
 CRreport:= Nil ;
 Application1:= Nil ;
end;

end.
