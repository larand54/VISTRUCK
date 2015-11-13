unit uProductUtfall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxGridLevel,
  cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Menus, ActnList, StdCtrls, cxButtons, cxButtonEdit, cxTextEdit,
  cxDBLookupComboBox, cxCheckBox, cxSpinEdit, cxCalc, cxDropDownEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, cxDBEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions;

type
  TfProductUtfall = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    grdOutputSummary: TcxGrid;
    grdOutputSummaryDBTableView1: TcxGridDBTableView;
    grdOutputSummaryDBTableView1AM3: TcxGridDBColumn;
    grdOutputSummaryDBTableView1AM1: TcxGridDBColumn;
    grdOutputSummaryDBTableView1NM3: TcxGridDBColumn;
    grdOutputSummaryDBTableView1STYCK: TcxGridDBColumn;
    grdOutputSummaryDBTableView1Utfall: TcxGridDBColumn;
    grdOutputSummaryDBTableView1ProduktVrde: TcxGridDBColumn;
    grdOutputSummaryDBTableView1medelpris: TcxGridDBColumn;
    grdOutputSummaryDBTableView1Medelpris_1: TcxGridDBColumn;
    grdOutputSummaryDBChartView1: TcxGridDBChartView;
    grdOutputSummaryDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    grdOutputSummaryDBChartView1Series1: TcxGridDBChartSeries;
    grdOutputSummaryDBChartView1Series2: TcxGridDBChartSeries;
    grdOutputSummaryDBChartView1Series3: TcxGridDBChartSeries;
    grdOutputSummaryLevel1: TcxGridLevel;
    grdOutputSummaryLevel2: TcxGridLevel;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acRefresh: TAction;
    grdOutputSummaryDBTableView1ProductNo: TcxGridDBColumn;
    grdOutputSummaryDBTableView1SortingOrderNo: TcxGridDBColumn;
    grdOutputSummaryDBTableView1RegPointName: TcxGridDBColumn;
    grdOutputSummaryDBTableView1AT: TcxGridDBColumn;
    grdOutputSummaryDBTableView1AB: TcxGridDBColumn;
    grdOutputSummaryDBTableView1KV: TcxGridDBColumn;
    Panel5: TPanel;
    grdRawMtrl: TcxGrid;
    grdRawMtrlDBBandedTableView1: TcxGridDBBandedTableView;
    grdRawMtrlDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1LengthDescription: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1FUKTKVOT: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1MainRawMtrl: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1RawMtrlNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AntalKapSnitt: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AntalLamellerUt: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PlannedAM1: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1UrlaggsProcent: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1RealLPM: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1MCClassNo: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1AntalBitarUt: TcxGridDBBandedColumn;
    grdRawMtrlDBBandedTableView1LengthSpec: TcxGridDBBandedColumn;
    grdRawMtrlLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    acClose: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    siLangLinked_fProductUtfall: TsiLangLinked;
    procedure acRefreshExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure SetFardigMtrlSQL ;
    procedure SetRawMtrlSQL ;
  public
    { Public declarations }
    RawMtrl : Boolean ;
    ProductNo, ProducerNo : Integer ;
  end;

var
  fProductUtfall: TfProductUtfall;

implementation

uses dm_SortOrder, udmLanguage;

{$R *.dfm}

procedure TfProductUtfall.SetRawMtrlSQL ;
Begin
 With dmsSortOrder do
 Begin
  cds_ProdUtfall.SQL.Clear ;
  cds_ProdUtfall.SQL.Text := cds_ProdUtfallRaw.SQL.Text ;
 End ;
End ;

procedure TfProductUtfall.SetFardigMtrlSQL ;
Begin
 With dmsSortOrder do
 Begin
  cds_ProdUtfall.SQL.Clear ;
  cds_ProdUtfall.SQL.Text := cds_ProdUtfallFardig.SQL.Text ;
 End ;
End ;

procedure TfProductUtfall.acRefreshExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmsSortOrder do
 Begin
  if RawMtrl then
   SetRAWMtrlSQL
    else
     SetFardigMtrlSQL ;

  cds_ProdUtfall.Active := False ;
  cds_ProdUtfall.ParamByName('ProducerNo').AsInteger  := ProducerNo ;
  cds_ProdUtfall.ParamByName('ProductNo').AsInteger   := ProductNo ;
  cds_ProdUtfall.Active := True ;

  cds_SORawUtfall.Active := False ;
  cds_SORawUtfall.Active := True ;

  cds_SortOrderRes.Active := False ;
  cds_SortOrderRes.Active := True ;
 End ;
 grdOutputSummaryDBTableView1.ViewData.Expand(True);
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfProductUtfall.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfProductUtfall.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree ;
end;

procedure TfProductUtfall.FormDestroy(Sender: TObject);
begin
 fProductUtfall := nil ;
end;

end.
