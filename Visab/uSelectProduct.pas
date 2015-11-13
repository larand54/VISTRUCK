unit uSelectProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxPC, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, StdCtrls, Buttons,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxNavigator, siComp, siLngLnk, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu;

type
  TfSelectProduct = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdProductsDBTableView1: TcxGridDBTableView;
    grdProductsLevel1: TcxGridLevel;
    grdProducts: TcxGrid;
    cds_ProdInLager: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    tcProductSelection: TcxTabControl;
    ds_ProdInLager: TDataSource;
    grdProductsDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdProductsDBTableView1ProductNo: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_fSelectProduct: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure tcProductSelectionChange(Sender: TObject);
  private
    { Private declarations }
    procedure LoadSQL ;
  public
    { Public declarations }
    SortingOrderNo, PIPNo : Integer ;
  end;

//var fSelectProduct: TfSelectProduct;

implementation

uses dmsDataConn, udmLanguage;

{$R *.dfm}

procedure TfSelectProduct.LoadSQL ;

procedure LoadProductsOnRun ;
Begin
 with cds_ProdInLager do
 Begin
  SQL.Clear ;
  SQL.Add('Select Distinct pr.ProductDisplayName, pr.ProductNo FROM') ;
  SQL.Add('dbo.RawMtrlBookedLink rml') ;
  SQL.Add('Inner Join dbo.RawMtrlBookedDtl SOR on sor.sspNo = rml.sspno') ;
  SQL.Add('and rml.OldBookingNo = sor.ID') ;
  SQL.Add('Inner Join dbo.Product pr on pr.ProductNo = SOR.BookedProductNo') ;
  SQL.Add('WHERE rml.SortingOrderNo = ' + IntToStr(SortingOrderNo)) ;
  SQL.Add('Order By pr.ProductDisplayName') ;

 End ;
End ;

procedure LoadProductsOnLager ;
Begin
 with cds_ProdInLager do
 Begin
  SQL.Clear ;
  SQL.Add('Select Distinct pr.ProductDisplayName, pr.ProductNo FROM') ;
  SQL.Add('dbo.PackageNumber pn') ;
  SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
  SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTypeNo') ;
  SQL.Add('Inner Join dbo.Product pr on pr.ProductNo = pt.ProductNo') ;
  SQL.Add('WHERE PIP.PhysicalInventoryPointNo = ' + IntToStr(PIPNo)) ;
  SQL.Add('AND pn.Status = 1') ;
  SQL.Add('Order By pr.ProductDisplayName') ;
 End ;
End ;

procedure LoadAllProducts ;
Begin
 with cds_ProdInLager do
 Begin
  SQL.Clear ;
  SQL.Add('Select Distinct pr.ProductDisplayName, pr.ProductNo FROM') ;
  SQL.Add('dbo.Product pr') ;
  SQL.Add('Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = Pr.ProductGroupNo') ;
  SQL.Add('WHERE PG.SequenceNo = 0') ;
  SQL.Add('Order By pr.ProductDisplayName') ;
 End ;
End ;


Begin
 cds_ProdInLager.Active := False ;
 Case tcProductSelection.TabIndex of
  0 : Begin
       LoadProductsOnRun ;
      End ;
  1 : Begin
       LoadProductsOnLager ;
      End ;
  2 : Begin
       LoadAllProducts ;
      End ;
 End ; //Case
 cds_ProdInLager.Active := True ;
End ;



procedure TfSelectProduct.FormShow(Sender: TObject);
begin
 LoadSQL ;
end;

procedure TfSelectProduct.tcProductSelectionChange(Sender: TObject);
begin
 LoadSQL ;
end;

end.
