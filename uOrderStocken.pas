unit uOrderStocken;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ActnList, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient, cxContainer,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink,
  cxExport, cxCalc, cxCurrencyEdit ;

type
  TfOrderStocken = class(TfBaseListForm)
    grdOrderStockDBTableView1: TcxGridDBTableView;
    grdOrderStockLevel1: TcxGridLevel;
    grdOrderStock: TcxGrid;
    grdOrderStockDBBandedTableView1: TcxGridDBBandedTableView;
    grdOrderStockDBBandedTableView1Lev_Land: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1Valuta: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1LevNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockNM3int: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1LevNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockNM3ext: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockValuta: TcxGridDBBandedColumn;
    grdOrderStockDBBandedTableView1OrderstockSEK: TcxGridDBBandedColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    grdOrderStockDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarLargeButton5: TdxBarLargeButton;
    acGenerateOrderstock: TAction;
    procedure acRefreshExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acGenerateOrderstockExecute(Sender: TObject);
    procedure acExportXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var  fOrderStocken: TfOrderStocken;

implementation

uses UnitdmModule1, VidaUser , dmsVidaSystem;

{$R *.dfm}

procedure TfOrderStocken.acRefreshExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  sq_Orderstock.Active  := False ;
  sq_Orderstock.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  sq_Orderstock.Active  := True ;
 End ;
end;

procedure TfOrderStocken.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action := caFree ;
end;

procedure TfOrderStocken.acPrintExecute(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Orderstock') ;

 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfOrderStocken.FormDestroy(Sender: TObject);
begin
  inherited;
 fOrderStocken := NIL;
end;

procedure TfOrderStocken.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
 cds_PropsUserID.AsInteger  := ThisUser.UserID ;
 cds_PropsForm.AsString     := Self.Name ;
end;

procedure TfOrderStocken.acGenerateOrderstockExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  sp_vis_GenOSRunAll.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
  sp_vis_GenOSRunAll.ExecProc ;
 End ;
end;

procedure TfOrderStocken.acExportXLSExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  ExcelDir,
  FileName    : String ;
begin
  inherited;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 ExcelDir       := dmsSystem.Get_Dir('ExcelDir') ;
 Try
 SaveDialog1.Filter     := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt := 'xls';
 SaveDialog1.InitialDir := ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
  ExportGridToExcel(FileName, grdOrderStock, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

end.
