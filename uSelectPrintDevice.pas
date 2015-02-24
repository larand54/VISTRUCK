unit uSelectPrintDevice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit;

type
  TfSelectPrintDevice = class(TForm)
    bSkrivare: TcxButton;
    bBildskarm: TcxButton;
    bAngra: TcxButton;
    seNoOfCopies: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    procedure bSkrivareClick(Sender: TObject);
    procedure bBildskarmClick(Sender: TObject);
    procedure bAngraClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
   Val : Integer ;
   Class function Execute : word ;
  end;

var
  fSelectPrintDevice: TfSelectPrintDevice;

implementation

uses dmcVidaOrder;

{$R *.dfm}

Class function TfSelectPrintDevice.Execute : word ;
Begin
 With Self.Create(nil) do begin
  try

  ShowModal ;
  Result  := val ;

  Finally
   Free ;
  End
 End ;
End ;

procedure TfSelectPrintDevice.bSkrivareClick(Sender: TObject);
begin
 Val := 1 ;
 Close ;
end;

procedure TfSelectPrintDevice.bBildskarmClick(Sender: TObject);
begin
 Val := 2 ;
 Close ;
end;

procedure TfSelectPrintDevice.bAngraClick(Sender: TObject);
begin
 Val := 0 ;
 Close ;
end;

procedure TfSelectPrintDevice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmcOrder.SaveUserProps ;
end;

end.
 