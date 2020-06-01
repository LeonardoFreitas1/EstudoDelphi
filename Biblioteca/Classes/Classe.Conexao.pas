unit Classe.Conexao;

interface
  uses
    FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
    FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
    FireDAC.Phys.PG, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;
type
  TConexao = class

  private
    FConn: TFDConnection;

    procedure configurarConexao;

    function criarQuery: TFDQuery;
  public

  constructor Create;
  destructor Destroy; override;

  function GetConn: TFdConnection;
  end;

implementation

{ TConexao }

procedure TConexao.configurarConexao;
begin
  FConn.Params.DriverID := 'PG';
  FConn.Params.Database := 'Controle_Biblioteca';
  FConn.Params.UserName := 'postgres';
  FConn.Params.Password := 'postgres';
  FConn.LoginPrompt := False;

end;

constructor TConexao.Create;
begin
  FConn := TFDConnection.Create(nil);

  Self.configurarConexao();
end;

function TConexao.criarQuery: TFDQuery;
var
  VQuery: TFDQuery;
begin
  VQuery := TFDQuery.Create(nil);
  VQuery.Connection := FConn;

  Result := VQuery;
end;

destructor TConexao.Destroy;
begin
  FreeAndNil(FConn);
  inherited;
end;

function TConexao.GetConn: TFdConnection;
begin
  Result := FConn;
end;

end.
