//PROFILE-NO
{$IFDEF PROFILE} {$WARNINGS OFF} {$ENDIF }
unit UnitAboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg ;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    OKButton: TButton;
    Comments: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Execute ;
  end;


implementation

{$R *.dfm}

function GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin

  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);

end;

Class procedure TAboutBox.Execute ;
Begin

 With Self.Create(nil) do begin
  Version.Caption     := 'Version '+GetVersion ;
  ProductName.Caption := Application.Title ;
  Comments.Caption    := DateToStr(Date) ;
  try
   ShowModal ;
  Finally
   Free ;
  End
 End ;

End ;



end.
 
