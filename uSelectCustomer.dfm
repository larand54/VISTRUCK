object frmSelectCustomer: TfrmSelectCustomer
  Left = 505
  Top = 179
  Width = 478
  Height = 542
  ActiveControl = grdClients
  Caption = 'V'#228'lj Kund'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 462
    Width = 470
    Height = 53
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 232
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object grdClients: TcxGrid
    Left = 0
    Top = 0
    Width = 470
    Height = 462
    Align = alClient
    TabOrder = 1
    object grdClientsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Clients
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = grdClientsDBTableView1ClientName
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdClientsDBTableView1ClientName: TcxGridDBColumn
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        SortIndex = 0
        SortOrder = soAscending
      end
      object grdClientsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        Visible = False
      end
    end
    object grdClientsLevel1: TcxGridLevel
      GridView = grdClientsDBTableView1
    end
  end
  object ds_Clients: TDataSource
    DataSet = cds_Clients
    Left = 16
    Top = 112
  end
  object cds_Clients: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      ''
      'SELECT C.ClientNo,     '
      '       C.ClientName    '
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 1'
      'AND C.ClientNo NOT IN  (Select ClientNo FROM CreditGrpClients)'
      ''
      'order by C.ClientName'
      '')
    Left = 16
    Top = 64
    object cds_ClientsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ClientsClientName: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object sq_AllClients: TADQuery
    Connection = dmsConnector.ADConnection1
    SQL.Strings = (
      'SELECT C.ClientNo,     '
      '       C.ClientName    '
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 1'
      'order by C.ClientName')
    Left = 64
    Top = 64
  end
end
