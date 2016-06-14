library Project1;

uses
  ComServ,
  Dialogs,
  ActiveX,
  ComObj,
  SampleEventPluginLib_TLB in 'SampleEventPluginLib_TLB.pas',
  Unit1 in 'Unit1.pas' {SampleEventHandler: CoClass};

const
  CATID_EVENT_HANDLER: TGUID = '{673456EC-4212-4249-9ECB-64C1E306C962}';

function RegisterCLSIDInCategory(clsid : TGUID; catid : TGUID) : HRESULT;
var
  LCatRegister : ICatRegister;
  rgcatid : array[0..1] of TGUID;
  LHr : HResult;
begin
  LHr := CoCreateInstance(CLSID_StdComponentCategoryMgr, nil,
    CLSCTX_INPROC_SERVER, ICatRegister, LCatRegister);
  OleCheck(LHr);

  // Register this category as being "implemented" by the class.
  rgcatid[0] := catid;
  LHr := LCatRegister.RegisterClassImplCategories(clsid, 1, @rgcatid);

  result := LHr;
end;

function UnRegisterCLSIDInCategory(clsid : TGUID; catid : TGUID) : HRESULT;
var
  LCatRegister : ICatRegister;
  rgcatid : array[0..1] of TGUID;
  LHr : HResult;
begin
  LHr := CoCreateInstance(CLSID_StdComponentCategoryMgr, nil,
    CLSCTX_INPROC_SERVER, ICatRegister, LCatRegister);
  OleCheck(LHr);

  // Unregister this category as being "implemented" by the class.
  rgcatid[0] := catid;
  LHr := LCatRegister.UnRegisterClassImplCategories(clsid, 1, @rgcatid);

  result := LHr;
end;

function DllRegisterServer: HResult; stdcall;
begin
  Result  :=  ComServ.DllRegisterServer;
  RegisterCLSIDInCategory(CLASS_SampleEventHandler, CATID_EVENT_HANDLER);
end;

function DllUnregisterServer: HResult; stdcall;
begin
  Result  :=  ComServ.DllUnregisterServer;
  UnRegisterCLSIDInCategory(CLASS_SampleEventHandler, CATID_EVENT_HANDLER);
end;

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
