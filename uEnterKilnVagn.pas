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
  dxSkinOffice2013White, siComp, siLngLnk, System.Actions, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinOffice2019Colorful, dxDateRanges, dxScrollbarAnnotations,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light ;

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
    lcImp: TcxDBLookupComboBox;
    LabelIMP: TcxLabel;
    ds_KilnVagn: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    tePlannedDuration: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    grdVagnPkgsDBTableView1MatchingPT: TcxGridDBColumn;
    cxButton3: TcxButton;
    acRefresh: TAction;
    grdVagnPkgsDBTableView1Totalm3Actual: TcxGridDBColumn;
    cxButton4: TcxButton;
    acPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxLabel6: TcxLabel;
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure acRemovePackageExecute(Sender: TObject);
    procedure acPickPackagesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acRemovePackageUpdate(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
    RowNo : Integer ;
    procedure UpdateProductDesc(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String) ;
    procedure checkIMPProducts ;
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
    TypeOfLine  : Integer ;
  end;

var fEnterKilnVagn: TfEnterKilnVagn;

implementation

Uses VidaConst, VidaUtils, dmsVidaSystem,
  dmsVidaContact, VidaUser, dm_Inventory, uPickPkgNoTork , uKilnHandling;

{$R *.dfm}



procedure TfEnterKilnVagn.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With dmInventory do
 Begin
   if dmInventory.cds_KilnVagn.State in [dsEdit, dsInsert] then
    dmInventory.cds_KilnVagn.Post ;

   if cds_KilnVagn.RecordCount > 0 then
   Begin
    if (TypeOfLine = 2) and (cds_KilnVagnIMPNo.AsInteger < 1) then
    Begin
     ShowMessage('Please select a pressure treated type!') ;
     CanClose := False ;
    End;
   End;

   if CanClose then
    ControlVagn(cds_KilnVagnVagnNo.AsInteger) ;

   if TypeOfLine = 2 then
    CheckIMPProducts ;

   if CanClose then
    dmsSystem.Delete_ReservedPkgs ('fEnterKilnVagn') ;
 End;
end;

procedure TfEnterKilnVagn.checkIMPProducts ;
Var Match : Boolean ;
Begin
 With dmInventory do
 Begin
  Match := True ;
  if cds_KilnChargeRowsCheckIMP.Active then
   cds_KilnChargeRowsCheckIMP.Active  :=  False ;
  cds_KilnChargeRowsCheckIMP.ParamByName('KilnChargeNo').AsInteger  :=  cds_KilnVagnKilnChargeNo.AsInteger ;
  cds_KilnChargeRowsCheckIMP.ParamByName('VagnNo').AsInteger        :=  cds_KilnVagnVagnNo.AsInteger ;
  cds_KilnChargeRowsCheckIMP.Active := True ;
  cds_KilnChargeRowsCheckIMP.First ;
  while not cds_KilnChargeRowsCheckIMP.Eof do
  Begin
    if cds_KilnChargeRowsCheckIMPMatchingPT.AsString = 'NO matching P/T' then
      Match := False ;

    cds_KilnChargeRowsCheckIMP.Next ;
  End;
  if Match = False then
   ShowMessage('Matchande impregneringsprodukt saknas f?r en eller flera produkter f?r vald impregnering, se kolumnen "Matching P/T" vilka som inte matchar.' +
   ' L?gg upp de produkterna i produktregistret s? snart som m?jligt.') ;

 End;//With
End;

procedure TfEnterKilnVagn.FormCreate(Sender: TObject);
begin
 RowNo  := 1 ;
end;


procedure TfEnterKilnVagn.FormShow(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cds_KilnChargeRows.RecordCount > 0 then
  Begin
   RowNo  := cds_KilnChargeRows.RecordCount + 1 ;
   cds_KilnChargeRows.Last ;
  End
    else
     RowNo  := 1 ;
 End;

 if TypeOfLine = 1 then
 Begin
  lcIMP.Visible     := False ;
  LabelIMP.Visible  := False ;
 End
  else
   if TypeOfLine = 3 then
   Begin
    lcIMP.Visible     := False ;
    LabelIMP.Visible  := False ;
   End
    else
    lcImp.SetFocus ;
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
   if dmInventory.cds_KilnVagn.State in [dsEdit, dsInsert] then
    dmInventory.cds_KilnVagn.Post ;
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
begin
  with dmInventory do
  begin
    cds_KilnChargeRows.DisableControls;
    try
      mtSelectedPkgNo.Filter := 'Markerad = 1'; // siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_0' (* 'Markerad = 1' *) ) ;
      mtSelectedPkgNo.Filtered := True;
      try
        mtSelectedPkgNo.First;
        while not mtSelectedPkgNo.Eof do
        begin
          AddPkgsToVagn(Sender, mtSelectedPkgNoPAKETNR.AsInteger, mtSelectedPkgNoLEVKOD.AsString, -1 {product});
          mtSelectedPkgNo.Next;
        end;
      finally
        mtSelectedPkgNo.Filtered := False;
      end;
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
      cds_KilnChargeRows.Refresh;
      cds_KilnChargeRows.Last ;
    finally
      cds_KilnChargeRows.EnableControls;
    end;
  end;
end;

procedure TfEnterKilnVagn.acPrintExecute(Sender: TObject);
begin

//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('CHARGE ' + dmInventory.cds_KilnVagnNotering.AsString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfEnterKilnVagn.acRefreshExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cds_KilnVagn.State in [dsEdit, dsInsert] then
    cds_KilnVagn.Post ;
  cds_KilnChargeRows.Refresh ;
 End ;
end;

procedure TfEnterKilnVagn.acRemovePackageExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
 cds_KilnChargeRows.Delete ;
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
//      cds_KilnChargeRows.Refresh;
      cds_KilnChargeRows.Last ;
 End;
end;

procedure TfEnterKilnVagn.acRemovePackageUpdate(Sender: TObject);
begin
  acRemovePackage.Enabled :=  (dmInventory.cds_KilnChargeRows.Active) and (dmInventory.cds_KilnChargeRows.RecordCount > 0) ;
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
//  cds_KilnChargeRows.Active  := False ;
//  cds_KilnChargeRows.Active  := True ;
//  cds_KilnChargeRows.Last ;
  RowNo := succ(RowNo) ;
  //
  Except
   On E: EDatabaseError do
   Begin
    cds_KilnChargeRows.Cancel ;
    ShowMessage(E.Message + siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_1' (* ' :Paketnr finns upptaget i en tork redan.' *) )) ;
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
  PktNrLevKod       : String3 ;//Lev koden i paketnrstr?ngen
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
    Begin //L?NGA KODEN
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
        ShowMessage(siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_2' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) )) ;
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




//F?r inte anv?nda post sj?lv, det g?r rutinen automatiskt
  if Action = eaACCEPT then
  Begin
   // AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
    AddPkgsToVagn(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
    UpdateProductDesc(Sender, NewPkgNo,PkgSupplierCode) ;


  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_4' (* ' finns inte i lager ' *) ) ) ;
     Error      := True ;
    End
    else
     if Action = eaReserved then
      Begin
       ShowMessage(siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_6' (* ' ?r reserverat av ' *) ) + Res_UserName) ;
       Error      := True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ShowMessage(siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_3' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) +siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_8' (* ' ?r redan inmatat' *) )) ;
         Error      := True ;
        End ;
    End
     else
      Begin
       ShowMessage(siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_9' (* 'Paketnr saknas.' *) )) ;
       Error      := True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
end;

procedure TfEnterKilnVagn.UpdateProductDesc(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String) ;
Begin
 With dmInventory do
 Begin
  Try
  cds_KilnChargeRows.Edit ;
  cds_GetPakProdName.ParamByName('PackageNo').AsInteger   := PackageNo ;
  cds_GetPakProdName.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
  cds_GetPakProdName.ParamByName('IMPNo').AsInteger       := cds_KilnVagnIMPNo.AsInteger ;
  cds_GetPakProdName.Active := True ;

  cds_KilnChargeRowsProductDisplayName.AsString     := cds_GetPakProdNameProductDisplayName.AsString ;
  cds_KilnChargeRowsPcsPerLength.AsString           := cds_GetPakProdNamePcsPerLength.AsString ;
  cds_KilnChargeRowsMatchingPT.AsString             := cds_GetPakProdNameMatchingPT.AsString ;
//  cds_KilnChargeRowsRowNo.AsInteger        := RowNo ;
  cds_KilnChargeRows.Post ;
  cds_GetPakProdName.Active := False ;
//  cds_KilnChargeRows.Active  := False ;
//  cds_KilnChargeRows.Active  := True ;
//  cds_KilnChargeRows.Last ;

  //
  Except
   On E: EDatabaseError do
   Begin
    cds_KilnChargeRows.Cancel ;
    ShowMessage(E.Message + siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_1' (* ' :Paketnr finns upptaget i en tork redan.' *) )) ;
   End;
  End;
 End;
End;

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
  PkgNoPrefix       : Integer ;
  EnteredPkgNo      : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 if Length(mePackageNo.Text) > 0 then
 Begin
  PkgNoPrefix := fkilnHandling.mtUserPropMarketRegionNo.AsInteger ;



  if dmInventory.cds_KilnVagn.State in [dsEdit, dsInsert] then
   dmInventory.cds_KilnVagn.Post ;

  if PkgNoPrefix > 0 then
  Begin
   EnteredPkgNo     := StrToIntDef(mePackageNo.Text,0) ;
   mePackageNo.Text := inttostr(PkgNoPrefix) + mePackageNo.Text ;
  End;

  GetpackageNoEntered(Sender, mePackageNo.Text) ;
   with dmInventory do
   Begin
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
   //   cds_KilnChargeRows.Refresh;
    //  cds_KilnChargeRows.RefreshRecord(false) ;
      cds_KilnChargeRows.Last ;
   End;

 End;
 Timer1.Enabled   := True ;
 mePackageNo.Text := '' ;

 if (EnteredPkgNo = 9999) or (EnteredPkgNo = 999) or (EnteredPkgNo = 99) then
 Begin
   if MessageDlg('Do you want to increase prefix number?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     fkilnHandling.mtUserProp.Edit ;
     fkilnHandling.mtUserPropMarketRegionNo.AsInteger := fkilnHandling.mtUserPropMarketRegionNo.AsInteger + 1 ;
     fkilnHandling.mtUserProp.Post ;
   End;
 End;


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
      ErrorText := 'Paketnr '+NewValue+' ?r reserverat av anv?ndare '+Res_UserName ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        Error     := True ;
        ErrorText := 'Paketnr ' + NewValue + '/' + PkgSupplierCode + ' ?r redan avregistrerat mot m?tpunkt ' + RegPointName ;
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
