unit view.sales;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  view.base.lists,
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Service.Register, Vcl.Mask, Vcl.DBCtrls, Data.FMTBcd, Data.SqlExpr,
  Service.Connection, Vcl.ComCtrls;

type
  TviewSales = class(TviewBaseLists)
    Label1: TLabel;
    edtIDSale: TDBEdit;
    Label2: TLabel;
    edtIDEmployee: TDBEdit;
    Label3: TLabel;
    edtIDClient: TDBEdit;
    Label4: TLabel;
    edtIDCom: TDBEdit;
    Label5: TLabel;
    edtDTSale: TDBEdit;
    Label6: TLabel;
    edtDTUpdate: TDBEdit;
    edtEmployeeName: TEdit;
    edtClientName: TEdit;
    pnlPayment: TPanel;
    cbPaid: TDBCheckBox;
    Label7: TLabel;
    edtDTPayment: TDateTimePicker;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    cbInstallment: TDBCheckBox;
    Label9: TLabel;
    edtAddition: TDBEdit;
    Label10: TLabel;
    edtDiscount: TDBEdit;
    Label11: TLabel;
    edtTotal: TDBEdit;
    cbCash: TDBCheckBox;
    Label12: TLabel;
    edtSubtotal: TDBEdit;
    Label13: TLabel;
    edtInstAmount: TDBEdit;
    Label14: TLabel;
    edtInstValue: TDBEdit;
    Label15: TLabel;
    edt1stInst: TDBEdit;
    lblChange: TLabel;
    edtChange: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtIDEmployeeExit(Sender: TObject);
    procedure edtIDClientExit(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Get_Sales();
  end;

var
  viewSales: TviewSales;

implementation

{$R *.dfm}

procedure TviewSales.btnCancelClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYSale.State in dsEditModes then
  begin
    ServiceRegister.QRYSale.Cancel;
    CardPanelList.ActiveCard := cardSearch;
  end;
end;

procedure TviewSales.btnCloseWindowClick(Sender: TObject);
begin
  inherited;

  viewSales.Close;

end;



procedure TviewSales.btnDeleteClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYSale.RecordCount > 0 then
  begin
    ServiceRegister.QRYSale.Delete;
    ShowMessage('Record deleted successfully');
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewSales.btnEditClick(Sender: TObject);
begin
  inherited;

  CardPanelList.ActiveCard := cardRegister;
  //edt.SetFocus;        trocar ainda
  ServiceRegister.QRYSale.Edit;
  edtDTUpdate.Text := DateToStr(Date);

end;

procedure TviewSales.btnNewClick(Sender: TObject);
VAR

  maxID : integer;

begin
  inherited;

  CardPanelList.ActiveCard := cardRegister;
  edtIDEmployee.SetFocus;
  ServiceRegister.QRYSale.Insert;
  ServiceRegister.QRYIDSale.Close;
  ServiceRegister.QRYIDSale.SQL.Text := 'SELECT MAX(SALE_ID) AS MaxID FROM SALE';
  ServiceRegister.QRYIDSale.Open;
  if not ServiceRegister.QRYIDSale.FieldByName('MaxID').IsNull then
    maxID := ServiceRegister.QRYIDSale.FieldByName('MaxID').AsInteger + 1
  else
    maxID := 1;
  edtIDSale.Field.Value := maxID;
  edtDTSale.Text := DateToStr(Date);
  edtIDCom.Text := ServiceConnection.SERVICE_COM_ID.ToString;
  cbPaid.State := cbUnchecked;
  cbCash.State := cbUnchecked;
  cbInstallment.State := cbUnchecked;

end;

procedure TviewSales.btnSaveClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYSale.State in dsEditModes then
  begin

    ServiceRegister.QRYSale.FieldByName('DATE_PAYMENT').AsDateTime := edtDTPayment.Date; //testa isso;
    ServiceRegister.QRYSale.Post;
    ShowMessage('Registered successfully!');
    CardPanelList.ActiveCard := cardSearch;

  end;

end;



procedure TviewSales.edtIDClientExit(Sender: TObject);
begin
  inherited;

  if Trim(edtIDClient.Text) = '' then Exit;

  ServiceRegister.QRYNamePeople.Close;
  ServiceRegister.QRYNamePeople.SQL.Text := 'SELECT NAME FROM PEOPLE WHERE PEOPLE_ID = :ID';
  ServiceRegister.QRYNamePeople.ParamByName('ID').AsInteger := StrToIntDef(edtIDClient.Text, 0);
  ServiceRegister.QRYNamePeople.Open;

  if not ServiceRegister.QRYNamePeople.IsEmpty then
    edtClientName.Text := ServiceRegister.QRYNamePeople.FieldByName('NAME').AsString
  else
    edtClientName.Text := '';

end;

procedure TviewSales.edtIDEmployeeExit(Sender: TObject);
begin
  inherited;

  if Trim(edtIDEmployee.Text) = '' then Exit;

  ServiceRegister.QRYNamePeople.Close;
  ServiceRegister.QRYNamePeople.SQL.Text := 'SELECT NAME FROM PEOPLE WHERE PEOPLE_ID = :ID';
  ServiceRegister.QRYNamePeople.ParamByName('ID').AsInteger := StrToIntDef(edtIDEmployee.Text, 0);
  ServiceRegister.QRYNamePeople.Open;

  if not ServiceRegister.QRYNamePeople.IsEmpty then
    edtEmployeeName.Text := ServiceRegister.QRYNamePeople.FieldByName('NAME').AsString
  else
    edtEmployeeName.Text := '';

end;

procedure TviewSales.FormShow(Sender: TObject);
begin
  inherited;

  Get_Sales;
  CardPanelList.ActiveCard := cardSearch;

end;

procedure TviewSales.Get_Sales;
begin

  ServiceRegister.QRYSale.Close;
  ServiceRegister.QRYSale.SQL.Clear;
  ServiceRegister.QRYSale.SQL.Add('SELECT * FROM SALE WHERE 1=1');
  ServiceRegister.QRYSale.Open();

end;

end.
