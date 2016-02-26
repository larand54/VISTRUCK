unit uDlgReferensAndInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  Vcl.Touch.Keyboard, cxButtons;

type
  TdlgChgRef_and_Info = class(TForm)
    edReference: TEdit;
    edInfo1: TEdit;
    edInfo2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxButton1: TcxButton;
    TouchKeyboard1: TTouchKeyboard;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Class function Execute(var aReference, aInfo1, aInfo2: string): word;
  end;

var
  dlgChgRef_and_Info: TdlgChgRef_and_Info;

implementation

{$R *.dfm}

{ TForm1 }

procedure TdlgChgRef_and_Info.cxButton1Click(Sender: TObject);
begin
  if not TouchKeyboard1.Visible then
  begin
    TouchKeyboard1.visible := True;
    Height := 448;
    end
   else
   begin
    TouchKeyboard1.visible := False;
    Height := 246;
   end;
   edReference.SetFocus;
end;

class function TdlgChgRef_and_Info.Execute(var aReference, aInfo1, aInfo2: string): word;
begin
  with self.Create(nil) do
  begin
    try
      edReference.Text := aReference;
      edInfo1.Text := aInfo1;
      edInfo2.Text := aInfo2;
      Height := 246;
      TouchKeyboard1.Visible := false;
      if showModal = mrOk then
      begin
        aReference := edReference.Text;
        aInfo1 := edInfo1.Text;
        aInfo2 := edInfo2.Text;
        result := mrOk
      end
      else
        Result := mrCancel;
    finally
      free;
    end;
  end;
end;

end.
