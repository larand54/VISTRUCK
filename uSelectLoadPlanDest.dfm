object fSelectLoadPlanDest: TfSelectLoadPlanDest
  Left = 229
  Top = 107
  Caption = 'V'#228'lj lastplan & destination'
  ClientHeight = 462
  ClientWidth = 946
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
  object grdLoadPlan: TcxGrid
    Left = 0
    Top = 0
    Width = 946
    Height = 415
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
    Top = 415
    Width = 946
    Height = 47
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
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
    Left = 464
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C006F0061006400
      50006C0061006E00440065007300740001005600E4006C006A0020006C006100
      7300740070006C0061006E00200026002000640065007300740069006E006100
      740069006F006E0001005600E4006C006A0020006C0061007300740070006C00
      61006E00200026002000640065007300740069006E006100740069006F006E00
      0100530065006C0065006300740020006C006F0061006400200070006C006100
      6E00200061006E0064002000640065007300740069006E006100740069006F00
      6E0001005600E4006C006A0020006C0061007300740070006C0061006E002000
      26002000640065007300740069006E006100740069006F006E0001000D000A00
      6700720064004C006F006100640050006C0061006E0044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C0041004700
      4500520001004C00410047004500520001000100530054004F0043004B000100
      01000D000A006700720064004C006F006100640050006C0061006E0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4600720073006C006A006E0069006E006700730072006500670069006F006E00
      01004600F60072007300E4006C006A006E0069006E0067007300720065006700
      69006F006E0001000100530061006C006500730072006500670069006F006E00
      010001000D000A006700720064004C006F006100640050006C0061006E004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C0041004700450052005F00440045005300540001004C00410047004500
      520001000100530054004F0043004B00010001000D000A006700720064004C00
      6F006100640050006C0061006E0044004200420061006E006400650064005400
      610062006C006500560069006500770031005300740061007400750073000100
      5300740061007400750073000100010053007400610074007500730001000100
      0D000A006700720064004C006F006100640050006C0061006E00440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      6F006100640069006E0067004E006F0001004C006F006100640069006E006700
      4E006F0001000100010001000D000A006700720064004C006F00610064005000
      6C0061006E0044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F006100640050006C0061006E00440065007300
      740052006F0077004E006F0001004C006F006100640050006C0061006E004400
      65007300740052006F0077004E006F0001000100010001000D000A0067007200
      64004C006F006100640050006C0061006E0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004200540001004200C500
      540001004600410052005400590047000100560045005300530045004C000100
      46004100520054005900470001000D000A006700720064004C006F0061006400
      50006C0061006E0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004500540044000100450054004400010001004500
      54004400010001000D000A00620062004F004B0001004F004B00010001004F00
      4B00010001000D000A0062006200430061006E00630065006C00010043006100
      6E00630065006C00010041007600620072007900740001000100410076006200
      72007900740001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C006500630074004C006F006100640050006C006100
      6E00440065007300740001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A006700720064004C006F006100640050006C0061006E004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      4C0041005300540050004C0041004E00010001004C004F004100440049004E00
      4700200050004C0041004E00010001000D000A006700720064004C006F006100
      640050006C0061006E0044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0031005D00
      2E00430061007000740069006F006E0001004C0041005300540053005400C400
      4C004C004500010001004C004F004100440049004E004700200050004C004100
      43004500010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0032005D002E00430061007000
      740069006F006E000100440045005300540049004E004100540049004F004E00
      01000100010001000D000A006700720064004C006F006100640050006C006100
      6E0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0033005D002E00430061007000
      740069006F006E0001005400520041004E00530050004F005200540001000100
      010001000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A0054006600530065006C00650063007400
      4C006F006100640050006C0061006E0044006500730074000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A00}
  end
end
