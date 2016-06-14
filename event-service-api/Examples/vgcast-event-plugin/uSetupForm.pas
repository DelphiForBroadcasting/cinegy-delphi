unit uSetupForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.Menus, uMainConfig,
  Vcl.ComCtrls;

type
  TSetupForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FMainConfig : TMainConfig;
  public
    { Public declarations }
  end;

var
  SetupForm: TSetupForm;

implementation

{$R *.dfm}

procedure TSetupForm.Button1Click(Sender: TObject);
var
  LDir : string;
begin
  LDir := '';
  if Win32MajorVersion >= 6 then
  begin
    with TFileOpenDialog.Create(nil) do
    begin
      try
        Title := 'Select Directory';
        Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
        DefaultFolder := LDir;
        FileName := LDir;
        OkButtonLabel := 'Select';
        if Execute then
          Edit3.Text := FileName;
      finally
        Free;
      end;
    end;
  end else
  begin
    if SelectDirectory('Select Directory', ExtractFileDrive(LDir), LDir, [sdNewUI, sdNewFolder]) then
      Edit3.Text := LDir;
  end;

end;

procedure TSetupForm.Button2Click(Sender: TObject);
begin
  FMainConfig.TplRepository := edit3.Text;
  FMainConfig.VgCast.Host := edit1.Text;
  FMainConfig.VgCast.Port :=  strtoint(edit2.Text);
  try
    FMainConfig.Save;
    FMainConfig.LoadFromFile(FMainConfig.FileName);
    edit1.Text := FMainConfig.VgCast.Host;
    edit2.Text := inttostr(FMainConfig.VgCast.Port);
    edit3.Text := FMainConfig.TplRepository;
    StatusBar1.panels[0].Text := Format('Loaded: %s', [ExtractFileName(FMainConfig.FileName)]);
  except
    on E:Exception do
      showmessage(E.Message);
  end;
end;

procedure TSetupForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FMainConfig.Destroy;
  Action := caFree;
end;

procedure TSetupForm.FormCreate(Sender: TObject);
var
  LConfigFile : string;
begin
  FMainConfig := TMainConfig.Create;
  try
    LConfigFile := changefileext(TMainConfig.GetModuleAbsolutePath, '.conf');
    FMainConfig.LoadFromFile(LConfigFile);
    edit1.Text := FMainConfig.VgCast.Host;
    edit2.Text := inttostr(FMainConfig.VgCast.Port);
    edit3.Text := FMainConfig.TplRepository;
    StatusBar1.panels[0].Text := Format('Loaded: %s', [ExtractFileName(LConfigFile)]);
  Except
    on e:Exception do
    begin
      StatusBar1.panels[0].Text := Format('VGCAST Plugin: %s', [e.Message]);
    end;
  end;
end;

procedure TSetupForm.N1Click(Sender: TObject);
begin
  Showmessage('FreeHand Technology');
end;

end.
