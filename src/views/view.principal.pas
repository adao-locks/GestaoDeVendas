unit view.principal;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  Provider.Constants,
  view.entity,
  view.sales,
  view.product2, view.logs, Service.Register, Service.Connection;

type
  TViewPrincipal = class(TForm)
    pnlTop: TPanel;
    ImageList1: TImageList;
    pnlMenu: TPanel;
    pnlPanelPrincipal: TPanel;
    pnlBottom: TPanel;
    pnlContent: TPanel;
    pnlLogo: TPanel;
    pnlLogoLineTop: TPanel;
    lblTitleSystem: TLabel;
    pnlLogoLineBottom: TPanel;
    pnlUser: TPanel;
    pnlLineUser: TPanel;
    pnlUserLogo: TPanel;
    imgUserDefault: TImage;
    pnlUserData: TPanel;
    lblUserName: TLabel;
    lblUserFunction: TLabel;
    pnlBusiness: TPanel;
    pnlBusinessLine: TPanel;
    lblBusiness: TLabel;
    Button1: TButton;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlMenuData: TPanel;
    btnConfig: TSpeedButton;
    btnSales: TSpeedButton;
    btnClients: TSpeedButton;
    btnProducts: TSpeedButton;
    btnLogs: TSpeedButton;
    btnReports: TSpeedButton;
    imgUserHover: TImage;
    imgBackground: TImage;
    procedure Button1Click(Sender: TObject);
    procedure btnSalesClick(Sender: TObject);
    procedure btnReportsClick(Sender: TObject);
    procedure btnClientsClick(Sender: TObject);
    procedure btnLogsClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTitleSystemMouseEnter(Sender: TObject);
    procedure lblTitleSystemMouseLeave(Sender: TObject);
    procedure imgUserDefaultMouseEnter(Sender: TObject);
    procedure imgUserHoverMouseLeave(Sender: TObject);
  private
    procedure GET_LineMenu(Sender: TObject);
  public

  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnClientsClick(Sender: TObject);
begin

  GET_LineMenu(Sender);
  viewEntity := TviewEntity.Create(Self);

  viewEntity.Left := pnlContent.ClientToScreen(Point(0, 0)).X;
  viewEntity.Top := pnlContent.ClientToScreen(Point(0, 0)).Y;
  viewEntity.Width := pnlContent.Width;
  viewEntity.Height := pnlContent.Height;

  try
    viewEntity.ShowModal;
  finally
    FreeAndNil(viewEntity);
  end;

end;

procedure TViewPrincipal.btnConfigClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnProductsClick(Sender: TObject);
begin

  GET_LineMenu(Sender);
  viewProducts := TviewProducts.Create(Self);

  viewProducts.Left := pnlContent.ClientToScreen(Point(0, 0)).X;
  viewProducts.Top := pnlContent.ClientToScreen(Point(0, 0)).Y;
  viewProducts.Width := pnlContent.Width;
  viewProducts.Height := pnlContent.Height;

  try
    viewProducts.ShowModal;
  finally
    FreeAndNil(viewProducts);
  end;
end;

procedure TViewPrincipal.btnReportsClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnSalesClick(Sender: TObject);
begin

  GET_LineMenu(Sender);
  viewSales := TviewSales.Create(Self);

  viewSales.Left := pnlContent.ClientToScreen(Point(0, 0)).X;
  viewSales.Top := pnlContent.ClientToScreen(Point(0, 0)).Y;
  viewSales.Width := pnlContent.Width;
  viewSales.Height := pnlContent.Height;

  try
    viewSales.ShowModal;
  finally
    FreeAndNil(viewSales);
  end;

end;

procedure TViewPrincipal.btnLogsClick(Sender: TObject);
begin

  GET_LineMenu(Sender);
  viewLogs := TviewLogs.Create(Self);

  viewLogs.Left := pnlContent.ClientToScreen(Point(0, 0)).X;
  viewLogs.Top := pnlContent.ClientToScreen(Point(0, 0)).Y;
  viewLogs.Width := pnlContent.Width;
  viewLogs.Height := pnlContent.Height;

  try
    viewLogs.ShowModal;
  finally
    FreeAndNil(viewLogs);
  end;

end;

procedure TViewPrincipal.Button1Click(Sender: TObject);
begin

  Application.Terminate;

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin

  GET_LineMenu(btnReports);

  lblBusiness.Caption := sCOMPANY_NAME;
  lblUserName.Caption := ServiceConnection.QRYUsers.FieldByName('NAME').AsString;

end;

procedure TViewPrincipal.GET_LineMenu(Sender: TObject);
begin

  ShapeMenu.Left    := 0;
  ShapeMenu.Top     := 0;
  ShapeMenu.Height  := TSpeedButton(Sender).Height;
  ShapeMenu.Top     := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;

end;

procedure TViewPrincipal.imgUserDefaultMouseEnter(Sender: TObject);
begin
  imgUserDefault.Visible := false;
  imgUserHover.Visible := true;
end;

procedure TViewPrincipal.imgUserHoverMouseLeave(Sender: TObject);
begin
  imgUserDefault.Visible := true;
  imgUserHover.Visible := false;
end;

procedure TViewPrincipal.lblTitleSystemMouseEnter(Sender: TObject);
begin
  lblTitleSystem.Font.Color := $3ce03c;
end;

procedure TViewPrincipal.lblTitleSystemMouseLeave(Sender: TObject);
begin
  lblTitleSystem.Font.Color := clBlack;
end;

end.
