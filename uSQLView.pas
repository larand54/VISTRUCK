unit uSQLView;

interface
uses
  Classes, SysUtils, System.Generics.Collections,
  cxCheckComboBox, cxCheckBox,cxLookAndFeelPainters,cxControls,cxGridDBBandedTableView,
  uISQLHelper, uISQLViewField, uISQLView, uISQLBuild;
type

  TSQLHelper = class(TInterfacedObject, ISQLHelper)
    private
    public
      function GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
      function ReplaceCommasWithDecimal(S : String): string;
      function TaBortExtension(S : String) : String ;
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
      procedure InitiateFieldObjects;
      function getStatus(aGridField: string): boolean;
      procedure SetKeyFields(aStatus: boolean; aGridField: string);
    public
      Constructor create(aGridView: TcxGridDBBandedTableView; aSQLFile: string);
      Destructor destroy;
      property ObjectList: TList<TSQLViewField> read FObjectList;
      property gridView: TcxGridDBBandedTableView read FGridView;
      property KeyFields: string read FKeyFields write FKeyFields;
      property SQLFile: string read FSQLFile;
      property SQL: TStringList read FSQL;
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

var
  SQLHelper: TSQLHelper;
implementation



Function TSQLHelper.GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
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

function TSQLHelper.TaBortExtension(S : String) : String ;
begin
  { Remove extension including period e.g. (file.pdf -> file) }
  if Pos('.', S) > 0 then
   Delete(S, Pos('.', S), -1*(Pos('.', S)-(Length(S)+1) )) ;
 Result:= S ;
end;

function TSQLHelper.ReplaceCommasWithDecimal(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

constructor TSQLView.create(aGridView: TcxGridDBBandedTableView;
  aSQLFile: string);
begin
  Fgridview := aGridView;
  FSQLFile := aSQLFile;
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
  SQL.Clear;
  SQL.Add('Select distinct');

  for j := 0 to FSQLView.FObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
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
  FSQLView.SQL.Add('PIP.OwnerNo = 741 ');
  FSQLView.SQL.Add('and pn.[Status] = 1');

  FSQLView.SQL.Add('Group by');
  for j := 0 to FSQLView.ObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
      TempIndex := Pos('Group by', SQL.Text);
      IndexNo := Pos(FSQLView.ObjectList[j].group,
        (Copy(SQL.Text, TempIndex, Length(SQL.Text))));
      if IndexNo = 0 then
      begin
        // showmessage(Delivery_Class(ObjectList[j]).group);
        FSQLView.SQL.Add(FSQLView.ObjectList[j].group);
        // if j <> ObjectList.Count - 1 then
        FSQLView.SQL.Add(',');
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
end;

destructor TSQLBuild.destroy;
begin
  if assigned(FSQL) then FSQL.Free;
end;

initialization
  SQLHelper := TSQLHelper.Create;

end.
