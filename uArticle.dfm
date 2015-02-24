inherited fArticle: TfArticle
  Left = 311
  Top = 185
  Height = 658
  Caption = 'Artiklar f'#246'rs'#228'ljningskonton'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    Visible = False
  end
  inherited Panel1: TPanel
    Top = 584
    Height = 47
    Visible = False
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 758
      Height = 41
      Align = alTop
      TabOrder = 0
      object cxButton7: TcxButton
        Left = 8
        Top = 8
        Width = 113
        Height = 25
        Action = acAddStdKontoTyper
        TabOrder = 0
      end
    end
    object grdKontoNr: TcxGrid
      Left = 1
      Top = 42
      Width = 758
      Height = 4
      Align = alClient
      TabOrder = 1
      object grdKontoNrDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.KeyFieldNames = 'AccountType;ArticleNo;KontoNr'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdKontoNrDBTableView1ArticleNo: TcxGridDBColumn
          DataBinding.FieldName = 'ArticleNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 125
        end
        object grdKontoNrDBTableView1AccountType: TcxGridDBColumn
          DataBinding.FieldName = 'AccountType'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Sverige med moms'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Sverige utan moms'
              Value = 2
            end
            item
              Description = 'EU'
              Value = 3
            end
            item
              Description = 'Export'
              Value = 4
            end>
          Properties.ReadOnly = True
          Width = 255
        end
        object grdKontoNrDBTableView1KontoNr: TcxGridDBColumn
          Caption = 'Kontonr'
          DataBinding.FieldName = 'KontoNr'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 237
        end
        object grdKontoNrDBTableView1DateCreated: TcxGridDBColumn
          Caption = 'Skapad'
          DataBinding.FieldName = 'DateCreated'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 264
        end
        object grdKontoNrDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object grdKontoNrLevel1: TcxGridLevel
        GridView = grdKontoNrDBTableView1
      end
    end
  end
  inherited cxGrid1: TcxGrid
    Height = 495
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.KeyFieldNames = 'ArticleNo'
      NewItemRow.Visible = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ArticleNo: TcxGridDBColumn
        DataBinding.FieldName = 'ArticleNo'
        Visible = False
      end
      object cxGrid1DBTableView1ArticleName: TcxGridDBColumn
        DataBinding.FieldName = 'ArticleName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 247
      end
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 536
    Width = 760
    Height = 48
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 287
      Top = 8
      Width = 84
      Height = 34
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 383
      Top = 8
      Width = 84
      Height = 34
      TabOrder = 1
      Kind = bkCancel
    end
  end
  inherited ActionList_DBForm: TActionList
    object acAddStdKontoTyper: TAction
      Category = 'GENERAL'
      Caption = 'L'#228'gg till kontoslag'
      OnExecute = acAddStdKontoTyperExecute
    end
  end
  inherited DataSource1: TDataSource
    DataSet = dmsSystem.cds_Article
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
