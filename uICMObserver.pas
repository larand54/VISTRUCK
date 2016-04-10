unit uICMObserver;

interface
type
  ICMObserver = interface(IInvokable)['{80587A52-CFBC-41C3-ACCD-D16C9E3B5A25}']
    procedure Update(subject: IInterface);
  end;

implementation

end.
