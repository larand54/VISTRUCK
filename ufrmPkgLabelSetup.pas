unit ufrmPkgLabelSetup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TfrmPkgLabelSetup = class(TForm)
    rgbDimension: TRadioGroup;
    rgbLength: TRadioGroup;
    rgbLanguage: TRadioGroup;
    ButtonedEdit1: TButtonedEdit;
    UpDown1: TUpDown;
    edNoOfCopies: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cboReportName: TComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure InitComboReportname;
    function GetReportNames: TStringList;
  public
    { Public declarations }
    class function Execute(var aLanguage, aNoOfCopies, adimFmt, aLenFmt: integer;
                            var aReportNo: integer): TModalResult;
  end;

var
  frmPkgLabelSetup: TfrmPkgLabelSetup;

implementation

{$R *.dfm}

uses udmFR;

{ TfrmPkgLabelSetup }

class function TfrmPkgLabelSetup.Execute(var aLanguage, aNoOfCopies, adimFmt,
  aLenFmt, aReportNo: integer): TModalResult;
begin
  if not assigned (frmPkglabelSetup) then
    frmPkgLabelSetup := TfrmPkgLabelSetup.Create(nil);
  frmPkgLabelSetup.ShowModal;
  result := frmPkgLabelSetup.ModalResult;
  aLanguage := frmPkglabelSetup.rgbLanguage.ItemIndex+1;
  aDimFmt := frmPkglabelSetup.rgbDimension.ItemIndex+1;
  aLenFmt := frmPkglabelSetup.rgbLength.ItemIndex+1;
  aNoOfCopies := strToInt(frmPkglabelSetup.edNoOfCopies.Text);
  aReportNo := dmFR.reportByName(frmPkglabelSetup.cboReportName.Text);
  if assigned(frmPkgLabelSetup) then freeAndNil(frmPkgLabelSetup);
end;

procedure TfrmPkgLabelSetup.FormCreate(Sender: TObject);
begin
  InitComboReportname;
end;

function TfrmPkgLabelSetup.GetReportNames: TStringList;
var
  items: TStringList;
begin
  result := dmFR.GetReportNamesByDocTyp(dmFR.getDocType('PaketLapp'))
end;

procedure TfrmPkgLabelSetup.InitComboReportname;
var
  Defaultreport: String;
begin
  defaultReport := 'PaketLapp_A4.fr3';
  cboReportName.Items := GetReportNames;
  if cboReportName.Items.Count = 0 then
    cboReportName.Text := DefaultReport;
  if cboReportName.Items.IndexOf(DefaultReport) >= 0 then
    cboReportName.ItemIndex := cboReportName.Items.IndexOf('PaketLapp_A4.fr3')
  else
    cboReportName.itemIndex := 0;
  cboReportName.Text := cboReportName.Items[cboReportName.itemIndex];
end;

end.
