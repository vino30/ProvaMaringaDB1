unit uTabela;

interface

type TTabelas = class
private
vTabela :String;
procedure SetTabelas(const Value: String);
protected
public
property tabela :String read vTabela write SetTabelas;
end;

implementation

procedure TTabelas.SetTabelas(const Value: String);
begin
  vTabela := Value;
end;

end.

