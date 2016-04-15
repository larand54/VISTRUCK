unit TestdmFilterSQL;

interface
uses
  DUnitX.TestFramework,
  System.Generics.Collections,
  udmFilterSQL;

type

  [TestFixture]
  TTestdmFilterSQL = class(TObject)
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
//    [TestCase('TestB','3,4')]
//    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
    [Test]
    procedure TestWithData;
  end;

implementation
uses
  SysUtils;
var
  SF: TdmFilterSQL;
procedure TTestdmFilterSQL.Setup;
begin
  SF := TdmFilterSQL.Create(nil);
end;

procedure TTestdmFilterSQL.TearDown;
begin
  FreeAndNil(SF);
end;

procedure TTestdmFilterSQL.Test1;
begin
end;
procedure TTestdmFilterSQL.TestSQLFilterWithEmpyList;
var
  T: TList<integer>;
  Actual,
  Expected: string;
begin
  SF.sqFilterData.Active := false;
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID = -1'+#13#10;
  T := TList<integer>.create;
  SF.UpdateSQLFilterData(T);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithFiveItems;
var
  T: TList<integer>;
  Actual,
  Expected: string;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,11,12,13,14)'+#13#10;
  T := TList<integer>.create;
  T.Add(10);T.Add(11);T.Add(12);T.Add(13);T.Add(14);
  SF.UpdateSQLFilterData(T);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithOneItem;
var
  T: TList<integer>;
  Actual,
  Expected: string;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10)'+#13#10;
  T := TList<integer>.create;
  T.Add(10);
  SF.UpdateSQLFilterData(T);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestSQLFilterWithTwoItems;
var
  T: TList<integer>;
  Actual,
  Expected: string;
begin
  SF.sqFilterData.SQL.Text := 'SELECT * FROM XXX WHERE PN.PositionID IN (1,2)';
  Expected := 'SELECT * FROM XXX WHERE PN.PositionID IN (10,14)'+#13#10;
  T := TList<integer>.create;
  T.Add(10);T.Add(14);
  SF.UpdateSQLFilterData(T);
  Actual := SF.sqFilterData.SQL.Text ;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestdmFilterSQL.TestWithData;
var
  T: TList<integer>;
  Actual,
  Expected: string;
begin
  Expected := '';
  T := TList<integer>.create;
  T.Add(145);T.Add(146);
  SF.UpdateSQLFilterData(T);
  Actual := '';
  Assert.AreEqual(Expected, Actual);
end;

(*
procedure TTestdmFilterSQL.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;
  *)
initialization
  TDUnitX.RegisterTestFixture(TTestdmFilterSQL);
end.
