unit uLGLogg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FPgm: string;
  public
    { Public declarations }
    procedure addText(const aForm,aId,aText: string );
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.addText(const aForm, aId, aText: string);
var
  dt: TDateTime;
  s: string;
begin
  s := DateTimeToStr(now) + ' - ' + Format('Form:%s, ID: %s, Text: %s',[aForm,aID,aText]);
  Memo1.Lines.Add(s);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('c:\temp\'+FPgm+'.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  FPgm := paramStr(0);
end;

end.
