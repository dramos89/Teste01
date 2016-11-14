unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, ADODB, Buttons, StdCtrls;  
type
  TDBNewNavigator = class(TDBNavigator);

type

  TfrmPrincipal = class(TForm)
    connection: TADOConnection;
    tblProdutos: TADOTable;
    dtsConnect: TDataSource;
    pnlPrincipal: TPanel;
    grdPrincipal: TDBGrid;
    btnSobre: TSpeedButton;
    nvNavigatorPrincipal: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure nvNavigatorPrincipalClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnSobreClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nvNavigatorPrincipalBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }     
    procedure SetDBNavigator(Navigator: TDBNavigator);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uCadastrar, uSobre;

{$R *.dfm}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  tblProdutos.Active:= true;
end;

procedure TfrmPrincipal.nvNavigatorPrincipalClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  If (Button = nbInsert) then
  begin
    If (frmCadastroProduto = Nil) Then
      frmCadastroProduto := TfrmCadastroProduto.Create(Application);
    frmCadastroProduto.ShowModal;
  end
  else if (Button = nbEdit) then
  begin
    If (frmCadastroProduto = Nil) Then
      frmCadastroProduto := TfrmCadastroProduto.Create(Application);
    frmCadastroProduto.ShowModal;
  end;

end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
begin
    If (frmSobre = Nil) Then
      frmSobre := TfrmSobre.Create(Application);
    frmSobre.ShowModal;
end;

procedure TfrmPrincipal.SetDBNavigator(Navigator: TDBNavigator);
var
  B: TNavigateBtn;
begin
  for B := Low(TNavigateBtn) to High(TNavigateBtn) do
    with TDBNewNavigator(Navigator).Buttons[B] do
    begin
      case Index of
        nbFirst : Caption := 'Primeiro';
        nbPrior : Caption := 'Anterior';
        nbNext : Caption := 'Próximo';
        nbLast : Caption := 'Último';
        nbInsert : Caption := 'Novo';
        nbDelete : Caption := 'Excluir';
        nbEdit : Caption := 'Editar';
        nbPost : Caption := 'Salvar';
        nbCancel : Caption := 'Cancelar';
        nbRefresh : Caption := 'Atualizar';
      end;
      Layout := blGlyphTop;
      Hint := Caption;
      ShowHint := True;
    end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  SetDBNavigator(nvNavigatorPrincipal);
end;

procedure TfrmPrincipal.nvNavigatorPrincipalBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  If (Button = nbDelete) then
    If (MessageDlg('Confirma a exclusão do registro selecionado?', mtInformation, [mbYes, mbNo], 0) = mrNo) Then
      Abort;
end;

end.
