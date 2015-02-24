object fEnterLoadWeight: TfEnterLoadWeight
  Left = 197
  Top = 107
  Width = 617
  Height = 503
  Caption = 'Lastvikt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 609
    Height = 76
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 240
      Top = 16
      Width = 129
      Height = 41
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object grdLoadWeight: TcxGrid
    Left = 0
    Top = 41
    Width = 609
    Height = 359
    Align = alClient
    TabOrder = 2
    object grdLoadWeightDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      DataController.DataSource = dmsSystem.ds_LoadWeigth
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###.00'
          Kind = skSum
          FieldName = 'LoadWeightKG'
          Column = grdLoadWeightDBTableView1LoadWeightKG
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdLoadWeightDBTableView1LoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadNo'
        Width = 129
      end
      object grdLoadWeightDBTableView1Reference: TcxGridDBColumn
        Caption = 'Leveransadress'
        DataBinding.FieldName = 'Reference'
        Width = 336
      end
      object grdLoadWeightDBTableView1LoadWeightKG: TcxGridDBColumn
        DataBinding.FieldName = 'LoadWeightKG'
        Width = 142
      end
    end
    object grdLoadWeightLevel1: TcxGridLevel
      GridView = grdLoadWeightDBTableView1
    end
  end
end
