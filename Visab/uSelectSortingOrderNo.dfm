object fSelectSortingOrderNo: TfSelectSortingOrderNo
  Left = 197
  Top = 107
  Caption = 'Ange k'#246'rordernr att avregistrera mot'
  ClientHeight = 292
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  DesignSize = (
    414
    292)
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 50
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 226
    Width = 414
    Height = 66
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 73
      Top = 9
      Width = 120
      Height = 48
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'OK'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 217
      Top = 9
      Width = 112
      Height = 48
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #197'NGRA'
      OnClick = SpeedButton2Click
    end
  end
  object cxLabel1: TcxLabel
    Left = 28
    Top = 116
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'K'#246'rordernr:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -18
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object meRunNo: TEdit
    Left = 155
    Top = 121
    Width = 142
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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
    Left = 160
    Top = 72
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C0065006300740053006F0072007400
      69006E0067004F0072006400650072004E006F00010041006E00670065002000
      6B00F60072006F0072006400650072006E007200200061007400740020006100
      7600720065006700690073007400720065007200610020006D006F0074000100
      01000100010041006E006700650020006B00F60072006F007200640065007200
      6E00720020006100740074002000610076007200650067006900730074007200
      65007200610020006D006F0074000D000A00630078004C006100620065006C00
      310001004B00F60072006F0072006400650072006E0072003A00010001000100
      01004B00F60072006F0072006400650072006E0072003A000D000A0053007000
      65006500640042007500740074006F006E00310001004F004B00010001000100
      01004F004B000D000A005300700065006500640042007500740074006F006E00
      32000100C5004E004700520041000100010001000100C5004E00470052004100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005300
      65006C0065006300740053006F007200740069006E0067004F00720064006500
      72004E006F0001004D0053002000530061006E00730020005300650072006900
      660001000100010001004D0053002000530061006E0073002000530065007200
      690066000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54006600530065006C0065006300740053006F007200740069006E0067004F00
      72006400650072004E006F000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
