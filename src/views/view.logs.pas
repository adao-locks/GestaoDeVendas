unit view.logs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.lists, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Service.Register, Vcl.WinXCtrls,
  Provider.Utils, Vcl.ComCtrls;

type
  TviewLogs = class(TviewBaseLists)
    btnConsult: TButton;
    lblNameAsk: TLabel;
    edtNameAsk: TSearchBox;
    SearchBox1: TSearchBox;
    Label1: TLabel;
    lblDateRegAsk: TLabel;
    lblDateBirthAsk: TLabel;
    edtDateReg: TDateTimePicker;
    edtDateReg2: TDateTimePicker;
    procedure btnCloseWindowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConsultClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Get_Logs();
  end;

var
  viewLogs: TviewLogs;

implementation

{$R *.dfm}

procedure TviewLogs.btnCloseWindowClick(Sender: TObject);
begin
  inherited;
  viewLogs.Close;
end;

procedure TviewLogs.btnConsultClick(Sender: TObject);
begin
  inherited;


  ServiceRegister.QRYEntity.SQL.Text := 'SELECT * FROM PEOPLE WHERE 1=1';

  DateRegistered1 := edtDateReg.Date;
  DateRegistered2 := edtDateReg2.Date;

  ServiceRegister.QRYEntity.SQL.Add
    (' AND DATE_REGISTER BETWEEN :DATEI AND :DATEF');
  ServiceRegister.QRYEntity.ParamByName('DATEI').AsDate := DateRegistered1;
  ServiceRegister.QRYEntity.ParamByName('DATEF').AsDate := DateRegistered2;

  if edtNameAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND NAME LIKE :NAME');
    ServiceRegister.QRYEntity.ParamByName('NAME').AsString :=
      '%' + edtNameAsk.Text + '%';
  end;

  if edtFantasyAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND FANTASY LIKE :FANTASY');
    ServiceRegister.QRYEntity.ParamByName('FANTASY').AsString :=
      '%' + edtFantasyAsk.Text + '%';
  end;

  if edtPhoneAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND PHONE LIKE :PHONE');
    ServiceRegister.QRYEntity.ParamByName('PHONE').AsString :=
      '%' + edtPhoneAsk.Text + '%';
  end;

  if edtEmailAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND EMAIL LIKE :EMAIL');
    ServiceRegister.QRYEntity.ParamByName('EMAIL').AsString :=
      '%' + edtEmailAsk.Text + '%';
  end;

  if edtZIPAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND ZIPCODE LIKE :ZIPCODE');
    ServiceRegister.QRYEntity.ParamByName('ZIPCODE').AsString :=
      '%' + edtZIPAsk.Text + '%';
  end;

  if edtStateAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND STATE LIKE :STATE');
    ServiceRegister.QRYEntity.ParamByName('STATE').AsString :=
      '%' + edtStateAsk.Text + '%';
  end;

  if edtCityAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND CITY LIKE :CITY');
    ServiceRegister.QRYEntity.ParamByName('-').AsString :=
      '%' + edtCityAsk.Text + '%';
  end;

  if edtStreetAsk.Text <> '' then
  begin
    ServiceRegister.QRYEntity.SQL.Add(' AND STREET LIKE :STREET');
    ServiceRegister.QRYEntity.ParamByName('STREET').AsString :=
      '%' + edtStreetAsk.Text + '%';
  end;

  ServiceRegister.QRYEntity.Open;
  ResizeDBGridColumns(DBGData);
  AlighDBGridColumns(DBGData);
end;

procedure TviewLogs.FormShow(Sender: TObject);
begin
  inherited;
  ResizeDBGridColumns(DBGData);
  AlighDBGridColumns(DBGData);
end;

procedure TviewLogs.Get_Logs;
begin

  ServiceRegister.QRYLogs.Close;
  ServiceRegister.QRYLogs.SQL.Clear;
  ServiceRegister.QRYLogs.SQL.Add('SELECT * FROM LOGS WHERE 1=1');
  ServiceRegister.QRYLogs.Open();

end;

procedure TviewLogs.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Get_Logs;
end;

end.
