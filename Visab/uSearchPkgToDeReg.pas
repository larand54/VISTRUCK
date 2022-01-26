unit uSearchPkgToDeReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxMaskEdit, cxCalendar,
  Menus, cxLookAndFeelPainters, ActnList, StdCtrls, kbmMemTable,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxContainer, cxLabel, cxButtons, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, SqlTimSt, FireDAC.Stan.Intf,
  FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, cxDBEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxDateRanges, dxScrollbarAnnotations ;

type
  TfSearchPkgToDeReg = class(TForm)
    grdPickPkgNos: TcxGrid;
    grdPickPkgNosDBTableView1: TcxGridDBTableView;
    grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn;
    grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1AM3: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn;
    grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn;
    grdPickPkgNosLevel1: TcxGridLevel;
    Panel25: TPanel;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxLabel2: TcxLabel;
    lcProductDisplayName: TcxDBLookupComboBox;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    mtProductProductDisplayName: TStringField;
    dsProduct: TDataSource;
    lcRawPIPNAME: TcxDBLookupComboBox;
    lcRawLIPName: TcxDBLookupComboBox;
    ActionList1: TActionList;
    acRefreshInventory: TAction;
    acAvregistreraMarkeradePaket: TAction;
    mtProductPIPNo: TIntegerField;
    mtProductLIPNo: TIntegerField;
    ds_RawPIP: TDataSource;
    ds_RawLIP: TDataSource;
    mtProductOrt: TStringField;
    mtProductLagergrupp: TStringField;
    ds_SelectedPkgNo: TDataSource;
    Panel1: TPanel;
    tePkgNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    cds_ProdInLager: TFDQuery;
    sq_SearchPkgNo: TFDQuery;
    sq_ProdOnlyL: TFDQuery;
    cds_RawLIP: TFDQuery;
    cds_RawPIP: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    sq_SearchPkgNoPackageNo: TIntegerField;
    sq_SearchPkgNoLEVKOD: TStringField;
    sq_SearchPkgNoproductno: TIntegerField;
    sq_SearchPkgNoPcsPerLength: TStringField;
    sq_SearchPkgNoAM3: TFloatField;
    sq_SearchPkgNoSTYCK: TIntegerField;
    sq_SearchPkgNoDateCreated: TSQLTimeStampField;
    sq_SearchPkgNoNOOFLENGTHS: TIntegerField;
    sq_SearchPkgNopackagetypeno: TIntegerField;
    sq_ProdOnlyLPackageNo: TIntegerField;
    sq_ProdOnlyLLEVKOD: TStringField;
    sq_ProdOnlyLproductno: TIntegerField;
    sq_ProdOnlyLPcsPerLength: TStringField;
    sq_ProdOnlyLAM3: TFloatField;
    sq_ProdOnlyLSTYCK: TIntegerField;
    sq_ProdOnlyLDateCreated: TSQLTimeStampField;
    sq_ProdOnlyLNOOFLENGTHS: TIntegerField;
    sq_ProdOnlyLpackagetypeno: TIntegerField;
    cds_RawPIPPIPNo: TIntegerField;
    cds_RawPIPORT: TStringField;
    cds_RawPIPOwnerNo: TIntegerField;
    cds_RawLIPLIPNo: TIntegerField;
    cds_RawLIPLAGERGRUPP: TStringField;
    cds_RawLIPPIPNo: TIntegerField;
    siLangLinked_fSearchPkgToDeReg: TsiLangLinked;
    teALMM: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    mtProductALMM: TFloatField;
    sq_ProdOnlyLMaxlangd: TFloatField;
    grdPickPkgNosDBTableView1MaxLangd: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleContent: TcxStyle;
    cxStyleHeading: TcxStyle;
    sq_SearchPkgNoMaxlangd: TFloatField;
    sq_ProdOnlyLProdukt: TStringField;
    sq_SearchPkgNoProdukt: TStringField;
    grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn;
    cxdtAvregDatum: TcxDateEdit;
    cxlblAvregDate: TcxLabel;
    cxbtnSelectManyPkgs: TcxButton;
    cxButton1: TcxButton;
    procedure acRefreshInventoryExecute(Sender: TObject);
    procedure acAvregistreraMarkeradePaketExecute(Sender: TObject);
    procedure mtProductProductNoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure mtProductPIPNoChange(Sender: TField);
    procedure lcRawPIPNAMEEnter(Sender: TObject);
    procedure lcRawPIPNAMEExit(Sender: TObject);
    procedure lcRawLIPNameEnter(Sender: TObject);
    procedure lcRawLIPNameExit(Sender: TObject);
    procedure mtProductLIPNoChange(Sender: TField);
    procedure tePkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mtProductALMMChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cxbtnSelectManyPkgsClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshLagerLista(const ProductNo : Integer) ;
    procedure AvregistreraMarkeradePaket ;
    procedure SelectManyPkgs(const aCount: integer);
  public
    { Public declarations }
    procedure RefreshLagerListaByPkgNo(const PackageNo : Integer) ;    
  end;

//var fSearchPkgToDeReg: TfSearchPkgToDeReg;

implementation

uses dm_SortOrder, dmsVidaSystem, dmsPkgWorkOrder, dmsDataConn, udmLanguage, VidaUser, uEntryFieldNoOfPkgs, dmsUserAdm;

{$R *.dfm}

procedure TfSearchPkgToDeReg.acRefreshInventoryExecute(Sender: TObject);
Var PIPNo, ProductNo : Integer ;
begin
// with dmsSortOrder, dmsSystem do
// Begin
  RefreshLagerLista(mtProductProductNo.AsInteger) ;
// End ;//With

{  if pgMAIN.ActivePage = tsEndProdukt then
   Begin
    ProductNo             := cds_SorOrdRowProductNo.AsInteger ;
    PIPNo                 := cds_SortOrderPIPNo.AsInteger ;
    LabelPIPName.Caption  := lcInvPlace.Text ;
    AvregOK               := False ;
   End
    else
     if pgMAIN.ActivePage = tsRawMtrl then
     Begin
      ProductNo             := cds_SORawProductNo.AsInteger ;
      PIPNo                 := cds_SortOrderRawPIPNo.AsInteger ;
      LabelPIPName.Caption  := lcRawPIPNAME.Text ;
      AvregOK               := True ;
     End ;


  RefreshLagerLista(ProductNo, PIPNo) ;

  mtProduct.Active                              := False ;
  cds_ProdInLager.Active                        := False ;
  sq_ProdInLager.ParamByName('PIPNo').AsInteger := PIPNo ;
  cds_ProdInLager.Active                        := True ;
  mtProduct.Active                              := True ;
  mtProduct.Insert ;
  mtProductProductNo.AsInteger  := ProductNo ;
  mtProduct.Post ; }

end;

procedure TfSearchPkgToDeReg.RefreshLagerLista(const ProductNo : Integer) ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 with dmsSortOrder, dmsSystem do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
  mtSelectedPkgNo.Active:= False ;
  mtSelectedPkgNo.Active:= True ;
  sq_ProdOnlyL.ParamByName('ProductNo').AsInteger  := ProductNo ;
  sq_ProdOnlyL.ParamByName('PIPNo').AsInteger      := mtProductPIPNo.AsInteger ;
  sq_ProdOnlyL.ParamByName('LIPNo').AsInteger      := mtProductLIPNo.AsInteger ;

  if mtProductALMM.AsFloat > 0 then
   sq_ProdOnlyL.ParamByName('ALMM').AsFloat        := mtProductALMM.AsFloat
    else
     sq_ProdOnlyL.ParamByName('ALMM').AsFloat        := 0 ;

  sq_ProdOnlyL.Open ;
  sq_ProdOnlyL.First ;
 While not  sq_ProdOnlyL.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 7 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant := sq_ProdOnlyL.Fields.Fields[x].AsVariant ;
   mtSelectedPkgNoMaxLangd.AsFloat  := sq_ProdOnlyLMaxlangd.AsFloat ;

  mtSelectedPkgNoPackageTypeNo.AsInteger      := sq_ProdOnlyLpackagetypeno.AsInteger ;
  mtSelectedPkgNoLIPNo.AsInteger              := mtProductLIPNo.AsInteger ;
  mtSelectedPkgNoProdukt.AsString             := sq_ProdOnlyLProdukt.AsString ;

  mtSelectedPkgNo.post ;
  sq_ProdOnlyL.Next ;
 End ;
 finally
  sq_ProdOnlyL.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;


procedure TfSearchPkgToDeReg.acAvregistreraMarkeradePaketExecute(Sender: TObject);
var
  PIPNo: Integer;
begin
  with dmsSortOrder do
  begin
    if cds_SortOrderTypeOfRunNo.AsInteger = 1 then
    begin
(*   Användarna störs av denna dialog LG - 2018-05-28
      case Application.MessageBox(PChar('Paketet avregistreras mot datum: ' + DateTimeToStr(cxdtAvregDatum.Date) + ' Är det ok?'), PChar('Konfirmera Avregistreringsdatum'), MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2) of
        IDOK:
          begin

          end;
        IDCANCEL:
          begin
            Exit;
          end;
      end;
*)
      AvregistreraMarkeradePaket;
    end;
    if cds_SORaw.State in [dsEdit, dsInsert] then
      cds_SORaw.Post;
    if cds_SORaw.ChangeCount > 0 then
    begin
      cds_SORaw.ApplyUpdates(0);
      cds_SORaw.CommitUpdates;
    end;

    dm_PkgWorkOrder.cds_UsedPkgs.Active := False;
    dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger;
    dm_PkgWorkOrder.cds_UsedPkgs.Active := True;

    cds_SORaw.Active := False;
    cds_SORaw.Active := True;

    RefreshLagerLista(mtProductProductNo.AsInteger);
  end;
end;

procedure TfSearchPkgToDeReg.AvregistreraMarkeradePaket ;
var
  Save_Cursor: TCursor;
  AvRegDate: TDateTime;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  try
    dmsSystem.mtSelectedPkgNo.Filter := 'MARKERAD = 1';
    dmsSystem.mtSelectedPkgNo.Filtered := True;
    if (dmsSortOrder.cds_SchedulerTaskStatusField.AsInteger = 1) or (dmsSortOrder.cds_SchedulerTaskStatusField.AsInteger = 2) then //om klar och köra eller pågående
      AvRegDate := Now
    else
      AvRegDate := cxdtAvregDatum.Date;
    try
      dmsSystem.mtSelectedPkgNo.First;
      while not dmsSystem.mtSelectedPkgNo.Eof do
      begin
        dm_PkgWorkOrder.RemovePkgsFromInventory(dmsSortOrder.cds_SchedulerVerkNo.AsInteger, dmsSystem.mtSelectedPkgNoPackageTypeNo.AsInteger, dmsSystem.mtSelectedPkgNoLIPNo.AsInteger, dmsSystem.mtSelectedPkgNoPaketnr.AsInteger, dmsSortOrder.cds_SchedulerOwnerNo.AsInteger, dmsSortOrder.cds_SchedulerResourceID.AsInteger, dmsSystem.mtSelectedPkgNoLEVKOD.AsString, AvRegDate,
//     SQLTimeStampToDateTime(dmsSortOrder.cds_SchedulerStart.AsSQLTimeStamp),
          dmsSystem.mtSelectedPkgNoProductNo.AsInteger);
        dmsSystem.mtSelectedPkgNo.Next;
      end; //While
    finally
      dmsSystem.mtSelectedPkgNo.Filtered := False;
    end;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfSearchPkgToDeReg.cxbtnSelectManyPkgsClick(Sender: TObject);
var
  dlg : TfEntryFieldNoOfPkgs;
begin
  dlg := TfEntryFieldNoOfPkgs.create(self);
  if (dlg.ShowModal = mrOK) and (dlg.Count > 0) then
    try
      selectManyPkgs(dlg.Count);
    finally
      dlg.Free;
    end;
end;

procedure TfSearchPkgToDeReg.cxButton1Click(Sender: TObject);
begin
 Close ;
end;

procedure TfSearchPkgToDeReg.mtProductProductNoChange(Sender: TField);
Var PIPNo, ProductNo : Integer ;
begin
 with dmsSortOrder, dmsSystem do
 Begin
  RefreshLagerLista(mtProductProductNo.AsInteger) ;
 End ;//With
end;

procedure TfSearchPkgToDeReg.FormCreate(Sender: TObject);
begin
 mtProduct.Active := True ;
 cxdtAvregDatum.Date := Now;
end;

procedure TfSearchPkgToDeReg.FormShow(Sender: TObject);
begin
  // Anpassa formulär efter användarpolicy
  dmUserAdm.ApplyRestrictionsOnForm(ThisUser.UserID, self);
  cxbtnSelectManyPkgs.Enabled := cxbtnSelectManyPkgs.visible; //Policyn gäller enbart visible och vi vill också aktivera/inaktivera knappen.
(*  if VidaUser.ThisUser.CompanyNo = 30177 then begin  // VIDA Tranemo AB
    cxbtnSelectManyPkgs.Enabled := true;
    cxbtnSelectManyPkgs.visible := true;
  end
  else begin
    cxbtnSelectManyPkgs.Enabled := false;
    cxbtnSelectManyPkgs.visible := false;
  end;
  *)
end;

procedure TfSearchPkgToDeReg.mtProductPIPNoChange(Sender: TField);
begin
  if not mtProductPIPNo.isNull then
  Begin
   cds_RawLIP.Filter:= 'PIPNo = ' + mtProductPIPNo.AsString ;
   cds_RawLIP.Filtered  := True ;

   if not cds_RawLIP.Locate('LIPNo', 0, []) then
   Begin
    cds_RawLIP.Insert ;
    cds_RawLIPLIPNo.AsInteger      := 0 ;
    cds_RawLIPPIPNo.AsInteger      := mtProductPIPNo.AsInteger ;
    cds_RawLIPLAGERGRUPP.AsString  := 'ALLA' ;
    cds_RawLIP.Post ;
    mtProductLIPNo.AsInteger       := 0 ;
   End ;

   if cds_RawLIP.RecordCount = 1 then
    mtProductLIPNo.AsInteger  := cds_RawLIPLIPNo.AsInteger ;
  End ;
end;

procedure TfSearchPkgToDeReg.lcRawPIPNAMEEnter(Sender: TObject);
begin
  if not dmsSortOrder.cds_SchedulerOwnerNo.IsNull then
  cds_RawPIP.Filter   := 'OwnerNo = ' + dmsSortOrder.cds_SchedulerOwnerNo.AsString
  else
  cds_RawPIP.Filter   := 'OwnerNo = -1' ;
  cds_RawPIP.Filtered := True ;
end;

procedure TfSearchPkgToDeReg.lcRawPIPNAMEExit(Sender: TObject);
begin
  cds_RawPIP.Filtered := False ;
end;

procedure TfSearchPkgToDeReg.lcRawLIPNameEnter(Sender: TObject);
begin
// With dmsSortOrder do
// Begin
  if mtProductPIPNo.isNull then
  cds_RawLIP.Filter:= 'PIPNo = -1'
  else
  cds_RawLIP.Filter:= 'PIPNo = ' + mtProductPIPNo.AsString ;
  cds_RawLIP.Filtered  := True ;
// End ;
end;

procedure TfSearchPkgToDeReg.lcRawLIPNameExit(Sender: TObject);
begin
 cds_RawLIP.Filtered  := False ;
end;

procedure TfSearchPkgToDeReg.mtProductALMMChange(Sender: TField);
begin
 with dmsSortOrder, dmsSystem do
 Begin
  RefreshLagerLista(mtProductProductNo.AsInteger) ;
 End ;//With
end;

procedure TfSearchPkgToDeReg.mtProductLIPNoChange(Sender: TField);
Var Save_Cursor : TCursor ;
begin
 Save_Cursor     := Screen.Cursor;
 Screen.Cursor   := crSQLWait;    { Show hourglass cursor }
 cds_ProdInLager.DisableControls ;
 Try
 cds_ProdInLager.Active := False ;
 cds_ProdInLager.ParamByName('PIPNo').AsInteger  := mtProductPIPNo.AsInteger ;

 if (mtProductLIPNo.AsInteger < 1) or (mtProductLIPNo.IsNull) then
 cds_ProdInLager.ParamByName('LIPNo').AsInteger  := 0
 else
 cds_ProdInLager.ParamByName('LIPNo').AsInteger  := mtProductLIPNo.AsInteger ;
 cds_ProdInLager.Active := True ;
 Finally
  cds_ProdInLager.EnableControls ;
  Screen.Cursor  := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfSearchPkgToDeReg.RefreshLagerListaByPkgNo(const PackageNo : Integer) ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 with dmsSortOrder, dmsSystem do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
  mtSelectedPkgNo.Active:= False ;
  mtSelectedPkgNo.Active:= True ;
  sq_SearchPkgNo.ParamByName('PackageNo').AsInteger   := PackageNo ;
  sq_SearchPkgNo.ParamByName('PIPNo').AsInteger       := mtProductPIPNo.AsInteger ;
  sq_SearchPkgNo.ParamByName('LIPNo').AsInteger       := mtProductLIPNo.AsInteger ;
  sq_SearchPkgNo.Open ;
  sq_SearchPkgNo.First ;
 While not  sq_SearchPkgNo.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 7 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant := sq_SearchPkgNo.Fields.Fields[x].AsVariant ;

   mtSelectedPkgNoMaxLangd.AsFloat  := sq_SearchPkgNoMaxlangd.AsFloat ;

  mtSelectedPkgNoPackageTypeNo.AsInteger      := sq_SearchPkgNopackagetypeno.AsInteger ;
  mtSelectedPkgNoLIPNo.AsInteger              := mtProductLIPNo.AsInteger ;
  mtSelectedPkgNoProdukt.AsString             := sq_SearchPkgNoProdukt.AsString ;

  mtSelectedPkgNo.post ;
  sq_SearchPkgNo.Next ;
 End ;
 finally
  sq_SearchPkgNo.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfSearchPkgToDeReg.SelectManyPkgs(const aCount: integer);
var
  grView: TcxGridDBTableView;
  i: integer;
  count: integer;
begin
  count := aCount;
  grView := grdPickPkgNosDBTableView1;
  with grView.DataController do begin
    if aCount > FilteredRecordCount then count := FilteredRecordCount;

    for I := 0 to count - 1 do begin
      FocusedRowIndex := i;
      SetEditValue(0, 1, GetItemValueSource(0));
    end;
//     Memo1.Lines.Add(DisplayTexts[FilteredRecordIndex[I], 0]);
  end;

end;

procedure TfSearchPkgToDeReg.tePkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 with dmsSystem do
 Begin
   if Key <> VK_RETURN then Exit;
   grdPickPkgNosDBTableView1.DataController.Filter.Clear ;
   RefreshLagerListaByPkgNo(StrToIntDef(Trim(tePkgNo.Text),0)) ;
   if mtSelectedPkgNo.Findkey([StrToIntDef(Trim(tePkgNo.Text),0)]) then
    grdPickPkgNos.SetFocus
 End;
end;

end.
