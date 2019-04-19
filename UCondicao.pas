unit uCondicao;

interface

type TCondicao = class
private
vCondicao :String;
procedure SetCondicao(const Value: String);
protected
public
property condicao   :String read vCondicao write SetCondicao;
end;

implementation

procedure TCondicao.Setcondicao(const Value: String);
begin
  vCondicao := Value;
end;

end.
