inherited viewColor: TviewColor
  Caption = 'viewColor'
  ClientHeight = 535
  ClientWidth = 1121
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1121
  ExplicitHeight = 535
  TextHeight = 15
  inherited pnlTop: TPanel
    Width = 1121
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1121
    inherited lblTitleWindow: TLabel
      Width = 965
      Caption = 'Cores'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 40
    end
    inherited pnlLogo: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlCloseWindow: TPanel
      Left = 1043
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1043
    end
  end
  inherited pnlFooter: TPanel
    Top = 500
    Width = 1121
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 500
    ExplicitWidth = 1121
    inherited btnNew: TSpeedButton
      Left = 1036
      OnClick = btnNewClick
      ExplicitLeft = 1036
    end
    inherited btnEdit: TSpeedButton
      Left = 946
      OnClick = btnEditClick
      ExplicitLeft = 946
    end
    inherited btnSave: TSpeedButton
      Left = 856
      OnClick = btnSaveClick
      ExplicitLeft = 856
    end
    inherited btnCancel: TSpeedButton
      Left = 766
      OnClick = btnCancelClick
      ExplicitLeft = 766
    end
    inherited btnDelete: TSpeedButton
      Left = 676
      OnClick = btnDeleteClick
      ExplicitLeft = 676
    end
    inherited btnCloseWindow: TSpeedButton
      Flat = True
      OnClick = btnCloseWindowClick
    end
  end
  inherited pnlBackground: TPanel
    Width = 1121
    Height = 465
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1121
    ExplicitHeight = 465
    inherited CardPanelList: TCardPanel
      Width = 1117
      Height = 465
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 1117
      ExplicitHeight = 465
      inherited cardSearch: TCard
        Width = 1117
        Height = 465
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 1117
        ExplicitHeight = 465
        inherited pnlSearch: TPanel
          Width = 1117
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1117
          inherited lblSearch: TLabel
            Width = 1102
            Caption = 'Pesquisa Cores'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 126
          end
        end
        inherited DBGData: TDBGrid
          Width = 1107
          Height = 390
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'Codigo'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = 'Nome'
              Width = 196
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RGB'
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HEX'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_CREATED'
              Title.Caption = 'Data Cria'#231#227'o'
              Width = 153
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACTIVE'
              Title.Caption = 'Ativo'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COM_ID'
              Title.Caption = 'ID Empresa'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER'
              Title.Caption = 'ID Usu'#225'rio'
              Width = 169
              Visible = True
            end>
        end
      end
      inherited cardRegister: TCard
        Width = 1117
        Height = 465
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 1117
        ExplicitHeight = 465
        object Label1: TLabel [0]
          Left = 8
          Top = 74
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = edtID
        end
        object Label2: TLabel [1]
          Left = 8
          Top = 122
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = edtName
        end
        object Label3: TLabel [2]
          Left = 224
          Top = 122
          Width = 67
          Height = 15
          Caption = 'Data Cria'#231#227'o'
          FocusControl = EDTDTCreated
        end
        object Label4: TLabel [3]
          Left = 8
          Top = 167
          Width = 22
          Height = 15
          Caption = 'RGB'
        end
        object Label5: TLabel [4]
          Left = 8
          Top = 215
          Width = 22
          Height = 15
          Caption = 'HEX'
        end
        object lblRGB: TLabel [5]
          Left = 116
          Top = 186
          Width = 188
          Height = 15
          AutoSize = False
          Caption = '(, , )'
        end
        object lblHEX: TLabel [6]
          Left = 114
          Top = 234
          Width = 190
          Height = 15
          AutoSize = False
          Caption = '#'
        end
        inherited pnlRegister: TPanel
          Width = 1117
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1117
          inherited lblRegister: TLabel
            Width = 1102
            Caption = 'Register Colors'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 126
          end
        end
        object edtID: TDBEdit
          Left = 8
          Top = 90
          Width = 60
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'ID'
          DataSource = DSData
          Enabled = False
          TabOrder = 3
        end
        object edtName: TDBEdit
          Left = 8
          Top = 138
          Width = 200
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          DataField = 'NAME'
          DataSource = DSData
          TabOrder = 1
        end
        object CBActive: TDBCheckBox
          Left = 88
          Top = 93
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'ACTIVE'
          DataSource = DSData
          TabOrder = 4
        end
        object EDTDTCreated: TDBEdit
          Left = 224
          Top = 138
          Width = 80
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'DT_CREATED'
          DataSource = DSData
          Enabled = False
          TabOrder = 2
        end
        object edtRGB1: TEdit
          Left = 8
          Top = 183
          Width = 30
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 5
          OnChange = edtRGB1Change
          OnExit = edtRGB1Exit
          OnKeyPress = edtRGB1KeyPress
        end
        object edtRGB2: TEdit
          Left = 44
          Top = 183
          Width = 30
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 6
          OnChange = edtRGB2Change
          OnExit = edtRGB2Exit
          OnKeyPress = edtRGB2KeyPress
        end
        object edtRGB3: TEdit
          Left = 80
          Top = 183
          Width = 30
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 7
          OnChange = edtRGB3Change
          OnExit = edtRGB3Exit
          OnKeyPress = edtRGB3KeyPress
        end
        object edtHEX: TEdit
          Left = 8
          Top = 231
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 6
          TabOrder = 8
          OnChange = edtHEXChange
        end
      end
    end
  end
  inherited DSData: TDataSource
    DataSet = ServiceRegister.QRYColor
  end
end
