object fLagerPos: TfLagerPos
  Left = 0
  Top = 0
  Caption = 'Lagerposition'
  ClientHeight = 525
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 37
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 460
    Width = 579
    Height = 65
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 168
      Top = 6
      Width = 113
      Height = 49
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 295
      Top = 6
      Width = 113
      Height = 49
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object grdLagerPos: TcxGrid
    Left = 0
    Top = 37
    Width = 579
    Height = 423
    Align = alClient
    TabOrder = 2
    object grdLagerPosDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = ds_LagerPos
      DataController.KeyFieldNames = 'PositionID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdLagerPosDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'PositionID'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 77
      end
      object grdLagerPosDBTableView1LagerPositionText: TcxGridDBColumn
        Caption = 'Position'
        DataBinding.FieldName = 'PositionName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 215
      end
      object grdLagerPosDBTableView1PosStatus: TcxGridDBColumn
        DataBinding.FieldName = 'PosStatus'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 93
      end
      object grdLagerPosDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
      end
      object grdLagerPosDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 160
      end
      object grdLagerPosDBTableView1PIPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PIPNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 74
      end
    end
    object grdLagerPosLevel1: TcxGridLevel
      GridView = grdLagerPosDBTableView1
    end
  end
  object ds_LagerPos: TDataSource
    DataSet = dmsSystem.sp_LagerPos
    Left = 240
    Top = 312
  end
  object siLangLinked_fLagerPos: TsiLangLinked
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
    Left = 280
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C00610067006500720050006F00730001004C00
      610067006500720070006F0073006900740069006F006E000100010053007400
      6F0063006B00200070006F0073006900740069006F006E00010001000D000A00
      6300780042007500740074006F006E00310001004F004B00010001004F004B00
      010001000D000A006300780042007500740074006F006E0032000100C5006E00
      6700720061000100010055006E0064006F00010001000D000A00670072006400
      4C00610067006500720050006F007300440042005400610062006C0065005600
      690065007700310049004400010050006F0073006900740069006F006E004900
      440001000100010001000D000A006700720064004C0061006700650072005000
      6F007300440042005400610062006C006500560069006500770031004C006100
      67006500720050006F0073006900740069006F006E0054006500780074000100
      50006F0073006900740069006F006E0001000100010001000D000A0067007200
      64004C00610067006500720050006F007300440042005400610062006C006500
      5600690065007700310050006F00730053007400610074007500730001005000
      6F00730053007400610074007500730001000100010001000D000A0067007200
      64004C00610067006500720050006F007300440042005400610062006C006500
      5600690065007700310043007200650061007400650064005500730065007200
      010043007200650061007400650064005500730065007200010053006B006100
      7000610064002000610076000100010053006B00610070006100640020006100
      760001000D000A006700720064004C00610067006500720050006F0073004400
      42005400610062006C0065005600690065007700310044006100740065004300
      7200650061007400650064000100440061007400650043007200650061007400
      6500640001000100010001000D000A006700720064004C006100670065007200
      50006F007300440042005400610062006C006500560069006500770031005000
      490050004E006F0001005000490050004E006F0001000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A00540066004C0061006700
      6500720050006F00730001005400610068006F006D0061000100010001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      4C00610067006500720050006F0073000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
  end
end
