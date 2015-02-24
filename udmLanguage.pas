unit udmLanguage;

interface

uses
  System.SysUtils, System.Classes, siComp;

type
  TdmLanguage = class(TDataModule)
    siLang1: TsiLang;
    siLangDispatcher1: TsiLangDispatcher;
    procedure siLangDispatcher1LanguageChanged(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLanguage: TdmLanguage;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses dmsVidaSystem, dialogs;

procedure TdmLanguage.DataModuleCreate(Sender: TObject);
var
  Path : String;
begin
{$IFDEF DEBUG}
  path := ExtractFilePath(ParamStr(0));
{$ELSE}
  path := dmsSystem.GetLangPath();
{$ENDIF}
  path := path+ChangeFileExt(ExtractFileName(ParamStr(0)),'')+'.sib';
  assert(path <> '','Path to languagefiles not defined in database');
  siLangDispatcher1.FileName := Path;
end;

procedure TdmLanguage.siLangDispatcher1LanguageChanged(Sender: TObject);
begin
//  siLangDispatcher1.LoadAllFromFile(siLangDispatcher1.FileName);
end;

end.
