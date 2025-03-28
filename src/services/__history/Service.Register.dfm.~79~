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
    object QRYEntityCOM_ID: TStringField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Size = 4
    end
    object QRYEntityUSER: TStringField
      FieldName = 'USER'
      Origin = '"USER"'
      Size = 100
    end
    object QRYEntityTYPE_PERSON: TStringField
      FieldName = 'TYPE_PERSON'
      Origin = 'TYPE_PERSON'
      FixedChar = True
      Size = 1
    end
  end
  object QRYLogs: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM LOGS WHERE 1=1')
    Left = 32
    Top = 136
    object QRYLogsLANCTO: TIntegerField
      FieldName = 'LANCTO'
      Origin = 'LANCTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYLogsUSER: TStringField
      FieldName = 'USER'
      Origin = '"USER"'
      Size = 100
    end
    object QRYLogsDATE: TSQLTimeStampField
      FieldName = 'DATE'
      Origin = '"DATE"'
    end
    object QRYLogsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 255
    end
    object QRYLogsPAGE: TStringField
      FieldName = 'PAGE'
      Origin = '"PAGE"'
      Size = 100
    end
    object QRYLogsCOMPANY: TIntegerField
      FieldName = 'COMPANY'
      Origin = 'COMPANY'
    end
  end
  object QRYSale: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM SALE WHERE 1=1')
    Left = 32
    Top = 80
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
    object QRYSalePROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'PROD_ID'
    end
    object QRYSaleUNIT: TIntegerField
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object QRYSaleTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object QRYSaleQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object QRYSaleADDITION: TIntegerField
      FieldName = 'ADDITION'
      Origin = 'ADDITION'
    end
    object QRYSaleDISCOUNT: TIntegerField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object QRYSaleSUBTOTAL: TIntegerField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object QRYSaleDATE_PAYMENT: TSQLTimeStampField
      FieldName = 'DATE_PAYMENT'
      Origin = 'DATE_PAYMENT'
    end
    object QRYSalePAID: TBooleanField
      FieldName = 'PAID'
      Origin = 'PAID'
    end
    object QRYSaleCASH: TBooleanField
      FieldName = 'CASH'
      Origin = 'CASH'
    end
    object QRYSaleCHANGE: TIntegerField
      FieldName = 'CHANGE'
      Origin = 'CHANGE'
    end
    object QRYSaleINSTALLMENT: TBooleanField
      FieldName = 'INSTALLMENT'
      Origin = 'INSTALLMENT'
    end
    object QRYSaleSQLTimeStampField1ST_INSTALLMENT: TSQLTimeStampField
      FieldName = '1ST_INSTALLMENT'
      Origin = '"1ST_INSTALLMENT"'
    end
    object QRYSaleINSTALLMENT_VALUE: TIntegerField
      FieldName = 'INSTALLMENT_VALUE'
      Origin = 'INSTALLMENT_VALUE'
    end
    object QRYSaleINSTALLMENT_AMOUNT: TIntegerField
      FieldName = 'INSTALLMENT_AMOUNT'
      Origin = 'INSTALLMENT_AMOUNT'
    end
    object QRYSaleDATE_UPDATED: TSQLTimeStampField
      FieldName = 'DATE_UPDATED'
      Origin = 'DATE_UPDATED'
    end
    object QRYSaleUSER: TStringField
      FieldName = 'USER'
      Origin = '"USER"'
      Size = 100
    end
    object QRYSaleDATE_SALE: TSQLTimeStampField
      FieldName = 'DATE_SALE'
      Origin = 'DATE_SALE'
    end
    object QRYSaleOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object QRYSaleCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
  end
  object QRYProduct: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT * FROM PRODUCT WHERE PROD_ID = :PRODUCT')
    Left = 32
    Top = 192
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
    object QRYProductUSER: TStringField
      FieldName = 'USER'
      Origin = '"USER"'
      Size = 100
    end
    object QRYProductCOM_ID: TStringField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Size = 4
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
    Top = 192
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
  object QRYIDSale: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECt max(SALE_ID) MAXID FROM SALE WHERE 1=1')
    Left = 88
    Top = 80
    object QRYIDSaleMAXID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAXID'
      Origin = 'MAXID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRYNamePeople: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT NAME FROM PEOPLE WHERE PEOPLE_ID = :ID')
    Left = 192
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYNamePeopleNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
  end
  object QRYNameProduct: TFDQuery
    Connection = ServiceConnection.FDConn
    SQL.Strings = (
      'SELECT NAME FROM PRODUCT WHERE PROD_ID = :PROD_ID')
    Left = 192
    Top = 192
    ParamData = <
      item
        Name = 'PROD_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYNameProductNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
  end
end
