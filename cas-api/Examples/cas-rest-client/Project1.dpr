program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  FH.CINEGY.CAS.REST.CLIENT in '..\..\Include\FH.CINEGY.CAS.REST.CLIENT.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
