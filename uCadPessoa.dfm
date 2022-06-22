object frmCadPessoa: TfrmCadPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 289
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 242
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 12
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 12
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object Label4: TLabel
      Left = 12
      Top = 160
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label5: TLabel
      Left = 127
      Top = 16
      Width = 70
      Height = 13
      Caption = 'Data Cadastro'
    end
    object txtCodigo: TEdit
      Left = 12
      Top = 35
      Width = 109
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object txtNome: TEdit
      Left = 12
      Top = 83
      Width = 301
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
    object txtSobrenome: TEdit
      Left = 12
      Top = 131
      Width = 301
      Height = 21
      MaxLength = 100
      TabOrder = 2
    end
    object txtCPF: TMaskEdit
      Left = 12
      Top = 179
      Width = 114
      Height = 21
      EditMask = '999.999.999-99;1;_'
      MaxLength = 14
      TabOrder = 3
      Text = '   .   .   -  '
      TextHint = 'Ex: 123.456.789-10'
    end
    object txtDataCadastro: TEdit
      Left = 127
      Top = 35
      Width = 109
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
      Text = 'dd/mm/yyyy'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 242
    Width = 596
    Height = 47
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 39
      Align = alLeft
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
      ExplicitTop = 6
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 39
      Align = alLeft
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
end
