unit udmFilterSQL;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uICMSubject, uICMObserver
  , dmsDataConn;

type
  TCMDL = TDictionary<string,string>;
  TCMSL = class (TStringList)
    constructor create;
  end;
  TCMFL = class (TList<extended>)
    function Add(fl: extended): boolean;
    function exists(fl: extended): boolean;
  end;

  TdmFilterSQL = class(TDataModule, ICMSubject)
    sqFilterData: TFDQuery;
    ds_PositionView: TDataSource;
    cds_PositionView: TFDQuery;
    PkgUpdateSQL1: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_PositionViewUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);

  private
    { Private declarations }
    FDBCon: TFDConnection;
    FListAT: TCMFL;
    FListAW: TCMFL;         // ActualWidthMM
    FListNT: TCMFL;         // NominalThicknessMM
    FListNW: TCMFL;         // NominalWidthMM
    FListGrade: TCMSL;      // GradeName
    FListSU: TCMSL;         // SurfacingName
    FListSpecies: TCMSL;    // SpeciesName
    FListVaruGrupp: TCMSL;  // VarugruppNamn
    FListIMP: TCMSL;        // PC
    FListLengthDesc: TCMSL; // LengthDesc
    FListREF: TCMSL;        // REFERENCE
    FListInfo1: TCMSL;      // Info1
    FListInfo2: TCMSL;      // Info2
    FObserver: TList<ICMObserver>;

    procedure AddFilterData(const aList: TCMSL; aS1: string);
    procedure AddFilterDataFloat(const aList: TCMFL; aFl: double);
    procedure Clear;
    function getFListAT: TCMSL;
    function getFListAW: TCMSL;
    function getFListNT: TCMSL;
    function getFListNW: TCMSL;
  public
    { Public declarations }
    destructor Destroy;
    procedure UpdateSQLFilterData(aStorePosList: TList<integer>;
                                  aStoreAreaList: TList<integer>;
                                  aStoreGroupList: TList<integer>;
                                  aOwnerList: TList<integer>;
                                  aSource: integer);
    procedure SetupDBConnection(aCon: TFDConnection);
    procedure UpdateFilterData(aStorePosList: TList<integer>;
                               aStoreAreaList: TList<integer>;
                               aStoreGroupList: TList<integer>;
                               aOwnerList: TList<integer>;
                               aSource: integer);
    {procedures from interface ISubject in ObserverPattern}
    procedure Attach(Observer: ICMObserver);
    procedure Detach(Observer: ICMObserver);
    procedure Notify;
    function FloatListToStringList(const fl: TCMFL): TCMSL;
    {Properties}
    Property DBCon: TFDConnection read FDBCon;
    property ATL: TCMSL read getFListAT;
    property AWL: TCMSL read getFListAW;
    property NTL: TCMSL read getFListNT;
    property NWL: TCMSL read getFListNW;
    property GradeL: TCMSL read FListGrade;
    property SUL: TCMSL read FListSU;
    property SpeciesL: TCMSL read FListSpecies;
    property VaruGruppL: TCMSL read FListVaruGrupp;
    property IMPL: TCMSL read FListIMP;
    property LengthDescL: TCMSL read FListLengthDesc;
    property REFL: TCMSL read FListREF;
    property Info1L: TCMSL read FListInfo1;
    property Info2L: TCMSL read FListInfo2;
  end;

var
  dmFilterSQL: TdmFilterSQL;
  LoggDir: string;

implementation

uses
  VidaUser,Dialogs, dmsVidaSystem;
{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

{ TdmFilterSQL }

procedure TdmFilterSQL.AddFilterData(const aList: TCMSL; aS1: string);
begin
  try
    aList.Add(aS1);
  Except
        // Duplicate key error - That's ok.
  end;
end;

procedure TdmFilterSQL.AddFilterDataFloat(const aList: TCMFL; aFl: double);
begin
  try
    aList.Add(aFl);
  Except
        // Duplicate key error - That's ok.
  end;
end;

procedure TdmFilterSQL.Attach(Observer: ICMObserver);
begin
  FObserver.Add(Observer);
end;

procedure TdmFilterSQL.cds_PositionViewUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 PkgUpdateSQL1.ConnectionName  := cds_PositionView.ConnectionName;
 PkgUpdateSQL1.DataSet         := cds_PositionView;
 PkgUpdateSQL1.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied;
end;

procedure TdmFilterSQL.Clear;
begin
    FListAT.Clear;
    FListAW.Clear;         // ActualWidthMM
    FListNT.Clear;         // NominalThicknessMM
    FListNW.Clear;         // NominalWidthMM
    FListGrade.Clear;      // GradeName
    FListSU.Clear;         // SurfacingName
    FListSpecies.Clear;    // SpeciesName
    FListVaruGrupp.Clear;  // VarugruppNamn
    FListIMP.Clear;        // PC
    FListLengthDesc.Clear; // LengthDesc
    FListREF.Clear;        // REFERENCE
    FListInfo1.Clear;      // Info1
    FListInfo2.Clear;      // Info2
end;

procedure TdmFilterSQL.DataModuleCreate(Sender: TObject);
begin
  FObserver := TList<ICMObserver>.create;
  FListAT := TCMFL.create; // ActualThicknessMM
  FListAW := TCMFL.create; // ActualWidthMM
  FListNT := TCMFL.create; // NominalThicknessMM
  FListNW := TCMFL.create; // NominalWidthMM
  FListGrade := TCMSL.create; // GradeName
  FListSU := TCMSL.create; // SurfacingName
  FListSpecies := TCMSL.create; // SpeciesName
  FListVaruGrupp := TCMSL.create; // VarugruppNamn
  FListIMP := TCMSL.create; // PC
  FListLengthDesc := TCMSL.create; // LengthDesc
  FListREF := TCMSL.create; // REFERENCE
  FListInfo1 := TCMSL.create; // Info1
  FListInfo2 := TCMSL.create; // Info2
  LoggDir := dmsSystem.Get_Dir('UserDir');
end;

destructor TdmFilterSQL.Destroy;
begin
  FListAT.Free;
  FListAW.Free;
  FListNT.Free;
  FListNW.Free;
  FListGrade.Free;
  FListSU.Free;
  FListSpecies.Free;
  FListVaruGrupp.Free;
  FListIMP.Free;
  FListLengthDesc.Free;
  FListREF.Free;
  FListInfo1.Free;
  FListInfo2.Free;
  inherited Destroy;
end;

procedure TdmFilterSQL.Detach(Observer: ICMObserver);
begin
  FObserver.Remove(Observer)
end;

function TdmFilterSQL.FloatListToStringList(const fl: TCMFL): TCMSL;
var
  i: integer;
begin
  result := TCMSL.create;
  result.Sorted := false;
  for i := 0 to fl.Count-1 do
    result.Add(floatToStr(fl[i]));
end;

function TdmFilterSQL.getFListAT: TCMSL;
begin
  result := FloatListToStringList(FListAT);
end;

function TdmFilterSQL.getFListAW: TCMSL;
begin
  result := FloatListToStringList(FListAW);
end;

function TdmFilterSQL.getFListNT: TCMSL;
begin
  result := FloatListToStringList(FListNT);
end;

function TdmFilterSQL.getFListNW: TCMSL;
begin
  result := FloatListToStringList(FListNW);
end;

procedure TdmFilterSQL.Notify;
var
  Observer: ICMObserver;
begin
  for Observer in FObserver do begin
    Observer.Update(Self);
  end;
end;

procedure TdmFilterSQL.SetupDBConnection(aCon: TFDConnection);
begin
  FDBCon := aCon;
end;

procedure TdmFilterSQL.UpdateFilterData(aStorePosList: TList<integer>;
                                        aStoreAreaList: TList<integer>;
                                        aStoreGroupList: TList<integer>;
                                        aOwnerList: TList<integer>;
                                        aSource: integer);
var
  s: string;
begin
  sqFilterData.Active := false;
  Clear;
  UpdateSQLFilterData(aStorePosList, aStoreAreaList, aStoreGroupList, aOwnerList, aSource);
  try
    sqFilterData.SQL.SaveToFile(LoggDir + 'FilterSQL.sql');
  except
  end;
  sqFilterData.Prepare;
  sqFilterData.ParamByName('LanguageCode').AsInteger := ThisUser.LanguageID;
  sqFilterData.ParamByName('Source').AsInteger := aSource;
  sqFilterData.Active := true;
  sqFilterData.First;
  if not sqFilterData.Eof then
  begin
    while not sqFilterData.Eof do
    begin
      try
        AddFilterDataFloat(FListAT,
          sqFilterData.FieldByName('ActualThicknessMM').AsFloat);
        AddFilterDataFloat(FListNT,
          sqFilterData.FieldByName('NominalThicknessMM').AsFloat);
        AddFilterDataFloat(FListNW,
          sqFilterData.FieldByName('NominalWidthMM').AsFloat);
        AddFilterDataFloat(FListAW,
          sqFilterData.FieldByName('ActualWidthMM').AsFloat);

        s := sqFilterData.FieldByName('GradeName').AsString;
        if s <> '' then AddFilterData(FListGrade, s);

        s := sqFilterData.FieldByName('SurfacingName').AsString;
        if s <> '' then AddFilterData(FListSU, s);

        s := sqFilterData.FieldByName('SpeciesName').AsString;
        if s <> '' then AddFilterData(FListSpecies, s);

        s := sqFilterData.FieldByName('VarugruppNamn').AsString;
        if s <> '' then AddFilterData(FListVaruGrupp, s);

        s := sqFilterData.FieldByName('PC').AsString;
        if s <> '' then AddFilterData(FListIMP, s);

(*        s := sqFilterData.FieldByName('LengthDesc').AsString;
        if s <> '' then AddFilterData(FListLengthDesc, s);
  *)
        s := sqFilterData.FieldByName('REFERENCE').AsString;
        if s <> '' then AddFilterData(FListREF, s);

        s := sqFilterData.FieldByName('Info1').AsString;
        if s <> '' then AddFilterData(FListInfo1, s);

        s := sqFilterData.FieldByName('Info2').AsString;
        if s <> '' then AddFilterData(FListInfo2, s);

        sqFilterData.Next;
      except
        on E: Exception do
          ShowMessage(E.Message);

      end;
    end;
    FListAT.Sort;
    FListAW.Sort;
    FListNT.Sort;
    FListNW.Sort;
  end;
  Notify;
end;

procedure TdmFilterSQL.UpdateSQLFilterData(aStorePosList: TList<integer>;
                                           aStoreAreaList: TList<integer>;
                                           aStoreGroupList: TList<integer>;
                                           aOwnerList: TList<integer>;
                                           aSource: integer);
var
  strSQL: string;
  i: integer;
  s: string;
begin
  s := '';
  if aStorePosList.Count > 0 then
  begin
    s := 'WHERE PN.PositionID IN (';
    for i in aStorePosList do
    begin
      s := s + intToStr(i) + ',';
    end;
    s := copy(s, 1, s.Length - 1) + ')';
  end
  else if aStoreAreaList.Count > 0 then
  begin
    s := 'WHERE Ar.AreaID IN (';
    for i in aStoreAreaList do
    begin
      s := s + intToStr(i) + ',';
    end;
    s := copy(s, 1, s.Length - 1) + ')';
  end
  else if aStoreGroupList.Count > 0 then
  begin
    s := 'WHERE PN.LogicalInventoryPointNo IN (';
    for i in aStoreGroupList do
    begin
      s := s + intToStr(i) + ',';
    end;
    s := copy(s, 1, s.Length - 1) + ')';
  end
  else if aOwnerList.Count > 0 then
  begin
    s := 'WHERE PIP.OwnerNo IN (';
    for i in aOwnerList do
    begin
      s := s + intToStr(i) + ',';
    end;
    s := copy(s, 1, s.Length - 1) + ')';
  end;
  if s <> '' then
  begin
    case aSource of
      0:
        begin
          s := s + 'AND PN.Status = 1 '; // In store
//          s := s + 'AND OH.OrderType = 0 ';  Not used in store
        end;
      1:
        begin // Not invoiced + store
          s := s + 'OR (NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos';
          s := s + 'WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)';
          s := s + 'OR PN.status = 1) ';
          s := s + 'AND OH.OrderType = 0 ';
        end;
      2:
        begin // Not Invoiced
          s := s + 'AND OH.OrderType = 0 ';
          s := s + 'AND PN.Status = 0 ';
          s := s + 'AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos';
          s := s + 'WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)';
        end;
    end;

    strSQL := copy(sqFilterData.SQL.Text, 1,
      pos('WHERE', sqFilterData.SQL.Text) - 1);
    sqFilterData.SQL.Text := strSQL + s;
//    sqFilterData.SQL.Text := strSQL + ' WHERE PN.Status=-999';
  end
  else
  begin
    strSQL := copy(sqFilterData.SQL.Text, 1,
      pos('WHERE', sqFilterData.SQL.Text) - 1);
    sqFilterData.SQL.Text := strSQL + 'WHERE PN.Status=-999';
  end;

end;

{ TCMSL }

constructor TCMSL.create;
begin
  inherited create;
  sorted := true;
  Duplicates := dupIgnore;
end;

{ TCMFL }

function TCMFL.Add(fl: extended): boolean;
begin
  if not exists(fl) then
    inherited Add(fl);
end;

function TCMFL.exists(fl: extended): boolean;
var
  i: integer;
begin
  result := false;
  for i := 0 to Count-1 do
    if fl = self[i] then
    begin
      result := true;
      exit;
    end;
end;

end.
