program Project1;

uses
  Vcl.Forms,
  FH.VGCAST.HANDLER in '../FH.VGCAST.HANDLER.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
