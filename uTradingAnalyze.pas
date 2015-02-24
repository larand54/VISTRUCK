unit uTradingAnalyze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, uADStanIntf, uADStanOption, uADStanParam,
  uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync,
  uADDAptManager, DB, uADCompDataSet, uADCompClient, ActnList, dxBar,
  cxClasses, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxGridBandedTableView, cxGridDBBandedTableView, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, SqlTimSt, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink,
  cxExport, cxCalc, cxCurrencyEdit ;

type
  TfTradingAnalyze = class(TfBaseListForm)
    grdTradingAnalyzeLevel1: TcxGridLevel;
    grdTradingAnalyze: TcxGrid;
    grdTradingAnalyzeDBBandedTableView1: TcxGridDBBandedTableView;
    grdTradingAnalyzeDBBandedTableView1Lev: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Kontraktnr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Fakturanr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Fakturadatum: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Belopp_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_ProduktVrde_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_AM3: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_ProduktVrde_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_AM3: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Belopp_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Kund: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Fakturanr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Fakturadatum: TcxGridDBBandedColumn;
    deStartPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    deEndPeriod: TcxDBDateEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxLabel2: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acExportXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTradingAnalyze: TfTradingAnalyze;

implementation

uses UnitdmModule1, VidaUser , dmsVidaSystem;

{$R *.dfm}

procedure TfTradingAnalyze.acRefreshExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  sp_Vis_GenTradingAnalyze.Close ;
  sp_Vis_GenTradingAnalyze.ParamByName('@StartDate').AsSQLTimeStamp := DateTimeToSQLTimeStamp(cds_PropsStartPeriod.AsDateTime) ;
  sp_Vis_GenTradingAnalyze.ParamByName('@EndDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(cds_PropsEndPeriod.AsDateTime) ;
  sp_Vis_GenTradingAnalyze.Open ;
 End ;
end;

procedure TfTradingAnalyze.acPrintExecute(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Trading') ;

 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text
 + ' - ' + deEndPeriod.Text) ;

 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfTradingAnalyze.FormDestroy(Sender: TObject);
begin
  inherited;
 fTradingAnalyze := NIL;
end;

procedure TfTradingAnalyze.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
 cds_PropsUserID.AsInteger  := ThisUser.UserID ;
 cds_PropsForm.AsString     := Self.Name ;
end;

procedure TfTradingAnalyze.acExportXLSExecute(Sender: TObject);
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
  ExportGridToExcel(FileName, grdTradingAnalyze, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

end.
