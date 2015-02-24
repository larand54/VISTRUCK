unit UnitKP_List;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxCntner, dxTL, dxDBCtrl, StdCtrls, Menus, dxExEdtr,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGraphics, FMTBcd, DB, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGridExportLink, uADStanIntf,
  uADStanOption, uADStanParam, uADStanError, uADDatSManager, uADPhysIntf,
  uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient,
  cxLookAndFeelPainters, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, dxBar, cxLabel, cxImageComboBox,
  cxLookAndFeels ;

type
  TfrmKP_List = class(TfrmDBForm)
    acCustomizegrdKP_List: TAction;
    pmgrdKP_List: TPopupMenu;
    CustomizeLayout1: TMenuItem;
    acRefresh: TAction;
    acPrint: TAction;
    acExportToExcel: TAction;
    pmShortcut: TPopupMenu;
    ExporttillExcel1: TMenuItem;
    Skrivut1: TMenuItem;
    Uppdatera1: TMenuItem;
    Stng1: TMenuItem;
    dsKP_List: TDataSource;
    grdKPListDBTableView1: TcxGridDBTableView;
    grdKPListLevel1: TcxGridLevel;
    grdKPList: TcxGrid;
    grdKPListDBTableView1ORDERNUMBER: TcxGridDBColumn;
    grdKPListDBTableView1PRODUCT: TcxGridDBColumn;
    grdKPListDBTableView1LENGTH: TcxGridDBColumn;
    grdKPListDBTableView1DESTINATION: TcxGridDBColumn;
    grdKPListDBTableView1SUPPLIER: TcxGridDBColumn;
    grdKPListDBTableView1LO: TcxGridDBColumn;
    grdKPListDBTableView1VOLUME: TcxGridDBColumn;
    grdKPListDBTableView1VOLUNIT: TcxGridDBColumn;
    grdKPListDBTableView1DELIVERED: TcxGridDBColumn;
    grdKPListDBTableView1BALANCE: TcxGridDBColumn;
    grdKPListDBTableView1M3NOM_DELIVERED: TcxGridDBColumn;
    grdKPListDBTableView1SHIPMENT: TcxGridDBColumn;
    grdKPListDBTableView1READYDATE: TcxGridDBColumn;
    grdKPListDBTableView1ETD: TcxGridDBColumn;
    grdKPListDBTableView1VESSEL: TcxGridDBColumn;
    grdKPListDBTableView1ETA: TcxGridDBColumn;
    grdKPListDBTableView1INVOICENO: TcxGridDBColumn;
    grdKPListDBTableView1CLIENT: TcxGridDBColumn;
    grdKPListDBTableView1STATUS: TcxGridDBColumn;
    grdKPListDBTableView1ORDERNO: TcxGridDBColumn;
    grdKPListDBTableView1CLIENTNO: TcxGridDBColumn;
    grdKPListDBTableView1DESTINATIONNO: TcxGridDBColumn;
    grdKPListDBTableView1UNIQUERECORDNO: TcxGridDBColumn;
    grdKPListDBTableView1SALESREGIONNO: TcxGridDBColumn;
    grdKPListDBTableView1ORDERTYPE: TcxGridDBColumn;
    SaveDialog2: TSaveDialog;
    cxButton1: TcxButton;
    lcKund: TcxDBLookupComboBox;
    cdsKP_List: TADStoredProc;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cdsKP_ListORDERNUMBER: TStringField;
    cdsKP_ListPRODUCT: TStringField;
    cdsKP_ListLENGTH: TStringField;
    cdsKP_ListDESTINATION: TStringField;
    cdsKP_ListSUPPLIER: TStringField;
    cdsKP_ListLO: TIntegerField;
    cdsKP_ListVOLUME: TFloatField;
    cdsKP_ListVOLUNIT: TStringField;
    cdsKP_ListDELIVERED: TFloatField;
    cdsKP_ListBALANCE: TFloatField;
    cdsKP_ListM3NOM_DELIVERED: TFloatField;
    cdsKP_ListSHIPMENT: TStringField;
    cdsKP_ListREADYDATE: TStringField;
    cdsKP_ListETD: TSQLTimeStampField;
    cdsKP_ListVESSEL: TStringField;
    cdsKP_ListETA: TSQLTimeStampField;
    cdsKP_ListINVOICENO: TIntegerField;
    cdsKP_ListCLIENT: TStringField;
    cdsKP_ListSTATUS: TIntegerField;
    cdsKP_ListORDERNO: TIntegerField;
    cdsKP_ListCLIENTNO: TIntegerField;
    cdsKP_ListDESTINATIONNO: TIntegerField;
    cdsKP_ListUNIQUERECORDNO: TIntegerField;
    cdsKP_ListSALESREGIONNO: TIntegerField;
    cdsKP_ListORDERTYPE: TIntegerField;
    procedure acCustomizegrdKP_ListExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atExitExecute(Sender: TObject);
  private
    { Private declarations }
    ClientNo : Integer ;
  public
    { Public declarations }
    AppName: String ;
    constructor CreateCo(CompanyNo: Integer);
    destructor  Destroy;
  end;

var
  frmKP_List: TfrmKP_List;

implementation

uses  VidaConst,   VidaUser,  VidaUtils,
      UnitCRViewReport , dmsVidaContact, dmsDataConn, dmsVidaSystem;

{$R *.dfm}

constructor TfrmKP_List.CreateCo(CompanyNo: Integer);

begin
  inherited; //Create(AOwner);
  // Load column widths set last time.
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdKPList.Name, grdKPListDBTableView1)  ;
  // Populate the combo box with names of suppliers from the database
//  dmsContact.LoadClients(cbClients.Properties.Items,1);
end;

destructor TfrmKP_List.Destroy;
begin
  inherited;
end;


procedure TfrmKP_List.acCustomizegrdKP_ListExecute(Sender: TObject);
begin
  inherited;
  if grdKPList.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdKPList.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmKP_List.FormDestroy(Sender: TObject);
begin
 frmKP_List:= NIL ;
  inherited;
end;

procedure TfrmKP_List.acRefreshExecute(Sender: TObject);
var 
  Save_Cursor:TCursor;
begin
  inherited;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try
//  with dmcPayment do
//  Begin
   cdsKP_List.Active:= False ;
   cdsKP_List.ParamByName('@CustomerNo').AsInteger:= cds_PropsClientNo.AsInteger ;
//   if rgStatus.ItemIndex = 0 then
   cdsKP_List.ParamByName('@Status').AsInteger := cds_PropsStatus.AsInteger ;
//   else
//    cdsKP_List.ParamByName('Status').AsInteger:= 0 ;
   cdsKP_List.Active:= True ;
//  End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmKP_List.acPrintExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  inherited;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('KP_LISTA.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(cds_PropsClientNo.AsInteger);
//  if rgStatus.ItemIndex = 0 then
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(cds_PropsStatus.AsInteger) ;
//  else
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(0) ;

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmKP_List.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName    : String ;
  ExcelDir    : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= ExcelDir ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdKPList, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil ' + FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;


procedure TfrmKP_List.FormShow(Sender: TObject);
begin
  inherited;
  LoadUserProps(Self.Caption) ;
  lcKund.SetFocus ;
end;

procedure TfrmKP_List.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
 SaveUserProps(Self.Caption) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdKPList.Name, grdKPListDBTableView1) ;
 CanClose:= True ;
end;

procedure TfrmKP_List.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Action:= caFree ;
end;

procedure TfrmKP_List.atExitExecute(Sender: TObject);
begin
  inherited;
 Close ;
end;

end.
