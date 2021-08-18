unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Diagnostics,
  Soap.InvokeRegistry, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, Soap.OpConvertOptions,
  FMX.StdCtrls, Soap.Rio, Soap.SOAPHTTPClient, CINEGY.CAS14.SOAP, FH.CINEGY.CAS.SOAP.CLIENT,
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
    Label13: TLabel;
    Edit13: TEdit;
    Button10: TButton;
    Button11: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    HTTPRIO1: THTTPRIO;
    Button12: TButton;
    Button13: TButton;
    Edit14: TEdit;
    CheckBox19: TCheckBox;
    Edit15: TEdit;
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
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
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

procedure TForm1.Button10Click(Sender: TObject);
var
  lArrayOfSubType : ArrayOfSubTypeObject;
  i : integer;
begin
  lArrayOfSubType := FCinegyArchiveServiceClient.GetSubTypesInfo;
  for I := 0 to Length(lArrayOfSubType) - 1 do
  begin
    memo1.Lines.Add(format('name=%s, SubType=%d, Type=%d, Comment=%s', [lArrayOfSubType[i].Name_, lArrayOfSubType[i].SubType, lArrayOfSubType[i].Type_, lArrayOfSubType[i].Comment]));
  end;



  memo1.Lines.Add(FCinegyArchiveServiceClient.ExportNode(edit12.Text, combobox1.Items.Strings[combobox1.ItemIndex]));
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  LSearchResult : TArray<string>;
  i             : integer;
  LSearchQuery  : string;
  LNode         : Node2;
  LRequestWatch : TStopwatch;
begin
  LRequestWatch := TStopWatch.StartNew();

  if not edit9.Text.IsEmpty then
    LSearchQuery := Format('<ROOT> <R M="%s" V="%s" E="EQ" I="0" A="0" Y="2" N="0"> </R> </ROOT>', [edit9.Text, Edit8.Text])
  else
    LSearchQuery := Edit8.Text;

  LSearchResult := FCinegyArchiveServiceClient.SearchList(LSearchQuery);

  for i := 0 to Length(LSearchResult) - 1 do
  begin

    try
    LNode := FCinegyArchiveServiceClient.GetNodeEx(LSearchResult[i], TNodeRequestType.NotDeleted, TNodeFillingType.MAIN);
    except
    end;

  end;


    LRequestWatch.Stop;
    memo1.Lines.Add(Format('LRequestWatch: %d ms', [LRequestWatch.ElapsedMilliseconds]))


end;

procedure TForm1.Button12Click(Sender: TObject);
var
  lSOAPConvertOptions : TSOAPConvertOptions;
begin

  if CheckBox1.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soSendUntyped)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soSendUntyped);

  if CheckBox2.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soSendMultiRefObj)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soSendMultiRefObj);

  if CheckBox3.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soSendMultiRefArray)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soSendMultiRefArray);

  if CheckBox4.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soTryAllSchema)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soTryAllSchema);

  if CheckBox5.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soRootRefNodesToBody)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soRootRefNodesToBody);

  if CheckBox6.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soDocument)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soDocument);

  if CheckBox7.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soReturnSuccessForFault)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soReturnSuccessForFault);

  if CheckBox8.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soUTF8InHeader)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soUTF8InHeader);

  if CheckBox9.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soDontSendEmptyNodes)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soDontSendEmptyNodes);

  if CheckBox10.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soCacheMimeResponse)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soCacheMimeResponse);

  if CheckBox11.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soDontClearOutBoundHeaders)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soDontClearOutBoundHeaders);

  if CheckBox12.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soCustomFaultAtDetailsNode)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soCustomFaultAtDetailsNode);

  if CheckBox13.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soLiteralParams)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soLiteralParams);

  if CheckBox14.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soUTF8EncodeXML)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soUTF8EncodeXML);

  if CheckBox15.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soXXXXHdr)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soXXXXHdr);

  if CheckBox16.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soFormElementUnqualifed)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soFormElementUnqualifed);

  if CheckBox17.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soSOAP12)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soSOAP12);

  if CheckBox18.IsChecked then
    Include(lSOAPConvertOptions, TSOAPConvertOption.soDontSendVarArrayType)
  else Exclude(lSOAPConvertOptions, TSOAPConvertOption.soDontSendVarArrayType);

  FCinegyArchiveServiceClient.SOAPConvertOptions := lSOAPConvertOptions;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  lSOAPConvertOption   : TSOAPConvertOption;
begin
  CheckBox1.IsChecked := False;
  CheckBox2.IsChecked := False;
  CheckBox3.IsChecked := False;
  CheckBox4.IsChecked := False;
  CheckBox5.IsChecked := False;
  CheckBox6.IsChecked := False;
  CheckBox7.IsChecked := False;
  CheckBox8.IsChecked := False;
  CheckBox9.IsChecked := False;
  CheckBox10.IsChecked := False;
  CheckBox11.IsChecked := False;
  CheckBox12.IsChecked := False;
  CheckBox13.IsChecked := False;
  CheckBox14.IsChecked := False;
  CheckBox15.IsChecked := False;
  CheckBox16.IsChecked := False;
  CheckBox17.IsChecked := False;
  CheckBox18.IsChecked := False;

  for lSOAPConvertOption := Low(TSOAPConvertOption) to High(TSOAPConvertOption) do
  begin
    if lSOAPConvertOption in FCinegyArchiveServiceClient.SOAPConvertOptions then
    begin
      case lSOAPConvertOption of
        soSendUntyped              : CheckBox1.IsChecked := True;
        soSendMultiRefObj          : CheckBox2.IsChecked := True;
        soSendMultiRefArray        : CheckBox3.IsChecked := True;
        soTryAllSchema             : CheckBox4.IsChecked := True;
        soRootRefNodesToBody       : CheckBox5.IsChecked := True;
        soDocument                 : CheckBox6.IsChecked := True;
        soReturnSuccessForFault    : CheckBox7.IsChecked := True;
        soUTF8InHeader             : CheckBox8.IsChecked := True;
        soDontSendEmptyNodes       : CheckBox9.IsChecked := True;
        soCacheMimeResponse        : CheckBox10.IsChecked := True;
        soDontClearOutBoundHeaders : CheckBox11.IsChecked := True;
        soCustomFaultAtDetailsNode : CheckBox12.IsChecked := True;
        soLiteralParams            : CheckBox13.IsChecked := True;
        soUTF8EncodeXML            : CheckBox14.IsChecked := True;
        soXXXXHdr                  : CheckBox15.IsChecked := True;
        soFormElementUnqualifed    : CheckBox16.IsChecked := True;
        soSOAP12                   : CheckBox17.IsChecked := True;
        soDontSendVarArrayType     : CheckBox18.IsChecked := True;
      end;
    end;
  end;
end;

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
    FCinegyArchiveServiceClient.SQLServer := Edit13.Text;
    FCinegyArchiveServiceClient.Database := Edit3.Text;
    FCinegyArchiveServiceClient.ConnectionType := TConnectionType.RemoteTrusted;
    FCinegyArchiveServiceClient.Username := Edit4.Text;
    FCinegyArchiveServiceClient.Password := Edit5.Text;
    FCinegyArchiveServiceClient.Domain := Edit6.Text;
    FCinegyArchiveServiceClient.ApplicationLicense := Edit15.Text;
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
  LSearchResult     : TArray<string>;
  i                 : integer;
  LSearchQuery      : string;
  lMetadataSet      : TArray<MetadataObject2>;
  lMetadataObject2  : MetadataObject2;
begin
  LSearchQuery := Edit14.Text;

  LSearchResult := FCinegyArchiveServiceClient.SearchList(LSearchQuery);

  for i := 0 to Length(LSearchResult) - 1 do
  begin
    memo1.Lines.Add(Format('[%s]', [LSearchResult[i]]));
    if CheckBox19.IsChecked then
    begin
      try
        lMetadataSet := FCinegyArchiveServiceClient.GetMetaData(LSearchResult[i]);

        for lMetadataObject2 in lMetadataSet do
        begin
          memo1.Lines.Add(Format('Node[%s].Meta[%s][%s]: ', [LSearchResult[i], lMetadataObject2.internalName, lMetadataObject2.type_]));
          if SameText(lMetadataObject2.internalName, edit9.Text) then
          begin
            if SameText(VarToStr(lMetadataObject2.value), Edit8.Text) then
            begin
              memo1.Lines.Add(Format('Exact Node[%s]', [LSearchResult]));
            end;
          end;
        end;
      except
        on E:Exception do
          memo1.Lines.Add(Format('Exception: %s', [E.Message]));
      end;
    end;
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

procedure TForm1.Edit8Change(Sender: TObject);
begin
  if not edit9.Text.IsEmpty then
    Edit14.Text := Format('<ROOT> <R M="%s" V="%s" E="EQ" I="0" A="0" Y="2" N="0"> </R> </ROOT>', [edit9.Text, Edit8.Text])
  else
    Edit14.Text := Edit8.Text;
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
