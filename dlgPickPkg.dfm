object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 204
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 162
    Width = 892
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 381
      Top = 1
      Width = 72
      Height = 39
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 459
      Top = 1
      Width = 72
      Height = 39
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 162
    Align = alClient
    TabOrder = 1
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 890
      Height = 160
      Align = alClient
      TabOrder = 0
      object grdPackages: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdPackagesPackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 65
        end
        object grdPackagesSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 54
        end
        object grdPackagesProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 468
        end
        object grdPackagesSupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          Visible = False
        end
        object grdPackagesLengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 289
        end
        object grdPackagesProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Visible = False
        end
        object grdPackagesNoOfLengths: TcxGridDBColumn
          DataBinding.FieldName = 'NoOfLengths'
          Visible = False
        end
        object grdPackagesProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          Visible = False
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPackages
      end
    end
  end
  object siLangLinked_frmPackagePicker: TsiLangLinked
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
    Left = 440
    Top = 104
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
