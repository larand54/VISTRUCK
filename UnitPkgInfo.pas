unit UnitPkgInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, dxBar, dxBarExtItems,StdCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, ActnList, cxContainer,
  cxLabel, cxDBLabel, cxGridDBTableView, cxSplitter, cxTextEdit,
  cxLookAndFeels, cxLookAndFeelPainters, cxDBEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, Vcl.Buttons,
  Vcl.Menus;

type
  TfrmPkgInfo = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    ImageList1: TImageList;
    lbGetPkg: TdxBarLargeButton;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    acClose: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxEditStyleController1: TcxEditStyleController;
    Panel4: TPanel;
    Panel5: TPanel;
    grdPkgLogg: TcxGrid;
    grdPkgLoggDBTableView1: TcxGridDBTableView;
    grdPkgLoggDBTableView1Anvndare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Mtpunkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1Operation: TcxGridDBColumn;
    grdPkgLoggDBTableView1Lager: TcxGridDBColumn;
    grdPkgLoggDBTableView1OperationNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1Registrerad: TcxGridDBColumn;
    grdPkgLoggDBTableView1gare: TcxGridDBColumn;
    grdPkgLoggDBTableView1Produkt: TcxGridDBColumn;
    grdPkgLoggDBTableView1LIPNO: TcxGridDBColumn;
    grdPkgLoggDBTableView1DB_Bokfrd: TcxGridDBColumn;
    grdPkgLoggDBTableView1Antalperlngd: TcxGridDBColumn;
    grdPkgLoggDBTableView1AM3: TcxGridDBColumn;
    grdPkgLoggDBTableView1Styck: TcxGridDBColumn;
    grdPkgLoggDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdPkgLoggDBTableView1PktTypSkapad: TcxGridDBColumn;
    grdPkgLoggLevel1: TcxGridLevel;
    TtePkgNo: TTimer;
    cxSplitter2: TcxSplitter;
    ds_PkgLoggLinkedPackage: TDataSource;
    Panel6: TPanel;
    grdLinkedPackage: TcxGrid;
    grdLinkedPackageDBTableView1: TcxGridDBTableView;
    grdLinkedPackageDBTableView1Anvndare: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Mtpunkt: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Operation: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Lager: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Registrerad: TcxGridDBColumn;
    grdLinkedPackageDBTableView1gare: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Produkt: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Antalperlngd: TcxGridDBColumn;
    grdLinkedPackageDBTableView1AM3: TcxGridDBColumn;
    grdLinkedPackageDBTableView1Styck: TcxGridDBColumn;
    grdLinkedPackageDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdLinkedPackageDBTableView1DB_Bokfrd: TcxGridDBColumn;
    grdLinkedPackageDBTableView1OperationNo: TcxGridDBColumn;
    grdLinkedPackageDBTableView1LIPNO: TcxGridDBColumn;
    grdLinkedPackageDBTableView1PktTypSkapad: TcxGridDBColumn;
    grdLinkedPackageLevel1: TcxGridLevel;
    Panel7: TPanel;
    ds_Vis_PackageRunInfo: TDataSource;
    Panel8: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Bevel1: TBevel;
    Label18: TLabel;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    dxDBEdit5: TcxDBTextEdit;
    dxDBEdit6: TcxDBTextEdit;
    dxDBEdit7: TcxDBTextEdit;
    dxDBEdit8: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    dxDBEdit11: TcxDBTextEdit;
    dxDBEdit12: TcxDBTextEdit;
    dxDBEdit19: TcxDBTextEdit;
    dxDBEdit20: TcxDBTextEdit;
    dxDBEdit21: TcxDBTextEdit;
    dxDBEdit22: TcxDBTextEdit;
    dxDBEdit23: TcxDBTextEdit;
    dxDBEdit24: TcxDBTextEdit;
    dxDBEdit25: TcxDBTextEdit;
    ePcsPerACTLength: TcxTextEdit;
    dxDBEdit26: TcxDBTextEdit;
    dxDBEdit27: TcxDBTextEdit;
    ePcsPerNOMLength: TcxTextEdit;
    tePkgNo: TcxTextEdit;
    tePrefix: TcxTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Panel3: TPanel;
    grdPkgInfo: TcxGrid;
    grdPkgInfoDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgInfoDBBandedTableView1LOAD_CUSTOMER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_SUPPLIER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_DATE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LO_NUMBER: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1FS: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_CREATED_BY: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1LOAD_STATUS: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICE_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INV_CREATED_BY: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICE_DATE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INT_INVOICE_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1INVOICETYPE: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1DEBIT_CREDIT: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1ORDER_NO: TcxGridDBBandedColumn;
    grdPkgInfoDBBandedTableView1ORDER_CUSTOMER: TcxGridDBBandedColumn;
    grdPkgInfoLevel1: TcxGridLevel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    StngF121: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure tePkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TtePkgNoTimer(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPkgInfo (Sender: TObject) ;
    procedure GetPkg(Sender: TObject);
  public
    { Public declarations }
   PackageNo : Integer ;
   SupplierCode : String ;
  end;

// var    frmPkgInfo: TfrmPkgInfo;

implementation

uses UnitPkgNo, dmsVidaSystem, dmsVidaProduct, UnitdmModule1;

{$R *.dfm}

procedure TfrmPkgInfo.GetPkg(Sender: TObject);
Var
    Save_Cursor : TCursor;
    PkgSupplierNo, ProductNo : Integer ;

begin
 Save_Cursor    := Screen.Cursor ;
 Screen.Cursor  := crSQLWait ;

Try
 with dmsSystem, //dmsProduct,
 dmModule1 do
 Begin
  if Length(SupplierCode) = 0  then
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo) ;


     {
  FDStoredProc1.Active := False ;
  FDStoredProc1.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  FDStoredProc1.ParamByName('@SupplierCode').AsString := SupplierCode ;
  FDStoredProc1.Active := True ;           }

  cds_PkgLog.Active := False ;
  cds_PkgLog.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  cds_PkgLog.ParamByName('@SupplierCode').AsString := SupplierCode ;
  cds_PkgLog.Active := True ;

  cds_PkgInfo.Active:= False ;
  cds_PkgInfo.ParamByName('PackageNo').AsInteger   := PackageNo ;
  cds_PkgInfo.ParamByName('SupplierCode').AsString := SupplierCode ;
  cds_PkgInfo.Active:= True ;


  sp_PcsPerLength.ParamByName('@PackageTypeNo').AsInteger := cds_PkgInfoPACKAGETYPENO.AsInteger ;
  sp_PcsPerLength.ExecProc ;
  ePcsPerACTLength.Text   := sp_PcsPerLength.ParamByName('@PicesPerLength').AsString ;
  ePcsPerNOMLength.Text   := sp_PcsPerLength.ParamByName('@NomPicesPerLength').AsString ;
  sp_PcsPerLength.Close ;

  cds_LoadPkgInfo.Active:= False ;
  cds_LoadPkgInfo.ParamByName('Pkg_No').AsInteger   := PackageNo ;
  cds_LoadPkgInfo.ParamByName('Supp_Code').AsString := SupplierCode ;
  cds_LoadPkgInfo.Active:= True ;


{  sp_PkgLoggLinkedPackage.Active:= False ;
  sp_PkgLoggLinkedPackage.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_PkgLoggLinkedPackage.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_PkgLoggLinkedPackage.Active:= True ; }

{  sp_Vis_PackageRunInfo.Active:= False ;
  sp_Vis_PackageRunInfo.ParamByName('@PackageNo').AsInteger   := PackageNo ;
  sp_Vis_PackageRunInfo.ParamByName('@SupplierCode').AsString := SupplierCode ;
  sp_Vis_PackageRunInfo.Active:= True ; }


 End ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

procedure TfrmPkgInfo.FormShow(Sender: TObject);
begin
 if PackageNo > 0 then
 Begin
  GetPkg(Sender) ;

  Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + dmModule1.cds_PkgInfoPKG_NO.AsString
  + '/' +  dmModule1.cds_PkgInfoSUPP_CODE.AsString ;
 End ; 
end;

procedure TfrmPkgInfo.FormCreate(Sender: TObject);
begin
 PackageNo    := 0 ;
 SupplierCode := '' ;
end;

procedure TfrmPkgInfo.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgInfo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 with dmsSystem do
 Begin
//  sq_PkgInfo.Close ;
//  cds_PkgInfo.Active:= False ;
//  cds_LoadPkgInfo.Active:= False ;
 End ;
 CanClose := True ;
end;

procedure TfrmPkgInfo.acPkgInfoExecute(Sender: TObject);
Var PkgSupplierNo, ProductNo : Integer ;
    frmPkgNo: TfrmPkgNo;
begin
 frmPkgNo:= TfrmPkgNo.Create(Nil);
 Try
  if frmPkgNo.ShowModal = mrOk then
  Begin
   PackageNo    := StrToInt(Trim(frmPkgNo.dxMaskPackageNo.Text));
   SupplierCode := Trim(frmPkgNo.dxMaskSupplierCode.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End
   else
   Begin
    GetPkg(Sender) ;
    //GetPkgLog(Sender) ;
   End ;
    Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + ' Paketnr: ' + dmModule1.cds_PkgInfoPKG_NO.AsString
  + '/' +  dmModule1.cds_PkgInfoSUPP_CODE.AsString ;


  End ;

 Finally
  FreeAndNil(frmPkgNo) ;
 End ;
end;


procedure TfrmPkgInfo.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgInfo.tePkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
  Exit ;
  ShowPkgInfo(Sender) ;
end;

procedure TfrmPkgInfo.ShowPkgInfo(Sender: TObject) ;
Var PkgSupplierNo, ProductNo : Integer ;
begin
   PackageNo    := StrToInt(Trim(tePkgNo.Text));
   SupplierCode := Trim(tePrefix.Text) ;
   if Length(SupplierCode) = 0 then
   Begin
    SupplierCode := dmsSystem.PkgNoToSuppCode_II(PackageNo, PkgSupplierNo, ProductNo);
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End
   else
   Begin
    GetPkg(Sender) ;
//    GetPkgLog(Sender) ;
   End ;

 Self.Caption := 'PAKETINFORMATION ' + ' Paketnr: ' + dmModule1.cds_PkgInfoPKG_NO.AsString
  + '/' +  dmModule1.cds_PkgInfoSUPP_CODE.AsString ;


 TtePkgNo.Enabled := True ;
end;

procedure TfrmPkgInfo.TtePkgNoTimer(Sender: TObject);
begin
 TtePkgNo.Enabled := False ;
 tePkgNo.SetFocus ;
end;

end.
