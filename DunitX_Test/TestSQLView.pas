unit TestSQLView;

interface
uses
  DUnitX.TestFramework,
  System.Classes,
  cxCheckComboBox, uSQLView;


type

  [TestFixture]
  TTestSQLView = class(TObject)
  private
    FCombo: TcxCheckComboBox;
    FSQLViewField: TSQLViewField;
    FSQLView: TSQLView;
    FSQLBuild: TSQLBuild;

  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    // Test with TestCase Atribute to supply parameters.
    [TestCase('FileWithOnePeriod','MyFile1.pdf,MyFile1')]
    [TestCase('FileWithoutPeriod','MyFile2,MyFile2')]
    [TestCase('FileWithTwoPeriods','MyFile3.extra.pdf,MyFile3')]
    procedure TestTaBortExtension(aFileName, aExpected : string);

    [TestCase('ReplaceCommasWithDecimal_No_Commas','Hej på dig,Hej på dig')]
    [TestCase('ReplaceCommasWithDecimal_One_Commas','Hej, på dig|Hej. på dig','|')]
    [TestCase('ReplaceCommasWithDecimal_two_Commas','Hej, på, dig|Hej. på. dig','|')]
    [TestCase('ReplaceCommasWithDecimal_two_Commas_inline','Hej, på, d,,ig|Hej. på. d..ig','|')]
    procedure TestReplaceCommasWithDecimal(astring, aExpected : string);
    [Test]
    procedure TestGetWhereStatement_When_Empty;
    [Test]
    procedure TestGetWhereStatement_First_Line;
    [Test]
    procedure TestGetWhereStatement_Additional_Line;
    [Test]
    procedure TestGetAddFromComboFirst;
    [Test]
    procedure TestGetAddFromComboContinuing;
    [Test]
    procedure TestGetSQLofComboFilter(dtype: integer);
    [Test]
    procedure TestReadPropertiesSQLViewField_FieldName;
    [Test]
    procedure TestReadPropertiesSQLViewField_Group;
    [Test]
    procedure TestReadPropertiesSQLViewField_fieldSQL;
    [Test]
    procedure TestReadPropertiesSQLViewField_Visible;
  end;

implementation

uses  System.SysUtils, cxLookAndFeelPainters;



procedure TTestSQLView.Setup;
var
  items: TcxCheckComboBoxItems;
  item: TcxCheckComboBoxItem;
  cic: TCollectionItemClass;
begin
  FCombo := TcxCheckComboBox.Create(nil);
  items := FCombo.Properties.Items;
  Items.AddCheckItem('TestItem1','nr001');
  Items[0].Enabled := true;
  FCombo.States[0] := cbsChecked;
  Items.AddCheckItem('TestItem2','nr002');
  Items[1].Enabled := true;
  FCombo.States[1] := cbsChecked;
  Items.AddCheckItem('TestItem3','nr003');
  Items[2].Enabled := true;
  FCombo.States[2] := cbsChecked;
  Items.AddCheckItem('TestItem4','nr004');
  Items[3].Enabled := false;
  Items.AddCheckItem('TestItem5','nr005');
  Items[4].Enabled := true;
 // FCombo.Name := 'cboTest1';
  with FCombo do
  begin
    Properties.DropDownRows := 15;
//    Properties.Items := items;
    Properties.OnChange := nil;
    Properties.OnCloseUp := nil;
    TabOrder := 1;
  end;

end;

procedure TTestSQLView.TearDown;
begin
  if assigned(FCombo) then FreeAndNil(FCombo);
  if assigned(FSQLViewField) then FreeAndNil(FSQLViewField);
  if assigned(FSQLView) then FreeAndNil(FSQLView);
  if assigned(FSQLBuild) then FreeAndNil(FSQLBuild);
end;


procedure TTestSQLView.TestGetAddFromComboContinuing;
var
  Actual: string;
  Expected: string;
  WStr: TWhereString;
begin
  WStr := TWhereString.Create;
  WStr.addAND('SR.ID = 55',true,true);
  Expected := '(SR.ID = 55)'#13#10 + 'AND (TestItem1 IN (nr001,nr002,nr003))'#13#10;
  WStr.addFromCombo(0, 0,FCombo,'TestItem1');
  Actual := WStr.getWhereStatement.Text;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestGetAddFromComboFirst;
var
  Actual: string;
  Expected: string;
  WStr: TWhereString;
begin
  WStr := TWhereString.Create;
  Expected := '(TestItem1 IN (nr001,nr002,nr003))'#13#10;
  WStr.addFromCombo(0, 0, FCombo,'TestItem1');
  Actual := WStr.getWhereStatement.Text;
  Assert.AreEqual(Expected, Actual);
end;


procedure TTestSQLView.TestGetSQLofComboFilter(dtype: integer);
var
  Actual: string;
  Expected: string;
begin
  Expected := ' AND ( TestItem1 = '+QuotedStr('nr001')+
              ' OR  TestItem1 = '+QuotedStr('nr002')+
              ' OR  TestItem1 = '+QuotedStr('nr003')+' ) ';
  Actual := TSQLHelper.GetSQLofComboFilter(0, 'TestItem1', FCombo);
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestGetWhereStatement_When_Empty;
var
  WStr: TWhereString;
  Actual, Expected: string;
begin
  WStr := TWhereString.Create;
  Actual := WStr.getWhereStatement.Text;
  Expected := '';
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestGetWhereStatement_Additional_Line;
var
  WStr: TWhereString;
  Actual, Expected, s1, s2: string;
begin
  s1 := 'First line';
  s2 := 'Second line';
  WStr := TWhereString.Create;
  Expected := '('+s1+')' + #13#10 + ' AND ' + '('+s2+')' + #13#10;
  WStr.addAND(s1,true,true);
  WStr.addAND(s2,true,true);
  Actual := WStr.getWhereStatement.Text;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestGetWhereStatement_First_Line;
var
  WStr: TWhereString;
  Actual, Expected: string;
begin
  WStr := TWhereString.Create;
  Expected := 'Testhis 123';
  WStr.addAND(Expected,true,true);
  Expected := '('+Expected+')' + #13#10;
  Actual := WStr.getWhereStatement.Text;
  Assert.AreEqual(Expected, Actual);
end;


procedure TTestSQLView.TestReadPropertiesSQLViewField_FieldName;
var
  SQLViewField: TSQLViewField;
  Expected, Actual: string;
begin
  Expected := 'FieldName';
  SQLViewField := TSQLViewField.create(Expected,'','',false);
  Actual := SQLViewField.FieldName;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestReadPropertiesSQLViewField_fieldSQL;
var
  SQLViewField: TSQLViewField;
  Expected, Actual: string;
begin
  Expected := 'FieldSQL';
  SQLViewField := TSQLViewField.create('',Expected,'',false);
  Actual := SQLViewField.fieldSQL;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestReadPropertiesSQLViewField_Group;
var
  SQLViewField: TSQLViewField;
  Expected, Actual: string;
begin
  Expected := 'Group';
  SQLViewField := TSQLViewField.create('','',Expected,false);
  Actual := SQLViewField.group;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestReadPropertiesSQLViewField_Visible;
var
  SQLViewField: TSQLViewField;
  Expected, Actual: boolean;
begin
  Expected := true;
  SQLViewField := TSQLViewField.create('','','',Expected);
  Actual := SQLViewField.Visible;
  Assert.AreEqual(Expected, Actual);
end;

procedure TTestSQLView.TestReplaceCommasWithDecimal(astring, aExpected: string);
var
  Actual: string;
begin
  Actual := TSQLHelper.ReplaceCommasWithDecimal(aString);
  Assert.AreEqual(aExpected, Actual);
end;

procedure TTestSQLView.TestTaBortExtension(aFileName, aExpected : string);
var
  Actual: string;
begin
  Actual := TSQLHelper.TaBortExtension(aFilename);
  Assert.AreEqual(aExpected, Actual);
end;


initialization
  TDUnitX.RegisterTestFixture(TTestSQLView);
end.
