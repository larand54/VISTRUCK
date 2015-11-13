object fSelectLoadPlanDest: TfSelectLoadPlanDest
  Left = 229
  Top = 107
  Caption = 'V'#228'lj lastplan & destination'
  ClientHeight = 569
  ClientWidth = 1164
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
  object grdLoadPlan: TcxGrid
    Left = 0
    Top = 0
    Width = 1164
    Height = 511
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    object grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.ds_LoadPlanDest
      DataController.KeyFieldNames = 'LoadingNo;LoadPlanDestRowNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'LASTPLAN'
          Width = 86
        end
        item
          Caption = 'LASTST'#196'LLE'
          Width = 200
        end
        item
          Caption = 'DESTINATION'
          Width = 405
        end
        item
          Caption = 'TRANSPORT'
          Width = 261
        end>
      object grdLoadPlanDBBandedTableView1LAGER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAGER'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'F'#246'rs'#228'ljningsregion'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LAGER_DEST: TcxGridDBBandedColumn
        Caption = 'LAGER'
        DataBinding.FieldName = 'LAGER_DEST'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1Status: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadPlanDestRowNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1BT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'B'#197'T'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1ETD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ETD'
        PropertiesClassName = 'TcxDateEditProperties'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object grdLoadPlanLevel1: TcxGridLevel
      GridView = grdLoadPlanDBBandedTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 1164
    Height = 58
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 423
      Top = 10
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 532
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
  object siLangLinked_fSelectLoadPlanDest: TsiLangLinked
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
    Left = 464
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C006F0061006400
      50006C0061006E00440065007300740001005600E4006C006A0020006C006100
      7300740070006C0061006E00200026002000640065007300740069006E006100
      740069006F006E000100010001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C00410047004500520001004C00410047004500
      52000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004600720073006C006A006E0069006E0067007300720065006700
      69006F006E0001004600F60072007300E4006C006A006E0069006E0067007300
      72006500670069006F006E000100010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C0041004700450052005F0044004500
      5300540001004C0041004700450052000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530074006100740075007300
      01005300740061007400750073000100010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031004C006F006100640069006E006700
      4E006F0001004C006F006100640069006E0067004E006F000100010001000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C006F00
      6100640050006C0061006E00440065007300740052006F0077004E006F000100
      4C006F006100640050006C0061006E00440065007300740052006F0077004E00
      6F000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004200540001004200C50054000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310045005400440001004500
      540044000100010001000D000A00620062004F004B0001004F004B0001000100
      01000D000A0062006200430061006E00630065006C000100430061006E006300
      65006C000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A0054006600530065006C006500630074004C006F006100640050006C00
      61006E00440065007300740001004D0053002000530061006E00730020005300
      65007200690066000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      4C0041005300540050004C0041004E000100010001000D000A00670072006400
      4C006F006100640050006C0061006E0044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0031005D002E00430061007000740069006F006E0001004C00410053005400
      53005400C4004C004C0045000100010001000D000A006700720064004C006F00
      6100640050006C0061006E0044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003200
      5D002E00430061007000740069006F006E000100440045005300540049004E00
      4100540049004F004E000100010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001005400520041004E00530050004F00
      520054000100010001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074004C006F006100640050006C0061006E0044006500730074000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00}
  end
end
