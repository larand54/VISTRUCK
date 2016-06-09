unit uSQLView;

interface
uses
  Classes, SysUtils, System.Generics.Collections,
  cxCheckComboBox, cxCheckBox,cxLookAndFeelPainters,cxControls,cxGridDBTableView,
  uISQLHelper, uISQLViewField, uISQLView, uISQLBuild;
type

  TWhereString = class(TInterfacedObject)
    private
      FWhereStringList: TStringList;
      procedure addString(const s: string);
      function getCheckedValues(const aDecimalType: byte; const aCombo: TcxCheckComboBox): TStringList;
    public
      procedure addAND(const s:string; aFirst, aLast: boolean);
      procedure addOR(const s:string; aFirst, aLast: boolean);
      procedure addFromCombo(const aDecimalType, quotedString: byte; const aCombo: TcxCheckComboBox; const aFieldName: string);
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
      Fgridview : TcxGridDBTableView;
      FObjectList : TList<TSQLViewField>;
      FKeyFields: String;
      FSQLFile: string;           //D:\git\delphi\VISTRUCK\EXE\SQL_SetUp.txt
      FSQL: TStrings;
      FBaseSQL: TStrings;
      FWhereList: TStrings;
      procedure InitiateFieldObjects;
      function getStatus(aGridField: string): boolean;
    public
      Constructor create(const aGridView: TcxGridDBTableView; const aSQLFile: string;
       const aWhereList: TStrings; const aBaseSQL: TStrings);
      Destructor destroy; override;
      procedure SetKeyFields(aStatus: boolean; aGridField: string);
      property ObjectList: TList<TSQLViewField> read FObjectList;
      property gridView: TcxGridDBTableView read FGridView;
      property KeyFields: string read FKeyFields write FKeyFields;
      property SQLFile: string read FSQLFile;
      property SQL: TStrings read FSQL;
      property WhereList: TStrings read FWhereList;
  end;

  TSQLBuild = class (TInterfacedObject, ISQLBuild)
    private
      FSQL: TStringList;
      FSQLView: TSQLView;
      FSQLReady: boolean;
      LoggDir: string;
    public
      constructor Create(aSQLView: TSQLView);
      destructor destroy;override;
      property SQL: TStringList read FSQL;
      property SQLReady: boolean read FSQLReady;
  end;

implementation

uses
  dialogs, dmsVidaSystem,
  uDynSQL_const;

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
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat ,
     APCheckStates^);
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

constructor TSQLView.create(const aGridView: TcxGridDBTableView;
              const aSQLFile: string; const aWhereList: TStrings; const aBaseSQL: TStrings);
begin
  Fgridview := aGridView;
  FSQLFile := aSQLFile;
  FBaseSQL := aBaseSQL;
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
  inherited;
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
  FObjectList  := TList<TSQLViewField>.Create;
  buffer       := TStringList.Create;
  StrTemp      := TStringList.Create;
  if not FileExists(SQLFile) then raise Exception.Create('The SQL-Setup file: '+SQLFILE+' does not exist!');

  buffer.LoadFromFile(SQLFile);
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
  first: boolean;
begin
  FSQLView := aSQLView;
  FSQLView.SQL.Clear;
  FSQLView.SQL.Add('DECLARE @LanguageCode int = 1');
  FSQLView.SQL.Add('DECLARE @Source int = 0');
  FSQLView.SQL.Add('SET @LanguageCode = :LanguageCode');
  FSQLView.SQL.Add('SET @Source = :Source');
  FSQLView.SQL.Add('Select distinct');
  LoggDir := dmsSystem.Get_Dir('UserDir');

  first := true;
  for j := 0 to FSQLView.FObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
      if not first then FSQLView.SQL.Text := FSQLView.SQL.Text + ',';
      FSQLView.SQL.Add(FSQLView.ObjectList[j].fieldSQL);
      first := false;
    end;
  end;
  for j := 0 To FSQLView.FBaseSQL.Count-1  do
    FSQLView.SQL.Add(FSQLView.FBaseSQL[j]);
   FSQLView.SQL.Add('WHERE');
  for j := 0 to FSQLView.WhereList.Count-1 do
    FSQLView.SQL.Add(FSQLView.WhereList[j]);

  FSQLView.SQL.Add('Group by');
  for j := 0 to FSQLView.ObjectList.Count - 1 do
  begin
    if FSQLView.ObjectList[j].Visible = True then
    begin
      IndexNo := 0;
      if (IndexNo = 0) and (FSQLView.ObjectList[j].group <> '') then
      begin
        FSQLView.SQL.Add(FSQLView.ObjectList[j].group);
        FSQLView.SQL.Add(',');
      end
    end;
  end;

 // Remove last comma
  if FSQLView.SQL.Text[FSQLView.SQL.Text.length - 2] = ',' then
    FSQLView.SQL.Text := copy(FSQLView.SQL.Text,0,FSQLView.SQL.Text.Length - 3);
  try
    FSQLView.SQL.SaveToFile(LoggDir+'SQL2.sql');
  except
  end;
end;

destructor TSQLBuild.destroy;
begin
  if assigned(FSQL) then FSQL.Free;
  inherited;
end;

{ TWhereString }

procedure TWhereString.addAND(const s: string; aFirst, aLast: boolean);
begin
  if not assigned(FWhereStringList) then
    FWhereStringList := TStringList.Create;
  if aFirst then
    if aLast then
      begin
        AddString(' AND ('+s+')');
      end
      else
      begin
        AddString(' AND ('+s);
      end

  else if aLast and not aFirst then
  begin
    AddString(s+')')
  end
  else
    AddString(s);
end;

procedure TWhereString.addFromCombo(const aDecimalType, quotedString: byte;
  const aCombo: TcxCheckComboBox; const aFieldName: string);
var
  values: TStringList;
  nulls: TStringList;
  Value: string;
  temp: string;
  i: integer;
begin
  // values := TStringList.Create;
  nulls := TStringList.Create;
  try
    values := getCheckedValues(aDecimalType, aCombo);
    if assigned(values) and (values.Count > 0) then
    begin
      for value in values do
        if Value = NULL then nulls.Add(aFieldName+ ' IS  NULL');
      if nulls.count < Values.count then begin
        if not assigned(FWhereStringList) then
        begin
          FWhereStringList := TStringList.create;
          temp := '(';
        end
        else
          temp := 'AND (';
        temp := temp + aFieldName + ' IN (';
        for Value in values do
        begin
          if quotedString = 1 then
          begin
            if Value = BLANK then
              temp := temp + quotedStr('') + ','
            else if Value = NULL then continue
            else temp := temp + quotedStr(Value) + ','
          end
          else
            temp := temp + Value + ',';
        end;
        temp := copy(temp, 1, temp.Length - 1);
        temp := temp + ')'
      end;
      if nulls.Count > 0 then
      begin
        if not assigned(FWhereStringList) then
        begin
          FWhereStringList := TStringList.create;
        end;
        for i := 0 to nulls.count-1 do
        begin
          temp := temp + ' OR (' + nulls[i]+')';
        end;
      end;
      if nulls.count < Values.count then
        temp := temp + ')';
      FWhereStringList.add(temp);
    end;
  finally
    if assigned(values) then
      values.Free;
    if assigned(nulls) then
      nulls.Free;
  end;
end;

procedure TWhereString.addOR(const s: string; aFirst, aLast: boolean);
begin
  if not assigned(FWhereStringList) then
    FWhereStringList := TStringList.Create;
  if aFirst then
    if aLast then
      begin
        AddString('OR ('+s+')');
      end
      else
      begin
        AddString('OR ('+s);
      end

  else if aLast and not aFirst then
  begin
    AddString(s+')')
  end
  else
    AddString(s);
end;

procedure TWhereString.addString(const s: string);
var
  i,l: integer;
  sq: string;
begin
  sq := UpperCase(s);
  if FWhereStringList.Count = 0 then
  begin
    sq := sq.TrimLeft;
    i := pos('OR (',sq);
    l := pos('AND (',sq);
    if i = 1 then sq := sq.Remove(0,3)
    else if l = 1 then sq := sq.Remove(0,4);
  end;
  FWhereStringList.Add(sq);
end;

function TWhereString.getCheckedValues( const aDecimalType: byte;
  const aCombo: TcxCheckComboBox): TStringList;
var
  i: integer;
  value: string;
begin
  result := TStringList.Create;
  for i := 0 to aCombo.Properties.Items.Count -1 do
  begin
    value := aCombo.Properties.Items[i].ShortDescription;
    if value = '' then continue;

    if aCombo.GetItemState(i) = cbsChecked then
      if aDecimalType = 0 then
        result.Add(value)
      else
        result.Add(TSQLHelper.ReplaceCommasWithDecimal(value));
  end;
  if result.Count = 0 then
    FreeAndNil( result);
end;

function TWhereString.getWhereStatement: TStringList;
begin
  if Assigned(FWhereStringList) then
    result := FWhereStringList
  else result := TStringList.create;
end;

initialization

end.
