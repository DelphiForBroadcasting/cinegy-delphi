unit VGCastPluginLib_TLB;

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
// Type Lib: C:\Users\mail_000\Desktop\VgCastEvent Plugin\VGCastPluginLib (1)
// LIBID: {82B15E5E-4660-410B-98F7-73D942F6C18F}
// LCID: 0
// Helpfile:
// HelpString: VGCastPlugin 1.0 Type Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 EventSvcCommonLib, (C:\Program Files (x86)\Cinegy\Cinegy Event Manager 10.0.4\EventSvcCommon.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, EventSvcCommonLib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  VGCastPluginLibMajorVersion = 1;
  VGCastPluginLibMinorVersion = 0;

  LIBID_VGCastPluginLib: TGUID = '{82B15E5E-4660-410B-98F7-73D942F6C18F}';

  IID_IVGCastPlugin: TGUID = '{B9034DBD-80E4-4FAE-8547-3E4DEC39DB13}';
  CLASS_VGCastPlugin: TGUID = '{9636162C-2A7F-4CFA-9604-BD70B6526B92}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IVGCastPlugin = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  VGCastPlugin = IVGCastPlugin;


// *********************************************************************//
// Interface: IVGCastPlugin
// Flags:     (0)
// GUID:      {B9034DBD-80E4-4FAE-8547-3E4DEC39DB13}
// *********************************************************************//
  IVGCastPlugin = interface(IUnknown)
    ['{B9034DBD-80E4-4FAE-8547-3E4DEC39DB13}']
  end;

// *********************************************************************//
// The Class CoVGCastPlugin provides a Create and CreateRemote method to
// create instances of the default interface IVGCastPlugin exposed by
// the CoClass VGCastPlugin. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoVGCastPlugin = class
    class function Create: IVGCastPlugin;
    class function CreateRemote(const MachineName: string): IVGCastPlugin;
  end;

implementation

uses System.Win.ComObj;

class function CoVGCastPlugin.Create: IVGCastPlugin;
begin
  Result := CreateComObject(CLASS_VGCastPlugin) as IVGCastPlugin;
end;

class function CoVGCastPlugin.CreateRemote(const MachineName: string): IVGCastPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VGCastPlugin) as IVGCastPlugin;
end;

end.

