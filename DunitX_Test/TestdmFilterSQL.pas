unit TestdmFilterSQL;

interface
uses
  DUnitX.TestFramework,
  System.Generics.Collections,
  udmFilterSQL;

type

  [TestFixture]
  TTestdmFilterSQL = class(TObject)
  private
    FsNotInvoiced: string;
    FsNotInvoicedANDlager: string;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Atribute to supply parameters.
    [Test]
    procedure TestSQLFilterWithEmpyList;
    [Test]
    procedure TestSQLFilterWithOneItem;
    [Test]
    procedure TestSQLFilterWithTwoItems;
    [Test]
    procedure TestSQLFilterWithFiveItems;
    [Test]
    procedure TestFloatListToStringList_EmptySource;
    [Test]
    procedure TestSQLFilterStorageGroupWithOneItem;
    [Test]
    procedure TestSQLFilterStorageGroupWithTwoItems;
    [Test]
    procedure TestSQLFilterStorageGroupWithFiveItems;
    [Test]
    procedure TestSQLFilterOwnerWithOneItem;
    [Test]
    procedure TestSQLFilterOwnerWithTwoItems;
    [Test]
    procedure TestSQLFilterOwnerWithFiveItems;
    [Test]
    procedure TestSQLFilterAreaWithOneItem;
    [Test]
    procedure TestSQLFilterAreaWithTwoItems;
    [Test]
    procedure TestSQLFilterAreaWithFiveItems;
    [Test]
    procedure TestSQLFilterNotInvoicedWithEmpyList;
    [Test]
    procedure TestSQLFilterNotInvoicedWithOneItem;
    [Test]
    procedure TestSQLFilterNotInvoicedWithTwoItems;
    [Test]
    procedure TestSQLFilterNotInvoicedWithFiveItems;
    [Test]
    procedure TestSQLFilterNotInvoicedAndLagerWithEmpyList;
    [Test]
    procedure TestSQLFilterNotInvoicedAndLagerWithOneItem;
    [Test]
    procedure TestSQLFilterNotInvoicedAndLagerWithTwoItems;
    [Test]
    procedure TestSQLFilterNotInvoicedAndLagerWithFiveItems;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedWithOneItem;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedWithTwoItems;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedWithFiveItems;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedAndLagerWithOneItem;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedAndLagerWithTwoItems;
    [Test]
    procedure TestSQLFilterStorageGroupNotInvoicedAndLagerWithFiveItems;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedAndLagerWithOneItem;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedAndLagerWithTwoItems;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedAndLagerWithFiveItems;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedWithOneItem;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedWithTwoItems;
    [Test]
    procedure TestSQLFilterOwnerNotInvoicedWithFiveItems;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedAndLagerWithOneItem;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedAndLagerWithTwoItems;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedAndLagerWithFiveItems;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedWithOneItem;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedWithTwoItems;
    [Test]
    procedure TestSQLFilterAreaNotInvoicedWithFiveItems;
  end;

implementation
uses
  SysUtils,dialogs;
var
  SF: TdmFilterSQL;
  s: string;
procedure TTestdmFilterSQL.Setup;
begin
  SF := TdmFilterSQL.Create(nil);
  s := '';
  s := s + 'AND OH.OrderType = 0 ';
  s := s + 'AND PN.Status = 0 ';
  s := s + 'AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos';
  s := s + 'WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)';
  FsNotInvoiced := s + #13#10;

  s := '';
  s := s + 'OR (NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos';
  s := s + 'WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)';
  s := s + 'OR PN.status = 1) ';
  s := s + 'AND OH.OrderType = 0 ';
  FsNotInvoicedANDLager := s + #13#10;
end;

procedure TTestdmFilterSQL.TearDown;
begin
  FreeAndNil(SF);
end;

procedure TTestdmFilterSQL.Test1;
begin
end;
procedure TTestdmFilterSQL.TestFloatListToStringList_EmptySource;
var
  SourceList: TCMFL;
  ResultList: TCMSL;
  i: integer;
begin
  SourceList := TCMFL.Create;
  SourceList.Add(10.22);
  SourceList.Add(-10.22);
  SourceList.Add(1.49);
  SourceList.Add(-0.0073);
  ResultList := dmFilterSQL.FloatListToStringList(SourceList);
  for i := 0 to ResultList.Count-1 do
    Assert.AreEqual(SourceList[i], strToFloat(ResultList[i]));
end;


procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedAndLagerWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,11,12,13,14)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and lager
  A.Add(10);A.Add(11);A.Add(12);A.Add(13);A.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedAndLagerWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (12)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and lager
  A.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedAndLagerWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,13)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and lager
  A.Add(10);A.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,11,12,13,14)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  A.Add(10);A.Add(11);A.Add(12);A.Add(13);A.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (12)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  A.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaNotInvoicedWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,13)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  A.Add(10);A.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,11,12,13,14)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  A.Add(10);A.Add(11);A.Add(12);A.Add(13);A.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (12)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  A.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterAreaWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE Ar.AreaID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE Ar.AreaID IN (10,13)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  A.Add(10);A.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;


procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedAndLagerWithEmpyList;var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.Status=-999'+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // NotInvoiced
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedAndLagerWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,11,12,13,14)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // NotInvoiced and lager
  T.Add(10);T.Add(11);T.Add(12);T.Add(13);T.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedAndLagerWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (12)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // NotInvoiced and lager
  T.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedAndLagerWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,13)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // NotInvoiced and lager
  T.Add(10);T.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedWithEmpyList;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.Status=-999'+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // NotInvoiced
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,11,12,13,14)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // NotInvoiced
  T.Add(10);T.Add(11);T.Add(12);T.Add(13);T.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (12)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // NotInvoiced
  T.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterNotInvoicedWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,13)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // NotInvoiced
  T.Add(10);T.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedAndLagerWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,11,12,13,14)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  O.Add(10);O.Add(11);O.Add(12);O.Add(13);O.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedAndLagerWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (12)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  O.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedAndLagerWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,13)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  O.Add(10);O.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,11,12,13,14)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  O.Add(10);O.Add(11);O.Add(12);O.Add(13);O.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (12)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  O.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerNotInvoicedWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,13)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  O.Add(10);O.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,11,12,13,14)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  O.Add(10);O.Add(11);O.Add(12);O.Add(13);O.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (12)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  O.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterOwnerWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PIP.OwnerNo IN (10,13)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  O.Add(10);O.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedAndLagerWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,11,12,13,14)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  G.Add(10);G.Add(11);G.Add(12);G.Add(13);G.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedAndLagerWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (12)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  G.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedAndLagerWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,13)'+FsNotInvoicedANDlager;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 1; // Not Invoiced and Lager
  G.Add(10);G.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,11,12,13,14)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  G.Add(10);G.Add(11);G.Add(12);G.Add(13);G.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (12)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  G.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupNotInvoicedWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,13)'+FsNotInvoiced;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 2; // Not Invoiced
  G.Add(10);G.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;


procedure TTestdmFilterSQL.TestSQLFilterStorageGroupWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,11,12,13,14)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  G.Add(10);G.Add(11);G.Add(12);G.Add(13);G.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (12)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  G.Add(12);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterStorageGroupWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.LogicalInventoryPointNo IN (10,13)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  G.Add(10);G.Add(13);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithEmpyList;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.Status=-999'+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
//  Actual := StringReplace(StringReplace(Actual, #10, '', [rfReplaceAll]), #13, '', [rfReplaceAll]);
Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithFiveItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,11,12,13,14)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  T.Add(10);T.Add(11);T.Add(12);T.Add(13);T.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithOneItem;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  T.Add(10);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithTwoItems;
var
  T,A,G,O: TList<integer>;
  Actual,
  Expected: string;
  source: integer;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,14)'+'AND PN.Status = 1 '+#13#10;
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  O := TList<integer>.create;
  source := 0; // Lager
  T.Add(10);T.Add(14);
  SF.UpdateSQLFilterData(T,A,G,O,source);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestdmFilterSQL);
end.
