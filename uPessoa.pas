unit uPessoa;

interface

type
  TPessoa = Class
  Private
    FNome: string;
    FCpf: String;

    Function getNome: string;
    Procedure setNome(Value: String);
    Function getCpf: string;
    Procedure setCpf(Value: String);

  Public
    Property Nome: String read getNome write setNome;
    Property Cpf: String read getCpf write setCpf;

  End;

implementation

{ TPessoa }

function TPessoa.getCpf: string;
begin
  Result := FCpf;
end;

function TPessoa.getNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.setCpf(Value: String);
begin
  FCpf := Value;
end;

procedure TPessoa.setNome(Value: String);
begin
  FNome := Value;
end;

end.
