unit UnitExceptionPkgNrList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TPkgNrExceptionList = class(TForm)
    ExceptionPanel: TPanel;
    lbExceptionPkgNr: TListBox;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acClose: TAction;
    procedure AddPkgNrExcepionList(PkgNr: String);
    procedure acCloseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PkgNrExceptionList: TPkgNrExceptionList;

implementation

{$R *.dfm}

procedure TPkgNrExceptionList.acCloseExecute(Sender: TObject);
begin
   lbExceptionPkgNr.Items.Clear;
   PkgNrExceptionList.Close;
end;

procedure TPkgNrExceptionList.AddPkgNrExcepionList(PkgNr: String);
begin
 lbExceptionPkgNr.Items.Add(PkgNr);
end;

end.

