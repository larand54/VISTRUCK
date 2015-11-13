unit uSinglePkgEntry ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,  Db, SqlTimSt,
  ImgList, idGlobal, StdCtrls, cxPC, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalendar, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLabel, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Buttons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxCalc, ActnList, cxButtonEdit, Menus,
  cxLookAndFeelPainters, cxButtons, cxLookAndFeels, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxNavigator, siComp, siLngLnk, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, System.Actions;



type
  TfSinglePkgEntry = class(TForm)
    dxBarManager1: TdxBarManager;
    Panel1: TPanel;
    ImageList1: TImageList;
    pmProducts: TdxBarPopupMenu;
    Panel2: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    grdPcsPerLength: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Pieces: TcxGridDBColumn;
    cxGridDBTableView1ALMM: TcxGridDBColumn;
    cxGridDBTableView1NLMM: TcxGridDBColumn;
    cxGridDBTableView1GroupNo: TcxGridDBColumn;
    cxGridDBTableView1productLengthno: TcxGridDBColumn;
    cxGridDBTableView1FEET: TcxGridDBColumn;
    cxGridDBTableView1TUM: TcxGridDBColumn;
    cxGridDBTableView1AM3: TcxGridDBColumn;
    cxGridDBTableView1LPM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    grdLengthGroup: TcxGrid;
    grdLengthGroupDBTableView1: TcxGridDBTableView;
    grdLengthGroupDBTableView1GroupNo: TcxGridDBColumn;
    grdLengthGroupDBTableView1GroupName: TcxGridDBColumn;
    grdLengthGroupLevel1: TcxGridLevel;
    teSupplierCode: TcxDBTextEdit;
    Label9: TLabel;
    ActionList1: TActionList;
    acClose: TAction;
    acGetProduct: TAction;
    acSave: TAction;
    Label11: TLabel;
    lcInputOption: TcxDBLookupComboBox;
    acClearPcs: TAction;
    BitBtn1: TBitBtn;
    PanelProduct: TPanel;
    dsLoadPackages: TDataSource;
    ePACKAGENO: TcxDBTextEdit;
    Label1: TLabel;
    seAntalPaket: TcxSpinEdit;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acSelectProduct: TAction;
    cxButton3: TcxButton;
    siLangLinked_fSinglePkgEntry: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure lbCloseFormClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acClearPcsExecute(Sender: TObject);
    procedure acSelectProductExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);

  private
    { Private declarations }
    FPackageNo : Integer ;
    function  SelectProduct : Integer ;
    procedure InsertPkgSerie(Sender: TObject);
  public
    { Public declarations }
//    SavePkgs  : Boolean ;
  end;

//var  fSinglePkgEntry: TfSinglePkgEntry;

implementation

uses VidaConst, VidaUser, dmsDataConn, UnitPkgNoSeries, //UnitGetProduct,
    dmsVidaSystem,
     dmsVidaContact, dmsPkgWorkOrder,
     dm_SortOrder, VidaType , uSelectProduct, udmLanguage;

{$R *.dfm}

function TfSinglePkgEntry.SelectProduct : Integer ;
var fSelectProduct: TfSelectProduct;
Begin
 fSelectProduct := TfSelectProduct.Create(nil) ;
 Try
 fSelectProduct.SortingOrderNo  := dmsSortOrder.cds_SchedulerID.AsInteger ;
 fSelectProduct.PIPNo           := dmsSortOrder.cds_SortOrderRawPIPNo.AsInteger ;
 if fSelectProduct.ShowModal = mrOK then
  Begin
   if (fSelectProduct.cds_ProdInLager.Active) and (fSelectProduct.cds_ProdInLager.RecordCount > 0) then
   Begin
    Result               := fSelectProduct.cds_ProdInLagerProductNo.AsInteger ;
    PanelProduct.Caption := fSelectProduct.cds_ProdInLagerProductDisplayName.AsString ;
   End
   else
   Begin
    Result               := -1 ;
    PanelProduct.Caption := 'Produkt saknas' ;
   End ;
  End
   else
    Begin
     Result               := -1 ;
     PanelProduct.Caption := 'Produkt saknas' ;
    End ;
 Finally
  FreeAndNil(fSelectProduct) ;
 End ;
End ;

procedure TfSinglePkgEntry.FormCreate(Sender: TObject);
begin
 With dm_PkgWorkOrder do
 Begin
  cdsLengthGroup.Active := True ;
  cdsProdLength.Active  := True ;
  mtLoadPackages.Active := True ;

  mtLoadPackages.Insert ;

  mtLoadPackagesSupplierNo.AsInteger          := dmsSortOrder.cds_SchedulerOwnerNo.AsInteger ;

  mtLoadPackagesProductNo.AsInteger           := dmsSortOrder.FD_RawSumProductNo.AsInteger ; //dmsSortOrder.cds_SORawProductNo.AsInteger ; //SelectProduct ;//


  mtLoadPackagesBARCODE_ID.AsInteger          := 0 ;
  mtLoadPackagesGRADESTAMPNO.AsInteger        := 0 ;
  mtLoadPackagesPCS.AsInteger                 := 0 ;


  mtLoadPackagesLOG_INVENTORY_NO.AsInteger    := dmsSortOrder.cds_SortOrderRawLIPNo.AsInteger ;
  mtLoadPackages.Post ;
 End ;
end;


procedure TfSinglePkgEntry.lbCloseFormClick(Sender: TObject);
begin
 Close ;
end;

procedure TfSinglePkgEntry.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor : TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
(* ResultButton:= mrYes ;
 With dm_SinglePkg do
 Begin
  mtpackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket kommer att läggas till, OK?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try


    For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) to
             StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
    Begin

    if mtDupPkgNo.FindKey([PkgNo,Trim(SupplierCode)]) then
    Begin
     MessageBeep(MB_ICONEXCLAMATION);
     ShowMessage('Duplicate Package number entered '+IntToStr(PkgNo)) ;
    End
    else
     if dmsSystem.Pkg_Reserved(
          PkgNo,
          SupplierCode, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ShowMessage('Package no is reserved by user '+ Res_UserName) ;
         End
     else
     if PackageNumberExists(PkgNo, SupplierCode) = False then
     Begin
      Try
       mtpackages.Insert ;
       mtpackages.Fields.Fields[cPACKAGENO].AsInteger:= PkgNo ;
       mtpackages.Post ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtpackages.Cancel ;
       End ;
      End ;
     End //if..
      else
       ShowMessage('Package number  '+IntToStr(PkgNo)+' already exist, please change to different number') ;
    End ; //for
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;

    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtpackages.EnableControls ;
  End ;
 End ; // with
  *)
End ;

procedure TfSinglePkgEntry.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
Var   ResultButton  : word ;
      x             : Integer ;
Begin
 if CanClose = True then
 Begin
  With dm_PkgWorkOrder do
  Begin
   mtLoadPackages.Active := False ;
   cdsLengthGroup.Active := False ;
   cdsProdLength.Active  := False ;
  End ;//with

// With dmsSystem do
// Begin
//  Delete_ReservedPkgs (Self.Name) ;
// End ;
 end;//if
end;


procedure TfSinglePkgEntry.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfSinglePkgEntry.acSaveExecute(Sender: TObject);
Var NewPrefix : String3 ;
    x         : Integer ;
begin
 if dm_PkgWorkOrder.GetNoOfPcsInNewPkg > 0 then
 Begin
 if MessageDlg('Vill du registrera ' + intToStr(seAntalPaket.Value) + ' paket att bokföras mot körordern? : ',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 For x := 1 to seAntalPaket.Value do
 Begin
  dm_PkgWorkOrder.mtLoadPackages.Edit ;
  dm_PkgWorkOrder.mtLoadPackagesPACKAGENO.AsInteger := dm_PkgWorkOrder.GetPackageNo(dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
  dmsSortOrder.cds_SchedulerResourceID.AsInteger, cDeladePaketSeries, NewPrefix) ;
  dm_PkgWorkOrder.mtLoadPackagesSUPP_CODE.AsString  := NewPrefix ;
  dm_PkgWorkOrder.mtLoadPackages.Post ;

  if dm_PkgWorkOrder.mtLoadPackagesPACKAGENO.AsInteger > 0 then
  dm_PkgWorkOrder.SkapaNyttPaket(True, dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
  dmsSortOrder.cds_SchedulerResourceID.AsInteger, SQLTimeStampToDateTime(dmsSortOrder.cds_SchedulerStart.AsSQLTimeStamp), False)
  else
  ShowMessage('Paketnr kunde inte genereras') ;
 End ;  //for x
  dm_PkgWorkOrder.cds_UsedPkgs.Active := False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active := True ;
  dmsSortOrder.cds_SORaw.Active    := False ;
  dmsSortOrder.cds_SORaw.Active    := True ;
 end ;// if MessageDlg('Vill du skapa
 End //if dm_PkgWorkOrder.GetNoOfPcsInNewPkg > 0 then
  else
   ShowMessage('Total antal styck är 0.') ;
end;

procedure TfSinglePkgEntry.acClearPcsExecute(Sender: TObject);
begin
 With dm_PkgWorkOrder do
 Begin
  cdsProdLength.Active:= False ;
  cdsProdLength.Active:= True ;
 End ;
end;

procedure TfSinglePkgEntry.acSelectProductExecute(Sender: TObject);
begin
 With dm_PkgWorkOrder do
 Begin
  mtLoadPackages.Edit ;
  mtLoadPackagesProductNo.AsInteger           := SelectProduct ;
  mtLoadPackages.Post ;
 End ;
end;

procedure TfSinglePkgEntry.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled := (dm_PkgWorkOrder.mtLoadPackages.Active)
 and (dm_PkgWorkOrder.mtLoadPackages.RecordCount > 0)
 and (dm_PkgWorkOrder.mtLoadPackagesProductNo.AsInteger > 0) ;
end;

end.
