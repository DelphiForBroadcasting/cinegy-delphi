unit FH.CINEGY.CAS.SOAP.CLIENT;


interface

uses
  System.SysUtils,
  System.Types,
  System.DateUtils,
  System.Classes,
  System.Variants,
  WinApi.ActiveX,
  System.Generics.Collections,
  System.IOUtils,
  System.SyncObjs,
  Soap.XSBuiltIns,
  Soap.SOAPHTTPClient,
  Soap.OpConvertOptions,
  CINEGY.CAS14.SOAP;

type
  TConnectionType = ConnectionType;
  TNodeRequestType = GET_NODE_REQUEST_TYPE;
  TNodeFillingType = NodeFillingType;
  TNodeLockType = LockType;
  TNodeType = NODE_TYPE;

  TSubType = (
    ROLL = 10,
    CLIPBIN = 15,
    CLIP = 20,
    MASTERCLIP = 30,
    PLACEHOLDER = 540,
    PORTFOLIO = 4000,
    FOLDER = 4004
  );

  TErrorNotify = reference to procedure(const Sender: TObject; const errorCode: integer; const errorText: string);

  TConnectionInfo = record
  private
    FServer   : string;
    FDataBase : string;
    FUser     : string;
  public
    class function Create(const server: string; const database: string; const user: string): TConnectionInfo; static;
    function ToString(): string;
    property Server: string read FServer;
    property DataBase: string read FDataBase;
    property User: string read FUser;
  end;

  TCinegyArchiveServiceClient = class(TInterfacedObject, IUnknown)
  private const
    cApplicationName = 'FH.CINEGY.CAS.CLIENT';
    cMinimumCasVersion = 1411301;
    cVersionId = '1.0';
  private
    FRIO                        : THTTPRIO;
    FICinegyDataAccessService   : ICinegyDataAccessService;
    FConnectContext2            : ConnectContext2;

    FOnError                    : TErrorNotify;

    FHost                       : string;
    FPort                       : word;
    FSQLServer                  : string;
    FDatabase                   : string;
    FConnectionType             : TConnectionType;
    FApplicationLicense         : string;
    FUsername                   : string;
    FPassword                   : string;
    FDomain                     : string;

    function GetWSDLAddr: string;
    procedure SetPort(const AValue: word);
    procedure SetHost(const AValue: string);
    procedure SetSQLServer(const AValue: string);
    procedure SetDatabase(const AValue: string);
    procedure SetUsername(const AValue: string);
    procedure SetPassword(const AValue: string);
    procedure SetDomain(const AValue: string);
    procedure SetConnectionType(const AValue: TConnectionType);
    procedure SetApplicationLicense(const AValue: string);

    procedure DoError(const Sender: TObject; const errorCode: integer; const errorText: string);

    procedure RIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure RIOAfterExecute(const MethodName: string; SOAPRequest: TStream);

    (* CAS API *)
    function GetVersion(): integer;
    function GetHeartBeat(): boolean;
    function GetRootNode(): Node2;
    function GetNode(const nodeID: string; const requestType : TNodeRequestType): Node2; overload;
    function GetNode(const nodeID: string): Node2; overload;
    function GetServerConnectionInfo: TConnectionInfo;

    // SOAP
    procedure SetSOAPConvertOptions(const Options: TSOAPConvertOptions);
    function GetSOAPConvertOptions(): TSOAPConvertOptions;
  protected
    (* IUnknown methods *)
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    constructor Create; overload;
    destructor Destroy; override;

    function Connect(): boolean;
    function Disconnect(): boolean;
    function SearchList(const searchText: string; const pageSize : integer = 100): TArray<string>;
    function CreateSubClip(const NodeID: string; properties: TArray<TPair<string, string>>): Node2;
    //function GetNodesCount(onst node: NodeBase2; const requestType : TNodeRequestType): integer;
    //function MoveNode(const node: Node2; const dstParent: NodeBase2): boolean;
    //function CopyNode(const node: NodeBase2; const dstParent: NodeBase2; const newNodeID: string): boolean;
    //function CopyNode(const node: NodeBase2; const dstParent: NodeBase2): boolean;
    //function GetPathForNode(const node: NodeBase2): string;
    //function RenameNode(const node: NodeBase2; const newName: string);
    //function RestoreNode(const node: NodeBase2): boolean;
    //function DeleteNode(const node: NodeBase2): boolean;
    function CreatePlaceholder(const Name: string; const parentNodeID: string): Node2;
    function CreateBin(const parentID: string; const Name: string; const subtype: integer; const tvFormat: integer): Node2;
    function GetChildrenNodes(const node: NodeBase2; const requestType : TNodeRequestType = TNodeRequestType.NotDeleted): TArray<Node2>;
    function GetChildrenNodesEx(const node: NodeBase2; const requestType : TNodeRequestType = TNodeRequestType.NotDeleted; const FillingType: TNodeFillingType = TNodeFillingType.MAIN): TArray<Node2>;
    procedure NodeLock(const node: NodeBase2; const lockType: TNodeLockType);
    procedure NodeUnlock(const node: NodeBase2);
    function GetNodeEx(const nodeID: string; const requestType : TNodeRequestType = TNodeRequestType.NotDeleted; const FillingType: TNodeFillingType = TNodeFillingType.MAIN): Node2;
    function GetMetaData(const nodeID: string): TArray<MetadataObject2>;

    function EnumExportPlugins: TArray<string>;
    function ExportNode(const nodeID: string; const ExportPlugin: string): string;
    function GetSubTypesInfo(): ArrayOfSubTypeObject;

    property Root: Node2 read GetRootNode;
    property Node[const NodeId: string]: Node2 read GetNode;
    property Version: integer read GetVersion;
    property Connected: boolean read GetHeartBeat;
    property ConnectionInfo: TConnectionInfo read GetServerConnectionInfo;

    property Host: string read FHost write SetHost;
    property Port: word read FPort write SetPort;
    property SQLServer: string read FSQLServer write SetSQLServer;
    property Database: string read FDatabase write SetDatabase;
    property ConnectionType: TConnectionType read FConnectionType write SetConnectionType;
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    property Domain: string read FDomain write SetDomain;
    property ApplicationLicense: string read FApplicationLicense write SetApplicationLicense;

    property SOAPConvertOptions: TSOAPConvertOptions read GetSOAPConvertOptions write SetSOAPConvertOptions;

    property OnError: TErrorNotify read FOnError write FOnError;
  end;

implementation

class function TConnectionInfo.Create(const server: string; const database: string; const user: string): TConnectionInfo;
begin
  result.FServer := server;
  result.FDataBase := database;
  result.FUser := user;
end;

function TConnectionInfo.ToString(): string;
begin
  result := Format('server: %s, database: %s, user: %s', [FServer, FDatabase, FUser]);
end;


(* TCinegyArchiveServiceClient *)
constructor TCinegyArchiveServiceClient.Create;
begin
  inherited Create;
  CoInitializeEx(nil, COINIT_MULTITHREADED);
  FICinegyDataAccessService   := nil;
  FConnectContext2            := nil;
  FRIO:= THTTPRIO.Create(nil);
  FRIO.OnBeforeExecute := RIOBeforeExecute;
  FRIO.OnAfterExecute := RIOAfterExecute;
  SOAPConvertOptions := [soSendMultiRefObj, soTryAllSchema, soUTF8EncodeXML, soCacheMimeResponse, soSendUntyped, soUTF8InHeader];
  FSQLServer := '.';
  FPort := 0;
  ApplicationLicense := '{705EADF7-EAAD-4f7c-8141-862C2C511A61}';  //Development License
end;

destructor TCinegyArchiveServiceClient.Destroy;
begin
  if Self.Connected then
    Self.Disconnect;

  CoUninitialize;

  inherited Destroy;
end;

procedure TCinegyArchiveServiceClient.SetSOAPConvertOptions(const Options: TSOAPConvertOptions);
begin
  FRIO.Converter.Options := Options;
end;

function TCinegyArchiveServiceClient.GetSOAPConvertOptions(): TSOAPConvertOptions;
begin
  result := FRIO.Converter.Options;
end;

procedure TCinegyArchiveServiceClient.RIOBeforeExecute(const MethodName: string; SOAPRequest: TStream);
var
  SOAPRequestStr : string;
  LStringStream  : TStringStream;
  XMLStr          : string;
begin
  LStringStream  := TStringStream.Create;
  try
    LStringStream.LoadFromStream(SOAPRequest);
    SOAPRequestStr := LStringStream.DataString;
  finally
    FreeAndNil(LStringStream);
  end;
end;

procedure TCinegyArchiveServiceClient.RIOAfterExecute(const MethodName: string; SOAPRequest: TStream);
var
  SOAPRequestStr : string;
  LStringStream  : TStringStream;
begin
  LStringStream  := TStringStream.Create;
  try
    LStringStream.LoadFromStream(SOAPRequest);
    SOAPRequestStr := LStringStream.DataString;
  finally
    FreeAndNil(LStringStream);
  end;


end;

function TCinegyArchiveServiceClient.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if IsEqualGUID(IID, ICinegyDataAccessService) then
  begin
    ICinegyDataAccessService(Obj) := Self.FICinegyDataAccessService ;
    Result := S_OK;
  end else
    Result := inherited QueryInterface(IID, Obj);
end;

function TCinegyArchiveServiceClient._AddRef: Integer;
begin
  Result := -1;   // -1 indicates no reference counting is taking place
end;

function TCinegyArchiveServiceClient._Release: Integer;
begin
  Result := -1;   // -1 indicates no reference counting is taking place
end;

procedure TCinegyArchiveServiceClient.DoError(const Sender: TObject; const errorCode: integer; const errorText: string);
begin
  if assigned(FOnError) then
    FOnError(Sender, errorCode, errorText);
end;

function TCinegyArchiveServiceClient.GetWSDLAddr: string;
begin
  if FHost.IsEmpty then
    raise Exception.Create('Error connect to server, host not set!');

  if FPort = 0 then
    FPort := 8082;

  result := Format('http://%s:%d/ICinegyDataAccessService', [FHost, FPort]);
end;

procedure TCinegyArchiveServiceClient.SetPort(const AValue: word);
begin
  if AValue = 0 then
    FPort := 8082
  else  FPort := AValue;
end;

procedure TCinegyArchiveServiceClient.SetHost(const AValue: string);
begin
  if not AValue.IsEmpty then
    FHost := AValue
  else  FHost := 'localhost';
end;

procedure TCinegyArchiveServiceClient.SetSQLServer(const AValue: string);
begin
  if not AValue.IsEmpty then
    FSQLServer := AValue
  else  FSQLServer := '.';
end;

procedure TCinegyArchiveServiceClient.SetDatabase(const AValue: string);
begin
  if AValue.IsEmpty then
    raise Exception.Create('Error set empty database!');

  FDatabase := AValue;
end;

procedure TCinegyArchiveServiceClient.SetUsername(const AValue: string);
begin
  FUserName := AValue;
end;

procedure TCinegyArchiveServiceClient.SetPassword(const AValue: string);
begin
  FPassword := AValue;
end;

procedure TCinegyArchiveServiceClient.SetDomain(const AValue: string);
begin
  FDomain := AValue;
end;

procedure TCinegyArchiveServiceClient.SetConnectionType(const AValue: TConnectionType);
begin
  FConnectionType := AValue;
end;

procedure TCinegyArchiveServiceClient.SetApplicationLicense(const AValue: string);
begin
  if length(AValue) >= 36 then
    FApplicationLicense :='{' + AValue.Trim(['{','}']) + '}';
end;


function TCinegyArchiveServiceClient.Connect(): boolean;
var
  LRequest  : ConnectMessageRequest;
  LResponse : ConnectMessageResponse;
begin
  if FHost.IsEmpty then
    raise Exception.Create('Error connect to server, host not set!');
  if FDatabase.IsEmpty then
    raise Exception.Create('Error connect to server, database not set!');

  FICinegyDataAccessService := GetICinegyDataAccessService(false, Self.GetWSDLAddr, FRIO);
  LRequest := ConnectMessageRequest.Create;
  LRequest.server := FSQLServer;
  LRequest.port := 0;
  LRequest.database := FDatabase;
  LRequest.connectionType := FConnectionType;
  LRequest.username := FUsername;
  LRequest.password := FPassword;
  LRequest.application_ := Format('%s##%s##%d##%s', [cApplicationName, FApplicationlicense, cMinimumCasVersion, cVersionId]);
  LRequest.domain := FDomain;
  LRequest.wrapper := WrapperType.None;
  LResponse := FICinegyDataAccessService.Connect(LRequest);
  FConnectContext2 := LResponse.context;
  if LResponse.retCode <> 0 then
  begin
    DoError(Self, LResponse.retCode, LResponse.error);
  end;
  result :=  LResponse.retCode = 0;
end;



procedure TCinegyArchiveServiceClient.NodeLock(const node: NodeBase2; const lockType: TNodeLockType);
var
  LRequest  : NodeLockMessageRequest;
  LResponse : NodeLockMessageResponse;
begin
  LRequest := NodeLockMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.node := node;
  LRequest.lockType := lockType;
  LResponse := FICinegyDataAccessService.NodeLock(LRequest);
  if LResponse.retCode <> 0 then
  begin
    DoError(Self, LResponse.retCode, LResponse.error);
    raise Exception.Create(LResponse.error);
  end;
end;

procedure TCinegyArchiveServiceClient.NodeUnlock(const node: NodeBase2);
var
  LRequest  : NodeUnlockMessageRequest;
  LResponse : NodeUnlockMessageResponse;
begin
  LRequest := NodeUnlockMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.node := node;
  LResponse := FICinegyDataAccessService.NodeUnlock(LRequest);
  if LResponse.retCode <> 0 then
  begin
    DoError(Self, LResponse.retCode, LResponse.error);
    raise Exception.Create(LResponse.error);
  end;
end;

function TCinegyArchiveServiceClient.Disconnect(): boolean;
var
  LRequest  : DisconnectMessageRequest;
  LResponse : DisconnectMessageResponse;
begin
  result := false;
  if assigned(FICinegyDataAccessService) then
  begin
    LRequest := DisconnectMessageRequest.Create;
    LRequest.context := FConnectContext2;
    LResponse := FICinegyDataAccessService.Disconnect(LRequest);
    if LResponse.retCode <> 0 then
    begin
      DoError(Self, LResponse.retCode, LResponse.error);
    end;
    if LResponse.retCode = 0 then
    begin
      FICinegyDataAccessService := nil;
      result := true;
    end;
  end;
end;

function TCinegyArchiveServiceClient.GetVersion(): integer;
var
  LRequest  : HeartBeatMessageRequest;
  LResponse : HeartBeatMessageResponse;
begin
  LRequest := HeartBeatMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.m_bTouch :=  0;
  LResponse := FICinegyDataAccessService.HeartBeat(LRequest);
  if LResponse.retCode = 0 then
  begin
    result :=  LResponse.nVersion
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetHeartBeat(): boolean;
var
  LRequest  : HeartBeatMessageRequest;
  LResponse : HeartBeatMessageResponse;
begin
  result := false;
  if (not Assigned(FICinegyDataAccessService)) or (not Assigned(FConnectContext2)) then
    exit;

  LRequest := HeartBeatMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.m_bTouch :=  0;
  LResponse := FICinegyDataAccessService.HeartBeat(LRequest);
  if LResponse.retCode <> 0 then
  begin
    DoError(Self, LResponse.retCode, LResponse.error);
  end;
  result :=  LResponse.retCode = 0;
end;

function  TCinegyArchiveServiceClient.GetServerConnectionInfo: TConnectionInfo;
var
  LRequest  : ConnectionInfoMessageRequest;
  LResponse : ConnectionInfoMessageResponse;
begin
  LRequest := ConnectionInfoMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LResponse := FICinegyDataAccessService.GetServerConnectionInfo(LRequest);
  if LResponse.retCode = 0 then
  begin
    result :=  TConnectionInfo.Create(LResponse.server, LResponse.database, LResponse.user);
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;


function TCinegyArchiveServiceClient.GetRootNode(): Node2;
var
  LRequest  : BaseMessageRequest;
  LResponse : NodeMessageResponse;
begin
  result := nil;
  LRequest := BaseMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LResponse := FICinegyDataAccessService.GetRoot(LRequest);
  if LResponse.retCode = 0 then
  begin
    result :=  LResponse.node;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetChildrenNodes(const node: NodeBase2; const requestType : TNodeRequestType): TArray<Node2>;
var
  LRequest  : GetChildrenMessageRequest;
  LResponse : NodeChildrenMessageResponse;
  i  : integer;
begin
  result := nil;
  LRequest := GetChildrenMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.node := node;
  LRequest.requestType := requestType;

  LResponse := FICinegyDataAccessService.GetChildrenNodes(LRequest);
  if (LResponse.retCode = 0) or (LResponse.retCode = 6) then
  begin
    SetLength(result, length(LResponse.nodes));
    for  I:=0 to length(LResponse.nodes) - 1 do
    begin
      result[i] := LResponse.nodes[i];
    end;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;


function TCinegyArchiveServiceClient.GetChildrenNodesEx(const node: NodeBase2; const requestType : TNodeRequestType = TNodeRequestType.NotDeleted; const FillingType: TNodeFillingType = TNodeFillingType.MAIN): TArray<Node2>;
var
  LRequest  : GetChildrenMessageRequestEx;
  LResponse : NodeChildrenMessageResponse;
  i  : integer;
begin
  result := nil;
  LRequest := GetChildrenMessageRequestEx.Create;
  LRequest.context := FConnectContext2;
  LRequest.node := node;
  LRequest.requestType := requestType;
  LRequest.nodeFillingType := FillingType;
  LResponse := FICinegyDataAccessService.GetChildrenNodesEx(LRequest);
  if (LResponse.retCode = 0) or (LResponse.retCode = 6) then
  begin
    SetLength(result, length(LResponse.nodes));
    for  I:=0 to length(LResponse.nodes) - 1 do
    begin
      result[i] := LResponse.nodes[i];
    end;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;


function TCinegyArchiveServiceClient.GetNode(const nodeID: string; const requestType : TNodeRequestType): Node2;
var
  LRequest  : GetNodeMessageRequest;
  LResponse : GetNodeMessageResponse;
  LNodeID   : NODEID2;
begin
  result := nil;
  LRequest := GetNodeMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LNodeID := NODEID2.Create;
  LNodeID._nodeid_id := nodeID;
  LRequest.node := NodeBase2.Create;
  LRequest.node._id := LNodeID;
  LRequest.requestType := requestType;

  LResponse := FICinegyDataAccessService.GetNode(LRequest);
  if LResponse.retCode = 0 then
  begin
    result :=  LResponse.node;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetMetaData(const nodeID: string): TArray<MetadataObject2>;
var
  LRequest  : GetMetadataMessageRequest;
  LResponse : GetMetadataMessageResponse;
  LNodeID   : NODEID2;
  i         : Integer;
begin
  result := nil;
  LRequest := GetMetadataMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LNodeID := NODEID2.Create;
  LNodeID._nodeid_id := nodeID;
  LRequest.node := NodeBase2.Create;
  LRequest.node._id := LNodeID;
  LResponse := FICinegyDataAccessService.GetMetadata(LRequest);
  if LResponse.retCode = 0 then
  begin
    if assigned(LResponse.metadata) then
    begin
      SetLength(result, Length(LResponse.metadata.metadata));
      for I := 0 to Length(LResponse.metadata.metadata) - 1 do
        result[i]:= LResponse.metadata.metadata[i]
    end;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetNodeEx(const nodeID: string; const requestType : TNodeRequestType = TNodeRequestType.NotDeleted; const FillingType: TNodeFillingType = TNodeFillingType.MAIN): Node2;
var
  LRequest  : GetNodeMessageRequestEx;
  LResponse : GetNodeMessageResponse;
  LNodeID   : NODEID2;
begin
  result := nil;
  LRequest := GetNodeMessageRequestEx.Create;
  LRequest.context := FConnectContext2;
  LNodeID := NODEID2.Create;
  LNodeID._nodeid_id := nodeID;
  LRequest.node := NodeBase2.Create;
  LRequest.node._id := LNodeID;
  LRequest.requestType := requestType;
  LRequest.nodeFillingType := FillingType;
  LResponse := FICinegyDataAccessService.GetNodeEx(LRequest);
  if LResponse.retCode = 0 then
  begin
    result :=  LResponse.node;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.SearchList(const searchText: string; const pageSize : integer = 100): TArray<string>;
var
  LRequest  : SearchListMessageRequest;
  LResponse : SearchListMessageResponse;
  i         : integer;
begin
  LRequest := SearchListMessageRequest.Create;
  LRequest.context := FConnectContext2;

  LRequest.sp := SearchParameters2.Create;
  LRequest.sp._guid_from_here := System.SysUtils.GuidToString(TGUID.Empty);
  LRequest.sp._guid_start_id := System.SysUtils.GuidToString(TGUID.Empty);
  LRequest.sp._guidSession := System.SysUtils.GuidToString(TGUID.NewGuid);
  LRequest.sp._nIsSync := 0;
  LRequest.sp._nPageSize := pageSize;
  LRequest.sp._nUseTotal := 0;
  LRequest.sp._nTotal := 0;
  LRequest.sp._str_search := searchText;
  LRequest.sp._str_types := '';

  LResponse := FICinegyDataAccessService.SearchList(LRequest);
  if LResponse.retCode = 0 then
  begin
    SetLength(result, LResponse.Total);
    for I := 0 to Length(LResponse.results) - 1 do
      result[i]:= LResponse.results[i]._node_id._nodeid_id;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.EnumExportPlugins: TArray<string>;
var
  LRequest  : EnumExportPluginsMessageRequest;
  LResponse : EnumExportPluginsMessageResponse;
  i         : integer;
begin
  LRequest := EnumExportPluginsMessageRequest.Create;
  LRequest.context := FConnectContext2;

  LResponse := FICinegyDataAccessService.EnumExportPlugins(LRequest);
  if LResponse.retCode = 0 then
  begin
    SetLength(result, Length(LResponse.plugins));
    for I := 0 to Length(LResponse.plugins) - 1 do
      result[i]:= LResponse.plugins[i];
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetSubTypesInfo(): ArrayOfSubTypeObject;
var
  LRequest  : SubTypeInfoMessageRequest;
  LResponse : SubTypeInfoMessageResponse;
  i         : integer;
begin
  LRequest := SubTypeInfoMessageRequest.Create;
  LRequest.context := FConnectContext2;

  LResponse := FICinegyDataAccessService.GetSubTypesInfo(LRequest);
  if LResponse.retCode = 0 then
  begin
    result := LResponse.subtypes.SubTypes;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.ExportNode(const nodeID: string; const ExportPlugin: string): string;
var
  LRequest  : ExportMessageRequest;
  LResponse : ExportMessageResponse;
  i         : integer;
begin
  LRequest := ExportMessageRequest.Create;
  LRequest.context := FConnectContext2;
  LRequest.pluginID := ExportPlugin;
  LRequest.pluginParams := nodeID;

  LResponse := FICinegyDataAccessService.Export_(LRequest);
  if LResponse.retCode = 0 then
  begin
    result := LResponse.resultXML;
  end else
    DoError(Self, LResponse.retCode, LResponse.error);
end;

function TCinegyArchiveServiceClient.GetNode(const nodeID: string): Node2;
begin
  result := GetNode(nodeID, TNodeRequestType.NotDeleted);
end;


function TCinegyArchiveServiceClient.CreateBin(const parentID: string; const Name: string; const subtype: integer; const tvFormat: integer): Node2;
var
  LParentNode       : Node2;
  LBinNode          : BinNode;
  LBinNodeRequest   : CreateNodeMessageRequest;
  LBinNodeResponse  : CreateNodeMessageResponse;
begin
  LParentNode := Self.GetNodeEx(parentID);

  LBinNode := BinNode.Create;
  LBinNode.name_ := Name;
  LBinNode._id := NODEID2.Create;
  LBinNode._id._nodeid_id := GUIDToString(TGuid.Empty);
  LBinNode.predecessorID := NODEID2.Create;
  LBinNode.predecessorID._nodeid_id := GUIDToString(TGuid.Empty);

  LBinNode.parentID := LParentNode._id;

  LBinNode._type := NODE_TYPE.BIN;
  LBinNode._subtype := subtype;

  LBinNode.priority := 1;
  LBinNode.tvFormat := tvFormat;
  LBinNode.isArchive := false;

  LBinNode.creation := TXSDateTime.Create;
  LBinNode.creation.AsDateTime := Now;
  LBinNode.modification := TXSDateTime.Create;
  LBinNode.modification.AsDateTime := Now;

  LBinNodeRequest := CreateNodeMessageRequest.Create;
  LBinNodeRequest.context := FConnectContext2;
  LBinNodeRequest.node := LBinNode as Node2;
  LBinNodeRequest.insertBefore := false;
  LBinNodeRequest.insertPosition := nil;
  LBinNodeRequest.extraData := System.Variants.Null;

  LBinNodeResponse := FICinegyDataAccessService.CreateNode(LBinNodeRequest);
  if LBinNodeResponse.retCode <> 0 then
  begin
    raise Exception.Create(LBinNodeResponse.error);
  end;

end;

function TCinegyArchiveServiceClient.CreateSubClip(const NodeID: string; properties: TArray<TPair<string, string>>): Node2;
var
  LMasterNode             : Node2;
  LParentNode             : Node2;
  LCreateSubClipRequest   : CreateSubClipMessageRequest;
  LCreateSubClipResponse  : CreateSubClipMessageResponse;

  LArrayOfProperty        : ArrayOfPropertyObjectBase;
  LPropertySet            : PropertySetObject2;
  LPredefinedProperty     : PredefinedPropertyObject2;
begin

  LMasterNode := Self.GetNodeEx(NodeID);
  LParentNode := Self.GetNodeEx(LMasterNode.parentID._nodeid_id);

  LCreateSubClipRequest := CreateSubClipMessageRequest.Create;
  LCreateSubClipRequest.context := FConnectContext2;
  LCreateSubClipRequest.node := LMasterNode;
  LCreateSubClipRequest.dstParent := LParentNode;

  LCreateSubClipRequest.insertPosition := nil;
  LCreateSubClipRequest.insertBefore := false;

  LCreateSubClipRequest.newNodeID := NODEID2.Create;
  LCreateSubClipRequest.newNodeID._nodeid_id := GUIDToString(TGuid.NewGuid);

  //PROPERTY_NUM
  LPropertySet := PropertySetObject2.Create;


  SetLength(LArrayOfProperty, 2);

  LPredefinedProperty := PredefinedPropertyObject2.Create;
  LPredefinedProperty.fieldNum := PROPERTY_NUM.IN_;
  LPredefinedProperty.value :=  (1 * (25 * 40)) * 10000;
  LArrayOfProperty[0] := LPredefinedProperty;
  LPredefinedProperty := nil;

  LPredefinedProperty := PredefinedPropertyObject2.Create;
  LPredefinedProperty.fieldNum := PROPERTY_NUM.OUT_;
  LPredefinedProperty.value :=  (2 * (25 * 40)) * 10000;
  LArrayOfProperty[1] := LPredefinedProperty;
  LPredefinedProperty := nil;


  LPropertySet.properties :=  LArrayOfProperty;

  //LCreateSubClipRequest.properties := LPropertySet;




  LCreateSubClipResponse := FICinegyDataAccessService.CreateSubClip(LCreateSubClipRequest);
  if LCreateSubClipResponse.retCode <> 0 then
  begin
    raise Exception.Create(LCreateSubClipResponse.error);
  end;

end;

function TCinegyArchiveServiceClient.CreatePlaceholder(const Name: string; const parentNodeID: string): Node2;
var
  LBinNodeRequest  : CreateNodeMessageRequest;
  LBinNodeResponse : CreateNodeMessageResponse;

  LMogNodeRequest  : CreateNodeMessageRequest;
  LMogNodeResponse : CreateNodeMessageResponse;

  LParentNode       : Node2;
  LBinNode          : BinNode;
  LMogNode          : MogNode;
  i                : integer;

  LBinNodeID          : NODEID2;
  LPredecessorNodeID  : NODEID2 ;
begin


  LParentNode := Self.GetNodeEx(parentNodeID);

  LPredecessorNodeID := NODEID2.Create;
  LPredecessorNodeID._nodeid_id := GUIDToString(TGuid.Empty);

  LBinNodeRequest := CreateNodeMessageRequest.Create;
  LBinNodeRequest.context := FConnectContext2;
  LBinNodeRequest.insertBefore := false;

  LBinNode:= BinNode.Create;
  try
    LBinNodeID := NODEID.Create;
    LBinNodeID._nodeid_id := GUIDToString(TGuid.NewGuid).ToLower;

    LBinNode._id := LBinNodeID;
    LBinNode._subtype := 540; //placeholder MOGs
    LBinNode._type := TNodeType.LAYER;
    LBinNode.name_ := Name;
    LBinNode.access := 'NONE';

    LBinNode.parentID :=  LParentNode._id;
    LBinNode.predecessorID :=  LPredecessorNodeID ;

    LBinNode.order  := 0;
    LBinNode.creation := TXSDateTime.Create;
    LBinNode.creation.AsDateTime := Now;
    LBinNode.modification := TXSDateTime.Create;
    LBinNode.modification.AsDateTime := Now;
    LBinNode.tvFormat := 5;
    LBinNode.priority := 1;
    LBinNode.isArchive := false;
  finally
    LBinNodeRequest.node := LBinNode;
  end;

  LBinNodeResponse := FICinegyDataAccessService.CreateNode(LBinNodeRequest);
  if LBinNodeResponse.retCode <> 0 then
  begin
    raise Exception.Create(LBinNodeResponse.error);
  end;

  LMogNodeRequest := CreateNodeMessageRequest.Create;
  LMogNodeRequest.context := FConnectContext2;
  LMogNodeRequest.node := BinNode.Create;
  LMogNodeRequest.node._id := NODEID2.Create;
  LMogNodeRequest.node._id._nodeid_id := GUIDToString(TGuid.NewGuid).Trim(['{', '}']).ToLower;
  LMogNodeRequest.node._subtype := 30; // MasterClip
  LMogNodeRequest.node._type := TNodeType.MASTERCLIP;
  LMogNodeRequest.node.name_ := Name;
  LMogNodeRequest.node.parentID := NODEID2.Create;
  LMogNodeRequest.node.parentID._nodeid_id := LBinNodeRequest.node._id._nodeid_id;
  LMogNodeRequest.node.predecessorID := NODEID2.Create;
  LMogNodeRequest.node.predecessorID._nodeid_id := GUIDToString(TGuid.Empty).Trim(['{', '}']).ToLower;

  LMogNodeResponse := FICinegyDataAccessService.CreateNode(LMogNodeRequest);
  if LMogNodeResponse.retCode <> 0 then
  begin
    raise Exception.Create(LMogNodeResponse.error);
  end;


  result := LMogNodeResponse.node;

end;

end.
