unit view.base.lists;

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
  view.base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TviewBaseLists = class(TviewBase)
    pnlTop: TPanel;
    pnlFooter: TPanel;
    pnlLogo: TPanel;
    pnlCloseWindow: TPanel;
    btnCloseWindow: TButton;
    ImgList: TImageList;
    lblTitleWindow: TLabel;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    btnDelete: TSpeedButton;
    pnlBackground: TPanel;
    CardPanelList: TCardPanel;
    cardSearch: TCard;
    cardRegister: TCard;
    pnlSearch: TPanel;
    lblSearch: TLabel;
    pnlRegister: TPanel;
    lblRegister: TLabel;
    DBGData: TDBGrid;
    DSData: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewBaseLists: TviewBaseLists;

implementation

{$R *.dfm}

procedure TviewBaseLists.FormCreate(Sender: TObject);
begin
  inherited;
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  FormatSettings.DateSeparator := '/';
  FormatSettings.DecimalSeparator := '.';
end;

procedure TviewBaseLists.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if Key = VK_ESCAPE then
    Self.Close;

  if Key = VK_RETURN then
    perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TviewBaseLists.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelList.ActiveCard := cardSearch;
end;

end.
