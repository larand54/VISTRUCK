unit uPkgInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxDBLabel, cxLabel, ExtCtrls,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
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
  cxNavigator, siComp, siLngLnk, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfPkgInfo = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    grdPkgInfoDBTableView1: TcxGridDBTableView;
    grdPkgInfoLevel1: TcxGridLevel;
    grdPkgInfo: TcxGrid;
    grdPkgInfoDBTableView1PaketNr: TcxGridDBColumn;
    grdPkgInfoDBTableView1Prefix: TcxGridDBColumn;
    grdPkgInfoDBTableView1Produkt: TcxGridDBColumn;
    grdPkgInfoDBTableView1Lngd: TcxGridDBColumn;
    grdPkgInfoDBTableView1FinnsILager: TcxGridDBColumn;
    grdPkgInfoDBTableView1RttLager: TcxGridDBColumn;
    grdPkgInfoDBTableView1Rttgare: TcxGridDBColumn;
    grdPkgInfoDBTableView1gare: TcxGridDBColumn;
    grdPkgInfoDBTableView1Lagerstatus: TcxGridDBColumn;
    grdPkgInfoDBTableView1RttDimension: TcxGridDBColumn;
    grdPkgInfoDBTableView1Avregistrerat: TcxGridDBColumn;
    grdPkgInfoDBTableView1ProductNo: TcxGridDBColumn;
    grdPkgInfoDBTableView1LIPNo: TcxGridDBColumn;
    grdPkgInfoDBTableView1ProducerNo: TcxGridDBColumn;
    grdPkgInfoDBTableView1OwnerNo: TcxGridDBColumn;
    grdPkgInfoDBTableView1PIPNo: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    PanelTextInfo: TPanel;
    siLangLinked_fPkgInfo: TsiLangLinked;
    procedure grdPkgInfoDBTableView1RttDimensionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgInfoDBTableView1RttLagerStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgInfoDBTableView1RttgareStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgInfoDBTableView1AvregistreratStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgInfoDBTableView1LagerstatusStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fPkgInfo: TfPkgInfo;

implementation

uses dms_Vis_Vida, udmLanguage;

{$R *.dfm}

procedure TfPkgInfo.grdPkgInfoDBTableView1RttDimensionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('RättDimension') ;

// if ARecord.Values[AColumn.Index] <= 0 then
 if Pos('NEJ', ARecord.Values[AColumn.Index]) > 0 then
  AStyle:= cxStyleRed ;
end;

procedure TfPkgInfo.grdPkgInfoDBTableView1RttLagerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('RättLager') ;

// if ARecord.Values[AColumn.Index] <= 0 then
 if Pos('NEJ', ARecord.Values[AColumn.Index]) > 0 then
  AStyle:= cxStyleRed ;
end;
procedure TfPkgInfo.grdPkgInfoDBTableView1RttgareStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('RättÄgare') ;

// if ARecord.Values[AColumn.Index] <= 0 then
 if Pos('NEJ', ARecord.Values[AColumn.Index]) > 0 then
  AStyle:= cxStyleRed ;
end;

procedure TfPkgInfo.grdPkgInfoDBTableView1AvregistreratStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Avregistrerat') ;

// if ARecord.Values[AColumn.Index] <= 0 then
 if Pos('JA', ARecord.Values[AColumn.Index]) > 0 then
  AStyle:= cxStyleRed ;
end;


procedure TfPkgInfo.grdPkgInfoDBTableView1LagerstatusStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
 AColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Lagerstatus') ;

// if ARecord.Values[AColumn.Index] <= 0 then
 if Pos('Avaktiverat', ARecord.Values[AColumn.Index]) > 0 then
  AStyle:= cxStyleRed ;
end;

end.
