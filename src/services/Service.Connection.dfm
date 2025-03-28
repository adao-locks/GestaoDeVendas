object ServiceConnection: TServiceConnection
  OnCreate = DataModuleCreate
  Height = 224
  Width = 431
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\database\SalesPlus\DATABASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 64
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 272
    Top = 56
  end
  object QRYEnterprise: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM COMPANY WHERE ID_COM = :CODIGO')
    Left = 208
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYEnterpriseID_COM: TStringField
      FieldName = 'ID_COM'
      Origin = 'ID_COM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QRYEnterpriseACTIVE: TBooleanField
      FieldName = 'ACTIVE'
      Origin = '"ACTIVE"'
    end
    object QRYEnterpriseHEADQUARTERS: TBooleanField
      FieldName = 'HEADQUARTERS'
      Origin = 'HEADQUARTERS'
    end
    object QRYEnterpriseCOMPANY_NAME: TStringField
      FieldName = 'COMPANY_NAME'
      Origin = 'COMPANY_NAME'
      Required = True
      Size = 255
    end
    object QRYEnterpriseFANTASY: TStringField
      FieldName = 'FANTASY'
      Origin = 'FANTASY'
      Required = True
      Size = 255
    end
    object QRYEnterpriseEIN_CNPJ: TStringField
      FieldName = 'EIN_CNPJ'
      Origin = 'EIN_CNPJ'
      Required = True
    end
    object QRYEnterprisePHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      Size = 15
    end
    object QRYEnterpriseEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QRYEnterpriseDATE_REGISTER: TDateField
      FieldName = 'DATE_REGISTER'
      Origin = 'DATE_REGISTER'
    end
    object QRYEnterpriseSTREET: TStringField
      FieldName = 'STREET'
      Origin = 'STREET'
      Size = 100
    end
    object QRYEnterpriseCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 60
    end
    object QRYEnterpriseSTATE: TStringField
      FieldName = 'STATE'
      Origin = 'STATE'
      Size = 60
    end
    object QRYEnterpriseZIP: TStringField
      FieldName = 'ZIP'
      Origin = 'ZIP'
      Size = 9
    end
    object QRYEnterpriseADDRESS_NUMBER: TStringField
      FieldName = 'ADDRESS_NUMBER'
      Origin = 'ADDRESS_NUMBER'
      Size = 10
    end
    object QRYEnterpriseSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object QRYEnterpriseID_USER: TIntegerField
      FieldName = 'ID_USER'
      Origin = 'ID_USER'
    end
  end
  object QRYUsers: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM USERS WHERE ID = :CODIGO')
    Left = 64
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYUsersID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYUsersNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object QRYUsersMASTER: TStringField
      FieldName = 'MASTER'
      Origin = 'MASTER'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRYUsersPASSWORD: TBlobField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
    object QRYUsersSTATUS: TBooleanField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object QRYUsersFUNCTION: TStringField
      FieldName = 'FUNCTION'
      Origin = '"FUNCTION"'
      Size = 100
    end
  end
end
