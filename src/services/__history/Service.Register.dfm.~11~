object ServiceRegister: TServiceRegister
  Height = 258
  Width = 677
  object QRYEntity: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'select * from entidade where entidade_id = :codigo')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYEntityENTIDADE_ID: TIntegerField
      FieldName = 'ENTIDADE_ID'
      Origin = 'ENTIDADE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYEntityNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object QRYEntityTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object QRYEntityDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object QRYEntityTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object QRYEntityEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRYEntityENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object QRYEntityDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object QRYEntityDATA_CRIACAO: TDateField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
    end
  end
  object QRYStock: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM estoque WHERE estoque_id = :item')
    Left = 120
    Top = 48
    ParamData = <
      item
        Name = 'ITEM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYStockESTOQUE_ID: TIntegerField
      FieldName = 'ESTOQUE_ID'
      Origin = 'ESTOQUE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYStockPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
    end
    object QRYStockQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object QRYStockPRECO_COMPRA: TFMTBCDField
      FieldName = 'PRECO_COMPRA'
      Origin = 'PRECO_COMPRA'
      Precision = 18
      Size = 2
    end
    object QRYStockPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QRYStockDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
  end
  object QRYSaleItens: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM itens_venda WHERE item_id = :itemsale')
    Left = 208
    Top = 56
    ParamData = <
      item
        Name = 'ITEMSALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYSaleItensITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
      Origin = 'ITEM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYSaleItensVENDA_ID: TIntegerField
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
    end
    object QRYSaleItensPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
    end
    object QRYSaleItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object QRYSaleItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 2
    end
    object QRYSaleItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object QRYSale: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM venda WHERE venda_id = :sale')
    Left = 280
    Top = 48
    ParamData = <
      item
        Name = 'SALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYSaleVENDA_ID: TIntegerField
      FieldName = 'VENDA_ID'
      Origin = 'VENDA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYSaleCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
    end
    object QRYSaleFUNCIONARIO_ID: TIntegerField
      FieldName = 'FUNCIONARIO_ID'
      Origin = 'FUNCIONARIO_ID'
    end
    object QRYSaleDATA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_VENDA'
      Origin = 'DATA_VENDA'
    end
    object QRYSaleTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object QRYSalePAGAMENTO_STATUS: TStringField
      FieldName = 'PAGAMENTO_STATUS'
      Origin = 'PAGAMENTO_STATUS'
    end
    object QRYSaleDATA_PAGAMENTO: TSQLTimeStampField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object QRYSaleFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 50
    end
    object QRYSaleEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Origin = 'EMPRESA_ID'
    end
  end
  object QRYProduct: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM produto WHERE PRODUTO_ID = :product')
    Left = 376
    Top = 64
    ParamData = <
      item
        Name = 'PRODUCT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYProductPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYProductNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object QRYProductDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object QRYProductCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 50
    end
    object QRYProductFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 100
    end
    object QRYProductIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
    object QRYProductDATA_CRIACAO: TSQLTimeStampField
      FieldName = 'DATA_CRIACAO'
      Origin = 'DATA_CRIACAO'
    end
  end
end
