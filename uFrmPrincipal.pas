unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uPessoa,
  uFuncionario;

type
  TForm1 = class(TForm)
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtCargo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtCadastrar: TButton;
    BtListar: TButton;
    Memo: TMemo;
    Panel1: TPanel;
    Label4: TLabel;
    BtLimpar: TButton;
    procedure BtCadastrarClick(Sender: TObject);
    procedure BtListarClick(Sender: TObject);
    procedure BtLimparClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VetorFuncionario: array of TFuncionario;
  tamanho: integer = 0;
  Pessoa: TPessoa;
  Funcionario: TFuncionario;

implementation

{$R *.dfm}

procedure TForm1.BtCadastrarClick(Sender: TObject);
begin
  Try
    Funcionario := TFuncionario.Create;
    Funcionario.Nome := EdtNome.Text;
    Funcionario.Cargo := EdtCargo.Text;
    Funcionario.Cpf := EdtCPF.Text;

    tamanho := tamanho + 1;

    setLength(VetorFuncionario, tamanho);

    VetorFuncionario[tamanho - 1] := Funcionario;

  Finally
    Memo.Lines.Add('O Funcionario: ' + Funcionario.Nome +
      ' foi cadastrado com sucesso.');
  End;
end;

procedure TForm1.BtLimparClick(Sender: TObject);
begin

  EdtNome.Clear;
  EdtCPF.Clear;
  EdtCargo.Clear;

end;

procedure TForm1.BtListarClick(Sender: TObject);
begin
  Var
    i: integer;

  Memo.Lines.Add('');

  for i := 0 to tamanho - 1 do
  begin
    Funcionario := VetorFuncionario[i];

    Memo.Lines.Add('Nome: ' + Funcionario.Nome + #13#10 + 'CPF: ' +
      Funcionario.Cpf + #13#10 + 'Cargo :  ' + Funcionario.Cargo + #13#10);

  end;

end;

end.
