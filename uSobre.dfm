object frmSobre: TfrmSobre
  Left = 495
  Top = 200
  BorderStyle = bsSingle
  Caption = 'Sobre'
  ClientHeight = 386
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlInferior: TPanel
    Left = 0
    Top = 360
    Width = 342
    Height = 26
    Align = alBottom
    TabOrder = 0
    object btnSair: TButton
      Left = 142
      Top = 3
      Width = 75
      Height = 21
      Caption = 'Voltar'
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object mmoSobre: TMemo
    Left = 0
    Top = 0
    Width = 342
    Height = 360
    Align = alClient
    Lines.Strings = (
      'Vers'#227'o IDE: Delphi 7'
      'Banco de dados utilizado: PostgreSQL 9.5'
      'Conex'#227'o: via ODBC para postgreSQL'
      ''
      'Sintaxe cria'#231#227'o da tabela:'
      ''
      'CREATE TABLE public.produtos'
      '('
      '  id serial NOT NULL,'
      '  descricao character varying(50) NOT NULL,'
      '  quantidade integer NOT NULL,'
      '  preco_unitario numeric(7,2),'
      '  CONSTRAINT pk_produtos PRIMARY KEY (id)'
      ')')
    ReadOnly = True
    TabOrder = 1
  end
end
