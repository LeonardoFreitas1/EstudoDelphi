unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Classe.Conexao;

type
  TFmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Usuario1: TMenuItem;
    Livro1: TMenuItem;
    Movimento1: TMenuItem;
    Locaes1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Sair1: TMenuItem;
    Informaes1: TMenuItem;
    Relatorios1: TMenuItem;
    Panel1: TPanel;
    BTUsuario: TSpeedButton;
    BTLivros: TSpeedButton;
    BTSair: TSpeedButton;
    BTLocacoes: TSpeedButton;
    Image1: TImage;
    procedure BTUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrincipal: TFmPrincipal;

implementation

{$R *.dfm}

uses Form.Login, Classe.Controller.Sistema;

procedure TFmPrincipal.BTUsuarioClick(Sender: TObject);
var
  VConexao: TConexao;
begin
  VConexao := TConexao.Create;
  VConexao.GetConn.Connected := true;

  try
    if VConexao.getConn.Connected = true then
    ShowMessage('Conectado');
  Finally
    FreeAndNil(VConexao);
  end;
end;

procedure TFmPrincipal.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance().Conexao;
end;

end.
