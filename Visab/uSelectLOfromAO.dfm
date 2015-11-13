object fSelectLOfromAO: TfSelectLOfromAO
  Left = 229
  Top = 107
  Caption = 'V'#228'lj Lastorder att last mot'
  ClientHeight = 334
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 283
    Width = 529
    Height = 51
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 148
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 276
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 50
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
  end
  object grdSelectLOFromAO: TcxGrid
    Left = 0
    Top = 50
    Width = 529
    Height = 233
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object grdSelectLOFromAODBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSortOrder.ds_LOinAO
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSelectLOFromAODBTableView1LONR: TcxGridDBColumn
        DataBinding.FieldName = 'LONR'
      end
    end
    object grdSelectLOFromAOLevel1: TcxGridLevel
      GridView = grdSelectLOFromAODBTableView1
    end
  end
  object siLangLinked_fSelectLOfromAO: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 208
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C004F0066007200
      6F006D0041004F0001005600E4006C006A0020004C006100730074006F007200
      640065007200200061007400740020006C0061007300740020006D006F007400
      01000100010001005600E4006C006A0020004C006100730074006F0072006400
      65007200200061007400740020006C0061007300740020006D006F0074000D00
      0A00420069007400420074006E00310001004F004B0001000100010001004F00
      4B000D000A00420069007400420074006E0032000100430061006E0063006500
      6C000100010001000100430061006E00630065006C000D000A00670072006400
      530065006C006500630074004C004F00460072006F006D0041004F0044004200
      5400610062006C006500560069006500770031004C004F004E00520001004C00
      4F004E00520001000100010001004C004F004E0052000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A0054006600530065006C00650063007400
      4C004F00660072006F006D0041004F0001004D0053002000530061006E007300
      20005300650072006900660001000100010001004D0053002000530061006E00
      73002000530065007200690066000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A0054006600530065006C006500630074004C004F006600
      72006F006D0041004F000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
