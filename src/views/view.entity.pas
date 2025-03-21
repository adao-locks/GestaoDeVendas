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
  Vcl.ComCtrls, Service.Connection;

type
  TviewEntity = class(TviewBaseLists)
    lblPeopleID: TLabel;
    edtPeopleID: TDBEdit;
    lblName: TLabel;
    edtName: TDBEdit;
    lblBirth: TLabel;
    lblRegDate: TLabel;
    edtRegDate: TDBEdit;
    lblEIN: TLabel;
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
    edtDateReg: TDateTimePicker;
    edtDateReg2: TDateTimePicker;
    dtBirthday: TDateTimePicker;
    btnConsult: TButton;
    edtEIN: TMaskEdit;
    rbPP: TRadioButton;
    rbLE: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnConsultClick(Sender: TObject);
    procedure rbLEClick(Sender: TObject);
    procedure rbPPClick(Sender: TObject);
    procedure edtEINChange(Sender: TObject);
  private
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

procedure TviewEntity.btnConsultClick(Sender: TObject);
var

  DateRegistered1 : TDate;
  DateRegistered2 : TDate;

begin
  inherited;

  DateRegistered1 := edtDateReg.Date;
  DateRegistered2 := edtDateReg2.Date;
  ServiceRegister.QRYEntity.Close;


  ServiceRegister.QRYEntity.SQL.Add(' AND DATE_REGISTER BETWEEN :DATEI AND :DATEF');
  ServiceRegister.QRYEntity.ParamByName('DATEI').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered1);
  ServiceRegister.QRYEntity.ParamByName('DATEF').AsString := FormatDateTime('YYYY-MM-DD', DateRegistered2);

  if edtNameAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND NAME LIKE :NAME');
    ServiceRegister.QRYEntity.ParamByName('NAME').AsString := '%' + edtNameAsk.Text + '%';
  end;

  if edtFantasyAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND FANTASY LIKE :FANTASY');
    ServiceRegister.QRYEntity.ParamByName('FANTASY').AsString := '%' + edtFantasyAsk.Text + '%';
  end;

  if edtPhoneAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND PHONE LIKE :PHONE');
    ServiceRegister.QRYEntity.ParamByName('PHONE').AsString := '%' + edtPhoneAsk.Text + '%';
  end;

  if edtEmailAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND EMAIL LIKE :EMAIL');
    ServiceRegister.QRYEntity.ParamByName('EMAIL').AsString := '%' + edtEmailAsk.Text + '%';
  end;

  if edtZIPAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND ZIPCODE LIKE :ZIPCODE');
    ServiceRegister.QRYEntity.ParamByName('ZIPCODE').AsString := '%' + edtZIPAsk.Text + '%';
  end;

  if edtStateAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND STATE LIKE :STATE');
    ServiceRegister.QRYEntity.ParamByName('STATE').AsString := '%' + edtStateAsk.Text + '%';
  end;

  if edtCityAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND CITY LIKE :CITY');
    ServiceRegister.QRYEntity.ParamByName('-').AsString := '%' + edtCityAsk.Text + '%';
  end;

  if edtStreetAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND STREET LIKE :STREET');
    ServiceRegister.QRYEntity.ParamByName('STREET').AsString := '%' + edtStreetAsk.Text + '%';
  end;

  ServiceRegister.QRYEntity.Open;

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
  edtEmployee.State := cbUnchecked;
  edtClient.State := cbUnchecked;
  edtSupplier.State := cbUnchecked;
  edtTransport.State := cbUnchecked;

end;

procedure TviewEntity.btnSaveClick(Sender: TObject);
begin

  inherited;
  if ServiceRegister.QRYEntity.State in dsEditModes then
  begin

    ServiceRegister.QRYEntity.FieldByName('DATE_BIRTH').AsDateTime := dtBirthday.Date;
    ServiceRegister.QRYEntity.FieldByName('EIN_CNPJ').AsString := edtEIN.Text;
    ServiceRegister.QRYEntity.FieldByName('COM_ID').AsString := ServiceConnection.SERVICE_COM_ID;
    ServiceRegister.QRYEntity.FieldByName('USER').AsString := ServiceConnection.SERVICE_USER;
    ServiceRegister.QRYEntity.Post;
    ShowMessage('Registered successfully!');
    CardPanelList.ActiveCard := cardSearch;

  end;

end;

procedure TviewEntity.edtEINChange(Sender: TObject);
begin
  inherited;
  if (rbPP.Checked = false) and (rbLE.Checked = false) then
  begin
    ShowMessage('Please, select a type of person!');
  end;
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
  ServiceRegister.QRYEntity.SQL.Add('SELECT * FROM PEOPLE WHERE 1=1 ORDER BY 1');
  ServiceRegister.QRYEntity.Open();

end;

procedure TviewEntity.rbLEClick(Sender: TObject);
begin
  inherited;
  edtEIN.EditMask := '99.999.999/9999-99;1;_';
end;

procedure TviewEntity.rbPPClick(Sender: TObject);
begin
  inherited;
  edtEIN.EditMask := '999.999.999-99;1;_';
end;

end.
