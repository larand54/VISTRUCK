unit uLagerPos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk;

type
  TfLagerPos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdLagerPosDBTableView1: TcxGridDBTableView;
    grdLagerPosLevel1: TcxGridLevel;
    grdLagerPos: TcxGrid;
    ds_LagerPos: TDataSource;
    grdLagerPosDBTableView1ID: TcxGridDBColumn;
    grdLagerPosDBTableView1LagerPositionText: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    siLangLinked_fLagerPos: TsiLangLinked;
    grdLagerPosDBTableView1PIPNo: TcxGridDBColumn;
    grdLagerPosDBTableView1CreatedUser: TcxGridDBColumn;
    grdLagerPosDBTableView1DateCreated: TcxGridDBColumn;
    grdLagerPosDBTableView1PosStatus: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fLagerPos: TfLagerPos;

implementation

{$R *.dfm}

uses dmc_ArrivingLoads, dmsVidaSystem;

end.
