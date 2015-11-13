unit uProdTimeSegment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, StdCtrls, Buttons, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfProdTimeSegment = class(TForm)
    Panel1: TPanel;
    grdProdTimeSegmentDBTableView1: TcxGridDBTableView;
    grdProdTimeSegmentLevel1: TcxGridLevel;
    grdProdTimeSegment: TcxGrid;
    grdProdTimeSegmentDBTableView1SortingOrderNo: TcxGridDBColumn;
    grdProdTimeSegmentDBTableView1SegmentNo: TcxGridDBColumn;
    grdProdTimeSegmentDBTableView1StartSegment: TcxGridDBColumn;
    grdProdTimeSegmentDBTableView1EndSegment: TcxGridDBColumn;
    grdProdTimeSegmentDBTableView1ProductionTime: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    grdProdTimeSegmentDBTableView1PrevSortingOrderNo: TcxGridDBColumn;
    siLangLinked_fProdTimeSegment: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fProdTimeSegment: TfProdTimeSegment;

implementation

uses dm_SortOrder, udmLanguage;

{$R *.dfm}

end.
