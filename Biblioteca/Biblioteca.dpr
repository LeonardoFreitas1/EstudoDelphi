program Biblioteca;

uses
  Vcl.Forms,
  Form.Principal in 'Form.Principal.pas' {Form1},
  Form.Cadastro.Usuarios in 'Forms\Form.Cadastro.Usuarios.pas' {fmUsuarios},
  Classe.Usuario in 'Classes\Classe.Usuario.pas',
  Form.Login in 'Forms\Form.Login.pas' {FormLogin},
  Classe.Conexao in 'Classes\Classe.Conexao.pas',
  Classe.Modelo.Usuario in 'Classes\Classe.Modelo.Usuario.pas',
  Classe.Controller.Sistema in 'Classes\Classe.Controller.Sistema.pas';

{$R *.res}
var
  F: TFmLogin;
begin
  F := TFmLogin.Create(Application);
  try
  if F.ShowModal = F.Button2.ModalResult then begin
  Application.Initialize;
  Application.CreateForm(TFmPrincipal, FmPrincipal);
  Application.Run;
  end;
  finally
  F.Free;
  end;
end.
