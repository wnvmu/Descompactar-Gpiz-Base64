program Teste;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ZLibEx in 'ZLib 1.2.8\ZLibEx.pas',
  ZLibExApi in 'ZLib 1.2.8\ZLibExApi.pas',
  ZLibExGZ in 'ZLib 1.2.8\ZLibExGZ.pas',
  EncdDecd in 'EncdDecd.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
