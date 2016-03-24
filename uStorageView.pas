unit uStorageView;

interface
uses
  Classes, SysUtils, System.Generics.Collections,
  cxCheckComboBox, cxCheckBox,cxLookAndFeelPainters,cxControls,cxGridDBBandedTableView;
type

  TSQLHelper = class(TObject)
    private
    public
      class function GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
      class function replaceCommas(S : String): string;
      class function TaBortExtension(S : String) : String ;
  end;

  TSQLViewField = class(TObject)
    Private
      FGridField : String;
      FFieldSQL : String;
      FFieldGroup : String;
      FFieldVisible : Boolean;
    public
      constructor create(const aGridField, aFieldSQL, aFieldGroup: string; const aFieldvisible: boolean);
      property Visible: boolean read FFieldVisible;
      property fieldSQL : string read FFieldSQL;
      property group: string read FFieldGroup;
      property FieldName: string read FGridField;
  end;

  TStorageView = class(TObject)
    private
      Fgridview : TcxGridDBBandedTableView;
      FObjectList : TList<TSQLViewField>;
      FKeyFields: String;
      FSQLFile: string;
      FSQL: TStringList;
      FSQLReady: boolean;
      procedure InitiateFieldObjects;
      function getStatus(aGridField: string): boolean;
      procedure SetKeyFields(aStatus: boolean; aGridField: string);
      procedure BuildSQL;
    public
      Constructor create(aGridView: TcxGridDBBandedTableView; aSQLFile: string);
      property ObjectList: TList<TSQLViewField> read FObjectList;
      property gridView: TcxGridDBBandedTableView read FGridView;
      property KeyFields: string read FKeyFields write FKeyFields;
      property SQLFile: string read FSQLFile;
      property SQL: TStringList read FSQL;
      property SQLReady: boolean read FSQLReady;
  end;

implementation

class Function TSQLHelper.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
Var
    APCheckStates : ^TcxCheckStates;
    AddORToSQL    : Boolean ;
    x             : Integer ;
Begin

 AddORToSQL:= False ;
 Result:= '' ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ;
        if dType = 0 then
         Result:= Result + ' ' + Kolumn+' = ' + QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' ' + Kolumn+' = ' + ReplaceCommas(Properties.Items[x].ShortDescription) ;

        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
      if Length(Result) > 0 then
      Result:= Result +' ) ' ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

class function TSQLHelper.TaBortExtension(S : String) : String ;
begin
  { Convert commas to period }
  if Pos('.', S) > 0 then
   Delete(S, Pos('.', S), -1*(Pos('.', S)-(Length(S)+1) )) ;
 Result:= S ;
end;

class function TSQLHelper.ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure TStorageView.BuildSQL;
var
  i, j, IndexNo, TempIndex, SQLLength: integer;
  TempSQLStr1, TempSQLStr2: string;
begin
  SQL.Clear;
  SQL.Add('Select distinct');

  for j := 0 to ObjectList.Count - 1 do
  begin
    if ObjectList[j].Visible = True then
    begin
      SQL.Add(ObjectList[j].fieldSQL);
    end;

  end;

  { SQL.Add('pg.ActualWidthMM AS AB,') ;
    SQL.Add('pg.ActualThicknessMM AS AT,') ;
    SQL.Add('pg.NominalThicknessMM AS NT,') ;
    SQL.Add('pg.NominalWidthMM AS NB,') ; }

  SQL.Add('');
  SQL.Add('round(SUM(pp.AM3),2) AS AM3,');
  SQL.Add('round(SUM(pp.NM3),2) AS NM3,');
  SQL.Add('SUM(pp.NoOfPcs) AS Styck,');
  SQL.Add('CASE');
  SQL.Add('WHEN SUM(pp.NM3) > 0 THEN');
  SQL.Add('round(SUM(pp.[Värde]) / SUM(pp.NM3),2)');
  SQL.Add('ELSE');
  SQL.Add('0');
  SQL.Add('END AS MEDELPRIS,');
  SQL.Add('round(SUM(pp.[Värde]),2) AS NETTO');

  // SQL.Add('vg.VarugruppNamn');
  SQL.Add('FROM dbo.ST_Deliveries pp');
  SQL.Add('Inner Join dbo.Client Kund ON Kund.ClientNo = pp.customerNo');
  SQL.Add('Inner Join dbo.Client Verk ON Verk.ClientNo = pp.VerkNo');
  SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = PP.ProductNo');
  SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = PD.VarugruppNo');
  SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo');
  SQL.Add('Inner Join dbo.ProductCategory	imp	ON imp.ProductCategoryNo = pg.ProductCategoryNo');
  SQL.Add('				AND imp.LanguageCode = 1');
  SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo');
  SQL.Add('				AND SPE.LanguageCode = 1');
  SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo');
  SQL.Add('				AND SUR.LanguageCode = 1');
  SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo');
  SQL.Add('				AND Gr.LanguageCode = 1');
  SQL.Add('Left outer join dbo.VaruGrupp vg on vg.VarugruppNo = pd.VarugruppNo');
  // if deStartPeriod.EditValue > 0 then
  SQL.Add('WHERE pp.Utlastad >= ' +
    QuotedStr(DateTimeToStr(fDeliveryReport.deStartPeriod.Date)));

  if fDeliveryReport.deEndPeriod.EditValue > 0 then
    SQL.Add('AND pp.Utlastad <= ' +
      QuotedStr(DateTimeToStr(fDeliveryReport.deEndPeriod.Date)));

  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'Verk.PktNrLevKod',
    fDeliveryReport.cbOwner));

  if fDeliveryReport.cbExkluderaEgnaLeveranser.Checked then
  Begin
    SQL.Add('AND pp.VerkNo <> pp.customerNo');
  End;

  SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'SPE.SpeciesCode',
    fDeliveryReport.ccbTS2));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'GR.GradeCode',
    fDeliveryReport.ccbKV2));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'SUR.SurfacingCode',
    fDeliveryReport.ccbSU2));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'va.VaruGruppNo',
    fDeliveryReport.ccVarugrupp));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(0, 'imp.ImpCode',
    fDeliveryReport.ccbIMP));

  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.ActualThicknessMM',
    fDeliveryReport.ccbAT));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.ActualWidthMM',
    fDeliveryReport.ccbAB));

  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.NominalThicknessMM',
    fDeliveryReport.ccbNT));
  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pg.NominalWidthMM',
    fDeliveryReport.ccbNB));
  // SQL.Add(GetSQLofComboFilter(1, 'PL.ActualLengthMM', ccbAL)) ;

  // SQL.Add(GetSQLofComboFilter(1, 'rp.RegPointNo', ccMatpunkt)) ;
  // SQL.Add(GetSQLofComboFilter(1, 'pp.ShiftNo', ccSkiftLag)) ;

  SQL.Add(fDeliveryReport.GetSQLofComboFilter(1, 'pp.customerNo',
    fDeliveryReport.ccKund));
  // SQL.Add(GetSQLofComboFilter(1, 'pp.LandNo', ccLand)) ;

  SQL.Add('Group by');
  for j := 0 to ObjectList.Count - 1 do
  begin
    if ObjectList[j].Visible = True then
    begin
      TempIndex := pos('Group by', SQL.Text);
      IndexNo := pos(ObjectList[j].group,
        (Copy(SQL.Text, TempIndex, Length(SQL.Text))));
      if IndexNo = 0 then
      begin
        // showmessage(Delivery_Class(ObjectList[j]).group);
        SQL.Add(ObjectList[j].group);
        // if j <> ObjectList.Count - 1 then
        SQL.Add(',');
      end
    end;
  end;
  // SQL.Add('vg.VarugruppNamn');

  (* if SQL.Text[SQL.Text.length] = ',' then
    SQL.Text := copy(SQL.Text,0,SQL.Text.Length - 1);
  *)
  SQLLength := Length(SQL.Text) - 2;
  if SQL.Text[SQLLength] = ',' then
  begin
    TempSQLStr1 := SQL.Text;
    SQL.Clear;
    TempSQLStr2 := Copy(TempSQLStr1, 1, SQLLength - 1);
    SQL.Add(TempSQLStr2);
  end;

  // SQL.SaveToFile('Delivery_SQL.txt') ;
End;



constructor TStorageView.create(aGridView: TcxGridDBBandedTableView;
  aSQLFile: string);
begin
  Fgridview := aGridView;
  FSQLFile := aSQLFile;
  FSQLReady := false;
  FSQL := TStringList.create;
  try
    InitiateFieldObjects;
    BuildSQL;
    gridView.DataController.KeyFieldNames := KeyFields;
  finally
    SQLReady := true;
  end;
end;

function TStorageView.getStatus(aGridField: string): boolean;
begin
  Result := gridview.GetColumnByFieldName(aGridField).VisibleIndex > -1;
  if gridview.GetColumnByFieldName(aGridField).GroupIndex > -1 then
    Result := True;
end;

procedure TStorageView.InitiateFieldObjects;
var
  i            : integer;
  StrTemp      : TstringList;
  buffer       : TStringList;
  GridField    : String;
  FieldSQL     : String;
  FieldGroup   : String;
  FieldVisible : Boolean;
  dir          : string ;
begin
  dir          := GetCurrentDir;
  FObjectList  := TList.Create;
  buffer       := TStringList.Create;
  StrTemp      := TStringList.Create;
  buffer.LoadFromFile(dir + '\'+SQLFile);
  for i:= 0 to buffer.Count - 1 do
  begin
    StrTemp.Delimiter     := ' ';
    StrTemp.QuoteChar     := '|';
    StrTemp.DelimitedText := buffer[i];
    GridField             := StrTemp[0];       // Fältnamn i grid
    FieldSQL              := StrTemp[1];
    FieldGroup            := StrTemp[2];
    FieldVisible          := GetStatus(GridField); // Lägger upp fältet i KeyFieldList om det är invalt i gridden
    SetKeyFields(FieldVisible, GridField);
    ObjectList.Add(TSQLViewField.Create(GridField, FieldSQL, FieldGroup, FieldVisible));
  end;
end;

procedure TStorageView.SetKeyFields(aStatus: boolean; aGridField: string);
begin
  if aStatus then begin
    if Length(KeyFields) = 0 then
      KeyFields := aGridField
    else
      KeyFields := KeyFields + ';' + aGridField ;
  end;
end;


{ TStorageViewField }

constructor TSQLViewField.create(const aGridField, aFieldSQL,
  aFieldGroup: string; const aFieldvisible: boolean);
begin
  FGridField := aGridField;
  FFieldSQL  := aFieldSQL;
  FFieldGroup := aFieldGroup;
  FFieldVisible := aFieldvisible;
end;

end.
