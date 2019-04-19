unit uColuna;

interface

type TColuna = class
private
vColuna :String;
procedure SetColuna(const Value: String);
protected
public
property coluna :String read vColuna write SetColuna;
end;

implementation

procedure TColuna.SetColuna(const Value: String);
begin
  vColuna := Value;
end;

end.

