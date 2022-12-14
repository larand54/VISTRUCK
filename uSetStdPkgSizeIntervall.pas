unit uSetStdPkgSizeIntervall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ActnList, dxBar,
  cxClasses, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxLabel,
  cxCalc, cxContainer, cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, cxNavigator,
  siComp, siLngLnk, System.Actions;

type
  TfSetStdPkgSizeIntervall = class(TfBaseListForm)
    grdPkgStdPcsDBTableView1: TcxGridDBTableView;
    grdPkgStdPcsLevel1: TcxGridLevel;
    grdPkgStdPcs: TcxGrid;
    Panel6: TPanel;
    cds_PkgStdPcs: TFDQuery;
    ds_PkgStdPcs: TDataSource;
    cds_PkgStdPcsClientno: TIntegerField;
    cds_PkgStdPcsProductNo: TIntegerField;
    cds_PkgStdPcsALMM: TFloatField;
    cds_PkgStdPcsNoOfPcsFullPkg: TIntegerField;
    cds_PkgStdPcsNoOfPcsOver: TIntegerField;
    cds_PkgStdPcsNoOfPcsUnder: TIntegerField;
    cds_PkgStdPcsProdukt: TStringField;
    grdPkgStdPcsDBTableView1Clientno: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1ProductNo: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1ALMM: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1NoOfPcsFullPkg: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1NoOfPcsOver: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1NoOfPcsUnder: TcxGridDBColumn;
    grdPkgStdPcsDBTableView1Produkt: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxLabel1: TcxLabel;
    procedure acRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSetStdPkgSizeIntervall: TfSetStdPkgSizeIntervall;

implementation

uses dmsDataConn, VidaUser ;

{$R *.dfm}

procedure TfSetStdPkgSizeIntervall.acRefreshExecute(Sender: TObject);
begin
  inherited;
 cds_PkgStdPcs.Active := False ;
 cds_PkgStdPcs.ParamByName('ClientNo').AsInteger  := ThisUser.CompanyNo ; 
 cds_PkgStdPcs.Active := True ; 
end;

end.
