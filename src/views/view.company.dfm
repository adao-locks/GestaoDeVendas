inherited viewCompany: TviewCompany
  Caption = 'viewCompany'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = nil
  TextHeight = 15
  inherited pnlTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitleWindow: TLabel
      Width = 868
      Height = 35
      Caption = 'Empresa'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 60
    end
    inherited pnlLogo: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlCloseWindow: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlFooter: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNew: TSpeedButton
      Visible = False
    end
    inherited btnEdit: TSpeedButton
      OnClick = btnEditClick
    end
    inherited btnSave: TSpeedButton
      OnClick = btnSaveClick
    end
    inherited btnCancel: TSpeedButton
      OnClick = btnCancelClick
    end
    inherited btnDelete: TSpeedButton
      Visible = False
    end
    inherited btnCloseWindow: TSpeedButton
      Flat = True
      OnClick = btnCloseWindowClick
    end
  end
  inherited pnlBackground: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CardPanelList: TCardPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited cardSearch: TCard
        CardVisible = False
        Enabled = False
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlSearch: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblSearch: TLabel
            Width = 1005
            StyleElements = [seFont, seClient, seBorder]
          end
        end
      end
      inherited cardRegister: TCard
        StyleElements = [seFont, seClient, seBorder]
        object Label1: TLabel [0]
          Left = 15
          Top = 83
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = edtIDCom
        end
        object Label2: TLabel [1]
          Left = 15
          Top = 128
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = edtComName
        end
        object Label3: TLabel [2]
          Left = 15
          Top = 176
          Width = 43
          Height = 15
          Caption = 'Fantasia'
          FocusControl = edtFantasy
        end
        object Label4: TLabel [3]
          Left = 15
          Top = 224
          Width = 27
          Height = 15
          Caption = 'CNPJ'
          FocusControl = edtEIN
        end
        object Label5: TLabel [4]
          Left = 215
          Top = 224
          Width = 86
          Height = 15
          Caption = 'Telefone/Celular'
          FocusControl = edtPhone
        end
        object Label6: TLabel [5]
          Left = 15
          Top = 272
          Width = 29
          Height = 15
          Caption = 'Email'
          FocusControl = edtEmail
        end
        object Label7: TLabel [6]
          Left = 448
          Top = 83
          Width = 72
          Height = 15
          Caption = 'Data cadastro'
        end
        object Label8: TLabel [7]
          Left = 448
          Top = 176
          Width = 20
          Height = 15
          Caption = 'Rua'
          FocusControl = edtStreet
        end
        object Label9: TLabel [8]
          Left = 484
          Top = 224
          Width = 37
          Height = 15
          Caption = 'Cidade'
          FocusControl = edtCity
        end
        object Label10: TLabel [9]
          Left = 448
          Top = 224
          Width = 14
          Height = 15
          Caption = 'UF'
          FocusControl = edtState
        end
        object Label11: TLabel [10]
          Left = 448
          Top = 128
          Width = 21
          Height = 15
          Caption = 'CEP'
          FocusControl = edtZip
        end
        object Label13: TLabel [11]
          Left = 15
          Top = 317
          Width = 19
          Height = 15
          Caption = 'Site'
          FocusControl = edtSite
        end
        object Label14: TLabel [12]
          Left = 608
          Top = 83
          Width = 40
          Height = 15
          Caption = 'Usu'#225'rio'
          FocusControl = edtUser
        end
        object Label12: TLabel [13]
          Left = 608
          Top = 128
          Width = 44
          Height = 15
          Caption = 'N'#250'mero'
          FocusControl = edtNum
        end
        inherited pnlRegister: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblRegister: TLabel
            Width = 1005
            Caption = 'Cadastro da empresa'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 178
          end
        end
        object cbActive: TDBCheckBox
          Left = 194
          Top = 102
          Width = 61
          Height = 17
          Caption = 'Ativo'
          DataField = 'ACTIVE'
          DataSource = DSData
          Enabled = False
          TabOrder = 13
        end
        object edtIDCom: TDBEdit
          Left = 15
          Top = 99
          Width = 154
          Height = 23
          DataField = 'ID_COM'
          DataSource = DSData
          Enabled = False
          TabOrder = 1
        end
        object cbHeadquarters: TDBCheckBox
          Left = 303
          Top = 102
          Width = 112
          Height = 17
          Caption = 'Matriz'
          DataField = 'HEADQUARTERS'
          DataSource = DSData
          Enabled = False
          TabOrder = 14
        end
        object edtComName: TDBEdit
          Left = 15
          Top = 144
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'COMPANY_NAME'
          DataSource = DSData
          Enabled = False
          TabOrder = 2
        end
        object edtFantasy: TDBEdit
          Left = 15
          Top = 192
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'FANTASY'
          DataSource = DSData
          Enabled = False
          TabOrder = 3
        end
        object edtEIN: TDBEdit
          Left = 15
          Top = 240
          Width = 194
          Height = 23
          CharCase = ecUpperCase
          DataField = 'EIN_CNPJ'
          DataSource = DSData
          Enabled = False
          TabOrder = 4
        end
        object edtPhone: TDBEdit
          Left = 215
          Top = 240
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PHONE'
          DataSource = DSData
          Enabled = False
          TabOrder = 12
        end
        object edtEmail: TDBEdit
          Left = 15
          Top = 288
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DSData
          Enabled = False
          TabOrder = 5
        end
        object edtStreet: TDBEdit
          Left = 448
          Top = 192
          Width = 314
          Height = 23
          CharCase = ecUpperCase
          DataField = 'STREET'
          DataSource = DSData
          Enabled = False
          TabOrder = 9
        end
        object edtCity: TDBEdit
          Left = 484
          Top = 240
          Width = 278
          Height = 23
          CharCase = ecUpperCase
          DataField = 'CITY'
          DataSource = DSData
          Enabled = False
          TabOrder = 11
        end
        object edtState: TDBEdit
          Left = 448
          Top = 240
          Width = 30
          Height = 23
          CharCase = ecUpperCase
          DataField = 'STATE'
          DataSource = DSData
          Enabled = False
          TabOrder = 10
        end
        object edtZip: TDBEdit
          Left = 448
          Top = 144
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'ZIP'
          DataSource = DSData
          Enabled = False
          TabOrder = 7
        end
        object edtSite: TDBEdit
          Left = 15
          Top = 333
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'SITE'
          DataSource = DSData
          Enabled = False
          TabOrder = 6
        end
        object edtUser: TDBEdit
          Left = 608
          Top = 99
          Width = 154
          Height = 23
          DataField = 'ID_USER'
          DataSource = DSData
          Enabled = False
          TabOrder = 15
        end
        object edtNum: TDBEdit
          Left = 608
          Top = 144
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'ADDRESS_NUMBER'
          DataSource = DSData
          Enabled = False
          TabOrder = 8
        end
        object DTReg: TDateTimePicker
          Left = 448
          Top = 99
          Width = 154
          Height = 23
          Date = 45747.000000000000000000
          Format = 'dd/MM/yyy'
          Time = 0.920974710650625600
          Enabled = False
          TabOrder = 16
        end
      end
    end
  end
  inherited DSData: TDataSource
    DataSet = ServiceConnection.QRYEnterprise
  end
end
