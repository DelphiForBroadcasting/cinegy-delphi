unit FH.VGCAST.HANDLER;


interface

uses
  System.SysUtils,
  System.Types,
  System.Classes,
  System.Generics.Collections,
  System.IOUtils,
  WinApi.WinSock,
  IdAssignedNumbers,
  IdGlobal,
  IdIOHandler,
  IdExceptionCore,
  IdException,
  IdStack,
  IdTCPClient,
  IdThread,
  IdSync,
  System.SyncObjs;


const
  EOL           : string = #13#00;
  waitTimeOut   : integer = 1000;

  VgCastPort    : word = 5001;
  VgCastHost    : string = '127.0.0.1';

const
  MSG_ConnClosedGracefully    = 211;


type
  TDataMessage = record
    Msg: DWORD;
    Data: PChar;
  end;


type
  TVgCastSocket = class;
  TVgCastHandler = class;

  TVgCastDebugEvent = reference to procedure(Sender: TObject; messages: string);
  TVgCastNotifyEvent = reference to procedure(Sender: TObject);

  TTCPClientReadThread = class(TIdThread)
  protected
    fBuffer               : TIdBytes;
    FClient               : TVgCastHandler;
    FConnClosedGracefully : Boolean;
    //
    procedure Run; override;
  public
    constructor Create(AClient: TVgCastHandler); reintroduce;
    property Client: TVgCastHandler read FClient;
  end; //TIdTelnetReadThread


  TSocketReadThread = class(TThread)
  private
    FOwner                : TVgCastSocket;
    FConnClosedGracefully : boolean;
  protected
    procedure DoTerminate; override;
    procedure Execute; override;
  public
    constructor Create(AOwner: TVgCastSocket); overload;
    destructor Destroy; override;
    procedure Terminate;
  end;


  TVgCastSocket = class
  private
    FTCPClient              : TIdTCPClient;
    FEncoding               : TEncoding;
    FOnConnClosedGracefully : TVgCastNotifyEvent;

    procedure OnConnClosedGracefullyReceived(var Msg: TDataMessage); message MSG_ConnClosedGracefully;

    function GetIOHandler: TIdIOHandler;
    procedure SetPort(AValue: word);
    function GetPort: word;
    procedure SetHost(AValue: string);
    function GetHost: string;

    procedure DoDataProcessor(ABuffer: TIdBytes); virtual;
  protected
    FSocketReadThread : TSocketReadThread;
  public
    constructor Create; overload;
    destructor Destroy; override;

    procedure Connect;
    procedure Disconnect;
    function Connected: boolean;

    procedure SendString(const S: String);
    function SendToVgCast(AValue: string): boolean; overload;
    function SendToVgCast(AValue: string; out ARcvBuf: string): boolean; overload;

    property Host: string read GetHost write SetHost;
    property Port: word read GetPort write SetPort;
    property IOHandler: TIdIOHandler read GetIOHandler;
    property Encoding: TEncoding read FEncoding write FEncoding;

    property OnConnClosedGracefully : TVgCastNotifyEvent read fOnConnClosedGracefully write fOnConnClosedGracefully;

  end;



  TVgTpl = class(TVgCastSocket)
  private
    FVgCastHandler  : TVgCastHandler;

    FFileName       : string;
    FText           : TStringList;
    FEfxList        : TList<string>;
    FLayer          : TList<TStringList>;

    function GetTplName: string;
    procedure LoadTemplate(AFileName: string);
    procedure DoDataProcessor(ABuffer: TIdBytes); override;
  public
    constructor Create(AVgCastHandler:  TVgCastHandler; AFileName: string); overload;
    destructor Destroy; override;

    property FileName: string read FFileName write LoadTemplate;
    property Name : string read GetTplName;

    function LOAD: boolean;
    function READ: boolean;
    function SHOW: boolean;
    function HIDE: boolean;
    function DEL: boolean;
    function PLAY: boolean;
    function EFX(AValue: string): boolean;
    function NOTIFY: boolean;

  end;


  TTplList = class(TObjectList<TVgTpl>)
  private
    FVgCastHandler : TVgCastHandler;
  public
    constructor Create(AVgCastHandler:  TVgCastHandler); overload;
    function Exists(AValue: string): boolean;
    function Open(AFileName: string; AReLoad: boolean = true): boolean;
    function Close(AValue: string): boolean;
    function FindByFileName(AValue: string): TVgTpl;
    function FindByName(AValue: string): TVgTpl;
  end;

  TVgCastHandler = class(TVgCastSocket)
  private
    FTplList                : TTplList;
    FOnDebug                : TVgCastDebugEvent;
    procedure DoDebug(const AMsg: string);
  public
    constructor Create; overload;
    destructor Destroy; override;

    function DEL(AValue: string): boolean;
    function DELALL: boolean;
    function EFX(AValue: string): boolean;
    function LOAD(AValue: string): boolean;
    function NOTIFY: boolean;
    function STS: string;
    function STS_TEMPLATE: TArray<string>;

    property TplList : TTplList read FTplList write FTplList;

    property OnDebug     : TVgCastDebugEvent read fOnDebug write fOnDebug;
  end;

  ETCPClientError = class(EIdException);
  ETCPClientConnectError = class(ETCPClientError);

implementation

uses
  IdResourceStringsCore,
  IdResourceStringsProtocols;

function tnc_start(AHost : string; APort: word): TSOCKET;
var
  WSAData     : TWSAData;
  WSocket     : TSocket;
  WSockAddr   : TSockAddr;
  server_name : string;
begin

  if AHost.IsEmpty then
    server_name := '127.0.0.1'
  else
    server_name := AHost;

  if WSAStartup($101, wsaData) = SOCKET_ERROR then
  begin
    WSACleanup();
    raise Exception.Create('WSAStartup');
  end;

  { Создаем сокет }
  WSocket:=socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
  { Если возвращено значение INVALID_SOCKET, выводим сообщение об ошибке }
  if WSocket = INVALID_SOCKET then
  begin
    WSACleanup();
    raise Exception.Create('socket error');
  end;

  FillChar(WSockAddr, SizeOf(TSockAddr), 0);
  WSockAddr.sin_family:=AF_INET;
  WSockAddr.sin_port:=htons(APort);
  WSockAddr.sin_addr.S_addr:=inet_addr(PAnsiChar(ansistring(server_name)));


  { Пытаемся подконнектиться, если удачно - выводим сообщение, что порт открыт,
  в другом случае - сообщение о том, что порт закрыт (или недоступен) }
  if connect(WSocket, WSockAddr, sizeof(WSockAddr)) = SOCKET_ERROR then
  begin
    WSACleanup();
    raise Exception.Create('connect error');
  end;

  result := WSocket;
end;


procedure tnc_stop(ASocket: TSocket);
begin
  closesocket(ASocket);
  WSACleanup();
end;


function tnc_send(ASocket: TSocket; ABuf: string): string;
var
  retval: integer;
  msgbuf : array[0..1024] of AnsiChar;
  LRcvBuf: array of AnsiChar;
  LRcvBufSize : integer;
  i : integer;
  msglen : integer;
  LOptSize : integer;
begin

  msglen := 0;
  for I := 0 to ABuf.Length do
  begin
    if AnsiChar(ABuf[i]) = #13 then
      msgbuf[msglen] := #10
    else
      msgbuf[msglen] := AnsiChar(ABuf[i]);
      inc(msglen);
  end;



  msgbuf[msglen]:= #10;
  inc(msglen);
  msgbuf[msglen]:= #00;
  inc(msglen);


  retval := send(ASocket, msgbuf, msglen, 0);
  if (retval = SOCKET_ERROR) then
    raise Exception.Create('send error');

  LOptSize := SizeOf(Integer);
  GetSockOpt(ASocket, SOL_SOCKET, SO_RCVBuf, @LRcvBufSize, LOptSize);
  SetLength(LRcvBuf, LRcvBufSize);
  retval := Recv(ASocket, LRcvBuf[0], LRcvBufSize, 0);


  for I := 0 to length(LRcvBuf) - 1 do
  begin
    if AnsiChar(LRcvBuf[i]) = #00 then
      LRcvBuf[i] := #10
  end;

  SetString(Result, PAnsiChar(@LRcvBuf[0]), Length(LRcvBuf))

end;

constructor TVgCastSocket.Create;
begin
  inherited Create;
  FEncoding := TEncoding.UTF8;
  FTCPClient := TIdTCPClient.Create(nil);
  FTCPClient.ReadTimeout := waitTimeOut;
end;

destructor TVgCastSocket.Destroy;
begin
  Disconnect;
  FTCPClient.Destroy;
  inherited Destroy;
end;

procedure TVgCastSocket.DoDataProcessor(ABuffer: TIdBytes);
begin
  ;
end;

procedure TVgCastSocket.Connect;
begin
  FTCPClient.Connect;
  try
    FSocketReadThread := TSocketReadThread.Create(Self);
  except
    FTCPClient.Disconnect(True);
    raise ETCPClientConnectError.Create(RSNoCreateListeningThread);  // translate
  end;

  //NOTIFY;
end;

procedure TVgCastSocket.Disconnect;
begin
  if Assigned(FSocketReadThread) then
  begin
    FSocketReadThread.Terminate;
  end;
  try
    FTCPClient.Disconnect(true);
  finally
    if Assigned(FSocketReadThread) then
    begin
      FSocketReadThread.WaitFor;
    end;
    FreeAndNil(FSocketReadThread);
  end;
end;

function TVgCastSocket.SendToVgCast(AValue: string): boolean;
begin
  result:=false;
  if FTCPClient.connected then
  begin
    FTCPClient.IOHandler.Write(AValue+EOL, IndyTextEncoding(FEncoding));
    result := true;
  end;
end;

function TVgCastSocket.SendToVgCast(AValue: string; out ARcvBuf: string): boolean;
var
  LRcvBuf : TIdBytes;
  LTmpByte : Byte;
begin
  result:=false;
  LTmpByte := 0;
  if FTCPClient.connected then
  begin
    FTCPClient.IOHandler.Write(AValue+EOL, IndyTextEncoding(FEncoding));
    sleep(200);

    try
      repeat
        try
          LTmpByte := FTCPClient.IOHandler.ReadByte;
        except
          on E: EIdReadTimeout do
          begin
            exit;
          end;
        end;

       if LTmpByte = $00 then
       begin
        LTmpByte := $0D;
        AppendByte(LRcvBuf, LTmpByte);
        LTmpByte := $0A;
        AppendByte(LRcvBuf, LTmpByte);
       end else
        AppendByte(LRcvBuf, LTmpByte);

      until FTCPClient.IOHandler.InputBufferIsEmpty;

    finally
      ARcvBuf := BytesTostring(LRcvBuf);
    end;

    result := true;
  end;
end;


procedure TVgCastSocket.SendString(const S : String);
var
  I: Integer;
  Ch: Char;
begin
  for I := 1 to Length(S) do
  begin
    if not FTCPClient.Connected then
    begin
      Break;
    end;
    Ch := S[I];
    IOHandler.Write(Ch, IndyTextEncoding(FEncoding));
  end;
  IOHandler.Write(EOL);
end;

function TVgCastSocket.GetHost: string;
begin
  result := FTCPClient.Host;
end;

procedure TVgCastSocket.SetHost(AValue: string);
begin
  if Length(AValue) > 0 then
    FTCPClient.Host := AValue;
end;

function TVgCastSocket.GetPort: word;
begin
  result := FTCPClient.Port;
end;

procedure TVgCastSocket.SetPort(AValue: word);
begin
  FTCPClient.Port := AValue;
end;

function TVgCastSocket.GetIOHandler: TIdIOHandler;
begin
  result := FTCPClient.IOHandler;
end;

function TVgCastSocket.Connected: boolean;
begin
  result :=  FTCPClient.Connected;
end;

procedure TVgCastSocket.OnConnClosedGracefullyReceived(var Msg: TDataMessage);
begin
  if assigned(fOnConnClosedGracefully) then
    fOnConnClosedGracefully(self);
end;


(* TSocketReadThread *)
constructor TSocketReadThread.Create(AOwner: TVgCastSocket);
begin
  inherited Create(false);
  Self.FreeOnTerminate := False;
  FOwner := AOwner;
end;

destructor TSocketReadThread.Destroy;
begin
  inherited;
end;

procedure TSocketReadThread.DoTerminate;
begin
  inherited;
end;

procedure TSocketReadThread.Execute;
var
  LBuffer         : TIdBytes;
  LNotifyMessage  : TDataMessage;
begin
  while not Terminated do
  begin
    if (not assigned(FOwner)) or (not FOwner.Connected) then
    begin
      sleep(100);
      Continue;
    end;

    if FOwner.IOHandler.InputBufferIsEmpty  then
    begin
      SetLength(LBuffer, 0);
      while not FOwner.IOHandler.InputBufferIsEmpty do
      begin
        AppendByte(LBuffer, FOwner.IOHandler.ReadByte);
      end;

      TThread.Synchronize(nil,
        procedure
        begin
          FOwner.DoDataProcessor(LBuffer)
        end);
    end;

    try
      FOwner.IOHandler.CheckForDisconnect(true, false);
    except
      on E: EIdConnClosedGracefully do
      begin
        FConnClosedGracefully:= true;
        LNotifyMessage.Msg:=MSG_ConnClosedGracefully;
        LNotifyMessage.Data:=PChar(e.Message);
        FOwner.Dispatch(LNotifyMessage);
      end;
    end;

  end;
end;


procedure TSocketReadThread.Terminate;
begin
  inherited Terminate;
end;

(* TTplList *)
constructor TTplList.Create(AVgCastHandler:  TVgCastHandler);
begin
  inherited Create;
  FVgCastHandler := AVgCastHandler;
end;

function TTplList.Exists(AValue: string): boolean;
begin
  result := true;
  if assigned(FindByFileName(AValue)) then
  begin
    exit(true)
  end;
  if assigned(FindByName(AValue)) then
  begin
    exit(true)
  end;
end;

function TTplList.Open(AFileName: string; AReLoad: boolean = true): boolean;
begin
  result := false;
  if Exists(AFileName) then
  begin
    if AReLoad then
    begin
      Self.Close(AFileName);
    end;
  end;

  Self.Add(TVgTpl.Create(FVgCastHandler, AFileName));

  result := true;

end;

function TTplList.Close(AValue: string): boolean;
var
  LVgTpl  : TVgTpl;
  LIntTmp : integer;
begin
  result := false;
  LVgTpl := nil;

  if not assigned(LVgTpl) then
    LVgTpl := FindByName(AValue);
  if not assigned(LVgTpl) then
    LVgTpl := FindByFileName(AValue);

  if assigned(LVgTpl) then
  begin
    LIntTmp := Self.IndexOf(LVgTpl);
    if LIntTmp >= 0 then
    begin
      Self.Delete(LIntTmp);
      result := true;
    end;
  end;
end;

function TTplList.FindByName(AValue: string): TVgTpl;
var
  i : integer;
begin
  result := nil;
  for I := 0 to Self.Count - 1 do
  begin
    if SameText(Self.Items[i].Name, AValue) then
    begin
      result := Self.Items[i];
      break;
    end;
  end;
end;

function TTplList.FindByFileName(AValue: string): TVgTpl;
var
  i : integer;
begin
  result := nil;
  for I := 0 to Self.Count - 1 do
  begin
    if SameText(Self.Items[i].FileName, AValue) then
    begin
      result := Self.Items[i];
      break;
    end;
  end;
end;

(* TTCPClientReadThread *)
constructor TTCPClientReadThread.Create(AClient: TVgCastHandler);
begin
  FClient := AClient;
  inherited Create(False);
end;

procedure TTCPClientReadThread.Run;
var
  LBuf : Byte;
  LMsgNotify : TDataMessage;
begin
  if FConnClosedGracefully then exit;

  if FClient.IOHandler.InputBufferIsEmpty then
  begin
    FClient.IOHandler.CheckForDataOnSource(IdTimeoutInfinite);
  end;

  if not FClient.IOHandler.InputBufferIsEmpty then
  begin
    repeat
      LBuf := FClient.IOHandler.ReadByte;
      AppendByte(fBuffer, LBuf);
    until FClient.IOHandler.InputBufferIsEmpty;
    //Synchronize(FClient.OnDataFind);
  end;

  try
    FClient.IOHandler.CheckForDisconnect(true, false);
  except
    on E: EIdConnClosedGracefully do
    begin
      FConnClosedGracefully := true;
      LMsgNotify.Msg := MSG_ConnClosedGracefully;
      LMsgNotify.Data := PChar(e.Message);
      FClient.Dispatch(LMsgNotify);
    end;
  end;

  sleep(0);
end;

constructor TVgTpl.Create(AVgCastHandler:  TVgCastHandler; AFileName: string);
begin
  inherited Create;
  FVgCastHandler := AVgCastHandler;
  FText := TStringList.Create;
  FileName := AFileName;

  FTCPClient.Host := FVgCastHandler.Host;
  FTCPClient.Port := FVgCastHandler.Port;
  FTCPClient.Connect;

  //NOTIFY;
end;

destructor TVgTpl.Destroy;
begin
  FreeAndNil(FText);
  inherited Destroy;
end;

procedure TVgTpl.DoDataProcessor(ABuffer: TIdBytes);
begin
  inherited DoDataProcessor(ABuffer);
end;


procedure TVgTpl.LoadTemplate(AFileName: string);
begin
  if not System.IOUtils.TFile.Exists(AFileName) then raise Exception.Create('Load template error');
  FFileName := AFileName;

  FText.LoadFromFile(FFileName);
  if FText.Text.IsEmpty then
    raise Exception.Create('Template is empty');

end;


function TVgTpl.GetTplName: string;
var
  i         : integer;
  LTplName  : string;
begin
  LTplName := '';
  for I := 0 to FText.Count-1 do
  begin
    if FText.Strings[i].Contains('tnam') then
    begin
      LTplName := FText.Strings[i];
      LTplName := Copy(LTplName, 5, LTplName.Length);
      LTplName := LTplName.Trim([#9, #32, #34, #39]);
      break;
    end else
    if FText.Strings[i].Contains('template') then
    begin
      LTplName := FText.Strings[i];
      LTplName := Copy(LTplName, 9, LTplName.Length);
      LTplName := LTplName.Trim([#9, #32, #34, #39]);
      break;
    end;
  end;


  if LTplName.IsEmpty then
    result :=  System.IOUtils.TPath.GetFileNameWithoutExtension(FileName)
  else
    result := LTplName;
end;


function TVgTpl.SHOW: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('efx %s.show',[Name]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.HIDE: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('efx %s.hide',[Name]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.DEL: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('del %s',[Name]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.EFX(AValue: string): boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('efx %s',[AValue]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.PLAY: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('del %s',[Name]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  LTmpStr := Format('load %s',[FileName]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  LTmpStr := Format('efx %s.show',[Name]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.LOAD: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('load %s',[FileName]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.READ: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := Format('read %s',[FileName]);
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

function TVgTpl.NOTIFY: boolean;
var
  LTmpStr : string;
begin
  result := false;

  LTmpStr := 'notify +';
  if not SendToVgCast(LTmpStr) then
    raise Exception.CreateFmt('Send cmd "%s" to vgcast failed', [LTmpStr]);

  result := true;
end;

{ TVgCastClient}

constructor TVgCastHandler.Create;
begin
  inherited Create;


  Port := VgCastPort;
  Host := VgCastHost;

  FTplList := TTplList.Create(self);

  DoDebug('TCPClient.create');
  DoDebug(format('TCPClient.readtimeout=%d', [FTCPClient.ReadTimeout]));
end;

destructor TVgCastHandler.Destroy;
begin
  FTplList.Clear;
  FreeAndNil(FTplList);
  inherited Destroy;
end;

procedure TVgCastHandler.DoDebug(const AMsg: string);
begin
  if assigned(fOnDebug) then
    fOnDebug(self, AMsg);
end;

function TVgCastHandler.DEL(AValue: string): boolean;
begin
  result := SendToVgCast(Format('del %s',[AValue]));
end;

function TVgCastHandler.DELALL: boolean;
begin
  result := SendToVgCast('del *');
end;


function TVgCastHandler.EFX(AValue: string): boolean;
begin
  result := SendToVgCast(Format('efx %s',[AValue]));
end;

function TVgCastHandler.LOAD(AValue: string): boolean;
begin
  result := SendToVgCast(Format('load %s',[AValue]));
end;

function TVgCastHandler.NOTIFY: boolean;
begin
  result := SendToVgCast('notify +');
end;

function TVgCastHandler.STS: string;
var
  LRcvBuf : string;
begin
  SendToVgCast('sts', LRcvBuf);
  result := LRcvBuf;
end;

function TVgCastHandler.STS_TEMPLATE: TArray<string>;
var
  LRcvBuf : string;
begin
  SendToVgCast('sts template', LRcvBuf);

  result := LRcvBuf.Split([#13#10]);
end;

END.
