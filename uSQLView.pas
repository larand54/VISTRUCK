unit uSQLView;

interface
uses
  Classes, SysUtils, System.Generics.Collections,
  cxCheckComboBox, cxCheckBox,cxLookAndFeelPainters,cxControls,cxGridDBBandedTableView,
  uISQLHelper, uISQLViewField, uISQLView, uISQLBuild;
type

  TWhereString = class(TInterfacedObject)
    private
      FWhereStringList: TStringList;
      function getCheckedValues(const aDecimalType: byte; const aCombo: TcxCheckComboBox): TStringList;
    public
      procedure add(const aDecimalType: byte; const aCombo: TcxCheckComboBox; const aFieldName: string);
      function getWhereStatement: TStringList;
  end;

  TSQLHelper = class
    private
    public
      class function GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
      class function ReplaceCommasWithDecimal(S : String): string;
      class function TaBortExtension(S : String) : String ;
  end;

  TSQLViewField = class(TInterfacedObject, ISQLViewField)
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

  TSQLView = class(TInterfacedObject, ISQLView)
    private
      Fgridview : TcxGridDBBandedTableView;
      FObjectList : TList<TSQLViewField>;
      FKeyFields: String;
      FSQLFile: string;           //D:\git\delphi\VISTRUCK\EXE\SQL_SetUp.txt
      FSQL: TStringList;
      FWhereList: TStringList;
      procedure InitiateFieldObjects;
      function getStatus(aGridField: string): boolean;
      procedure SetKeyFields(aStatus: boolean; aGridField: string);
    public
      Constructor create(const aGridView: TcxGridDBBandedTableView; const aSQLFile: string;
       const aWhereList: TStringList);
      Destructor destroy;
      property ObjectList: TList<TSQLViewField> read FObjectList;
      property gridView: TcxGridDBBandedTableView read FGridView;
      property KeyFields: string read FKeyFields write FKeyFields;
      property SQLFile: string read FSQLFile;
      property SQL: TStringList read FSQL;
      property WhereList: TStringList read FWhereList;
  end;

  TSQLBuild = class (TInterfacedObject, ISQLBuild)
    private
      FSQL: TStringList;
      FSQLView: TSQLView;
      FSQLReady: boolean;
    public
      constructor Create(aSQLView: TSQLView);
      destructor destroy;
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
           Result:= Result + ' ' + Kolumn+' = ' + ReplaceCommasWithDecimal(Properties.Items[x].ShortDescription) ;

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
  { Remove extension including period e.g. (file.pdf -> file) }
  if Pos('.', S) > 0 then
   Delete(S, Pos('.', S), -1*(Pos('.', S)-(Length(S)+1) )) ;
 Result:= S ;
end;

class function TSQLHelper.ReplaceCommasWithDecimal(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

constructor TSQLView.create(const aGridView: TcxGridDBBandedTableView;
              const aSQLFile: string; const aWhereList: TStringList);
begin
  Fgridview := aGridView;
  FSQLFile := aSQLFile;
  FSQL := TStringList.Create;
  FWhereList := aWhereList;
  try
    InitiateFieldObjects;
    gridView.DataController.KeyFieldNames := KeyFields;
  finally
  end;
end;

destructor TSQLView.destroy;
begin
  if assigned(FObjectList) then FreeAndNil(FObjectList);
  if assigned(FSQL) then FreeAndNil(FSQL);

end;

function TSQLView.getStatus(aGridField: string): boolean;
begin
  Result := gridview.GetColumnByFieldName(aGridField).VisibleIndex > -1;
  if gridview.GetColumnByFieldName(aGridField).GroupIndex > -1 then
    Result := True;
end;

procedure TSQLView.InitiateFieldObjects;
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
  FObjectList  := TList<TSQLViewField>.Create;
  buffer       := TStringList.Create;
  StrTemp      := TStringList.Create;
  buffer.LoadFromFile(dir + '\'+SQLFile);
  for i:= 0 to buffer.Count - 1 do
  begin
    StrTemp.Delimiter     := ' ';
    StrTemp.QuoteChar     := '|';
    StrTemp.DelimitedText := buffer[i];
    GridField             := StrTemp[0];       // Fältnamn i grid
    FieldSQL              := StrTemp[1];       // SQL-kod för fält i SELECT-sats
    FieldGroup            := StrTemp[2];       // SQL-kod för fält i GROUP-BY-sats
    FieldVisible          := GetStatus(GridField);
    SetKeyFields(FieldVisible, GridField);     // Lägger upp fältet i KeyFieldList om det är invalt i gridden
    ObjectList.Add(TSQLViewField.Create(GridField, FieldSQL, FieldGroup, FieldVisible));
  end;
  buffer.Free;
  StrTemp.Free;
end;

procedure TSQLView.SetKeyFields(aStatus: boolean; aGridField: string);
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

{ TSQLBuild }

constructor TSQLBuild.Create(aSQLView: TSQLView);
var
  j, IndexNo, TempIndex, SQLLength: Integer;
  TempSQLStr1, TempSQLStr2: string;
begin
  FSQLView := aSQLView;
  FSQLView.SQL.Clear;
  FSQLView.SQL.Add('DECLARE @LanguageCode int = 1');
  FSQLView.SQL.Add('Select distinct');

  for j := 0 to FSQLView.FObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
      if j > 0 then FSQLView.SQL.Text := FSQLView.SQL.Text + ',';
      FSQLView.SQL.Add(FSQLView.ObjectList[j].fieldSQL);
    end;
  end;
  FSQLView.SQL.Add('from dbo.PackageNumber pn');
  FSQLView.SQL.Add('Left outer join dbo.Position posi');
  FSQLView.SQL.Add('inner join dbo.Area ar on ar.AreaID = posi.AreaID');
  FSQLView.SQL.Add('on posi.PositionID = pn.PositionID');

  FSQLView.SQL.Add('Left Outer Join dbo.CertificationWood cw on cw.CertNo = IsNull(pn.CertNo,3)');
  FSQLView.SQL.Add('Left join [dbo].[PackageSize] ps on ps.PackageSizeNo = pn.Package_Size');
  FSQLView.SQL.Add('and ps.LanguageCode = 1');
  FSQLView.SQL.Add('inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagetypeno');

  FSQLView.SQL.Add('Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecNo');
  FSQLView.SQL.Add('inner join dbo.Product p on p.ProductNo = pt.ProductNo');
  FSQLView.SQL.Add('Left join dbo.ProductDesc pde on pde.ProductNo = pt.ProductNo');
  FSQLView.SQL.Add('AND pde.LanguageID = @LanguageCode');
  FSQLView.SQL.Add('inner join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductGroupNo');
  FSQLView.SQL.Add('Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = pn.LogicalInventoryPointNo');
  FSQLView.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
  FSQLView.SQL.Add('Inner Join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo');
  FSQLView.SQL.Add('Left Outer Join dbo.Varugrupp va on va.VarugruppNo = p.VarugruppNo');
  FSQLView.SQL.Add('AND va.LanguageCode = @LanguageCode');
  FSQLView.SQL.Add('Inner Join dbo.ProductCategory imp ON imp.ProductCategoryNo = pg.ProductCategoryNo');
  FSQLView.SQL.Add('AND imp.LanguageCode = @LanguageCode');
  FSQLView.SQL.Add('Inner Join dbo.Species SPE ON SPE.SpeciesNo = pg.SpeciesNo');
  FSQLView.SQL.Add('AND SPE.LanguageCode = @LanguageCode');
  FSQLView.SQL.Add('Inner Join dbo.Surfacing SUR ON SUR.SurfacingNo = pg.SurfacingNo');
  FSQLView.SQL.Add('AND SUR.LanguageCode = @LanguageCode');
  FSQLView.SQL.Add('Inner Join dbo.Grade   Gr ON Gr.GradeNo = p.GradeNo');
  FSQLView.SQL.Add('AND Gr.LanguageCode = @LanguageCode');

  FSQLView.SQL.Add('WHERE');
  for j := 0 to FSQLView.WhereList.Count-1 do
    FSQLView.SQL.Add(FSQLView.WhereList[j]);
  FSQLView.SQL.Add('Group by');
  for j := 0 to FSQLView.ObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
      TempIndex := Pos('Group by', FSQLView.SQL.Text);
      IndexNo := Pos(FSQLView.ObjectList[j].group,
        (Copy(FSQLView.SQL.Text, TempIndex, Length(FSQLView.SQL.Text))));
      if (IndexNo = 0) and (FSQLView.ObjectList[j].group <> '') then
      begin
        FSQLView.SQL.Add(FSQLView.ObjectList[j].group);
        FSQLView.SQL.Add(',');
      end
    end;
  end;

 // Remove last comma
  FSQLView.SQL.SaveToFile('SQL1.txt');
  if FSQLView.SQL.Text[FSQLView.SQL.Text.length - 2] = ',' then
    FSQLView.SQL.Text := copy(FSQLView.SQL.Text,0,FSQLView.SQL.Text.Length - 3);
  FSQLView.SQL.SaveToFile('SQL2.txt');

end;

destructor TSQLBuild.destroy;
begin
  if assigned(FSQL) then FSQL.Free;
end;

{ TWhereString }

procedure TWhereString.add(const aDecimalType: byte; const aCombo: TcxCheckComboBox;
  const aFieldName: string);
var
  values: TStringList;
  value: string;
  temp: string;
begin
  values := TStringList.Create;
  Values := getCheckedValues(aDecimalType, aCombo);
  if Values.Count > 0 then
  begin
    if not assigned(FWhereStringList) then
    begin
      FWhereStringList := TStringList.Create;
//      temp := 'WHERE (';
    end
    else
      temp := 'AND (';

    temp := temp + aFieldName + ' IN (';
    for value in Values do
    begin
      temp := temp + value + ',';
    end;
    temp := copy(temp,1,temp.Length-1);
    temp := temp + ')';
    FWhereStringList.Add(temp);
  end;
end;

function TWhereString.getCheckedValues( const aDecimalType: byte;
  const aCombo: TcxCheckComboBox): TStringList;
var
  i: integer;
begin
  result := TStringList.Create;
  for i := 0 to aCombo.Properties.Items.Count -1 do
  begin
    if aCombo.GetItemState(i) = cbsChecked then
      if aDecimalType = 0 then
        result.Add(aCombo.Properties.Items[i].ShortDescription)
      else
        result.Add(TSQLHelper.ReplaceCommasWithDecimal(aCombo.Properties.Items[i].ShortDescription));
  end;
  if result.Count = 0 then
    FreeAndNil( result);
end;

function TWhereString.getWhereStatement: TStringList;
begin
  result := FWhereStringList;
end;

initialization

end.
