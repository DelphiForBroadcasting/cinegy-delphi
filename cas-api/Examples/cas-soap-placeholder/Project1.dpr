program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  FH.CINEGY.CAS.SOAP.CLIENT in '..\..\Include\FH.CINEGY.CAS.SOAP.CLIENT.pas',
  ICinegyDataAccessService1 in '..\..\Include\ICinegyDataAccessService1.pas';

var
  FCinegyArchiveServiceClient : TCinegyArchiveServiceClient;
  FNode : Node2;

begin
  try

    FCinegyArchiveServiceClient := TCinegyArchiveServiceClient.Create;
    try
      FCinegyArchiveServiceClient.OnError := procedure(const Sender: TObject; const errorCode: integer; const errorText: string)
      begin
        writeln(Format('ErrorCode: %d  with message %s', [errorCode, errorText]));
      end;


      if FCinegyArchiveServiceClient.Connected then
      begin
        FCinegyArchiveServiceClient.Disconnect;
      end;

      FCinegyArchiveServiceClient.Host := 'cinesql2014';
      FCinegyArchiveServiceClient.Port := 8082;
      FCinegyArchiveServiceClient.Database := 'TRKua2';
      FCinegyArchiveServiceClient.ConnectionType := TConnectionType.RemoteTrusted;
      FCinegyArchiveServiceClient.Username := 'cadmin';
      FCinegyArchiveServiceClient.Password := 'Ci@dmin';
      FCinegyArchiveServiceClient.Domain := 'cinegy.dema';

      if not FCinegyArchiveServiceClient.Connect then
        raise Exception.Create('Error connected to Cinegy Archive Service');
      try

      writeln(Format('Version: %d', [FCinegyArchiveServiceClient.Version]));
      writeln(Format('ConnectionInfo: %s', [FCinegyArchiveServiceClient.ConnectionInfo.ToString]));


      FNode := FCinegyArchiveServiceClient.CreateBin('cb99b753-7972-423b-bdda-5a244d1bad57', 'Binnode_name', 540, 5);

      //FNode := FCinegyArchiveServiceClient.CreatePlaceholder('Placeholder_name', '8fd8cc3-c346-e711-811d-00155d018e3d');
     //writeln(Format('Node[%s].Name: %s', [FNode._id._nodeid_id, FNode.name_]));
     //writeln(Format('Node[%s].Creation: %s', [FNode._id._nodeid_id, FormatDatetime('yyyy-mm-dd hh:mm:ss', FNode.creation.AsDateTime)]));

      finally
        FCinegyArchiveServiceClient.Disconnect;
      end;

    finally
      FreeAndNil(FCinegyArchiveServiceClient);
    end;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
