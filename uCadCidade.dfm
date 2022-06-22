object frmCadCidade: TfrmCadCidade
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de cidade'
  ClientHeight = 279
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 14
    Width = 17
    Height = 19
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 74
    Top = 14
    Width = 118
    Height = 19
    Caption = 'Data de cadastro'
  end
  object Label3: TLabel
    Left = 16
    Top = 78
    Width = 114
    Height = 19
    Caption = 'Nome da cidade'
  end
  object Label4: TLabel
    Left = 184
    Top = 78
    Width = 19
    Height = 19
    Caption = 'UF'
  end
  object Pais: TLabel
    Left = 240
    Top = 78
    Width = 28
    Height = 19
    Caption = 'Pais'
  end
  object CEP: TLabel
    Left = 16
    Top = 140
    Width = 28
    Height = 19
    Caption = 'CEP'
  end
  object Label7: TLabel
    Left = 148
    Top = 140
    Width = 74
    Height = 19
    Caption = 'Habitantes'
  end
  object txtNome: TEdit
    Left = 16
    Top = 103
    Width = 150
    Height = 27
    TabOrder = 0
  end
  object txtEstado: TEdit
    Left = 184
    Top = 103
    Width = 38
    Height = 27
    TabOrder = 1
  end
  object txtPais: TEdit
    Left = 240
    Top = 103
    Width = 150
    Height = 27
    TabOrder = 2
  end
  object txtHabitantes: TEdit
    Left = 148
    Top = 165
    Width = 150
    Height = 27
    TabOrder = 3
  end
  object txtDcadastro: TEdit
    Left = 72
    Top = 39
    Width = 150
    Height = 27
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 4
  end
  object txtCodigo: TEdit
    Left = 16
    Top = 39
    Width = 33
    Height = 27
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 5
  end
  object txtCep: TMaskEdit
    Left = 16
    Top = 165
    Width = 120
    Height = 27
    EditMask = '99.999-99;1;_'
    MaxLength = 9
    TabOrder = 6
    Text = '  .   -  '
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 238
    Width = 577
    Height = 41
    Align = alBottom
    TabOrder = 7
    ExplicitLeft = 224
    ExplicitTop = 232
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = BitBtn1Click
      ExplicitLeft = 16
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = BitBtn2Click
      ExplicitLeft = 97
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
end
