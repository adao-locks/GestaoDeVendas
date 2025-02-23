inherited viewEntity: TviewEntity
  Caption = 'Entity'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitleWindow: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlLogo: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlCloseWindow: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited btnCloseWindow: TButton
        OnClick = btnCloseWindowClick
      end
    end
  end
  inherited pnlFooter: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNew: TSpeedButton
      OnClick = btnNewClick
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
      OnClick = btnDeleteClick
    end
  end
  inherited pnlBackground: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CardPanelList: TCardPanel
      ActiveCard = cardRegister
      StyleElements = [seFont, seClient, seBorder]
      inherited cardSearch: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlSearch: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblSearch: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtSearch: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBGData: TDBGrid
          AlignWithMargins = False
          Left = 0
          Top = 65
          Width = 1020
          Height = 415
          Color = clBlack
          Font.Color = clBlack
          ParentFont = False
          Columns = <
            item
              Expanded = False
              FieldName = 'PEOPLE_ID'
              Title.Caption = 'ID'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = 'Name'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EIN_CNPJ'
              Title.Caption = 'EIN/CNPJ'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PHONE'
              Title.Caption = 'Phone'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Caption = 'Email'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_BIRTH'
              Title.Caption = 'Birthday'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_REGISTER'
              Title.Caption = 'Registered'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENT'
              Title.Caption = 'Client'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMPLOYEE'
              Title.Caption = 'Employee'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUPPLIER'
              Title.Caption = 'Supplier'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRANSPORT'
              Title.Caption = 'Transport'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STREET'
              Title.Caption = 'Street'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMBER_ADDRESS'
              Title.Caption = 'Number'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENT'
              Title.Caption = 'Complement'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CITY'
              Title.Caption = 'City'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEIGHBORHOOD'
              Title.Caption = 'Neighborhood'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATE'
              Title.Caption = 'State'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ZIP_CODE'
              Title.Caption = 'ZIP Code'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FANTASY'
              Title.Caption = 'Fantasy'
              Width = 200
              Visible = True
            end>
        end
      end
      inherited cardRegister: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblPeopleID: TLabel [0]
          Left = 7
          Top = 72
          Width = 70
          Height = 15
          Caption = 'Identification'
          FocusControl = edtPeopleID
        end
        object lblName: TLabel [1]
          Left = 113
          Top = 72
          Width = 32
          Height = 15
          Caption = 'Name'
          FocusControl = edtName
        end
        object lblBirth: TLabel [2]
          Left = 7
          Top = 162
          Width = 44
          Height = 15
          Caption = 'Birthday'
          FocusControl = edtBirthDate
        end
        object lblRegDate: TLabel [3]
          Left = 593
          Top = 72
          Width = 69
          Height = 15
          Caption = 'Register Date'
          FocusControl = edtRegDate
        end
        object lblEIN: TLabel [4]
          Left = 7
          Top = 117
          Width = 50
          Height = 15
          Caption = 'EIN/CNPJ'
          FocusControl = edtEIN
        end
        object lblPhone: TLabel [5]
          Left = 313
          Top = 204
          Width = 34
          Height = 15
          Caption = 'Phone'
          FocusControl = edtPhone
        end
        object lblEmail: TLabel [6]
          Left = 7
          Top = 204
          Width = 34
          Height = 15
          Caption = 'E-mail'
          FocusControl = edtEmail
        end
        object lblFantasy: TLabel [7]
          Left = 113
          Top = 117
          Width = 40
          Height = 15
          Caption = 'Fantasy'
          FocusControl = edtFantasy
        end
        object Label1: TLabel [8]
          Left = 593
          Top = 117
          Width = 22
          Height = 15
          Caption = 'OBS'
          FocusControl = DBEdit1
        end
        object pnlTypePeople: TPanel [9]
          Left = 593
          Top = 260
          Width = 162
          Height = 139
          BevelOuter = bvSpace
          TabOrder = 8
          object lblTypePeople: TLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Width = 150
            Height = 17
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Align = alTop
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 29
          end
          object edtClient: TDBCheckBox
            AlignWithMargins = True
            Left = 11
            Top = 31
            Width = 140
            Height = 17
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alTop
            Caption = 'CLIENT'
            DataField = 'CLIENT'
            DataSource = DSData
            TabOrder = 0
          end
          object edtEmployee: TDBCheckBox
            AlignWithMargins = True
            Left = 11
            Top = 56
            Width = 140
            Height = 17
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alTop
            Caption = 'EMPLOYEE'
            DataField = 'EMPLOYEE'
            DataSource = DSData
            TabOrder = 1
          end
          object edtSupplier: TDBCheckBox
            AlignWithMargins = True
            Left = 11
            Top = 81
            Width = 140
            Height = 17
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alTop
            Caption = 'SUPPLIER'
            DataField = 'SUPPLIER'
            DataSource = DSData
            TabOrder = 2
          end
          object edtTransport: TDBCheckBox
            AlignWithMargins = True
            Left = 11
            Top = 106
            Width = 140
            Height = 17
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alTop
            Caption = 'TRANSPORT'
            DataField = 'TRANSPORT'
            DataSource = DSData
            TabOrder = 3
          end
        end
        inherited pnlRegister: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblRegister: TLabel
            Width = 1005
            Caption = 'Register Entity'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 119
          end
        end
        object edtPeopleID: TDBEdit
          Left = 7
          Top = 88
          Width = 100
          Height = 23
          DataField = 'PEOPLE_ID'
          DataSource = DSData
          ReadOnly = True
          TabOrder = 1
        end
        object edtName: TDBEdit
          Left = 113
          Top = 88
          Width = 450
          Height = 23
          CharCase = ecUpperCase
          DataField = 'NAME'
          DataSource = DSData
          TabOrder = 2
        end
        object edtBirthDate: TDBEdit
          Left = 7
          Top = 178
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DATE_BIRTH'
          DataSource = DSData
          TabOrder = 3
        end
        object edtRegDate: TDBEdit
          Left = 593
          Top = 88
          Width = 154
          Height = 23
          Color = cl3DLight
          DataField = 'DATE_REGISTER'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtEIN: TDBEdit
          Left = 7
          Top = 133
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'EIN_CNPJ'
          DataSource = DSData
          TabOrder = 5
        end
        object edtPhone: TDBEdit
          Left = 313
          Top = 220
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PHONE'
          DataSource = DSData
          TabOrder = 6
        end
        object edtEmail: TDBEdit
          Left = 7
          Top = 220
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DSData
          TabOrder = 7
        end
        object pnlAddress: TPanel
          Left = 7
          Top = 260
          Width = 573
          Height = 183
          BevelOuter = bvSpace
          TabOrder = 9
          object lblTitleAddress: TLabel
            AlignWithMargins = True
            Left = 6
            Top = 6
            Width = 561
            Height = 17
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Align = alTop
            Caption = 'Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 49
          end
          object lblZIPCode: TLabel
            Left = 8
            Top = 35
            Width = 48
            Height = 15
            Caption = 'ZIP Code'
            FocusControl = edtZIPCode
          end
          object lblComplement: TLabel
            Left = 114
            Top = 35
            Width = 70
            Height = 15
            Caption = 'Complement'
            FocusControl = edtComplement
          end
          object lblState: TLabel
            Left = 8
            Top = 80
            Width = 26
            Height = 15
            Caption = 'State'
            FocusControl = edtState
          end
          object lblCity: TLabel
            Left = 48
            Top = 80
            Width = 21
            Height = 15
            Caption = 'City'
            FocusControl = edtCity
          end
          object lblNeighborhood: TLabel
            Left = 254
            Top = 80
            Width = 78
            Height = 15
            Caption = 'Neighborhood'
            FocusControl = edtNeighborhood
          end
          object lblStreet: TLabel
            Left = 8
            Top = 128
            Width = 30
            Height = 15
            Caption = 'Street'
            FocusControl = edtStreet
          end
          object lblNumberAddress: TLabel
            Left = 264
            Top = 128
            Width = 89
            Height = 15
            Caption = 'Number Address'
            FocusControl = edtNumberAddress
          end
          object edtZIPCode: TDBEdit
            Left = 8
            Top = 51
            Width = 100
            Height = 23
            CharCase = ecUpperCase
            DataField = 'ZIP_CODE'
            DataSource = DSData
            TabOrder = 0
          end
          object edtComplement: TDBEdit
            Left = 114
            Top = 51
            Width = 450
            Height = 23
            CharCase = ecUpperCase
            DataField = 'COMPLEMENT'
            DataSource = DSData
            TabOrder = 1
          end
          object edtState: TDBEdit
            Left = 8
            Top = 96
            Width = 34
            Height = 23
            CharCase = ecUpperCase
            DataField = 'STATE'
            DataSource = DSData
            TabOrder = 2
          end
          object edtCity: TDBEdit
            Left = 48
            Top = 96
            Width = 200
            Height = 23
            CharCase = ecUpperCase
            DataField = 'CITY'
            DataSource = DSData
            TabOrder = 3
          end
          object edtNeighborhood: TDBEdit
            Left = 254
            Top = 96
            Width = 200
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NEIGHBORHOOD'
            DataSource = DSData
            TabOrder = 4
          end
          object edtStreet: TDBEdit
            Left = 8
            Top = 144
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            DataField = 'STREET'
            DataSource = DSData
            TabOrder = 5
          end
          object edtNumberAddress: TDBEdit
            Left = 264
            Top = 144
            Width = 154
            Height = 23
            CharCase = ecUpperCase
            DataField = 'NUMBER_ADDRESS'
            DataSource = DSData
            TabOrder = 6
          end
        end
        object edtFantasy: TDBEdit
          Left = 113
          Top = 133
          Width = 450
          Height = 23
          CharCase = ecUpperCase
          DataField = 'FANTASY'
          DataSource = DSData
          TabOrder = 10
        end
        object DBEdit1: TDBEdit
          Left = 593
          Top = 133
          Width = 351
          Height = 23
          CharCase = ecUpperCase
          DataField = 'OBS'
          DataSource = DSData
          TabOrder = 11
        end
      end
    end
  end
  inherited imgList: TImageList
    Left = 808
    Top = 65528
  end
  inherited DSData: TDataSource
    DataSet = ServiceRegister.QRYEntity
    Left = 890
    Top = 65531
  end
end
