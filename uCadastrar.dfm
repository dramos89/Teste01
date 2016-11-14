object frmCadastroProduto: TfrmCadastroProduto
  Left = 323
  Top = 195
  Width = 402
  Height = 238
  Caption = 'frmCadastroProduto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 160
    Width = 394
    Height = 51
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      394
      51)
    object btnSair: TButton
      Left = 304
      Top = 11
      Width = 84
      Height = 38
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
    object dbnvgr1: TDBNavigator
      Left = 8
      Top = 11
      Width = 176
      Height = 37
      DataSource = frmPrincipal.dtsConnect
      VisibleButtons = [nbPost, nbCancel]
      TabOrder = 1
      BeforeAction = dbnvgr1Click
      OnClick = dbnvgr1Click
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 160
    Align = alClient
    TabOrder = 1
    object lbl1: TLabel
      Left = 7
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lbl3: TLabel
      Left = 8
      Top = 50
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object lbl2: TLabel
      Left = 208
      Top = 48
      Width = 67
      Height = 13
      Caption = 'Pre'#231'o Unit'#225'rio'
    end
    object edtDescricao: TDBEdit
      Left = 8
      Top = 24
      Width = 377
      Height = 21
      DataField = 'descricao'
      DataSource = frmPrincipal.dtsConnect
      TabOrder = 0
    end
    object edtQuantidade: TDBEdit
      Left = 8
      Top = 64
      Width = 177
      Height = 21
      DataField = 'quantidade'
      DataSource = frmPrincipal.dtsConnect
      TabOrder = 1
    end
    object edtPrecoU: TDBEdit
      Left = 208
      Top = 64
      Width = 177
      Height = 21
      DataField = 'preco_unitario'
      DataSource = frmPrincipal.dtsConnect
      TabOrder = 2
    end
  end
end
