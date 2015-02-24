unit uFastReports;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxClass, frxRich, frxExportPDF, frxDBSet, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, siComp, siLngLnk;

type
  TdmFR = class(TDataModule)
    sp_vis_FR_Invoice: TFDStoredProc;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport2: TfrxPDFExport;
    frxRichObject1: TfrxRichObject;
    frxReport1: TfrxReport;
    siLangLinked_dmFR: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFR: TdmFR;

implementation

uses dmsDataConn;

{$R *.dfm}

end.
