object frmPrincipal: TfrmPrincipal
  Left = 203
  Top = 180
  Width = 870
  Height = 399
  Caption = 'frmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 372
    Align = alClient
    TabOrder = 0
    DesignSize = (
      862
      372)
    object btnSobre: TSpeedButton
      Left = 777
      Top = 12
      Width = 66
      Height = 38
      Caption = 'Detalhes'
      OnClick = btnSobreClick
    end
    object grdPrincipal: TDBGrid
      Left = 19
      Top = 56
      Width = 825
      Height = 297
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dtsConnect
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Title.Caption = 'Quantidade'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preco_unitario'
          Title.Caption = 'Pre'#231'o Unit'#225'rio'
          Width = 166
          Visible = True
        end>
    end
    object nvNavigatorPrincipal: TDBNavigator
      Left = 19
      Top = 11
      Width = 309
      Height = 38
      DataSource = dtsConnect
      VisibleButtons = [nbInsert, nbDelete, nbEdit]
      ConfirmDelete = False
      TabOrder = 1
      BeforeAction = nvNavigatorPrincipalBeforeAction
      OnClick = nvNavigatorPrincipalClick
    end
  end
  object connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=postgres;Persist Security Info=True;' +
      'User ID=postgres;Data Source=PostgreSQL35W;Initial Catalog=TESTE' +
      '01'
    LoginPrompt = False
    Left = 120
    Top = 64
  end
  object tblProdutos: TADOTable
    Connection = connection
    CursorType = ctStatic
    TableName = 'produtos'
    Left = 160
    Top = 64
  end
  object dtsConnect: TDataSource
    DataSet = tblProdutos
    Left = 192
    Top = 64
  end
end
