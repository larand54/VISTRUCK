unit UnitRemovePkg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  cxPC, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxGraphics, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  ActnList, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, dxBarExtItems, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLabel, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxCheckBox, dxCore, cxNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, siComp, siLngLnk, System.Actions,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, dxScrollbarAnnotations,
  dxBarBuiltInMenu, System.ImageList ;

type
  TfrmRemovePkg = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbRemovePkgsFromInventory: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    ImageList1: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    lbDeletePkgsFromSystem: TdxBarLargeButton;
    bbRemoveAllRows: TdxBarButton;
    bbRemoveRow: TdxBarButton;
    lbInitBarCodeScanning: TdxBarLargeButton;
    bbScanOnlyMySuppCode: TdxBarLargeButton;
    bbArkiv: TdxBarSubItem;
    bbRemovePkgFromSystem: TdxBarButton;
    dsUserProp: TDataSource;
    ActionList1: TActionList;
    acAvregistreraPaket: TAction;
    Panel1: TPanel;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SUPP_CODE: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ROWNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1BAR_CODE: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1GRADE_STAMP: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1INVENTORY: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OWNER: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OWNERNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOG_INVENTORY_NO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1BARCODE_ID: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1GRADESTAMPNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SUPPLIERNO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Old_PackageTypeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PIP: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ACTTHICK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ACTWIDTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NOMTHICK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NOMWIDTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1StatusText: TcxGridDBBandedColumn;
    grdPkgsLevel1: TcxGridLevel;
    Panel2: TPanel;
    bbClearPkgGrid: TBitBtn;
    BitBtn2: TBitBtn;
    acPkgNoSerie: TAction;
    acStartBarCodeScanning: TAction;
    acClose: TAction;
    acAddRow: TAction;
    acRemoveRow: TAction;
    acDeletePkgFromSystem: TAction;
    Panel3: TPanel;
    Label11: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    lcOWNER: TcxDBLookupComboBox;
    lcPRODUCER: TcxDBLookupComboBox;
    lcREGPOINT: TcxDBLookupComboBox;
    seRunNr: TcxSpinEdit;
    deRegDate: TcxDBDateEdit;
    BitBtn1: TBitBtn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acSearchRunNo: TAction;
    Label2: TLabel;
    lcPIPNAME: TcxDBLookupComboBox;
    acRemoveAllRows: TAction;
    BitBtn3: TBitBtn;
    cxLabel4: TcxLabel;
    Bevel1: TBevel;
    cxLabel3: TcxLabel;
    Bevel3: TBevel;
    lcLIP: TcxDBLookupComboBox;
    Label1: TLabel;
    grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRedBg: TcxStyle;
    Label12: TLabel;
    lcSkiftLag: TcxDBLookupComboBox;
    teAvRegPkgNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    TAvRegPkgNo: TTimer;
    cxDBCheckBox1: TcxDBCheckBox;
    siLangLinked_frmRemovePkg: TsiLangLinked;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    mtUserPropTO_PIPNAME: TStringField;
    mtUserPropTO_LIPNAME: TStringField;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropMarketRegionNo: TIntegerField;
    mtUserPropOrderTypeNo: TIntegerField;
    mtUserPropStatus: TIntegerField;
    mtUserPropFilterOrderDate: TIntegerField;
    mtUserPropClientNo: TIntegerField;
    mtUserPropSalesPersonNo: TIntegerField;
    mtUserPropVerkSupplierNo: TIntegerField;
    mtUserPropVerkKundNo: TIntegerField;
    mtUserPropLOObjectType: TIntegerField;
    mtUserPropLoadingLocationNo: TIntegerField;
    mtUserPropShipperNo: TIntegerField;
    mtUserPropBookingTypeNo: TIntegerField;
    mtUserPropCustomerNo: TIntegerField;
    mtUserPropShowProduct: TIntegerField;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    mtUserPropName: TStringField;
    mtUserPropSkiftlag: TStringField;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lbPkgInfoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbRemoveAllRowsClick(Sender: TObject);
    procedure bbClearPkgGridClick(Sender: TObject);
    procedure acAvregistreraPaketExecute(Sender: TObject);
    procedure acPkgNoSerieExecute(Sender: TObject);
    procedure acStartBarCodeScanningExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acDeletePkgFromSystemExecute(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acAddRowUpdate(Sender: TObject);
    procedure acAvregistreraPaketUpdate(Sender: TObject);
    procedure acSearchRunNoExecute(Sender: TObject);
    procedure acRemoveAllRowsExecute(Sender: TObject);
    procedure acRemoveAllRowsUpdate(Sender: TObject);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure teAvRegPkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TAvRegPkgNoTimer(Sender: TObject);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure mtUserPropPIPNoChange(Sender: TField);
    procedure mtUserPropProducerNoChange(Sender: TField);
  private
    { Private declarations }
     EgenPkgSupplierCode :  String ;
     Unique_No : Integer ;
//     StreckKodPkgNo : String ;
     function  ControlInvDate(Sender: TObject) : Boolean ;
     procedure CloseDataSets;
     function  IdentifyPackageSupplier(
                const PkgNo : Integer;
                var PkgSupplierCode: String3;
                Var ProductNo : Integer;
                Var Res_UserName : String) : TEditAction;
     procedure InsertPkgSerie(Sender: TObject) ;
     procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
     procedure RemoveAllSuccespkgs(Sender: TObject);
//     function  AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  : TEditAction ;

  public
    { Public declarations }
     procedure CreateCo ;
     procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
     procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;
     procedure RemotePkgEntry (PkgNos : TkbmMemTable) ;
  end;

var frmRemovePkg: TfrmRemovePkg;

implementation

uses dmLM1, VidaConst,
  dmsVidaContact, dmsVidaProduct,
  VidaUser, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcPkgs, dmcVidaSystem,
  uScanPkgNo, dmsDataConn , uSearchRunNo, dmc_UserProps;

{$R *.dfm}

procedure TfrmRemovePkg.CreateCo ;
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
  grdPkgsDBBandedTableView1ROWNO.SortOrder:= soAscending ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcPRODUCER.Enabled := False ;
   lcOWNER.Enabled    := False ;
   lcPIPNAME.Enabled  := False ;
   acDeletePkgFromSystem.Enabled:= False ;
  End ;

  if (mtUserPropRoleType.AsInteger = cInternal_Mill) then
  Begin
   lcOwner.Enabled    := False ;
   lcPRODUCER.Enabled := False ;
  End ;

  if mtUserPropRoleType.AsInteger = cSalesRegion then
  Begin
   lcPRODUCER.Enabled             := True ;
   lcOWNER.Enabled                := True ;
   lcPIPNAME.Enabled              := True ;
   acDeletePkgFromSystem.Enabled  := True ;
  End ;

  grdPkgsDBBandedTableView1.Bands[2].Visible:= False ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmRemovePkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;

procedure TfrmRemovePkg.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmRemovePkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  if dmPkgs.mtLoadPackages.Active = False then
   dmPkgs.mtLoadPackages.Active:= True ;

     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 0 ;
     sq_OneUniquePkg.ParamByName('LanguageID').AsInteger          := ThisUser.LanguageID ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant  := sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger        := Unique_No ;
//      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_1' (* ' ?r reserverat av anv?ndare ' *) )+Res_UserName) ;
      End ;
     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(PkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_3' (* ' finns inte' *) )) ;
      End ;

     sq_OneUniquePkg.Close ;
 End ; //with
end;

(*procedure TfrmRemovePkg.AddErrorTextToPkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger:= SupplierNo ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      For x := 0 to 27 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' ?r reserverat av anv?ndare '+Res_UserName) ;
      End ;
     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
      End ;

     sq_OneUniquePkg.Close ;
  Finally
   SomethingChanged(Sender) ;
  End ;
 End ; //with
end; *)

function TfrmRemovePkg.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo : Integer;
begin
 //check that package is available in inventory and Get supplier code
//                        ShowMessage('ThisUser.UserName+Self.Name ' + ThisUser.UserName+'/'+Self.Name);
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_III(PkgNo, mtUserPropPIPNo.AsInteger, mtUserPropOwnerNo.AsInteger, SupplierNo, ProductNo);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
          begin
           Result := eaACCEPT ;
          end
        else
         begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
// ShowMessage('dmsSystem.Pkg_Reserved = '+dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, Self.Name, Res_UserName)) ;
// ShowMessage('Length dmsSystem.Pkg_Reserved = '+ inttostr(Length(dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, Self.Name, Res_UserName)))) ;

// ShowMessage('ThisUser.UserName+/+Self.Name = '+ ThisUser.UserName+'/'+Self.Name) ;
// ShowMessage('Length ThisUser.UserName+/+Self.Name = '+ inttostr(Length(ThisUser.UserName+'/'+Self.Name))) ;
// ShowMessage('Res_UserName = ' + Res_UserName) ;
end;

//After adding a package manually
procedure TfrmRemovePkg.FormCreate(Sender: TObject);
begin
 dmPkgs     := TdmPkgs.Create(Nil);
 Unique_No  := 1 ;
 dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
 dmPkgs.mtLoadPackages.Active := True ;
end;

procedure TfrmRemovePkg.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
 CanClose:= True ;
 if CanClose = True then
 begin

   //Remove entries in Pkgs_Res
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;

  CloseDataSets;
 end;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;
end;

procedure TfrmRemovePkg.lbPkgInfoClick(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 With dmPkgs do
 Begin
 if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo:= dmPkgs.mtLoadPackagesPackageNo.AsInteger ;
   frmPkgInfo.SupplierCode:= dmPkgs.mtLoadPackagesSUPP_CODE.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
 End ; //with
end;

procedure TfrmRemovePkg.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_4' (* 'Upp till ' *) )+IntToStr(NoOfPkgsInSerie)+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_5' (* ' paket kanske h?mtas, ?r det korrekt?' *) ),
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try
     mtLoadPackages.Active:= False ;
     mtLoadPackages.Active:= True ;
     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('First_PackageNo').AsInteger     := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('Last_PackageNo').AsInteger      := StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('OwnerNo').AsInteger             := mtUserPropOwnerNo.AsInteger ;
     sq_OnePkgDetailData.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OnePkgDetailData.Open ;
     While not sq_OnePkgDetailData.Eof do
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OnePkgDetailDataPACKAGENO.AsInteger,
          sq_OnePkgDetailDataSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      mtLoadPackages.Insert ;
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkgDetailData.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;
      End  //if..
      else
      Begin
       ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_1' (* ' ?r reserverat av anv?ndare ' *) )+Res_UserName) ;
      End ;
      sq_OnePkgDetailData.Next ;
     End ;
     sq_OnePkgDetailData.Close ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfrmRemovePkg.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmPkgs) ; //Free ;
end;

procedure TfrmRemovePkg.bbRemoveAllRowsClick(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
 if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0))
 or ((mtLoadPackages.Active) AND (mtLoadPackages.State in [dsEdit, dsInsert])) then
  Begin
   mtLoadPackages.Active:= False ;
   mtLoadPackages.Active:= True ;
  End ;
 End ;
end;

procedure TfrmRemovePkg.bbClearPkgGridClick(Sender: TObject);
begin
 bbRemoveAllRowsClick(Sender) ;
end;

procedure TfrmRemovePkg.RemoveAllSuccespkgs(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  Try
  if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
  Begin
   mtLoadPackages.Filter:= 'Status = 0' ;
   mtLoadPackages.Filtered:= True ;
   Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
     mtLoadPackages.Delete ;
   Finally
    mtLoadPackages.Filtered:= False ;
   End ;
  End ;
  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//with
end;

procedure TfrmRemovePkg.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo        : Integer ;
  PktNrLevKod     : String ;//Lev koden i paketnrstr?ngen
  PkgSupplierCode : String3;
  Action          : TEditAction;
  ProductNo       : Integer ;
  Save_Cursor     : TCursor;
  Res_UserName    : String ;
  RegPointName    : String ;
  ClientID        : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
//Notera att i den l?nga koden skall supplier koden finnas!
   Try
   ClientID := Copy(PkgNo, 1, 11) ;
   NewPkgNo := StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
    Except
     on E: EConvertError do
      ShowMessage(E.ClassName + LF + E.Message);
    End ;
    if NewPkgNo < 1 then
     Exit ;
    PktNrLevKod                     := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
    PkgSupplierCode                 := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
    dmPkgs.mtLoadPackages.IndexName := 'mtLoadPackagesIndex5' ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   if NewPkgNo = 0 then
   Begin
    ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_8' (* 'Streckkoden kunde inte ?vers?ttas till ett Paketnr' *) )) ;
    Exit ;
   End ;

   Action := IdentifyPackageSupplier(
      NewPkgNo,
      PkgSupplierCode,
      ProductNo,
      Res_UserName );
   if Length(Trim(PkgSupplierCode)) = 0 then
   Begin
    if mtUserPropGroupByBox.AsInteger = 0 then
     ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_9' (* 'Inget paket kunde identifieras' *) )) ;
    Exit ;
   End ;

//   PkgSupplierCode:= EgenPkgSupplierCode ;

  End ;

  //Ett paket kan inte avregistreras flera ggr mot en produktionsm?tpunkt
  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
  if RegPointName <>
{TSI:IGNORE ON}
	'NO'
{TSI:IGNORE OFF}
 then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo, PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     if mtUserPropGroupByBox.AsInteger = 0 then
     ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_3' (* ' finns inte' *) )) ;
    End
    else
     if Action = eaReserved then
      Begin
       if mtUserPropGroupByBox.AsInteger = 0 then
        ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_1' (* ' ?r reserverat av anv?ndare ' *) )+Res_UserName) ;
      End
      else
       if Action = eaAlreadyAvReg then
       Begin
        if mtUserPropGroupByBox.AsInteger = 0 then
         ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_16' (* ' ?r redan avregistrerat mot m?tpunkt ' *) )+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' ?r redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

procedure TfrmRemovePkg.TAvRegPkgNoTimer(Sender: TObject);
begin
 teAvRegPkgNo.SetFocus ;
 teAvRegPkgNo.SelectAll ;
 TAvRegPkgNo.Enabled  := False ;
end;

procedure TfrmRemovePkg.teAvRegPkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Error             : Boolean ;
  NewValue          : String;
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ErrorText,
  RegPointName      : String ;
begin
 if Key <> VK_RETURN then
  Exit ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


  try
  Error := False ;
    { Do some lengthy operation }
//   NewValue := DisplayValue ;//TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

   NewValue := IntToStr(StrToIntDef(teAvRegPkgNo.Text,0)) ;

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      PkgSupplierCode,
      ProductNo,
      Res_UserName );

{  if Action = eaACCEPT then
  Begin
   RegPointName:= dmPkgs.IsPkgAvregistrerat (StrToInt(NewValue), mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
   if RegPointName <> 'NO' then
   Begin
    Action:= eaAlreadyAvReg ;
   End
    else
     Action := eaAccept ;
  End ; }

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Error  := False ;
  End
   else
   if Action = eaREJECT then
    Begin
     Error     := True ;
     ErrorText  := siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+NewValue+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_3' (* ' finns inte' *) ) ;
    End
    else
     if Action = eaReserved then
     Begin
      Error     := True ;
      ErrorText := siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+NewValue+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_1' (* ' ?r reserverat av anv?ndare ' *) )+Res_UserName ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        Error     := True ;
        ErrorText := siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) ) + NewValue + '/' + PkgSupplierCode + siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_16' (* ' ?r redan avregistrerat mot m?tpunkt ' *) ) + RegPointName ;
       End ;

    if Error then
    begin
     if mtUserPropGroupByBox.AsInteger = 0 then
      ShowMessage(ErrorText) ;
    end;

  finally
    Screen.Cursor         := Save_Cursor;  { Always restore to normal }
    TAvRegPkgNo.Enabled   := True ;
  end;
end;

{function TfrmRemovePkg.AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) : TEditAction ;
var
 x : Integer ;
// Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
     sq_OnePkg.Close ;
     sq_OnePkg.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkg.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkg.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
     sq_OnePkg.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OnePkg.Open ;
     if not sq_OnePkg.Eof then
     Begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= LIP ;
      mtLoadPackages.Post ;
      Result:= eaAccept ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ; //Except

     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
       Result:= eaREJECT ;
      End ;

     sq_OnePkg.Close ;
 End ; //with
end; }

procedure TfrmRemovePkg.ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo          : Integer ;
  PktNrLevKod       : String ;//Lev koden i paketnrstr?ngen
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  RegPointName      : String ;
  ClientID          : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;

  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   ClientID := Copy(PkgNo, 1, 11) ;
   NewPkgNo := StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
//lars jobbar h?r...
   PktNrLevKod      := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
//   dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   PkgSupplierCode:= EgenPkgSupplierCode ;
   if NewPkgNo = 0 then
   Begin
    ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_23' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) )) ;
    Exit ;
   End ;
  End ;


  //Ett paket kan inte avregistreras flera ggr mot en produktionsm?tpunkt
  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, mtUserPropOwnerNo.AsInteger, PkgSupplierCode) ;
  if RegPointName <>
{TSI:IGNORE ON}
	'NO'
{TSI:IGNORE OFF}
 then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_3' (* ' finns inte' *) )) ;
    End
    else
     if Action = eaReserved then
     Begin
      ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_1' (* ' ?r reserverat av anv?ndare ' *) )+Res_UserName) ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_0' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_16' (* ' ?r redan avregistrerat mot m?tpunkt ' *) )+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' ?r redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

procedure TfrmRemovePkg.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
 mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_31' (* 'Ingen ?ndring' *) ) ;
end;

procedure TfrmRemovePkg.mtUserPropOwnerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_PIP.Active:= False ;
  cds_PIP.ParamByName('OwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;
  if mtUserPropRoleType.AsInteger = cLego then
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropVerkNo.AsInteger
  else
  cds_PIP.ParamByName('LegoOwnerNo').AsInteger:= mtUserPropOwnerNo.AsInteger ;

 if (ThisUser.CompanyNo = cVidaPackaging) or
 (ThisUser.CompanyNo = cOsterlovsta) then
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
  End
  else
  Begin
   cds_PIP.ParamByName('UserID').AsInteger:= -1 ;
  End ;

  cds_PIP.Active:= True ;
  cds_PIP.First ;
  mtUserPropPIPNo.AsInteger:= cds_PIPPIPNO.AsInteger ;
 End ;
end;

procedure TfrmRemovePkg.mtUserPropPIPNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  cds_LIP.Active:= False ;
  cds_LIP.ParamByName('PIPNo').AsInteger:= mtUserPropPIPNo.AsInteger ;
  cds_LIP.Active:= True ;
  cds_LIP.First ;
  mtUserPropLIPNo.AsInteger:= cds_LIPLIPNo.AsInteger ;
  acRemoveAllRowsExecute(Sender) ;
 End ;
end;

procedure TfrmRemovePkg.mtUserPropProducerNoChange(Sender: TField);
begin
 With dm_UserProps do
 Begin
  mtUserPropSupplierCode.AsString:= dmsContact.GetClientCode(mtUserPropProducerNo.AsInteger) ;

  cds_RegPoint.Active:= False ;
  cds_RegPoint.ParamByName('ClientNo').AsInteger:= mtUserPropProducerNo.AsInteger ;
  cds_RegPoint.Active:= True ;
  cds_RegPoint.First ;
  mtUserPropRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
 End ;
end;

procedure TfrmRemovePkg.acAvregistreraPaketExecute(Sender: TObject);
const
  LF = #10;
Begin
 if mtUserPropRegDate.AsDateTime > Now then
 Begin
  ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_32' (* 'Avregistreringsdatum f?r inte vara st?rre ?n aktuellt datum' *) ));
  Exit ;
 End ;

 With dmPkgs do
 Begin
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;
 End ;

 if ControlInvDate(Sender) then
 Begin
  if mtUserProp.State in [dsEdit, dsInsert] then
   mtUserProp.Post ;
  if MessageDlg(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_33' (* 'Vill du avregistrera paket mot m?tpunkt: ' *) )
  +Trim(lcPRODUCER.Text)
  +'/'+Trim(lcREGPOINT.Text)
  +LF+siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_34' (* 'Datum: ' *) )+deRegDate.Text
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   if dmPkgs.RemovePkgsFromInventory(mtUserProp) then
    RemoveAllSuccespkgs(Sender) ;
  End ; //if
 End
 else
 ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_35' (* 'Paket, markerade med r?d f?rg, kan inte avregistreras pga att avregistreringsdatum ?r f?re inventerings eller maxdatum i en inventering d?r lagergruppen ing?r' *) )) ;
end;

procedure TfrmRemovePkg.acPkgNoSerieExecute(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if mtLoadPackages.State <> dsBrowse then
   Try
   mtLoadPackages.Post ;
   Except
    on eDatabaseError do
    Begin
     Raise ;
    End ;
   End ;

  InsertPkgSerie(Sender) ;
 End ;
end;

procedure TfrmRemovePkg.acStartBarCodeScanningExecute(Sender: TObject);
begin
//Proc GetPkgPos l?ser in paketnr posistioner och l?ngder
 grdPkgsDBBandedTableView1ROWNO.SortOrder:= soAscending ;
 EgenPkgSupplierCode            := dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
 fScanPkgNo                     := TfScanPkgNo.Create(Self);
 Try
  fScanPkgNo.cbEgenLevKod.Caption:= siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_36' (* 'Scanna endast in paket med leverant?rskod ' *) ) + EgenPkgSupplierCode ;
  fScanPkgNo.ShowModal ;
 Finally
  fScanPkgNo.Free ;
 End ;
end;

procedure TfrmRemovePkg.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmRemovePkg.acAddRowExecute(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
 grdPkgs.SetFocus ;
end;

procedure TfrmRemovePkg.acRemoveRowExecute(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
 if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0))
 or ((mtLoadPackages.Active) AND (mtLoadPackages.State in [dsEdit, dsInsert])) then
 Begin
  mtLoadPackages.Delete ;
 End ;
end;

procedure TfrmRemovePkg.acDeletePkgFromSystemExecute(Sender: TObject);
begin
 if mtUserPropRegDate.AsDateTime > Now then
 Begin
  ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_32' (* 'Avregistreringsdatum f?r inte vara st?rre ?n aktuellt datum' *) ));
  Exit ;
 End ;
 if ControlInvDate(Sender) then
 Begin
  if mtUserProp.State in [dsEdit, dsInsert] then
   mtUserProp.Post ;
  if MessageDlg(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_38' (* 'Obs! paketen kommer att rensas bort fr?n databasen, Forts?tta?' *) ),
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   if MessageDlg(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_39' (* 'Obs! paketen kan inte ?terst?llas till lagret, Forts?tta?' *) ),
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    if dmPkgs.DeletePackagesFromSystem (mtUserProp) then
     Begin
      RemoveAllSuccespkgs(Sender) ;
     End ;
   End ; //if
  End ;//if
 End //if ControlInvDate(Sender) then
  else
   ShowMessage(siLangLinked_frmRemovePkg.GetTextOrDefault('IDS_40' (* 'Paket, markerade med r?d f?rg, kan inte avregistreras pga att avregistreringsdatum ?r mindre ?n inventerings eller maxdatum i inventering' *) )) ;
end;

procedure TfrmRemovePkg.acRemoveRowUpdate(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
  acRemoveRow.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
end;

procedure TfrmRemovePkg.acAddRowUpdate(Sender: TObject);
begin
 acAddRow.Enabled:= (mtUserProp.Active) and (mtUserPropOwnerNo.AsInteger > 0)
 and (mtUserPropProducerNo.AsInteger > 0) and (mtUserPropRegPointNo.AsInteger > 0) ;
end;

procedure TfrmRemovePkg.acAvregistreraPaketUpdate(Sender: TObject);
begin
 With dmPkgs do
 Begin
  acAvregistreraPaket.Enabled:= ((mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert]))) ;
 End ;
end;

procedure TfrmRemovePkg.RemotePkgEntry(PkgNos: TkbmMemTable);
var     //NoOfPkgsInSerie,
  x: Integer;
  ResultButton: word;
  Save_Cursor: TCursor;
  Res_UserName: string;
begin
  ResultButton := mrYes;
  with dmPkgs do
  begin
    mtUserProp.Edit;
    mtUserPropOwnerNo.AsInteger := PkgNos.FieldByName('OwnerNo').AsInteger;
    mtUserPropPIPNo.AsInteger := PkgNos.FieldByName('PIPNo').AsInteger;
    mtUserProp.Post;
    mtLoadPackages.IndexName := 'mtLoadPackagesIndex5';
    mtLoadPackages.DisableControls;
    try
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      try

        PkgNos.First;
        while not PkgNos.Eof do
        begin
          if dmsSystem.Pkg_Reserved(PkgNos.FieldByName('PACKAGENO').AsInteger, PkgNos.FieldByName('SUPP_CODE').AsString, Self.Name, Res_UserName) = ThisUser.UserName + '/' + Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
          begin
            if not mtLoadPackages.FindKey([PkgNos.FieldByName('PACKAGENO').AsInteger, PkgNos.FieldByName('SUPP_CODE').AsString]) then
            begin
              try

                sq_OneUniquePkg.Close;
                sq_OneUniquePkg.ParamByName('PackageNo').AsInteger := PkgNos.FieldByName('PACKAGENO').AsInteger;
                sq_OneUniquePkg.ParamByName('SupplierCode').AsString := PkgNos.FieldByName('SUPP_CODE').AsString;
                sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger := PkgNos.FieldByName('OwnerNo').AsInteger;
                sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo;
                sq_OneUniquePkg.ParamByName('Status').AsInteger := 1;
                sq_OneUniquePkg.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID;
                sq_OneUniquePkg.Open;
                mtLoadPackages.Insert;
                for x := 0 to 21 do
                  mtLoadPackages.Fields.Fields[x].AsVariant := sq_OneUniquePkg.Fields.Fields[x].AsVariant;
                mtLoadPackagesLoadDetailNo.AsInteger := Unique_No;
                mtLoadPackages.Post;
                Unique_No := Succ(Unique_No);
              except
                on eDatabaseError do
                begin
                  raise;
                  mtLoadPackages.Cancel;
                end;
              end;

            end; //if mtLoadPackages.FindKey(

          end  //if dmsSystem.Pkg_Reserved(
          else
          begin
            ShowMessage('Paketnr ' + PkgNos.FieldByName('PACKAGENO').AsString + '/' + PkgNos.FieldByName('SUPP_CODE').AsString + ' ?r reserverad av ' + Res_UserName);
          end;

          PkgNos.Next;
        end; //While
      finally
        Screen.Cursor := Save_Cursor;  { Always restore to normal }
      end;

    finally
      mtLoadPackages.IndexName := 'mtLoadPackagesIndex6';
      mtLoadPackages.EnableControls;
    end;
  end; // with
end;

procedure TfrmRemovePkg.acSearchRunNoExecute(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger := mtUserPropRegPointNo.AsInteger ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger := mtUserPropProducerNo.AsInteger ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
//  dmsPkg.mtUserProp.Edit ;
  seRunNr.Value := fSearchRunNo.cds_RunNosKrnr.AsInteger ;
//  dmsPkg.mtUserProp.Post ;
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;

procedure TfrmRemovePkg.acRemoveAllRowsExecute(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
 if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0))
 or ((mtLoadPackages.Active) AND (mtLoadPackages.State in [dsEdit, dsInsert])) then
 Begin
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
 End ;
end;

procedure TfrmRemovePkg.acRemoveAllRowsUpdate(Sender: TObject);
begin
 With dmPkgs do
  acRemoveAllRows.Enabled:= (mtLoadPackages.Active) and ((mtLoadPackages.RecordCount > 0)
  or (mtLoadPackages.State in [dsEdit, dsInsert])) ;
end;

function TfrmRemovePkg.ControlInvDate(Sender: TObject) : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  Try
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;
  Result  := True ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(mtLoadPackagesLOG_INVENTORY_NO.AsInteger, Self.mtUserPropRegDate.AsDateTime, InvDate, MaxDateMsg) ;
   if LastInvNr > -1 then
   Begin
    mtLoadPackages.Edit ;
    mtLoadPackagesInvNr.AsInteger := LastInvNr ;
    mtLoadPackages.Post ;
    Result  := False ;
   End ;
   mtLoadPackages.Next ;
  End ;
  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmRemovePkg.grdPkgsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn : TcxCustomGridTableItem;
  aValue  : Variant;
begin
 aColumn :=(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('InvNr');
 if (ARecord.Values[aColumn.Index] <> null) and (AItem <> nil) then
 Begin
  aValue := ARecord.Values[aColumn.Index];

  if (aValue > 0)  then
  AStyle:= cxStyleRedBg ;
 End ;
end;

end.
