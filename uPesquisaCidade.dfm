object frmPesqCidade: TfrmPesqCidade
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Cidades'
  ClientHeight = 373
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisaCidade: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 41
    Align = alTop
    TabOrder = 0
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
    object txtPesquisar: TEdit
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
    object btnPesquisaCidade: TBitBtn
      AlignWithMargins = True
      Left = 276
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Pe&squisar'
      Default = True
      TabOrder = 5
      OnClick = btnPesquisaCidadeClick
    end
    object btnInserir: TBitBtn
      AlignWithMargins = True
      Left = 444
      Top = 4
      Width = 69
      Height = 33
      Align = alRight
      Caption = '&Inserir'
      TabOrder = 1
      OnClick = btnInserirClick
    end
    object btnAlterar: TBitBtn
      AlignWithMargins = True
      Left = 519
      Top = 4
      Width = 69
      Height = 33
      Align = alRight
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      AlignWithMargins = True
      Left = 594
      Top = 4
      Width = 69
      Height = 33
      Align = alRight
      Caption = '&Excluir'
      TabOrder = 3
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 669
      Top = 4
      Width = 69
      Height = 33
      Align = alRight
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = btnFecharClick
    end
  end
  object grdGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 742
    Height = 332
    Align = alClient
    DataSource = dtsGrid1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idCidade'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomeCidade'
        Title.Caption = 'Nome Cidade'
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
        FieldName = 'estadoCidade'
        Title.Caption = 'Estado Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'paisCidade'
        Title.Caption = 'Pais da Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cepCidade'
        Title.Caption = 'Cep Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'habitantesCidade'
        Title.Caption = 'Habitantes Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 93
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
        Width = 101
        Visible = True
      end>
  end
  object dtsGrid1: TDataSource
    DataSet = dtmCidade.oQryCidade
    Left = 176
    Top = 160
  end
end
