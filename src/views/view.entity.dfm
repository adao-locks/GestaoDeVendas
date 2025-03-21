inherited viewEntity: TviewEntity
  Caption = 'Entity'
  Position = poDesigned
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitleWindow: TLabel
      Width = 868
      Height = 35
      Caption = 'Entities'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 868
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
      StyleElements = [seFont, seClient, seBorder]
      inherited cardSearch: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlSearch: TPanel
          Height = 169
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 169
          inherited lblSearch: TLabel
            Width = 1005
            Caption = 'Search Entity'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 109
          end
          object lblDateRegAsk: TLabel
            Left = 15
            Top = 41
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Date Register: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblNameAsk: TLabel
            Left = 15
            Top = 68
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Name: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblFantasyAsk: TLabel
            Left = 15
            Top = 92
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasy: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblZipAsk: TLabel
            Left = 292
            Top = 67
            Width = 65
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'ZIP Code: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblStateAsk: TLabel
            Left = 292
            Top = 91
            Width = 65
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'State: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblCityAsk: TLabel
            Left = 292
            Top = 115
            Width = 65
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'City: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblDateBirthAsk: TLabel
            Left = 292
            Top = 43
            Width = 65
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Between: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblPhoneAsk: TLabel
            Left = 14
            Top = 116
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Phone: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblEmailAsk: TLabel
            Left = 14
            Top = 140
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'E-mail: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblStreetAsk: TLabel
            Left = 292
            Top = 139
            Width = 65
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Street: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtFantasyAsk: TSearchBox
            AlignWithMargins = True
            Left = 110
            Top = 92
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object edtNameAsk: TSearchBox
            AlignWithMargins = True
            Left = 110
            Top = 68
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object edtZIPAsk: TSearchBox
            AlignWithMargins = True
            Left = 362
            Top = 68
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object edtStateAsk: TSearchBox
            AlignWithMargins = True
            Left = 362
            Top = 92
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edtCityAsk: TSearchBox
            AlignWithMargins = True
            Left = 362
            Top = 116
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object edtPhoneAsk: TSearchBox
            AlignWithMargins = True
            Left = 111
            Top = 116
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object edtEmailAsk: TSearchBox
            AlignWithMargins = True
            Left = 111
            Top = 140
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 6
          end
          object edtStreetAsk: TSearchBox
            AlignWithMargins = True
            Left = 362
            Top = 140
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object btnConsult: TButton
            Left = 520
            Top = 132
            Width = 97
            Height = 25
            Caption = 'Consult'
            TabOrder = 8
            OnClick = btnConsultClick
          end
        end
        inherited DBGData: TDBGrid
          AlignWithMargins = False
          Left = 0
          Top = 169
          Width = 1020
          Height = 311
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
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EIN_CNPJ'
              Title.Caption = 'EIN/CNPJ'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PHONE'
              Title.Caption = 'Phone'
              Width = 85
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
              FieldName = 'ZIP_CODE'
              Title.Caption = 'ZIP Code'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATE'
              Title.Caption = 'State'
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
              FieldName = 'NEIGHBORHOOD'
              Title.Caption = 'Neighborhood'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENT'
              Title.Caption = 'Complement'
              Width = 100
              Visible = True
            end>
        end
        object edtDateReg: TDateTimePicker
          Left = 110
          Top = 39
          Width = 145
          Height = 23
          Cursor = crHandPoint
          BevelInner = bvNone
          BevelOuter = bvNone
          Date = 36526.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.909075833333190500
          TabOrder = 2
        end
        object edtDateReg2: TDateTimePicker
          Left = 362
          Top = 39
          Width = 145
          Height = 23
          Cursor = crHandPoint
          BevelInner = bvNone
          BevelOuter = bvNone
          Date = 54789.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.909075833333190500
          TabOrder = 3
        end
      end
      inherited cardRegister: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblPeopleID: TLabel [0]
          Left = 7
          Top = 72
          Width = 11
          Height = 15
          Caption = 'ID'
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
          Left = 227
          Top = 117
          Width = 44
          Height = 15
          Caption = 'Birthday'
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
          Left = 121
          Top = 118
          Width = 50
          Height = 15
          Caption = 'EIN/CNPJ'
        end
        object lblPhone: TLabel [5]
          Left = 313
          Top = 207
          Width = 34
          Height = 15
          Caption = 'Phone'
          FocusControl = edtPhone
        end
        object lblEmail: TLabel [6]
          Left = 7
          Top = 207
          Width = 34
          Height = 15
          Caption = 'E-mail'
          FocusControl = edtEmail
        end
        object lblFantasy: TLabel [7]
          Left = 6
          Top = 161
          Width = 40
          Height = 15
          Caption = 'Fantasy'
          FocusControl = edtFantasy
        end
        object Label1: TLabel [8]
          Left = 593
          Top = 116
          Width = 22
          Height = 15
          Caption = 'OBS'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [9]
          Left = 695
          Top = 72
          Width = 61
          Height = 15
          Caption = 'Last update'
          FocusControl = edtUpDate
        end
        object pnlTypePeople: TPanel [10]
          Left = 593
          Top = 263
          Width = 162
          Height = 139
          BevelOuter = bvSpace
          TabOrder = 6
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
          Cursor = crHandPoint
          Color = cl3DLight
          DataField = 'PEOPLE_ID'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtName: TDBEdit
          Left = 113
          Top = 88
          Width = 450
          Height = 23
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'NAME'
          DataSource = DSData
          TabOrder = 2
        end
        object edtRegDate: TDBEdit
          Left = 593
          Top = 88
          Width = 96
          Height = 23
          Color = cl3DLight
          DataField = 'DATE_REGISTER'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtPhone: TDBEdit
          Left = 313
          Top = 223
          Width = 150
          Height = 23
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'PHONE'
          DataSource = DSData
          TabOrder = 4
        end
        object edtEmail: TDBEdit
          Left = 7
          Top = 223
          Width = 300
          Height = 23
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DSData
          TabOrder = 5
        end
        object pnlAddress: TPanel
          Left = 7
          Top = 263
          Width = 573
          Height = 183
          BevelOuter = bvSpace
          TabOrder = 7
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
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
            Cursor = crHandPoint
            CharCase = ecUpperCase
            DataField = 'NUMBER_ADDRESS'
            DataSource = DSData
            TabOrder = 6
          end
        end
        object edtFantasy: TDBEdit
          Left = 6
          Top = 177
          Width = 450
          Height = 23
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'FANTASY'
          DataSource = DSData
          TabOrder = 8
        end
        object DBEdit1: TDBEdit
          Left = 593
          Top = 132
          Width = 296
          Height = 23
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'OBS'
          DataSource = DSData
          TabOrder = 9
        end
        object edtUpDate: TDBEdit
          Left = 695
          Top = 88
          Width = 96
          Height = 23
          Color = cl3DLight
          DataField = 'DATE_UPDATED'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 10
        end
        object dtBirthday: TDateTimePicker
          Left = 227
          Top = 134
          Width = 90
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          Date = 29221.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.795439814814017200
          TabOrder = 11
        end
        object edtEIN: TMaskEdit
          Left = 121
          Top = 134
          Width = 100
          Height = 23
          TabOrder = 12
          Text = ''
          OnChange = edtEINChange
        end
        object rbPP: TRadioButton
          Left = 7
          Top = 117
          Width = 104
          Height = 17
          Caption = 'Physical Person'
          TabOrder = 13
          OnClick = rbPPClick
        end
        object rbLE: TRadioButton
          Left = 7
          Top = 140
          Width = 113
          Height = 17
          Caption = 'Legal Entity'
          TabOrder = 14
          OnClick = rbLEClick
        end
      end
    end
  end
  inherited imgList: TImageList
    Top = 65528
    Bitmap = {
      494C010107000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00F5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000006700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FB000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000BA0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FC00000036000000000000000000000000000000FD0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000037000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FB000000FF000000FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000660000000000000015000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000004C000000FF000000FC000000000000000000000000000000000000
      0001000000D4000000FF000000FF000000FF000000FF000000FF000000620000
      0000000000FB000000FF000000FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000087000000FF000000F20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004C000000FF000000FF0000000000000053000000FF0000
      00AD000000000000000D000000FF0000005700000000000000F7000000D70000
      000000000000000000FF000000FF000000000000000000000000000000360000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F3000000FF000000190000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000024000000FF000000FF000000FB000000FF000000F70000
      000000000000000000FF000000FF00000000000000000000001F000000FF0000
      00FF000000B3000000000000000000000000000000000000001D000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000B000000FF0000005700000000000000F7000000D60000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000055000000FF000000FF000000FC000000000000
      000000000000000000FF000000FF0000000000000000000000FF000000FF0000
      0082000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000005B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000001F000000FF000000FF000000FB000000FF000000F70000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000FB000000FF000000FF000000FF000000570000
      000000000000000000FF000000FF000000000000003D000000FF000000FD0000
      0000000000000000000000000000000000000000000000000000000000000000
      001D000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000055000000FF000000FF000000FC000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000050000000FF000000FB00000057000000FF000000FF0000
      000000000000000000FF000000FF00000000000000BC000000FF0000006D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      00000000000000000000000000FB000000FF000000FF000000FF000000570000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000500000000000000000000000230000000D0000
      000000000000000000FF000000FF00000000000000EE000000FF000000230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FE000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000004E000000FF000000FB00000057000000FF000000FF0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000DD000000FF0000003F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      000000000000000000000000004F0000000000000000000000220000000E0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000000000088000000FF000000C50000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000D2000000FF000000690000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000E60000000000000000000000FF000000FF0000
      0005000000000000000000000000000000000000000000000000000000000000
      00B3000000FF000000D000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001C000000FF000000FF0000
      00D4000000AA000000AA000000AA000000AA000000AA000000AA000000AA0000
      00AA000000AD000000FF000000FF000000F50000000000000040000000FF0000
      00D40000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000090000000000000000000000BD000000FF0000
      00FF000000050000000000000000000000000000000000000000000000820000
      00FF000000FF0000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000078000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FD000000000000000000000000000000FF0000
      00FF0000006A00000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000001F00000000000000000000000000000000000000F50000
      00FF000000FF000000C50000003E000000230000006D000000FD000000FF0000
      00FF000000480000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003F000000550000005500000055000000550000005500000055000000550000
      0055000000550000001500000000000000000000000000000000000000780000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000001F0000000000000000000000000000000000000000000000000000
      00C4000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0027000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001C000000D1000000FF000000FF000000FF000000FF000000FC000000AD0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000010000007F000000DF000000F8000000B800000031000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000D2000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000250000000000000000000000000000000000000000000000000000
      00F5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000670000000000000000000000000000002F000000FF0000
      00FF000000FF000000FF000000FF00000000000000F6000000FF000000FF0000
      001100000000000000000000000000000000000000000000002F000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00EC000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000003500000000000000000000000000000000000000FD0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000370000000000000006000000FF000000FF0000
      00FF000000FF000000FF0000009600000000000000B9000000FF000000FF0000
      00FF0000001100000000000000000000000000000006000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00E5000000000000000000000000000000000000000000000000000000EC0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0084000000FF000000FF00000035000000000000000000000015000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000004C000000FF000000FC00000000000000BD000000FF0000009F0000
      00000000000000000000000000000000000000000002000000FF000000FF0000
      00FF000000FF000000110000000000000000000000BD000000FF0000009F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000ED000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000087000000FF000000FF000000250000000000000053000000FF0000
      00AD00000000000000000000000000000096000000FF00000000000000000000
      000000000000000000FF000000FF00000000000000FE000000FF000000030000
      000000000000000000000000000000000000000000000000000B000000FF0000
      00FF000000FF000000FF0000001100000000000000FE000000FF000000030000
      00000000000000000066000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FC000000360000000000000060000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000087000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000FF000000FF00000000000000000000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      00000000000000000000000000000000000000000000000000000000000A0000
      00FF000000FF000000FF000000FF00000013000000FF000000FF000000000000
      0000000000BA000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000066000000E9000000FF0000002E0000
      000000000000000000E2000000FF0000005700000000000000FB000000FF0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000097000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000FF000000FF0000001F000000000000000000000000000000000000
      0000000000000000004C000000FF000000FF000000FF000000FF000000000000
      00000000000000000050000000FF000000FF000000FB000000FF000000FB0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA00000000000000CA000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000B000000FF000000FF000000FF000000FF000000FF000000000000
      0048000000FF000000C40000000000000000000000130000009D000000330000
      00000000000000000000000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000055000000FF000000FF000000FC000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000FF000000FF00000000000000000000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000009000000E600000083000000FF000000FF000000000000
      0055000000FF000000AA0000000000000005000000FF000000FF000000FF0000
      00400000000000000000000000FF000000FF000000FF000000FF000000000000
      00000000000000000000000000FB000000FF000000FF000000FF0000005B0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000C8000000FF00000000000000000000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000009D000000050000000000000000000000FF000000FF000000000000
      0055000000FF000000AA000000000000004E000000FF000000FF000000FF0000
      00A40000000000000000000000FF000000FF000000FD000000FF000000040000
      000000000000000000E7000000FF000000FB00000057000000FF000000FF0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0052000000FF000000A80000000000000000000000FF000000FF000000000000
      0055000000FF000000AA0000000000000000000000FF000000FF000000FF0000
      001F0000000000000000000000FF000000FF000000B9000000FF000000AC0000
      00000000000000000053000000E7000000000000000000000051000000EB0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000000000
      000000000000000000000000000000000012000000FF000000FF000000FF0000
      00FF000000FF000000A10000000000000000000000FF000000FF000000000000
      0055000000FF000000AA0000000000000000000000000000004A000000050000
      00000000000000000000000000FF000000FF00000004000000FF000000FF0000
      0087000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000D20000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000E600000000000000FF000000FF000000000000
      000000000000000000000000000000000055000000FF000000FF000000FF0000
      00FF000000FF0000003D000000000000000000000053000000E7000000000000
      0055000000FF000000AA00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000030000000FF0000
      00FF0000008B0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000EF000000000000000000000040000000FF0000
      00D40000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF0000000900000000000000EA000000FF0000002A0000
      000000000000000000000000000000000055000000FF000000FF000000FF0000
      00FF000000F70000000000000000000000000000000000000000000000000000
      0040000000FF000000D100000000000000FF000000FF000000FF000000FF0000
      00FF00000000000000E3000000FF000000FF0000000000000000000000320000
      00FF000000FF000000AC000000040000000000000000000000000000002F0000
      00FF000000FF000000ED00000000000000000000000000000000000000FF0000
      00FF0000006A00000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000001F000000000000000000000068000000FF000000FF0000
      002A00000000000000000000000000000055000000FF000000FF000000FF0000
      00FB000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000067000000FF000000FF000000FF000000FF0000
      00FF000000E3000000FF000000FF000000020000000000000000000000000000
      0032000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000ED0000000000000000000000000000000000000000000000780000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000001F00000000000000000000000000000000000000F3000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000078000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000002000000000000000000000000000000000000
      000000000004000000B9000000FE000000FF000000FF000000FF000000E80000
      005F000000000000000000000000000000000000000000000000000000000000
      001C000000D1000000FF000000FF000000FF000000FF000000FC000000AD0000
      0001000000000000000000000000000000000000000000000000000000680000
      00E9000000FF000000FF000000FF000000FF000000EE00000075000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000001C000000D1000000FF000000FF000000FF000000FF0000
      00FF000000CB000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited DSData: TDataSource
    DataSet = ServiceRegister.QRYEntity
    Left = 882
    Top = 65528
  end
end
