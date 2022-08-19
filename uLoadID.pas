unit uLoadID;
//
// Use like---
// var
//   tabname: string;
// begin
//   tabname := TLoadIDTab.Create(LONo, LoadNo, LoadID).tabName;
// Or..
//  tabname := TLoadStandardTab.Create(LONo, LoadNo).tabName;
// end;
//
// New LoadID scanned
// PkgNo.text =     https://id-v1.vida.se/8004/73400119217433520459;
// S := PkgNo.Text;
// IX := Pos(companyPrefix;
// IX := IX + length(CompanyPrefix);
// Len := Length(S) - IX;
// LoadID := copy(S,IX,len)
interface

type

  ILoadTab = interface(IInvokable)
    function getTabName: string;
    property TabName: string read getTabName;
  end;

  TLoadTab = class(TInterfacedObject, ILoadTab)
  private
    fTabName: string;
    function getTabName: string;
  end;

  TStandardLoadTab = class(TLoadTab)
  private
    fTabName: string;
  public
    constructor create(const aLONo, aLoadNo: integer; const aDelimiter: char = '/' );
  end;

  TLoadIDTab = class(TLoadTab)
  private
    fTabName: string;
  public
    constructor create(const aLONo, aLoadNo, aLoadID : integer; const aDelimiter: char = '/' );
  end;

implementation
uses
  system.SysUtils
;
{ TStandardLoadTab }

constructor TStandardLoadTab.create(const aLONo, aLoadNo: integer;
  const aDelimiter: char);
begin
  fTabName := format('%d%s%d', [aLoadNo, aDelimiter, aLoadNo])
  copy(Pos(
end;


{ TLoadIDTab }

constructor TLoadIDTab.create(const aLONo, aLoadNo, aLoadID: integer;
  const aDelimiter: char);
begin
  fTabName := format('%d%s%d%s%d', [aLoadNo, aDelimiter, aLoadID])
end;


{ TLoadTab }

function TLoadTab.getTabName: string;
begin
  result := fTabName
end;

end.
