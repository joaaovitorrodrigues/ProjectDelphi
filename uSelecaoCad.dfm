object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Selecione qual cadastro deseja incluir...'
  ClientHeight = 293
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 293
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object rdbCadPessoa: TRadioButton
      Left = 8
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Cadastrar Pessoa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 251
      Width = 528
      Height = 41
      Align = alBottom
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 76
        Top = 1
        Width = 75
        Height = 39
        Align = alLeft
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 16
        ExplicitTop = 8
        ExplicitHeight = 25
      end
      object BitBtn2: TBitBtn
        Left = 1
        Top = 1
        Width = 75
        Height = 39
        Align = alLeft
        Caption = 'Selecionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 16
        ExplicitTop = 8
        ExplicitHeight = 25
      end
    end
    object rdbCadCidade: TRadioButton
      Left = 8
      Top = 39
      Width = 121
      Height = 17
      Caption = 'Cadastrar Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
    end
  end
end
