unit view.sales.products;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.lists, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Service.Connection, Service.Register, Vcl.DBCtrls;

type
  TviewProdSale = class(TviewBaseLists)
    Label1: TLabel;
    edtItemID: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    edtSaleID: TDBEdit;
    Label3: TLabel;
    edtProdID: TDBEdit;
    edtProdName: TDBEdit;
    Label4: TLabel;
    edtQTDE: TDBEdit;
    Label5: TLabel;
    edtUnit: TDBEdit;
    Label6: TLabel;
    edtTotal: TDBEdit;
    Label7: TLabel;
    edtDisc: TDBEdit;
    Label8: TLabel;
    edtAddict: TDBEdit;
    Label9: TLabel;
    edtSubtotal: TDBEdit;
    Label10: TLabel;
    edtOBS: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewProdSale: TviewProdSale;

implementation

{$R *.dfm}

procedure TviewProdSale.FormShow(Sender: TObject);
begin
  inherited;

  CardPanelList.ActiveCard := cardRegister;

end;

end.
