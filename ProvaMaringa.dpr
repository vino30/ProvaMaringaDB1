program ProvaMaringa;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FrPrincipal},
  UColuna in 'UColuna.pas',
  UTabela in 'UTabela.pas',
  UCondicao in 'UCondicao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrPrincipal, FrPrincipal);
  Application.Run;
end.
