unit dmsSinglePkg;

interface

uses
  Classes,
  SysUtils,
Controls,
Forms,
  VidaType, DB, kbmMemTable, Dialogs, SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt, siComp, siLngLnk ;


type
  Tdm_SinglePkg = class(TDataModule)
    mtSinglePkg: TkbmMemTable;
    mtSinglePkgProductNo: TIntegerField;
    mtSinglePkgPRODUCTDESCRIPTION: TStringField;
    mtSinglePkgACT_THICK: TFloatField;
    mtSinglePkgACT_WIDTH: TFloatField;
    mtSinglePkgPRODUCTGROUPNO: TIntegerField;
    mtSinglePkgNOM_THICK: TFloatField;
    mtSinglePkgNOM_WIDTH: TFloatField;
    mtSinglePkgGradeStampNo: TIntegerField;
    mtSinglePkgBarcodeID: TIntegerField;
    mtSinglePkgOwnerNo: TIntegerField;
    mtSinglePkgVerkNo: TIntegerField;
    dsSinglePkg: TDataSource;
    dsLengthGroup: TDataSource;
    dsProdLength: TDataSource;
    ds_Verk: TDataSource;
    mtSinglePkgPIPNo: TIntegerField;
    mtSinglePkgLIPNo: TIntegerField;
    mtSinglePkgRegDate: TDateTimeField;
    ds_RegPoints: TDataSource;
    mtSinglePkgRegPointNo: TIntegerField;
    mtSinglePkgINCH_THICK: TFloatField;
    mtSinglePkgINCH_WIDTH: TFloatField;
    mtSinglePkgTotalPcs: TIntegerField;
    mtSinglePkgPackageNo: TIntegerField;
    mtSinglePkgSUPPLIERCODE: TStringField;
    mtSinglePkgAM3: TFloatField;
    mtSinglePkgSaved: TBooleanField;
    mtInputOptions: TkbmMemTable;
    mtInputOptionsInputOptionNo: TIntegerField;
    mtInputOptionsInputOption: TStringField;
    mtSinglePkgInputOptionNo: TIntegerField;
    mtSinglePkgStatus: TIntegerField;
    mtSinglePkgOperation: TIntegerField;
    mtSinglePkgOldPackageTypeNo: TIntegerField;
    mtLengths: TkbmMemTable;
    mtLengthsProductLengthNo: TIntegerField;
    mtLengthsNoOfPieces: TIntegerField;
    mtSinglePkgIC_grpno: TIntegerField;
    mtSinglePkgCallingFormType: TIntegerField;
    ds_Leverant: TDataSource;
    mtSinglePkgProducerNo: TIntegerField;
    mtLengthsALMM: TFloatField;
    mtSinglePkgSurfacingNo: TIntegerField;
    sq_Products: TFDQuery;
    sq_pcsPerlength: TFDQuery;
    cds_Verk: TFDQuery;
    cds_Leverant: TFDQuery;
    sq_ProductsPackageTypeNo: TIntegerField;
    sq_ProductsTotalNoOfPieces: TIntegerField;
    sq_ProductsBarCodeID: TIntegerField;
    sq_ProductsGradeStamp: TIntegerField;
    sq_ProductsProductNo: TIntegerField;
    sq_ProductsProductGroupNo: TIntegerField;
    sq_ProductsActualThicknessMM: TFloatField;
    sq_ProductsActualWidthMM: TFloatField;
    sq_ProductsNominalThicknessMM: TFloatField;
    sq_ProductsNominalWidthMM: TFloatField;
    sq_ProductsProductDisplayName: TStringField;
    sq_ProductsNominalThicknessINCH: TStringField;
    sq_ProductsNominalWidthINCH: TStringField;
    sq_ProductsOwnerNo: TIntegerField;
    sq_ProductsPhysicalInventoryPointNo: TIntegerField;
    sq_ProductsLogicalInventoryPointNo: TIntegerField;
    sq_ProductsSurfacingNo: TIntegerField;
    sq_pcsPerlengthPcsPerLength: TStringField;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_LeverantClientNo: TIntegerField;
    cds_LeverantClientName: TStringField;
    cds_ProductGroupLength: TFDQuery;
    cds_RegPoints: TFDQuery;
    cdsProdLength: TFDQuery;
    cdsLengthGroup: TFDQuery;
    cds_ProductGroupLengthProductGroupNo: TIntegerField;
    cds_ProductGroupLengthProductLengthNo: TIntegerField;
    cds_ProductGroupLengthCreatedUser: TSmallintField;
    cds_ProductGroupLengthModifiedUser: TSmallintField;
    cds_ProductGroupLengthDateCreated: TSQLTimeStampField;
    cds_RegPointsRegPointNo: TIntegerField;
    cds_RegPointsRegPointName: TStringField;
    cdsLengthGroupGroupNo: TIntegerField;
    cdsLengthGroupGroupName: TStringField;
    sq_PkgTypeLength: TFDQuery;
    sq_PkgTypeLengthProductLengthNo: TIntegerField;
    sq_PkgTypeLengthNoOfPieces: TIntegerField;
    sq_PkgTypeLengthALMM: TFloatField;
    sp_PackageTypes: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_changePkgInventering: TFDStoredProc;
    sp_PkgInfo: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthPET: TIntegerField;
    cds_ProdLengthFingerJoint: TIntegerField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    cdsProdLengthAM3: TBCDField;
    cdsProdLengthAM1: TBCDField;
    cdsProdLengthGroupNo: TIntegerField;
    cdsProdLengthSTYCK: TIntegerField;
    cdsProdLengthproductLengthno: TIntegerField;
    cdsProdLengthALMM: TFloatField;
    cdsProdLengthNLMM: TFloatField;
    cdsProdLengthFOT: TFloatField;
    cdsProdLengthTUM: TStringField;
    cdsProdLengthPET: TIntegerField;
    cdsProdLengthFJ: TIntegerField;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    siLangLinked_dm_SinglePkg: TsiLangLinked;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure mtSinglePkgAfterInsert(DataSet: TDataSet);
    procedure dsLengthGroupDataChange(Sender: TObject; Field: TField);
    procedure mtSinglePkgProducerNoChange(Sender: TField);
    procedure cdsProdLengthBeforePost(DataSet: TDataSet);

  private
    procedure SummarizePkg ;
    procedure CopyToOriginalStructure ;
    { Private declarations }
  public
    ProductLengthNo_For_LPM_Entry : Integer ;
    function  GetPcsPerLength (const PackageTypeNo : Integer) : String ;
    procedure RefreshLengths ;
    function  PackageNumberExists(const PkgNo : Integer; const SupplierCode : String3) : Boolean;
    function  SavePackages2 : Boolean ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
    function  GetTotalPieces : Integer ;
    procedure CopyProductData ;
    function  GetTotalOriginalPieces : Integer ;
  end;

var
  dm_SinglePkg: Tdm_SinglePkg;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaSystem,
  dmsVidaContact, udmLanguage;

{ TDataModule1 }

function Tdm_SinglePkg.GetPcsPerLength (const PackageTypeNo : Integer) : String ;
Begin
 sq_pcsPerlength.Close ;
 sq_pcsPerlength.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_pcsPerlength.Open ;
 if not sq_pcsPerlength.Eof then
  Result:= sq_pcsPerlengthPcsPerLength.AsString
   else
    Result:= '' ;
 sq_pcsPerlength.Close ;
End ;

function Tdm_SinglePkg.GetTotalPieces : Integer ;
begin
 Result:= 0 ;
 With dm_SinglePkg do
 Begin
 cdsProdLength.First ;
 While not cdsProdLength.Eof do
 Begin
  if cdsProdLengthStyck.AsInteger > 0 then
  Begin
   Result:= Result + cdsProdLengthStyck.AsInteger ;
  End ;//if..
  cdsProdLength.Next ;
 End ; //While
 End ;//with
end;

function Tdm_SinglePkg.GetTotalOriginalPieces : Integer ;
begin
 Result:= 0 ;
 mtLengths.First ;
 While not mtLengths.Eof do
 Begin
  if mtLengthsNoOfPieces.AsInteger > 0 then
  Begin
   Result:= Result + mtLengthsNoOfPieces.AsInteger ;
  End ;//if..
  mtLengths.Next ;
 End ; //While
end;

function Tdm_SinglePkg.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function Tdm_SinglePkg.SavePackages2 : Boolean ;
Var
  Save_Cursor : TCursor;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var
  PkgTypeNumbers  : TList;
  PackagetypeNo   : Integer ;
  MyList          : TList;
  ARecord         : PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('ProductNo'    ).AsInteger := mtSinglePkgPRODUCTNO.AsInteger ;

      if mtSinglePkgBARCODEID.AsInteger < 1 then
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('BarCodeID'    ).AsInteger := mtSinglePkgBARCODEID.AsInteger ;

      if mtSinglePkgGRADESTAMPNO.AsInteger < 1 then
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('GradeStamp'   ).AsInteger := mtSinglePkgGRADESTAMPNO.AsInteger ;
      sp_PackageTypes.ParamByName('TotalPieces'  ).AsInteger := mtSinglePkgTotalPcs.AsInteger ;
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;

    end;

    Function GetNoOfLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     mtLengths.First ;
     while not mtLengths.Eof do
     Begin
      if mtLengthsNoOfPieces.AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=
       dmsSystem.GetProductLengthNoByLengthRule(mtLengthsALMM.AsString,
                                    mtSinglePkgNOM_THICK.AsFloat,
                                    mtSinglePkgSurfacingNo.AsInteger) ;
//       mtLengthsProductLengthNo.AsInteger ;
       ARecord^.NoOfPieces      := mtLengthsNoOfPieces.AsInteger ;
       MyList.Add(ARecord);
      End ;
      mtLengths.Next ;
     End ;//while
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Begin
     Result:= 0 ;
     mtLengths.First ;
     while not mtLengths.Eof do
     Begin
      if mtLengthsNoOfPieces.AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo := mtLengthsProductLengthNo.AsInteger ; //mtPackages.Fields[cLPM_PROD_LEGNTH_NO].AsInteger ;//ProductLengthNo_For_LPM_Entry ;//StrToInt(mtPackages.Fields[x].FieldName) ;
       ARecord^.NoOfPieces      := mtLengthsNoOfPieces.AsInteger ;
       MyList.Add(ARecord);
      End ;
      mtLengths.Next ;
     End ;//while
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Begin
     Result:= 0 ;
     mtLengths.First ;
     while not mtLengths.Eof do
     Begin
      if mtLengthsNoOfPieces.AsInteger > 0 then
      Begin
       New(ARecord);
       ARecord^.ProductLengthNo := mtLengthsProductLengthNo.AsInteger ;//mtPackages.Fields[cLPM_PROD_LEGNTH_NO].AsInteger ;//ProductLengthNo_For_LPM_Entry ;//StrToInt(mtPackages.Fields[x].FieldName) ;
       ARecord^.NoOfPieces      := mtLengthsNoOfPieces.AsInteger ;
       MyList.Add(ARecord);
      End ;
      mtLengths.Next ;
     End ;
    End ;


    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if mtSinglePkgInputOptionNo.AsInteger = INPUT_PIECES then
       NoOfLengths := GetNoOfLengthsInPkg
       else
       if mtSinglePkgInputOptionNo.AsInteger = INPUT_LOPM_TOTAL_LOPM then
        NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry
        else
         NoOfLengths := GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ;


      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.NoOfPieces) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with


    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtSinglePkgProductNo.AsInteger ;

      if mtSinglePkgBARCODEID.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtSinglePkgBARCODEID.AsInteger ;

      if mtSinglePkgGRADESTAMPNO.AsInteger < 1 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtSinglePkgGRADESTAMPNO.AsInteger ;

      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtSinglePkgTOTALPCS.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ParamByName('@ProdInstruNo').AsInteger := 0 ;

      sp_NewPackageType.ExecProc;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_NewPackageType') ;
     Raise ;
    End ;
  End ;

//************** Now add the PackageTypeDetail records. ********************
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_NewPackageDetail') ;
     Raise ;
    End ;
  End ;
       end;

    end;

procedure  SavePackageTypeLengths ;
Begin
// sp_Populate_One_PkgTypeLengths.Close ;
 Try
 sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_Populate_One_PkgTypeLengths.ExecProc ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_Populate_One_PkgTypeLengths') ;
     Raise ;
    End ;
  End ;
// sp_Populate_One_PkgTypeLengths.Close ;
End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
    Try
    sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    sp_PackageTotals.ExecProc;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_PackageTotals') ;
     Raise ;
    End ;
  End ;
//    sp_PackageTotals.Close;
  end;


  begin
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
       //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo) ;
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  function SavePackage : Integer ;
  begin
   Try
    sp_NewPackageNo.ParamByName('@PackageNo'              ).AsInteger  := mtSinglePkgPackageNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewPackageNo.ParamByName('@SupplierCode'           ).AsString   := mtSinglePkgSUPPLIERCODE.AsString;
    sp_NewPackageNo.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtSinglePkgLIPNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@SupplierNo'             ).AsInteger  := mtSinglePkgVerkNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtSinglePkgRegPointNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtSinglePkgRegDate.AsDateTime) ;
    sp_NewPackageNo.ParamByName('@OwnerNo'                ).AsInteger  := mtSinglePkgOwnerNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@ProducerNo'             ).AsInteger  := mtSinglePkgProducerNo.AsInteger ;
    sp_NewPackageNo.ParamByName('@Status'                 ).AsInteger  := mtSinglePkgStatus.AsInteger ;

    sp_NewPackageNo.ExecProc;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_NewPackageNo') ;
     Raise ;
    End ;
  End ;
  end;

  function UpdatePackage : Integer ;
  begin
    Try
    sp_changePkgInventering.ParamByName('@PackageNo'              ).AsInteger      := mtSinglePkgPackageNo.AsInteger ;
    sp_changePkgInventering.ParamByName('@PackageTypeNo'          ).AsInteger      := PackageTypeNo;
    sp_changePkgInventering.ParamByName('@SupplierCode'           ).AsString       := mtSinglePkgSUPPLIERCODE.AsString;
    sp_changePkgInventering.ParamByName('@LogicalInventoryPointNo').AsInteger      := mtSinglePkgLIPNo.AsInteger ;
    sp_changePkgInventering.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_changePkgInventering.ParamByName('@RegistrationPointNo'    ).AsInteger      := mtSinglePkgRegPointNo.AsInteger ;
    sp_changePkgInventering.ParamByName('@OLD_PackageTypeNo'      ).AsInteger      := mtSinglePkgOldPackageTypeNo.AsInteger; //this is the old pkgtype
    sp_changePkgInventering.ParamByName('@SupplierNo'             ).AsInteger      := mtSinglePkgVerkNo.AsInteger ;
    sp_changePkgInventering.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtSinglePkgRegDate.AsDateTime) ;
    sp_changePkgInventering.ParamByName('@MatPunktAgareNo'        ).AsInteger      := mtSinglePkgOwnerNo.AsInteger ;

    sp_changePkgInventering.ExecProc;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' sp_changePkgInventering') ;
     Raise ;
    End ;
  End ;
  end;


//Main SavePackages2
begin
 Result:= False ;
 if mtSinglePkg.State in [dsBrowse] then
  mtSinglePkg.Edit ;

//om nya stycketal från "GetTotalPieces" är större än 0 använd det!
// mtSinglePkgTotalPcs.AsInteger:= GetTotalPieces ;
 if GetTotalPieces > 0 then
  CopyToOriginalStructure ;
  mtSinglePkgTotalPcs.AsInteger:= GetTotalOriginalPieces ;

 if mtSinglePkg.State in [dsEdit, dsInsert] then
  mtSinglePkg.Post ;

 if mtSinglePkgTotalPcs.AsInteger = 0 then
 Begin
  ShowMessage('Stycketal saknas..') ;
  Exit ;
 End ;
 if (mtSinglePkgOperation.AsInteger = 1) or
 ((mtSinglePkgOperation.AsInteger = 0) and (PackageNumberExists(mtSinglePkgPackageNo.AsInteger, mtSinglePkgSupplierCode.AsString) = False)) then
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  Result:= False ;

   dmsConnector.StartTransaction ;
   try
    SavePkgType ;
    if mtSinglePkgOperation.AsInteger = 0 then
     SavePackage
      else
       UpdatePackage ;



    PackageTypeNo:= -1 ;
    dmsConnector.Commit ;
    Result:= True ;
   except
    dmsConnector.Rollback ;
    Result:= False ;
   end;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End
  else
   ShowMessage('Paketnr är inte unikt.') ;
end;

procedure Tdm_SinglePkg.CopyToOriginalStructure ;
Begin
 mtLengths.Active:= False ;
 mtLengths.Active:= True ;
 cdsProdLength.First ;
 While not cdsProdLength.Eof do
 Begin
  if cdsProdLengthStyck.AsInteger > 0 then
  Begin
   mtLengths.Insert ;
   mtLengthsProductLengthNo.AsInteger := cdsProdLengthProductLengthNo.AsInteger ;
   mtLengthsNoOfPieces.AsInteger      := cdsProdLengthStyck.AsInteger ;
   mtLengthsALMM.AsFloat              := cdsProdLengthALMM.AsFloat ;
   mtLengths.Post ;
  End ;//if..
  cdsProdLength.Next ;
 End ; //While
End ;

function Tdm_SinglePkg.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;      

procedure Tdm_SinglePkg.DataModuleCreate(Sender: TObject);
begin
 cds_Verk.Active:= True ;
// cds_Verk.Filter:= 'RoleType = 9 or RoleType = 6' ;
// cds_Verk.Filtered:= True ;

 cds_Leverant.Active:= True ;
// cds_Leverant.Filter:= 'RoleType = 2' ;//Leverantör virke
// cds_Leverant.Filtered:= True ;


 mtInputOptions.Active:= True ;
 mtInputOptions.InsertRecord([0, 'STYCK']) ;
 mtInputOptions.InsertRecord([1, 'LÖPM Total Löpmeter']) ;
 mtInputOptions.InsertRecord([2, 'LÖPM Average Length']) ;
end;

procedure Tdm_SinglePkg.SummarizePkg ;
begin
 cdsProdLength.First ;
 While not cdsProdLength.Eof do
 Begin
  mtSinglePkgTotalPcs.AsInteger := 0 ;
  mtSinglePkgAM3.AsFloat        := 0 ;
  if cdsProdLengthStyck.AsInteger > 0 then
  Begin
  if mtSinglePkgInputOptionNo.AsInteger = INPUT_PIECES then
   Begin
//PCS
    cdsProdLength.First ;
    While not cdsProdLength.Eof do

    mtSinglePkgTotalPcs.AsInteger:= mtSinglePkgTotalPcs.AsInteger + cdsProdLengthStyck.AsInteger ;

//MFBM

//ACT M3
    mtSinglePkgAM3.AsFloat:= mtSinglePkgAM3.AsFloat + cdsProdLengthAM3.AsFloat ;


//NOM M3

//LOPM


//M2

   End
   else
   if mtSinglePkgInputOptionNo.AsInteger = INPUT_LOPM_TOTAL_LOPM then
(*//INPUT LÖPMETER!!
   Begin
//PCS
    if mtpackages.Fields[FirstLengthColumn].AsInteger < 1 then
     mtpackages.Fields[FirstLengthColumn].AsInteger:= 1 ;

    mtpackages.Fields[cTOTALPCS].AsInteger:= 0 ; //pcs
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALPCS].AsInteger:= mtpackages.Fields[cTOTALPCS].AsInteger +
    mtpackages.Fields[x].AsInteger ;
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[cTOTALLPM].AsFloat
    /
    mtpackages.Fields[cTOTALPCS].AsInteger*1000;


//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat

    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;
//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;

//LOPM

//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (mtpackages.Fields[cTOTALLPM].AsFloat * //LÖPM
    mtpackages.Fields[cACTWIDTH].AsFloat/1000); *)
   End
   else
   if mtSinglePkgInputOptionNo.AsInteger = INPUT_LOPM_AVERAGE_LENGTH then
//INPUT LÖPMETER AVERAGE LENGTH!!
   Begin
//OBS! CALCULATE LENGTH  TOTAL LÖPMETER (METER) DIVIDED BY TOTAL PIECES X 1000 (TO CONVERT TO MM)
(*    if mtpackages.Fields[cTOTALPCS].AsInteger > 0 then
    NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]:=
    mtpackages.Fields[FirstLengthColumn].AsFloat ;

//ACT M3
    mtpackages.Fields[cTOTALACTM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALACTM3].AsFloat:= mtpackages.Fields[cTOTALACTM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cACTTHICK].AsFloat/1000 *mtpackages.Fields[cACTWIDTH].AsFloat/1000) ;

//NOM M3
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALNOMM3].AsFloat:= mtpackages.Fields[cTOTALNOMM3].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    *  mtpackages.Fields[cNOMTHICK].AsFloat/1000 *mtpackages.Fields[cNOMWIDTH].AsFloat/1000) ;

//LOPM
    mtpackages.Fields[cTOTALLPM].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALLPM].AsFloat:= mtpackages.Fields[cTOTALLPM].AsFloat +
    (NominalLengthMMArray[mtpackages.Fields[cRECID].AsInteger-1]
    * mtpackages.Fields[cTOTALPCS].AsInteger //Pieces
    );


//M2
    mtpackages.Fields[cTOTALM2].AsFloat:= 0 ;
    For x:= FirstLengthColumn to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[cTOTALM2].AsFloat:= mtpackages.Fields[cTOTALM2].AsFloat +
    (NominalLengthMMArray[x]
    * mtpackages.Fields[cTOTALPCS].AsInteger * //Pieces
    mtpackages.Fields[cACTWIDTH].AsFloat/1000); *)
   End ;
//  End ; //if
  cdsProdLength.Next ;
 end //while
end;

procedure Tdm_SinglePkg.mtPackagesBeforePost(DataSet: TDataSet);
begin
// SummarizePkg ;
end;

procedure Tdm_SinglePkg.DataModuleDestroy(Sender: TObject);
begin
 cds_Verk.Active        := False ;
 cds_Leverant.Active    := False ;
 mtInputOptions.Active  := False ;
end;

procedure Tdm_SinglePkg.mtSinglePkgAfterInsert(DataSet: TDataSet);
begin
 mtSinglePkgInputOptionNo.AsInteger     := 0 ;
 mtSinglePkgSaved.AsBoolean             := False ;
 mtSinglePkgGradeStampNo.AsInteger      := 0 ;
 mtSinglePkgBarcodeID.AsInteger         := 0 ;
 mtSinglePkgOwnerNo.AsInteger           := 0 ;
 mtSinglePkgVerkNo.AsInteger            := 0 ;
 mtSinglePkgPIPNo.AsInteger             := 0 ;
 mtSinglePkgLIPNo.AsInteger             := 0 ;
 mtSinglePkgRegDate.AsDateTime          := Now ;
 mtSinglePkgRegPointNo.AsInteger        := 0 ;
 mtSinglePkgTotalPcs.AsInteger          := 0 ;
 mtSinglePkgStatus.AsInteger            := 0 ;
mtSinglePkgIC_grpno.AsInteger           := 0 ;
end;

procedure Tdm_SinglePkg.dsLengthGroupDataChange(Sender: TObject;
  Field: TField);
begin
 RefreshLengths ;
end;

procedure Tdm_SinglePkg.RefreshLengths ;
Var ProductGroupNo, GroupNo : Integer ;
begin
 if cdsLengthGroupGroupNo.AsInteger = -1 then
 Begin
  GroupNo         := -1 ;
  ProductGroupNo  := mtSinglePkgPRODUCTGROUPNO.AsInteger ;
 End
  else
  Begin
   GroupNo        := cdsLengthGroupGroupNo.AsInteger ;
   ProductGroupNo := -1 ;
  End ;

 cdsProdLength.Active:= False ;
 cdsProdLength.ParamByName('GroupNo').AsInteger        := GroupNo ;
 cdsProdLength.ParamByName('ProductGroupNo').AsInteger := ProductGroupNo ;
 cdsProdLength.Active:= True ;
end;

procedure Tdm_SinglePkg.CopyProductData ;
Begin
 sq_Products.Close ;
 sq_Products.ParamByName('PackageNo').AsInteger         := mtSinglePkgPackageNo.AsInteger ;
 sq_Products.ParamByName('SupplierCode').AsString       := mtSinglePkgSUPPLIERCODE.AsString ;
 sq_Products.Open ;
 if not sq_Products.Eof then
 Begin
  dm_SinglePkg.mtSinglePkg.Edit ;
   mtSinglePkgOldPackageTypeNo.AsInteger                := sq_ProductsPackageTypeNo.AsInteger ;
   dm_SinglePkg.mtSinglePkgProductNo.AsInteger          := sq_ProductsProductNo.AsInteger ;
   dm_SinglePkg.mtSinglePkgPRODUCTDESCRIPTION.AsString  := sq_ProductsProductDisplayName.AsString ;
   dm_SinglePkg.mtSinglePkgACT_THICK.AsFloat            := sq_ProductsActualThicknessMM.AsFloat ;
   dm_SinglePkg.mtSinglePkgACT_WIDTH.AsFloat            := sq_ProductsActualWidthMM.AsFloat ;

   mtSinglePkgNOM_THICK.AsFloat                         := sq_ProductsNominalThicknessMM.AsFloat ;

   dm_SinglePkg.mtSinglePkgPRODUCTGROUPNO.AsInteger     := sq_ProductsProductGroupNo.AsInteger ;

   dm_SinglePkg.mtSinglePkgINCH_THICK.AsFloat           := StrToFloatDef(sq_ProductsNominalThicknessINCH.AsString,0) ;
   dm_SinglePkg.mtSinglePkgINCH_WIDTH.AsFloat           := StrToFloatDef(sq_ProductsNominalWidthINCH.AsString,0) ;

   dm_SinglePkg.mtSinglePkgGradeStampNo.AsInteger       := sq_ProductsGradeStamp.AsInteger ;
   dm_SinglePkg.mtSinglePkgBarCodeID.AsInteger          := sq_ProductsBarCodeID.AsInteger ;

   mtSinglePkgOwnerNo.AsInteger                         := sq_ProductsOwnerNo.AsInteger ;
   mtSinglePkgVerkNo.AsInteger                          := sq_ProductsOwnerNo.AsInteger ;
   mtSinglePkgPIPNo.AsInteger                           := sq_ProductsPhysicalInventoryPointNo.AsInteger ;
   mtSinglePkgLIPNo.AsInteger                           := sq_ProductsLogicalInventoryPointNo.AsInteger ;
   mtSinglePkgSurfacingNo.AsInteger                     := sq_ProductsSurfacingNo.AsInteger ;
  dm_SinglePkg.mtSinglePkg.Post ;

  
  mtLengths.Active:= True ;
  sq_PkgTypeLength.Close ;
  sq_PkgTypeLength.ParamByName('PackageTypeNo').AsInteger:= mtSinglePkgOldPackageTypeNo.AsInteger ;
  sq_PkgTypeLength.Open ;
  While not sq_PkgTypeLength.Eof do
  Begin
   mtLengths.Insert ;
   mtLengthsProductLengthNo.AsInteger := sq_PkgTypeLengthProductLengthNo.AsInteger ;
   mtLengthsNoOfPieces.AsInteger      := sq_PkgTypeLengthNoOfPieces.AsInteger ;
   mtLengthsALMM.AsFloat              := sq_PkgTypeLengthALMM.AsFloat ;
   mtLengths.Post ;
   sq_PkgTypeLength.Next ;
  End ;
  sq_PkgTypeLength.Close ;
 End ;
 sq_Products.Close ;
End ;


procedure Tdm_SinglePkg.mtSinglePkgProducerNoChange(Sender: TField);
begin
 if (mtSinglePkgOperation.AsInteger = 0) or (Length(mtSinglePkgSUPPLIERCODE.AsString) = 0) then
 mtSinglePkgSUPPLIERCODE.AsString:= dmsContact.GetClientCode(mtSinglePkgProducerNo.AsInteger) ;
end;

procedure Tdm_SinglePkg.cdsProdLengthBeforePost(DataSet: TDataSet);
begin
 cdsProdLengthAM3.AsFloat:=
 mtSinglePkgACT_THICK.AsFloat/1000
 * mtSinglePkgACT_WIDTH.AsFloat/1000
 * cdsProdLengthALMM.AsFloat/1000
 * cdsProdLengthSTYCK.AsInteger ;
 cdsProdLengthAM1.AsFloat:=  cdsProdLengthALMM.AsFloat/1000  * cdsProdLengthSTYCK.AsInteger ;
end;

end.
