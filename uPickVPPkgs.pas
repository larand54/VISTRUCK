unit uPickVPPkgs ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons, 
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer, 
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, FMTBcd, DBClient, Provider, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  cxGroupBox, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, siComp, siLngLnk,
  System.Actions;

type
  TfPickVPPkgs = class(TForm)
    grdPickPkgNosDBTableView1: TcxGridDBTableView;
    grdPickPkgNosLevel1: TcxGridLevel;
    grdPickPkgNos: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn;
    grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    grdPickPkgNosDBTableView1AM3: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn;
    grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    dxBarManager1: TdxBarManager;
    pmPickPkgNosGrid: TdxBarPopupMenu;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    dxBarButton1: TdxBarButton;
    acMarkAll: TAction;
    acUnmarkAll: TAction;
    Label5: TLabel;
    LabelLONr: TLabel;
    grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn;
    sq_PaketLista: TFDQuery;
    sq_PaketListaPaketNr: TIntegerField;
    sq_PaketListaPrefix: TStringField;
    sq_PaketListaproductno: TIntegerField;
    sq_PaketListaStyckPerLangd: TStringField;
    sq_PaketListaAM3: TFloatField;
    sq_PaketListaNM3: TFloatField;
    sq_PaketListaSTYCK: TIntegerField;
    sq_PaketListaDateCreated: TSQLTimeStampField;
    sq_PaketListaNOOFLENGTHS: TIntegerField;
    sq_PaketListaProdukt: TStringField;
    sq_PaketListaRavaruPrisPerNM3: TFloatField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rgUrvalPaket: TcxRadioGroup;
    siLangLinked_fPickVPPkgs: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure cbFilterOnLengthPropertiesChange(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acMarkAllExecute(Sender: TObject);
    procedure acUnmarkAllExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Refresh ;
  public
    { Public declarations }
   VerkNo, LONo : Integer ;
  end;

//var fPickVPPkgs: TfPickVPPkgs;

implementation

uses dmsDataConn, dmsVidaSystem, UnitdmModule1, VidaUser , UnitPkgInfo;

{$R *.dfm}


procedure TfPickVPPkgs.FormShow(Sender: TObject);
begin
 Refresh ;
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPickPkgNos.Name, grdPickPkgNosDBTableView1) = False then ;
end;

procedure TfPickVPPkgs.FormCreate(Sender: TObject);
begin
 with dmsSystem do
 Begin
  MarkedPkgs:= 0 ;

 End ;
end;

procedure TfPickVPPkgs.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
 with dmsSystem do
  LabelNoOfPkgsMarked.Caption:= intToStr(MarkedPkgs) ;
end;

procedure TfPickVPPkgs.Refresh ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 with dmsSystem do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.Active:= False ;
// BuildSQL ;


 mtSelectedPkgNo.Active:= True ;

 sq_PaketLista.Active := False ;
 sq_PaketLista.ParamByName('VerkNo').AsInteger  := VerkNo ;
 sq_PaketLista.ParamByName('LONo').AsInteger    := LONo ;
 sq_PaketLista.Active := True ;
 sq_PaketLista.First ;
 While not sq_PaketLista.Eof do
 Begin
  mtSelectedPkgNo.insert ;
//  For x := 0 to 7 do
//  mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_PaketLista.Fields.Fields[x].AsVariant ;
  mtSelectedPkgNoPAKETNR.AsInteger          := sq_PaketListaPaketNr.AsInteger ;
  mtSelectedPkgNoLevkod.AsString            := sq_PaketListaPrefix.AsString ;
  mtSelectedPkgNoSTYCKPERLNGD.AsString      := sq_PaketListaStyckPerLangd.AsString ;
  mtSelectedPkgNoAM3.AsFloat                := sq_PaketListaAM3.AsFloat ;
  mtSelectedPkgNoSTYCK.AsInteger            := sq_PaketListaSTYCK.AsInteger ;
  mtSelectedPkgNoREGISTRERAT.AsSQLTimeStamp := sq_PaketListaDateCreated.AsSQLTimeStamp ;
  mtSelectedPkgNoNOOFLENGTHS.AsInteger      := sq_PaketListaNOOFLENGTHS.AsInteger ;
  mtSelectedPkgNoProductNo.AsInteger        := sq_PaketListaproductno.AsInteger ;

  mtSelectedPkgNoProdukt.AsString           := sq_PaketListaProdukt.AsString ;
  mtSelectedPkgNo.post ;
  sq_PaketLista.Next ;
 End ;
 finally
  sq_PaketLista.Active := False ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickVPPkgs.cbFilterOnLengthPropertiesChange(Sender: TObject);
begin
 Refresh ;
end;

procedure TfPickVPPkgs.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 with dmsSystem do
 Begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= mtSelectedPkgNoPAKETNR.AsInteger ;
  frmPkgInfo.SupplierCode:= mtSelectedPkgNoLEVKOD.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
 End ;
end;

procedure TfPickVPPkgs.FormDestroy(Sender: TObject);
begin
 with dmsSystem do
 mtSelectedPkgNo.Active:= False ;
end;

procedure TfPickVPPkgs.acMarkAllExecute(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmsSystem do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 1 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;


procedure TfPickVPPkgs.acUnmarkAllExecute(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 with dmsSystem do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickVPPkgs.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdPickPkgNos.Name, grdPickPkgNosDBTableView1) ;
end;

end.
