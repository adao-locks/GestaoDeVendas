inherited viewSales: TviewSales
  Left = 0
  Caption = 'Sales'
  ClientHeight = 768
  ClientWidth = 1107
  Font.Height = -11
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1107
  ExplicitHeight = 768
  TextHeight = 13
  inherited pnlTop: TPanel
    Width = 1107
    Height = 32
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1107
    ExplicitHeight = 32
    inherited lblTitleWindow: TLabel
      Left = 70
      Width = 966
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Sales'
      Font.Height = -14
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 70
      ExplicitWidth = 30
      ExplicitHeight = 19
    end
    inherited pnlLogo: TPanel
      Width = 70
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 70
      ExplicitHeight = 32
    end
    inherited pnlCloseWindow: TPanel
      Left = 1036
      Width = 71
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1036
      ExplicitWidth = 71
      ExplicitHeight = 32
      inherited btnCloseWindow: TButton
        Left = 6
        Top = 4
        Width = 61
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        OnClick = btnCloseWindowClick
        ExplicitLeft = 6
        ExplicitTop = 4
        ExplicitWidth = 61
        ExplicitHeight = 24
      end
    end
  end
  inherited pnlFooter: TPanel
    Top = 737
    Width = 1107
    Height = 31
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 737
    ExplicitWidth = 1107
    ExplicitHeight = 31
    inherited btnNew: TSpeedButton
      Left = 1032
      Top = 4
      Width = 71
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Height = -11
      OnClick = btnNewClick
      ExplicitLeft = 1031
      ExplicitTop = 4
      ExplicitWidth = 71
      ExplicitHeight = 22
    end
    inherited btnEdit: TSpeedButton
      Left = 956
      Top = 4
      Width = 68
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Height = -11
      OnClick = btnEditClick
      ExplicitLeft = 954
      ExplicitTop = 4
      ExplicitWidth = 68
      ExplicitHeight = 22
    end
    inherited btnSave: TSpeedButton
      Left = 875
      Top = 4
      Width = 73
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Height = -11
      OnClick = btnSaveClick
      ExplicitLeft = 872
      ExplicitTop = 4
      ExplicitWidth = 73
      ExplicitHeight = 22
    end
    inherited btnCancel: TSpeedButton
      Left = 794
      Top = 4
      Width = 73
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Height = -11
      OnClick = btnCancelClick
      ExplicitLeft = 791
      ExplicitTop = 4
      ExplicitWidth = 73
      ExplicitHeight = 22
    end
    inherited btnDelete: TSpeedButton
      Left = 714
      Top = 4
      Width = 72
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Font.Height = -11
      OnClick = btnDeleteClick
      ExplicitLeft = 710
      ExplicitTop = 4
      ExplicitWidth = 72
      ExplicitHeight = 22
    end
  end
  inherited pnlBackground: TPanel
    Top = 32
    Width = 1107
    Height = 705
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 32
    ExplicitWidth = 1107
    ExplicitHeight = 705
    inherited CardPanelList: TCardPanel
      Left = 1
      Width = 1105
      Height = 705
      Margins.Left = 1
      Margins.Right = 1
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 1
      ExplicitWidth = 1105
      ExplicitHeight = 705
      inherited cardSearch: TCard
        Width = 1105
        Height = 705
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 1105
        ExplicitHeight = 705
        inherited pnlSearch: TPanel
          Width = 1105
          Height = 169
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1105
          ExplicitHeight = 169
          inherited lblSearch: TLabel
            Left = 14
            Top = 4
            Width = 1091
            Height = 20
            Margins.Left = 14
            Margins.Top = 4
            Caption = 'Search Sale'
            Font.Height = -15
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 14
            ExplicitTop = 4
            ExplicitWidth = 76
            ExplicitHeight = 20
          end
          object lblCityAsk: TLabel
            Left = 269
            Top = 116
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'User Updated: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblDateBirthAsk: TLabel
            Left = 269
            Top = 43
            Width = 90
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
          object lblEmailAsk: TLabel
            Left = 14
            Top = 140
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Brand: '
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
            Caption = 'Name Employee: '
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
            Caption = 'Name Client: '
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
            Caption = 'Pay. Method: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblStateAsk: TLabel
            Left = 269
            Top = 92
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'User Register: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lblZipAsk: TLabel
            Left = 269
            Top = 68
            Width = 90
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Un: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtRegIni: TDateTimePicker
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
            TabOrder = 0
          end
          object edtBrandAsk: TSearchBox
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
            TabOrder = 5
          end
          object edtCategoryAsk: TSearchBox
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
            TabOrder = 3
          end
          object dtRegEnd: TDateTimePicker
            Left = 363
            Top = 39
            Width = 145
            Height = 23
            Cursor = crHandPoint
            BevelInner = bvNone
            BevelOuter = bvNone
            Date = 54789.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.909075833333190500
            TabOrder = 1
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
            TabOrder = 2
          end
          object edtSupplierAsk: TSearchBox
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
            TabOrder = 4
          end
          object edtUnAsk: TSearchBox
            AlignWithMargins = True
            Left = 363
            Top = 68
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
          object edtUserRegAsk: TSearchBox
            AlignWithMargins = True
            Left = 363
            Top = 92
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
          object edtUserUpAsk: TSearchBox
            AlignWithMargins = True
            Left = 363
            Top = 116
            Width = 145
            Height = 18
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Right = 10
            BevelInner = bvNone
            BorderStyle = bsNone
            CharCase = ecUpperCase
            TabOrder = 8
          end
          object btnConsult: TButton
            Left = 520
            Top = 132
            Width = 97
            Height = 25
            Caption = 'Consult'
            TabOrder = 9
          end
        end
        inherited DBGData: TDBGrid
          Left = 4
          Top = 173
          Width = 1097
          Height = 528
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TitleFont.Height = -11
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_SALE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CLIENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME_CLI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_EMPLOYEE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME_EMPL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAYMENT_METHOD'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_AMOUNT'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCOUNT'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_SALE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_CREATED'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_COM'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER'
              Visible = True
            end>
        end
      end
      inherited cardRegister: TCard
        Width = 1105
        Height = 705
        Cursor = crHandPoint
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = -48
        ExplicitTop = -2
        ExplicitWidth = 1105
        ExplicitHeight = 705
        object Label1: TLabel [0]
          Left = 7
          Top = 66
          Width = 40
          Height = 13
          Caption = 'ID_SALE'
          FocusControl = edtSale
        end
        object Label2: TLabel [1]
          Left = 7
          Top = 105
          Width = 51
          Height = 13
          Caption = 'ID_CLIENT'
          FocusControl = edtClient
        end
        object Label3: TLabel [2]
          Left = 7
          Top = 144
          Width = 69
          Height = 13
          Caption = 'ID_EMPLOYEE'
          FocusControl = edtEmployee
        end
        object Label4: TLabel [3]
          Left = 7
          Top = 186
          Width = 43
          Height = 13
          Caption = 'DT_SALE'
        end
        object Label5: TLabel [4]
          Left = 7
          Top = 270
          Width = 98
          Height = 13
          Caption = 'PAYMENT_METHOD'
          FocusControl = edtPayMeth
        end
        object Label6: TLabel [5]
          Left = 113
          Top = 230
          Width = 55
          Height = 13
          Caption = 'DISCOUNT'
          FocusControl = edtDisc
        end
        object Label7: TLabel [6]
          Left = 7
          Top = 230
          Width = 84
          Height = 13
          Caption = 'TOTAL_AMOUNT'
          FocusControl = edtTot
        end
        object Label8: TLabel [7]
          Left = 113
          Top = 270
          Width = 37
          Height = 13
          Caption = 'STATUS'
          FocusControl = edtStat
        end
        object Label9: TLabel [8]
          Left = 475
          Top = 105
          Width = 72
          Height = 13
          Caption = 'OBSERVATION'
          FocusControl = edtObs
        end
        object Label10: TLabel [9]
          Left = 475
          Top = 66
          Width = 65
          Height = 13
          Caption = 'DT_CREATED'
        end
        object lblEmployee: TLabel [10]
          Left = 103
          Top = 163
          Width = 215
          Height = 13
          AutoSize = False
          Caption = 'EMPLOYEE NOT FOUND!'
          FocusControl = edtEmployee
        end
        object lblClient: TLabel [11]
          Left = 103
          Top = 124
          Width = 215
          Height = 13
          AutoSize = False
          Caption = 'CLIENT NOT FOUND!'
          FocusControl = edtClient
        end
        object Label11: TLabel [12]
          Left = 75
          Top = 66
          Width = 42
          Height = 13
          Caption = 'COM_ID'
          FocusControl = edtCom
        end
        object Label12: TLabel [13]
          Left = 151
          Top = 66
          Width = 27
          Height = 13
          Caption = 'USER'
          FocusControl = edtUser
        end
        inherited pnlRegister: TPanel
          Width = 1105
          Height = 59
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1105
          ExplicitHeight = 59
          inherited lblRegister: TLabel
            Left = 14
            Top = 4
            Width = 1091
            Height = 20
            Margins.Left = 14
            Margins.Top = 4
            Caption = 'Register Sale'
            Font.Height = -15
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 14
            ExplicitTop = 4
            ExplicitWidth = 86
            ExplicitHeight = 20
          end
        end
        object edtSale: TDBEdit
          Left = 7
          Top = 82
          Width = 62
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ID_SALE'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 9
        end
        object edtClient: TDBEdit
          Left = 7
          Top = 121
          Width = 62
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'ID_CLIENT'
          DataSource = DSData
          TabOrder = 1
          OnChange = edtClientChange
        end
        object edtEmployee: TDBEdit
          Left = 7
          Top = 160
          Width = 62
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'ID_EMPLOYEE'
          DataSource = DSData
          TabOrder = 2
          OnChange = edtEmployeeChange
        end
        object edtPayMeth: TDBEdit
          Left = 13
          Top = 286
          Width = 101
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'PAYMENT_METHOD'
          DataSource = DSData
          TabOrder = 6
          Visible = False
        end
        object edtDisc: TDBEdit
          Left = 113
          Top = 246
          Width = 100
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'DISCOUNT'
          DataSource = DSData
          TabOrder = 5
        end
        object edtTot: TDBEdit
          Left = 7
          Top = 246
          Width = 100
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'TOTAL_AMOUNT'
          DataSource = DSData
          TabOrder = 4
        end
        object edtStat: TDBEdit
          Left = 113
          Top = 286
          Width = 108
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'STATUS'
          DataSource = DSData
          TabOrder = 7
          Visible = False
        end
        object edtObs: TDBEdit
          Left = 475
          Top = 121
          Width = 300
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          DataField = 'OBSERVATION'
          DataSource = DSData
          TabOrder = 8
        end
        object DT_SALE: TDateTimePicker
          Left = 7
          Top = 202
          Width = 84
          Height = 21
          Cursor = crHandPoint
          Date = 45743.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.899759699073911200
          TabOrder = 3
        end
        object DT_CREATED: TDateTimePicker
          Left = 475
          Top = 82
          Width = 78
          Height = 21
          Date = 45743.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.899759699073911200
          Enabled = False
          TabOrder = 10
        end
        object edtCom: TDBEdit
          Left = 75
          Top = 82
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ID_COM'
          DataSource = DSData
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edtUser: TDBEdit
          Left = 151
          Top = 82
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USER'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 12
        end
        object btnProducts: TButton
          Left = 7
          Top = 313
          Width = 206
          Height = 25
          Caption = 'Manage Products'
          TabOrder = 13
          OnClick = btnAddProdClick
        end
        object ComboMethod: TComboBox
          Left = 7
          Top = 286
          Width = 100
          Height = 21
          Cursor = crHandPoint
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 14
          Text = 'CASH'
          Items.Strings = (
            'CASH'
            'CREDIT'
            'DEBIT'
            'PIX'
            'BOLETO'
            'OTHER')
        end
        object ComboStatus: TComboBox
          Left = 113
          Top = 286
          Width = 100
          Height = 21
          ItemIndex = 0
          TabOrder = 15
          Text = 'PENDING'
          Items.Strings = (
            'PENDING'
            'PAID'
            'CANCELLED')
        end
        object btnCreateEntity1: TButton
          Left = 75
          Top = 121
          Width = 22
          Height = 21
          ImageIndex = 6
          Images = imgList
          TabOrder = 16
          OnClick = btnCreateEntityClick
        end
        object btnCreateEntity2: TButton
          Left = 75
          Top = 160
          Width = 22
          Height = 21
          ImageIndex = 6
          Images = imgList
          TabOrder = 17
          OnClick = btnCreateEntityClick
        end
      end
      object cardItems: TCard
        Left = 0
        Top = 0
        Width = 1105
        Height = 705
        CardIndex = 2
        TabOrder = 2
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 7
          Top = 256
          Width = 1091
          Height = 442
          Cursor = crCross
          Margins.Left = 7
          Margins.Top = 7
          Margins.Right = 7
          Margins.Bottom = 7
          Align = alClient
          DataSource = DSDataItems
          GradientEndColor = clBtnFace
          GradientStartColor = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_ITEM'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_SALE'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PRODUCT'
              Title.Caption = 'CODE'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BRAND'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UN'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTITY'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIT_PRICE'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCOUNT'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTOTAL'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_CREATED'
              Width = 120
              Visible = True
            end>
        end
        object pnlContent: TPanel
          Left = 0
          Top = 0
          Width = 1105
          Height = 249
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label13: TLabel
            Left = 75
            Top = 81
            Width = 41
            Height = 13
            Caption = 'ID_ITEM'
            FocusControl = edtIDItem
          end
          object Label14: TLabel
            Left = 7
            Top = 81
            Width = 40
            Height = 13
            Caption = 'ID_SALE'
            FocusControl = edtSaleID
          end
          object Label15: TLabel
            Left = 7
            Top = 122
            Width = 67
            Height = 13
            Caption = 'ID_PRODUCT'
            FocusControl = edtCodProd
          end
          object Label16: TLabel
            Left = 83
            Top = 162
            Width = 51
            Height = 13
            Caption = 'QUANTITY'
            FocusControl = edtQuant
          end
          object Label17: TLabel
            Left = 7
            Top = 162
            Width = 59
            Height = 13
            Caption = 'UNIT_PRICE'
            FocusControl = edtUnit
          end
          object Label18: TLabel
            Left = 159
            Top = 162
            Width = 55
            Height = 13
            Caption = 'DISCOUNT'
            FocusControl = edtDiscItem
          end
          object Label20: TLabel
            Left = 143
            Top = 81
            Width = 65
            Height = 13
            Caption = 'DT_CREATED'
          end
          object lblNameProd: TLabel
            Left = 93
            Top = 141
            Width = 170
            Height = 13
            AutoSize = False
            Caption = 'ID_PRODUCT'
            FocusControl = edtCodProd
          end
          object lblConfirmItem: TLabel
            Left = 7
            Top = 236
            Width = 298
            Height = 13
            Alignment = taCenter
            AutoSize = False
            FocusControl = edtCodProd
          end
          object Label19: TLabel
            Left = 7
            Top = 38
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = edtID
          end
          object edtIDItem: TDBEdit
            Left = 75
            Top = 97
            Width = 62
            Height = 21
            DataField = 'ID_ITEM'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 0
          end
          object edtSaleID: TDBEdit
            Left = 7
            Top = 97
            Width = 62
            Height = 21
            DataField = 'ID_SALE'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 5
          end
          object edtCodProd: TDBEdit
            Left = 7
            Top = 138
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ID_PRODUCT'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 1
            OnChange = edtCodProdChange
          end
          object edtQuant: TDBEdit
            Left = 83
            Top = 178
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            DataField = 'QUANTITY'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 3
          end
          object edtUnit: TDBEdit
            Left = 7
            Top = 178
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            DataField = 'UNIT_PRICE'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 2
          end
          object edtDiscItem: TDBEdit
            Left = 159
            Top = 178
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DISCOUNT'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 4
          end
          object DT_CREATED_ITEM: TDateTimePicker
            Left = 143
            Top = 97
            Width = 78
            Height = 21
            Date = 45743.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.899759699073911200
            Enabled = False
            TabOrder = 6
          end
          object btnAddProd: TButton
            Left = 7
            Top = 205
            Width = 70
            Height = 25
            Caption = 'Add'
            TabOrder = 7
            OnClick = btnAddProdClick
          end
          object btnRemove: TButton
            Left = 83
            Top = 205
            Width = 70
            Height = 25
            Caption = 'Remove'
            TabOrder = 8
            OnClick = btnRemoveClick
          end
          object btnConfirmItem: TButton
            Left = 159
            Top = 205
            Width = 70
            Height = 25
            Caption = 'Confirm'
            Enabled = False
            TabOrder = 9
            OnClick = btnConfirmItemClick
          end
          object btnCancelItem: TButton
            Left = 235
            Top = 205
            Width = 70
            Height = 25
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 10
            OnClick = btnCancelItemClick
          end
          object btnBackItens: TButton
            Left = 7
            Top = 10
            Width = 70
            Height = 25
            Caption = 'Back'
            TabOrder = 11
            OnClick = btnBackItensClick
          end
          object edtID: TDBEdit
            Left = 7
            Top = 54
            Width = 62
            Height = 21
            DataField = 'ID'
            DataSource = DSDataItems
            Enabled = False
            TabOrder = 12
          end
        end
      end
    end
  end
  inherited imgList: TImageList
    Left = 795
    Top = 65531
    Bitmap = {
      494C010107000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00F5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000006700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000BA0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FC00000036000000000000000000000000000000FD0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000037000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000660000000000000015000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000004C000000FF000000FC000000000000000000000000000000000000
      00000000000000000000000000A8000000700000000000000000000000000000
      0000000000FF000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000087000000FF000000F20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004C000000FF000000FF0000000000000053000000FF0000
      00AD000000000000000D000000FF0000005700000000000000F7000000D70000
      000000000000000000FF000000FF000000000000000000000000000000000000
      00F6000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F3000000FF000000190000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000024000000FF000000FF000000FB000000FF000000F70000
      000000000000000000FF000000FF000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000B000000FF0000005700000000000000F7000000D60000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000055000000FF000000FF000000FC000000000000
      000000000000000000FF000000FF0000000000000000000000ED000000FF0000
      00FF000000000000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000001F000000FF000000FF000000FB000000FF000000F70000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000FB000000FF000000FF000000FF000000570000
      000000000000000000FF000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000000000000055000000FF000000FF000000FC000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000050000000FF000000FB00000057000000FF000000FF0000
      000000000000000000FF000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      00000000000000000000000000FB000000FF000000FF000000FF000000570000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000500000000000000000000000230000000D0000
      000000000000000000FF000000FF0000000000000075000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      0000000000000000004E000000FF000000FB00000057000000FF000000FF0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000000000002F000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      000000000000000000000000004F0000000000000000000000220000000E0000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000D2000000FF000000690000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000055000000FF0000
      00AA0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000E60000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000D90000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001C000000FF000000FF0000
      00D4000000AA000000AA000000AA000000AA000000AA000000AA000000AA0000
      00AA000000AD000000FF000000FF000000F50000000000000040000000FF0000
      00D40000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF00000009000000000000000000000000000000FF0000
      00FF0000000000000000000000000000000000000000000000E0000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000078000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FD000000000000000000000000000000FF0000
      00FF0000006A00000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000001F00000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003F000000550000005500000055000000550000005500000055000000550000
      0055000000550000001500000000000000000000000000000000000000780000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000001F0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001C000000D1000000FF000000FF000000FF000000FF000000FC000000AD0000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    DataSet = ServiceRegister.QRYSale
    Left = 842
    Top = 65531
  end
  object DSDataItems: TDataSource
    DataSet = ServiceRegister.QRYItemsSale
    Left = 904
    Top = 65531
  end
end
