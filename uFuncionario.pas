unit uFuncionario;

interface

uses
  uPessoa;

type
  TFuncionario = Class(TPessoa)
  Private
    FCargo: String;

    Function getCargo: String;
    Procedure setCargo(Value: String);

  Public
    Property Cargo: String read getCargo write setCargo;
  End;

implementation

function TFuncionario.getCargo: string;
begin
  Result := FCargo;
end;

procedure TFuncionario.setCargo(Value: String);
begin
  FCargo := Value;
end;

end.
