{$IFDEF PROFILE} {$WARNINGS OFF} {$ENDIF }
unit uArticle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fBaseFormA, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, DBClient, ActnList, ImgList, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  ExtCtrls, cxTextEdit, cxSplitter, cxImageComboBox, cxLabel, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client{$IFNDEF PROFILE};{$ELSE}{},Profint;{$ENDIF}

type
  TfArticle = class(TfrmBaseFormA)
    cxGrid1DBTableView1ArticleNo: TcxGridDBColumn;
    cxGrid1DBTableView1ArticleName: TcxGridDBColumn;
    Panel3: TPanel;
    grdKontoNrDBTableView1: TcxGridDBTableView;
    grdKontoNrLevel1: TcxGridLevel;
    grdKontoNr: TcxGrid;
    acAddStdKontoTyper: TAction;
    grdKontoNrDBTableView1ArticleNo: TcxGridDBColumn;
    grdKontoNrDBTableView1KontoNr: TcxGridDBColumn;
    grdKontoNrDBTableView1AccountType: TcxGridDBColumn;
    grdKontoNrDBTableView1DateCreated: TcxGridDBColumn;
    grdKontoNrDBTableView1CreatedUser: TcxGridDBColumn;
    cxButton7: TcxButton;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acAddStdKontoTyperExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fArticle: TfArticle;

implementation

uses dmsVidaSystem;

{$R *.dfm}

procedure TfArticle.FormCreate(Sender: TObject);
begin
{$IFDEF PROFILE}asm DW 310FH; call Profint.ProfStop; end; Try; asm mov edx,1143 or $6ECA0000; mov eax,self; call Profint.ProfEnter; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; {$ENDIF}
  inherited;
 With dmsSystem do
 Begin
//  cds_ArticleGroup.Active := False ;
//  cds_ArticleGroup.Active := True ;

//  FD_accountRow.Active    := False ;
//  FD_accountRow.Active    := True ;  
 End ;
{$IFDEF PROFILE}finally; asm DW 310FH; mov ecx,1143; call Profint.ProfExit; mov ecx,eax; DW 310FH; add[ecx].0,eax; FDc[ecx].4,edx; end; end; {$ENDIF}
end;

procedure TfArticle.acSaveExecute(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  if FD_accountRow.State in [dsEdit, dsInsert] then
   FD_accountRow.Post ;
  if FD_accountRow.ChangeCount > 0 then
  Begin
   FD_accountRow.ApplyUpdates(0) ;
   FD_accountRow.CommitUpdates ;
  End ;
 End ;}
end;

procedure TfArticle.acCancelChangesExecute(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  if FD_accountRow.State in [dsEdit, dsInsert] then
   FD_accountRow.Cancel ;
  if FD_accountRow.ChangeCount > 0 then
   FD_accountRow.CancelUpdates ;
 End ; }
end;

procedure TfArticle.acAddStdKontoTyperExecute(Sender: TObject);
Var x : Integer ;
begin
  inherited;
{ With dmsSystem do
 Begin
  For x := 1 to 4 do
  Begin
   if not FD_accountRow.Locate('AccountType', x, []) then
   Begin
    FD_accountRow.Insert ;
    FD_accountRowAccountType.AsInteger  := x ;
    FD_accountRow.Post ;
   End ;
  End ;
 End ;}
end;

procedure TfArticle.acSaveUpdate(Sender: TObject);
begin
  inherited;
{ With dmsSystem do
 Begin
  acSave.Enabled  := (FD_accountRow.Active)
  and (FD_accountRow.ChangeCount > 0) ;
 End ; }
end;

end.
