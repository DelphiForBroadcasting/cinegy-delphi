unit CoVGCastPlugin;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Sysutils, ActiveX, Classes, Dialogs, ComObj, VGCastPluginLib_TLB, EventSvcCommonLib_TLB, StdVcl,
  FH.VGCAST.HANDLER, uMainConfig;
type
  TVGCastPlugin = class(TTypedComObject, IVGCastPlugin, IEventHandlerInfoEx, IExEventHandler, IEventHandlerSetup)
  private
    FVgCastHandler      : TVgCastHandler;
    FMainConfig         : TMainConfig;
    m_piLog             : IEventLog;
  protected
    function GetInfo(out pbstrDeviceInfo: WideString): HResult; stdcall;
    function GetPluginName(out pbstrName: WideString): HResult; stdcall;
    function Init(const piEventLog: IUnknown): HResult; stdcall;
    function SendEvent(const bstrDevice, bstrCommand, bstrOp1, bstrOp2, bstrOp3: WideString;
          out pHandled: WordBool): HResult; stdcall;
    function ShutDown: HResult; stdcall;
    function Setup(hwndParent: Int64): HResult; stdcall;
  end;

implementation

uses ComServ, uSetupForm;

function TVGCastPlugin.GetInfo(out pbstrDeviceInfo: WideString): HResult;
begin
  pbstrDeviceInfo := 'VGCast CG event handler plugin for Cinegy'+#13#10+'FreeHand Technology';
  result := S_OK;
end;

function TVGCastPlugin.GetPluginName(out pbstrName: WideString): HResult;
begin
  pbstrName := 'VGCast Plugin';
  result := S_OK;
end;

function TVGCastPlugin.Init(const piEventLog: IUnknown): HResult;
begin

  m_piLog := piEventLog as IEventLog;

  if m_piLog = nil then
    exit(E_INVALIDARG);

  m_piLog.LogInfo('****** VGCast Event Handler v1.0 ******');

  FMainConfig := TMainConfig.Create;
  try
    FMainConfig.LoadFromFile(changefileext(TMainConfig.GetModuleAbsolutePath, '.conf'));
  Except
    on e:Exception do
    begin
      m_piLog.LogError(Format('VGCAST Plugin: %s', [e.Message]));
    end;
  end;

  FVgCastHandler := TVgCastHandler.Create;
  FVgCastHandler.Host := FMainConfig.VgCast.Host;
  FVgCastHandler.Port := FMainConfig.VgCast.Port;
  FVgCastHandler.Connect;

  result := S_OK;
end;


(* VGCAST, load, crawl2 *)
(* VGCAST, show, crawl2 *)
(* VGCAST, hide, crawl2 *)

function TVGCastPlugin.SendEvent(const bstrDevice, bstrCommand, bstrOp1, bstrOp2,
          bstrOp3: WideString; out pHandled: WordBool): HResult;
var
  LVgTpl : TVgTpl;
  LTplFileName : string;
begin

  if not SameText(bstrDevice, 'VGCAST') then
  begin
		m_piLog.LogInfo('VGCAST Plugin: Device is not recognized.');
		m_piLog.LogInfo(bstrDevice);
    exit(S_FALSE);
  end;

	m_piLog.LogInfo('VGCAST Plugin: Event is received');


  // PLAY
  if SameText(bstrCommand, 'PLAY') then
  begin
    if Length(bstrOp1) <= 0 then
    begin
      m_piLog.LogError('VGCAST Plugin: MbstrOp1');
      exit(S_FALSE);
    end;

    LTplFileName := format('%s\%s.tpl', [FMainConfig.TplRepository, bstrOp1]);

    if FVgCastHandler.TplList.open(LTplFileName) then
    begin
      LVgTpl := FVgCastHandler.TplList.FindByFileName(LTplFileName);
      if LVgTpl.PLAY then
      begin
        m_piLog.LogInfo(Format('VGCAST Plugin: Play %s', [LVgTpl.Name]));
      end else
      begin
        m_piLog.LogError(Format('VGCAST Plugin: Play %s', [LVgTpl.Name]));
        exit(S_FALSE);
      end;
    end else
    begin
        m_piLog.LogError(Format('VGCAST Plugin: Open %s', [LTplFileName]));
        exit(S_FALSE);
    end;
  end;

  result := S_OK;
end;

function TVGCastPlugin.ShutDown: HResult;
begin
  FVgCastHandler.Destroy;
  FMainConfig.Destroy;

  if assigned(m_piLog) then
  begin
    m_piLog.LogInfo('Closing device');
	  m_piLog._Release;
  end;

  result := S_OK;
end;


function TVGCastPlugin.Setup(hwndParent: Int64): HResult;
var
  FSetupForm : TSetupForm;
begin
  try
    FSetupForm := TSetupForm.Create(nil);
    FSetupForm.ShowModal;
    result := S_OK;
  Except
    result := S_FALSE;
  end;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TVGCastPlugin, Class_VGCastPlugin,
    ciMultiInstance, tmBoth);
end.
