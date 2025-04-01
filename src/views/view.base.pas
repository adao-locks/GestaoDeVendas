unit view.base;

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
  Vcl.Dialogs;

type
  TviewBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  viewBase: TviewBase;

implementation

{$R *.dfm}

procedure TviewBase.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  FormatSettings.DateSeparator := '/';
  FormatSettings.DecimalSeparator := '.';
end;

procedure TviewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL, 0, 0);

end;

end.
