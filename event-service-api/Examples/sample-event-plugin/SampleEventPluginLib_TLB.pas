unit SampleEventPluginLib_TLB;

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
// File generated on 11.09.2015 17:18:12 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\mail_000\Desktop\com_ci\Project1 (1)
// LIBID: {84887B90-11AF-47FF-B888-3AEA420D16B4}
// LCID: 0
// Helpfile:
// HelpString: SampleEventPlugin 1.0 Type Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 EventSvcCommonLib, (C:\Users\mail_000\Desktop\Cinegy Event Manager 10.0.2\EventSvcCommon.dll)
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
  SampleEventPluginLibMajorVersion = 1;
  SampleEventPluginLibMinorVersion = 0;

  LIBID_SampleEventPluginLib: TGUID = '{84887B90-11AF-47FF-B888-3AEA420D16B4}';

  IID_ISampleEventHandler: TGUID = '{A4FD9A5C-E946-469A-A13C-C81A4C527A07}';
  CLASS_SampleEventHandler: TGUID = '{AD5FC175-3364-43CE-93BB-73EDA4C3CD62}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  ISampleEventHandler = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  SampleEventHandler = ISampleEventHandler;


// *********************************************************************//
// Interface: ISampleEventHandler
// Flags:     (0)
// GUID:      {A4FD9A5C-E946-469A-A13C-C81A4C527A07}
// *********************************************************************//
  ISampleEventHandler = interface(IUnknown)
    ['{A4FD9A5C-E946-469A-A13C-C81A4C527A07}']
  end;

// *********************************************************************//
// The Class CoSampleEventHandler provides a Create and CreateRemote method to
// create instances of the default interface ISampleEventHandler exposed by
// the CoClass SampleEventHandler. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoSampleEventHandler = class
    class function Create: ISampleEventHandler;
    class function CreateRemote(const MachineName: string): ISampleEventHandler;
  end;

implementation

uses System.Win.ComObj;

class function CoSampleEventHandler.Create: ISampleEventHandler;
begin
  Result := CreateComObject(CLASS_SampleEventHandler) as ISampleEventHandler;
end;

class function CoSampleEventHandler.CreateRemote(const MachineName: string): ISampleEventHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SampleEventHandler) as ISampleEventHandler;
end;

end.

