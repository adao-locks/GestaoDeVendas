unit view.company;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.lists, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TviewCompany = class(TviewBaseLists)
    cbActive: TDBCheckBox;
    Label1: TLabel;
    edtIDCom: TDBEdit;
    cbHeadquarters: TDBCheckBox;
    Label2: TLabel;
    edtComName: TDBEdit;
    Label3: TLabel;
    edtFantasy: TDBEdit;
    Label4: TLabel;
    edtEIN: TDBEdit;
    Label5: TLabel;
    edtPhone: TDBEdit;
    Label6: TLabel;
    edtEmail: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtStreet: TDBEdit;
    Label9: TLabel;
    edtCity: TDBEdit;
    Label10: TLabel;
    edtState: TDBEdit;
    Label11: TLabel;
    edtZip: TDBEdit;
    Label13: TLabel;
    edtSite: TDBEdit;
    Label14: TLabel;
    edtUser: TDBEdit;
    Label12: TLabel;
    edtNum: TDBEdit;
    DTReg: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCompany: TviewCompany;

implementation

uses
  Service.Connection;

{$R *.dfm}

procedure TviewCompany.btnCancelClick(Sender: TObject);
begin
  inherited;
  if ServiceConnection.QRYEnterprise.State in dsEditModes then
  begin
    ServiceConnection.QRYEnterprise.Cancel;
    edtIDCom.Enabled := False;
    edtComName.Enabled := False;
    edtFantasy.Enabled := False;
    edtEIN.Enabled := False;
    edtPhone.Enabled := False;
    edtEmail.Enabled := False;
    edtSite.Enabled := False;
    edtZip.Enabled := False;
    edtNum.Enabled := False;
    edtStreet.Enabled := False;
    edtState.Enabled := False;
    edtCity.Enabled := False;
  end;
end;

procedure TviewCompany.btnCloseWindowClick(Sender: TObject);
begin
  inherited;
  viewCompany.Close;
end;

procedure TviewCompany.btnEditClick(Sender: TObject);
begin
  inherited;
  ServiceConnection.QRYEnterprise.Edit;
  edtIDCom.Enabled := True;
  edtComName.Enabled := True;
  edtFantasy.Enabled := True;
  edtEIN.Enabled := True;
  edtPhone.Enabled := True;
  edtEmail.Enabled := True;
  edtSite.Enabled := True;
  edtZip.Enabled := True;
  edtNum.Enabled := True;
  edtStreet.Enabled := True;
  edtState.Enabled := True;
  edtCity.Enabled := True;
end;

procedure TviewCompany.btnSaveClick(Sender: TObject);
begin
  inherited;
  if ServiceConnection.QRYEnterprise.State in dsEditModes then
  begin
    ServiceConnection.QRYEnterprise.Post;
    ShowMessage('Registered successfully!');
    edtIDCom.Enabled := False;
    edtComName.Enabled := False;
    edtFantasy.Enabled := False;
    edtEIN.Enabled := False;
    edtPhone.Enabled := False;
    edtEmail.Enabled := False;
    edtSite.Enabled := False;
    edtZip.Enabled := False;
    edtNum.Enabled := False;
    edtStreet.Enabled := False;
    edtState.Enabled := False;
    edtCity.Enabled := False;
  end;
end;

procedure TviewCompany.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelList.ActiveCard := cardRegister;
end;

end.
