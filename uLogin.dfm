object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login - Acessando o sistema'
  ClientHeight = 290
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = [fsItalic]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 290
    Align = alClient
    Caption = 'LOGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 120
      Width = 60
      Height = 18
      Caption = 'Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 176
      Width = 49
      Height = 18
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object txtUsuario: TEdit
      Left = 5
      Top = 139
      Width = 301
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
      TextHint = 'Digite seu usu'#225'rio...'
    end
    object txtSenha: TEdit
      Left = 5
      Top = 195
      Width = 301
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      MaxLength = 100
      ParentFont = False
      TabOrder = 1
      TextHint = 'Digite sua senha...'
    end
    object Panel1: TPanel
      Left = 1
      Top = 242
      Width = 393
      Height = 47
      Align = alBottom
      TabOrder = 2
      object btnEntrar: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 75
        Height = 39
        Align = alLeft
        Caption = '&Entrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        OnClick = btnEntrarClick
      end
      object btnSair: TButton
        AlignWithMargins = True
        Left = 85
        Top = 4
        Width = 75
        Height = 39
        Align = alLeft
        Caption = '&Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        OnClick = btnSairClick
      end
    end
    object pnlLogo: TPanel
      Left = 1
      Top = 1
      Width = 393
      Height = 70
      Align = alTop
      Caption = 'LOGO'
      Color = clHotLight
      ParentBackground = False
      TabOrder = 3
    end
  end
end
