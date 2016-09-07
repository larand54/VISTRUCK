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
    [Test]
    procedure TestTCMComboBoxItemsAddDesc;
    [Test]
    procedure TestTCMComboBoxItemsAddDesc_and_ShortDesc;
    [Test]
    procedure TestTCMComboBoxItemsAddDesc_and_ShortDesc_and_IdNo;

    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation
uses
  System.Classes,
  sysutils,
  System.Generics.Collections,
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

procedure TTestPositionView.TestTCMComboBoxItemsAddDesc;
var
  cbis: TCMComboBoxItems;
  cbi:  TCMComboBoxItem;
  Expected, Actual: string;
  sl: TStringList;
  i: integer;
begin
  sl := TStringList.Create;
  sl.Add('ABC'); sl.Add('123');
  Expected := sl[0]+sl[1];
  cbis := TCMComboBoxItems.Create;
  cbis.Add(sl[0]); cbis.add(sl[1]);
  Actual := '';
  for i := 0 to cbis.itm.Count-1 do
    Actual := Actual + cbis.itm[i].Description;
  Assert.AreEqual(Actual, Expected);
  freeAndNil(sl);
  freeAndNil(cbis);
end;

procedure TTestPositionView.TestTCMComboBoxItemsAddDesc_and_ShortDesc;
var
  cbis: TCMComboBoxItems;
  cbi:  TCMComboBoxItem;
  Expected, Actual: string;
  sl: TStringList;
  i: integer;
begin
  sl := TStringList.Create;
  sl.Add('ABC'); sl.Add('123'); sl.Add('Short0'); sl.Add('Short1');
  Expected := sl[0]+sl[2]+sl[1]+sl[3];
  cbis := TCMComboBoxItems.Create;
  cbis.Add(sl[0],sl[2]); cbis.add(sl[1],sl[3]);
  Actual := '';
  for i := 0 to cbis.itm.Count-1 do
    Actual := Actual + cbis.itm[i].Description + cbis.itm[i].ShortDescription;
  Assert.AreEqual(Actual, Expected);
end;

procedure TTestPositionView.TestTCMComboBoxItemsAddDesc_and_ShortDesc_and_IdNo;
var
  cbis: TCMComboBoxItems;
  cbi:  TCMComboBoxItem;
  Expected, Actual: string;
  sl: TStringList;
  il: TList<integer>;
  i: integer;
begin
  sl := TStringList.Create;
  il := TList<integer>.Create;
  il.Add(34); il.Add(712);
  sl.Add('ABC'); sl.Add('123'); sl.Add('Short0'); sl.Add('Short1');
  Expected := sl[0]+sl[2]+intToStr(il[0])+sl[1]+sl[3]+intToStr(il[1]);
  cbis := TCMComboBoxItems.Create;
  cbis.Add(sl[0],sl[2], il[0]); cbis.add(sl[1],sl[3], il[1]);
  Actual := '';
  for i := 0 to cbis.itm.Count-1 do
    Actual := Actual + cbis.itm[i].Description + cbis.itm[i].ShortDescription+intToStr(cbis.itm[i].idNo);
  Assert.AreEqual(Actual, Expected);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestPositionView);
end.
