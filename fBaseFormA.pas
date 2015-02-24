{$IFDEF PROFILE} {$WARNINGS OFF} {$ENDIF }
// =============================================================================
//
//  FILE           :  fDBForm.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Base form from which nested forms are derived.
//                    Do not create instances of this form. Instead, define
//                    function-specific forms that inherit from this one
//                    and create instances of those.
//
//
//  NOTES          :  This unit was created by copying the unit of the same
//                    name in the original VidaSys project, and removing the
//                    code behind it to eliminate dependencies on the rest of
//                    the project. New code will be built up as required.
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//  2002.12.09  DMc       001     Copied from VidaSys project.
//
//                                Commented out all code behind the form.
//
//                                Added new code for DataValidate method to
//                                ensure no instances of this form are created.
//
//                                Removed empty methods & made them abstract.
//
//                                Reinstated FormClose event handler.
//
//                                Re-coded IsModified method to avoid checking
//                                all the datasets. Instead, maintain a flag
//                                FIsModified as changes are made/saved/cancelled.
//
//                                Added constructor; initialise FIsModified flag.
//
//
//  2002.12.10  DMc       002     Made FIsModified protected, not private.
//
//
//
//
//
//
//
unit fBaseFormA;

interface

uses
  dmsVidaSystem,
  ActnList,
  Classes,
  ComCtrls,
  Controls,
  ExtCtrls,
  Forms,
  ImgList,
  ToolWin,
  Windows, dxBar, dxBarExtItems, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,

  Messages,
  SysUtils,
  Variants,

  cxImageComboBox, cxTextEdit,
  cxGridExportLink,
  cxExport, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxCalendar, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPScxCommon,
  dxPSCore, cxCalc,
  cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxNavigator, siComp,
  siLngLnk, System.Actions  {$IFNDEF PROFILE};{$ELSE}{},Profint;{$ENDIF}


Const
    CM_MOVEIT = WM_USER + 1;

type

  TfrmBaseFormA = class(TForm)
    ActionList_DBForm: TActionList;
    imglistActions: TImageList;
    atExit: TAction;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acAddRecord: TAction;
    acDeleteRecord: TAction;
    Panel1: TPanel;
    acSave: TAction;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    acCancelChanges: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxButton6: TcxButton;
    acPrintTable: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Panel2: TPanel;
    cxButton5: TcxButton;
    PopupMenu2: TPopupMenu;
    LggtillF22: TMenuItem;
    ngraF42: TMenuItem;
    abortF52: TMenuItem;
    SkrivutF82: TMenuItem;
    SkrivutF83: TMenuItem;
    StngF122: TMenuItem;
    FDQuery1: TFDQuery;
    siLangLinked_frmBaseFormA: TsiLangLinked;

    procedure atExitExecute(Sender: TObject);
    procedure acAddRecordExecute(Sender: TObject);
    procedure acDeleteRecordExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acDeleteRecordUpdate(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure cxGrid1DBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure acPrintTableExecute(Sender: TObject);

  private
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;

//    procedure PostDataSet(DataSet: TDataSet);

  protected
//    FDataSets: Array [1..15] of TSDQuery;  // the first one is main dataset
//    FDataSetCount: Integer;

    FIsModified : Boolean;

    function  DataSaved : Boolean ;
    procedure ApplyModifiedEnter;     virtual; abstract;
    procedure ApplyModifiedExit;      virtual; abstract;
    procedure CancelModifiedEnter;    virtual; abstract;
    procedure CancelModifiedExit;     virtual; abstract;

    function  DataValidate : Boolean; virtual;

    function  ApplyModified: Boolean;
    function  IsModified: Boolean;
    procedure CancelModified;
//    function  SaveCurrent: Boolean;

//    procedure EditRecord(IDValue: Integer); virtual;

//    procedure AddRecord(Dataset: TDataset);
//    procedure DeleteRecord(DataSet: TDataSet);

  public
    Class procedure Execute ;
    constructor Create(AOwner : TComponent); override;


  end;


implementation

{$R *.dfm}

uses
  Dialogs ;

Class procedure TfrmBaseFormA.Execute ;
Begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,819 or $6ECA0000; xor eax,eax; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 With Self.Create(nil) do begin

  try
   ShowModal ;
  Finally
   Free ;
  End
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,819; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End ;

procedure TfrmBaseFormA.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,820 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
   AGoForward := Boolean(Msg.WParam);
   cxGrid1DBTableView1.Controller.EditingController.HideEdit(True);
   cxGrid1DBTableView1.Controller.FocusNextCell(AGoForward)
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,820; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

function TfrmBaseFormA.DataSaved : Boolean ;
Begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,821 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 Result:= True ;
 if ((DataSource1.DataSet as TFDQuery).ChangeCount > 0)
 or (DataSource1.DataSet.State in [dsEdit, dsInsert]) then
  Result:= False ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,821; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
End ;

//-------------------------------------------------------------------
//procedure TfrmDBForm.PostDataSet(DataSet: TDataSet);
//begin
//  with DataSet do
//    if Active then
//      if (State = dsEdit) or (State = dsInsert) then Post;
//end;



//-------------------------------------------------------------------
function TfrmBaseFormA.DataValidate: Boolean;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,822 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  assert(False,'TfrmDBForm.DataValidate called.');
  {$IFDEF DEBUG}
  ShowMessage('LOGIC ERROR: TfrmDBForm Descendants MUST override DataValidate');
  {$ENDIF}
  // In descendants of this form, override this method.
  // If data validation is required, implement appropriate
  // checks there, and return True or False.
  // If no validation is required, include a comment to
  // that effect and return True.
  // Do not call inherited from your descendant class.
  Result := False;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,822; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;




//-------------------------------------------------------------------
{ TODO 2 -oDuncan -cReinstate : TfrmDBForm.ApplyModified }
function TfrmBaseFormA.ApplyModified : Boolean;
//var
//  i: Integer;
//  SavePlace: TBookmark;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,823 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
//  Result := False;
//
//  for i:=1 to FDataSetCount do
//    PostDataset(FDataSets[i]);
//
//  if not DataValidate then Exit;
//
//  try
//    ApplyModifiedEnter;
//
//    for i:=1 to FDataSetCount do
//    begin
//      if FDataSets[i].Active and FDataSets[i].UpdatesPending then
//      begin
//        SavePlace := FDataSets[i].GetBookmark;
//        FDataSets[i].ApplyUpdates;
//        FDataSets[i].CommitUpdates;
//        if (SavePlace <> nil) and FDataSets[i].BookmarkValid(SavePlace) then
//        begin
//          FDataSets[i].GotoBookmark(SavePlace);
//          FDataSets[i].FreeBookmark(SavePlace);
//        end;
//      end;
//    end;
//
//    Result := True;
//  except
//    CancelModified;
//  end;
//  ApplyModifiedExit;
  Result := TRUE; // Keep compiler happy for now. Change this later.
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,823; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

//-------------------------------------------------------------------
function TfrmBaseFormA.IsModified: Boolean;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,824 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  Result := FIsModified;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,824; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;



//-------------------------------------------------------------------
procedure TfrmBaseFormA.CancelModified;
//var
//  i: Integer;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,825 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
//  try
//    CancelModifiedEnter;
//    for i:=1 to FDataSetCount do
//      if FDataSets[i].Active then FDataSets[i].CancelUpdates;
//  finally
//    CancelModifiedExit;
//  end;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,825; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

//-------------------------------------------------------------------
//function TfrmDBForm.SaveCurrent: Boolean;
//var
//  wRet: Word;
//begin
//  Result := True;
//
//  if IsModified then
//  begin
//    wRet := MessageDlg('Save changed to Server?', mtConfirmation, mbYesNoCancel, 0);
//    case wRet of
//    mryes: Result := ApplyModified;
//    mrNo: CancelModified;
//    mrCancel: Result := False;
//    end;
//  end;
//end;



//-------------------------------------------------------------------
procedure TfrmBaseFormA.atExitExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,826 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  Close;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,826; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

//-------------------------------------------------------------------
//procedure TfrmDBForm.AddRecord(Dataset: TDataset);
//begin
//  DataSet.Append;
//end;

//-------------------------------------------------------------------
//procedure TfrmDBForm.DeleteRecord(DataSet: TDataSet);
//begin
//  if DataSet.Eof then Exit;
//
//  if MessageDlg('Do you want to delete?', mtConfirmation, mbyesNoCancel, 0) <> mryes then Exit;
//  DataSet.Delete;
//end;


constructor TfrmBaseFormA.Create(AOwner: TComponent);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,827 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  inherited;
  FIsModified := FALSE;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,827; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acAddRecordExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,828 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 cxGrid1DBTableView1.DataController.Insert ;
 cxGrid1.SetFocus ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,828; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acDeleteRecordExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,829 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}

 cxGrid1DBTableView1.DataController.DeleteSelection ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,829; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.FormCreate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,830 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 DataSource1.DataSet.Active:= False ;
 DataSource1.DataSet.Active:= True ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,830; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  wRet: Word;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,831 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  if DataSaved = False then begin

    wRet := MessageDlg('Data är inte sparade, vill du spara?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    case wRet of

      mrYes    :  Begin
                   acSaveExecute(Sender) ;
                   CanClose:= True ;
                  End ;


      mrNo     :   CanClose:= True ;

      mrCancel :   CanClose:= False ;

    end;//case

  end;

// if CanClose then
//  DataSource1.DataSet.Active:= False ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,831; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acSaveExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,832 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 if (DataSource1.DataSet as TFDQuery).State in [dsEdit, dsInsert] then
 Begin
  (DataSource1.DataSet as TFDQuery).Post ;
 End ;

 if (DataSource1.DataSet as TFDQuery).ChangeCount > 0 then
 Begin
  (DataSource1.DataSet as TFDQuery).ApplyUpdates(0) ;
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,832; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acSaveUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,833 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 acSave.Enabled:= not DataSaved  ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,833; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acDeleteRecordUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,834 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 acDeleteRecord.Enabled:= (DataSource1.DataSet as TFDQuery).RecordCount > 0 ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,834; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acCancelChangesExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,835 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 (DataSource1.DataSet as TFDQuery).CancelUpdates ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,835; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acCancelChangesUpdate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,836 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 acCancelChanges.Enabled:= not DataSaved ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,836; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.cxGrid1DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
//var AGoForward: Boolean;
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,837 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
//      Begin
//         AGoForward := True ;//Boolean(Msg.WParam);
//   grdLoadPlanDBBandedTableView1.Controller.EditingController.HideEdit(True);
//   grdLoadPlanDBBandedTableView1.Controller.FocusNextCell(AGoForward)
//      End
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,837; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfrmBaseFormA.acPrintTableExecute(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,838 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
 dxComponentPrinter1Link1.ReportTitleText:= self.Caption ;
 dxComponentPrinter1Link1.PrinterPage.Orientation:= poPortrait ;
// dxComponentPrinter1Link2.PreviewWindow.ZoomFactor:= 200 ;
 dxComponentPrinter1Link1.ShrinkToPageWidth:= True ;
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,838; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

end.
