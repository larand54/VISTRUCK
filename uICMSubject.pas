unit uICMSubject;

interface
uses uICMObserver;
type
  ICMSubject = interface(IInvokable)  ['{B3EBBA4F-129E-4D55-8691-7677C171E925}']
     procedure Attach(Observer: ICMObserver);
     procedure Detach(Observer: ICMObserver);
     procedure Notify;
  end;

implementation

end.
