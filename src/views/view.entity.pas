unit view.entity;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  Vcl.Controls,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Forms,
  Vcl.Dialogs,
  view.base.lists,
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Service.Register,
  Vcl.Mask,
  Vcl.DBCtrls,
  Data.SqlExpr,
  Vcl.WinXPickers,
  Vcl.CheckLst,
  Vcl.ComCtrls;

type
  TviewEntity = class(TviewBaseLists)
    lblPeopleID: TLabel;
    edtPeopleID: TDBEdit;
    lblName: TLabel;
    edtName: TDBEdit;
    lblBirth: TLabel;
    edtBirthDate: TDBEdit;
    lblRegDate: TLabel;
    edtRegDate: TDBEdit;
    lblEIN: TLabel;
    edtEIN: TDBEdit;
    lblPhone: TLabel;
    edtPhone: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    edtClient: TDBCheckBox;
    edtEmployee: TDBCheckBox;
    edtSupplier: TDBCheckBox;
    edtTransport: TDBCheckBox;
    lblTypePeople: TLabel;
    pnlTypePeople: TPanel;
    pnlAddress: TPanel;
    lblTitleAddress: TLabel;
    lblZIPCode: TLabel;
    edtZIPCode: TDBEdit;
    lblComplement: TLabel;
    edtComplement: TDBEdit;
    lblState: TLabel;
    edtState: TDBEdit;
    lblCity: TLabel;
    edtCity: TDBEdit;
    lblNeighborhood: TLabel;
    edtNeighborhood: TDBEdit;
    lblStreet: TLabel;
    edtStreet: TDBEdit;
    lblNumberAddress: TLabel;
    edtNumberAddress: TDBEdit;
    lblFantasy: TLabel;
    edtFantasy: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtUpDate: TDBEdit;
    lblDateRegAsk: TLabel;
    lblNameAsk: TLabel;
    lblFantasyAsk: TLabel;
    edtFantasyAsk: TSearchBox;
    edtNameAsk: TSearchBox;
    edtZIPAsk: TSearchBox;
    lblZipAsk: TLabel;
    edtStateAsk: TSearchBox;
    lblStateAsk: TLabel;
    edtCityAsk: TSearchBox;
    lblCityAsk: TLabel;
    lblDateBirthAsk: TLabel;
    edtPhoneAsk: TSearchBox;
    lblPhoneAsk: TLabel;
    lblEmailAsk: TLabel;
    edtEmailAsk: TSearchBox;
    edtStreetAsk: TSearchBox;
    lblStreetAsk: TLabel;
    cbEmployee: TCheckBox;
    cbClient: TCheckBox;
    cbSupplier: TCheckBox;
    cbTransport: TCheckBox;
    btnResetTypes: TButton;
    edtDateReg: TDateTimePicker;
    edtDateBirth: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtNameAskInvokeSearch(Sender: TObject);
    procedure edtFantasyAskInvokeSearch(Sender: TObject);
    procedure edtPhoneAskInvokeSearch(Sender: TObject);
    procedure edtZIPAskInvokeSearch(Sender: TObject);
    procedure edtEmailAskInvokeSearch(Sender: TObject);
    procedure edtStateAskInvokeSearch(Sender: TObject);
    procedure edtCityAskInvokeSearch(Sender: TObject);
    procedure edtStreetAskInvokeSearch(Sender: TObject);
    procedure checkTypeFilters;
    procedure cbTransportClick(Sender: TObject);
    procedure cbSupplierClick(Sender: TObject);
    procedure cbClientClick(Sender: TObject);
    procedure cbEmployeeClick(Sender: TObject);
    procedure btnResetTypesClick(Sender: TObject);
    procedure edtDateRegChange(Sender: TObject);
    procedure edtDateBirthChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GET_Entity();
  end;

var
  viewEntity: TviewEntity;

implementation

{$R *.dfm}

{ TviewEntity }

procedure TviewEntity.btnCancelClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYEntity.State in dsEditModes then
  begin
    ServiceRegister.QRYEntity.Cancel;
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewEntity.btnCloseWindowClick(Sender: TObject);
begin
  inherited;
  viewEntity.Close;
end;

procedure TviewEntity.btnDeleteClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYEntity.RecordCount > 0 then
  begin
    ServiceRegister.QRYEntity.Delete;
    ShowMessage('Record deleted successfully');
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewEntity.btnEditClick(Sender: TObject);
begin
  inherited;
  CardPanelList.ActiveCard := cardRegister;
  edtName.SetFocus;
  ServiceRegister.QRYEntity.Edit;
  edtUpDate.Text := DateToStr(Date);
end;

procedure TviewEntity.btnNewClick(Sender: TObject);
var

  maxID: Integer;

begin

  inherited;
  CardPanelList.ActiveCard := cardRegister;
  edtName.SetFocus;
  ServiceRegister.QRYEntity.Insert;
  ServiceRegister.QRYIDPeople.Close;
  ServiceRegister.QRYIDPeople.SQL.Text := 'SELECT MAX(PEOPLE_ID) AS MaxID FROM PEOPLE';
  ServiceRegister.QRYIDPeople.Open;
  if not ServiceRegister.QRYIDPeople.FieldByName('MaxID').IsNull then
    maxID := ServiceRegister.QRYIDPeople.FieldByName('MaxID').AsInteger + 1
  else
    maxID := 1;
  edtPeopleID.Field.Value := maxID;
  edtRegDate.Text := DateToStr(Date);

end;

procedure TviewEntity.btnResetTypesClick(Sender: TObject);
begin
  inherited;
  cbEmployee.State := cbGrayed;
  cbClient.State := cbGrayed;
  cbTransport.State := cbGrayed;
  cbSupplier.State := cbGrayed;
end;

procedure TviewEntity.btnSaveClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYEntity.State in dsEditModes then
  begin
    ServiceRegister.QRYEntity.Post;
    ShowMessage('Registered successfully!');
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewEntity.cbClientClick(Sender: TObject);
begin
  inherited;
  checkTypeFilters;
end;

procedure TviewEntity.cbEmployeeClick(Sender: TObject);
begin
  inherited;
  checkTypeFilters;
end;

procedure TviewEntity.cbSupplierClick(Sender: TObject);
begin
  inherited;
  checkTypeFilters;
end;

procedure TviewEntity.cbTransportClick(Sender: TObject);
begin
  inherited;
  checkTypeFilters;
end;

procedure TviewEntity.checkTypeFilters;
var
  SQLBase: string;
  Filters: string;
begin
  SQLBase := 'SELECT * FROM PEOPLE WHERE 1=1';

  if cbEmployee.State = cbChecked then
    Filters := Filters + ' AND EMPLOYEE = TRUE'
  else if cbEmployee.State = cbUnchecked then
    Filters := Filters + ' AND EMPLOYEE = FALSE';

  if cbClient.State = cbChecked then
    Filters := Filters + ' AND CLIENT = TRUE'
  else if cbClient.State = cbUnchecked then
    Filters := Filters + ' AND CLIENT = FALSE';

  if cbSupplier.State = cbChecked then
    Filters := Filters + ' AND SUPPLIER = TRUE'
  else if cbSupplier.State = cbUnchecked then
    Filters := Filters + ' AND SUPPLIER = FALSE';

  if cbTransport.State = cbChecked then
    Filters := Filters + ' AND TRANSPORT = TRUE'
  else if cbTransport.State = cbUnchecked then
    Filters := Filters + ' AND TRANSPORT = FALSE';

  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Text := SQLBase + Filters;
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtCityAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND CITY LIKE :CITY');
  ServiceRegister.QRYEntity.ParamByName('-').AsString := '%' + edtCityAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtDateBirthChange(Sender: TObject);
var

  DateRegistered : TDate;

begin
  inherited;
  DateRegistered := edtDateReg.Date;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND DATE_REGISTER BETWEEN :DATEI AND :DATEF');
  ServiceRegister.QRYEntity.ParamByName('DATEI').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered);
  ServiceRegister.QRYEntity.ParamByName('DATEF').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered);
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtDateRegChange(Sender: TObject);
var

  DateRegistered : TDate;

begin
  inherited;
  DateRegistered := edtDateReg.Date;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND DATE_REGISTER BETWEEN :DATEI AND :DATEF');
  ServiceRegister.QRYEntity.ParamByName('DATEI').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered);
  ServiceRegister.QRYEntity.ParamByName('DATEF').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered);
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtEmailAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND EMAIL LIKE :EMAIL');
  ServiceRegister.QRYEntity.ParamByName('EMAIL').AsString := '%' + edtEmailAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtFantasyAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND FANTASY LIKE :FANTASY');
  ServiceRegister.QRYEntity.ParamByName('FANTASY').AsString := '%' + edtFantasyAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtNameAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND NAME LIKE :NAME');
  ServiceRegister.QRYEntity.ParamByName('NAME').AsString := '%' + edtNameAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtPhoneAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND PHONE LIKE :PHONE');
  ServiceRegister.QRYEntity.ParamByName('PHONE').AsString := '%' + edtPhoneAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtStateAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND STATE LIKE :STATE');
  ServiceRegister.QRYEntity.ParamByName('STATE').AsString := '%' + edtStateAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtStreetAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND STREET LIKE :STREET');
  ServiceRegister.QRYEntity.ParamByName('STREET').AsString := '%' + edtStreetAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.edtZIPAskInvokeSearch(Sender: TObject);
begin
  inherited;
  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Add(' AND ZIPCODE LIKE :ZIPCODE');
  ServiceRegister.QRYEntity.ParamByName('ZIPCODE').AsString := '%' + edtZIPAsk.Text + '%';
  ServiceRegister.QRYEntity.Open;
end;

procedure TviewEntity.FormShow(Sender: TObject);
begin
  inherited;
  GET_Entity;
end;

procedure TviewEntity.GET_Entity();
begin

  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Clear;
  ServiceRegister.QRYEntity.SQL.Add('SELECT * FROM PEOPLE WHERE 1=1');
  ServiceRegister.QRYEntity.Open();

end;

end.
