object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Home - SJVR'
  ClientHeight = 379
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 379
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlLateral: TPanel
      Left = 1
      Top = 1
      Width = 136
      Height = 377
      Align = alLeft
      Alignment = taLeftJustify
      TabOrder = 0
      object btnCadastrar: TBitBtn
        Left = 1
        Top = 1
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Cadastros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
      end
      object btnRelatorio: TBitBtn
        Left = 1
        Top = 46
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Relat'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 40
      end
      object btnOrcamento: TBitBtn
        Left = 1
        Top = 91
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Or'#231'amentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        ExplicitTop = 81
      end
      object btnEstoque: TBitBtn
        Left = 1
        Top = 136
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        ExplicitTop = 121
      end
      object btnVenda: TBitBtn
        Left = 1
        Top = 181
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        ExplicitTop = 161
      end
      object btnOcorrencia: TBitBtn
        Left = 1
        Top = 271
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Ocorr'#234'ncias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        ExplicitTop = 201
      end
      object btnSair: TBitBtn
        Left = 1
        Top = 336
        Width = 134
        Height = 40
        Align = alBottom
        Caption = 'Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 6
        ExplicitLeft = 8
        ExplicitTop = 344
        ExplicitWidth = 75
      end
      object btnPesquisa: TBitBtn
        Left = 1
        Top = 226
        Width = 134
        Height = 45
        Align = alTop
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 7
        ExplicitTop = 201
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 680
    object mnuPrincipal: TMenuItem
      Caption = 'Principal'
      object mnuCadastroPessoa: TMenuItem
        Caption = 'Cadastro &Pessoa'
        OnClick = mnuCadastroPessoaClick
      end
      object mnuCadastroCidade: TMenuItem
        Caption = 'Cadastro &Cidade'
        OnClick = mnuCadastroCidadeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        OnClick = Sair1Click
      end
    end
  end
end
