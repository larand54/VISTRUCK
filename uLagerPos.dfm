object fLagerPos: TfLagerPos
  Left = 0
  Top = 0
  Caption = 'Lagerposition'
  ClientHeight = 686
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 49
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 601
    Width = 757
    Height = 85
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 792
    object cxButton1: TcxButton
      Left = 220
      Top = 8
      Width = 147
      Height = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 386
      Top = 8
      Width = 148
      Height = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object grdLagerPos: TcxGrid
    Left = 0
    Top = 49
    Width = 757
    Height = 552
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    ExplicitTop = 85
    ExplicitHeight = 707
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
    Left = 280
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C00610067006500720050006F00730001004C00
      610067006500720070006F0073006900740069006F006E000100010001000D00
      0A006300780042007500740074006F006E00310001004F004B00010001000100
      0D000A006300780042007500740074006F006E0032000100C5006E0067007200
      61000100010001000D000A006700720064004C00610067006500720050006F00
      7300440042005400610062006C00650056006900650077003100490044000100
      490044000100010001000D000A006700720064004C0061006700650072005000
      6F007300440042005400610062006C006500560069006500770031004C006100
      67006500720050006F0073006900740069006F006E0054006500780074000100
      50006F0073006900740069006F006E000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540066004C0061006700650072005000
      6F00730001005400610068006F006D0061000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540066004C00610067006500
      720050006F0073000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A00}
  end
end
