unit udlgEnterDeliveredWeight;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TdlgEnterDeliveredWeight = class(TForm)
    medtWeight: TMaskEdit;
    lblWeight: TLabel;
    lblLoad: TLabel;
    lblReference: TLabel;
    lblLoadText: TLabel;
    lblReferenceText: TLabel;
    bbtnOK: TBitBtn;
    bbtnCancel: TBitBtn;
    lblProductText: TLabel;
    lblProduct: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Execute(const aLoadNo: Integer; const aProduct, aReference: string; var aWeight: integer): TModalResult;
  end;

var
  dlgEnterDeliveredWeight: TdlgEnterDeliveredWeight;

implementation

{$R *.dfm}

{ TForm1 }

function TdlgEnterDeliveredWeight.execute(const aLoadNo: Integer; const aProduct, aReference: string; var aWeight: integer): TModalResult;
begin
  lblLoad.Caption := IntToStr(aLoadNo);
  lblReference.Caption := aReference;
  lblProduct.Caption := aProduct;
  medtWeight.Text := '00000';
  Result := ShowModal;
  aWeight := StrToInt(medtWeight.Text);
end;

end.
