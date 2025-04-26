unit view.logs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.lists, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Service.Register, Vcl.WinXCtrls,
  Provider.Utils;

type
  TviewLogs = class(TviewBaseLists)
    btnConsult: TButton;
    lblNameAsk: TLabel;
    edtNameAsk: TSearchBox;
    SearchBox1: TSearchBox;
    Label1: TLabel;
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
  Get_Logs;
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
