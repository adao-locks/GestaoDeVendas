unit view.entity;

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
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Service.Register;

type
  TviewEntity = class(TviewBaseLists)
    procedure FormShow(Sender: TObject);
    procedure btnCloseWindowClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GET_Entity(iTIPO: string);
  end;

var
  viewEntity: TviewEntity;

implementation

{$R *.dfm}

{ TviewEntity }

procedure TviewEntity.btnCloseWindowClick(Sender: TObject);
begin
  inherited;
  viewEntity.Close;
end;

procedure TviewEntity.FormShow(Sender: TObject);
begin
  inherited;
  GET_Entity('C');
end;

procedure TviewEntity.GET_Entity(iTIPO: string);
begin

  ServiceRegister.QRYEntity.Close;
  ServiceRegister.QRYEntity.SQL.Clear;
  ServiceRegister.QRYEntity.SQL.Add('select * from entidade where tipo = :iTIPO');
  ServiceRegister.QRYEntity.Params[0].AsString := iTIPO;
  ServiceRegister.QRYEntity.Open();

end;

end.
