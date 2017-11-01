object fPickVPPkgs: TfPickVPPkgs
  Left = 322
  Top = 133
  Caption = 'Paket f'#246'rbrukade av Vida Packaging'
  ClientHeight = 653
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 81
    Width = 1035
    Height = 513
    Align = alClient
    PopupMenu = pmPickPkgNosGrid
    TabOrder = 0
    object grdPickPkgNosDBTableView1: TcxGridDBTableView
      PopupMenu = pmPickPkgNosGrid
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = ds_SelectedPkgNo
      DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '########'
          Kind = skCount
          FieldName = 'PAKETNR'
          Column = grdPickPkgNosDBTableView1PAKETNR
        end
        item
          Format = '###,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdPickPkgNosDBTableView1AM3
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'STYCK'
          Column = grdPickPkgNosDBTableView1STYCK
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn
        Caption = 'V'#228'lj'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Width = 55
      end
      object grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'PaketNr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 50
      end
      object grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 40
      end
      object grdPickPkgNosDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 51
      end
      object grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn
        Caption = 'Totalt styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 70
      end
      object grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 80
      end
      object grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Styck/l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 248
      end
      object grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn
        Caption = 'Produkt'
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 447
      end
    end
    object grdPickPkgNosLevel1: TcxGridLevel
      GridView = grdPickPkgNosDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 594
    Width = 1035
    Height = 59
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Paket markerade:'
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 96
      Top = 16
      Width = 6
      Height = 13
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 416
      Top = 16
      Width = 89
      Height = 33
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 512
      Top = 16
      Width = 89
      Height = 33
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 81
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 248
      Top = 15
      Width = 28
      Height = 13
      Caption = 'LONr:'
    end
    object LabelLONr: TLabel
      Left = 280
      Top = 15
      Width = 71
      Height = 13
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 97
      Height = 33
      Action = acMarkAll
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 136
      Top = 8
      Width = 97
      Height = 33
      Action = acUnmarkAll
      TabOrder = 1
    end
    object rgUrvalPaket: TcxRadioGroup
      Left = 384
      Top = 5
      Caption = ' Urval '
      Properties.Items = <
        item
          Caption = 'Visa endast paket som matchar avrop/kontrakt'
          Value = 0
        end
        item
          Caption = 'Visa alla paket som inte registerats p'#229' en leverans'
          Value = 1
        end>
      ItemIndex = 0
      TabOrder = 2
      Height = 65
      Width = 273
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 528
    Top = 192
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 232
    Top = 248
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 0
    end
  end
  object pmPickPkgNosGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 240
    Top = 184
  end
  object ActionList1: TActionList
    Left = 224
    Top = 320
    object acPkgInfo: TAction
      Caption = 'Paket information'
      OnExecute = acPkgInfoExecute
    end
    object acMarkAll: TAction
      Caption = 'Markera alla'
      OnExecute = acMarkAllExecute
    end
    object acUnmarkAll: TAction
      Caption = 'Avmarkera alla'
      OnExecute = acUnmarkAllExecute
    end
  end
  object sq_PaketLista: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct'
      'pn.PackageNo AS PaketNr, pn.SupplierCode AS Prefix,'
      'pt.productno,'
      'ptl.PcsPerLength AS StyckPerLangd,'
      'pt.Totalm3Actual AS AM3,'
      'pt.Totalm3Nominal AS NM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      'p.ProductDisplayName AS Produkt,'
      'pg.RaMtrlPrice AS RavaruPrisPerNM3'
      'From dbo.PackageGroup pg'
      
        'Inner Join dbo.packagenumber pn on pn.packageno = pg.AvRegpackag' +
        'eno'
      'and pn.SupplierCode = pg.AvRegPrefix'
      
        'Inner join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.product p on p.productno = pt.productno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      'where'
      'PIP.OwnerNo = :VerkNo'
      'and pn.Status = 1'
      'and Exists (Select OL.ProductNo FROM dbo.OrderLine OL'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.OrderNo = ' +
        'OL.OrderNo'
      'and csd.OrderLineNo = OL.OrderLineNo'
      'WHERE csd.ShippingPlanNo = :LONo'
      'and ol.ProductNo = pt.ProductNo)'
      '')
    Left = 400
    Top = 192
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PaketListaPaketNr: TIntegerField
      FieldName = 'PaketNr'
      Origin = 'PaketNr'
      Required = True
    end
    object sq_PaketListaPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PaketListaproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_PaketListaStyckPerLangd: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'StyckPerLangd'
      Origin = 'StyckPerLangd'
      Size = 255
    end
    object sq_PaketListaAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_PaketListaNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_PaketListaSTYCK: TIntegerField
      DisplayLabel = 'Styck totalt'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_PaketListaDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_PaketListaNOOFLENGTHS: TIntegerField
      DisplayLabel = 'Antal l'#228'ngder'
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_PaketListaProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object sq_PaketListaRavaruPrisPerNM3: TFloatField
      DisplayLabel = 'Ra'#229'varupris/NM3'
      FieldName = 'RavaruPrisPerNM3'
      Origin = 'RavaruPrisPerNM3'
    end
  end
  object siLangLinked_fPickVPPkgs: TsiLangLinked
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
    Left = 528
    Top = 256
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B005600500050006B0067007300
      0100500061006B006500740020006600F60072006200720075006B0061006400
      65002000610076002000560069006400610020005000610063006B0061006700
      69006E0067000100010050006B00670073002000750073006500640020006200
      79002000560069006400610020005000610063006B006100670069006E006700
      010001000D000A006700720064005000690063006B0050006B0067004E006F00
      7300440042005400610062006C006500560069006500770031004D0041005200
      4B00450052004100440001005600E4006C006A0001000100530065006C006500
      63007400010001000D000A006700720064005000690063006B0050006B006700
      4E006F007300440042005400610062006C006500560069006500770031005000
      41004B00450054004E0052000100500061006B00650074004E00720001000100
      50006B0067004E006F000100500061006C006C006E00720001000D000A006700
      720064005000690063006B0050006B0067004E006F0073004400420054006100
      62006C006500560069006500770031004C00450056004B004F00440001005000
      7200650066006900780001000100500072006500660069007800010001000D00
      0A006700720064005000690063006B0050006B0067004E006F00730044004200
      5400610062006C0065005600690065007700310041004D003300010041004D00
      330001000100010001000D000A006700720064005000690063006B0050006B00
      67004E006F007300440042005400610062006C00650056006900650077003100
      53005400590043004B00010054006F00740061006C0074002000730074007900
      63006B000100010054006F00740061006C002000700063007300010054006F00
      740061006C00740020007300E40063006B0001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      5600690065007700310052004500470049005300540052004500520041005400
      0100520065006700690073007400720065007200610064000100010052006500
      67006900730074006500720065006400010001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      5600690065007700310053005400590043004B005000450052004C004E004700
      4400010053007400790063006B002F006C00E4006E0067006400010001005000
      630073002F006C0065006E00670074006800010001000D000A00670072006400
      5000690063006B0050006B0067004E006F007300440042005400610062006C00
      650056006900650077003100500072006F00640075006B007400010050007200
      6F00640075006B00740001000100500072006F00640075006300740001000100
      0D000A004C006100620065006C0031000100500061006B006500740020006D00
      610072006B00650072006100640065003A000100500061006B00650074002000
      6D00610072006B00650072006100640065000100530065006C00650063007400
      65006400200070006B00670073000100500061006C006C006100720020006D00
      610072006B006500720061006400650001000D000A004C006100620065006C00
      4E006F004F00660050006B00670073004D00610072006B006500640001003000
      01000100010001000D000A00420069007400420074006E00310001004F004B00
      010001004F004B00010001000D000A00420069007400420074006E0032000100
      430061006E00630065006C000100410076006200720079007400010001004100
      7600620072007900740001000D000A004C006100620065006C00350001004C00
      4F004E0072003A0001004C004F0001004C004F0001004C004F0001000D000A00
      4C006100620065006C004C004F004E00720001004C006100620065006C005000
      490050004E0061006D00650001000100010001000D000A007200670055007200
      760061006C00500061006B00650074000100200055007200760061006C002000
      01000100530065006C0065006300740069006F006E00010001000D000A006100
      630050006B00670049006E0066006F000100500061006B006500740020006900
      6E0066006F0072006D006100740069006F006E000100010050006B0067002000
      69006E0066006F0072006D006100740069006F006E000100500061006C006C00
      200069006E0066006F0072006D006100740069006F006E0001000D000A006100
      63004D00610072006B0041006C006C0001004D00610072006B00650072006100
      200061006C006C00610001000100530065006C00650063007400200061006C00
      6C00010001000D000A006100630055006E006D00610072006B0041006C006C00
      0100410076006D00610072006B00650072006100200061006C006C0061000100
      010044006500730065006C00650063007400200061006C006C00010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A00730071005F0050006100
      6B00650074004C006900730074006100500061006B00650074004E0072000100
      500061006B00650074004E0072000100010050006B0067004E006F0001005000
      61006C006C006E00720001000D000A00730071005F00500061006B0065007400
      4C00690073007400610050007200650066006900780001005000720065006600
      6900780001000100500072006500660069007800010001000D000A0073007100
      5F00500061006B00650074004C006900730074006100700072006F0064007500
      630074006E006F000100700072006F0064007500630074006E006F0001000100
      010001000D000A00730071005F00500061006B00650074004C00690073007400
      610053007400790063006B005000650072004C0061006E006700640001005300
      7400790063006B002F006C00E4006E0067006400010001005000630073002F00
      6C0065006E00670074006800010001000D000A00730071005F00500061006B00
      650074004C00690073007400610041004D003300010041004D00330001000100
      010001000D000A00730071005F00500061006B00650074004C00690073007400
      61004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A00730071005F00500061006B00650074004C00690073007400610053005400
      590043004B00010053007400790063006B00200074006F00740061006C007400
      01000100500063007300200074006F00740061006C0001005300E40063006B00
      200074006F00740061006C00740001000D000A00730071005F00500061006B00
      650074004C006900730074006100440061007400650043007200650061007400
      6500640001004400610074006500430072006500610074006500640001000100
      010001000D000A00730071005F00500061006B00650074004C00690073007400
      61004E004F004F0046004C0045004E004700540048005300010041006E007400
      61006C0020006C00E4006E006700640065007200010001004E006F0020006F00
      660020006C0065006E006700740068007300010001000D000A00730071005F00
      500061006B00650074004C006900730074006100500072006F00640075006B00
      74000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A00730071005F00500061006B00650074004C006900
      7300740061005200610076006100720075005000720069007300500065007200
      4E004D003300010052006100E500760061007200750070007200690073002F00
      4E004D00330001005200E500760061007200750070007200690073002F004E00
      4D00330001005200610077006D006100740065007200690061006C0020007000
      72006900630065002F004E004D00330001005200E50076006100720075007000
      7200690073002F004E004D00330001000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600500069006300
      6B005600500050006B006700730001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A004C006100620065006C00
      4C004F004E00720001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005300650067006F00650020005500490001000100
      010001000D000A0070006D005000690063006B0050006B0067004E006F007300
      470072006900640001005300650067006F006500200055004900010001000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0072006700550072007600
      61006C00500061006B00650074002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0030005D002E004300610070007400
      69006F006E0001005600690073006100200065006E0064006100730074002000
      700061006B0065007400200073006F006D0020006D0061007400630068006100
      720020006100760072006F0070002F006B006F006E007400720061006B007400
      01000100530068006F00770020006F006E006C007900200070006B0067007300
      2000740068006100740020006D00610074006300680020004C004F002F004F00
      720064006500720001005600690073006100200065006E006400610073007400
      2000700061006C006C0061007200200073006F006D0020006D00610074006300
      68006100720020006100760072006F0070002F006B006F006E00740072006100
      6B00740001000D000A007200670055007200760061006C00500061006B006500
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E00430061007000740069006F006E00010056006900
      73006100200061006C006C0061002000700061006B0065007400200073006F00
      6D00200069006E00740065002000720065006700690073007400650072006100
      7400730020007000E500200065006E0020006C00650076006500720061006E00
      730001000100530068006F007700200061006C006C00200070006B0067002000
      740068006100740020006E006F00740020006800610073002000620065006500
      6E002000720065006700690073007400650072006500640020006F006E002000
      61002000640065006C0069007600650072007900010056006900730061002000
      61006C006C0061002000700061006C006C0061007200200073006F006D002000
      69006E0074006500200072006500670069007300740065007200610074007300
      20007000E500200065006E0020006C00650076006500720061006E0073000100
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540066005000690063006B005600500050006B00
      670073000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A004C006100620065006C004C004F004E00
      72000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00640078004200610072004D0061006E006100
      67006500720031000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A0070006D005000690063006B00
      50006B0067004E006F0073004700720069006400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00}
  end
end
