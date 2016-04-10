unit uISubject;

interface
uses uIObserver;
type
  ISubject = interface(IInvokable)  ['{B3EBBA4F-129E-4D55-8691-7677C171E925}']
     procedure Attach(Observer: IObserver);
     procedure Detach(Observer: IObserver);
     procedure Notify;
  end;

implementation

end.
