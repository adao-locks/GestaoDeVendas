program SalesPlus;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  Service.Connection in 'src\services\Service.Connection.pas' {ServiceConnection: TDataModule},
  Service.Register in 'src\services\Service.Register.pas' {ServiceRegister: TDataModule},
  Provider.Constants in 'src\providers\Provider.Constants.pas',
  view.base in 'src\views\view.base.pas' {viewBase},
  view.base.lists in 'src\views\view.base.lists.pas' {viewBaseLists},
  view.entity in 'src\views\view.entity.pas' {viewEntity},
  Vcl.Themes,
  Vcl.Styles,
  view.sales in 'src\views\view.sales.pas' {viewSales},
  view.product2 in 'src\views\view.product2.pas' {viewProducts},
  view.logs in 'src\views\view.logs.pas' {viewLogs},
  view.company in 'src\views\view.company.pas' {viewCompany};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConnection, ServiceConnection);
  Application.CreateForm(TServiceRegister, ServiceRegister);
  Application.CreateForm(TviewCompany, viewCompany);
  Application.Run;
end.
