object dtmCidade: TdtmCidade
  OldCreateOrder = False
  Height = 356
  Width = 576
  object oTabCidade: TFDTable
    Active = True
    IndexFieldNames = 'idCidade'
    Connection = dtmConexao.FDConnection1
    TableName = 'crud.cidade'
    Left = 112
    Top = 112
  end
  object oQryCidade: TFDQuery
    Connection = dtmConexao.FDConnection1
    SQL.Strings = (
      'select '
      '  idCidade, '
      '  nomeCidade, '
      '  estadoCidade,'
      '  paisCidade,'
      '  cepCidade,'
      '  habitantesCidade, '
      '  dataCadastro '
      'from '
      '  cidade'
      'where'
      '  idCidade = :idCidade or'
      '  nomeCidade like :nomeCidade or'
      '  estadoCidade = :estadoCidade or'
      '  paisCidade like :paisCidade or'
      '  cepCidade = :cepCidade or'
      '  habitantesCidade like :habitantesCidade')
    Left = 136
    Top = 208
    ParamData = <
      item
        Name = 'IDCIDADE'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOMECIDADE'
        ParamType = ptInput
      end
      item
        Name = 'ESTADOCIDADE'
        ParamType = ptInput
      end
      item
        Name = 'PAISCIDADE'
        ParamType = ptInput
      end
      item
        Name = 'CEPCIDADE'
        ParamType = ptInput
      end
      item
        Name = 'HABITANTESCIDADE'
        ParamType = ptInput
      end>
  end
end
