unit udmFilterSQL;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uICMSubject, uICMObserver;

type
  TCMSL = TDictionary<string,string>;

  TdmFilterSQL = class(TDataModule, ICMSubject)
    FDConnectionForTest: TFDConnection;
    sqFilterData: TFDQuery;
    mtFilterData: TFDMemTable;
    dscFilteredData: TDataSource;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    FDBCon: TFDConnection;
    FListAT: TCMSL;
    FListAW: TCMSL;         // ActualWidthMM
    FListNT: TCMSL;         // NominalThicknessMM
    FListNW: TCMSL;         // NominalWidthMM
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
    procedure AddFilterData(const aList: TCMSL; aS1, aS2: string);
    procedure Clear;
    procedure UpdateSQLFilterData(aStorePosList: TList<integer>);
  public
    { Public declarations }
    destructor Destroy;
    procedure SetupDBConnection(aCon: TFDConnection);
    procedure UpdateFilterData(aStorePosList: TList<integer>);
    {procedures from interface ISubject in ObserverPattern}
    procedure Attach(Observer: ICMObserver);
    procedure Detach(Observer: ICMObserver);
    procedure Notify;
    {Properties}
    Property DBCon: TFDConnection read FDBCon;
    property ATL: TCMSL read FListAT;
    property AWL: TCMSL read FListAW;
    property NTL: TCMSL read FListNT;
    property NWL: TCMSL read FListNW;
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

implementation

uses
  Dialogs;
{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

{ TdmFilterSQL }

procedure TdmFilterSQL.AddFilterData(const aList: TCMSL; aS1, aS2: string);
begin
  try
    aList.Add(aS1, aS2);
  Except
        // Duplicate key error - That's ok.
  end;
end;

procedure TdmFilterSQL.Attach(Observer: ICMObserver);
begin
  FObserver.Add(Observer);
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
  FListAT := TCMSL.create; // ActualThicknessMM
  FListAW := TCMSL.create; // ActualWidthMM
  FListNT := TCMSL.create; // NominalThicknessMM
  FListNW := TCMSL.create; // NominalWidthMM
  FListGrade := TCMSL.create; // GradeName
  FListSU := TCMSL.create; // SurfacingName
  FListSpecies := TCMSL.create; // SpeciesName
  FListVaruGrupp := TCMSL.create; // VarugruppNamn
  FListIMP := TCMSL.create; // PC
  FListLengthDesc := TCMSL.create; // LengthDesc
  FListREF := TCMSL.create; // REFERENCE
  FListInfo1 := TCMSL.create; // Info1
  FListInfo2 := TCMSL.create; // Info2
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

procedure TdmFilterSQL.UpdateFilterData(aStorePosList: TList<integer>);
begin
  sqFilterData.Active := false;
  Clear;
  UpdateSQLFilterData(aStorePosList);
  if pos('WHERE PN.PositionID = -1', sqFilterData.SQL.Text) > 0 then
  begin
    ShowMessage('No Storage positions found!' + sLineBreak +
      'in TdmFilterSQL.UpdateFilterData');
    notify;
    exit;
  end;
  sqFilterData.Active := true;
  sqFilterData.First;
  if not sqFilterData.Eof then
  begin
    while not sqFilterData.Eof do
    begin
    try
      AddFilterData(FListAT,sqFilterData.FieldByName('ActualThicknessMM').AsString, sqFilterData.FieldByName('ActualThicknessMM').AsString);
      AddFilterData(FListNT, sqFilterData.FieldByName('NominalThicknessMM').AsString, sqFilterData.FieldByName('NominalThicknessMM').AsString);
      AddFilterData(FListNW, sqFilterData.FieldByName('NominalWidthMM').AsString, sqFilterData.FieldByName('NominalWidthMM').AsString);
      AddFilterData(FListAW, sqFilterData.FieldByName('ActualWidthMM').AsString, sqFilterData.FieldByName('ActualWidthMM').AsString);
      AddFilterData(FListGrade, sqFilterData.FieldByName('GradeName').AsString, sqFilterData.FieldByName('GradeCode').AsString);
      AddFilterData(FListSU, sqFilterData.FieldByName('SurfacingName').AsString, sqFilterData.FieldByName('SurfacingCode').AsString);
      AddFilterData(FListSpecies, sqFilterData.FieldByName('SpeciesName').AsString, sqFilterData.FieldByName('SpeciesCode').AsString);
      AddFilterData(FListVaruGrupp, sqFilterData.FieldByName('VarugruppNamn').AsString, sqFilterData.FieldByName('VarugruppNo').AsString);
      AddFilterData(FListIMP, sqFilterData.FieldByName('PC').AsString, sqFilterData.FieldByName('PC').AsString);
      AddFilterData(FListLengthDesc, sqFilterData.FieldByName('LengthDesc').AsString, sqFilterData.FieldByName('LengthDesc').AsString);
      AddFilterData(FListREF, sqFilterData.FieldByName('REFERENCE').AsString, sqFilterData.FieldByName('REFERENCE').AsString);
      AddFilterData(FListInfo1, sqFilterData.FieldByName('Info1').AsString, sqFilterData.FieldByName('Info1').AsString);
      AddFilterData(FListInfo2, sqFilterData.FieldByName('Info2').AsString, sqFilterData.FieldByName('Info2').AsString);
      sqFilterData.Next;
    except on Exception do;

    end;
    end;
    Notify;
  end;
end;

procedure TdmFilterSQL.UpdateSQLFilterData(aStorePosList: TList<integer>);
var
  strSQL: string;
  i: integer;
  s: string;
begin
  strSQL := copy(sqFilterData.SQL.Text, 1,
    pos('WHERE', sqFilterData.SQL.Text) - 1);
  if aStorePosList.Count <= 0 then
  begin
    // sqFilterdata.SQL.Text := strSQL + 'WHERE PN.PositionID IN (-1)';
    sqFilterData.SQL.Text := strSQL + 'WHERE PN.PositionID = -1'; //nothing fetched
    exit;
  end;
  s := 'WHERE PN.PositionID IN (';
  for i in aStorePosList do
  begin
    s := s + intToStr(i) + ',';
  end;
  s := copy(s, 1, s.Length - 1) + ')';
  sqFilterData.SQL.Text := strSQL + s;
end;

end.
