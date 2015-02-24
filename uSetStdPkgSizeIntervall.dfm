inherited fSetStdPkgSizeIntervall: TfSetStdPkgSizeIntervall
  Left = 287
  Top = 139
  Caption = 'fSetStdPkgSizeIntervall'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel4: TPanel
      ExplicitWidth = 313
    end
  end
  inherited Panel5: TPanel
    ExplicitWidth = 936
    ExplicitHeight = 559
    object grdPkgStdPcs: TcxGrid
      Left = 1
      Top = 58
      Width = 934
      Height = 500
      Align = alClient
      TabOrder = 0
      object grdPkgStdPcsDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = ds_PkgStdPcs
        DataController.KeyFieldNames = 'Clientno;ProductNo;ALMM;NoOfPcsFullPkg'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdPkgStdPcsDBTableView1Produkt: TcxGridDBColumn
          DataBinding.FieldName = 'Produkt'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 422
        end
        object grdPkgStdPcsDBTableView1ALMM: TcxGridDBColumn
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 83
        end
        object grdPkgStdPcsDBTableView1Clientno: TcxGridDBColumn
          DataBinding.FieldName = 'Clientno'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 95
        end
        object grdPkgStdPcsDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 95
        end
        object grdPkgStdPcsDBTableView1NoOfPcsFullPkg: TcxGridDBColumn
          Caption = 'STD paket'
          DataBinding.FieldName = 'NoOfPcsFullPkg'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 76
        end
        object grdPkgStdPcsDBTableView1NoOfPcsUnder: TcxGridDBColumn
          Caption = 'Min antal styck till'#229'tet i STD paket'
          DataBinding.FieldName = 'NoOfPcsUnder'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 172
        end
        object grdPkgStdPcsDBTableView1NoOfPcsOver: TcxGridDBColumn
          Caption = 'Max antal styck till'#229'tet i STD paket'
          DataBinding.FieldName = 'NoOfPcsOver'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 175
        end
      end
      object grdPkgStdPcsLevel1: TcxGridLevel
        GridView = grdPkgStdPcsDBTableView1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 934
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 8
        Top = 16
        Caption = 
          'Ange 0 i "Min och Max antal styck till'#229'tet i STD paket" f'#246'r att ' +
          'uteslutas som standard paket'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarLargeButton3: TdxBarLargeButton
      Visible = ivNever
    end
    inherited dxBarLargeButton4: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
  end
  object cds_PkgStdPcs: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select psp.Clientno, psp.ProductNo,  psp.ALMM, psp.NoOfPcsFullPk' +
        'g,'
      
        'psp.NoOfPcsOver, psp.NoOfPcsUnder, p.ProductDisplayName AS Produ' +
        'kt'
      'from dbo.PkgStdPcs psp'
      'inner join dbo.product p on p.productno = psp.productno'
      ''
      'WHERE psp.ClientNo = :ClientNo'
      'Order By p.ProductDisplayName, psp.ALMM')
    Left = 144
    Top = 195
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgStdPcsClientno: TIntegerField
      FieldName = 'Clientno'
      Origin = 'Clientno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgStdPcsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgStdPcsALMM: TFloatField
      DisplayLabel = 'L'#228'ngd (ALMM)'
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgStdPcsNoOfPcsFullPkg: TIntegerField
      DisplayLabel = '"Fulla" paket'
      FieldName = 'NoOfPcsFullPkg'
      Origin = 'NoOfPcsFullPkg'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgStdPcsNoOfPcsOver: TIntegerField
      DisplayLabel = 'Max antal styck till'#229'tet i fullt paket'
      FieldName = 'NoOfPcsOver'
      Origin = 'NoOfPcsOver'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PkgStdPcsNoOfPcsUnder: TIntegerField
      DisplayLabel = 'Min antal styck till'#229'tet i fullt paket'
      FieldName = 'NoOfPcsUnder'
      Origin = 'NoOfPcsUnder'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PkgStdPcsProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 150
    end
  end
  object ds_PkgStdPcs: TDataSource
    DataSet = cds_PkgStdPcs
    Left = 144
    Top = 240
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPkgStdPcs
    PopupMenus = <>
    Left = 512
    Top = 251
  end
  object siLangLinked_fSetStdPkgSizeIntervall: TsiLangLinked
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
    Left = 464
    Top = 312
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
