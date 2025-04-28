unit Service.Stock;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, Data.DB;

type
  TStockService = class
  public
    class procedure StockEntry(AProdutoID, AQuantidade: Integer);
  end;

implementation

uses
  Service.Connection;

{ TStockService }

class procedure TStockService.StockEntry(AProdutoID, AQuantidade: Integer);
var
  Qry: TFDQuery;
  ProdutoExiste: Boolean;
begin
  if not ServiceConnection.FDConn.Connected then
    raise Exception.Create('Conexão com o banco de dados não está ativa.');

  Qry := TFDQuery.Create(nil);
  try
    Qry.Connection := Service.Connection.ServiceConnection.FDConn;
    Qry.SQL.Text := 'SELECT 1 FROM produtos WHERE id = :id';
    Qry.ParamByName('id').AsInteger := AProdutoID;
    Qry.Open;
    ProdutoExiste := not Qry.IsEmpty;
    Qry.Close;

    if ProdutoExiste then
    begin
      Qry.SQL.Text :=
        'UPDATE produtos ' +
        'SET estoque = estoque + :quantidade ' +
        'WHERE id = :id';
    end
    else
    begin
      Qry.SQL.Text :=
        'INSERT INTO produtos (id, estoque) ' +
        'VALUES (:id, :quantidade)';
    end;

    Qry.ParamByName('id').AsInteger := AProdutoID;
    Qry.ParamByName('quantidade').AsInteger := AQuantidade;
    Qry.ExecSQL;
  finally
    Qry.Free;
  end;
end;


end.

