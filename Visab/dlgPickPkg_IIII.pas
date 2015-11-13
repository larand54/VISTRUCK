unit dlgPickPkg_IIII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB,

  VidaType, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxContainer, cxCheckBox, cxDBEdit,
  cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator;

type
  TfrmPackagePicker_IIII = class(TForm)
    pnlButtons: TPanel;
    pnlGrid: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    grdPickPackageDBTableView1: TcxGridDBTableView;
    grdPickPackageLevel1: TcxGridLevel;
    grdPickPackage: TcxGrid;
    grdPickPackageDBTableView1PackageNo: TcxGridDBColumn;
    grdPickPackageDBTableView1SupplierCode: TcxGridDBColumn;
    grdPickPackageDBTableView1SupplierNo: TcxGridDBColumn;
    grdPickPackageDBTableView1LengthDescription: TcxGridDBColumn;
    grdPickPackageDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdPickPackageDBTableView1ProductNo: TcxGridDBColumn;
    grdPickPackageDBTableView1Status: TcxGridDBColumn;
    grdPickPackageDBTableView1Lager: TcxGridDBColumn;
    grdPickPackageDBTableView1LIPNo: TcxGridDBColumn;
    grdPickPackageDBTableView1IncludedInRun: TcxGridDBColumn;
    Panel1: TPanel;
    cbProductInRun: TcxDBCheckBox;
    ds_Settings: TDataSource;
    grdPickPackageDBTableView1InInventory: TcxGridDBColumn;
    cbOwnInventory: TcxDBCheckBox;
    procedure btnOKClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbProductInRunPropertiesChange(Sender: TObject);
  private
    FSupplierCode: string3;
    FSupplierNo: Integer;
    FProductNo : Integer ;
    FProductLengthNo : Integer ;
    FNoOfLengths : Integer ;
    FLIPNo  : Integer ;
    FStatus : Integer ;
    function getDataSource: TDataSource;
    procedure setDataSource(const Value: TDataSource);
    { Private declarations }
  public
    { Public declarations }
    property DataSource : TDataSource read getDataSource write setDataSource;
    property SupplierCodeForSelectedPkg : string3 read FSupplierCode;
    property SupplierNoForSelectedpkg   : Integer read FSupplierNo;
    property ProductNoForSelectedpkg   : Integer read FProductNo;
    property ProductLengthNoForSelectedpkg   : Integer read FProductLengthNo;
    property NoOfLengthsForSelectedpkg   : Integer read FNoOfLengths;
    property LIPNoForSelectedpkg   : Integer read FLIPNo;
    property StatusForSelectedpkg   : Integer read FStatus;
  end;

//var frmPackagePicker_II: TfrmPackagePicker_II;

implementation

{$R *.dfm}

uses
 // VidaUser_VP,
  dms_Vis_Vida;

{ TfrmPackagePicker }

function TfrmPackagePicker_IIII.getDataSource: TDataSource;
begin
  Result := grdPickPackageDBTableView1.DataController.DataSource ;
end;

procedure TfrmPackagePicker_IIII.setDataSource(const Value: TDataSource);
begin
  grdPickPackageDBTableView1.DataController.DataSource := Value;
end;

procedure TfrmPackagePicker_IIII.btnOKClick(Sender: TObject);
begin
  FSupplierCode := trim(grdPickPackageDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierCode']);
  FSupplierNo   := grdPickPackageDBTableView1.DataController.DataSource.DataSet.FieldValues['SupplierNo'] ;
  FProductNo    := grdPickPackageDBTableView1.DataController.DataSource.DataSet.FieldValues['ProductNo'] ;
  FLIPNo        := grdPickPackageDBTableView1.DataController.DataSource.DataSet.FieldValues['LIPNo'] ;
  FStatus       := grdPickPackageDBTableView1.DataController.DataSource.DataSet.FieldValues['Status'] ;
//  FProductLengthNo := grdPackages.DataSource.DataSet.FieldValues['ProductLengthNo'] ;
//  FNoOfLengths := grdPackages.DataSource.DataSet.FieldValues['NoOfLengths'] ;
end;

procedure TfrmPackagePicker_IIII.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
end;

procedure TfrmPackagePicker_IIII.cbProductInRunPropertiesChange(
  Sender: TObject);
begin
 With dm_Vis_Vida do
 Begin
  if FDm_Settings.State in [dsEdit] then
   FDm_Settings.Post ;
 End ;//With dm_Vis_Vida do  
end;

end.
