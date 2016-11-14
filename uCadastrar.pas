unit uCadastrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, ADODB, uPrincipal;

type
  TfrmCadastroProduto = class(TForm)
    Panel1: TPanel;
    btnSair: TButton;
    pnlPrincipal: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    edtDescricao: TDBEdit;
    edtQuantidade: TDBEdit;
    edtPrecoU: TDBEdit;
    dbnvgr1: TDBNavigator;
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    procedure limpar;
    function validarCampos:boolean;
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

procedure TfrmCadastroProduto.edtQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8]) then
    Key:= #0;
end;

procedure TfrmCadastroProduto.edtPrecoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8,',']) then
    Key:= #0;
  if ((Pos(',',edtPrecoU.Text) > 0) and (Key in [','])) then
    Key:= #0;
end;

procedure TfrmCadastroProduto.btnSairClick(Sender: TObject);
begin
  frmCadastroProduto:= nil;
//  frmCadastroProduto.Free;
  close;
end;

procedure TfrmCadastroProduto.limpar;
begin
  edtDescricao.Text:= '';
  edtQuantidade.Text:= '';
  edtPrecoU.Text:= '';
end;

procedure TfrmCadastroProduto.FormCreate(Sender: TObject);
begin
  frmPrincipal.SetDBNavigator(dbnvgr1);
end;

function TfrmCadastroProduto.validarCampos:boolean;
begin
  if (frmCadastroProduto.edtDescricao.Text = '') then
  begin
    MessageDlg('Digite a Descrição do novo produto.', mtInformation, [mbOK], 0);
    frmCadastroProduto.edtDescricao.SetFocus;
    result:= false;
  end
  else if (frmCadastroProduto.edtQuantidade.Text = '') then
  begin                                            
    MessageDlg('Digite a Quantidade do novo produto.', mtInformation, [mbOK], 0);
    frmCadastroProduto.edtQuantidade.SetFocus;
    result:= false;
  end;             
    result:= true;
end;

procedure TfrmCadastroProduto.dbnvgr1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if not validarCampos then
    exit;
end;

end.
