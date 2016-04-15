unit TestPositionView;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TTestPositionView = class(TObject) 
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
    procedure TestGetBaseSQL;
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation
uses
  System.Classes,
  sysutils,
  uPositionView;

procedure TTestPositionView.Setup;
begin
end;

procedure TTestPositionView.TearDown;
begin
end;

procedure TTestPositionView.Test1;
begin
end;

procedure TTestPositionView.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

procedure TTestPositionView.TestGetBaseSQL;
var
  SQL: TStringList;
  Expected: string;
  Actual: string;
  PW: TfPositionView;
begin

  SQL := TStringList.create;
  SQL.Add('SELECT Date');
  SQL.Add(',Name');
  SQL.Add(',salary');
  SQL.Add('FROM');
  SQL.Add('MyTable MT');
  SQL.Add('INNER JOIN Salary SA ON SA.ID=MT.ID');
  SQL.Add('WHERE');
  SQL.Add('MT.Name = ' + QuotedStr('Peter'));
  SQL.Add('GROUP BY');
  SQL.Add('Date, Name, Salary');
  SQL.Add('ORDER BY Name');

  Expected :=  'FROM'#13#10+
  'MyTable MT'#13#10 +
  'INNER JOIN Salary SA ON SA.ID=MT.ID'#13#10;
  try
    PW := TfPositionView.Create(nil);
  except

  end;
  Actual := PW.GetBaseSQL(SQL).Text;
  Assert.AreEqual(Expected, Actual);

end;

initialization
  TDUnitX.RegisterTestFixture(TTestPositionView);
end.
