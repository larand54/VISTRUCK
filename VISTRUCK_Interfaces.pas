unit VISTRUCK_Interfaces;

interface

type

// Inteface for object naming the "LoadTab" in app VISTRUCK
  ILoadTab = interface(IInvokable)
    function getTabName: string;
    property TabName: string read getTabName;
  end;

// Interface for object evaluating output from scanned LoadID
  ILoadIDEvaluator = interface(IInvokable)
    ['{D777BC40-5027-4ACE-8767-61D4D2F809B3}']
    function isNewLoadRequired(const aLoadID: string; const aLoadNo: integer): boolean;
    function getLoadNo: integer;
  end;

// Interface for object treating scanned LoadID
  ILoadIDScanning = interface(IInvokable)
    ['{389B9E12-441D-427F-AC11-6A9C122500BE}']
    function extractLoadID(const aScanned: string): string;
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

implementation

end.

