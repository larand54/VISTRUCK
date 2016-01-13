unit uFastReports;

interface
uses
  uReport;

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
    procedure ReportPreview(const aRepname: string; const aParams: TCMParams);
    procedure ReportPrint(const aRepname: string; const aParams: TCMParams; aPromptUser: boolean);
    function ReportFile(const aRepname, aFilename: string; const aParams: TCMParams): string;
    procedure SpecMarkedLoadings(const aLoNo, aSupplier, aUserID, aLang: integer);
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
  vidaConst,
  VidaUser,
  dmsVidaSystem,
  dmsVidaContact;
{ TFastReports }

procedure TFastReports.CMR(const aLo: integer);
var
  params: TCMParams;
  ReportName: string;
begin
  ReportName := 'CMR.fr3';
  try
    params := TCMParams.Create();
    params.Add('@LoadNo', aLo);
  if FPrint then
    ReportPrint(ReportName, Params, false)
  else
    ReportPreview(ReportName, Params);
  finally
  end;
end;

procedure TFastReports.Tally_Pkg_Matched(const aLo, aReportType,
  aLanguage: integer;
  aMailTo: string; aMailMsg, aMailTitle: string);
begin
  Try
    dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger := aLo;
    dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
    Tally(aLo, aReportType, aLanguage, aMailTo, aMailMsg, aMailTitle);
    Try
      dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger := aLo;
      dmsSystem.sq_DelPkgType.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
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
    cLastorderInkop:
      if aLanguage = cSwedish then
        Reportname := 'LASTORDER_INKOP_NOTE_SV.fr3'
      else
        Reportname := 'LASTORDER_INKOP_NOTE_ENG.fr3';
    cLastorder:
      if aLanguage = cSwedish then
        ReportName := 'LASTORDER_NOTE_ver3_SV.fr3'
      else
        ReportName := 'LASTORDER_NOTE_ver3_ENG.fr3';
    cLastorder_manuell:
      if aLanguage = cSwedish then
        ReportName := 'LASTORDER_NOTE_MANUELL_SV.fr3'
      else
        ReportName := 'LASTORDER_NOTE_MANUELL_ENG.fr3';
    cLastOrder_verk:
      if aLanguage = cSwedish then
        Reportname := 'LASTORDER_VERK_NOTE_ver3_SV.fr3'
      else
        Reportname := 'LASTORDER_VERK_NOTE_ver3_ENG.fr3';
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

function TFastReports.ReportFile(const aRepname, aFilename: string;
  const aParams: TCMParams): string;
var
  RC: TCMReportController;
  save_Cursor: TCursor;
  ExcelDir: string;
begin
  result := '';
  try
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    RC := TCMReportController.Create(ExcelDir, aFilename);
    RC.RunReport(aRepName, aParams, frFile, 0);
  finally
    result := RC.getExportFile;
    FreeAndNil(RC);
    aParams.free;
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.ReportPreview(const aRepname: string; const aParams: TCMParams);
var
  RC: TCMReportController;
  save_Cursor: TCursor;
begin
  try
    save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    RC := TCMReportController.Create;
    RC.RunReport(aRepName, aParams, frPreview, 0);
  finally
    FreeAndNil(RC);
    aparams.Free;
    Screen.Cursor := save_Cursor;
  end;

end;

procedure TFastReports.ReportPrint(const aRepname: string; const aParams: TCMParams;
  aPromptUser: boolean);
var
  RC: TCMReportController;
  save_Cursor: TCursor;
  Prompt: integer;
begin
  if aPromptUser then
    Prompt := 1
  else
    Prompt := 0;
  try
    save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    RC := TCMReportController.Create;
    RC.RunReport(aRepName, aParams, frPrint, Prompt);
  finally
    FreeAndNil(RC);
    aparams.free;
    Screen.Cursor := save_Cursor;
  end;
end;

procedure TFastReports.SpecMarkedLoadings(const aLoNo, aSupplier, aUserID,
  aLang: integer);
var
  params: TCMParams;
begin
  params := TCMParams.Create();
  params.Add('@ShippingPlanNo', aLoNo);
  params.Add('@UserID', aUserID);
  params.Add('@SupplierNo', aSupplier);
  params.Add('@Language', aLang);
  if aLang = cSwedish then
    ReportPreview('SPEC_ALLA_LASTER_VERK_ver3_SV.fr3', params)
  else
    ReportPreview('SPEC_ALLA_LASTER_VERK_ver3_ENG.fr3', params)
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
      if aLanguage = cSwedish then
        ReportName := 'TRP_ORDER_NOTE_SV.fr3'
      else
        ReportName := 'TRP_ORDER_NOTE_ENG.fr3';
    cTrporder_manuell:
      if aLanguage = cSwedish then
        ReportName := 'TRP_ORDER_NOTE_MANUELL_SV.fr3'
      else
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
      if aLanguage = cSwedish then
        ReportName := 'TALLY_NOTE_VER3_SV.fr3'
      else
        Reportname := 'TALLY_NOTE_VER3_ENG.fr3';
    cFoljesedelIntern:
      ReportName := 'TALLY_INTERNAL_VER3_NOTE.fr3';
    cFoljesedel_no_matching_pkg:
      if aLanguage = cSwedish then
        ReportName := 'TALLY_NOTE_MM_ver3_SV.fr3'
      else
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
