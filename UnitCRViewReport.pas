unit UnitCRViewReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OleServer,
  StdCtrls, CRAXDRT_TLB, CrystalActiveXReportViewerLib11_TLB;

type
  TFormCRViewReport = class(TForm)
    Application1: TApplication;
    CRViewer91: TCrystalActiveXReportViewer;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   report : IReport ;
   ReportFound  : Boolean ;
   constructor CreateCo(const ReportName : String);
  end;

//var FormCRViewReport: TFormCRViewReport;


implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsVidaSystem;

constructor TFormCRViewReport.CreateCo(const ReportName: String);
Var HostName, Database, UserName, Password, spath : String ;
    Save_Cursor : TCursor;
    Handle  : integer ;
begin
 Handle         := 1 ;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  ReportFound:= True ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;
//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
  if not(FileExists(sPath + ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
   Exit ;
  End ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;

  report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  report.PrinterSetupEx(0) ;// .PrinterSetup(0) ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Caption:= sPath+ReportName ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TFormCRViewReport.FormDestroy(Sender: TObject);
begin
  Report        := Nil ;
  Application1  := Nil ;
end;

procedure TFormCRViewReport.FormCreate(Sender: TObject);
begin
 CRViewer91.EnableExportButton  := True ;
end;

end.
