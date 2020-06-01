unit Classe.Controller.Sistema;

interface
uses
  Classe.Conexao, System.SysUtils, Classe.Modelo.Usuario;

  type
    TSistemaControl = class
      private
        class var FInstance: TSistemaControl;
        FConexao: TConexao;
        FUsuario: TModelUsuario;

      public
        constructor Create;
        destructor Destroy; override;

        class function GetInstance: TSistemaControl;
        property Usuario: TModelUsuario read FUsuario write FUsuario;
        property Conexao: TConexao read FConexao write FConexao;

    end;
implementation

{ TControllerUsuario }

constructor TSistemaControl.Create;
begin
  FConexao := TConexao.Create;
  FUsuario := TModelUsuario.Create();
end;

destructor TSistemaControl.Destroy;
begin
   FreeAndNil(FUsuario);
   FreeAndNil(FConexao);
  inherited;
end;

function TSistemaControl.GetInstance: TSistemaControl;
begin
  if not Assigned(Self.FInstance) then
  begin
    Self.FInstance := TSistemaControl.Create();
  end;

  Result := Self.FInstance;
end;

end.
