unit uSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmSobre = class(TForm)
    pnlInferior: TPanel;
    mmoSobre: TMemo;
    btnSair: TButton;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

procedure TfrmSobre.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
