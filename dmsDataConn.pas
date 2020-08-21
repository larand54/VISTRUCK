unit dmsDataConn;
//visprodsql.vida.se
interface

uses
  Classes,
  DB,


  System.Generics.Collections,SysUtils, FMTBcd, Provider, ImgList, Controls, Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, FireDAC.VCLUI.Login, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Comp.DataSet,
  FireDAC.Moni.FlatFile, FireDAC.VCLUI.Async, FireDAC.Comp.UI, VidaType ,uIDBConnector,
  FireDAC.Phys.MSSQLDef, System.ImageList;

type
  TdmsConnector = class(TDataModule,IDBConnector)
    ilStatus: TImageList;
    imglistActions: TImageList;
    sq_GetLoggedInUser: TFDQuery;
    sq_GetLoggedInUserLoggedInUser: TWideStringField;
    sq_GetUserName: TFDQuery;
    sq_GetUserNameUserName: TStringField;
    sq_GetUserNamePassWord: TStringField;
    FDConnection1: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    sq_GetCompany: TFDQuery;
    sq_GetCompanyClientName: TStringField;
    spad_GetSecondNo: TFDStoredProc;
    spad_MaxNo: TFDStoredProc;
    spad_GetCurrPkgNo: TFDStoredProc;
    spad_MaxNo_II: TFDStoredProc;
    sp_GetSecondNo: TFDStoredProc;
    sp_MaxNo: TFDStoredProc;
    sp_GetCurrPkgNo: TFDStoredProc;
    sp_MinNo: TFDStoredProc;
    sp_GetMaxLoadDetailNo: TFDStoredProc;
    sp_UpdateMaxSecByLoad: TFDStoredProc;
    sp_GetUserStartHostUserID: TIntegerField;
    sp_GetUserStartHostHostName: TStringField;
    sp_GetUserStartHostCanChangeUser: TIntegerField;
    sp_GetUserStartHostSetOnStart: TIntegerField;
    sp_GetUserStartHostChangeToUser: TStringField;
    sp_GetUserStartHost: TFDStoredProc;
    sp_GetSOPkgNo: TFDStoredProc;
    FD_DeleteSecondNo: TFDQuery;
    sq_GetUserNameDescription: TStringField;
    procedure DataModuleCreate           (Sender: TObject);
    procedure DataModuleDestroy          (Sender: TObject);
  private
    { Private declarations }

    FLastTransNo : LongWord;
    FSaveCursor: TStack<TCursor>;
    function getFileSize(const sFilename: string): int64;
    function getAppName: string;
    function getAppPath: string;
    function getLocalServer: string;

  public
    { Public declarations }
    LOG_ENABLE: boolean;
    DriveLetter,
    InifilesMap : String ;
    LoginChanged : Boolean ;
    Org_AD_Name : String ;
    Org_DB_Name : String ;
//    DeleteTdmVidaInvoice  : Boolean ;
    procedure setUp(const aDBServer, aDBUser, aDBPassw: string);
    procedure FDoLog(s: string);
    function getDBUser: string;
    function getDBPassw: string;
    function getDBServer: string;
    function ConnectToDatabase: boolean;
    function DisconnectDB: boolean;
    function getDBConnector: TObject;
    procedure setDBConnector(const value: TObject);
    function Connected: boolean;
    function ResetCursor: TCursor;
    function RestoreCursor: TCursor;
    function SaveandSetCursor(const aCursor: TCursor): TCursor;
    function SaveCursor: TCursor;

    function  CanChangeUser(const OriginalUserID : Integer)  : Boolean ;
    procedure DeleteSecondNo(const TableName: String; const PrimaryKeyValue: Integer) ;
    function  GetSOPkgNo(Var Prefix : String3;const ProducerNo, RegPointNo, SeriesType : Integer): Integer ;
    function  GetHostName(const UserID : Integer)  : String ;
    procedure UpdateMaxSecByLoad(const LoadNo : Integer) ;
    function  GetMaxLoadDetailNo(const LoadNo : Integer): Integer ;
    procedure InitProcedure(Proc: TFDStoredProc);
    function  NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
    function  Get_AD_Name : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd, Email : String;Const PFD_Name : String) ;

    function  GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
    function  GetCompanyName (CompanyNo : Integer) : String ;

    constructor Create(AOwner : TComponent); override;

    procedure Commit ;
    procedure Rollback ;
    function StartTransaction : LongWord;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

    function NextMaxNo(TableName: string): Integer;
    function NextMinNo(TableName: string): Integer;

    property localServer: string read getLocalServer;
    property Connection: TObject read getDBConnector write setDBConnector;
    property DBServer: string read getDBServer;
    property DBUser: string read getDBUser;
    property DBPassw: string read getDBPassw;

    property AppName: string read getAppName;
    property AppPath: string read getAppPath;


  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms, dmsVidaSystem;
//  VidaUser;


{$R *.dfm}

function TdmsConnector.CanChangeUser(const OriginalUserID : Integer)  : Boolean ;
Var AD_Name : String ;
Begin
  Result  := False ;
  sp_GetUserStartHost.ParamByName('@UserID').AsInteger  :=  OriginalUserID ;
  sp_GetUserStartHost.ParamByName('@AppDir').AsString   :=  'Main' ;
  sp_GetUserStartHost.Active  :=  True ;
  Try
  if not sp_GetUserStartHost.Eof then
  Begin
   if sp_GetUserStartHostCanChangeUser.AsInteger = 1 then
    Result := True ;
  End;
  Finally
    sp_GetUserStartHost.Active  := False ;
  End;
End;

procedure TdmsConnector.DeleteSecondNo(const TableName: String; const PrimaryKeyValue: Integer) ;
Begin
 Try
 FD_DeleteSecondNo.ParamByName('TableName').AsString        := TableName ;
 FD_DeleteSecondNo.ParamByName('PrimaryKeyValue').AsInteger := PrimaryKeyValue ;
 FD_DeleteSecondNo.ExecSQL ;
  Except
//   On E: Exception do
   on E: eDatabaseError do
   Begin
    ShowMessage('FD_DeleteSecondNo ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
    Raise ;
   End ;
  End ;
End ;

function TdmsConnector.DisconnectDB: boolean;
begin

end;

function TdmsConnector.getFileSize(const sFilename: string): int64;
var
  f: Cardinal;
begin
  f := FileOpen(sFileName, fmOpenRead);
  Result := FileSeek(f, 0, 2);
  FileClose(f);
end;

procedure TdmsConnector.FDoLog(s: string);
var
  sName: string;
  f: Text;
begin
 {$IFDEF DEBUG}
   ShowMessage('s = ' + s) ;

 {$ELSE}
  if LOG_ENABLE then
  Begin
    // sName := dmsConnector.DriveLetter + 'VIS\TEMP\'  + Application.Title + '.log' ;
    sName := dmsConnector.DriveLetter + 'VIS\TEMP\' + 'VIS' + '.log';
    AssignFile(f, sName);
    if not FileExists(sName) then
      Rewrite(f)
    else
    begin
      Append(f);
    end;
    Writeln(f, FormatDateTime('yyyy.mm.dd hh:nn:ss zzz    ', now) + s);
    CloseFile(f);
    if GetFileSize(sName) >= 512 * 1024 then
      RenameFile(sName, sName + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now))
  End
  {$ENDIF}
end;

function TdmsConnector.getAppName: string;
var
  i: integer;
  s: string;
begin
  s := ExtractFileName(Application.ExeName);
  i := pos('.',s,1);
  result := copy(s,1,i-1);
end;

function TdmsConnector.getAppPath: string;
var
  i,i1: integer;
  s: string;
begin
  s := ExtractFilePath(Application.ExeName);
  s := s.Remove(s.length-1);
  i := LastDelimiter('\',s);
  result := s.Substring(i);
end;

function TdmsConnector.GetSOPkgNo(Var Prefix : String3;const ProducerNo, RegPointNo, SeriesType : Integer): Integer ;
begin
  Try
  sp_GetSOPkgNo.ParamByName('@ClientNo').AsInteger   := ProducerNo ;
  sp_GetSOPkgNo.ParamByName('@RegPointNo').AsInteger := RegPointNo ;
  sp_GetSOPkgNo.ParamByName('@SeriesType').AsInteger := SeriesType ;
  sp_GetSOPkgNo.ExecProc;
  try
    Result := sp_GetSOPkgNo.ParamByName('@fCurrentPkgNo').AsInteger ;
    Prefix := sp_GetSOPkgNo.ParamByName('@Prefix').AsString ;
  finally
    sp_GetSOPkgNo.Close;
  end;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('sp_GetSOPkgNo ' + E.Message) ;
    Raise ;
   End ;
  End ;
end;

function TdmsConnector.GetHostName(const UserID : Integer)  : String ;
Var Dir : String ;
LengthOfPath  : Integer ;
begin
 Dir          := GetCurrentDir ;
// showmessage('Dir = ' + Dir) ;
 LengthOfPath := Length(Dir) ;
 Dir          := Copy(GetCurrentDir, LengthOfPath - 13, 14) ;

// showmessage('Dir = ' + Dir) ;

  Result  := '' ;
{$IFDEF DEBUG}
  if copy(GetEnvironmentVariable('COMPUTERNAME'),0,6) = 'CARMAK' then
  begin
    result := 'vistestsql.vida.se:vis_vida';
    exit;
  end;
{$ENDIF}

  sp_GetUserStartHost.ParamByName('@UserID').AsInteger  :=  UserID ;
  sp_GetUserStartHost.ParamByName('@AppDir').AsString   :=  'VisTruck' ;
  sp_GetUserStartHost.ParamByName('@AppPath').AsString  :=  Dir ;
  sp_GetUserStartHost.Active                            :=  True ;
  Try
  if not sp_GetUserStartHost.Eof then
  Begin
   if sp_GetUserStartHostSetOnStart.AsInteger = 1 then
    Result := sp_GetUserStartHostHostName.AsString
     else
      Result  := '' ;
  End;
  Finally
    sp_GetUserStartHost.Active  := False ;
  End;
End;

function TdmsConnector.getLocalServer: string;
begin
  result := GetEnvironmentVariable('COMPUTERNAME')+'\SQLEXPRESS\';
end;

procedure TdmsConnector.InitProcedure(Proc: TFDStoredProc);
var
  i: Integer;
begin
  Proc.Close;
  for i:=0 to Proc.Params.Count-1 do
    Proc.Params[i].Clear;
end;

function TdmsConnector.NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
begin
  InitProcedure(spad_GetSecondNo);
  spad_GetSecondNo.ParamByName('@TableName').AsString         := TableName;
  spad_GetSecondNo.ParamByName('@PrimaryKeyValue').AsInteger  := PrimaryKeyValue;
  spad_GetSecondNo.ExecProc;
  try
    Result := spad_GetSecondNo.ParamByName('@SecondKeyValue').AsInteger;
  finally
    spad_GetSecondNo.Close;
  end;
end;

function TdmsConnector.GetMaxLoadDetailNo(const LoadNo : Integer): Integer ;
begin
  sp_GetMaxLoadDetailNo.Active  := False ;
  sp_GetMaxLoadDetailNo.ParamByName('@LoadNo').AsInteger  := LoadNo ;
  sp_GetMaxLoadDetailNo.Active  := True ;
  try
   if not sp_GetMaxLoadDetailNo.eof then
    Result := sp_GetMaxLoadDetailNo.FieldByName('LoadDetailNo').AsInteger
     else
      Result  := 1 ;
  finally
    sp_GetMaxLoadDetailNo.Active  := False ;
  end;
end;

function TdmsConnector.Get_AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  Result:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    Result:= '-' ;
 sq_GetLoggedInUser.Close ;
End ;

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd, Email : String;Const PFD_Name : String) ;
Var AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  AD_Name:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    AD_Name:= '-' ;
// ShowMessage('AD_Name = '+AD_Name) ;
 if Length(PFD_Name) > 0 then
  AD_Name:= PFD_Name ;
 sq_GetLoggedInUser.Close ;
 if AD_Name <> '-' then
 Begin
  sq_GetUserName.ParamByName('AD_Name').AsString:= AD_Name ;
  sq_GetUserName.Open ;
  if not sq_GetUserName.Eof Then
  Begin
   UserName := sq_GetUserNameUserName.AsString ;
   UserPswd := sq_GetUserNamePassWord.AsString ;
   Email    := sq_GetUserNameDescription.AsString ;
  End
   else
    Begin
     ShowMessage('Användare ' + AD_Name + ' saknar behörighet i VIS') ;
     UserName:= '-' ;
    End ;
  sq_GetUserName.Close ;
 End
 else
 Begin
  ShowMessage('Windows användarnamn saknas') ;
  UserName:= '-' ;
 End ;
End ;

procedure TdmsConnector.Commit ;
begin
// FDTransaction1.Commit ;
end;

function TdmsConnector.Connected: boolean;
begin

end;

function TdmsConnector.ConnectToDatabase: boolean;
begin

end;

constructor TdmsConnector.Create(AOwner : TComponent);
begin
  inherited;
  FLastTransNo := 0;
  FDConnection1.Close;
  FSaveCursor := TStack<TCursor>.create;
end;

procedure TdmsConnector.DataModuleCreate(Sender: TObject);
begin
  LOG_ENABLE := false;
{$IFDEF DEBUG}
  if (Pos('CARMAK', LocalServer) > 0) then
  begin
    dmsConnector.DriveLetter := 'C:\';
    with dmsConnector.FDConnection1 do
    begin
      Params.Clear;
      Params.Add('Server=vistestsql.vida.se');
      Params.Add('Database=vis_vida');
      Params.Add('OSAuthent=No');
      Params.add('MetaDefCatalog=vis_vida');
      Params.Add('MetaDefSchema=dbo');
      Params.Add('User_Name=Lars');
      Params.Add('Password=woods2011');
      Params.Add('DriverID=MSSQL');
      Params.Add('ApplicationName=VISTRUCK');
    end;
  end
  else
  begin
    with dmsConnector.FDConnection1 do
    begin
      Params.Clear;
      Params.Add('Server=visprodsql.vida.se');
      Params.Add('Database=vis_vida');
      Params.Add('OSAuthent=yes');
      Params.add('MetaDefCatalog=vis_vida');
      Params.Add('MetaDefSchema=dbo');
      Params.Add('DriverID=MSSQL');
      Params.Add('ApplicationName=VISTRUCK');
    end;
  end;
{$ELSE}
  if (Pos('CARMAK', LocalServer) > 0) then
  begin
    dmsConnector.DriveLetter := 'C:\';
    with dmsConnector.FDConnection1 do
    begin
      Params.Clear;
      Params.Add('Server=visprodsql.vida.se');
      Params.Add('Database=vis_vida');
      Params.Add('OSAuthent=No');
      Params.add('MetaDefCatalog=vis_vida');
      Params.Add('MetaDefSchema=dbo');
      Params.Add('User_Name=Lars');
      Params.Add('Password=woods2011');
      Params.Add('DriverID=MSSQL');
      Params.Add('ApplicationName=VISTRUCK');
    end;
  end
  else
    with dmsConnector.FDConnection1 do
    begin
      Params.Clear;
      Params.Add('Server=visprodsql.vida.se');
      Params.Add('Database=vis_vida');
      Params.Add('OSAuthent=yes');
      Params.add('MetaDefCatalog=vis_vida');
      Params.Add('MetaDefSchema=dbo');
      Params.Add('DriverID=MSSQL');
      Params.Add('ApplicationName=VISTRUCK');
    end;
{$ENDIF}
// FDMoniFlatFileClientLink1.Tracing := False ;
//ALVESQL04
//CARMAK-HP8530W\SQLEXPRESS
end;


procedure TdmsConnector.DataModuleDestroy(Sender: TObject);
//
// Close the database when the data module is destroyed when
// the application is closed.
//
begin
//  SQLConnection.close ;
 FDConnection1.Close ;
end;


function TdmsConnector.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  try
{    DecodeDate(Now,YY,MM,DD);
    DecodeTime(Now,HH,MN,SS,MS);
    SQLMonitor.FileName := Format('Logs\%d%d%d%d%d%d.txt',[YY,MM,DD,HH,MN,SS]);
    SQLConnection.Params.Values['HostName']  := HostName;
    SQLConnection.Params.Values['Database']  := Database;
    SQLConnection.Params.Values['User Name'] := DBUserName;
    SQLConnection.Params.Values['Password']  := DBUserPswd;
 }

    FDConnection1.Params.Values['Server'  ]  := HostName;
    FDConnection1.Params.Values['Database']  := Database;
    FDConnection1.Params.Values['User_Name'] := DBUserName;
    FDConnection1.Params.Values['Password']  := DBUserPswd;
{    ShowMessage('Hostname: '+FDConnection1.Params.Values['HostName']
    +'  Database: '+ FDConnection1.Params.Values['Database']
    +'  User name: '+ FDConnection1.Params.Values['User Name']
    +'  Password: '+ FDConnection1.Params.Values['Password']     ) ; }
    FDConnection1.Connected := True ; // .Open;

    Result := FDConnection1.Connected;

  except
    on EAbort do
//    Begin
     Result := FALSE;
  // End ;
  end;
end;

function TdmsConnector.NextMaxNo(TableName: string): Integer;
begin
  self.spad_MaxNo.ParamByName('@TableName').AsString := TableName;
  self.spad_MaxNo.ExecProc;
  try
    Result := self.spad_MaxNo.ParamByName('@MaxNo').AsInteger;
  finally
    self.spad_MaxNo.Close;
  end;
end;

function TdmsConnector.NextMinNo(TableName: string): Integer;
begin
  self.sp_MinNo.ParamByName('@TableName').AsString := TableName;
  self.sp_MinNo.ExecProc;
  try
    Result := self.sp_MinNo.ParamByName('@MaxNo').AsInteger;
  finally
    self.sp_MinNo.Close;
  end;
end;

function TdmsConnector.ResetCursor: TCursor;
begin
  FSaveCursor.Clear;
  result := crDefault;
  Screen.Cursor := result;
end;

function TdmsConnector.RestoreCursor: TCursor;
begin
  result := FSaveCursor.Pop;
  Screen.cursor := result;
end;

procedure TdmsConnector.Rollback ;
begin
 // FDTransaction1.Rollback ;
end;

function TdmsConnector.SaveandSetCursor(const aCursor: TCursor): TCursor;
begin
  result := Screen.cursor;
  FSaveCursor.Push(result);
  Screen.cursor := aCursor;
end;

function TdmsConnector.SaveCursor: TCursor;
begin
  result := Screen.cursor;
  FSaveCursor.Push(Screen.Cursor);
end;

procedure TdmsConnector.setDBConnector(const value: TObject);
begin

end;

procedure TdmsConnector.setUp(const aDBServer, aDBUser, aDBPassw: string);
begin

end;

function TdmsConnector.StartTransaction : LongWord;
begin
// FDTransaction1.
// FDConnection1.StartTransaction ;
// FDTransaction1.StartTransaction ;
end;

function TdmsConnector.GetCompanyName (CompanyNo : Integer) : String ;
Begin
 sq_GetCompany.Close ;
 sq_GetCompany.ParamByName('CompanyNo').AsInteger:= CompanyNo ;
 sq_GetCompany.Open ;
 if not sq_GetCompany.Eof then
  Result:= sq_GetCompanyClientName.AsString
  else
  Result:= '' ;
 sq_GetCompany.Close ;
End ;

function TdmsConnector.GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
begin
  sp_GetCurrPkgNo.ParamByName('@ClientNo').AsInteger := ClientNo ;
  sp_GetCurrPkgNo.ParamByName('@NoOfPkgNo').AsInteger := NoOfPkgNo ;

  sp_GetCurrPkgNo.ExecProc;
  try
    Result := sp_GetCurrPkgNo.ParamByName('@fCurrentPkgNo').AsInteger;
  finally
    sp_GetCurrPkgNo.Close;
  end;
end;


function TdmsConnector.getDBConnector: TObject;
begin

end;

function TdmsConnector.getDBPassw: string;
begin

end;

function TdmsConnector.getDBServer: string;
begin

end;

function TdmsConnector.getDBUser: string;
begin

end;

procedure TdmsConnector.UpdateMaxSecByLoad(const LoadNo : Integer) ;
begin
  sp_UpdateMaxSecByLoad.ParamByName('@LoadNo').AsInteger := LoadNo ;
  try
   sp_UpdateMaxSecByLoad.ExecProc;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
     Raise ;
    End ;
   end;
end;


end.
