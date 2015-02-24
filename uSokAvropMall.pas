unit uSokAvropMall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, Buttons, cxCheckBox, cxLabel, cxLookAndFeels;

type
  TfSokAvropMall = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdMallDBTableView1: TcxGridDBTableView;
    grdMallLevel1: TcxGridLevel;
    grdMall: TcxGrid;
    grdMallDBTableView1Form: TcxGridDBColumn;
    grdMallDBTableView1UserID: TcxGridDBColumn;
    grdMallDBTableView1Column1: TcxGridDBColumn;
    ActionList1: TActionList;
    acNew: TAction;
    acSave: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acDelete: TAction;
    BitBtn1: TBitBtn;
    grdMallDBTableView1LOObjectType: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    ds_mall: TDataSource;
    procedure acNewExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSokAvropMall: TfSokAvropMall;

implementation

uses UnitSokAvropFormular;

{$R *.dfm}

procedure TfSokAvropMall.acNewExecute(Sender: TObject);
begin
 With frmSokAvropFormular do
 Begin
  cds_Props.Insert ;
 End ;
end;

procedure TfSokAvropMall.acDeleteExecute(Sender: TObject);
begin
 With frmSokAvropFormular do
 Begin
  cds_Props.Delete ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;
 End ;
end;

procedure TfSokAvropMall.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{ With frmSokAvropFormular do
 Begin
  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;
 End ; }
end;

end.
