unit uOKDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, siComp, siLngLnk;

type
  TfOKDia = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    siLangLinked_fOKDia: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
   Class function Execute(const Cap : String) : word ;
  end;

var  fOKDia: TfOKDia;

implementation

{$R *.dfm}

Class function TfOKDia.Execute (const Cap : String) : word ;
Begin
 With Self.Create(nil) do begin
  try
  Label1.Caption:= cap ;
  if ShowModal = mrYes then
   Result:= mrYes
    else
     Result:= mrNo ;

  Finally
   Free ;
  End
 End ;
End ;

end.
