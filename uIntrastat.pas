unit uIntrastat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, dxBar, ExtCtrls,
  cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxContainer, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, SqlTimSt, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,   cxGridExportLink,
  cxExport, cxCalc, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls ;

type
  TfIntrastat = class(TfBaseListForm)
    grdIntrastatDBTableView1: TcxGridDBTableView;
    grdIntrastatLevel1: TcxGridLevel;
    grdIntrastat: TcxGrid;
    grdIntrastatDBTableView1LandKod: TcxGridDBColumn;
    grdIntrastatDBTableView1Transaktionstyp: TcxGridDBColumn;
    grdIntrastatDBTableView1Varukod: TcxGridDBColumn;
    grdIntrastatDBTableView1kvantitet: TcxGridDBColumn;
    grdIntrastatDBTableView1Nettovikt: TcxGridDBColumn;
    grdIntrastatDBTableView1Fakturavarde_sek: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxLabel2: TcxLabel;
    Label4: TLabel;
    lcSR: TcxDBLookupComboBox;
    procedure acRefreshExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExportXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIntrastat: TfIntrastat;

implementation

uses UnitdmModule1, VidaUser , dmsVidaSystem;

{$R *.dfm}

procedure TfIntrastat.acRefreshExecute(Sender: TObject);
begin
  inherited;
 With dmModule1 do
 Begin
  sp_Vis_Intra_Stat_Exp.Close ;
  sp_Vis_Intra_Stat_Exp.ParamByName('@FromDate').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(cds_PropsStartPeriod.AsDateTime) ;
  sp_Vis_Intra_Stat_Exp.ParamByName('@ToDate').AsSQLTimeStamp     := DateTimeToSQLTimeStamp(cds_PropsEndPeriod.AsDateTime) ;
  sp_Vis_Intra_Stat_Exp.Open ;
 End ;
end;

procedure TfIntrastat.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
 cds_PropsUserID.AsInteger  := ThisUser.UserID ;
 cds_PropsForm.AsString     := Self.Name ;
end;

procedure TfIntrastat.FormDestroy(Sender: TObject);
begin
  inherited;
 fIntrastat := NIL;
end;

procedure TfIntrastat.acPrintExecute(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Intrastat - ' + lcSR.Text) ;
 dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Period: ' + deStartPeriod.Text
 + ' - ' + deEndPeriod.Text) ;
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfIntrastat.acExportXLSExecute(Sender: TObject);
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
  ExportGridToExcel(FileName, grdIntrastat, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;


end.
