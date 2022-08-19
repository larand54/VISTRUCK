unit uHandle_LoadID_Input;

interface

uses
  System.Classes, VISTRUCK_Interfaces
  , synTests
  ;

type
  TLoadTab = class(TInterfacedObject, ILoadTab)
  private
    fTabName: string;
    function getTabName: string;
  end;

  TStandardLoadTab = class(TLoadTab)
  public
    constructor create(const aLONo, aLoadNo: integer; const aDelimiter: char = '/');
  end;

  TLoadIDTab = class(TLoadTab)
  public
    class procedure RegressionTests(aTest: TSynTestCase);
    constructor create(const aLONo, aLoadNo: integer; aLoadID: string; const
      aDelimiter: char = '/');
  end;


  THandleLoadIDScanning = class(TInterfacedObject, ILoadIDScanning)
  private
    fLONo: integer;
    fLoadNo: integer;
    fLoadID: string;
    function extractLoadID(const aScanned: string): string;
  public
    class procedure RegressionTests(aTest: TSynTestCase);
    constructor create(const aLONo, aLoadNo: integer);
    function setCurrentLO(const aLONo: integer): boolean;
    function setLoadNo(const aLoadNo: integer): boolean;
    function handleInput(const aScannedString: string; const aLoadIDEvaluator:
      ILoadIDEvaluator): boolean;
    function getLONo: integer;
    function getLoadNo: integer;
    function getLoadID: string;
    property CurrentLONo: integer read getLONo;
    property LoadNo: integer read getLoadNo;
    property LoadID: string read getLoadID;
  end;

// For tests
  TStubLoadIDEvaluatorNewLoad = class(TInterfacedObject, ILoadIDEvaluator)
  public
    function isNewLoadRequired(const aLoadID: string; const aLoadNo: integer): boolean;
    function getLoadNo: integer;
  end;

  TStubLoadIDEvaluatorOldLoad = class(TInterfacedObject, ILoadIDEvaluator)
  private
    fLoadNo:integer;
  public
    function isNewLoadRequired(const aLoadID: string; const aLoadNo: integer): boolean;
    function getLoadNo: integer;
  end;

  TStubLoadIDEvaluatorAnotherLoad = class(TInterfacedObject, ILoadIDEvaluator)
  private
    fLoadNo:integer;
  public
    function isNewLoadRequired(const aLoadID: string; const aLoadNo: integer): boolean;
    function getLoadNo: integer;
  end;

implementation

uses
  system.SysUtils, VIDAConst;

  { TStandardLoadTab }

constructor TStandardLoadTab.create(const aLONo, aLoadNo: integer; const
  aDelimiter: char);
begin
  fTabName := format('%d%s%d', [aLoadNo, aDelimiter, aLoadNo])
end;


  { TLoadIDTab }

constructor TLoadIDTab.create(const aLONo, aLoadNo: integer; aLoadID: string;
  const aDelimiter: char);
begin
  fTabName := format('%d%s%d%s%s', [aLONo, aDelimiter, aLoadNo, aDelimiter, aLoadID])
end;


class procedure TLoadIDTab.RegressionTests(aTest: TSynTestCase);
const
  cLOADID = '4565894900';
  cLONO = 123456;
  CLOADNO = 222333;
  cLOADIDTAB = '123456/222333/4565894900';
var
  s: string;
  lt: ILoadTab;
begin
  with aTest do
  begin
    lt := TLoadIDTab.create(cLONO, cLOADNO, cLOADID);
    s := lt.TabName;
    check(cLOADIDTAB = s, 'Creation of LoadTab for LoadID is wrong');
    check(cLOADIDTAB = TLoadIDTab.create(cLONO, cLOADNO, cLOADID).getTabName, 'Creation of LoadTab for LoadID is wrong');  // <<--gives memoryleak!!
  end;
end;

{ TLoadTab }

function TLoadTab.getTabName: string;
begin
  result := fTabName
end;


{ THandleLoadIDScanning }

constructor THandleLoadIDScanning.create(const aLONo, aLoadNo: integer);
begin
  fLONo := aLONo;
  fLoadNo := aLoadNo;
end;

function THandleLoadIDScanning.extractLoadID(const aScanned: string): string;
var
  S: string;
  IX, len: integer;
  ExistIngLoadNo: integer;
begin
  S := aScanned;
  IX := Pos(companyPrefix, S);
  IX := IX + length(CompanyPrefix);
  len := Length(S) - IX + 1;
  result := copy(S, IX, len);
end;

function THandleLoadIDScanning.getLoadID: string;
begin
  result := fLoadID;
end;

function THandleLoadIDScanning.getLoadNo: integer;
begin
  result := fLoadNo;
end;

function THandleLoadIDScanning.getLONo: integer;
begin
  result := fLONo;
end;

function THandleLoadIDScanning.handleInput(const aScannedString: string; const
  aLoadIDEvaluator: ILoadIDEvaluator): boolean;
var
  ExistIngLoadNo: integer;
begin
  fLoadID := extractLoadID(aScannedString);
  result := aLoadIDEvaluator.isNewLoadRequired(loadID, loadNo);
  if not result then
  begin
    ExistingLoadNo := aLoadIDEvaluator.getLoadNo;
    if ExistingLoadNo <> fLoadNo then
      fLoadNo := ExistingLoadNo;
  end;
end;


function THandleLoadIDScanning.setCurrentLO(const aLONo: integer): boolean;
begin
  fLONo := aLONo;
end;

function THandleLoadIDScanning.setLoadNo(const aLoadNo: integer): boolean;
begin
  fLoadNo := aLoadNo;
end;

class procedure THandleLoadIDScanning.RegressionTests(aTest: TSynTestCase);
const
  strWithLoadID = 'https://id-v1.vida.se/8004/73400119217433520459';
  strNotLoadID = '222333';
  loadID = '217433520459';
  LONo = 19467;
  LoadNo = 222333;
var
  hdlIDS: ILoadIDScanning;
  evalNewLoad: ILoadIDEvaluator;
  evalOldLoad: ILoadIDEvaluator;
  evalAnotherLoad: ILoadIDEvaluator;
begin
  with aTest do
  begin
    hdlIDS := THandleLoadIDScanning.create(LONo, LoadNo);
    Check( loadID = hdlIDS.extractLoadID(strWithLoadID), 'Extracted LoadID is wrong');
    Check( loadNo = hdlIDS.loadNo, 'LoadNo is wrong');
    Check( LONo = hdlIDS.CurrentLONo, 'CurrentLONo is wrong');

    Check( '' = hdlIDS.extractLoadID(strNotLoadID), 'LoadID should be empty on wrong scan!');

    evalNewLoad := TStubLoadIDEvaluatorNewLoad.create;
    Check(hdlIDS.handleInput(strWithLoadID, evalNewLoad),'Should be true as Load does not exist');

    evalOldLoad := TStubLoadIDEvaluatorOldLoad.create;
    CheckNot(hdlIDS.handleInput(strWithLoadID, evalOldLoad), 'Should be false as Preliminary Load exist for this LoadID');
    Check(hdlIDS.LoadNo = evalOldLoad.getLoadNo, 'Should be the same LoadNo as current');

    evalAnotherLoad := TStubLoadIDEvaluatorAnotherLoad.create;
    hdlIDS.handleInput(strWithLoadID, evalAnotherLoad);
    CheckNot(hdlIDS.handleInput(strWithLoadID, evalAnotherLoad), 'Should be false as Preliminary Load exist for this LoadID');
    CheckNOT((hdlIDS.LoadNo = evalOldLoad.getLoadNo) and (evalOldLoad.getLoadNo > 0), 'Should be the same LoadNo as current');

  end;
end;

{ TStubLoadIDEvaluatorNewLoad }

function TStubLoadIDEvaluatorNewLoad.getLoadNo: integer;
begin
  result := -1;
end;

function TStubLoadIDEvaluatorNewLoad.isNewLoadRequired(const aLoadID: string;
  const aLoadNo: integer): boolean;
begin
  result := true;
end;

{ TStubLoadIDEvaluatorOldLoad }

function TStubLoadIDEvaluatorOldLoad.getLoadNo: integer;
begin
   result := fLoadNo;
end;

function TStubLoadIDEvaluatorOldLoad.isNewLoadRequired(const aLoadID: string;
  const aLoadNo: integer): boolean;
begin
  result := false;
  fLoadNo := aLoadNo;
end;

{ TStubLoadIDEvaluatorAnotherLoad }

function TStubLoadIDEvaluatorAnotherLoad.getLoadNo: integer;
begin
  result := fLoadNo;
end;

function TStubLoadIDEvaluatorAnotherLoad.isNewLoadRequired(const aLoadID: string;
  const aLoadNo: integer): boolean;
begin
  fLoadNo := aLoadNo+1; // Change LoadNo
  result := false;
end;

end.

