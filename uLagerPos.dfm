object fLagerPos: TfLagerPos
  Left = 0
  Top = 0
  Caption = 'Lagerposition'
  ClientHeight = 671
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 65
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 606
    Width = 579
    Height = 65
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 168
      Top = 6
      Width = 113
      Height = 49
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 295
      Top = 6
      Width = 113
      Height = 49
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object grdLagerPos: TcxGrid
    Left = 0
    Top = 65
    Width = 579
    Height = 541
    Align = alClient
    TabOrder = 2
    object grdLagerPosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = ds_LagerPos
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdLagerPosDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 113
      end
      object grdLagerPosDBTableView1LagerPositionText: TcxGridDBColumn
        Caption = 'Position'
        DataBinding.FieldName = 'LagerPositionText'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 452
      end
    end
    object grdLagerPosLevel1: TcxGridLevel
      GridView = grdLagerPosDBTableView1
    end
  end
  object ds_LagerPos: TDataSource
    DataSet = dmsSystem.sp_LagerPos
    Left = 240
    Top = 312
  end
end
