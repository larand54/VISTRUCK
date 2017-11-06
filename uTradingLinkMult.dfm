object fTradingLinkMult: TfTradingLinkMult
  Left = 229
  Top = 107
  Caption = 'V'#228'lj f'#246'rs'#228'ljnings LO#'
  ClientHeight = 391
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 350
    Width = 895
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 304
      Top = 5
      Width = 83
      Height = 29
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 5
      Width = 83
      Height = 29
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 350
    Align = alClient
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 41
      Width = 893
      Height = 308
      Align = alClient
      TabOrder = 0
      object PanelAvrop: TPanel
        Left = 1
        Top = 1
        Width = 891
        Height = 306
        Align = alClient
        TabOrder = 0
        object grdTradingAvrop: TcxGrid
          Left = 1
          Top = 1
          Width = 889
          Height = 304
          Align = alClient
          TabOrder = 0
          object grdTradingAvropDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_AvropTrading
            DataController.KeyFieldNames = 'Avropsnr'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdTradingAvropDBTableView1Kund: TcxGridDBColumn
              DataBinding.FieldName = 'Kund'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 433
            end
            object grdTradingAvropDBTableView1Avropsnr: TcxGridDBColumn
              DataBinding.FieldName = 'Avropsnr'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 450
            end
          end
          object grdTradingAvropLevel1: TcxGridLevel
            GridView = grdTradingAvropDBTableView1
          end
        end
      end
    end
    object PanelPOName: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 40
      Align = alTop
      Caption = 'Ink'#246'pskontrakt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 200
  end
  object ds_AvropTrading: TDataSource
    DataSet = cds_AvropLink
    Left = 529
    Top = 251
  end
  object cds_AvropLink: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select C.ClientName AS Kund, CSH.ShippingPlanNo AS Avropsnr from' +
        ' dbo.CSHTradingLink trl'
      
        'Inner Join dbo.CustomerShippingPlanHeader csh on csh.ShippingPla' +
        'nNo = trl.SalesShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = csh.CustomerNo'
      'where trl.POShippingPlanNo = :POShippingPlanNo')
    Left = 530
    Top = 202
    ParamData = <
      item
        Name = 'POSHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AvropLinkKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object cds_AvropLinkAvropsnr: TIntegerField
      FieldName = 'Avropsnr'
      Origin = 'Avropsnr'
      Required = True
    end
  end
  object sq_POorderInfo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select ord.OrderNoText AS Kontrakt, C.ClientName AS Leverant'#246'r, ' +
        'csh.ShippingPlanNo AS Avropsnr'
      'from dbo.CustomerShippingPlanHeader csh '
      'Inner Join dbo.Orders ord on ord.OrderNo = csh.OrderNo'
      'Inner Join dbo.Client C on C.ClientNo = csh.CustomerNo'
      'where  csh.ShippingPlanNo = :POShippingPlanNo')
    Left = 226
    Top = 202
    ParamData = <
      item
        Name = 'POSHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_POorderInfoKontrakt: TStringField
      FieldName = 'Kontrakt'
      Origin = 'Kontrakt'
      Required = True
    end
    object sq_POorderInfoLeverantr: TStringField
      FieldName = 'Leverant'#246'r'
      Origin = '[Leverant'#246'r]'
      Size = 80
    end
    object sq_POorderInfoAvropsnr: TIntegerField
      FieldName = 'Avropsnr'
      Origin = 'Avropsnr'
      Required = True
    end
  end
  object siLangLinked_fTradingLinkMult: TsiLangLinked
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
    Left = 472
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600540072006100640069006E0067004C0069006E00
      6B004D0075006C00740001005600E4006C006A0020006600F60072007300E400
      6C006A006E0069006E006700730020004C004F00230001005600E4006C006A00
      20006600F60072007300E4006C006A006E0069006E00670073004C004F000100
      530065006C006500630074002000730061006C00650073004C004F0001005600
      E4006C006A0020006600F60072007300E4006C006A006E0069006E0067007300
      4C004F0001000D000A00420069007400420074006E00310001004F004B000100
      01004F004B00010001000D000A00420069007400420074006E00320001004300
      61006E00630065006C0001004100760062007200790074000100010041007600
      620072007900740001000D000A00670072006400540072006100640069006E00
      67004100760072006F007000440042005400610062006C006500560069006500
      770031004B0075006E00640001004B0075006E00640001000100430075007300
      74006F006D0065007200010001000D000A006700720064005400720061006400
      69006E0067004100760072006F007000440042005400610062006C0065005600
      69006500770031004100760072006F00700073006E0072000100410076007200
      6F00700073006E00720001004100760072006F00700073004E00720001004300
      4F0020004E006F0001004100760072006F00700073004E00720001000D000A00
      500061006E0065006C0050004F004E0061006D006500010049006E006B00F600
      700073006B006F006E007400720061006B007400010001005000750072006300
      68006100730065006F007200640065007200010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A006300640073005F004100760072006F007000
      4C0069006E006B004B0075006E00640001004B0075006E006400010001004300
      7500730074006F006D0065007200010001000D000A006300640073005F004100
      760072006F0070004C0069006E006B004100760072006F00700073006E007200
      01004100760072006F00700073006E00720001004100760072006F0070007300
      4E007200010043004F0020004E006F0001004100760072006F00700073004E00
      720001000D000A00730071005F0050004F006F00720064006500720049006E00
      66006F004B006F006E007400720061006B00740001004B006F006E0074007200
      61006B00740001004F00720064006500720001004F0072006400650072000100
      4F00720064006500720001000D000A00730071005F0050004F006F0072006400
      6500720049006E0066006F004C00650076006500720061006E00740072000100
      4C00650076006500720061006E007400F6007200010001005300750070007000
      6C00690065007200010001000D000A00730071005F0050004F006F0072006400
      6500720049006E0066006F004100760072006F00700073006E00720001004100
      760072006F00700073006E00720001004100760072006F00700073004E007200
      010043004F0020004E006F0001004100760072006F00700073004E0072000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600540072006100640069006E0067004C0069006E006B00
      4D0075006C00740001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00500061006E0065006C0050004F004E00
      61006D00650001004D0053002000530061006E00730020005300650072006900
      660001000100010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900440053005F00300001004C00650076006500720061006E007400F6007200
      3A00200001004C00650076006500720061006E007400F6007200010053007500
      700070006C0069006500720001004C00650076006500720061006E007400F600
      720001000D000A004900440053005F003100010020002000200049006E006B00
      F600700073006B006F006E007400720061006B0074003A002000010049006E00
      6B00F600700073006B006F006E007400720061006B0074000100200020005000
      75007200630068006100730065006F007200640065007200010049006E006B00
      F600700073006B006F006E007400720061006B00740001000D000A0049004400
      53005F00320001002000200020004100760072006F00700073006E0072003A00
      20000100010043004F0020004E006F00010001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600540072006100640069006E0067004C0069006E006B004D0075006C007400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00500061006E0065006C0050004F004E0061006D00
      65000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00}
  end
end
