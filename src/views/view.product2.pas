unit view.product2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.lists, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Service.Register, Vcl.Mask,
  Vcl.DBCtrls, Vcl.WinXCtrls, Vcl.ComCtrls;

type
  TviewProducts = class(TviewBaseLists)
    cbActive: TDBCheckBox;
    edtBrand: TDBEdit;
    edtCategory: TDBEdit;
    edtDateReg: TDBEdit;
    edtDateUp: TDBEdit;
    edtDescription: TDBEdit;
    edtIdProd: TDBEdit;
    edtName: TDBEdit;
    edtSupplier: TDBEdit;
    edtUn: TDBEdit;
    edtUserReg: TDBEdit;
    edtUserUp: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbActiveAsk: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    edtBrandAsk: TSearchBox;
    edtCategoryAsk: TSearchBox;
    edtDateBirth: TDateTimePicker;
    edtNameAsk: TSearchBox;
    edtSupplierAsk: TSearchBox;
    edtUnAsk: TSearchBox;
    edtUserRegAsk: TSearchBox;
    edtUserUpAsk: TSearchBox;
    lblCityAsk: TLabel;
    lblDateBirthAsk: TLabel;
    lblDateRegAsk: TLabel;
    lblEmailAsk: TLabel;
    lblFantasyAsk: TLabel;
    lblNameAsk: TLabel;
    lblPhoneAsk: TLabel;
    lblStateAsk: TLabel;
    lblZipAsk: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Get_Product();
  end;

var
  viewProducts: TviewProducts;

implementation

{$R *.dfm}

{ TviewBaseLists1 }

procedure TviewProducts.btnCancelClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYProduct.State in dsEditModes then
  begin
    ServiceRegister.QRYProduct.Cancel;
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewProducts.btnCloseWindowClick(Sender: TObject);
begin
  inherited;
  viewProducts.Close;
end;

procedure TviewProducts.btnDeleteClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYProduct.RecordCount > 0 then
  begin
    ServiceRegister.QRYProduct.Delete;
    ShowMessage('Record deleted successfully');
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewProducts.btnEditClick(Sender: TObject);
begin
  inherited;

  CardPanelList.ActiveCard := cardRegister;
  edtName.SetFocus;
  ServiceRegister.QRYProduct.Edit;
  edtDateUp.Text := DateToStr(Date);

end;



procedure TviewProducts.btnNewClick(Sender: TObject);
VAR

  maxID : integer;

begin
  inherited;

  CardPanelList.ActiveCard := cardRegister;
  edtName.SetFocus;
  cbActive.State := cbChecked;
  ServiceRegister.QRYProduct.Insert;
  ServiceRegister.QRYIDProd.Close;
  ServiceRegister.QRYIDProd.SQL.Text := 'SELECT MAX(PROD_ID) AS MaxID FROM PRODUCT';
  ServiceRegister.QRYIDProd.Open;
  if not ServiceRegister.QRYIDProd.FieldByName('MaxID').IsNull then
    maxID := ServiceRegister.QRYIDProd.FieldByName('MaxID').AsInteger + 1
  else
    maxID := 1;
  edtIdProd.Field.Value := maxID;
  edtDateReg.Text := DateToStr(Date);

end;

procedure TviewProducts.btnSaveClick(Sender: TObject);
begin
  inherited;

  if ServiceRegister.QRYProduct.State in dsEditModes then
  begin
    ServiceRegister.QRYProduct.Post;
    ShowMessage('Registered successfully!');
    CardPanelList.ActiveCard := cardSearch;
  end;

end;

procedure TviewProducts.FormCreate(Sender: TObject);
begin
  inherited;

  CardPanelList.ActiveCard := cardSearch;

end;

procedure TviewProducts.FormShow(Sender: TObject);
begin
  inherited;

  Get_Product;

end;

procedure TviewProducts.Get_Product;
begin

  ServiceRegister.QRYProduct.Close;
  ServiceRegister.QRYProduct.SQL.Clear;
  ServiceRegister.QRYProduct.SQL.Add('SELECT * FROM PRODUCT WHERE 1=1');
  ServiceRegister.QRYProduct.Open();

end;

end.
