unit uPickPkgNo ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, kbmMemTable, cxMaskEdit,
  cxCheckBox, cxCalendar, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, FMTBcd, DBClient, Provider, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Vcl.Menus, cxButtons, siComp, siLngLnk, System.Actions, cxGridCustomPopupMenu,
  cxGridPopupMenu;

  const ProductAndLength = 1 ;
  MatchingProduct = 2 ;
  AddLOPkgsWithMatchingProduct = 3 ;
  ShowAllAddLOPkgs = 4 ;
  ShowTM = 5 ;
  ShowLIP = 6 ;
  ShowLOPlusRef = 7 ;


type
  TfPickPkgNo = class(TForm)
    grdPickPkgNosDBTableView1: TcxGridDBTableView;
    grdPickPkgNosLevel1: TcxGridLevel;
    grdPickPkgNos: TcxGrid;
    Panel1: TPanel;
    ds_SelectedPkgNo: TDataSource;
    grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn;
    grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn;
    grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn;
    Panel2: TPanel;
    grdPickPkgNosDBTableView1AM3: TcxGridDBColumn;
    grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn;
    grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    bbMarkAll: TBitBtn;
    bbUnMarkAll: TBitBtn;
    LabelProduct: TLabel;
    LabelLength: TLabel;
    LabelPIPName: TLabel;
    Label1: TLabel;
    LabelNoOfPkgsMarked: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbFilterOnLength: TcxCheckBox;
    dxBarManager1: TdxBarManager;
    pmPickPkgNosGrid: TdxBarPopupMenu;
    ActionList1: TActionList;
    acPkgInfo: TAction;
    dxBarButton1: TdxBarButton;
    LabelOwnerTitle: TLabel;
    LabelOwner: TLabel;
    lbShowMatchingProductAndLength: TdxBarLargeButton;
    acMarkAll: TAction;
    acUnmarkAll: TAction;
    acShowAddLOPkgsWithMatchingProduct: TAction;
    acShowAllAddLOPkgs: TAction;
    acShowMatchingProductAndLength: TAction;
    acShowMatchingProduct: TAction;
    lbShowMatchingProduct: TdxBarLargeButton;
    lbShowAddLOPkgsWithMatchingProduct: TdxBarLargeButton;
    lbShowAllAddLOPkgs: TdxBarLargeButton;
    Label5: TLabel;
    LabelLONr: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    dsProduct: TDataSource;
    mtProductProductDisplayName: TStringField;
    lcProductDisplayName: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    lbShowTM: TdxBarLargeButton;
    acShowPkgsWithSameActDimOnly: TAction;
    grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn;
    sq_PaketLista: TFDQuery;
    sq_PaketListaPackageNo: TIntegerField;
    sq_PaketListaLEVKOD: TStringField;
    sq_PaketListaproductno: TIntegerField;
    sq_PaketListaPcsPerLength: TStringField;
    sq_PaketListaAM3: TFloatField;
    sq_PaketListaSTYCK: TIntegerField;
    sq_PaketListaDateCreated: TSQLTimeStampField;
    sq_PaketListaNOOFLENGTHS: TIntegerField;
    sq_PaketListaProdukt: TStringField;
    cds_ProdInLager: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    sq_PaketListaStatusHTF: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleSilver: TcxStyle;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    teRef: TcxTextEdit;
    teInfo1: TcxTextEdit;
    teInfo2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    sq_PaketListaREFERENCE: TStringField;
    sq_PaketListaBL_NO: TStringField;
    sq_PaketListaInfo2: TStringField;
    grdPickPkgNosDBTableView1Referens: TcxGridDBColumn;
    grdPickPkgNosDBTableView1Info1: TcxGridDBColumn;
    grdPickPkgNosDBTableView1Info2: TcxGridDBColumn;
    acShowPkgsUsingSearch: TAction;
    lbSearch: TdxBarLargeButton;
    sq_PaketListaPaketstorlek: TStringField;
    sq_PaketListaCertfiering: TStringField;
    grdPickPkgNosDBTableView1Paketstorlek: TcxGridDBColumn;
    grdPickPkgNosDBTableView1Certfiering: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxLabel_Val: TcxLabel;
    acSelectMarkedRows: TAction;
    acShowMatchingLIP: TAction;
    cxButton1: TcxButton;
    BitBtn3: TBitBtn;
    mtPkgNos: TFDMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosPrefix: TStringField;
    mtProps: TFDMemTable;
    dsProps: TDataSource;
    cxLabel5: TcxLabel;
    lcLIP: TcxDBLookupComboBox;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    ds_LIP2: TDataSource;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    mtPropsLIP: TStringField;
    siLangLinked_fPickPkgNo: TsiLangLinked;
    cxButton2: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Label6: TLabel;
    LabelReferens: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ds_SelectedPkgNoDataChange(Sender: TObject; Field: TField);
    procedure cbFilterOnLengthPropertiesChange(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acMarkAllExecute(Sender: TObject);
    procedure acUnmarkAllExecute(Sender: TObject);
    procedure acShowMatchingProductAndLengthExecute(Sender: TObject);
    procedure acShowMatchingProductExecute(Sender: TObject);
    procedure acShowAddLOPkgsWithMatchingProductExecute(Sender: TObject);
    procedure acShowAllAddLOPkgsExecute(Sender: TObject);
    procedure mtProductProductNoChange(Sender: TField);
    procedure acShowPkgsWithSameActDimOnlyExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acShowPkgsUsingSearchExecute(Sender: TObject);
    procedure acSelectMarkedRowsExecute(Sender: TObject);
    procedure acShowMatchingLIPExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    ButtonDown : Integer ;
    procedure CheckSelectedPackages ;
    procedure BuildSQL ;
    procedure Refresh ;
  public
    { Public declarations }

   Referens : String ;
   ObjectType, LONo, ProductNo, ProductLengthNo, PIPNo : Integer ;
   ALMM : String ;
  end;

//var fPickPkgNo: TfPickPkgNo;

implementation

uses dmsDataConn, dmsVidaSystem, UnitdmModule1, VidaUser , UnitPkgInfo;

{$R *.dfm}


procedure TfPickPkgNo.FormShow(Sender: TObject);
begin
 if (productLengthNo = 453)
 or (productLengthNo = 533)
 or (productLengthNo = 1960)
 or (productLengthNo = 1831)
 or (productLengthNo = 3187)
 or (productLengthNo = 3190)
 or (productLengthNo = -1) then
 cbFilterOnLength.Checked:= False
 else
  cbFilterOnLength.Checked:= True ;

  cds_LIP2.ParamByName('PIPNo').AsInteger := PIPNo ;
  mtProps.Active  := True ;

 Refresh ;
 lcProductDisplayName.Visible:= False ;
 if ObjectType = 0 then
 Begin
  mtProduct.Active                              := False ;
  cds_ProdInLager.ParamByName('PIPNo').AsInteger := PIPNo ;
  mtProduct.Active                              := True ;
  lcProductDisplayName.Visible                  := True ;
  lbShowMatchingProduct.Down                    := True ;
 End ;
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPickPkgNos.Name, grdPickPkgNosDBTableView1) = False then ;
end;

procedure TfPickPkgNo.FormCreate(Sender: TObject);
begin
 with dmsSystem do
 Begin
  MarkedPkgs:= 0 ;

 End ;
end;

procedure TfPickPkgNo.ds_SelectedPkgNoDataChange(Sender: TObject;
  Field: TField);
begin
 with dmsSystem do
  LabelNoOfPkgsMarked.Caption:= intToStr(MarkedPkgs) ;
end;

procedure TfPickPkgNo.BuildSQL ;
Begin
 With sq_PaketLista.SQL do
 Begin
//  if lbShowMatchingProductAndLength.Down then
  if ButtonDown = ProductAndLength then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_0' (* 'Urval produkt && längd' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;

  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;

  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;

  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;
  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;
  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
  Add('AND pt.productno = '+IntToStr(ProductNo)) ;
  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;

  if cbFilterOnLength.Checked then
  Begin
   Add(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_5' (* 'and ' *) )+ALMM+' in (Select pl.ActualLengthMM from dbo.PackageTypeDetail ptd') ;
   Add('inner join dbo.ProductLength pl on pl.productlengthno = ptd.productlengthno') ;
   Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
   Add('WHERE') ;
   Add('ptd.packagetypeno = pn.packagetypeno') ;
   Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
   Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo)) ') ;
  End ;
  End //lbShowMatchingProductAndLength
  else
  if ButtonDown = MatchingProduct then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_6' (* 'Urval produkt' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;

  Add('From dbo.packagenumber pn') ;


  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;
  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;


  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
  Add('AND pt.productno = '+IntToStr(ProductNo)) ;
  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End //lbShowMatchingProduct
  else
//  if lbShowAddLOPkgsWithMatchingProduct.Down then
  if ButtonDown = AddLOPkgsWithMatchingProduct then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_11' (* 'Urval add LO && produkt' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;

  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;
  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
  Add('AND pt.productno = '+IntToStr(ProductNo)) ;

//Visa bara paket som fanns på tillhörande ADD LO
  Add('AND pn.PackageNo in (Select LD.PackageNo FROM') ;
  Add('dbo.SupplierShippingPlan SSP') ;
  Add('Inner Join dbo.LoadShippingPlan LS ON 	LS.ShippingPlanNo = SSP.ShippingPlanNo') ;
  Add('Inner Join dbo.LoadDetail LD             ON LD.LoadNo = LS.LoadNo') ;
  Add('AND LD.ShippingPlanNo = LS.ShippingPlanNo') ;
  Add('WHERE LD.SupplierCode = pn.SupplierCode') ;
  Add('AND SSP.LO_No = '+IntToStr(LONo)+')') ;

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End //lbShowAddLOPkgsWithMatchingProduct
  else

  if ButtonDown = ShowAllAddLOPkgs then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_16' (* 'Urval add LO' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;

  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;
  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;
  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
  Add('AND pn.PackageNo in (Select LD.PackageNo FROM') ;
  Add('dbo.SupplierShippingPlan SSP') ;
  Add('Inner Join dbo.LoadShippingPlan LS ON 	LS.ShippingPlanNo = SSP.ShippingPlanNo') ;
  Add('Inner Join dbo.LoadDetail LD             ON LD.LoadNo = LS.LoadNo') ;
  Add('AND LD.ShippingPlanNo = LS.ShippingPlanNo') ;
  Add('WHERE LD.SupplierCode = pn.SupplierCode') ;
  Add('AND SSP.LO_No = '+IntToStr(LONo)+')') ;

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End
  else
  if ButtonDown = ShowTM then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_21' (* 'Urval TM' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;
  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.productGroup pg on pg.productGroupno = p.productGroupno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;

  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;
  Add('AND pg.ActualThicknessMM in (Select pg2.ActualThicknessMM ') ;
  Add('FROM dbo.productGroup pg2') ;
  Add('Inner Join dbo.product p2 on p2.productGroupno = pg2.productGroupno') ;
  Add('WHERE p2.productno = '+IntToStr(ProductNo)) ;
  Add('AND pg2.ActualWidthMM = pg.ActualWidthMM)') ;

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End
  else
  if ButtonDown = ShowLIP then
  Begin
  if mtPropsLIPNo.AsInteger > 0 then
  Begin
  cxLabel_Val.Caption := siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_26' (* 'Urval Lagergrupp' *) ) ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;
  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.productGroup pg on pg.productGroupno = p.productGroupno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;
  Add('AND LIP.LogicalInventoryPointNo = ' + mtPropsLIPNo.AsString) ;

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End
  else
  showmessage('Select inventory group!') ;
  End
  else
  if ButtonDown = ShowLOPlusRef then
  Begin
  cxLabel_Val.Caption := 'Urval LO&&Referens' ;
  Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;

  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;
  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;
  Add('AND LIP.PhysicalInventoryPointNo = ' + IntToStr(PIPNo)) ;
  Add('AND pn.REFERENCE = ' + QuotedStr(IntToStr(LONo) + '/' + Referens)) ;

{
    Add('AND pn.PackageNo in (Select LD.PackageNo FROM') ;
    Add('dbo.SupplierShippingPlan SSP') ;
    Add('Inner Join dbo.LoadShippingPlan LS ON 	LS.ShippingPlanNo = SSP.ShippingPlanNo') ;
    Add('Inner Join dbo.LoadDetail LD             ON LD.LoadNo = LS.LoadNo') ;
    Add('AND LD.ShippingPlanNo = LS.ShippingPlanNo') ;
    Add('WHERE LD.SupplierCode = pn.SupplierCode') ;
    Add('AND SSP.LO_No = '+IntToStr(LONo)+')') ;
}

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End



  else
  if lbSearch.Down then
  Begin
    Clear ;
  Add('Select pn.PackageNo, pn.SupplierCode AS LEVKOD,') ;
  Add('pt.productno,') ;
  Add('ptl.PcsPerLength,') ;
  Add('pt.Totalm3Actual AS AM3,') ;
  Add('pt.TotalNoOfPieces AS STYCK,') ;
  Add('pn.DateCreated,') ;
  Add('(Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,') ;
  Add('p.ProductDisplayName AS Produkt,') ;
  Add('CASE') ;
  Add('WHEN htf.Status = 1 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_1' (* 'Modtaget' *) ))) ;
  Add('WHEN htf.Status = 2 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_2' (* 'Klar til produktion' *) ))) ;
  Add('WHEN htf.Status = 3 THEN ' + QuotedStr('Produktionsdato')) ;
  Add('WHEN htf.Status = 4 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_3' (* 'Klar til afgang' *) ))) ;
  Add('WHEN htf.Status = 5 THEN ' + QuotedStr(siLangLinked_fPickPkgNo.GetTextOrDefault('IDS_4' (* 'Udleverat' *) ))) ;
  Add('End AS StatusHTF,') ;
  Add('PN.REFERENCE,') ;
  Add('PN.BL_NO,') ;
  Add('PN.Info2,') ;
  Add('ps.PackageSizeName AS Paketstorlek,') ;
  Add('cw.CertShortName AS Certfiering') ;
  Add('From dbo.packagenumber pn') ;
  Add('Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Package_Size') ;
  Add('and ps.LanguageCode = 1') ;
  Add('Left Outer join dbo.CertificationWood cw on cw.CertNo = pn.CertNo') ;

  Add('Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.product p on p.productno = pt.productno') ;
  Add('Inner Join dbo.productGroup pg on pg.productGroupno = p.productGroupno') ;
  Add('Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.packagetypeno') ;
  Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo') ;
  Add('Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.PackageNo') ;
  Add('and htf.prefix = pn.suppliercode') ;
  Add('WHERE') ;
  Add('pn.Status = 1') ;

  if Length(teRef.Text) > 0 then
  Add('AND pn.REFERENCE = ' + QuotedStr(teRef.Text)) ;

  if Length(teInfo1.Text) > 0 then
  Add('AND pn.BL_NO = ' + QuotedStr(teInfo1.Text)) ;

  if Length(teInfo2.Text) > 0 then
  Add('AND pn.Info2 = ' + QuotedStr(teInfo2.Text)) ;

  Add('AND LIP.PhysicalInventoryPointNo = '+IntToStr(PIPNo)) ;

  Add('AND pn.PackageNo not in (Select pgrm.PackageNo From dbo.Pkgs_ResModul pgrm WHERE ') ;
  Add('pgrm.SupplierCode = pn.SupplierCode)') ;
  End ;


  if ThisUser.UserID = 258 then SaveToFile('sq_PaketLista.TXT') ;
 End ; //With
End ;

procedure TfPickPkgNo.Refresh ;
Var
    Save_Cursor  :  TCursor;
    x            : Integer ;
begin
 with dmsSystem do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.Active:= False ;
 BuildSQL ;


 mtSelectedPkgNo.Active:= True ;
 sq_PaketLista.Open ;
 sq_PaketLista.First ;
 While not  sq_PaketLista.Eof do
 Begin
  mtSelectedPkgNo.insert ;
  For x := 0 to 14 do
   mtSelectedPkgNo.Fields.Fields[x].AsVariant:= sq_PaketLista.Fields.Fields[x].AsVariant ;
//  mtSelectedPkgNoProdukt.AsString   := sq_PaketListaProdukt.AsString ;
//  mtSelectedPkgNoHTFStatus.AsString := sq_PaketListaStatusHTF.AsString ;
  mtSelectedPkgNo.post ;
  sq_PaketLista.Next ;
 End ;
 finally
  sq_PaketLista.Close ;
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfPickPkgNo.cbFilterOnLengthPropertiesChange(Sender: TObject);
begin
 Refresh ;
end;

procedure TfPickPkgNo.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 with dmsSystem do
 Begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= mtSelectedPkgNoPAKETNR.AsInteger ;
  frmPkgInfo.SupplierCode:= mtSelectedPkgNoLEVKOD.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
 End ;
end;

procedure TfPickPkgNo.FormDestroy(Sender: TObject);
begin
 with dmsSystem do
 mtSelectedPkgNo.Active:= False ;
 mtProduct.Active:= False ;
end;

procedure TfPickPkgNo.acMarkAllExecute(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 With dmsSystem do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 1 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;


procedure TfPickPkgNo.acUnmarkAllExecute(Sender: TObject);
Var
 Save_Cursor  :  TCursor;
begin
 with dmsSystem do
 Begin
 MarkedPkgs:= 0 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedPkgNo.DisableControls ;
 Try
 mtSelectedPkgNo.First ;
 While not mtSelectedPkgNo.Eof do
 Begin
  mtSelectedPkgNo.Edit ;
  mtSelectedPkgNoMARKERAD.AsInteger:= 0 ;
  mtSelectedPkgNo.post ;
  mtSelectedPkgNo.Next ;
 End ;
 finally
  mtSelectedPkgNo.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
End ;

procedure TfPickPkgNo.acShowMatchingLIPExecute(Sender: TObject);
begin
  ButtonDown  := ShowLIP ;
  Refresh ;
end;

procedure TfPickPkgNo.acShowMatchingProductAndLengthExecute(
  Sender: TObject);
begin
 ButtonDown  := ProductAndLength ;
 Refresh ;
end;

procedure TfPickPkgNo.acShowMatchingProductExecute(Sender: TObject);
begin
 ButtonDown  := MatchingProduct ;
 Refresh ;
end;

procedure TfPickPkgNo.CheckSelectedPackages ;
 Var
 PackageNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor ;
 Prefix         : String ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
// With dmInventory do
// Begin

//  mtSelectedPkgNo.DisableControls ;
  grdPickPkgNosDBTableView1.BeginUpdate ;
  grdPickPkgNosDBTableView1.DataController.BeginLocate ;

  Try
  ADataSet := grdPickPkgNosDBTableView1.DataController.DataSource.DataSet ;
   For I := 0 to grdPickPkgNosDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPickPkgNosDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPickPkgNosDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PAKETNR;LEVKOD', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PAKETNR').AsInteger ;
    mtPkgNosPrefix.AsString     := ADataSet.FieldByName('LEVKOD').AsString ;

    mtPkgNos.Post ;
   End ;//for

 Finally
  //mtSelectedPkgNo.EnableControls ;
  grdPickPkgNosDBTableView1.DataController.EndLocate ;
  grdPickPkgNosDBTableView1.EndUpdate ;

  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
// End ;//with
end;

procedure TfPickPkgNo.cxButton2Click(Sender: TObject);
begin
  ButtonDown  := ShowLOPlusRef ;
  Refresh ;
end;

procedure TfPickPkgNo.acSelectMarkedRowsExecute(Sender: TObject);
begin
 mtPkgNos.Active  := False ;
 mtPkgNos.Active  := True ;
 CheckSelectedPackages ;

 dmsSystem.mtSelectedPkgNo.DisableControls ;
 Try

 mtPkgNos.First ;
 while not mtPkgNos.Eof do
 Begin
  if dmsSystem.mtSelectedPkgNo.Locate('PAKETNR;LEVKOD', VarArrayof([mtPkgNosPackageNo.AsInteger, mtPkgNosPrefix.AsString]), []) then
  Begin
   if dmsSystem.mtSelectedPkgNoMARKERAD.AsInteger = 0 then
   Begin
     dmsSystem.mtSelectedPkgNo.Edit ;
     dmsSystem.mtSelectedPkgNoMARKERAD.AsInteger := 1 ;
     dmsSystem.mtSelectedPkgNo.Post ;
   End;
  End;
  mtPkgNos.Next ;
 End;
 Finally
   dmsSystem.mtSelectedPkgNo.EnableControls ;
 End;
end;

procedure TfPickPkgNo.acShowAddLOPkgsWithMatchingProductExecute(
  Sender: TObject);
begin
 ButtonDown  := AddLOPkgsWithMatchingProduct ;
 Refresh ;
end;

procedure TfPickPkgNo.acShowAllAddLOPkgsExecute(Sender: TObject);
begin
 ButtonDown  := ShowAllAddLOPkgs ;
 Refresh ;
end;

procedure TfPickPkgNo.mtProductProductNoChange(Sender: TField);
begin
 ProductNo            := mtProductProductNo.AsInteger ;
 LabelProduct.Caption := lcProductDisplayName.Text ;
 Refresh ;
end;

procedure TfPickPkgNo.acShowPkgsUsingSearchExecute(Sender: TObject);
begin
  Refresh ;
end;

procedure TfPickPkgNo.acShowPkgsWithSameActDimOnlyExecute(Sender: TObject);
begin
  ButtonDown  := ShowTM ;
  Refresh ;
end;

procedure TfPickPkgNo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/' + grdPickPkgNos.Name, grdPickPkgNosDBTableView1) ;
end;

end.
