object fSelectSortingOrderNo: TfSelectSortingOrderNo
  Left = 197
  Top = 107
  Caption = 'Ange k'#246'rordernr att avregistrera mot'
  ClientHeight = 237
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  DesignSize = (
    336
    237)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 184
    Width = 336
    Height = 53
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 59
      Top = 7
      Width = 98
      Height = 39
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'OK'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 176
      Top = 7
      Width = 91
      Height = 39
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #197'NGRA'
      OnClick = SpeedButton2Click
    end
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 94
    Caption = 'K'#246'rordernr:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object meRunNo: TEdit
    Left = 126
    Top = 95
    Width = 123
    Height = 21
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 3
  end
  object siLangLinked_fSelectSortingOrderNo: TsiLangLinked
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
    Left = 176
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C0065006300740053006F0072007400
      69006E0067004F0072006400650072004E006F00010041006E00670065002000
      6B00F60072006F0072006400650072006E007200200061007400740020006100
      7600720065006700690073007400720065007200610020006D006F0074000100
      0100010001000D000A00630078004C006100620065006C00310001004B00F600
      72006F0072006400650072006E0072003A0001000100520075006E0020006F00
      720064006500720020006E006F003A00010001000D000A005300700065006500
      640042007500740074006F006E00310001004F004B00010001004F004B000100
      01000D000A005300700065006500640042007500740074006F006E0032000100
      C5004E004700520041000100010055006E0064006F00010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A0054006600530065006C006500
      6300740053006F007200740069006E0067004F0072006400650072004E006F00
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54006600530065006C0065006300740053006F007200740069006E0067004F00
      72006400650072004E006F000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00}
  end
end
