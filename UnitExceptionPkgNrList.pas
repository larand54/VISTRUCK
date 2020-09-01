unit UnitExceptionPkgNrList;

interface

uses
  Winapi.Windows, Winapi.Messages
  , synCommons
  , System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, VidaUser, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, SqlTimSt, cxLabel, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, frxClass,
  frxDBSet, frxExportPDF, siComp, siLngLnk, dxSkinBasic, dxDateRanges,
  dxScrollbarAnnotations, dxPScxEditorProducers, dxPScxExtEditorProducers ;

type
  TPkgNrExceptionList = class(TForm)
    ExceptionPanel: TPanel;
    ActionList1: TActionList;
    acClose: TAction;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    sp_GetScannedPkgs: TFDStoredProc;
    cxDateEditStart: TcxDateEdit;
    cxDateEditEnd: TcxDateEdit;
    ds_GetScannedPkgs: TDataSource;
    acRefresh: TAction;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    acPrint: TAction;
    acMaila: TAction;
    cxGrid1DBTableView1ScannedString: TcxGridDBColumn;
    cxGrid1DBTableView1PackageNo: TcxGridDBColumn;
    cxGrid1DBTableView1Prefix: TcxGridDBColumn;
    cxGrid1DBTableView1DateCreated: TcxGridDBColumn;
    cxGrid1DBTableView1UserName: TcxGridDBColumn;
    cxGrid1DBTableView1Mottagare: TcxGridDBColumn;
    cxGrid1DBTableView1Levereratill: TcxGridDBColumn;
    cxGrid1DBTableView1ClientName: TcxGridDBColumn;
    cxGrid1DBTableView1Applikation: TcxGridDBColumn;
    cxButton4: TcxButton;
    acPackageInfo: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxButton5: TcxButton;
    acChangeFormSize: TAction;
    frxPDFExport1: TfrxPDFExport;
    cxGrid1DBTableView1ScanStatus: TcxGridDBColumn;
    cxGrid1DBTableView1ErrorBeskrivning: TcxGridDBColumn;
    siLangLinked_frmLoadArrivals: TsiLangLinked;

    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPackageInfoExecute(Sender: TObject);
    procedure acPackageInfoUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acMailaExecute(Sender: TObject);
    procedure acChangeFormSizeExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    LevereraTillNo  : Integer ;
    CurrentAppName  : String ;
    procedure ChangeFormSizeExecute ;
    procedure Refresh_GetScannedPkgs ;
  end;

var
  PkgNrExceptionList: TPkgNrExceptionList;

implementation

{$R *.dfm}

uses dmc_ArrivingLoads, dmsDataConn, UnitPkgInfo, dmsVidaSystem, uSendMapiMail,
  dmsVidaContact
  ,  uOAuthMail
;

procedure TPkgNrExceptionList.acChangeFormSizeExecute(Sender: TObject);
begin
{
    if PkgNrExceptionList.Width = 1141 then
      PkgNrExceptionList.Width  := 540
       else
        PkgNrExceptionList.Width  := 1141 ;
}
end;

procedure TPkgNrExceptionList.ChangeFormSizeExecute ;
begin
{
    if PkgNrExceptionList.Width > 1000 then
      PkgNrExceptionList.Width  := 540 ;
}
end;

procedure TPkgNrExceptionList.acCloseExecute(Sender: TObject);
begin
   PkgNrExceptionList.Close;
end;

procedure TPkgNrExceptionList.acMailaExecute(Sender: TObject);
const
  LF = #10;
var
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of RawUTF8;
  MailToAddress, ExcelDir: string;
									  
  ReportType: Integer;
  mailMessage,
  subject: string;
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  if Length(MailToAddress) = 0 then
  begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  end;
  if Length(MailToAddress) > 0 then
  begin

    Refresh_GetScannedPkgs;
    frxPDFExport1.ShowDialog := false;
    frxPDFExport1.FileName := ExcelDir + 'Felscan.pdf';
    frxReport1.Export(frxPDFExport1);
    subject := 'Felskannade paketlista.';
    mailMessage := 'Bifogar lista på felskannade paketnr.' + LF + 'Period ' + datetimetostr(cxDateEditStart.Date) + ' - ' + datetimetostr(cxDateEditEnd.Date) + LF + '' + LF + '' + LF + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID);
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'Felscan.pdf';

    TOAuthMail.OASendMail(dmsConnector.FDConnection1.Params, subject, mailMessage, ThisUser.UserEmail, mailToAddress, '', Attach, false);
 end;
end;

procedure TPkgNrExceptionList.acPackageInfoExecute(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := sp_GetScannedPkgs.FieldByName('PackageNo').AsInteger ;
  frmPkgInfo.SupplierCode := sp_GetScannedPkgs.FieldByName('Prefix').AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TPkgNrExceptionList.acPackageInfoUpdate(Sender: TObject);
begin
  acPackageInfo.Enabled := (sp_GetScannedPkgs.Active)
  and (sp_GetScannedPkgs.RecordCount > 0) ;
end;

procedure TPkgNrExceptionList.acPrintExecute(Sender: TObject);
begin
  Refresh_GetScannedPkgs ;
  frxReport1.ShowReport(True);
end;

procedure TPkgNrExceptionList.acRefreshExecute(Sender: TObject);
begin
  Refresh_GetScannedPkgs ;
end;



procedure TPkgNrExceptionList.FormShow(Sender: TObject);
begin
 cxDateEditStart.Date :=  Date ;
 cxDateEditEnd.Date   :=  Date + 1 ;
end;

procedure TPkgNrExceptionList.Refresh_GetScannedPkgs ;
begin
  sp_GetScannedPkgs.Active  := False ;
  sp_GetScannedPkgs.ParamByName('@UserID').AsInteger              := ThisUser.UserID ;
  sp_GetScannedPkgs.ParamByName('@AppName').AsString              := CurrentAppName ;
  sp_GetScannedPkgs.ParamByName('@StartDateTime').AsSQLTimeStamp  :=
  DateTimeToSQLTimeStamp(cxDateEditStart.Date) ;
  sp_GetScannedPkgs.ParamByName('@EndDateTime').AsSQLTimeStamp    :=
  DateTimeToSQLTimeStamp(cxDateEditEnd.Date) ;
  sp_GetScannedPkgs.ParamByName('@LevereraTillNo').AsInteger      := LevereraTillNo ;
  sp_GetScannedPkgs.Active  := True ;
  sp_GetScannedPkgs.Last ;
end;

end.

