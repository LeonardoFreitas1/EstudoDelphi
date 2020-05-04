program Biblioteca;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  uUsuarios in 'Forms\uUsuarios.pas' {fmUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfmUsuarios, fmUsuarios);
  Application.Run;
end.
