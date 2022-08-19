unit udmLoadID;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.Wait
  , VISTRUCK_Interfaces
;

type
  TLoadIDEvaluator = class(TInterfacedObject, ILoadIDEvaluator)
    private
      fLoadNo: integer;
    public
      function isNewLoadRequired(const aLoadID: string; const aLoadNo: integer): boolean;
      function getLoadNo: integer;
  end;

  TdmLoadID = class(TDataModule)
    qryPrelLoad: TFDQuery;
    con1: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Create(Sender: TObject; aDBConnection: TFDConnection); overload;
  end;

var
  dmLoadID: TdmLoadID;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDataModule1 }

procedure TdmLoadID.Create(Sender: TObject; aDBConnection: TFDConnection);
begin
  inherited create(TComponent(Sender));
end;

{ TLoadIDEvaluator }

function TLoadIDEvaluator.getLoadNo: integer;
begin
  result := fLoadNo;
end;

function TLoadIDEvaluator.isNewLoadRequired(const aLoadID: string;
  const aLoadNo: integer): boolean;
begin
  dmLoadID.qryPrelLoad.Active := false;
  dmLoadID.qryPrelLoad.ParamByName('LoadID').AsString := aLoadID;
  dmLoadID.qryPrelLoad.Active := true;
  result := dmLoadID.qryPrelLoad.RecordCount > 0;
end;

end.
