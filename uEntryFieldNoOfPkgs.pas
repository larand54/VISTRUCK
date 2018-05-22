unit uEntryFieldNoOfPkgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit, cxGridDBTableView, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfEntryFieldNoOfPkgs = class(TForm)
    bbok: TBitBtn;
    bbcancel: TBitBtn;
    LTitle: TLabel;
    seAntalPaket: TcxSpinEdit;
    LExtraInfo: TcxLabel;
    siLangLinked_fEntryFieldNoOfPkgs: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
  private
    function getValue: integer;
    { Private declarations }
  public
    { Public declarations }
    procedure setExtraInfo(const aInfo: string);
    procedure setTitle(const aTitle: string);
    property Count: integer read getValue;
  end;

//var  fEntryField: TfEntryField;

implementation


{$R *.dfm}

procedure TfEntryFieldNoOfPkgs.FormCreate(Sender: TObject);
begin
  LExtraInfo.Caption := '';
end;

function TfEntryFieldNoOfPkgs.getValue: integer;
begin
  result := seAntalPaket.Value;
end;

procedure TfEntryFieldNoOfPkgs.setExtraInfo(const aInfo: string);
begin
  LExtraInfo.Caption := aInfo;
end;

procedure TfEntryFieldNoOfPkgs.setTitle(const aTitle: string);
begin
 LTitle.Caption := aTitle;
end;

end.
