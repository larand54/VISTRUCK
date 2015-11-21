unit UnitPosition;

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
  cxNavigator, Data.DB, cxDBData, cxCheckBox, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, System.Generics.Collections,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, dmc_ArrivingLoads, cxContainer,
  cxTL, UnitStylesOKCANCL, cxGridCustomPopupMenu, cxGridPopupMenu, dmsVidaSystem,
  VidaUser, cxPropertiesStore, dxmdaset, cxLabel;

type
  TPosition = class(TForm)
    PageControl_Position: TPageControl;
    TabSheet_All: TTabSheet;
    TabSheet_Match: TTabSheet;
    cxGrid_MatchPosition: TcxGrid;
    cxGrid_MatchPositionDBTableView1: TcxGridDBTableView;
    cxGrid_MatchPositionDBTableView1Vald: TcxGridDBColumn;
    cxGrid_MatchPositionDBTableView1Fullt: TcxGridDBColumn;
    cxGrid_MatchPositionDBTableView1PositionNamn: TcxGridDBColumn;
    cxGrid_MatchPositionDBTableView1ProductNamn: TcxGridDBColumn;
    cxGrid_MatchPositionDBTableView1NoOfPkgs1: TcxGridDBColumn;
    cxGrid_MatchPositionLevel1: TcxGridLevel;
    PakagePanel: TPanel;
    grid_ProductList: TcxGrid;
    grid_ProductListDBTableView1: TcxGridDBTableView;
    grid_ProductListDBTableView1Vald: TcxGridDBColumn;
    grid_ProductListDBTableView1ProductNo: TcxGridDBColumn;
    grid_ProductListDBTableView1PktSupplierCode: TcxGridDBColumn;
    grid_ProductListDBTableView1ProductDisplayName1: TcxGridDBColumn;
    grid_ProductListDBTableView1PaketNr1: TcxGridDBColumn;
    grid_ProductListLevel1: TcxGridLevel;
    btnStorePosition: TButton;
    Mem_MatchaProduct: TFDMemTable;
    Mem_MatchaProductVald: TIntegerField;
    Mem_MatchaProductFullt: TIntegerField;
    Mem_MatchaProductPositionNamn: TStringField;
    Mem_MatchaProductProductNamn: TStringField;
    Mem_MatchaProductNoOfPkgs: TIntegerField;
    Mem_MatchaProductProductNo: TIntegerField;
    Mem_MatchaProductPositionID: TIntegerField;
    ds_MatchaProduct: TDataSource;
    Mem_PackProdList: TFDMemTable;
    Mem_PackProdListVald: TIntegerField;
    Mem_PackProdListPaketNr: TIntegerField;
    Mem_PackProdListPktSupplierCode: TStringField;
    Mem_PackProdListProductDisplayName: TStringField;
    Mem_PackProdListProductNo: TIntegerField;
    DS_ProductNo: TDataSource;
    FDQ_StorePosID: TFDQuery;
    FDQ_Position: TFDQuery;
    FDQ_PositionPositionName: TStringField;
    FDQ_PositionPositionID: TIntegerField;
    DS_Position: TDataSource;
    Mem_StorePosition: TFDMemTable;
    Mem_StorePositionPositionID: TIntegerField;
    Mem_StorePositionPrefix: TStringField;
    Mem_StorePositionPakageNr: TIntegerField;
    DS_StorePosition: TDataSource;
    FDQ_ProdRefLength1: TFDQuery;
    FDQ_ProdRefLength1PosStatus: TIntegerField;
    FDQ_ProdRefLength1PositionName: TStringField;
    FDQ_ProdRefLength1ProductNo: TIntegerField;
    FDQ_ProdRefLength1ProductDisplayName: TStringField;
    FDQ_ProdRefLength1PositionID: TIntegerField;
    FDQ_ProdRefLength1StoredDate: TSQLTimeStampField;
    FDQ_ProdRefLength1NoOfPkgsByProduct: TIntegerField;
    FDQ_ProdRefLength1NoOfPkgsByPosition: TIntegerField;
    ds_MatchPosition: TDataSource;
    FDQ_MatchPosition: TFDQuery;
    FDQ_MatchPositionPositionName: TStringField;
    FDQ_MatchPositionProductDisplayName: TStringField;
    FDQ_MatchPositionPositionID: TIntegerField;
    FDQ_ProductNo: TFDQuery;
    FDQ_ProductNoProductDisplayName: TStringField;
    FDQ_ProductNoProductNo: TIntegerField;
    FDQ_PhyInvPtNo: TFDQuery;
    FDQ_PhyInvPtNoPhysicalInventoryPointNo: TIntegerField;
    FDQ_UpdatePosStatus: TFDQuery;
    FDQ_ProductPkg: TFDQuery;
    FDQ_ProductPkgPackageNo: TIntegerField;
    FDQ_ProductPkgSupplierCode: TStringField;
    btDelete: TButton;
    cxGrid_AllPositionDBTableView1: TcxGridDBTableView;
    cxGrid_AllPositionLevel1: TcxGridLevel;
    cxGrid_AllPosition: TcxGrid;
    cxGrid_AllPositionDBTableView1PositionName: TcxGridDBColumn;
    cxGrid_AllPositionDBTableView1Vald: TcxGridDBColumn;
    cxGrid_AllPositionDBTableView1PositionID: TcxGridDBColumn;
    FDQ_PositionVald: TIntegerField;
    Mem_AllPosition: TFDMemTable;
    Mem_AllPositionVald: TIntegerField;
    Mem_AllPositionPositionID: TIntegerField;
    Mem_AllPositionPositionName: TStringField;
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
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet;
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
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    btChangeStyle: TButton;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cxGridPopupMenu3: TcxGridPopupMenu;
    cxPropertiesStore1: TcxPropertiesStore;
    Mem_MatchaProductReference: TStringField;
    Mem_MatchaProductMaxLength: TIntegerField;
    cxGrid_MatchPositionDBTableView1Reference: TcxGridDBColumn;
    cxGrid_MatchPositionDBTableView1MaxLength: TcxGridDBColumn;
    FDQ_ProdLength: TFDQuery;
    FDQ_MatchProductNo: TFDQuery;
    FDQ_ProdRefLength1REFERENCE: TStringField;
    FDQ_ProdRefLength1MaxLength: TFloatField;
    FDQ_ProdLengthPosStatus: TIntegerField;
    FDQ_ProdLengthPositionName: TStringField;
    FDQ_ProdLengthProductNo: TIntegerField;
    FDQ_ProdLengthProductDisplayName: TStringField;
    FDQ_ProdLengthPositionID: TIntegerField;
    FDQ_ProdLengthStoredDate: TSQLTimeStampField;
    FDQ_ProdLengthMaxLength: TFloatField;
    FDQ_ProdLengthNoOfPkgsByProduct: TIntegerField;
    FDQ_ProdLengthNoOfPkgsByPosition: TIntegerField;
    FDQ_MatchProductNoPosStatus: TIntegerField;
    FDQ_MatchProductNoPositionName: TStringField;
    FDQ_MatchProductNoProductNo: TIntegerField;
    FDQ_MatchProductNoProductDisplayName: TStringField;
    FDQ_MatchProductNoPositionID: TIntegerField;
    FDQ_MatchProductNoStoredDate: TSQLTimeStampField;
    FDQ_MatchProductNoNoOfPkgsByProduct: TIntegerField;
    FDQ_MatchProductNoNoOfPkgsByPosition: TIntegerField;
    FDQ_ProductNoREFERENCE: TStringField;
    FDQ_ProductNoMaxLength: TFloatField;
    Mem_PackProdListMaxLength: TIntegerField;
    Mem_PackProdListReference: TStringField;
    grid_ProductListDBTableView1MaxLength: TcxGridDBColumn;
    grid_ProductListDBTableView1Reference: TcxGridDBColumn;
    FDQ_ProdRefLength: TFDStoredProc;
    FDQ_ProdRefLengthPosStatus: TIntegerField;
    FDQ_ProdRefLengthPositionName: TStringField;
    FDQ_ProdRefLengthProductNo: TIntegerField;
    FDQ_ProdRefLengthProductDisplayName: TStringField;
    FDQ_ProdRefLengthPositionID: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    FDQ_ProdRefLengthREFERENCE: TStringField;
    FDQ_ProdRefLengthMaxLength: TFloatField;
    IntegerField4: TIntegerField;
    FDQ_ProdRefLengthNoOfPkgsByPosition: TIntegerField;
    TabSheet_RefMatch: TTabSheet;
    grid_Matcha_RefDBTableView1: TcxGridDBTableView;
    grid_Matcha_RefLevel1: TcxGridLevel;
    grid_Matcha_Ref: TcxGrid;
    FDQ_MatchaRef: TFDQuery;
    FDQ_MatchaRefPosStatus: TIntegerField;
    FDQ_MatchaRefPositionName: TStringField;
    FDQ_MatchaRefProductNo: TIntegerField;
    FDQ_MatchaRefPositionID: TIntegerField;
    FDQ_MatchaRefStoredDate: TSQLTimeStampField;
    FDQ_MatchaRefREFERENCE: TStringField;
    FDQ_MatchaRefMaxLength: TFloatField;
    FDQ_MatchaRefNoOfPkgsByProduct: TIntegerField;
    DS_MatchaRef: TDataSource;
    Mem_MatchaRef: TFDMemTable;
    Mem_MatchaRefPosStatus: TIntegerField;
    Mem_MatchaRefPositionName: TStringField;
    Mem_MatchaRefProductNo: TIntegerField;
    Mem_MatchaRefProductDisplayName: TStringField;
    Mem_MatchaRefREFERENCE: TStringField;
    grid_Matcha_RefDBTableView1PositionName: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1ProductDisplayName: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1REFERENCE: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1MaxLength: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1NoOfPkgsByPosition: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1Vald: TcxGridDBColumn;
    grid_Matcha_RefDBTableView1Fullt: TcxGridDBColumn;
    lbPkgCount: TcxLabel;
    Mem_StorePositionPosStatus: TIntegerField;
    Mem_MatchaRefPositionID: TIntegerField;
    Mem_MatchaRefVald: TIntegerField;
    FDQ_MatchaRefProductDisplayName: TStringField;
    FDQ_MatchaRefNoOfPkgsByPosition: TIntegerField;
    Mem_MatchaRefNoOfPkgs: TIntegerField;
    Mem_MatchaRefMaxLength: TIntegerField;
    sp_insPkgInvStat: TFDStoredProc;
    Mem_MatchaProductStoredDate: TSQLTimeStampField;
    Mem_PackProdListScanned: TIntegerField;
    Mem_StorePositionScanned: TIntegerField;
    Mem_StorePositionDateCreated: TDateTimeField;
    procedure btnStorePositionClick(Sender: TObject);
    procedure cxGrid_MatchPositionDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btDeleteClick(Sender: TObject);
    procedure cxGrid_AllPositionDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btChangeStyleClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grid_ProductListDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_Matcha_RefDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private

    ProductNoList : TStringList;
    //PositionAllNameList: TStringList;
    //PositionAllIDList : TList<Integer>;

    function GetPkgPrefix(ProductNo, PackageNo: Integer;
      Prefix: String): Boolean;
    procedure SavetoMemPosition(PositionID, PosStatus: Integer; Prefix: String;
      PkgNr, Scanned: Integer; DateCreated : TDateTime);
    procedure DeleteMatchaProdNo(PackProductNo, MatchaProdNo: Integer);
    procedure CheckLastPkg;
    function IsSameProduct(PackProductNo: Integer): Boolean;
    function IsSameRef(PackRef: String): Boolean;


    { Private declarations }
  public
    procedure ShowPaketNrList(PaketNr, Scanned: Integer; pkgSupplierCode: String);
    procedure ShowPosition;
    procedure MatchaPosition(ProductNo: Integer; MaxLength : Integer; Reference : String);
    procedure ShowMatchaRef(Reference: String);
    { Public declarations }
  end;

var
  frmPosition: TPosition;

implementation

{$R *.dfm}

procedure TPosition.ShowPaketNrList(PaketNr, Scanned : Integer; pkgSupplierCode : String);
var
  //PaketNrList, ProductNrList, ProductNamnList : TStringList;
  Item : TListItem;
  I: Integer;
  ProductName, PositionName, Match_ProductName, Reference : String;
  ProductNo, MaxLength : Integer;
begin

  ProductNoList := TStringList.Create;

  FDQ_ProductNo.Close;
  FDQ_ProductNo.ParamByName('PaketNr').AsInteger := PaketNr;
  FDQ_ProductNo.ParamByName('SupplierCode').AsString := pkgSupplierCode;
  FDQ_ProductNo.Open;
  FDQ_ProductNo.First;
  ProductName := FDQ_ProductNoProductDisplayName.AsString;
  ProductNo := FDQ_ProductNoProductNo.AsInteger;
  Reference := FDQ_ProductNoREFERENCE.AsString;
  MaxLength := FDQ_ProductNoMaxLength.AsInteger;

  PakagePanel.Visible := True;
  grid_ProductList.Visible := True;

  if (not Mem_PackProdList.Active) OR (not Mem_PackProdList.FindKey([PaketNr,pkgSupplierCode])) then
  begin
    with Mem_PackProdList do
    begin
      Open;
      Append;
      FieldByName('Vald').AsInteger := 1;
      FieldByName('PaketNr').AsInteger := PaketNr;
      FieldByName('PktSupplierCode').AsString := pkgSupplierCode;
      FieldByName('ProductDisplayName').AsString := ProductName;
      FieldByName('ProductNo').AsInteger := ProductNo;
      FieldByName('MaxLength').AsInteger := MaxLength;
      FieldByName('Reference').AsString := Reference;
      FieldByName('Scanned').AsInteger := Scanned;
      Post;
    end;

   lbPkgCount.Caption := 'Paket Count : '+ inttostr(Mem_PackProdList.RecordCount);

   ShowPosition;
   //ShowMatchPosition(ProductNo);//17247
   MatchaPosition(ProductNo, MaxLength, Reference);

   ShowMatchaRef(Reference);

  end;
end;

procedure TPosition.ShowMatchaRef(Reference: String);
var
 RecordCount, Count : Integer;
begin
    if (not Mem_MatchaRef.Active) OR (not Mem_MatchaRef.Locate('Reference', Reference,[])) then
    begin
      grid_Matcha_Ref.Visible := True;
      FDQ_MatchaRef.Close;
      FDQ_MatchaRef.ParamByName('Reference').AsString := Reference;
      FDQ_MatchaRef.ParamByName('PIPNo').AsInteger := dmArrivingLoads.PIPNo ;
      FDQ_MatchaRef.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
      FDQ_MatchaRef.Open;
      RecordCount :=  FDQ_MatchaRef.recordcount;
      if RecordCount > 0 then
       begin
        Count := 1;
        FDQ_MatchaRef.First;
        while not FDQ_MatchaRef.Eof do
        begin
          with Mem_MatchaRef do
          begin
            Open;
            Append;
            FieldByName('Vald').AsInteger := 0;
            FieldByName('Fullt').AsInteger := FDQ_MatchaRefPosStatus.AsInteger;
            FieldByName('PositionName').AsString := FDQ_MatchaRefPositionName.AsString;
            FieldByName('ProductName').AsString := FDQ_MatchaRefProductDisplayName.AsString;
            FieldByName('NoOfPkgs').AsInteger := FDQ_MatchaRefNoOfPkgsByPosition.AsInteger;
            FieldByName('ProductNo').AsInteger := FDQ_MatchaRefProductNo.AsInteger;
            FieldByName('PositionID').AsInteger := FDQ_MatchaRefPositionID.AsInteger;
            FieldByName('Reference').AsString := FDQ_MatchaRefREFERENCE.AsString;
            FieldByName('MaxLength').AsInteger := FDQ_MatchaRefMaxLength.AsInteger;
            Post;
            Inc(Count);
          end;
          FDQ_MatchaRef.Next;
        end;
     end;
    end;


end;

procedure TPosition.ShowPosition;
var
   Selected: String;

   I : Integer;
 begin
   PageControl_Position.Visible := True;
   PageControl_Position.ActivePage := TabSheet_Match;

   if ( not FDQ_Position.Active) then
   begin
   //FDQ_Position.Active := True;
    FDQ_Position.Open;
    FDQ_Position.First;
    while not FDQ_Position.Eof do
    begin
      with Mem_AllPosition do
      begin
        Open;
        Append;
        FieldByName('Vald').AsInteger := FDQ_PositionVald.AsInteger;
        FieldByName('PositionID').AsInteger := FDQ_PositionPositionID.AsInteger;
        FieldByName('PositionName').AsString := FDQ_PositionPositionName.AsString;
        Post;
      end;
      FDQ_Position.Next;
    end;
    Mem_AllPosition.Next;
   end;
    (*
      PositionAllNameList := TStringList.Create;
        PositionAllIDList := TList<Integer>.Create;

        FDQ_Position.Open;
        FDQ_Position.First;
        while not FDQ_Position.EOF do
        begin
          PositionAllNameList.Add(FDQ_PositionPositionName.AsString);
          PositionAllIDList.Add(FDQ_PositionPositionID.AsInteger);
          FDQ_Position.Next;
        end;
        FDQ_Position.Close;

        listboxAll.Items.BeginUpdate;
        listboxAll.Items.Clear;
        listboxAll.Items.AddStrings(PositionAllNameList);
        listboxAll.Items.EndUpdate;
  *)

end;

procedure TPosition.MatchaPosition(ProductNo: Integer; MaxLength : Integer; Reference : String);
var
   MatchaCount, ProdRecord, PrevPositionID, PrevMaxLength, PhyInvPtNo, Records, Count : Integer;
   PrevReference : String;
   ValdFlag : Boolean;
begin
  begin
    if (not Mem_MatchaProduct.Active) OR (not Mem_MatchaProduct.Locate('ProductNo', ProductNo,[])) then
    begin
      cxGrid_MatchPosition.Visible := True;
      FDQ_ProdRefLength.Close;
      FDQ_ProdRefLength.ParamByName('@ProductNo').AsInteger := ProductNo;
      FDQ_ProdRefLength.ParamByName('@PIPNo').AsInteger         := dmArrivingLoads.PIPNo ;//10220;
      FDQ_ProdRefLength.ParamByName('@LanguageCode').AsInteger  := ThisUser.LanguageID ;//1;
      FDQ_ProdRefLength.Open;
      Records :=  FDQ_ProdRefLength.recordcount;
      if Records > 0 then
       begin
        Count := 1;
        FDQ_ProdRefLength.First;
        while not FDQ_ProdRefLength.Eof do
        begin
          with Mem_MatchaProduct do
          begin
            Open;
            Append;
            //if (Records = Count) AND (FDQ_ProdRefLengthPosStatus.AsInteger = 1) then
            //   FieldByName('Vald').AsInteger := 1
            //else
            FieldByName('Vald').AsInteger := 0;

            FieldByName('Fullt').AsInteger := FDQ_ProdRefLengthPosStatus.AsInteger;
            FieldByName('PositionNamn').AsString := FDQ_ProdRefLengthPositionName.AsString;
            FieldByName('ProductNamn').AsString := FDQ_ProdRefLengthProductDisplayName.AsString;
            FieldByName('NoOfPkgs').AsInteger := FDQ_ProdRefLengthNoOfPkgsByPosition.AsInteger;
            FieldByName('ProductNo').AsInteger := FDQ_ProdRefLengthProductNo.AsInteger;
            FieldByName('PositionID').AsInteger := FDQ_ProdRefLengthPositionID.AsInteger;
            FieldByName('Reference').AsString := FDQ_ProdRefLengthREFERENCE.AsString;
            FieldByName('MaxLength').AsInteger := FDQ_ProdRefLengthMaxLength.AsInteger;
            FieldByName('StoredDate').AsSQLTimeStamp := SQLTimeStampField1.AsSQLTimeStamp;
            Post;
            Inc(Count);
          end;
          FDQ_ProdRefLength.Next;
        end;
     end;
    end;

(*
        Mem_MatchaProduct.Filter := 'Vald = 1';
        Mem_MatchaProduct.Filtered := True;
        Try
         //while not Mem_MatchaProduct.Eof do
         if Mem_MatchaProduct.RecordCount = 1 then
          begin
           PrevPositionID := Mem_MatchaProductPositionID.AsInteger;
           PrevReference := Mem_MatchaProductReference.AsString;
           PrevMaxLength := Mem_MatchaProductMaxLength.AsInteger;
           //Mem_MatchaProduct.Next;
          end;
        Finally
         Mem_MatchaProduct.Filtered := False;
        End;
*)

      if not Mem_MatchaProduct.Active then
       Mem_MatchaProduct.Active := True ;

      Count := 1;
      ValdFlag := False;
      Mem_MatchaProduct.Filter := 'ProductNo = '+inttostr(ProductNo);
      Mem_MatchaProduct.Filtered := True;
      Mem_MatchaProduct.IndexFieldNames := 'StoredDate:D';


      Try
      MatchaCount := Mem_MatchaProduct.RecordCount;

        Mem_MatchaProduct.First;
        while not Mem_MatchaProduct.Eof do
        begin
        if (ProductNo = Mem_MatchaProductProductNo.AsInteger)
         AND (MaxLength = Mem_MatchaProductMaxLength.AsInteger)
          AND (Reference = Mem_MatchaProductReference.AsString) then
         begin
          if (Mem_MatchaProductVald.AsInteger = 0) AND (Mem_MatchaProductFullt.AsInteger = 1) then
          begin
             Mem_MatchaProduct.Edit;
             Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
             Mem_MatchaProduct.Post;
             ValdFlag := True;
          end;
         end;
         Mem_MatchaProduct.Next;
        end;

        if not ValdFlag then
        begin
          Mem_MatchaProduct.First;
          while not Mem_MatchaProduct.Eof do
          begin
          if (ProductNo = Mem_MatchaProductProductNo.AsInteger)
           AND (MaxLength = Mem_MatchaProductMaxLength.AsInteger) then
           begin
            if (Mem_MatchaProductVald.AsInteger = 0) AND (Mem_MatchaProductFullt.AsInteger = 1) then
            begin
               Mem_MatchaProduct.Edit;
               Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
               Mem_MatchaProduct.Post;
               ValdFlag := True;
            end;
           end;
           Mem_MatchaProduct.Next;
          end;
        end;

        if not ValdFlag then
        begin
          Mem_MatchaProduct.First;
          while not Mem_MatchaProduct.Eof do
          begin
          if (ProductNo = Mem_MatchaProductProductNo.AsInteger) then
           begin
            if (Mem_MatchaProductVald.AsInteger = 0) AND (Mem_MatchaProductFullt.AsInteger = 1) then
            begin
               Mem_MatchaProduct.Edit;
               Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
               Mem_MatchaProduct.Post;
               ValdFlag := True;
            end;
           end;
           Mem_MatchaProduct.Next;
          end;
        end;


      Finally
       Mem_MatchaProduct.Filtered := False;
      End;




  (*
        Try
         MatchaCount := Mem_MatchaProduct.RecordCount;
         while not Mem_MatchaProduct.Eof do
          begin
          if (ProductNo = Mem_MatchaProductProductNo.AsInteger)
           AND (MaxLength = Mem_MatchaProductMaxLength.AsInteger)
            AND (Reference = Mem_MatchaProductReference.AsString) then
           begin
            if (Mem_MatchaProductVald.AsInteger = 1) AND ( not ValdFlag) then
            begin
              ValdFlag := True;
            end;
           end;

          if (ProductNo = Mem_MatchaProductProductNo.AsInteger)
           AND (MaxLength = Mem_MatchaProductMaxLength.AsInteger)
            AND (Reference = Mem_MatchaProductReference.AsString) then
           begin
            if (Mem_MatchaProductVald.AsInteger = 0) AND ( not ValdFlag) //AND (Count = Records)
             AND (Mem_MatchaProductFullt.AsInteger = 1) then
             begin
              Mem_MatchaProduct.Edit;
              Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
              Mem_MatchaProduct.Post;
              ValdFlag := True;
             end;
           end
          else if (ProductNo = Mem_MatchaProductProductNo.AsInteger)
           AND (MaxLength = Mem_MatchaProductMaxLength.AsInteger) then
           begin
            if (Mem_MatchaProductVald.AsInteger  = 0) AND ( not ValdFlag) //AND (Count = Records)
             AND (Mem_MatchaProductFullt.AsInteger = 1) then
             begin
              Mem_MatchaProduct.Edit;
              Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
              Mem_MatchaProduct.Post;
              ValdFlag := True;
             end;
           end
           else if (ProductNo = Mem_MatchaProductProductNo.AsInteger) AND (Count = Records)
            AND (Mem_MatchaProductFullt.AsInteger = 1) then
           begin
             if (Mem_MatchaProductVald.AsInteger  = 0) AND ( not ValdFlag) then
             begin
              Mem_MatchaProduct.Edit;
              Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
              Mem_MatchaProduct.Post;
              ValdFlag := True;
             end;
           end;

          Inc(Count);
          Mem_MatchaProduct.Next;
          end;
         Finally
            Mem_MatchaProduct.Filtered := False;
         End;

 *)
     end;

  if (Mem_MatchaProduct.Active) and (Mem_MatchaProduct.RecordCount = 0) then
  PageControl_Position.ActivePage := TabSheet_All ;

end;


procedure TPosition.CheckLastPkg;
begin
  if (Mem_PackProdList.RecordCount = 1) AND (Mem_PackProdListVald.AsInteger = 0) then
  begin
    with Mem_PackProdList do
      begin
       Edit;
       FieldByName('Vald').AsInteger := 1;
       Post;
       Mem_MatchaProduct.Active := False;
       //ShowMatchPosition(Mem_PackProdListProductNo.AsInteger);
       MatchaPosition(Mem_PackProdListProductNo.AsInteger, Mem_PackProdListMaxLength.AsInteger, Mem_PackProdListReference.AsString);
      end;
  end;
end;

function TPosition.IsSameProduct(PackProductNo: Integer): Boolean;
begin
  Result := False;
  Mem_PackProdList.filtered := False;
  Mem_PackProdList.Filter := 'ProductNo = '+inttostr(PackProductNo);
  Mem_PackProdList.Filtered := True;
    Try
      Mem_PackProdList.First;
      while not Mem_PackProdList.Eof do
      begin
       if (Mem_PackProdList.RecordCount > 1) then
        Result := True;

       Mem_PackProdList.Next;
      end;
    Finally
      Mem_PackProdList.filter := 'Vald = 1';
      Mem_PackProdList.filtered := True ;
      Mem_PackProdList.First;
    End;
end;

function TPosition.IsSameRef(PackRef: String): Boolean;
begin
  Result := False;
  Mem_PackProdList.filtered := False;
  Mem_PackProdList.filter := 'Reference = '+''''+PackRef+'''';
  Mem_PackProdList.filtered := True;
    Try
      Mem_PackProdList.First;
      while not Mem_PackProdList.Eof do
      begin
       if (Mem_PackProdList.RecordCount > 1) then
        Result := True;

       Mem_PackProdList.Next;
      end;
    Finally
      Mem_PackProdList.filter := 'Vald = 1';
      Mem_PackProdList.filtered := True ;
      Mem_PackProdList.First;
    End;
end;

procedure TPosition.btChangeStyleClick(Sender: TObject);
var
 count, I: Integer;
begin

  OKRightDlg := TOKRightDlg.Create(Nil);
  Try
    count := cxStyleRepository1.StyleSheetCount;

    for I := 0 to count - 1 do
      OKRightDlg.lbStyleSheet.AddItem(cxStyleRepository1.StyleSheets[I]
        .Caption, cxStyleRepository1.StyleSheets[I]);
    OKRightDlg.lbStyleSheet.ItemIndex := 0;
    if OKRightDlg.ShowModal = mrOk then
    begin
      with OKRightDlg.lbStyleSheet do
        if Items.count > 0 then
        begin
          grid_ProductListDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);
          cxGrid_AllPositionDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);
          cxGrid_MatchPositionDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);
          grid_Matcha_RefDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);
        end;
    end;

  finally
    FreeAndNil(OKRightDlg);
  end;
end;

procedure TPosition.btDeleteClick(Sender: TObject);
var
 RecordCount, MatchaProductNo, PackProductNo, PackageNo: Integer;
 Prefix, PackRef, MatchaRef: String;
begin
   Mem_MatchaProduct.filtered := False;
   Mem_PackProdList.filtered := False;
   Mem_PackProdList.filter := 'Vald = 1';
   Mem_PackProdList.filtered := True ;
   Try
   Mem_PackProdList.RecordCount;
   Mem_PackProdList.First;
    while not Mem_PackProdList.eof do
     Begin
      PackageNo := Mem_PackProdListPaketNr.AsInteger;
      Prefix := Mem_PackProdListPktSupplierCode.AsString;
      PackProductNo := Mem_PackProdListProductNo.AsInteger;
      PackRef := Mem_PackProdListReference.AsString;

      if not IsSameProduct(PackProductNo) then
      begin
        Mem_MatchaProduct.Open;
        Mem_MatchaProduct.RecordCount;
        Mem_MatchaProduct.First;
        while not Mem_MatchaProduct.eof do
         Begin
          MatchaProductNo := Mem_MatchaProductProductNo.AsInteger;
          if PackProductNo = MatchaProductNo then
           begin
            Mem_MatchaProduct.Delete;
           end
           else
           begin
             Mem_MatchaProduct.Next;
           end;
         End;
      end;

      if not IsSameRef(PackRef) then
      begin
        Mem_MatchaRef.Open;
        Mem_MatchaRef.RecordCount;
        Mem_MatchaRef.First;
        while not Mem_MatchaRef.eof do
         Begin
          MatchaRef := Mem_MatchaRefREFERENCE.AsString;
          if PackRef = MatchaRef then
           begin
            Mem_MatchaRef.Delete;
           end
           else
           begin
             Mem_MatchaRef.Next;
           end;
         End;
      end;

      Mem_PackProdList.Delete;
     End;

    Mem_AllPosition.filter := 'Vald = 1';
    Mem_AllPosition.filtered := True ;
    Try
     if Mem_AllPosition.RecordCount > 0 then
     begin
      with Mem_AllPosition do
      begin
       Edit;
       FieldByName('Vald').AsInteger := 0;
       Post;
      end;
     end;
    Finally
     Mem_AllPosition.filtered := False ;
    End;

   Finally
      Mem_PackProdList.filtered := False;
      CheckLastPkg;
      lbPkgCount.Caption := 'Paket Count : '+ inttostr(Mem_PackProdList.RecordCount);
   End;
end;

procedure TPosition.btnStorePositionClick(Sender: TObject);
var
   CurrentTime : TDateTime;
   AllPositionID, MatchaProductNo, PackageNo, PositionID, PosStatus, PackProductNo : Integer;
   Prefix, PackRef, MatchaRef : String;
   LoadNo, Count, RecordCount, PkgCount, Scanned : Integer;
   MatchaFlag: Boolean;
begin
  CurrentTime := Now;
  Count := 0;
  PkgCount := 0;
  RecordCount := 0;

 // if Mem_PackProdList.State in  [dsEdit, dsInsert] then
  // Mem_PackProdList.post ;

   Mem_PackProdList.filter := 'Vald = 1';
   Mem_PackProdList.filtered := True ;

   PkgCount := Mem_PackProdList.RecordCount;

   Mem_MatchaProduct.filter := 'Vald = 1';
   Mem_MatchaProduct.filtered := True ;
   Mem_AllPosition.filter := 'Vald = 1';
   Mem_AllPosition.filtered := True ;
   Mem_MatchaRef.filter := 'Vald = 1';
   Mem_MatchaRef.filtered := True ;
   Try
    if not (Mem_PackProdList.RecordCount > 0) then
    begin
      ShowMessage('Please select a Package from Package List!');
      exit;
    end
    else if (not (Mem_MatchaProduct.RecordCount > 0)) AND (not (Mem_AllPosition.RecordCount > 0))
                 AND (not (Mem_MatchaRef.RecordCount > 0)) then
    begin
      ShowMessage('Please select a Position!');
      exit;
    end;
   Finally
     Mem_PackProdList.filtered := False ;
     Mem_MatchaProduct.filtered := False ;
     Mem_AllPosition.filtered := False ;
     Mem_MatchaRef.Filtered := False;
   End;

   Mem_PackProdList.filter := 'Vald = 1';
   Mem_PackProdList.filtered := True ;
   Try
   PkgCount := Mem_PackProdList.RecordCount;
   Mem_PackProdList.First;
//   while not (Count = PkgCount) do
   while not Mem_PackProdList.eof do
     Begin
      Inc(Count);
      MatchaFlag := False;
      PackProductNo := Mem_PackProdListProductNo.AsInteger;
      PackageNo := Mem_PackProdListPaketNr.AsInteger;
      Prefix := Mem_PackProdListPktSupplierCode.AsString;
      PackRef := Mem_PackProdListReference.AsString;
      Scanned := Mem_PackProdListScanned.AsInteger;

       Mem_AllPosition.filter := 'Vald =1';
       Mem_AllPosition.filtered := True;
       try
        Mem_AllPosition.RecordCount;
        Mem_AllPosition.First;
        if (Mem_AllPosition.RecordCount > 0) then
        begin
          AllPositionID := Mem_AllPositionPositionID.AsInteger;
          SavetoMemPosition(AllPositionID, 1, Prefix, PackageNo, Scanned, Now);
          MatchaFlag := True;
          //Mem_PackProdList.Delete;
        end;
        if (Mem_MatchaProduct.RecordCount > 0) then
        begin
          Mem_MatchaProduct.Filter := 'Vald = 1' + ' AND '+ 'ProductNo = '+inttostr(PackProductNo);
          Mem_MatchaProduct.Filtered := True;
           Try
            if (Mem_MatchaProduct.RecordCount > 0) then
            begin
              Mem_MatchaProduct.First;
              MatchaProductNo := Mem_MatchaProductProductNo.AsInteger;
              PositionID := Mem_MatchaProductPositionID.AsInteger;
              PosStatus := Mem_MatchaProductFullt.AsInteger;

               SavetoMemPosition(PositionID, PosStatus, Prefix, PackageNo, Scanned, Now);
               MatchaFlag := True;

              if not IsSameProduct(PackProductNo) then
               begin
                Mem_MatchaProduct.Filtered := False;
                Mem_MatchaProduct.Filter := 'ProductNo = '+inttostr(PackProductNo);
                Mem_MatchaProduct.Filtered := True;
                 Try
                  Mem_MatchaProduct.RecordCount;
                  Mem_MatchaProduct.First;
                  while not Mem_MatchaProduct.eof do
                   Begin
                     Mem_MatchaProduct.Delete;
                   End;
                 Finally
                  Mem_MatchaProduct.Filtered := False;
                 End;
               end;
             // else
             //   Mem_MatchaProduct.Next;
            end
            else
            begin
             if not IsSameProduct(PackProductNo) then
               begin
                Mem_MatchaProduct.Filtered := False;
                Mem_MatchaProduct.Filter := 'ProductNo = '+inttostr(PackProductNo);
                Mem_MatchaProduct.Filtered := True;
                 Try
                  Mem_MatchaProduct.RecordCount;
                  Mem_MatchaProduct.First;
                  while not Mem_MatchaProduct.eof do
                   Begin
                     Mem_MatchaProduct.Delete;
                   End;
                 Finally
                  Mem_MatchaProduct.Filtered := False;
                 End;
               end;
             // else
             //  Mem_MatchaProduct.Next;
            end;
           Finally
             Mem_MatchaProduct.Filtered := False;
           End;
        end;

        if ((Mem_MatchaRef.RecordCount > 0) ) then
        begin
          Mem_MatchaRef.Filter := 'Vald = 1';
          Mem_MatchaRef.Filtered := True;
           Try
            if (Mem_MatchaRef.RecordCount > 0) then
            begin
              Mem_MatchaRef.First;
              MatchaRef := Mem_MatchaRefREFERENCE.AsString;
              PositionID := Mem_MatchaRefPositionID.AsInteger;
              PosStatus := Mem_MatchaRefPosStatus.AsInteger;

               SavetoMemPosition(PositionID, PosStatus, Prefix, PackageNo, Scanned, Now);
               MatchaFlag := True;

              if not IsSameRef(PackRef) then
               begin
                Mem_MatchaRef.Filtered := False;
                Mem_MatchaRef.Filter := 'Reference = '+''''+PackRef+'''';
                Mem_MatchaRef.Filtered := True;
                 Try
                  Mem_MatchaRef.RecordCount;
                  Mem_MatchaRef.First;
                  while not Mem_MatchaRef.eof do
                   Begin
                     Mem_MatchaRef.Delete;
                   End;
                 Finally
                  Mem_MatchaRef.Filtered := False;
                 End;
               end;
             // else
             //   Mem_MatchaRef.Next;
            end
            else
            begin
             if not IsSameRef(PackRef) then
               begin
                Mem_MatchaRef.Filtered := False;
                Mem_MatchaRef.Filter := 'Reference = '+''''+PackRef+'''';
                Mem_MatchaRef.Filtered := True;
                 Try
                  Mem_MatchaRef.RecordCount;
                  Mem_MatchaRef.First;
                  while not Mem_MatchaRef.eof do
                   Begin
                     Mem_MatchaRef.Delete;
                   End;
                 Finally
                  Mem_MatchaRef.Filtered := False;
                 End;
               end;
             // else
             //  Mem_MatchaRef.Next;
            end;
           Finally
             Mem_MatchaRef.Filtered := False;
           End;
        end;

        if ( not Mem_AllPosition.RecordCount > 0) AND ( not Mem_MatchaProduct.RecordCount > 0)
            AND ( not Mem_MatchaRef.RecordCount > 0) then
         begin
           ShowMessage('Please select a Position!');
           Exit;
         end;

       Finally
        Mem_AllPosition.filtered := False;
       end;

      if MatchaFlag then
       begin
        Mem_PackProdList.Delete;
       end
      else
       begin
        Mem_PackProdList.Next;
       end;
     End;



    Packageno := 0;
    Mem_StorePosition.Open;
    Mem_StorePosition.RecordCount;
    //Mem_StorePosition.IndexName := 'DateCreated';
    Mem_StorePosition.first ;
     while not Mem_StorePosition.eof do
     Begin
          Packageno  := Mem_StorePositionPakageNr.AsInteger;
          Prefix := Mem_StorePositionPrefix.AsString;

          FDQ_UpdatePosStatus.ParamByName('PositionID').AsInteger := Mem_StorePositionPositionID.AsInteger;
          FDQ_UpdatePosStatus.ParamByName('PosStatus').AsInteger := Mem_StorePositionPosStatus.AsInteger;//1;
          FDQ_UpdatePosStatus.ExecSQL;

          FDQ_StorePosID.Close;
          FDQ_StorePosID.ParamByName('PosID').AsInteger := Mem_StorePositionPositionID.AsInteger;
          FDQ_StorePosID.ParamByName('CurrentDate').AsDateTime := CurrentTime;
          FDQ_StorePosID.ParamByName('Prefix').AsString := Prefix;
          FDQ_StorePosID.ParamByName('PkgNr').AsInteger := Packageno;
          FDQ_StorePosID.ExecSQL;

          sp_insPkgInvStat.ParamByName('@PackageNo').AsInteger  :=  Packageno;
          sp_insPkgInvStat.ParamByName('@Prefix').AsString      :=  Prefix ;
          sp_insPkgInvStat.ParamByName('@PIPNo').AsInteger      :=  dmArrivingLoads.PIPNo;
          sp_insPkgInvStat.ParamByName('@UserID').AsInteger     :=  ThisUser.UserID ;
          sp_insPkgInvStat.ExecProc ;

      //ShowMessage('Position: '+inttostr(Mem_StorePositionPositionID.AsInteger) +' and '+Prefix+' and '+inttostr(Packageno));

     LoadNo := dmArrivingLoads.SearchPackageNo(Packageno, dmArrivingLoads.CustomerNo, dmArrivingLoads.SHIPTOINVPOINTNO, Prefix) ;
     dmArrivingLoads.AddPkgTo_PackageARConfirmed(Packageno, LoadNo, Mem_StorePositionScanned.AsInteger, Prefix) ;

     Mem_StorePosition.Delete;


     End;

   Mem_AllPosition.filter := 'Vald = 1';
   Mem_AllPosition.filtered := True ;
   Try
    if Mem_AllPosition.RecordCount > 0 then
    begin
      with Mem_AllPosition do
      begin
       Edit;
       FieldByName('Vald').AsInteger := 0;
       Post;
      end;
    end;
   Finally
    Mem_AllPosition.filtered := False ;
   End;

    Mem_StorePosition.Close;
    Mem_StorePosition.Open;

   Finally
      Mem_PackProdList.filtered := False;
      CheckLastPkg;
      lbPkgCount.Caption := 'Paket Count : '+ inttostr(Mem_PackProdList.RecordCount);
   End;

end;

function TPosition.GetPkgPrefix(ProductNo: Integer;
      PackageNo: Integer; Prefix: String): Boolean;
var
   I: Integer;
begin
     Result := False;

     FDQ_ProductPkg.Close;
     FDQ_ProductPkg.ParamByName('ProductNo').AsInteger := ProductNo;
     FDQ_ProductPkg.Open;
     FDQ_ProductPkg.RecordCount;
     FDQ_ProductPkg.First;
      while not FDQ_ProductPkg.Eof do
      begin
         if (FDQ_ProductPkgPackageNo.AsInteger = PackageNo) AND (FDQ_ProductPkgSupplierCode.AsString = Prefix) then
          begin
            Result := True;
            Exit;
          end;
         FDQ_ProductPkg.Next;
      end;
end;

procedure TPosition.grid_Matcha_RefDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  PositionID, PrevPosID, ValdMatchaProd, SelectedMatchProdNo, Packageno, SelectedPositionAllID, PackProductNo, MatchaProductNo : Integer;
  SelectedProdLen, MatchaRefProdNo : Integer;
  Prefix, SelectedRef, MatchaRef, PackRef, MatchaProdRef : String;
begin
    //if (Mem_MatchaProduct.Locate('Vald', 1, [])) then
    //ProductNo := ACellViewInfo.GridRecord.Values[cxGrid_MatchPositionDBTableView1(Sender).GetColumnByFieldName('ProductNo').Index];
   PositionID := Mem_MatchaRefPositionID.AsInteger;
   SelectedMatchProdNo := Mem_MatchaRefProductNo.AsInteger;
   SelectedProdLen := Mem_MatchaRefMaxLength.AsInteger;
   SelectedRef := Mem_MatchaRefREFERENCE.AsString;

      Mem_PackProdList.filter := 'Vald = 1';
      Mem_PackProdList.filtered := True ;
      Try
        Mem_PackProdList.first ;
        //if Mem_PackProdList.RecordCount = 1 then
        //Begin
           PackProductNo := Mem_PackProdListProductNo.AsInteger;
           // Mem_MatchaProduct.Filter := 'ProductNo = '+inttostr(PackProductNo);
           Mem_MatchaRef.Filter := 'Vald = 1';
           Mem_MatchaRef.Filtered := True;
            Try
            Mem_MatchaRef.RecordCount;
            Mem_MatchaRef.First;
             while not Mem_MatchaRef.Eof do
               begin
                  with Mem_MatchaRef do
                    begin
                     Edit;
                     FieldByName('Vald').AsInteger := 0;
                     Post;
                     Next;
                    end;
               end;
            Finally
              Mem_MatchaRef.Filtered := False;
            End;

      Finally
       Mem_PackProdList.filtered := False ;
      End;



    if Mem_MatchaRef.FindKey([PositionID,SelectedMatchProdNo,SelectedProdLen,SelectedRef]) then
      begin
        Mem_MatchaRef.Edit;
        Mem_MatchaRef.FieldByName('Vald').AsInteger := 1;
        Mem_MatchaRef.Post;
      end;


   Mem_AllPosition.filter := 'Vald = 1';
   Mem_AllPosition.filtered := True;
   Try
    if (Mem_AllPosition.RecordCount > 0) then
    begin
     Mem_AllPosition.First;

     Mem_PackProdList.filter := 'Vald = 1';
     Mem_PackProdList.filtered := True ;
     Try
      Mem_PackProdList.RecordCount;
      Mem_PackProdList.first ;
      while not Mem_PackProdList.eof do
      Begin
        PackProductNo := Mem_PackProdListProductNo.AsInteger;
        Packageno  := Mem_PackProdListPaketnr.AsInteger;
        Prefix := Mem_PackProdListPktSupplierCode.AsString;
        PackRef := Mem_PackProdListReference.AsString;

        Mem_MatchaRef.filter := 'Vald = 1';
        Mem_MatchaRef.filtered := True;
        Try
          Mem_MatchaRef.RecordCount;
          Mem_MatchaRef.first ;
           while not Mem_MatchaRef.eof do
            Begin
             MatchaRef := Mem_MatchaRefREFERENCE.AsString;
             MatchaRefProdNo := Mem_MatchaRefProductNo.AsInteger;

             if (PackRef = MatchaRef) AND (PackProductNo = MatchaRefProdNo) AND (Mem_MatchaRefVald.AsInteger = 1) then
              begin
               with Mem_AllPosition do
               begin
                 Open;
                 Edit;
                 FieldByName('Vald').AsInteger := 0;
                 Post;
               end;
              end;

             Mem_MatchaRef.Next;
            End;

        Finally
         Mem_MatchaRef.filtered := False;
        End;

        Mem_PackProdList.next ;
       End;
      Finally
       Mem_PackProdList.filtered := False ;
      End;
    end;
   Finally
     Mem_AllPosition.filtered := False;
   End;


      Mem_MatchaProduct.filter := 'Vald = 1';
      Mem_MatchaProduct.filtered := True;
      Try
       if (Mem_MatchaProduct.RecordCount > 0) then
       begin
        Mem_MatchaProduct.First;
        while not Mem_MatchaProduct.eof do
        begin
         MatchaProductNo := Mem_MatchaProductProductNo.AsInteger;
         MatchaProdRef := Mem_MatchaProductReference.AsString;

         Mem_MatchaRef.filter := 'Vald = 1';
         Mem_MatchaRef.filtered := True;
         Try
           Mem_MatchaRef.RecordCount;
           Mem_MatchaRef.first ;
            while not Mem_MatchaRef.eof do
             Begin
              MatchaRef := Mem_MatchaRefREFERENCE.AsString;
              MatchaRefProdNo := Mem_MatchaRefProductNo.AsInteger;

              if (MatchaProdRef = MatchaRef) AND (MatchaProductNo = MatchaRefProdNo)
                AND (Mem_MatchaRefVald.AsInteger = 1) then
               begin
                with Mem_MatchaProduct do
                begin
                  Edit;
                  FieldByName('Vald').AsInteger := 0;
                  Post;
                end;
               end;

              Mem_MatchaRef.Next;
             End;
         Finally
          Mem_MatchaRef.filtered := False;
         End;

         Mem_MatchaProduct.Next;
        end;

       end;
      Finally
        Mem_MatchaProduct.filtered := False;
      End;


    //ACellViewInfo.GridView.Items[]
    AHandled := True;
end;

procedure TPosition.grid_ProductListDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if Mem_PackProdListVald.AsInteger = 1 then
  begin
   with Mem_PackProdList do
   begin
     Edit;
     FieldByName('Vald').AsInteger := 0;
     Post;
   end
  end
 else
  begin
   with Mem_PackProdList do
    begin
     Edit;
     FieldByName('Vald').AsInteger := 1;
     Post;
    end;
  end;
  AHandled := True;
end;

procedure TPosition.SavetoMemPosition(PositionID, PosStatus: Integer; Prefix: String; PkgNr, Scanned: Integer; DateCreated : TDateTime);
begin
   with Mem_StorePosition do
    begin
      Open;
      Append;
      FieldByName('PositionID').AsInteger := PositionID;
      FieldByName('PosStatus').AsInteger := PosStatus;
      FieldByName('Prefix').AsString := Prefix;
      FieldByName('PakageNr').AsInteger := PkgNr;
      FieldByName('Scanned').AsInteger := Scanned;
      FieldByName('DateCreated').AsDateTime := DateCreated;
      Post;
    end;
end;

procedure TPosition.cxGrid_AllPositionDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   Packageno, SelectedPositionAllID, PackProductNo, MatchaProductNo, MatchaRefProdNo : Integer;
   Prefix, MatchaRef, PackProdRef : String;
begin
   SelectedPositionAllID := Mem_AllPositionPositionID.AsInteger;

   if Mem_AllPositionVald.AsInteger = 1 then
   begin
    with Mem_AllPosition do
     begin
      Edit;
      FieldByName('Vald').AsInteger := 1;
      Post;
     end
   end;

   Mem_AllPosition.filter := 'Vald = 1';
   Mem_AllPosition.filtered := True ;
   Try
   Mem_AllPosition.RecordCount;
   Mem_AllPosition.First;
    while not Mem_AllPosition.Eof do
      begin
         with Mem_AllPosition do
           begin
               Edit;
               if (FieldByName('Vald').AsInteger = 1) then
               begin
                 FieldByName('Vald').AsInteger := 0;
                 Post;
               end;
               Mem_AllPosition.Next;
           end;
      end;
   Finally
     Mem_AllPosition.filtered := False ;
   End;

   if Mem_AllPosition.FindKey([SelectedPositionAllID]) then
   begin
     Mem_AllPosition.Edit;
     Mem_AllPosition.FieldByName('Vald').AsInteger := 1;
     Mem_AllPosition.Post;
   end;


    Mem_PackProdList.filter := 'Vald = 1';
    Mem_PackProdList.filtered := True ;
    Try
    Mem_PackProdList.RecordCount;
    Mem_PackProdList.first ;
     while not Mem_PackProdList.eof do
     Begin
        PackProductNo := Mem_PackProdListProductNo.AsInteger;
        Packageno  := Mem_PackProdListPaketnr.AsInteger;
        Prefix := Mem_PackProdListPktSupplierCode.AsString;
        //SelectedPositionAllID := PositionAllIDList.Items[listboxAll.ItemIndex];
        if Mem_MatchaProduct.Active = False then
         Mem_MatchaProduct.Active := True;

        Mem_MatchaProduct.filter := 'Vald = 1';
        Mem_MatchaProduct.filtered := True;
        Try
          Mem_MatchaProduct.RecordCount;
          Mem_MatchaProduct.first ;
           while not Mem_MatchaProduct.eof do
            Begin
             MatchaProductNo := Mem_MatchaProductProductNo.AsInteger;

             if (PackProductNo = MatchaProductNo) AND (Mem_MatchaProductVald.AsInteger = 1) then
              begin
               with Mem_MatchaProduct do
                begin
                 Open;
                 Edit;
                 FieldByName('Vald').AsInteger := 0;
                 Post;
                end;
              end;

             Mem_MatchaProduct.Next;
            End;

        Finally
         Mem_MatchaProduct.filtered := False;
        End;

      Mem_PackProdList.next ;
     End;
    Finally
     Mem_PackProdList.filtered := False ;
    End;


    Mem_PackProdList.filter := 'Vald = 1';
    Mem_PackProdList.filtered := True ;
    Try
    Mem_PackProdList.RecordCount;
    Mem_PackProdList.first ;
     while not Mem_PackProdList.eof do
     Begin
        PackProductNo := Mem_PackProdListProductNo.AsInteger;
        Packageno  := Mem_PackProdListPaketnr.AsInteger;
        Prefix := Mem_PackProdListPktSupplierCode.AsString;
        PackProdRef := Mem_PackProdListReference.AsString;

     if not Mem_MatchaRef.Active then
      Mem_MatchaRef.Active := True;


      Mem_MatchaRef.filter := 'Vald = 1';
       Mem_MatchaRef.filtered := True;
       Try
         Mem_MatchaRef.RecordCount;
         Mem_MatchaRef.first ;
          while not Mem_MatchaRef.eof do
           Begin
            MatchaRef := Mem_MatchaRefREFERENCE.AsString;
            MatchaRefProdNo := Mem_MatchaRefProductNo.AsInteger;

            if (MatchaRef = PackProdRef) AND (MatchaRefProdNo = PackProductNo)
              AND (Mem_MatchaRefVald.AsInteger = 1) then
             begin
              with Mem_MatchaRef do
              begin
                Edit;
                FieldByName('Vald').AsInteger := 0;
                Post;
              end;
             end;

            Mem_MatchaRef.Next;
           End;
       Finally
        Mem_MatchaRef.filtered := False;
       End;
       Mem_PackProdList.next ;
     End;
    Finally
     Mem_PackProdList.filtered := False ;
    End;
 //ShowMessage(SelectedPositionAllName +' and '+Sinttostr(electedPositionAllID));
   AHandled := True;

end;

procedure TPosition.cxGrid_MatchPositionDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  PositionID, PrevPosID, ValdMatchaProd, SelectedMatchProdNo, Packageno, SelectedPositionAllID, PackProductNo, MatchaProductNo : Integer;
  SelectedProdLen, MatchaRefProdNo : Integer;
  Prefix, SelectedRef, MatchaRef : String;
begin
    //if (Mem_MatchaProduct.Locate('Vald', 1, [])) then
    //ProductNo := ACellViewInfo.GridRecord.Values[cxGrid_MatchPositionDBTableView1(Sender).GetColumnByFieldName('ProductNo').Index];
   PositionID := Mem_MatchaProductPositionID.AsInteger;
   SelectedMatchProdNo := Mem_MatchaProductProductNo.AsInteger;
   SelectedProdLen := Mem_MatchaProductMaxLength.AsInteger;
   SelectedRef := Mem_MatchaProductReference.AsString;


     if Mem_MatchaProductVald.AsInteger = 1 then
        begin
         with Mem_MatchaProduct do
          begin
           Edit;
           FieldByName('Vald').AsInteger := 1;
           Post;
          end
        end;

      Mem_PackProdList.filter := 'Vald = 1';
      Mem_PackProdList.filtered := True ;
      Try
        Mem_PackProdList.first ;
        //if Mem_PackProdList.RecordCount = 1 then
        //Begin
           PackProductNo := Mem_PackProdListProductNo.AsInteger;
           // Mem_MatchaProduct.Filter := 'ProductNo = '+inttostr(PackProductNo);
           Mem_MatchaProduct.Filter := 'Vald = 1';
           Mem_MatchaProduct.Filtered := True;
            Try
            Mem_MatchaProduct.RecordCount;
            Mem_MatchaProduct.First;
             while not Mem_MatchaProduct.Eof do
               begin
                  with Mem_MatchaProduct do
                    begin
                        ValdMatchaProd := Mem_MatchaProductProductNo.AsInteger;
                        Edit;
                       // if (SelectedMatchProdNo = ValdMatchaProd) then
                        begin
                          PrevPosID := Mem_MatchaProductPositionID.AsInteger;
                          FieldByName('Vald').AsInteger := 0;
                          Post;
                        end;
                        Mem_MatchaProduct.Next;
                    end;
               end;
            Finally
              Mem_MatchaProduct.Filtered := False;
            End;

                    (*
            if Mem_PackProdList.RecordCount = 1 then
                       Begin
                        if Mem_MatchaProduct.FindKey([PositionID]) AND (SelectedMatchProdNo = PackProductNo) then
                         begin
                          Mem_MatchaProduct.Edit;
                          Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
                          Mem_MatchaProduct.Post;
                         end
                        else
                         begin
                          ShowMessage('Wrong selection! Choose appropriate choice.');
                           if Mem_MatchaProduct.FindKey([PrevPosID]) then
                           begin
                             Mem_MatchaProduct.Edit;
                             Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
                             Mem_MatchaProduct.Post;
                           end;

                          exit;
                         end;
                       End
                      else
                       begin
                        if Mem_MatchaProduct.FindKey([PositionID]) then
                         begin
                          Mem_MatchaProduct.Edit;
                          Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
                          Mem_MatchaProduct.Post;
                         end;
                       end;
          *)

      Finally
       Mem_PackProdList.filtered := False ;
      End;


     Mem_MatchaProduct.IndexName := 'Index_PosID';
     if Mem_MatchaProduct.FindKey([PositionID,SelectedMatchProdNo,SelectedProdLen,SelectedRef]) then
        begin
          Mem_MatchaProduct.Edit;
          Mem_MatchaProduct.FieldByName('Vald').AsInteger := 1;
          Mem_MatchaProduct.Post;
        end;


   Mem_AllPosition.filter := 'Vald = 1';
   Mem_AllPosition.filtered := True;
   Try
    if (Mem_AllPosition.RecordCount > 0) then
    begin
     Mem_AllPosition.First;

     Mem_PackProdList.filter := 'Vald = 1';
     Mem_PackProdList.filtered := True ;
     Try
      Mem_PackProdList.RecordCount;
      Mem_PackProdList.first ;
      while not Mem_PackProdList.eof do
      Begin
        PackProductNo := Mem_PackProdListProductNo.AsInteger;
        Packageno  := Mem_PackProdListPaketnr.AsInteger;
        Prefix := Mem_PackProdListPktSupplierCode.AsString;
        //SelectedPositionAllID := PositionAllIDList.Items[listboxAll.ItemIndex];
        Mem_MatchaProduct.filter := 'Vald = 1';
        Mem_MatchaProduct.filtered := True;
        Try
          Mem_MatchaProduct.RecordCount;
          Mem_MatchaProduct.first ;
           while not Mem_MatchaProduct.eof do
            Begin
             MatchaProductNo := Mem_MatchaProductProductNo.AsInteger;

             if (PackProductNo = MatchaProductNo) AND (Mem_MatchaProductVald.AsInteger = 1) then
              begin
               with Mem_AllPosition do
               begin
                 Open;
                 Edit;
                 FieldByName('Vald').AsInteger := 0;
                 Post;
               end;
              end;

             Mem_MatchaProduct.Next;
            End;

        Finally
         Mem_MatchaProduct.filtered := False;
        End;

        Mem_PackProdList.next ;
       End;
      Finally
       Mem_PackProdList.filtered := False ;
      End;
    end;
   Finally
     Mem_AllPosition.filtered := False;
   End;

   if not Mem_MatchaRef.Active then
    Mem_MatchaRef.Active := True;


      Mem_MatchaRef.filter := 'Vald = 1';
       Mem_MatchaRef.filtered := True;
       Try
         Mem_MatchaRef.RecordCount;
         Mem_MatchaRef.first ;
          while not Mem_MatchaRef.eof do
           Begin
            MatchaRef := Mem_MatchaRefREFERENCE.AsString;
            MatchaRefProdNo := Mem_MatchaRefProductNo.AsInteger;

            if (MatchaRef = SelectedRef) AND (MatchaRefProdNo = SelectedMatchProdNo)
              AND (Mem_MatchaRefVald.AsInteger = 1) then
             begin
              with Mem_MatchaRef do
              begin
                Edit;
                FieldByName('Vald').AsInteger := 0;
                Post;
              end;
             end;

            Mem_MatchaRef.Next;
           End;
       Finally
        Mem_MatchaRef.filtered := False;
       End;

    //ACellViewInfo.GridView.Items[]
    AHandled := True;
end;

procedure TPosition.DeleteMatchaProdNo(PackProductNo, MatchaProdNo: Integer);
begin
  Mem_MatchaProduct.filter := 'Vald = 0';
  Mem_MatchaProduct.filtered := True;
    Try
      Mem_MatchaProduct.First;
      while not Mem_MatchaProduct.Eof do
      begin
       if PackProductNo = MatchaProdNo then
        Begin
          Mem_MatchaProduct.Delete;
        End
       else
       begin
         Mem_MatchaProduct.Next;
       end;
      end;
    Finally
      Mem_MatchaProduct.Filtered := False;
    End;
end;

procedure TPosition.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  StoreStyleName: String;
begin
  StoreStyleName := '';
  if Mem_PackProdList.RecordCount > 0 then
  begin
   ShowMessage('Scanned packages are left remaining!');
   CanClose := False;
  end
  else
  begin
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  grid_ProductList.Name, grid_ProductListDBTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  cxGrid_MatchPosition.Name, cxGrid_MatchPositionDBTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  cxGrid_AllPosition.Name, cxGrid_AllPositionDBTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  grid_Matcha_Ref.Name, grid_Matcha_RefDBTableView1) ;

   dmsSystem.StoreStyles(ThisUser.UserID, Self.Name, cxPropertiesStore1);
  end;

end;

procedure TPosition.FormShow(Sender: TObject);
begin

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + grid_ProductList.Name, grid_ProductListDBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + cxGrid_MatchPosition.Name, cxGrid_MatchPositionDBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + cxGrid_AllPosition.Name, cxGrid_AllPositionDBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + grid_Matcha_Ref.Name, grid_Matcha_RefDBTableView1) = False then ;

  if dmsSystem.LoadStyles(ThisUser.UserID, Self.Name, cxPropertiesStore1) = False then ;

end;

end.

