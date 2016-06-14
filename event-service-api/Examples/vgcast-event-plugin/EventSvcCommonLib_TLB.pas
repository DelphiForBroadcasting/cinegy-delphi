unit EventSvcCommonLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 13.09.2015 19:00:24 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Cinegy\Cinegy Event Manager 10.0.4\EventSvcCommon.dll (1)
// LIBID: {75AAB409-34DF-4C4E-9167-2AF1568B034B}
// LCID: 0
// Helpfile: 
// HelpString: EventSvcCommon 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v1.0 VGCastPluginLib, (C:\Users\mail_000\Desktop\VgCastEvent Plugin\VGCastPluginLib)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  EventSvcCommonLibMajorVersion = 1;
  EventSvcCommonLibMinorVersion = 0;

  LIBID_EventSvcCommonLib: TGUID = '{75AAB409-34DF-4C4E-9167-2AF1568B034B}';

  IID_IEventLogWindow: TGUID = '{0D227D89-3C3A-4100-87A2-68C566DAE6BF}';
  CLASS_EventLogWindow: TGUID = '{D14A476A-EC4D-4C9F-A280-3CB8D38D1401}';
  CLASS_CConsoleLog: TGUID = '{592A81EC-1DBF-4482-A5F8-309B3FA14517}';
  CLASS_FileLog: TGUID = '{3BDF6059-1010-4A4D-BD2A-46F68A47BC78}';
  IID_IExEventHandler: TGUID = '{BF89009C-AFC2-4E0D-BF5C-2FD4602C03E1}';
  IID_IEventHandlerInfo: TGUID = '{86521AFF-DE68-454E-9889-8A49BC4BC974}';
  IID_IEventHandlerInfoEx: TGUID = '{535358E4-F1D1-4A58-9960-5B99782F16D3}';
  IID_IEventLog: TGUID = '{D2A8AF8B-72F5-40A3-BBBD-0F12C03DC7B4}';
  IID_IEventHandlerSetup: TGUID = '{E3BF96C9-F0F9-4BAD-B6B0-D72F4D5F75C2}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IEventLogWindow = interface;
  IExEventHandler = interface;
  IEventHandlerInfo = interface;
  IEventHandlerInfoEx = interface;
  IEventLog = interface;
  IEventHandlerSetup = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  EventLogWindow = IEventLogWindow;
  CConsoleLog = IEventLogWindow;
  FileLog = IEventLogWindow;


// *********************************************************************//
// Interface: IEventLogWindow
// Flags:     (0)
// GUID:      {0D227D89-3C3A-4100-87A2-68C566DAE6BF}
// *********************************************************************//
  IEventLogWindow = interface(IUnknown)
    ['{0D227D89-3C3A-4100-87A2-68C566DAE6BF}']
  end;

// *********************************************************************//
// Interface: IExEventHandler
// Flags:     (0)
// GUID:      {BF89009C-AFC2-4E0D-BF5C-2FD4602C03E1}
// *********************************************************************//
  IExEventHandler = interface(IUnknown)
    ['{BF89009C-AFC2-4E0D-BF5C-2FD4602C03E1}']
    function Init(const piEventLog: IUnknown): HResult; stdcall;
    function ShutDown: HResult; stdcall;
    function SendEvent(const bstrDevice: WideString; const bstrCommand: WideString; 
                       const bstrOp1: WideString; const bstrOp2: WideString; 
                       const bstrOp3: WideString; out pHandled: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEventHandlerInfo
// Flags:     (0)
// GUID:      {86521AFF-DE68-454E-9889-8A49BC4BC974}
// *********************************************************************//
  IEventHandlerInfo = interface(IUnknown)
    ['{86521AFF-DE68-454E-9889-8A49BC4BC974}']
    function GetInfo(out pbstrDeviceInfo: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEventHandlerInfoEx
// Flags:     (0)
// GUID:      {535358E4-F1D1-4A58-9960-5B99782F16D3}
// *********************************************************************//
  IEventHandlerInfoEx = interface(IUnknown)
    ['{535358E4-F1D1-4A58-9960-5B99782F16D3}']
    function GetInfo(out pbstrDeviceInfo: WideString): HResult; stdcall;
    function GetPluginName(out pbstrName: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEventLog
// Flags:     (0)
// GUID:      {D2A8AF8B-72F5-40A3-BBBD-0F12C03DC7B4}
// *********************************************************************//
  IEventLog = interface(IUnknown)
    ['{D2A8AF8B-72F5-40A3-BBBD-0F12C03DC7B4}']
    function CreateLogWindow(hParent: Int64; const bstrName: WideString): HResult; stdcall;
    function LogInfo(const bstrMessage: WideString): HResult; stdcall;
    function LogWarning(const bstrMessage: WideString): HResult; stdcall;
    function LogError(const bstrMessage: WideString): HResult; stdcall;
    function Active(bActive: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEventHandlerSetup
// Flags:     (0)
// GUID:      {E3BF96C9-F0F9-4BAD-B6B0-D72F4D5F75C2}
// *********************************************************************//
  IEventHandlerSetup = interface(IUnknown)
    ['{E3BF96C9-F0F9-4BAD-B6B0-D72F4D5F75C2}']
    function Setup(hwndParent: Int64): HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoEventLogWindow provides a Create and CreateRemote method to          
// create instances of the default interface IEventLogWindow exposed by              
// the CoClass EventLogWindow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEventLogWindow = class
    class function Create: IEventLogWindow;
    class function CreateRemote(const MachineName: string): IEventLogWindow;
  end;

// *********************************************************************//
// The Class CoCConsoleLog provides a Create and CreateRemote method to          
// create instances of the default interface IEventLogWindow exposed by              
// the CoClass CConsoleLog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCConsoleLog = class
    class function Create: IEventLogWindow;
    class function CreateRemote(const MachineName: string): IEventLogWindow;
  end;

// *********************************************************************//
// The Class CoFileLog provides a Create and CreateRemote method to          
// create instances of the default interface IEventLogWindow exposed by              
// the CoClass FileLog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFileLog = class
    class function Create: IEventLogWindow;
    class function CreateRemote(const MachineName: string): IEventLogWindow;
  end;

implementation

uses System.Win.ComObj;

class function CoEventLogWindow.Create: IEventLogWindow;
begin
  Result := CreateComObject(CLASS_EventLogWindow) as IEventLogWindow;
end;

class function CoEventLogWindow.CreateRemote(const MachineName: string): IEventLogWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EventLogWindow) as IEventLogWindow;
end;

class function CoCConsoleLog.Create: IEventLogWindow;
begin
  Result := CreateComObject(CLASS_CConsoleLog) as IEventLogWindow;
end;

class function CoCConsoleLog.CreateRemote(const MachineName: string): IEventLogWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CConsoleLog) as IEventLogWindow;
end;

class function CoFileLog.Create: IEventLogWindow;
begin
  Result := CreateComObject(CLASS_FileLog) as IEventLogWindow;
end;

class function CoFileLog.CreateRemote(const MachineName: string): IEventLogWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FileLog) as IEventLogWindow;
end;

end.
