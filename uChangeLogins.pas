unit uChangeLogins;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, siComp, siLngLnk, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, cxLabel,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light ;

type
  TOKHelpBottomDlg = class(TForm)
    EFD_Name: TEdit;
    Button1: TButton;
    Label1: TLabel;
    eDatabas: TEdit;
    Label2: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_OKHelpBottomDlg: TsiLangLinked;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxlblTestDB: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    procedure HelpBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxLabel1DblClick(Sender: TObject);
    procedure cxLabel2DblClick(Sender: TObject);
    procedure cxLabel3DblClick(Sender: TObject);
    procedure cxlblTestDBDblClick(Sender: TObject);
    procedure cxlblTestDBClick(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
    procedure cxLabel5Click(Sender: TObject);
    procedure cxLabel6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var OKHelpBottomDlg: TOKHelpBottomDlg;

implementation

uses dmsDataConn;

{$R *.dfm}

procedure TOKHelpBottomDlg.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TOKHelpBottomDlg.Button1Click(Sender: TObject);
begin
  inherited;
 EFD_Name.Text:= dmsConnector.Get_AD_Name ;
end;

procedure TOKHelpBottomDlg.Button2Click(Sender: TObject);
begin
  inherited;
 eDatabas.Text:= dmsConnector.Org_DB_Name ;
end;

procedure TOKHelpBottomDlg.cxLabel1DblClick(Sender: TObject);
begin
  EFD_Name.Text :=  cxLabel1.Caption ;
end;

procedure TOKHelpBottomDlg.cxLabel2DblClick(Sender: TObject);
begin
  EFD_Name.Text :=  cxLabel2.Caption ;
end;

procedure TOKHelpBottomDlg.cxLabel3DblClick(Sender: TObject);
begin
  EFD_Name.Text :=  cxLabel3.Caption ;
end;

procedure TOKHelpBottomDlg.cxLabel4Click(Sender: TObject);
begin
  EFD_Name.Text :=  cxLabel4.Caption ;
end;

procedure TOKHelpBottomDlg.cxLabel5Click(Sender: TObject);
begin
 eDatabas.Text := cxLabel5.Caption;
end;

procedure TOKHelpBottomDlg.cxLabel6Click(Sender: TObject);
begin
 EFD_Name.Text :=  cxLabel6.Caption ;
end;

procedure TOKHelpBottomDlg.cxlblTestDBClick(Sender: TObject);
begin
 eDatabas.Text := cxlblTestDB.Caption;
end;

procedure TOKHelpBottomDlg.cxlblTestDBDblClick(Sender: TObject);
begin
  eDatabas.Text := cxlblTestDB.Caption;
end;

end.

