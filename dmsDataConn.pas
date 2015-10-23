unit dmsDataConn;

interface

uses
  Classes,
  DB,

  
  SysUtils, FMTBcd, Provider, ImgList, Controls, Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, FireDAC.VCLUI.Login, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Comp.DataSet,
  FireDAC.Moni.FlatFile, FireDAC.VCLUI.Async, FireDAC.Comp.UI, VidaType ;

type
  TdmsConnector = class(TDataModule)
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
    procedure DataModuleCreate           (Sender: TObject);
    procedure DataModuleDestroy          (Sender: TObject);
  private
    { Private declarations }

    FLastTransNo : LongWord;

  public
    { Public declarations }

    DriveLetter,
    InifilesMap : String ;
    LoginChanged : Boolean ;
    Org_AD_Name : String ;
    Org_DB_Name : String ;
//    DeleteTdmVidaInvoice  : Boolean ;
    procedure DeleteSecondNo(const TableName: String; const PrimaryKeyValue: Integer) ;
    function  GetSOPkgNo(Var Prefix : String3;const ProducerNo, RegPointNo, SeriesType : Integer): Integer ;
    function  GetHostName(const UserID : Integer)  : String ;
    procedure UpdateMaxSecByLoad(const LoadNo : Integer) ;
    function  GetMaxLoadDetailNo(const LoadNo : Integer): Integer ;
    procedure InitProcedure(Proc: TFDStoredProc);
    function  NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
    function  Get_AD_Name : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd : String;Const PFD_Name : String) ;

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


  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms, dmsVidaSystem;
//  VidaUser;


{$R *.dfm}

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

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd : String;Const PFD_Name : String) ;
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
   UserName:= sq_GetUserNameUserName.AsString ;
   UserPswd:= sq_GetUserNamePassWord.AsString ;
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

constructor TdmsConnector.Create(AOwner : TComponent);
begin
  inherited;
  FLastTransNo := 0;
end;

procedure TdmsConnector.DataModuleCreate(Sender: TObject);
begin
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

procedure TdmsConnector.Rollback ;
begin
 // FDTransaction1.Rollback ;
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
