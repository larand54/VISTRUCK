unit uFastReports;

interface


type
  TFastReports = class
  private
    FPrint: boolean;
    FPrintDialog: boolean;
    procedure MailReport(aFilename, aMailTo, aMailMsg, aMailTitle: string);
  public
    procedure Tally_Pkg_Matched(const aLo, aReportType, aLanguage: integer; aMailTo: string;  aMailMsg, aMailTitle: string);
    procedure Tally_Pkg_Not_Matched(const aLo, aReportType, aLanguage: integer; aMailTo: string; aMailMsg, aMailTitle: string);
    procedure Tally(const aLo, aReportType, aLanguage: integer;
      aMailTo: string; aMailMsg, aMailTitle: string);
    procedure CMR(const aLo: integer);
    procedure TreatmentCert(const aLo: integer; aMailTo: string; aMailMsg, aMailTitle: string);
    procedure TrpO(const aLo, aReportType, aLanguage: integer; aMailTo: string; aMailMsg, aMailTitle: string);
    procedure LO(const aLo, aSupplier, aReportType, aLanguage: integer; aMailTo: string; aMailMsg, aMailTitle: string);
    constructor createForPrint(aPrintDialog: boolean);
    constructor create;
  end;

implementation

uses
  System.SysUtils,
  VCL.Controls,
  VCL.Forms,
  uSendMapiMail,
  uReportController,
  uReport,
  vidaConst,
  VidaUser,
  dmsVidaSystem,
  dmsVidaContact;
{ TFastReports }

procedure TFastReports.CMR(const aLo: integer);
var
  media: TCMMediaType;
  params: TCMParams;
  RC: TCMReportController;
  ReportName: string;
  save_Cursor: TCursor;
begin
  save_Cursor := screen.Cursor;
  if FPrint then
    media := frPrint
  else
    media := frPreview;
  ReportName := 'CMR.fr3';
  try
    RC := TCMReportController.Create;
    params := TCMParams.Create();
    params.Add('@LoadNo', aLo);
    RC.RunReport(ReportName, params, media, 0);
  finally
    FreeAndNil(RC);
    FreeAndNil(params);
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.Tally_Pkg_Matched(const aLo, aReportType, aLanguage: integer;
  aMailTo: string; aMailMsg, aMailTitle: string);
begin
  Try
    dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger := aLo;
    dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
    Tally(aLo, aReportType, aLanguage, aMailTo, aMailmsg, aMailTitle);
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
end;

procedure TFastReports.Tally_Pkg_Not_Matched(const aLo, aReportType, aLanguage: integer;
  aMailTo: string; aMailMsg, aMailTitle: string);
begin
  Tally(aLo, aReportType, alanguage, aMailTo, aMailMsg, aMailTitle);
end;

constructor TFastReports.create;
begin
  FPrint := false;
end;

constructor TFastReports.createForPrint(aPrintDialog: boolean);
begin
  FPrint := true;
  FPrintDialog := aPrintDialog;
end;

procedure TFastReports.LO(const aLo, aSupplier, aReportType, aLanguage: integer;
  aMailTo, aMailMsg, aMailTitle: string);

const
  LF: char = #10;
var
  media: TCMMediaType;
  params: TCMParams;
  RC: TCMReportController;
  fn: string;
  ExcelDir: string;
  ReportName: string;
  save_Cursor: TCursor;
begin
  save_Cursor := screen.Cursor;
  if FPrint then begin
    media := frPrint;
    aMailTo := '';  // To be sure no mail is sent
  end
  else if aMailTo = '' then
  begin
    media := frPreview;
    fn := ''
  end
  else
  begin
    media := frFile;
    fn := 'LO ' + intToStr(aLo) + '.PDF';
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if aMailTitle = '' then
      aMailTitle := 'Lastorder. LOnr: ' + intToStr(aLo);
    if aMailMsg = '' then
      aMailMsg := 'Lastorder bifogad. '
        + LF + ''
        + 'Loading order attached. '
        + LF + ''
        + LF + ''
        + LF + 'MVH/Best Regards, '
        + LF + ''
        + dmsContact.GetFirstAndLastName(ThisUser.UserID);
  end;
  case aReportType of
    cLastorder:
      ReportName := 'LASTORDER_NOTE_ver3_SV.fr3';
    cLastorder_eng:
      ReportName := 'LASTORDER_NOTE_ver3_ENG.fr3';
    cLastorder_manuell:
      ReportName := 'LASTORDER_NOTE_MANUELL_SV.fr3';
    cLastorder_manuell_eng:
      ReportName := 'LASTORDER_NOTE_MANUELL_ENG.fr3';
  else
    ReportName := 'Report could not be selected! ReportType: ' +
      intToStr(aReportType);
  end;
  try
    RC := TCMReportController.Create(ExcelDir, fn);
    params := TCMParams.Create();
    params.Add('@Language', alanguage);
    params.Add('@ShippingPlanNo', aLo);
    params.Add('@SupplierNo', aSupplier);
    RC.RunReport(ReportName, params, media, 0);
    if aMailTo <> '' then
    begin
      MailReport(RC.getExportFile, aMailTo, aMailMsg, aMailTitle);
    end;
  finally
    FreeAndNil(RC);
    FreeAndNil(params);
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.MailReport(aFilename, aMailTo, aMailMsg,
  aMailTitle: string);
var
  Attach                  : array of String ;
  dm_SendMapiMail         : Tdm_SendMapiMail;
begin
 SetLength(Attach, 1);
 Attach[0]:= aFilename;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail(aMailTitle, aMailmsg,
                            dmsSystem.Get_Dir('MyEmailAddress'),
                            aMailTo, Attach);
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
end;

procedure TFastReports.TrpO(const aLo, aReportType, aLanguage: integer;
   aMailTo: string; aMailMsg, aMailTitle: string);
const
  LF: char = #10;
var
  media: TCMMediaType;
  params: TCMParams;
  RC: TCMReportController;
  fn: string;
  ExcelDir: string;
  ReportName: string;
  save_Cursor: TCursor;
begin
  save_Cursor := screen.Cursor;
  if FPrint then begin
    media := frPrint;
    aMailTo := '';  // To be sure no mail is sent
  end
  else if aMailTo = '' then
  begin
    media := frPreview;
    fn := ''
  end
  else
  begin
    media := frFile;
    fn := 'TO ' + intToStr(aLo) + '.PDF';
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if aMailTitle = '' then
      aMailTitle := 'Transportorder. TOnr: ' + intToStr(aLo);
    if aMailMsg = '' then
      aMailMsg := 'Transportorder bifogad. '
        + LF + ''
        + 'Transport order attached. '
        + LF + ''
        + LF + ''
        + LF + 'MVH/Best Regards, '
        + LF + ''
        + dmsContact.GetFirstAndLastName(ThisUser.UserID);
  end;
  case aReportType of
    cTrporder:
      ReportName := 'TRP_ORDER_NOTE_SV.fr3';
    cTrporder_eng:
      ReportName := 'TRP_ORDER_NOTE_ENG.fr3';
    cTrporder_manuell:
      ReportName := 'TRP_ORDER_NOTE_MANUELL_SV.fr3';
    cTrporder_manuell_eng:
      ReportName := 'TRP_ORDER_NOTE_MANUELL_ENG.fr3';
  else
    ReportName := 'Report could not be selected! ReportType: ' +
      intToStr(aReportType);
  end;
  try
    RC := TCMReportController.Create(ExcelDir, fn);
    params := TCMParams.Create();
    params.Add('@ShippingPlanNo', aLo);
    RC.RunReport(ReportName, params, media, 0);
    if aMailTo <> '' then
    begin
      MailReport(RC.getExportFile, aMailTo, aMailMsg, aMailTitle);
    end;
  finally
    FreeAndNil(RC);
    FreeAndNil(params);
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.Tally(const aLo, aReportType, aLanguage: integer;
  aMailTo: string; aMailMsg, aMailTitle: string);
const
  LF: char = #10;
var
  media: TCMMediaType;
  params: TCMParams;
  RC: TCMReportController;
  fn: string;
  ExcelDir: string;
  ReportName: string;
  save_Cursor: TCursor;
begin
  save_Cursor := screen.Cursor;
  if FPrint then begin
    media := frPrint;
    aMailTo := '';  // To be sure no mail is sent
  end
  else if aMailTo = '' then
  begin
    media := frPreview;
    fn := ''
  end
  else
  begin
    media := frFile;
    fn := 'FS ' + intToStr(aLo) + '.PDF';
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if aMailTitle = '' then
      aMailTitle := 'Följesedel. FSnr: ' + intToStr(aLo);
    if aMailMsg = '' then
      aMailMsg := 'Följesedel bifogad. '
        + LF + ''
        + 'Load tally attached. '
        + LF + ''
        + LF + ''
        + LF + 'MVH/Best Regards, '
        + LF + ''
        + dmsContact.GetFirstAndLastName(ThisUser.UserID);
  end;
  case aReportType of
    cFoljesedel:
      ReportName := 'TALLY_NOTE_VER3_SV.fr3';
    cFoljesedelIntern:
      ReportName := 'TALLY_INTERNAL_VER3_NOTE.fr3';
    cFoljesedel_eng:
      ReportName := 'TALLY_NOTE_VER3_ENG.fr3';
    cFoljesedel_no_matching_pkg_sv:
      ReportName := 'TALLY_NOTE_MM_ver3_SV.fr3';
    cFoljesedel_no_matching_pkg_eng:
      ReportName := 'TALLY_NOTE_MM_ver3_ENG.fr3';
  else
    ReportName := 'Report could not be selected! ReportType: ' +
      intToStr(aReportType);
  end;
  try
    RC := TCMReportController.Create(ExcelDir, fn);
    params := TCMParams.Create();
    params.Add('@LoadNo', aLo);
    RC.RunReport(ReportName, params, media, 0);
    if aMailTo <> '' then
    begin
      MailReport(RC.getExportFile, aMailTo, aMailMsg, aMailTitle);
    end;
  finally
    FreeAndNil(RC);
    FreeAndNil(params);
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.TreatmentCert(const aLo: integer; aMailTo: string; aMailMsg, aMailTitle: string);
const
  LF: char = #10;
var
  fn: string;
  ExcelDir: string;
  media: TCMMediaType;
  params: TCMParams;
  RC: TCMReportController;
  ReportName: string;
  save_Cursor: TCursor;
begin
  save_Cursor := screen.Cursor;
  if FPrint then begin
    media := frPrint;
    aMailTo := '';  // To be sure no mail is sent
  end
  else if aMailTo = '' then
  begin
    media := frPreview;
    fn := ''
  end
  else
  begin
    media := frFile;
    fn := 'FS ' + intToStr(aLo) + '.PDF';
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if aMailTitle = '' then
      aMailTitle := 'Beh cert. BCnr: ' + intToStr(aLo);
    if aMailMsg = '' then
      aMailMsg := 'Beh. cert. bifogad. '
        + LF + ''
        + 'Treatm. cert. attached. '
        + LF + ''
        + LF + ''
        + LF + 'MVH/Best Regards, '
        + LF + ''
        + dmsContact.GetFirstAndLastName(ThisUser.UserID);
  end;
  ReportName := 'TALLY_TREATMENT_ENG.fr3';
  try
    RC := TCMReportController.Create(ExcelDir, fn);
    params := TCMParams.Create();
    params.Add('@LoadNo', aLo);
    RC.RunReport(ReportName, params, media, 0);
    if aMailTo <> '' then
    begin
      MailReport(RC.getExportFile, aMailTo, aMailMsg, aMailTitle);
    end;
  finally
    FreeAndNil(RC);
    FreeAndNil(params);
    Screen.Cursor := save_Cursor;
  end;
end;

end.
