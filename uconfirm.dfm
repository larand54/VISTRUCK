object fConfirm: TfConfirm
  Left = 383
  Top = 191
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Bekr'#228'fta'
  ClientHeight = 255
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 255
    Align = alClient
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 16
      Top = 136
      Width = 145
      Height = 105
      Caption = 'Ja'
      Colors.Default = clGreen
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 6
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 168
      Top = 136
      Width = 137
      Height = 105
      Cancel = True
      Caption = 'Nej'
      Colors.Default = clRed
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 7
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = 'cxLabel1'
      Constraints.MaxWidth = 297
      Constraints.MinWidth = 297
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 297
    end
  end
  object siLangLinked_fConfirm: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
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
    Left = 152
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
