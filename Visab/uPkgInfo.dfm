object fPkgInfo: TfPkgInfo
  Left = 197
  Top = 107
  Caption = 'Paket information'
  ClientHeight = 429
  ClientWidth = 1140
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
    Top = 376
    Width = 1140
    Height = 53
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 536
      Top = 8
      Width = 113
      Height = 33
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object grdPkgInfo: TcxGrid
    Left = 0
    Top = 49
    Width = 1140
    Height = 327
    Align = alClient
    TabOrder = 1
    object grdPkgInfoDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dm_Vis_Vida.ds_PkgInfo
      DataController.KeyFieldNames = 'PaketNr;Prefix'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdPkgInfoDBTableView1PaketNr: TcxGridDBColumn
        DataBinding.FieldName = 'PaketNr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 75
      end
      object grdPkgInfoDBTableView1Prefix: TcxGridDBColumn
        DataBinding.FieldName = 'Prefix'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 44
      end
      object grdPkgInfoDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 335
      end
      object grdPkgInfoDBTableView1Lngd: TcxGridDBColumn
        DataBinding.FieldName = 'L'#228'ngd'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 122
      end
      object grdPkgInfoDBTableView1FinnsILager: TcxGridDBColumn
        DataBinding.FieldName = 'FinnsILager'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 176
      end
      object grdPkgInfoDBTableView1Lagerstatus: TcxGridDBColumn
        DataBinding.FieldName = 'Lagerstatus'
        PropertiesClassName = 'TcxLabelProperties'
        Styles.OnGetContentStyle = grdPkgInfoDBTableView1LagerstatusStylesGetContentStyle
        Width = 85
      end
      object grdPkgInfoDBTableView1Avregistrerat: TcxGridDBColumn
        Caption = 'Avreg. i k'#246'rorder'
        DataBinding.FieldName = 'Avregistrerat'
        PropertiesClassName = 'TcxLabelProperties'
        Styles.OnGetContentStyle = grdPkgInfoDBTableView1AvregistreratStylesGetContentStyle
        Width = 122
      end
      object grdPkgInfoDBTableView1RttLager: TcxGridDBColumn
        Caption = 'Matchar lager'
        DataBinding.FieldName = 'R'#228'ttLager'
        PropertiesClassName = 'TcxLabelProperties'
        Styles.OnGetContentStyle = grdPkgInfoDBTableView1RttLagerStylesGetContentStyle
        Width = 111
      end
      object grdPkgInfoDBTableView1Rttgare: TcxGridDBColumn
        Caption = 'Matchar '#228'gare'
        DataBinding.FieldName = 'R'#228'tt'#196'gare'
        PropertiesClassName = 'TcxLabelProperties'
        Styles.OnGetContentStyle = grdPkgInfoDBTableView1RttgareStylesGetContentStyle
        Width = 112
      end
      object grdPkgInfoDBTableView1gare: TcxGridDBColumn
        DataBinding.FieldName = #196'gare'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 62
      end
      object grdPkgInfoDBTableView1RttDimension: TcxGridDBColumn
        Caption = 'Matchar dimension'
        DataBinding.FieldName = 'R'#228'ttDimension'
        PropertiesClassName = 'TcxLabelProperties'
        Styles.OnGetContentStyle = grdPkgInfoDBTableView1RttDimensionStylesGetContentStyle
        Width = 140
      end
      object grdPkgInfoDBTableView1ProductNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdPkgInfoDBTableView1LIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'LIPNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdPkgInfoDBTableView1ProducerNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProducerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdPkgInfoDBTableView1OwnerNo: TcxGridDBColumn
        DataBinding.FieldName = 'OwnerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdPkgInfoDBTableView1PIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PIPNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
    end
    object grdPkgInfoLevel1: TcxGridLevel
      GridView = grdPkgInfoDBTableView1
    end
  end
  object PanelTextInfo: TPanel
    Left = 0
    Top = 0
    Width = 1140
    Height = 49
    Align = alTop
    Caption = 
      'Paketnr kunde inte identfieras, nedan lista visar alla paket som' +
      ' matchar det efters'#246'kta paketnumret'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 192
    Top = 40
    PixelsPerInch = 96
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
  end
  object siLangLinked_fPkgInfo: TsiLangLinked
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
    Left = 560
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660050006B00670049006E0066006F00010050006100
      6B0065007400200069006E0066006F0072006D006100740069006F006E000100
      010050006B006700200069006E0066006F0072006D006100740069006F006E00
      0100500061006C006C00200069006E0066006F0072006D006100740069006F00
      6E0001000D000A00420069007400420074006E0031000100260053007400E400
      6E00670001000100430026006C006F0073006500010001000D000A0067007200
      640050006B00670049006E0066006F00440042005400610062006C0065005600
      6900650077003100410076007200650067006900730074007200650072006100
      74000100410076007200650067002E002000690020006B00F60072006F007200
      64006500720001000100010001000D000A0067007200640050006B0067004900
      6E0066006F00440042005400610062006C006500560069006500770031004600
      69006E006E00730049004C0061006700650072000100460069006E006E007300
      49004C00610067006500720001000100010001000D000A006700720064005000
      6B00670049006E0066006F00440042005400610062006C006500560069006500
      7700310067006100720065000100C4006700610072006500010001004F007700
      6E0065007200010001000D000A0067007200640050006B00670049006E006600
      6F00440042005400610062006C006500560069006500770031004C0061006700
      6500720073007400610074007500730001004C00610067006500720073007400
      610074007500730001000100010001000D000A0067007200640050006B006700
      49006E0066006F00440042005400610062006C00650056006900650077003100
      4C00490050004E006F0001004C00490050004E006F0001000100010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200540061006200
      6C006500560069006500770031004C006E006700640001004C00E4006E006700
      6400010001004C0065006E00670074006800010001000D000A00670072006400
      50006B00670049006E0066006F00440042005400610062006C00650056006900
      6500770031004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F0001000100010001000D000A0067007200640050006B00670049006E00
      66006F00440042005400610062006C0065005600690065007700310050006100
      6B00650074004E0072000100500061006B00650074004E007200010001005000
      6B0067004E006F000100500061006C006C006E00720001000D000A0067007200
      640050006B00670049006E0066006F00440042005400610062006C0065005600
      69006500770031005000490050004E006F0001005000490050004E006F000100
      0100010001000D000A0067007200640050006B00670049006E0066006F004400
      42005400610062006C0065005600690065007700310050007200650066006900
      7800010050007200650066006900780001000100500072006500660069007800
      010001000D000A0067007200640050006B00670049006E0066006F0044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      650072004E006F000100500072006F00640075006300650072004E006F000100
      0100010001000D000A0067007200640050006B00670049006E0066006F004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      010001000D000A0067007200640050006B00670049006E0066006F0044004200
      5400610062006C00650056006900650077003100500072006F00640075006B00
      74000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A0067007200640050006B00670049006E0066006F00
      440042005400610062006C006500560069006500770031005200740074004400
      69006D0065006E00730069006F006E0001004D00610074006300680061007200
      2000640069006D0065006E00730069006F006E0001000100010001000D000A00
      67007200640050006B00670049006E0066006F00440042005400610062006C00
      650056006900650077003100520074007400670061007200650001004D006100
      740063006800610072002000E400670061007200650001000100010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200540061006200
      6C006500560069006500770031005200740074004C0061006700650072000100
      4D0061007400630068006100720020006C006100670065007200010001000100
      01000D000A00500061006E0065006C00540065007800740049006E0066006F00
      0100500061006B00650074006E00720020006B0075006E006400650020006900
      6E007400650020006900640065006E0074006600690065007200610073002C00
      20006E006500640061006E0020006C0069007300740061002000760069007300
      61007200200061006C006C0061002000700061006B0065007400200073006F00
      6D0020006D006100740063006800610072002000640065007400200065006600
      7400650072007300F6006B00740061002000700061006B00650074006E007500
      6D0072006500740001000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660050006B00670049006E0066006F0001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A00630078005300740079006C0065005200650064000100540061006800
      6F006D00610001000100010001000D000A00500061006E0065006C0054006500
      7800740049006E0066006F0001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A0067007200640050006B00
      670049006E0066006F00440042005400610062006C0065005600690065007700
      3100500061006B00650074004E0072002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640050006B00670049006E0066006F004400
      42005400610062006C0065005600690065007700310050007200650066006900
      78002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640050006B00670049006E0066006F00440042005400610062006C0065005600
      6900650077003100500072006F00640075006B0074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640050006B00670049006E00
      66006F00440042005400610062006C006500560069006500770031004C006E00
      670064002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640050006B00670049006E0066006F00440042005400610062006C006500
      56006900650077003100460069006E006E00730049004C006100670065007200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      50006B00670049006E0066006F00440042005400610062006C00650056006900
      6500770031004C0061006700650072007300740061007400750073002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640050006B00
      670049006E0066006F00440042005400610062006C0065005600690065007700
      310041007600720065006700690073007400720065007200610074002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640050006B00
      670049006E0066006F00440042005400610062006C0065005600690065007700
      31005200740074004C0061006700650072002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640050006B00670049006E0066006F00
      440042005400610062006C006500560069006500770031005200740074006700
      6100720065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640050006B00670049006E0066006F00440042005400610062006C00
      65005600690065007700310067006100720065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640050006B00670049006E006600
      6F00440042005400610062006C00650056006900650077003100520074007400
      440069006D0065006E00730069006F006E002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640050006B00670049006E0066006F00
      440042005400610062006C00650056006900650077003100500072006F006400
      7500630074004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640050006B00670049006E0066006F004400420054006100
      62006C006500560069006500770031004C00490050004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640050006B006700
      49006E0066006F00440042005400610062006C00650056006900650077003100
      500072006F00640075006300650072004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640050006B00670049006E006600
      6F00440042005400610062006C006500560069006500770031004F0077006E00
      650072004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640050006B00670049006E0066006F0044004200540061006200
      6C006500560069006500770031005000490050004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A005400660050006B00670049006E0066006F00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C006500520065006400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00500061006E0065006C00540065007800740049006E0066006F00
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00}
  end
end
