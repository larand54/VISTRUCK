unit uSetupUserOutput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxDBEdit;

type
  TfSetupUserOutput = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    lcUser: TcxDBLookupComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    grdUsersOutputProdunitsDBTableView1: TcxGridDBTableView;
    grdUsersOutputProdunitsLevel1: TcxGridLevel;
    grdUsersOutputProdunits: TcxGrid;
    grdUsersOutputProdunitsDBTableView1ProductionUnitNo: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1ClientNo: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1RegistrationPointNo: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1PositionID: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1RegPointName: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1PhysicalInventoryPointNo: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1Position: TcxGridDBColumn;
    ActionList1: TActionList;
    acCreateUserOutputs: TAction;
    cxButton1: TcxButton;
    grdUsersOutputProdunitsDBTableView1UserID: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1CreatedUser: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1DateCreated: TcxGridDBColumn;
    grdUsersOutputProdunitsDBTableView1Active: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdUsersOutputProdunitsDBTableView1SelectedPropertiesEditValueChanged(
      Sender: TObject);
    procedure acCreateUserOutputsExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// var fSetupUserOutput: TfSetupUserOutput;

implementation

{$R *.dfm}

uses dm_Inventory, VidaUser ;

procedure TfSetupUserOutput.acCreateUserOutputsExecute(Sender: TObject);
begin
 with dmInventory do
 begin
  cds_Users.FindKey([mtUserOutputUserID.AsInteger]) ;
  CreateUsersOutputProdunits(cds_UsersCompanyNo.AsInteger, mtUserOutputUserID.AsInteger) ;
  RefreshProductionUnits ;
 end;
end;

procedure TfSetupUserOutput.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 with dmInventory do
 begin
  mtUserOutput.Active :=  False ;
 end;
end;

procedure TfSetupUserOutput.FormShow(Sender: TObject);
begin
 with dmInventory do
 begin
  if mtUserOutput.Active then
   mtUserOutput.Active :=  False ;
  mtUserOutput.Active :=  True ;
  mtUserOutput.Insert ;
  mtUserOutputUserID.AsInteger  := ThisUser.UserID ;
  mtUserOutput.Post ;
 end;
end;

procedure TfSetupUserOutput.grdUsersOutputProdunitsDBTableView1SelectedPropertiesEditValueChanged(
  Sender: TObject);
begin
 with dmInventory do
 begin
  if sp_UsersOutputProdunitsActive.AsInteger = 0 then
   ChangeSelectedOutput(sp_UsersOutputProdunitsProductionUnitNo.AsInteger, mtUserOutputUserID.AsInteger,
   1, sp_UsersOutputProdunitsPositionID.AsInteger)
   else
      ChangeSelectedOutput(sp_UsersOutputProdunitsProductionUnitNo.AsInteger, mtUserOutputUserID.AsInteger,
   0, sp_UsersOutputProdunitsPositionID.AsInteger) ;
 end ;
end;

end.
