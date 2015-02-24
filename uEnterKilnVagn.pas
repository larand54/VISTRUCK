unit uEnterKilnVagn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, VidaType, Vcl.ActnList, cxDBLabel, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, siComp, siLngLnk, System.Actions ;

type
  TfEnterKilnVagn = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdVagnPkgsDBTableView1: TcxGridDBTableView;
    grdVagnPkgsLevel1: TcxGridLevel;
    grdVagnPkgs: TcxGrid;
    mePackageNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    bOK: TcxButton;
    Timer1: TTimer;
    grdVagnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn;
    grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn;
    grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn;
    grdVagnPkgsDBTableView1VagnNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1RowNo: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn;
    ActionList1: TActionList;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn;
    cxDBLabel1: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    acRemovePackage: TAction;
    cxButton2: TcxButton;
    acPickPackages: TAction;
    siLangLinked_fEnterKilnVagn: TsiLangLinked;
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acRemovePackageExecute(Sender: TObject);
    procedure acPickPackagesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    RowNo : Integer ;
    procedure GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
    procedure AddSelectedPkgsToVagn(Sender: TObject) ;
    procedure AddPkgsToVagn(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String;const ProductNo : Integer) ;
    function IdentifyPackageSupplier(
    const PkgNo : Integer;
    var PkgSupplierCode: String3;
    Var ProductNo : Integer;
    Var Res_UserName : String) : TEditAction;
  public
    { Public declarations }
  end;

//var fEnterKilnVagn: TfEnterKilnVagn;

implementation

Uses VidaConst, VidaUtils, dmsVidaSystem,
  dmsVidaContact, VidaUser, dm_Inventory, uPickPkgNoTork ;

{$R *.dfm}



procedure TfEnterKilnVagn.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmInventory do
 Begin
   ControlVagn(cds_KilnVagnVagnNo.AsInteger) ;
 End;
end;

procedure TfEnterKilnVagn.FormCreate(Sender: TObject);
begin
 RowNo  := 1 ;
end;

procedure TfEnterKilnVagn.FormShow(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cds_KilnChargeRows.RecordCount > 0 then
   RowNo  := cds_KilnChargeRows.RecordCount + 1
    else
     RowNo  := 1 ;
 End;
end;

function TfEnterKilnVagn.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo : Integer;
begin
 With dmInventory do
 Begin
 //check that package is available in inventory and Get supplier code
//                        ShowMessage('ThisUser.UserName+Self.Name ' + ThisUser.UserName+'/'+Self.Name);
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_ByLIPNo(PkgNo, cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger, SupplierNo, ProductNo);
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
 End;//With
end;

procedure TfEnterKilnVagn.acPickPackagesExecute(Sender: TObject);
var fPickPkgNoTork: TfPickPkgNoTork;
begin
 With dmInventory do
 Begin
  fPickPkgNoTork  := TfPickPkgNoTork.Create(nil) ;
  Try
   Open_cds_KilnChargeHdr ;
   fPickPkgNoTork.LIPNo := cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
   fPickPkgNoTork.PIPNo := cds_KilnChargeHdrKiln_PIPNo.AsInteger ;
   if fPickPkgNoTork.ShowModal = mrOK then
    AddSelectedPkgsToVagn(Sender) ;
  Finally
   FreeAndNil(fPickPkgNoTork) ;
  End;
 End;//With
end;

procedure TfEnterKilnVagn.AddSelectedPkgsToVagn(Sender: TObject) ;
Begin
 With dmInventory do
 Begin
  mtSelectedPkgNo.Filter    := 'Markerad = 1' ;
  mtSelectedPkgNo.Filtered  := True ;
  Try
  mtSelectedPkgNo.First ;
  while not mtSelectedPkgNo.Eof do
  Begin
   AddPkgsToVagn(Sender, mtSelectedPkgNoPAKETNR.AsInteger, mtSelectedPkgNoLEVKOD.AsString, -1 {product}) ;
   mtSelectedPkgNo.Next ;
  End ;
  Finally
   mtSelectedPkgNo.Filtered  := False ;
  End;
 End;
End;

procedure TfEnterKilnVagn.acRemovePackageExecute(Sender: TObject);
begin
 dmInventory.cds_KilnChargeRows.Delete ;
end;

procedure TfEnterKilnVagn.AddPkgsToVagn(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String;const ProductNo : Integer) ;
Begin
 With dmInventory do
 Begin
  Try
  cds_KilnChargeRows.Insert ;
  cds_KilnChargeRowsPackageNo.AsInteger    := PackageNo ;
  cds_KilnChargeRowsSupplierCode.AsString  := PkgSupplierCode ;
  cds_KilnChargeRowsRowNo.AsInteger        := RowNo ;
  cds_KilnChargeRows.Post ;
  RowNo := succ(RowNo) ;
  dmInventory.cds_KilnChargeRows.Refresh ;
  Except
   On E: EDatabaseError do
   Begin
    cds_KilnChargeRows.Cancel ;
    ShowMessage(E.Message + ' :Paketnr finns upptaget i en tork redan.') ;
   End;
  End;
 End;
End;



procedure TfEnterKilnVagn.GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
var
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ProductLengthNo   : Integer ;
  NoOfLengths       : Integer ;
  Error             : Boolean ;
  NewPkgNo          : Integer ;
  PktNrLevKod       : String3 ;//Lev koden i paketnrstr�ngen
begin
 With dmInventory do
 Begin
  NewPkgNo := 0 ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   if Length(Trim(PackageNo)) > 0 then
   Begin
    if Length(Trim(PackageNo)) > 10 then
    Begin //L�NGA KODEN
     Try
     NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
     Except
      on E: EConvertError do
         ShowMessage(E.ClassName + E.Message);
     End ;
     if NewPkgNo < 1 then
      Exit ;
     PktNrLevKod      := Copy(PackageNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
     PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;


     if PkgExistInInventoryKILN(NewPkgNo, cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger, PkgSupplierCode) then
      Action := eaAccept
        else
          Action :=  eaABANDON ;

    End
     else //Length < 11
      Begin
       NewPkgNo:= StrToIntDef(PackageNo,0) ;
       if NewPkgNo = 0 then
       Begin
        ShowMessage('Koden kunde inte �vers�ttas till ett Paketnr') ;
        Exit ;
       End ;


        Action := IdentifyPackageSupplier(
        NewPkgNo,
        PkgSupplierCode,
        ProductNo, Res_UserName);
      End ;
   End ; //if StrToInt(Trim(PackageNo)) > 0 then

   if NewPkgNo > 0 then
   Begin




//F�r inte anv�nda post sj�lv, det g�r rutinen automatiskt
  if Action = eaACCEPT then
  Begin
   // AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
    AddPkgsToVagn(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr ' + IntToStr(NewPkgNo) + ' finns inte i lager ' ) ;
     Error      := True ;
    End
    else
     if Action = eaReserved then
      Begin
       ShowMessage('Paketnr ' + IntToStr(NewPkgNo) + ' �r reserverat av ' + Res_UserName) ;
       Error      := True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ShowMessage('Paketnr ' + IntToStr(NewPkgNo) +' �r redan inmatat') ;
         Error      := True ;
        End ;
    End
     else
      Begin
       ShowMessage('Paketnr saknas.') ;
       Error      := True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
end;

procedure TfEnterKilnVagn.mePackageNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Error             : Boolean ;
  NewValue          : String;
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  PackageNo,
  Res_UserName      : String ;
  ErrorText,
  RegPointName      : String ;
begin
 if Key <> VK_RETURN then Exit;
 if Length(mePackageNo.Text) > 0 then
 GetpackageNoEntered(Sender, mePackageNo.Text) ;
 Timer1.Enabled   := True ;
 mePackageNo.Text := '' ;

 (*

 if Key <> VK_RETURN then
  Exit ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;


  try
  Error := False ;

  NewValue := IntToStr(StrToIntDef(mePackageNo.Text,0)) ;



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
   AddPkgsToVagn(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   //dmPkgs.mtLoadPackages.Insert ;
   //AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Error  := False ;
  End
   else
   if Action = eaREJECT then
    Begin
     Error     := True ;
     ErrorText  := 'Paketnr '+NewValue+' finns inte' ;
    End
    else
     if Action = eaReserved then
     Begin
      Error     := True ;
      ErrorText := 'Paketnr '+NewValue+' �r reserverat av anv�ndare '+Res_UserName ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        Error     := True ;
        ErrorText := 'Paketnr ' + NewValue + '/' + PkgSupplierCode + ' �r redan avregistrerat mot m�tpunkt ' + RegPointName ;
       End ;

    if Error then
    begin
   //  if mtUserPropGroupByBox.AsInteger = 0 then
      ShowMessage(ErrorText) ;
    end;

  finally
    Screen.Cursor         := Save_Cursor;  { Always restore to normal }
  //  TAvRegPkgNo.Enabled   := True ;
  end;     *)
end;

procedure TfEnterKilnVagn.Timer1Timer(Sender: TObject);
begin
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
 Timer1.Enabled:= False ;
end;


end.
