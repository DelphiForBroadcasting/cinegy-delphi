unit Unit1;

interface

uses
  WinApi.Windows, WinApi.ActiveX, WinApi.ShlObj, System.Win.ComObj, System.IOUtils,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListBox, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm, IDropSource)
    ListBox1: TListBox;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    ListBox2: TListBox;
    Button2: TButton;
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure EnumNetworkProc(const aNetResource :TNetResource; const aLevel :word; var aContinue :boolean);
  public
    FDragStartPos: TPoint;
    function QueryContinueDrag(fEscapePressed: BOOL; grfKeyState: Longint): HResult; stdcall;
    function GiveFeedback(dwEffect: Longint): HResult; stdcall;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

// list network resource
type
  TEnumNetworkProc = procedure(const aNetResource :TNetResource; const aLevel :word; var aContinue :boolean) of object;

//Procédure récursive
procedure DoEnumNetwork(const aContainer :Pointer;
                        const aEnumNetworkProc :TEnumNetworkProc;
                        const aScope :dword;
                        const aType  :dword;
                        const aLevel :byte);
type
  PNetResourceArray = ^TNetResourceArray;
  TNetResourceArray = array [0..0] of TNetResource;
var
  NetHandle    :THandle;
  NetResources :PNetResourceArray;
  NetResult    :dword;
  Size, Count, i :Cardinal;
  Continue     :boolean;
begin
  Continue := TRUE;

  NetResult := WNetOpenEnum(aScope, aType, 0, aContainer, NetHandle);

  if NetResult = NO_ERROR then
  try
    //Taille de base
    Size := 50 *SizeOf(TNetResource);
    GetMem(NetResources, Size);

    try
      while Continue do
      begin
        Count := $FFFFFFFF;
        NetResult := WNetEnumResource(NetHandle, Count, NetResources, Size);

        //Taille insuffisante ?
        if NetResult = ERROR_MORE_DATA
        then ReallocMem(NetResources, Size)
        else Break;
      end;

      //Enumère
      if NetResult = NO_ERROR then
        for i := 0 to Count - 1 do
        begin
          //Callback
          if Assigned(aEnumNetworkProc) then
          begin
            aEnumNetworkProc(NetResources^[i], aLevel, Continue);
            if not Continue then Break;
          end;

          //Appel récursif
          if (NetResources^[i].dwUsage and RESOURCEUSAGE_CONTAINER) > 0 then
            DoEnumNetwork(@NetResources^[i], aEnumNetworkProc, aScope, aType, aLevel +1);
        end;
    finally
      FreeMem(NetResources, Size);
    end;
  finally
    WNetCloseEnum(NetHandle);
  end;
end;

procedure EnumNetwork(const aEnumNetworkProc: TEnumNetworkProc; const aScope, aType: dword);
begin
  DoEnumNetwork(nil, aEnumNetworkProc, aScope, aType, 0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  EnumNetwork(EnumNetworkProc, RESOURCE_GLOBALNET, RESOURCETYPE_ANY);
end;

procedure TForm1.EnumNetworkProc(const aNetResource :TNetResource; const aLevel :word; var aContinue :boolean);
begin
  if aNetResource.dwDisplayType in [RESOURCEDISPLAYTYPE_DOMAIN, RESOURCEDISPLAYTYPE_SERVER] then
    ListBox2.Items.Add(StringOfChar(' ', aLevel*4) +aNetResource.lpRemoteName);
end;

//--------------


function GetFileListDataObject(const Directory: string; Files: TStrings): IDataObject;
type
  PArrayOfPItemIDList = ^TArrayOfPItemIDList;
  TArrayOfPItemIDList = array[0..0] of PItemIDList;
var
  Malloc: IMalloc;
  Root: IShellFolder;
  FolderPidl: PItemIDList;
  Folder: IShellFolder;
  p: PArrayOfPItemIDList;
  chEaten: ULONG;
  dwAttributes: ULONG;
  FileCount: Integer;
  i: Integer;
begin
  Result := nil;
  if Files.Count = 0 then
    Exit;
  OleCheck(SHGetMalloc(Malloc));
  OleCheck(SHGetDesktopFolder(Root));
  OleCheck(Root.ParseDisplayName(0, nil,
    PWideChar(WideString(Directory)),
    chEaten, FolderPidl, dwAttributes));
  try
    OleCheck(Root.BindToObject(FolderPidl, nil, IShellFolder,
      Pointer(Folder)));
    FileCount := Files.Count;
    p := AllocMem(SizeOf(PItemIDList) * FileCount);
    try
      for i := 0 to FileCount - 1 do
      begin
        OleCheck(Folder.ParseDisplayName(0, nil,
          PWideChar(WideString(Files[i])), chEaten, p^[i],
          dwAttributes));
      end;
      OleCheck(Folder.GetUIObjectOf(0, FileCount, p^[0], IDataObject,
        nil,
        Pointer(Result)));
    finally
      for i := 0 to FileCount - 1 do begin
        if p^[i] <> nil then Malloc.Free(p^[i]);
      end;
      FreeMem(p);
    end;
  finally
    Malloc.Free(FolderPidl);
  end;
end;

procedure TForm1.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 if Button = TMouseButton.mbLeft then
  begin
    FDragStartPos.x := round(X);
    FDragStartPos.y := round(Y);
  end;
end;

procedure TForm1.ListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
const
  Threshold = 5;
var
  SelFileList: TStrings;
  i: Integer;
  DataObject: IDataObject;
  Effect: integer;
begin


    if (ssleft in Shift)
      and ((Abs(X - FDragStartPos.x) >= Threshold)
      or (Abs(Y - FDragStartPos.y) >= Threshold)) then
      begin
      //Perform(WM_LBUTTONUP, 0, MakeLong(X, Y));
      SelFileList := TStringList.Create;
      try
        //SelFileList.Capacity := SelCount;
        for i := 0 to ListBox1.Items.Count - 1 do
        begin
          if ListBox1.ListItems[i].IsSelected  then
            SelFileList.Add(ListBox1.ListItems[i].Text);
        end;


        DataObject := GetFileListDataObject(edit1.Text, SelFileList);
      finally
        SelFileList.Free;
      end;
      Effect := DROPEFFECT_NONE;
      DoDragDrop(DataObject, Self, DROPEFFECT_COPY, Effect);
    end;


end;

function TForm1.QueryContinueDrag(fEscapePressed: BOOL; grfKeyState: Longint): HResult; stdcall;
begin
  if fEscapePressed or (grfKeyState and MK_RBUTTON = MK_RBUTTON) then
  begin
    Result := DRAGDROP_S_CANCEL
  end else
  if grfKeyState and MK_LBUTTON = 0 then
  begin
    Result := DRAGDROP_S_DROP
  end else
  begin
    Result := S_OK;
  end;
end;

function FilterPredicate(const Path: string; const SearchRec: TSearchRec):boolean;
const
  valid_ext : array[0..5] of string = ('.avi', '.mov', '.mpg', '.mpeg', '.mp4', 'mxf');
var
  i : integer;
begin
  Result := false;
  for I := 0 to length(valid_ext) do
  begin
    if SameText(ExtractFileExt(SearchRec.Name),valid_ext[i]) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Files : TStringDynArray;
  LBI   : TListBoxItem;
  i     : integer;
begin
  if not TDirectory.Exists(edit1.Text) then
  begin
     ShowMessage('Directory Not Found');
  end;

  Listbox1.Items.Clear;

  Files := TDirectory.GetFiles(edit1.Text, TSearchOption.soTopDirectoryOnly, FilterPredicate);

  for I := Low(Files) to High(Files) do
  begin
    Listbox1.Items.Add(ExtractFileName(Files[I]));
    //LBI := MyListBox.ListItems[II];
    //LBI.ItemData.Detail := SDA[I];
  end;
end;

function TForm1.GiveFeedback(dwEffect: Longint): HResult; stdcall;
begin
  Result := DRAGDROP_S_USEDEFAULTCURSORS;
end;

end.
