object frmPesqPessoa: TfrmPesqPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Pessoas'
  ClientHeight = 373
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grdGrid: TDBGrid
    Left = 0
    Top = 41
    Width = 742
    Height = 332
    Align = alClient
    DataSource = dtsGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idPessoa'
        Title.Alignment = taRightJustify
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomePessoa'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenomePessoa'
        Title.Caption = 'Sobrenome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpfPessoa'
        Title.Caption = 'CPF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataCadastro'
        Title.Caption = 'Data de Cadastro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 142
        Visible = True
      end>
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 42
      Height = 23
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      Alignment = taCenter
      Caption = 'Pesquisa'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object txtPesquisa: TEdit
      AlignWithMargins = True
      Left = 67
      Top = 9
      Width = 198
      Height = 23
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alLeft
      TabOrder = 0
      TextHint = 'Pesquise aqui'
      ExplicitHeight = 21
    end
    object btnInserir: TBitBtn
      AlignWithMargins = True
      Left = 420
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Inserir'
      TabOrder = 1
      OnClick = btnInserirClick
    end
    object btnAlterar: TBitBtn
      AlignWithMargins = True
      Left = 501
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      AlignWithMargins = True
      Left = 582
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'E&xcluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 663
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = btnFecharClick
    end
    object btnPesquisar: TBitBtn
      AlignWithMargins = True
      Left = 276
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = '&Pesquisar'
      Default = True
      TabOrder = 5
      OnClick = btnPesquisarClick
    end
  end
  object dtsGrid: TDataSource
    DataSet = dtmPessoa.oQryPessoa
    Left = 264
    Top = 128
  end
end
