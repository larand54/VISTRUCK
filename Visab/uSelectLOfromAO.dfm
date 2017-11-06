object fSelectLOfromAO: TfSelectLOfromAO
  Left = 229
  Top = 107
  Caption = 'V'#228'lj Lastorder att last mot'
  ClientHeight = 271
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 230
    Width = 430
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object grdSelectLOFromAO: TcxGrid
    Left = 0
    Top = 41
    Width = 430
    Height = 189
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
    NumOfLanguages = 4
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
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
      01000100010001000D000A00420069007400420074006E00310001004F004B00
      010001004F004B00010001000D000A00420069007400420074006E0032000100
      430061006E00630065006C000100410076006200720079007400010001004100
      7600620072007900740001000D000A00670072006400530065006C0065006300
      74004C004F00460072006F006D0041004F00440042005400610062006C006500
      560069006500770031004C004F004E00520001004C004F004E00520001000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C004F00660072006F006D0041004F000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C004F00660072006F006D0041004F000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00}
  end
end
