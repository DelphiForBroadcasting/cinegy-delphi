unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Soap.InvokeRegistry, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation,
  FMX.StdCtrls, Soap.Rio, Soap.SOAPHTTPClient, ICinegyDataAccessService1, FH.CINEGY.CAS.SOAP.CLIENT,
  FMX.Edit, FMX.Layouts, FMX.Menus, FMX.ListBox;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Splitter1: TSplitter;
    Layout1: TLayout;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Label7: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label8: TLabel;
    Edit8: TEdit;
    Button5: TButton;
    Button6: TButton;
    Edit9: TEdit;
    Button7: TButton;
    Label9: TLabel;
    Edit10: TEdit;
    Label10: TLabel;
    Edit11: TEdit;
    Button8: TButton;
    Button9: TButton;
    Label11: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FCinegyArchiveServiceClient : TCinegyArchiveServiceClient;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if FCinegyArchiveServiceClient.Connected then
  begin
    if FCinegyArchiveServiceClient.Disconnect then
      TButton(Sender).Text := 'Connect';
  end else
  begin
    FCinegyArchiveServiceClient.Host := Edit1.Text;
    FCinegyArchiveServiceClient.Port := StrToInt(Edit2.Text);
    FCinegyArchiveServiceClient.Database := Edit3.Text;
    FCinegyArchiveServiceClient.ConnectionType := TConnectionType.RemoteTrusted;
    FCinegyArchiveServiceClient.Username := Edit4.Text;
    FCinegyArchiveServiceClient.Password := Edit5.Text;
    FCinegyArchiveServiceClient.Domain := Edit6.Text;
    if FCinegyArchiveServiceClient.Connect then
    begin
      TButton(Sender).Text := 'Disconnect';
      memo1.Lines.Add(Format('Version: %d', [FCinegyArchiveServiceClient.Version]));
      memo1.Lines.Add(Format('ConnectionInfo: %s', [FCinegyArchiveServiceClient.ConnectionInfo.ToString]));
    end;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LNode : Node2;
begin
  LNode := FCinegyArchiveServiceClient.Node[Edit7.Text];

  memo1.Lines.Add(Format('Node[%s].Name: %s', [Edit7.Text, LNode.name_]));
  memo1.Lines.Add(Format('Node[%s].Creation: %s', [Edit7.Text, FormatDatetime('yyyy-mm-dd hh:mm:ss', LNode.creation.AsDateTime)]));

  case LNode._type of
    TNodeType.ROOT:
    begin

    end;
    TNodeType.FOLDER:
    begin

    end;
    TNodeType.SEQUENCE:
    begin

    end;
    TNodeType.BIN:
    begin

    end;
    TNodeType.CLIPBIN:
    begin

    end;
    TNodeType.CLIP:
    begin

    end;
    TNodeType.MASTERCLIP:
    begin

    end;
  end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var
  LNodeItem : Node2;
  LParentNode : Node2;
begin
  if edit7.Text.IsEmpty then
    LParentNode := FCinegyArchiveServiceClient.Root
  else  LParentNode := FCinegyArchiveServiceClient.Node[edit7.Text];

  Memo1.Lines.Add(Format('%s, id: %s', [LParentNode.name_, LParentNode._id._nodeid_id]));
  for LNodeItem in FCinegyArchiveServiceClient.GetChildrenNodes(LParentNode, TNodeRequestType.All) do
  begin
    Memo1.Lines.Add(Format('%s, id: %s', [LNodeItem.name_, LNodeItem._id._nodeid_id]));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  LSearchResult : TArray<string>;
  i             : integer;
  LSearchQuery  : string;
begin
  if not edit9.Text.IsEmpty then
    LSearchQuery := Format('<ROOT> <R M="%s" V="%s" E="EQ" I="0" A="0" Y="2" N="0"> </R> </ROOT>', [edit9.Text, Edit8.Text])
  else
    LSearchQuery := Edit8.Text;

  LSearchResult := FCinegyArchiveServiceClient.SearchList(LSearchQuery);

  for i := 0 to Length(LSearchResult) - 1 do
  begin
    memo1.Lines.Add(Format('Node[%s]', [LSearchResult[i]]));
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  LNode : Node2;
  i     : integer;
begin
  LNode := FCinegyArchiveServiceClient.GetNodeEx(Edit7.Text, TNodeRequestType.NotDeleted, TNodeFillingType.MAIN);

  memo1.Lines.Add(Format('Node[%s].Name: %s', [Edit7.Text, LNode.name_]));
  memo1.Lines.Add(Format('Node[%s].Creation: %s', [Edit7.Text, FormatDatetime('yyyy-mm-dd hh:mm:ss', LNode.creation.AsDateTime)]));

  memo1.Lines.Add(Format('Node[%s]._subtype = %d', [LNode._id._nodeid_id, LNode._subtype]));
  case LNode._type of
    TNodeType.ROOT:
    begin
      memo1.Lines.Add(Format('Node[%s].isROOT', [LNode._id._nodeid_id]));
    end;
    TNodeType.FOLDER:
    begin
      memo1.Lines.Add(Format('Node[%s].isFOLDER', [LNode._id._nodeid_id]));
    end;
    TNodeType.SEQUENCE:
    begin
      memo1.Lines.Add(Format('Node[%s].isSEQUENCE', [LNode._id._nodeid_id]));
    end;
    TNodeType.BIN:
    begin
      memo1.Lines.Add(Format('Node[%s].isBIN', [LNode._id._nodeid_id]));
    end;
    TNodeType.CLIPBIN:
    begin
      memo1.Lines.Add(Format('Node[%s].isCLIPBIN', [LNode._id._nodeid_id]));
    end;
    TNodeType.CLIP:
    begin
      memo1.Lines.Add(Format('Node[%s].isCLIP', [LNode._id._nodeid_id]));
    end;
    TNodeType.MASTERCLIP:
    begin
      memo1.Lines.Add(Format('Node[%s].isMASTERCLIP', [LNode._id._nodeid_id]));
    end;
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  LNodeItem : Node2;
  LParentNode : Node2;
begin
  if edit7.Text.IsEmpty then
    LParentNode := FCinegyArchiveServiceClient.Root
  else  LParentNode := FCinegyArchiveServiceClient.Node[edit7.Text];

  Memo1.Lines.Add(Format('%s, id: %s', [LParentNode.name_, LParentNode._id._nodeid_id]));
  for LNodeItem in FCinegyArchiveServiceClient.GetChildrenNodesEx(LParentNode, TNodeRequestType.NotDeleted, TNodeFillingType.MAIN) do
  begin
    Memo1.Lines.Add(Format('%s, id: %s', [LNodeItem.name_, LNodeItem._id._nodeid_id]));
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  LNode : Node2;
begin
  LNode := FCinegyArchiveServiceClient.CreatePlaceholder(Edit10.Text, Edit11.Text);

  memo1.Lines.Add(Format('Node[%s].Name: %s', [LNode._id._nodeid_id, LNode.name_]));
  memo1.Lines.Add(Format('Node[%s].Creation: %s', [LNode._id._nodeid_id, FormatDatetime('yyyy-mm-dd hh:mm:ss', LNode.creation.AsDateTime)]));

end;

procedure TForm1.Button8Click(Sender: TObject);
var
  LExportPlugins: TArray<string>;
  i             : integer;
begin
  LExportPlugins := FCinegyArchiveServiceClient.EnumExportPlugins;

  combobox1.Items.Clear;
  for i := 0 to Length(LExportPlugins) - 1 do
  begin
    combobox1.Items.Add(LExportPlugins[i])
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  memo1.Lines.Add(FCinegyArchiveServiceClient.ExportNode(edit12.Text, combobox1.Items.Strings[combobox1.ItemIndex]));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCinegyArchiveServiceClient := TCinegyArchiveServiceClient.Create;
  FCinegyArchiveServiceClient.OnError := procedure(const Sender: TObject; const errorCode: integer; const errorText: string)
  begin
    Memo1.Lines.Add(Format('ErrorCode: %d  with message %s', [errorCode, errorText]));
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCinegyArchiveServiceClient);
end;

end.
