inherited viewSales: TviewSales
  Caption = 'Sales'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitleWindow: TLabel
      Caption = 'Sales'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 36
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
        end
        inherited DBGData: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'SALE_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COM_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENT_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMPLOYEE_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_SALE'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_PAYMENT'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAYMENT_METHOD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CASH'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BUDGET'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADDITION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHANGE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTALLMENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '1ST_INSTALLMENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTALLMENT_AMOUNT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTALLMENT_VALUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBTOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_UPDATED'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS'
              Visible = True
            end>
        end
      end
      inherited cardRegister: TCard
        StyleElements = [seFont, seClient, seBorder]
        object Label1: TLabel [0]
          Left = 8
          Top = 73
          Width = 11
          Height = 15
          Caption = 'ID'
          FocusControl = edtIDSale
        end
        object Label2: TLabel [1]
          Left = 8
          Top = 117
          Width = 52
          Height = 15
          Caption = 'Employee'
          FocusControl = edtIDEmployee
        end
        object Label3: TLabel [2]
          Left = 8
          Top = 159
          Width = 31
          Height = 15
          Caption = 'Client'
          FocusControl = edtIDClient
        end
        object Label4: TLabel [3]
          Left = 64
          Top = 73
          Width = 40
          Height = 15
          Caption = 'ID Com'
          FocusControl = edtIDCom
        end
        object Label5: TLabel [4]
          Left = 120
          Top = 73
          Width = 48
          Height = 15
          Caption = 'Sale Date'
          FocusControl = edtDTSale
        end
        object Label6: TLabel [5]
          Left = 222
          Top = 73
          Width = 62
          Height = 15
          Caption = 'Last Update'
          FocusControl = edtDTUpdate
        end
        inherited pnlRegister: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblRegister: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        object edtIDSale: TDBEdit
          Left = 8
          Top = 89
          Width = 50
          Height = 23
          DataField = 'SALE_ID'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtIDEmployee: TDBEdit
          Left = 8
          Top = 133
          Width = 80
          Height = 23
          DataField = 'EMPLOYEE_ID'
          DataSource = DSData
          TabOrder = 2
          OnExit = edtIDEmployeeExit
        end
        object edtIDClient: TDBEdit
          Left = 8
          Top = 175
          Width = 80
          Height = 23
          DataField = 'CLIENT_ID'
          DataSource = DSData
          TabOrder = 3
          OnExit = edtIDClientExit
        end
        object edtIDCom: TDBEdit
          Left = 64
          Top = 89
          Width = 50
          Height = 23
          DataField = 'COM_ID'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtDTSale: TDBEdit
          Left = 120
          Top = 89
          Width = 96
          Height = 23
          DataField = 'DATE_SALE'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtDTUpdate: TDBEdit
          Left = 222
          Top = 89
          Width = 96
          Height = 23
          DataField = 'DATE_UPDATED'
          DataSource = DSData
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object edtEmployeeName: TEdit
          Left = 94
          Top = 133
          Width = 300
          Height = 23
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
        object edtClientName: TEdit
          Left = 94
          Top = 175
          Width = 300
          Height = 23
          Enabled = False
          ReadOnly = True
          TabOrder = 8
        end
      end
    end
  end
  inherited imgList: TImageList
    Top = 65531
  end
  inherited DSData: TDataSource
    DataSet = ServiceRegister.QRYSale
    Left = 826
    Top = 65531
  end
end
