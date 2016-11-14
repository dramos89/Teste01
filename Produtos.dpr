program Produtos;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadastrar in 'uCadastrar.pas' {frmCadastroProduto},
  uSobre in 'uSobre.pas' {frmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
