object fEnterLoadWeight: TfEnterLoadWeight
  Left = 197
  Top = 107
  Caption = 'Lastvikt'
  ClientHeight = 465
  ClientWidth = 601
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
    Width = 601
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 601
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
    Width = 601
    Height = 348
    Align = alClient
    TabOrder = 2
    object grdLoadWeightDBTableView1: TcxGridDBTableView
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
  object siLangLinked_fEnterLoadWeight: TsiLangLinked
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
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'ListField')
    Left = 296
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004C006F00610064005700
      6500690067006800740001004C00610073007400760069006B00740001000100
      4C006F00610064002000770065006900670068007400010001000D000A006300
      780042007500740074006F006E00310001004F004B00010001004F004B000100
      01000D000A006700720064004C006F0061006400570065006900670068007400
      440042005400610062006C006500560069006500770031004C006F0061006400
      4E006F0001004C006100730074006E007200010001004C006F00610064004E00
      6F00010001000D000A006700720064004C006F00610064005700650069006700
      68007400440042005400610062006C0065005600690065007700310052006500
      66006500720065006E006300650001004C00650076006500720061006E007300
      61006400720065007300730001000100440065006C0069007600650072007900
      20006100640064007200650073007300010001000D000A006700720064004C00
      6F0061006400570065006900670068007400440042005400610062006C006500
      560069006500770031004C006F00610064005700650069006700680074004B00
      47000100560069006B0074002C0020006B006700010001005700650069006700
      680074002C0020006B0067007300010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660045006E007400650072004C006F006100
      640057006500690067006800740001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660045006E007400650072004C006F00
      610064005700650069006700680074000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
  end
end
