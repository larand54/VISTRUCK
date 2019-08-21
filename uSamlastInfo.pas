unit uSamlastInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList,
  cxLabel, cxContainer;

type
  TfSamLastInfo = class(TForm)
    Panel1: TPanel;
    cxSamlastDBTableView1: TcxGridDBTableView;
    cxSamlastLevel1: TcxGridLevel;
    cxSamlast: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    acExit: TAction;
    dsSamlast: TDataSource;
    cxSamlastDBTableView1ProductDescription: TcxGridDBColumn;
    cxSamlastDBTableView1LengthDescription: TcxGridDBColumn;
    cxSamlastDBTableView1LO: TcxGridDBColumn;
    cxSamlastDBTableView1Mill: TcxGridDBColumn;
    cxSamlastDBTableView1LoadNo: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxLabel1: TcxLabel;
    procedure acExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSamLastInfo: TfSamLastInfo;

implementation

{$R *.dfm}

uses dmcVidaOrder, fLoadOrder;

procedure TfSamLastInfo.acExitExecute(Sender: TObject);
begin
 Close ;
end;

end.
