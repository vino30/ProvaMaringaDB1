unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UColuna,UTabela,UCondicao;
type
  TFrPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    MemoColuna: TMemo;
    MemoTabela: TMemo;
    MemoCondicao: TMemo;
    MemoGeracao: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrincipal: TFrPrincipal;

implementation

{$R *.dfm}

procedure TFrPrincipal.Button1Click(Sender: TObject);
var
  vCampos   : TColuna;
  vTabela   : TTabelas;
  vCondicao : TCondicao;
  vSQL : String;
  I: Integer;
begin
  vCampos    := TColuna.Create;
  vTabela    := TTabelas.Create;
  vCondicao  := TCondicao.Create;
  vCampos.coluna     := '';
  vTabela.tabela     := '';
  vCondicao.condicao := '';
  vSQL      := '';
  for I := 0 to MemoColuna.Lines.Count -1 do begin
    if vCampos.coluna = '' then
      vCampos.coluna := MemoColuna.Lines[i]
    else
      vCampos.coluna := vCampos.coluna+','+MemoColuna.Lines[i];
  end;
  vTabela.tabela   := MemoTabela.Text;
  for I := 0 to MemoCondicao.Lines.Count -1 do begin
    if vCondicao.condicao = '' then
      vCondicao.condicao := MemoCondicao.Lines[i]
    else
      vCondicao.condicao := vCondicao.condicao+' AND '+MemoCondicao.Lines[i];
  end;
  vSQL := 'Select '+vCampos.coluna+#13+#10+' FROM '+vTabela.tabela+' WHERE '+vCondicao.condicao;
  MemoGeracao.Lines.Add(vSQL);
end;

procedure TFrPrincipal.FormShow(Sender: TObject);
begin
  MemoColuna.Lines.Add('Codigo');
  MemoColuna.Lines.Add('Nome');
  MemoTabela.Lines.Add('Funcionarios');
  MemoCondicao.Lines.Add('Cidade = ''Maringá''');
  MemoCondicao.Lines.Add('Salario > 1000');
end;

end.
