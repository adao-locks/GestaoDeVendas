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
  view.product in 'src\views\view.product.pas' {viewProduct},
  view.sales in 'src\views\view.sales.pas' {viewBase1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConnection, ServiceConnection);
  Application.CreateForm(TServiceRegister, ServiceRegister);
  Application.CreateForm(TviewProduct, viewProduct);
  Application.CreateForm(TviewBase1, viewBase1);
  Application.Run;
end.
