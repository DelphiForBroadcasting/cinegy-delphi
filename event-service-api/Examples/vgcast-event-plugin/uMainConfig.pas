unit uMainConfig;

interface


uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
 System.Generics.Collections, System.Json;

type
  EMainConfig = class(Exception);

type
  TMainConfig = class(TPersistent)
  private
    FFileName   : string;
    FJSONObject : TJSONObject;

    FTplRepository   : string;

    function GetTplRepository: string;
    procedure SetTplRepository(AValue: string);
    procedure ParseJson(AJsonObject: TJsonObject);
  public

    VgCast          : record
                        Host  : String;
                        Port  : Word;
                      end;

    constructor Create;
    destructor Destroy; override;
    procedure LoadFromFile(AFileName: string);
    procedure Save;
    property FileName: string read FFileName write LoadFromFile;

    (*  *)
    property TplRepository: string read GetTplRepository write SetTplRepository;


    class function GetModuleAbsolutePath : String; static;
  end;

implementation

class function TMainConfig.GetModuleAbsolutePath : String;
begin
  SetLength(Result, MAX_PATH + 1);
  GetModuleFileName(hInstance, PChar(Result), MAX_PATH + 1);
  SetLength(Result, Length(PChar(Result)));
end;

{ TFHConfig }
constructor TMainConfig.Create;
begin
  inherited Create();

  VgCast.Host := '127.0.0.1';
  VgCast.Port := 5001;
  TplRepository := '';

  FJSONObject := TJSONObject.Create;
end;

destructor TMainConfig.Destroy;
begin
  if Assigned(FJSONObject) then
    FreeAndNil(FJSONObject);
  inherited Destroy;
end;

procedure TMainConfig.LoadFromFile(AFileName: string);
var
  LJsonStream   : TStringStream;
begin
  FFileName := AFileName;
  if not fileexists(AFileName) then raise EMainConfig.Create('File not find');

  LJsonStream := TStringStream.Create('', TEncoding.UTF8);
  try
    LJsonStream.LoadFromFile(FFileName);
    if LJsonStream.DataString <> '' then
    begin
      try
        FJSONObject.Parse(TEncoding.UTF8.GetBytes(LJsonStream.DataString), 0, true);
        ParseJson(FJSONObject);
      except
        raise EMainConfig.Create('Failed parse json value');
      end;
    end;
  finally
    LJsonStream.Free;
  end;
end;

procedure TMainConfig.ParseJson(AJsonObject: TJsonObject);
var
  LPairs: TJSONPairEnumerator;
  oVGCAST : TJSONObject;
begin
  LPairs := AJsonObject.GetEnumerator;
  try
    while LPairs.MoveNext do
    begin
      if SameText(LPairs.Current.JsonString.Value, 'VgCast') then
      begin
        oVGCAST := LPairs.Current.JsonValue as TJSONObject;
        (* Host *)
        if assigned(oVGCAST.Get('Host')) then
          VgCast.host := TJSONSTRING(oVGCAST.Get('Host').JsonValue).Value;

        (* Port *)
        if assigned(oVGCAST.Get('Port')) then
          VgCast.Port := TJSONNUMBER(oVGCAST.Get('Port').JsonValue).AsInt;
      end;

      if SameText(LPairs.Current.JsonString.Value, 'TplRepository') then
      begin
        FTplRepository := TJSONSTRING(LPairs.Current.JsonValue).Value;
      end;

    end;
  finally
    LPairs.Free;
  end;
end;

function TMainConfig.GetTplRepository: string;
begin
  result := StringReplace(FTplRepository, '/', '\', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TMainConfig.SetTplRepository(AValue: string);
begin
  FTplRepository := StringReplace(AValue, '\', '/', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TMainConfig.Save;
var
  LJsonStream   : TStringStream;
  oVGCAST : TJSONObject;
begin
  if assigned(FJSONObject.Get('VgCast')) then
  begin
    oVGCAST := FJSONObject.Get('VgCast').JsonValue as TJsonObject;
    if assigned(oVGCAST.Get('Host')) then
    begin
      oVGCAST.Get('Host').JsonValue := TJsonString.Create(VgCast.Host);
    end else
    begin
      oVGCAST.AddPair(TJsonPair.Create('Host', TJsonString.Create(VgCast.Host)));
    end;
    if assigned(oVGCAST.Get('Port')) then
    begin
      oVGCAST.Get('Port').JsonValue := TJsonNumber.Create(VgCast.Port);
    end else
    begin
      oVGCAST.AddPair(TJsonPair.Create('Port', TJsonNumber.Create(VgCast.Port)));
    end;
  end else
  begin
    oVGCAST := TJSONObject.Create;
    oVGCAST.AddPair(TJsonPair.Create('Host', TJsonString.Create(VgCast.Host)));
    oVGCAST.AddPair(TJsonPair.Create('Port', TJsonNumber.Create(VgCast.Port)));
    FJsonObject.AddPair(TJsonPair.Create('VgCast', oVGCAST));
  end;

  if assigned(FJSONObject.Get('TplRepository')) then
  begin
    FJSONObject.Get('TplRepository').JsonValue :=  TJsonString.Create(FTplRepository)
  end else
  begin
    FJSONObject.AddPair(TJsonPair.Create('TplRepository', TJsonString.Create(FTplRepository)));
  end;

  LJsonStream := TStringStream.Create(FJSONObject.ToString, TEncoding.UTF8);
  try
    LJsonStream.SaveToFile(FFileName);
  finally
    FreeAndNil(LJsonStream);
  end;
end;


end.
