unit Provider.Utils;

interface

uses
  Data.DB, System.SysUtils, System.Classes, Vcl.Grids, Vcl.DBGrids, System.Types;

  procedure ResizeDBGridColumns(DBGrid: TDBGrid);
  procedure AlighDBGridColumns(DBGrid: TDBGrid);

implementation

procedure ResizeDBGridColumns(DBGrid: TDBGrid);
var
  DataSet: TDataSet;
  i, Largura, MaxLargura, LarguraTitulo: Integer;
  TextoColuna, TextoCampo: string;
  BookMark: TBookmark;
begin
  if not Assigned(DBGrid) or not Assigned(DBGrid.DataSource) or
     not Assigned(DBGrid.DataSource.DataSet) or
     (DBGrid.DataSource.DataSet.RecordCount = 0) then
    Exit;

  DataSet := DBGrid.DataSource.DataSet;

  DataSet.DisableControls;
  try
    BookMark := DataSet.GetBookmark;

    for i := 0 to DBGrid.Columns.Count - 1 do
    begin
      TextoColuna := DBGrid.Columns[i].Title.Caption;
      LarguraTitulo := DBGrid.Canvas.TextWidth(TextoColuna) + 20;

      MaxLargura := 0;

      DataSet.First;
      while not DataSet.Eof do
      begin
        if Assigned(DBGrid.Columns[i].Field) then
        begin
          TextoCampo := DBGrid.Columns[i].Field.AsString;
          Largura := DBGrid.Canvas.TextWidth(TextoCampo) + 20;

          if Largura > MaxLargura then
            MaxLargura := Largura;
        end;
        DataSet.Next;
      end;

      if LarguraTitulo > MaxLargura then
        MaxLargura := LarguraTitulo;

      DBGrid.Columns[i].Width := MaxLargura;
    end;

    if DataSet.BookmarkValid(BookMark) then
      DataSet.GotoBookmark(BookMark);
    DataSet.FreeBookmark(BookMark);

  finally
    DataSet.EnableControls;
  end;
end;

procedure AlighDBGridColumns(DBGrid: TDBGrid);
var
  i: Integer;
begin
  for i := 0 to DBGrid.Columns.Count - 1 do
  begin
    DBGrid.Columns[i].Alignment := taLeftJustify;
  end;
end;

end.
