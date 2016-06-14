unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FH.VGCAST.HANDLER, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit4: TEdit;
    Button8: TButton;
    Memo1: TMemo;
    Button9: TButton;
    Button10: TButton;
    ListBox1: TListBox;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    FVgCastHandler : TVgCastHandler;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
var
  LIntTmp : integer;
begin
  if FVgCastHandler.TplList.Close(edit4.Text) then
  begin
    LIntTmp := listbox1.Items.IndexOf(edit4.Text);
    listbox1.Items.Delete(LIntTmp);
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  FVgCastHandler.DELALL;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  LTplArray : TArray<string>;
begin
  LTplArray := FVgCastHandler.STS_TEMPLATE;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('read %s', [LVgTpl.FileName]));
  LVgTpl.READ;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('play %s', [LVgTpl.FileName]));
  LVgTpl.PLAY;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FVgCastHandler.Host := edit1.Text;
  FVgCastHandler.Port := strtoint(edit2.Text);

  FVgCastHandler.Connect;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FVgCastHandler.Disconnect;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('load %s', [LVgTpl.FileName]));
  LVgTpl.LOAD;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('efx %s.show', [LVgTpl.Name]));
  LVgTpl.SHOW;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('efx %s.hide', [LVgTpl.Name]));
  LVgTpl.HIDE;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  LVgTpl : TVgTpl;
begin
  LVgTpl := FVgCastHandler.TplList.FindByName(edit4.Text);
  memo1.Lines.Add(Format('del %s', [LVgTpl.Name]));
  LVgTpl.DEL;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  FVgCastHandler.NOTIFY;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  memo1.Lines.Add(FVgCastHandler.STS);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if FVgCastHandler.TplList.open(edit3.Text) then
    listbox1.Items.Add(FVgCastHandler.TplList.FindByFileName(edit3.Text).Name);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FVgCastHandler := TVgCastHandler.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FVgCastHandler.Destroy;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  edit4.Text := listbox1.Items.Strings[listbox1.ItemIndex];
end;

end.
