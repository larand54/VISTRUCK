unit uSelectSortingOrderNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxLabel, cxContainer, cxTextEdit, cxMaskEdit, StdCtrls, Buttons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  siComp, siLngLnk, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfSelectSortingOrderNo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    SpeedButton1: TSpeedButton;
    meRunNo: TEdit;
    SpeedButton2: TSpeedButton;
    siLangLinked_fSelectSortingOrderNo: TsiLangLinked;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    TempEditString  : String ;
  public
    { Public declarations }
  end;

//var fSelectSortingOrderNo: TfSelectSortingOrderNo;

implementation



{$R *.dfm}

uses udmLanguage;

procedure TfSelectSortingOrderNo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (Length(meRunNo.Text) > 0) then
  Begin
    ModalResult := mrOK ;
{
     Try
      if Copy(meRunNo.Text,1,2) = 'KO' then
      Open_SortingOrder
      else
      if Copy(meRunNo.Text,1,2) = 'HF' then
      acAddHFLPackageExecute(Sender)
      else
      if Copy(meRunNo.Text,1,2) = 'SU' then
      acPrintExecute(Sender)
      else
      if dm_Vis_Vida.cds_MainParamsMode.AsInteger = 1 then
      AvRegOnlyPkgNo(Sender, meRunNo.Text)
      else
      ScanningPkgNo(Sender, meRunNo.Text) ;

      meRunNo.Text:= '' ;
     Except
      meRunNo.Text:= '' ;
     End ;
}
  End//if (Key = #13) and (Length(meRunNo.Text) > 0) then
  else
  if (Key = #8) and (Length(meRunNo.Text) > 0) then
  Begin
   Try
    if Length(TempEditString) > 1 then
    TempEditString  := Copy(TempEditString, 1, Length(TempEditString) - 1)
    else
    TempEditString  := '' ;
    meRunNo.Text  := TempEditString ;
   Except
//    meRunNo.Text:= '' ;
   End ;
  End//if (Key = #13) and (Length(meRunNo.Text) > 0) then

  else
   Begin
//    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
     if key in ['k', 'K', 'O', 'o','0','1','2','3','4','5','6','7','8','9'] then
      meRunNo.Text:= meRunNo.Text + Key ;
   End ;
//  End ;//if sender


 TempEditString := meRunNo.Text ;
//  else
//  ShowMessage('upptagen...') ;

{
    if (Key = #13) and (Length(meRunNo.Text) > 0) then
    Begin
    ModalResult := mrOK ;
    End
    else
     Begin
       if key in ['S','0','1','2','3','4','5','6','7','8','9'] then
        meRunNo.Text:= meRunNo.Text + Key ;
     End ;
}
end;

procedure TfSelectSortingOrderNo.SpeedButton1Click(Sender: TObject);
begin
 Modalresult  := mrOK ;
end;

procedure TfSelectSortingOrderNo.SpeedButton2Click(Sender: TObject);
begin
 Modalresult  := mrCancel ;
end;

end.
