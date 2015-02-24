unit uEnterLoadWeight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls;

type
  TfEnterLoadWeight = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdLoadWeightDBTableView1: TcxGridDBTableView;
    grdLoadWeightLevel1: TcxGridLevel;
    grdLoadWeight: TcxGrid;
    cxButton1: TcxButton;
    grdLoadWeightDBTableView1LoadNo: TcxGridDBColumn;
    grdLoadWeightDBTableView1Reference: TcxGridDBColumn;
    grdLoadWeightDBTableView1LoadWeightKG: TcxGridDBColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fEnterLoadWeight: TfEnterLoadWeight;

implementation

uses dmsVidaSystem;

{$R *.dfm}

procedure TfEnterLoadWeight.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 with dmsSystem do
 Begin
  if cds_LoadWeigth.State in [dsEdit] then
   cds_LoadWeigth.Post ;
 End ;
end;

end.
