unit uAttest_SetHdrInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, cxLabel, cxMemo, cxTextEdit,
  cxMaskEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, DB, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfAttest_SetHdrInfo = class(TForm)
    meSupplier_InvoiceDate: TcxMaskEdit;
    teSupplier_InvoiceNo: TcxTextEdit;
    memoNote: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxLabel4: TcxLabel;
    labelAmount: TcxLabel;
    MemSped: TFDMemTable;
    MemSpedShipperNO: TIntegerField;
    MemSpedShipper: TStringField;
    lcShipper: TcxDBLookupComboBox;
    dsMemSped: TDataSource;
    cxLabel5: TcxLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ClickCancel : Boolean ;
  public
    { Public declarations }
  end;

//var fAttest_SetHdrInfo: TfAttest_SetHdrInfo;

implementation

uses dmsVidaContact;

{$R *.dfm}

procedure TfAttest_SetHdrInfo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var Dt : TDateTime ;
begin
 if ClickCancel = False then
 Begin
 Try
 Dt := StrToDateTime(meSupplier_InvoiceDate.Text) ;
     except
      On E: Exception do
      Begin
       ShowMessage(E.Message) ;
       CanClose := False ;
       Raise ;
      End ;
     end;
 End
 else
 CanClose := True ;    
end;

procedure TfAttest_SetHdrInfo.BitBtn2Click(Sender: TObject);
begin
 ClickCancel := True ;
end;

procedure TfAttest_SetHdrInfo.FormCreate(Sender: TObject);
begin
 ClickCancel := False ;
end;

end.
