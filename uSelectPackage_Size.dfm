object fSelectPackage_Size: TfSelectPackage_Size
  Left = 0
  Top = 0
  Caption = 'Paketstorlek'
  ClientHeight = 362
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 16
    ExplicitWidth = 617
  end
  object Panel2: TPanel
    Left = 0
    Top = 286
    Width = 635
    Height = 76
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 2
    ExplicitTop = 216
    ExplicitWidth = 625
  end
  object grdPackage_Size: TcxGrid
    Left = 0
    Top = 57
    Width = 635
    Height = 229
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 42
    ExplicitWidth = 229
    ExplicitHeight = 593
    object grdPackage_SizeDBTableView1: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
    end
    object grdPackage_SizeLevel1: TcxGridLevel
      GridView = grdPackage_SizeDBTableView1
    end
  end
end
