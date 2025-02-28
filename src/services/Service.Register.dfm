object ServiceRegister: TServiceRegister
  Height = 330
  Width = 677
  object QRYEntity: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM PEOPLE WHERE PEOPLE_ID = :PEOPLE')
    Left = 32
    Top = 24
    ParamData = <
      item
        Name = 'PEOPLE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYEntityPEOPLE_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PEOPLE_ID'
      Origin = 'PEOPLE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYEntityNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
    object QRYEntityEIN_CNPJ: TStringField
      FieldName = 'EIN_CNPJ'
      Origin = 'EIN_CNPJ'
    end
    object QRYEntityPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Size = 15
    end
    object QRYEntityEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRYEntityDATE_BIRTH: TDateField
      FieldName = 'DATE_BIRTH'
      Origin = 'DATE_BIRTH'
    end
    object QRYEntityDATE_REGISTER: TDateField
      FieldName = 'DATE_REGISTER'
      Origin = 'DATE_REGISTER'
    end
    object QRYEntityCLIENT: TBooleanField
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      Required = True
    end
    object QRYEntityEMPLOYEE: TBooleanField
      FieldName = 'EMPLOYEE'
      Origin = 'EMPLOYEE'
      Required = True
    end
    object QRYEntitySUPPLIER: TBooleanField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Required = True
    end
    object QRYEntityTRANSPORT: TBooleanField
      FieldName = 'TRANSPORT'
      Origin = 'TRANSPORT'
      Required = True
    end
    object QRYEntitySTREET: TStringField
      FieldName = 'STREET'
      Origin = 'STREET'
      Size = 150
    end
    object QRYEntityNUMBER_ADDRESS: TStringField
      FieldName = 'NUMBER_ADDRESS'
      Origin = 'NUMBER_ADDRESS'
      Size = 10
    end
    object QRYEntityCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Origin = 'COMPLEMENT'
      Size = 255
    end
    object QRYEntityCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 100
    end
    object QRYEntityNEIGHBORHOOD: TStringField
      FieldName = 'NEIGHBORHOOD'
      Origin = 'NEIGHBORHOOD'
      Size = 100
    end
    object QRYEntitySTATE: TStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      Size = 2
    end
    object QRYEntityZIP_CODE: TStringField
      FieldName = 'ZIP_CODE'
      Origin = 'ZIP_CODE'
      Size = 10
    end
    object QRYEntityFANTASY: TStringField
      FieldName = 'FANTASY'
      Origin = 'FANTASY'
      Size = 150
    end
    object QRYEntityOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object QRYEntityDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
  end
  object QRYStock: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM STOCK WHERE STOCK_ID = :ITEM')
    Left = 32
    Top = 136
    ParamData = <
      item
        Name = 'ITEM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYStockSTOCK_ID: TIntegerField
      FieldName = 'STOCK_ID'
      Origin = 'STOCK_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYStockPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
      Required = True
    end
    object QRYStockQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object QRYStockCOST_PRICE: TFMTBCDField
      FieldName = 'COST_PRICE'
      Origin = 'COST_PRICE'
      Precision = 18
      Size = 2
    end
    object QRYStockSALE_PRICE: TFMTBCDField
      FieldName = 'SALE_PRICE'
      Origin = 'SALE_PRICE'
      Precision = 18
      Size = 2
    end
    object QRYStockDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
    object QRYStockSKU: TStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      Size = 50
    end
    object QRYStockEAN13: TStringField
      FieldName = 'EAN13'
      Origin = 'EAN13'
      Size = 100
    end
    object QRYStockMIN_QTDE: TIntegerField
      FieldName = 'MIN_QTDE'
      Origin = 'MIN_QTDE'
    end
    object QRYStockMAX_QTDE: TIntegerField
      FieldName = 'MAX_QTDE'
      Origin = 'MAX_QTDE'
    end
    object QRYStockBATCH: TStringField
      FieldName = 'BATCH'
      Origin = 'BATCH'
    end
    object QRYStockWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
      Origin = 'WEIGHT'
    end
    object QRYStockCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QRYStockSIZE: TStringField
      FieldName = 'SIZE'
      Origin = '"SIZE"'
      Size = 10
    end
    object QRYStockEMP_ID: TIntegerField
      FieldName = 'EMP_ID'
      Origin = 'EMP_ID'
    end
    object QRYStockDATE_REGISTER: TSQLTimeStampField
      FieldName = 'DATE_REGISTER'
      Origin = 'DATE_REGISTER'
    end
  end
  object QRYSaleItens: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM ITEMS_SALE WHERE ITEM_ID = :CODE')
    Left = 32
    Top = 192
    ParamData = <
      item
        Name = 'CODE'
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
    object QRYSaleItensSALE_ID: TIntegerField
      FieldName = 'SALE_ID'
      Origin = 'SALE_ID'
    end
    object QRYSaleItensPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
    end
    object QRYSaleItensQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
    end
    object QRYSaleItensUNIT_PRICE: TFMTBCDField
      FieldName = 'UNIT_PRICE'
      Origin = 'UNIT_PRICE'
      Precision = 18
      Size = 2
    end
    object QRYSaleItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object QRYSaleItensDISCOUNT: TIntegerField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object QRYSaleItensADDITION: TIntegerField
      FieldName = 'ADDITION'
      Origin = 'ADDITION'
    end
    object QRYSaleItensSUBTOTAL: TIntegerField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object QRYSaleItensOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object QRYSaleItensDATE_REGISTER: TSQLTimeStampField
      FieldName = 'DATE_REGISTER'
      Origin = 'DATE_REGISTER'
    end
    object QRYSaleItensDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
  end
  object QRYSale: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM SALE WHERE SALE_ID = :SALE')
    Left = 32
    Top = 80
    ParamData = <
      item
        Name = 'SALE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYSaleSALE_ID: TIntegerField
      FieldName = 'SALE_ID'
      Origin = 'SALE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYSaleCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'CLIENT_ID'
    end
    object QRYSaleEMPLOYEE_ID: TIntegerField
      FieldName = 'EMPLOYEE_ID'
      Origin = 'EMPLOYEE_ID'
    end
    object QRYSaleDATE_SALE: TSQLTimeStampField
      FieldName = 'DATE_SALE'
      Origin = 'DATE_SALE'
    end
    object QRYSaleTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object QRYSalePAYMENT_DATE: TSQLTimeStampField
      FieldName = 'PAYMENT_DATE'
      Origin = 'PAYMENT_DATE'
    end
    object QRYSalePAYMENT_METHOD: TStringField
      FieldName = 'PAYMENT_METHOD'
      Origin = 'PAYMENT_METHOD'
      Size = 50
    end
    object QRYSaleCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QRYSaleBUDGET: TBooleanField
      FieldName = 'BUDGET'
      Origin = 'BUDGET'
    end
    object QRYSaleINSTALLMENT: TBooleanField
      FieldName = 'INSTALLMENT'
      Origin = 'INSTALLMENT'
    end
    object QRYSaleCASH: TBooleanField
      FieldName = 'CASH'
      Origin = 'CASH'
    end
    object QRYSaleSUBTOTAL: TIntegerField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object QRYSalePAID: TBooleanField
      FieldName = 'PAID'
      Origin = 'PAID'
    end
    object QRYSaleDISCOUNT: TIntegerField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object QRYSaleADDITION: TIntegerField
      FieldName = 'ADDITION'
      Origin = 'ADDITION'
    end
    object QRYSaleCHANGE: TIntegerField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
    end
    object QRYSaleINSTALLMENT_AMOUNT: TIntegerField
      FieldName = 'INSTALLMENT_AMOUNT'
      Origin = 'INSTALLMENT_AMOUNT'
    end
    object QRYSaleINSTALLMENT_VALUE: TIntegerField
      FieldName = 'INSTALLMENT_VALUE'
      Origin = 'INSTALLMENT_VALUE'
    end
    object QRYSaleSQLTimeStampField1ST_INSTALLMENT: TSQLTimeStampField
      FieldName = '1ST_INSTALLMENT'
      Origin = '"1ST_INSTALLMENT"'
    end
    object QRYSaleLATE_DATE: TSQLTimeStampField
      FieldName = 'LATE_DATE'
      Origin = 'LATE_DATE'
    end
    object QRYSaleUPDATE_DATE: TSQLTimeStampField
      FieldName = 'UPDATE_DATE'
      Origin = 'UPDATE_DATE'
    end
    object QRYSaleOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object QRYSaleDATE_PAYMENT: TSQLTimeStampField
      FieldName = 'DATE_PAYMENT'
      Origin = 'DATE_PAYMENT'
    end
    object QRYSaleDATE_LATE: TSQLTimeStampField
      FieldName = 'DATE_LATE'
      Origin = 'DATE_LATE'
    end
    object QRYSaleDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
  end
  object QRYProduct: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM PRODUCT WHERE PROD_ID = :PRODUCT')
    Left = 32
    Top = 248
    ParamData = <
      item
        Name = 'PRODUCT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYProductPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYProductNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
    object QRYProductDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 255
    end
    object QRYProductCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 50
    end
    object QRYProductSUPPLIER: TStringField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
      Size = 100
    end
    object QRYProductACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = '"ACTIVE"'
    end
    object QRYProductDATE_REGISTER: TSQLTimeStampField
      FieldName = 'DATE_REGISTER'
      Origin = 'DATE_REGISTER'
    end
    object QRYProductBRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'BRAND'
      Size = 60
    end
    object QRYProductUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 10
    end
    object QRYProductDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
    object QRYProductUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object QRYProductUSER_UPDATE: TIntegerField
      FieldName = 'USER_UPDATE'
      Origin = 'USER_UPDATE'
    end
  end
  object QRYIDPeople: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT max(PEOPLE_ID) MAXID FROM PEOPLE')
    Left = 104
    Top = 24
    object QRYIDPeopleMAXID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAXID'
      Origin = 'MAXID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRYIDProd: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT max(PROD_ID) MAXID FROM PRODUCT WHERE PROD_ID = :PRODUCT')
    Left = 104
    Top = 248
    ParamData = <
      item
        Name = 'PRODUCT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYIDProdMAXID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAXID'
      Origin = 'MAXID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
