unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Sysutils, ActiveX, Classes, Dialogs, ComObj, SampleEventPluginLib_TLB, EventSvcCommonLib_TLB, StdVcl;
type
  TSampleEventHandler = class(TTypedComObject, ISampleEventHandler, IEventHandlerInfoEx, IExEventHandler, IEventHandlerSetup)
  private
    m_piLog : IEventLog;
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

uses ComServ;

function TSampleEventHandler.GetInfo(out pbstrDeviceInfo: WideString): HResult;
begin
  pbstrDeviceInfo := 'This is the sample event handler plugin';
  result := S_OK;
end;

function TSampleEventHandler.GetPluginName(out pbstrName: WideString): HResult;
begin
  pbstrName := 'Sample Event Plugin';
  result := S_OK;
end;

function TSampleEventHandler.Init(const piEventLog: IUnknown): HResult;
begin
  m_piLog := piEventLog as IEventLog;

  if m_piLog = nil then
    exit(E_INVALIDARG);

  m_piLog.LogInfo('****** Sample Event Handler v1.0 ******');

  result := S_OK;
end;

function TSampleEventHandler.SendEvent(const bstrDevice, bstrCommand, bstrOp1, bstrOp2,
          bstrOp3: WideString; out pHandled: WordBool): HResult;
begin

  if not SameText(bstrDevice, 'SAMPLE') then
  begin
		m_piLog.LogInfo('SAMPLE Plugin: Device is not recognized.');
		m_piLog.LogInfo(bstrDevice);
    exit(S_FALSE);
  end;

	m_piLog.LogInfo('SAMPLE Plugin: Event is received');

  result := S_OK;
end;

function TSampleEventHandler.ShutDown: HResult;
begin
  if assigned(m_piLog) then
  begin
    m_piLog.LogInfo('Closing device');
	  m_piLog._Release;
  end;

  result := S_OK;
end;


function TSampleEventHandler.Setup(hwndParent: Int64): HResult;
begin
  showmessage('This is initital text which can be stored into Registry');
  result := S_OK;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TSampleEventHandler, Class_SampleEventHandler,
    ciMultiInstance, tmBoth);
end.
