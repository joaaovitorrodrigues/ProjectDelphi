object dtmPessoa: TdtmPessoa
  OldCreateOrder = False
  Height = 296
  Width = 429
  object oTabPessoa: TFDTable
    IndexFieldNames = 'idPessoa'
    Connection = dtmConexao.FDConnection1
    TableName = 'crud.pessoa'
    Left = 96
    Top = 40
  end
  object oQryPessoa: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select '
      '  idPessoa, '
      '  nomePessoa, '
      '  sobrenomePessoa, '
      '  cpfPessoa, '
      '  dataCadastro '
      'from '
      '  pessoa'
      'where'
      '  idPessoa = :idPessoa or'
      '  nomePessoa like :nomePessoa or'
      '  sobrenomePessoa like :sobrenomePessoa or'
      '  cpfPessoa = :cpfPessoa'
      '  ')
    Left = 96
    Top = 104
    ParamData = <
      item
        Name = 'IDPESSOA'
        ParamType = ptInput
      end
      item
        Name = 'NOMEPESSOA'
        ParamType = ptInput
      end
      item
        Name = 'SOBRENOMEPESSOA'
        ParamType = ptInput
      end
      item
        Name = 'CPFPESSOA'
        ParamType = ptInput
      end>
  end
end
