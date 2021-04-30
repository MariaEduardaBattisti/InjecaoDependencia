object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'CADASTRO DE PESSOAS'
  ClientHeight = 369
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 369
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 67
      Width = 66
      Height = 13
      Caption = 'Insira o Nome'
    end
    object Label2: TLabel
      Left = 72
      Top = 107
      Width = 58
      Height = 13
      Caption = 'Insira o CPF'
    end
    object Label3: TLabel
      Left = 73
      Top = 147
      Width = 66
      Height = 13
      Caption = 'Insira o cargo'
    end
    object Label4: TLabel
      Left = 144
      Top = 19
      Width = 227
      Height = 25
      Caption = 'Cadastro de Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdtCPF: TEdit
      Left = 216
      Top = 104
      Width = 177
      Height = 21
      TabOrder = 0
      TextHint = 'Insira CPF'
    end
    object EdtCargo: TEdit
      Left = 216
      Top = 144
      Width = 177
      Height = 21
      TabOrder = 1
      TextHint = 'Insira o Cargo'
    end
    object EdtNome: TEdit
      Left = 216
      Top = 64
      Width = 177
      Height = 21
      TabOrder = 2
      TextHint = 'Insira o Nome'
    end
    object BtCadastrar: TButton
      Left = 25
      Top = 212
      Width = 129
      Height = 27
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = BtCadastrarClick
    end
    object BtListar: TButton
      Left = 174
      Top = 211
      Width = 129
      Height = 30
      Caption = 'Listar'
      TabOrder = 4
      OnClick = BtListarClick
    end
    object Memo: TMemo
      Left = 1
      Top = 268
      Width = 484
      Height = 100
      Align = alBottom
      TabOrder = 5
    end
    object BtLimpar: TButton
      Left = 344
      Top = 207
      Width = 121
      Height = 32
      Caption = 'Limpar'
      TabOrder = 6
      OnClick = BtLimparClick
    end
  end
end
