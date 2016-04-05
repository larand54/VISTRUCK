unit uISQLHelper;

interface
uses
  cxCheckComboBox;
type
  ISQLHelper = Interface(IInvokable)['{072EEE69-0FDB-480F-A70C-4B1AA9DBB6AD}']
    function GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    function ReplaceCommasWithDecimal(S: string): string;
    function TaBortExtension(s: string): string;
  End;

implementation

end.
