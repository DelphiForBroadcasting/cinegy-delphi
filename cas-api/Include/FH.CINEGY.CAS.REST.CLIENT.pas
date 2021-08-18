unit FH.CINEGY.CAS.REST.CLIENT;


interface

uses
  System.SysUtils,
  System.Types,
  System.Classes,
  System.DateUtils,
  System.JSON,
  System.NetEncoding,
  System.Net.HttpClient,
  System.Generics.Collections,
  System.IOUtils,
  System.SyncObjs;

type
  TErrorNotify = reference to procedure(const Sender: TObject; const errorCode: integer; const errorText: string);

  TApplicationInfo = class
  private
    FName           : string;
    FCasVersion     : integer;
    FProductLicense : string;
    FVersionId      : string;
  public
    constructor Create; overload;
    destructor Destroy; override;

    function ToString: string; override;

    property Name: string read FName write FName;
    property CasVersion: integer read FCasVersion write FCasVersion;
    property ProductLicense: string read FProductLicense write FProductLicense;
    property VersionId: string read FVersionId write FVersionId;
  end;

  TCinegyDataAccessRESTService = class(TInterfacedObject, IUnknown)
  private
    FHttpClient                 : THTTPClient;
    FApplicationInfo            : TApplicationInfo;
    FOnError                    : TErrorNotify;

    FHost                       : string;
    FPort                       : word;
    FSQLServer                  : string;
    FDatabase                   : string;
    FUsername                   : string;
    FPassword                   : string;
    FDomain                     : string;

    procedure SetPort(const AValue: word);
    procedure SetHost(const AValue: string);
    procedure SetSQLServer(const AValue: string);
    procedure SetDatabase(const AValue: string);
    procedure SetUsername(const AValue: string);
    procedure SetPassword(const AValue: string);
    procedure SetDomain(const AValue: string);
    procedure SetConnectContext(const AValue: string);
    function GetConnectContext(): string;
    function GetCASEndpoint(): string;
    function GetAuthorization(): string;

    procedure DoError(const Sender: TObject; const errorCode: integer; const errorText: string);

    function Get(const address: string): IHttpResponse;
    function Post(const address: string; data: string):IHttpResponse;
    function ChackResponse(const HttpResponse: IHttpResponse; var retCode: Integer; var errorText: string): boolean;

  protected
    (* IUnknown methods *)
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    constructor Create; overload;
    destructor Destroy; override;

    //property Root: Node2 read GetRootNode;
    //property Node[const NodeId: string]: Node2 read GetNode;

    procedure SetHeaderValue(const Name, Value: string);
    function GetHeaderValue(const Name: string): string;


    (* REST API *)
    function GetMainInfo(): string;
    function Search(const query: string; const page_size: integer; const from: string; const start_id: string; const types: string): String;
    function Logout(): boolean;

    property ApplicationInfo: TApplicationInfo read FApplicationInfo;
    property CASEndpoint: string read GetCASEndpoint;
    property Host: string read FHost write SetHost;
    property Port: word read FPort write SetPort;
    property SQLServer: string read FSQLServer write SetSQLServer;
    property Database: string read FDatabase write SetDatabase;
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    property Domain: string read FDomain write SetDomain;
    property ConnectContext: string read GetConnectContext write SetConnectContext;
    property OnError: TErrorNotify read FOnError write FOnError;
  end;

implementation

(* TApplicationInfo *)
constructor TApplicationInfo.Create;
begin
  inherited Create;
  FName           := 'FH.CINEGY.CAS.CLIENT';
  FCasVersion     := 1411301;
  //   '{6EECC5D8-DF37-4ead-B79C-25874FD616A2}';
  FProductLicense := '{705EADF7-EAAD-4f7c-8141-862C2C511A61}';  //Development License
  FVersionId      := '1.0';
end;

destructor TApplicationInfo.Destroy;
begin
  inherited Destroy;
end;

function TApplicationInfo.ToString: string;
begin
  result := Format('%s##%s##%d##%s', [Self.FName, Self.FProductLicense, Self.FCasVersion, Self.FVersionId]);
end;

(* TCinegyDataAccessRESTService *)
constructor TCinegyDataAccessRESTService.Create;
begin
  inherited Create;
  FApplicationInfo := TApplicationInfo.Create;
  FHttpClient:= THTTPClient.Create;
  FHttpClient.Accept := 'application/json';
  FSQLServer := '.';
  FPort := 0;
end;

destructor TCinegyDataAccessRESTService.Destroy;
begin
  if not ConnectContext.IsEmpty then
    Self.Logout;
  FreeAndNil(FHttpClient);
  FreeAndNil(FApplicationInfo);
  inherited Destroy;
end;

function TCinegyDataAccessRESTService.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  result := inherited QueryInterface(IID, Obj);
end;

function TCinegyDataAccessRESTService._AddRef: Integer;
begin
  Result := inherited _AddRef;
end;

function TCinegyDataAccessRESTService._Release: Integer;
begin
  Result := inherited _Release;
end;

function TCinegyDataAccessRESTService.Get(const address: string): IHttpResponse;
var
  lHttpResponse     : IHttpResponse;
begin
  if Self.GetHeaderValue('Authorization').IsEmpty then
    Self.SetHeaderValue('Authorization', Self.GetAuthorization);

  lHttpResponse := FHttpClient.Get(address);
  ConnectContext := lHttpResponse.HeaderValue['CinegyContext'];
  result := lHttpResponse;
end;

function TCinegyDataAccessRESTService.Post(const address: string; data: string):IHttpResponse;
var
  lRequestStream  : TStringStream;
  lHttpResponse : IHttpResponse;
begin
  LRequestStream  := TStringStream.Create(data, TEncoding.UTF8);
  try
    if Self.GetHeaderValue('Authorization').IsEmpty then
      Self.SetHeaderValue('Authorization', Self.GetAuthorization);
    lHttpResponse := FHttpClient.Post(address, LRequestStream);
    ConnectContext := lHttpResponse.HeaderValue['CinegyContext'];
    result := lHttpResponse;
  finally
    FreeAndNil(LRequestStream);
  end;
end;

procedure TCinegyDataAccessRESTService.DoError(const Sender: TObject; const errorCode: integer; const errorText: string);
begin
  if assigned(FOnError) then
    FOnError(Sender, errorCode, errorText);
end;

procedure TCinegyDataAccessRESTService.SetPort(const AValue: word);
begin
  if AValue = 0 then
    FPort := 8082
  else  FPort := AValue;
end;

procedure TCinegyDataAccessRESTService.SetHost(const AValue: string);
begin
  if not AValue.IsEmpty then
    FHost := AValue
  else  FHost := 'localhost';
end;

procedure TCinegyDataAccessRESTService.SetSQLServer(const AValue: string);
begin
  if not AValue.IsEmpty then
    FSQLServer := AValue
  else  FSQLServer := '.';
end;

procedure TCinegyDataAccessRESTService.SetDatabase(const AValue: string);
begin
  if AValue.IsEmpty then
    raise Exception.Create('Error set empty database!');

  FDatabase := AValue;
end;

procedure TCinegyDataAccessRESTService.SetUsername(const AValue: string);
begin
  FUserName := AValue;
end;

procedure TCinegyDataAccessRESTService.SetPassword(const AValue: string);
begin
  FPassword := AValue;
end;

procedure TCinegyDataAccessRESTService.SetDomain(const AValue: string);
begin
  FDomain := AValue;
end;

function TCinegyDataAccessRESTService.GetAuthorization(): string;
var
  lAuthorization  : string;
  lToken          : string;
  lBase64Encoding : TBase64Encoding;
begin
  lAuthorization:= GetHeaderValue('Authorization');
  if lAuthorization.IsEmpty then
  begin
    lToken := Self.FUsername + ':' + Self.FPassword + ':' + Self.FDomain + ':' + Self.FApplicationInfo.ToString + ':' + Self.FSQLServer + ':' + Self.FDatabase;
    lBase64Encoding := TBase64Encoding.Create(0);
    try
      lAuthorization := 'Basic ' + lBase64Encoding.EncodeBytesToString(TEncoding.UTF8.GetBytes(lToken));
    finally
      FreeAndNil(lBase64Encoding);
    end;
  end;
  result := lAuthorization;
end;

function TCinegyDataAccessRESTService.GetCASEndpoint(): string;
begin
  if FHost.IsEmpty then
    raise Exception.Create('Error build CASEndpoint, host not set!');

  if FPort = 0 then
    FPort := 8082;

  result := Format('http://%s:%d/ICinegyDataAccessService', [FHost, FPort]);
end;

function TCinegyDataAccessRESTService.GetConnectContext(): string;
begin
  result:= GetHeaderValue('CinegyContext');
end;

procedure TCinegyDataAccessRESTService.SetConnectContext(const AValue: string);
begin
  SetHeaderValue('CinegyContext', AValue);
end;

procedure TCinegyDataAccessRESTService.SetHeaderValue(const Name, Value: string);
begin
  Self.FHttpClient.CustomHeaders[Name] := Value;
end;

function TCinegyDataAccessRESTService.GetHeaderValue(const Name: string): string;
begin
  result := Self.FHttpClient.CustomHeaders[Name];
end;

function TCinegyDataAccessRESTService.GetMainInfo(): string;
var
  lHttpResponse   : IHttpResponse;
  lRetCode        : Integer;
  lErrorText      : String;
begin
  lHttpResponse := self.Get(Format('%s/GetMainInfo', [Self.CASEndpoint]));
  if not ChackResponse(lHttpResponse, lRetCode, lErrorText) then
    if lErrorText.IsEmpty then
      raise Exception.CreateFmt('Search retCode: %d, error: %s', [lRetCode, lErrorText])
    else raise Exception.CreateFmt('Search retCode: %d', [lRetCode]);

  result := lHttpResponse.ContentAsString(TEncoding.UTF8);

end;

function TCinegyDataAccessRESTService.Search(const query: string; const page_size: integer; const from: string; const start_id: string; const types: string): String;
var
  lHttpResponse   : IHttpResponse;
  lRetCode        : Integer;
  lErrorText      : String;
  lQueryString    : String;
  lContentObject  : TJSONObject;
begin

  lQueryString := Format('%s/search?q=%s', [Self.CASEndpoint, query]);
  if page_size > 0 then
    lQueryString := lQueryString + Format('&ps=%d', [page_size]);
  if not from.IsEmpty then
    lQueryString := lQueryString + Format('&f=%s', [from]);
  if not start_id.IsEmpty then
    lQueryString := lQueryString + Format('&si=%s', [start_id]);
  if not types.IsEmpty then
    lQueryString := lQueryString + Format('&st=%s', [types]);

  lHttpResponse := self.Get(lQueryString);
  if not ChackResponse(lHttpResponse, lRetCode, lErrorText) then
    if lErrorText.IsEmpty then
      raise Exception.CreateFmt('Search retCode: %d, error: %s', [lRetCode, lErrorText])
    else raise Exception.CreateFmt('Search retCode: %d', [lRetCode]);

  result := lHttpResponse.ContentAsString(TEncoding.UTF8);
end;


function TCinegyDataAccessRESTService.Logout(): boolean;
var
  lHttpResponse   : IHttpResponse;
  lRetCode        : Integer;
  lErrorText      : String;
begin
  result := false;

  if ConnectContext.IsEmpty then
    exit(true);

  lHttpResponse := self.Get(Format('%s/logout', [Self.CASEndpoint]));
  if not ChackResponse(lHttpResponse, lRetCode, lErrorText) then
    if lErrorText.IsEmpty then
      raise Exception.CreateFmt('Logout retCode: %d, error: %s', [lRetCode, lErrorText])
    else raise Exception.CreateFmt('Logout retCode: %d', [lRetCode]);
end;

function TCinegyDataAccessRESTService.ChackResponse(const HttpResponse: IHttpResponse; var retCode: Integer; var errorText: string): boolean;
var
  lContentObject  : TJSONObject;
  lRetCodeValue   : TJSONNumber;
  lErrorValue     : TJSONString;
begin
  if not assigned(HttpResponse) then
    exit;

  if ((HttpResponse.StatusCode < 200) or ((HttpResponse.StatusCode >= 300) and (HttpResponse.StatusCode <> 304)))  then
  begin
    retCode := HttpResponse.StatusCode;
    errorText := HttpResponse.StatusText;
    exit;
  end;

  lContentObject := TJSONObject.Create;
  try
    try
      lContentObject.Parse(TEncoding.UTF8.GetBytes(HttpResponse.ContentAsString(TEncoding.UTF8)), 0, true);
    except end;
    if lContentObject.TryGetValue<TJSONNumber>('retCode', lRetCodeValue) then
      retCode := lRetCodeValue.AsInt64;
    if lContentObject.TryGetValue<TJSONString>('error', lErrorValue) then
      errorText := lErrorValue.Value;
  finally
    FreeAndNil(lContentObject);
  end;

  result := retCode = 0;
end;

end.
