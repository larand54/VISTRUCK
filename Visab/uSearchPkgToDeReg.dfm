object fSearchPkgToDeReg: TfSearchPkgToDeReg
  Left = 231
  Top = 123
  ActiveControl = lcProductDisplayName
  Caption = 'S'#246'k paket'
  ClientHeight = 617
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 147
    Width = 1126
    Height = 470
    Align = alClient
    TabOrder = 0
    object grdPickPkgNosDBTableView1: TcxGridDBTableView
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
      OptionsView.Indicator = True
      Styles.Content = cxStyleContent
      Styles.Header = cxStyleHeading
      object grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn
        Caption = 'V'#228'lj'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Width = 47
      end
      object grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'Paketnr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 74
      end
      object grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 55
      end
      object grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 384
      end
      object grdPickPkgNosDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 69
      end
      object grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn
        Caption = 'Styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 63
      end
      object grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 89
      end
      object grdPickPkgNosDBTableView1MaxLangd: TcxGridDBColumn
        DataBinding.FieldName = 'MaxLangd'
        Width = 84
      end
      object grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Antal / l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 247
      end
    end
    object grdPickPkgNosLevel1: TcxGridLevel
      GridView = grdPickPkgNosDBTableView1
    end
  end
  object Panel25: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 122
    Align = alTop
    TabOrder = 1
    object cxButton27: TcxButton
      Left = 6
      Top = 20
      Width = 212
      Height = 60
      Action = acAvregistreraMarkeradePaket
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton28: TcxButton
      Left = 224
      Top = 20
      Width = 107
      Height = 60
      Action = acRefreshInventory
      OptionsImage.Layout = blGlyphBottom
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLabel2: TcxLabel
      Left = 337
      Top = 41
      Caption = 'Produkter i lager:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 462
      Top = 39
      DataBinding.DataField = 'ProductDisplayName'
      DataBinding.DataSource = dsProduct
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 433
    end
    object lcRawPIPNAME: TcxDBLookupComboBox
      Left = 462
      Top = 7
      DataBinding.DataField = 'Ort'
      DataBinding.DataSource = dsProduct
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <
        item
          FieldName = 'ORT'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 3
      OnEnter = lcRawPIPNAMEEnter
      OnExit = lcRawPIPNAMEExit
      Width = 144
    end
    object lcRawLIPName: TcxDBLookupComboBox
      Left = 702
      Top = 7
      DataBinding.DataField = 'Lagergrupp'
      DataBinding.DataSource = dsProduct
      ParentFont = False
      Properties.ClearKey = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      OnEnter = lcRawLIPNameEnter
      OnExit = lcRawLIPNameExit
      Width = 146
    end
    object tePkgNo: TcxTextEdit
      Left = 461
      Top = 93
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      OnKeyDown = tePkgNoKeyDown
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 366
      Top = 93
      Caption = 'S'#246'k paketnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object teALMM: TcxDBTextEdit
      Left = 462
      Top = 66
      DataBinding.DataField = 'ALMM'
      DataBinding.DataSource = dsProduct
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 120
    end
    object cxLabel3: TcxLabel
      Left = 404
      Top = 67
      Caption = 'ALMM:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel4: TcxLabel
      Left = 372
      Top = 10
      Caption = 'Lagerst'#228'lle:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 613
      Top = 10
      Caption = 'Lagergrupp:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxdtAvregDatum: TcxDateEdit
      Left = 682
      Top = 93
      AutoSize = False
      Style.Color = clYellow
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 12
      Height = 24
      Width = 121
    end
    object cxlblAvregDate: TcxLabel
      Left = 598
      Top = 93
      Caption = 'Avr datum:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 122
    Width = 1126
    Height = 25
    Align = alTop
    Caption = 'Paketlista'
    TabOrder = 2
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductDisplayName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Ort'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Lagergrupp'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
      end>
    IndexName = 'mtProductIndex1'
    IndexDefs = <
      item
        Name = 'mtProductIndex1'
        Fields = 'ProductNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 272
    Top = 232
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
      OnChange = mtProductProductNoChange
    end
    object mtProductProductDisplayName: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductDisplayName'
      LookupDataSet = cds_ProdInLager
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      Size = 100
      Lookup = True
    end
    object mtProductPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtProductPIPNoChange
    end
    object mtProductLIPNo: TIntegerField
      FieldName = 'LIPNo'
      OnChange = mtProductLIPNoChange
    end
    object mtProductOrt: TStringField
      FieldKind = fkLookup
      FieldName = 'Ort'
      LookupDataSet = cds_RawPIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtProductLagergrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagergrupp'
      LookupDataSet = cds_RawLIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtProductALMM: TFloatField
      FieldName = 'ALMM'
      OnChange = mtProductALMMChange
    end
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 272
    Top = 280
  end
  object ActionList1: TActionList
    Left = 376
    Top = 224
    object acRefreshInventory: TAction
      Caption = 'Uppdatera'
      ImageIndex = 29
      OnExecute = acRefreshInventoryExecute
    end
    object acAvregistreraMarkeradePaket: TAction
      Caption = 'Avregistrera markerade paket'
      ImageIndex = 8
      OnExecute = acAvregistreraMarkeradePaketExecute
    end
  end
  object ds_RawPIP: TDataSource
    DataSet = cds_RawPIP
    Left = 918
    Top = 472
  end
  object ds_RawLIP: TDataSource
    DataSet = cds_RawLIP
    Left = 790
    Top = 480
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    Left = 376
    Top = 280
  end
  object cds_ProdInLager: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct pr.ProductDisplayName, pr.ProductNo FROM '
      'dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pr on pr.ProductNo = pt.ProductNo'
      'WHERE PIP.PhysicalInventoryPointNo = :PIPNo'
      'AND ((pn.LogicalInventoryPointNo = :LIPNo) OR (0 = :LIPNo)) '
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName')
    Left = 672
    Top = 424
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_ProdInLagerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdInLagerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object sq_SearchPkgNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      'pn.packagetypeno,'
      '(Select MAX(pl2.ActualLengthMM) FROM dbo.packagetypeDetail ptd2'
      
        'Inner Join dbo.ProductLength pl2 on pl2.ProductLengthNo = ptd2.P' +
        'roductLengthNo'
      'WHERE'
      'ptd2.packagetypeno = pt.packagetypeno) AS Maxlangd,'
      'p.ProductDisplayName as Produkt'
      'From dbo.packagenumber pn'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      'Inner join dbo.Product p on p.productno = pt.productno'
      'where'
      'pn.Status = 1'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND ((pn.LogicalInventoryPointNo = :LIPNo) OR (0 = :LIPNo))'
      'AND pn.PackageNo = :PackageNo'
      '')
    Left = 672
    Top = 480
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_SearchPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SearchPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_SearchPkgNoPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_SearchPkgNoAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_SearchPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_SearchPkgNoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_SearchPkgNoNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_SearchPkgNoproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_SearchPkgNopackagetypeno: TIntegerField
      FieldName = 'packagetypeno'
      Origin = 'packagetypeno'
    end
    object sq_SearchPkgNoMaxlangd: TFloatField
      FieldName = 'Maxlangd'
      Origin = 'Maxlangd'
      ReadOnly = True
    end
    object sq_SearchPkgNoProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
  end
  object sq_ProdOnlyL: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct pn.PackageNo, pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      'pn.packagetypeno,'
      '(Select MAX(pl2.ActualLengthMM) FROM dbo.packagetypeDetail ptd2'
      
        'Inner Join dbo.ProductLength pl2 on pl2.ProductLengthNo = ptd2.P' +
        'roductLengthNo'
      'WHERE'
      'ptd2.packagetypeno = pt.packagetypeno) AS Maxlangd,'
      'p.ProductDisplayName as Produkt'
      ''
      'From dbo.packagenumber pn'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.packagetypeDetail ptd on ptd.packagetypeno = pt.p' +
        'ackagetypeno'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      'Inner join dbo.Product p on p.productno = pt.productno'
      'where'
      'pn.[Status] = 1'
      'AND pt.productno = :productno'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND ((pn.LogicalInventoryPointNo = :LIPNo) OR (0 = :LIPNo))'
      ''
      'AND ((pl.ActualLengthMM = :ALMM) OR (0 = :ALMM))'
      '')
    Left = 672
    Top = 536
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'LIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object sq_ProdOnlyLPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProdOnlyLLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_ProdOnlyLPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_ProdOnlyLAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_ProdOnlyLSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_ProdOnlyLDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_ProdOnlyLNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_ProdOnlyLproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_ProdOnlyLpackagetypeno: TIntegerField
      FieldName = 'packagetypeno'
      Origin = 'packagetypeno'
    end
    object sq_ProdOnlyLMaxlangd: TFloatField
      DisplayLabel = 'Maxl'#228'ngd'
      FieldName = 'Maxlangd'
      Origin = 'Maxlangd'
      ReadOnly = True
    end
    object sq_ProdOnlyLProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
  end
  object cds_RawLIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 792
    Top = 424
    object cds_RawLIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_RawLIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_RawLIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_RawPIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 920
    Top = 424
    object cds_RawPIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_RawPIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_RawPIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object siLangLinked_fSearchPkgToDeReg: TsiLangLinked
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
      'ListField')
    Left = 256
    Top = 432
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660053006500610072006300680050006B0067005400
      6F004400650052006500670001005300F6006B002000700061006B0065007400
      01005300F6006B002000500061006B00650074004E0072000100530065006100
      720063006800200050006B0067004E006F0001005300F6006B00200050006100
      6C006C004E00720001000D000A00610063004100760072006500670069007300
      740072006500720061004D00610072006B006500720061006400650050006100
      6B00650074000100410076007200650067006900730074007200650072006100
      20006D00610072006B00650072006100640065002000700061006B0065007400
      01000100010001000D000A006100630052006500660072006500730068004900
      6E00760065006E0074006F007200790001005500700070006400610074006500
      7200610001000100550070006400610074006500010001000D000A0063007800
      4C006100620065006C00310001005300F6006B002000700061006B0065007400
      6E0072003A0001005300F6006B002000500061006B00650074004E0072003A00
      0100530065006100720063006800200050006B0067004E006F003A0001005300
      F6006B002000500061006C006C004E0072003A0001000D000A00630078004C00
      6100620065006C0032000100500072006F00640075006B007400650072002000
      690020006C0061006700650072003A0001000100500072006F00640075006300
      74007300200069006E002000730074006F0063006B003A00010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C0065005600690065007700310041004D003300010041004D003300
      01000100010001000D000A006700720064005000690063006B0050006B006700
      4E006F007300440042005400610062006C006500560069006500770031004C00
      450056004B004F00440001005000720065006600690078000100010050007200
      6500660069007800010001000D000A006700720064005000690063006B005000
      6B0067004E006F007300440042005400610062006C0065005600690065007700
      31004D00410052004B00450052004100440001005600E4006C006A0001000100
      530065006C00650063007400010001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      650077003100500041004B00450054004E0052000100500061006B0065007400
      6E0072000100500061006B00650074004E007200010050006B0067004E006F00
      0100500061006C006C004E00720001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      6500770031005200450047004900530054005200450052004100540001005200
      6500670069007300740072006500720061006400010001005200650067006900
      730074006500720065006400010001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      65007700310053005400590043004B00010053007400790063006B0001000100
      50006300730001005300E40063006B0001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      690065007700310053005400590043004B005000450052004C004E0047004400
      010041006E00740061006C0020002F0020006C00E4006E006700640001000100
      010001000D000A00500061006E0065006C0031000100500061006B0065007400
      6C00690073007400610001000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A006300640073005F00500072006F00640049006E004C00
      6100670065007200500072006F00640075006300740044006900730070006C00
      610079004E0061006D0065000100500072006F00640075006300740044006900
      730070006C00610079004E0061006D00650001000100010001000D000A006300
      640073005F00500072006F00640049006E004C00610067006500720050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A006300640073005F005200610077004C004900
      50004C0041004700450052004700520055005000500001004C00410047004500
      52004700520055005000500001000100530054004F0043004B00200047005200
      4F0055005000010001000D000A006300640073005F005200610077004C004900
      50004C00490050004E006F0001004C00490050004E006F000100010001000100
      0D000A006300640073005F005200610077004C00490050005000490050004E00
      6F0001005000490050004E006F0001000100010001000D000A00630064007300
      5F005200610077005000490050004F005200540001004F005200540001004F00
      520054000100430049005400590001004F005200540001000D000A0063006400
      73005F005200610077005000490050004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F0001000100010001000D000A00630064007300
      5F005200610077005000490050005000490050004E006F000100500049005000
      4E006F0001000100010001000D000A006D007400500072006F00640075006300
      74004C0061006700650072006700720075007000700001004C00610067006500
      72006700720075007000700001000100530074006F0063006B00200067007200
      6F0075007000010001000D000A006D007400500072006F006400750063007400
      4C00490050004E006F0001004C00490050004E006F0001000100010001000D00
      0A006D007400500072006F0064007500630074004F007200740001004F007200
      7400010001004300690074007900010001000D000A006D007400500072006F00
      64007500630074005000490050004E006F0001005000490050004E006F000100
      0100010001000D000A006D007400500072006F00640075006300740050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D00650001000100010001000D000A006D007400500072006F0064007500
      63007400500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C0079004C0041004D003300010041004D00330001000100
      010001000D000A00730071005F00500072006F0064004F006E006C0079004C00
      4400610074006500430072006500610074006500640001004400610074006500
      430072006500610074006500640001000100010001000D000A00730071005F00
      500072006F0064004F006E006C0079004C004C00450056004B004F0044000100
      4C00450056004B004F0044000100010053005500500050004C00490045005200
      200043004F0044004500010001000D000A00730071005F00500072006F006400
      4F006E006C0079004C004E004F004F0046004C0045004E004700540048005300
      01004E004F004F0046004C0045004E0047005400480053000100010001000100
      0D000A00730071005F00500072006F0064004F006E006C0079004C0050006100
      63006B006100670065004E006F0001005000610063006B006100670065004E00
      6F0001000100010001000D000A00730071005F00500072006F0064004F006E00
      6C0079004C007000610063006B0061006700650074007900700065006E006F00
      01007000610063006B0061006700650074007900700065006E006F0001000100
      010001000D000A00730071005F00500072006F0064004F006E006C0079004C00
      5000630073005000650072004C0065006E006700740068000100500063007300
      5000650072004C0065006E0067007400680001000100010001000D000A007300
      71005F00500072006F0064004F006E006C0079004C00700072006F0064007500
      630074006E006F000100700072006F0064007500630074006E006F0001000100
      010001000D000A00730071005F00500072006F0064004F006E006C0079004C00
      53005400590043004B00010053005400590043004B0001000100500043005300
      01005300C40043004B0001000D000A00730071005F0053006500610072006300
      680050006B0067004E006F0041004D003300010041004D003300010001000100
      01000D000A00730071005F0053006500610072006300680050006B0067004E00
      6F00440061007400650043007200650061007400650064000100440061007400
      6500430072006500610074006500640001000100010001000D000A0073007100
      5F0053006500610072006300680050006B0067004E006F004C00450056004B00
      4F00440001004C00450056004B004F0044000100010053005500500050004C00
      490045005200200043004F0044004500010001000D000A00730071005F005300
      6500610072006300680050006B0067004E006F004E004F004F0046004C004500
      4E00470054004800530001004E004F004F0046004C0045004E00470054004800
      530001000100010001000D000A00730071005F00530065006100720063006800
      50006B0067004E006F005000610063006B006100670065004E006F0001005000
      610063006B006100670065004E006F0001000100010001000D000A0073007100
      5F0053006500610072006300680050006B0067004E006F007000610063006B00
      61006700650074007900700065006E006F0001007000610063006B0061006700
      650074007900700065006E006F0001000100010001000D000A00730071005F00
      53006500610072006300680050006B0067004E006F0050006300730050006500
      72004C0065006E0067007400680001005000630073005000650072004C006500
      6E0067007400680001000100010001000D000A00730071005F00530065006100
      72006300680050006B0067004E006F00700072006F0064007500630074006E00
      6F000100700072006F0064007500630074006E006F0001000100010001000D00
      0A00730071005F0053006500610072006300680050006B0067004E006F005300
      5400590043004B00010053005400590043004B00010001005000430053000100
      5300C40043004B0001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A0054006600530065006100720063006800
      50006B00670054006F004400650052006500670001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006700
      720064005000690063006B0050006B0067004E006F0073004400420054006100
      62006C006500560069006500770031004D00410052004B004500520041004400
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      530061006E00740001000100530061006E00740001000D000A00670072006400
      5000690063006B0050006B0067004E006F007300440042005400610062006C00
      6500560069006500770031004D00410052004B0045005200410044002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      0100460065006C0001000100460065006C0001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      560069006500770031004D00410052004B0045005200410044002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006800650063006B0042006F007800500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5000690063006B0050006B0067004E006F007300440042005400610062006C00
      650056006900650077003100500041004B00450054004E0052002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004D00610073006B004500640069007400500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5000690063006B0050006B0067004E006F007300440042005400610062006C00
      6500560069006500770031004C00450056004B004F0044002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004D00610073006B004500640069007400500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      5600690065007700310041004D0033002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4D00610073006B004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064005000690063006B005000
      6B0067004E006F007300440042005400610062006C0065005600690065007700
      310053005400590043004B002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004D006100
      73006B004500640069007400500072006F007000650072007400690065007300
      01000100010001000D000A006700720064005000690063006B0050006B006700
      4E006F007300440042005400610062006C006500560069006500770031005200
      45004700490053005400520045005200410054002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780044006100740065004500640069007400500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      65007700310053005400590043004B005000450052004C004E00470044002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004D00610073006B0045006400690074005000
      72006F00700065007200740069006500730001000100010001000D000A006C00
      63005200610077005000490050004E0041004D0045002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D006500730001004F005200540001004F0052005400010043004900
      5400590001004F005200540001000D000A006D007400500072006F0064007500
      630074002E00560065007200730069006F006E00010037002E00360033002E00
      3000300020005300740061006E00640061007200640020004500640069007400
      69006F006E0001000100010001000D000A006300640073005F00500072006F00
      640049006E004C0061006700650072002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A006300640073005F00500072006F00640049006E004C006100670065007200
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065002E004F0072006900670069006E000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F00640049006E004C00610067006500
      7200500072006F0064007500630074004E006F002E004F007200690067006900
      6E000100500072006F0064007500630074004E006F0001000100010001000D00
      0A00730071005F0053006500610072006300680050006B0067004E006F002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730071005F0053006500610072006300
      680050006B0067004E006F005000610063006B006100670065004E006F002E00
      4F0072006900670069006E0001005000610063006B006100670065004E006F00
      01000100010001000D000A00730071005F005300650061007200630068005000
      6B0067004E006F004C00450056004B004F0044002E004F007200690067006900
      6E0001004C00450056004B004F0044000100010053005500500050004C004900
      45005200200043004F0044004500010001000D000A00730071005F0053006500
      610072006300680050006B0067004E006F005000630073005000650072004C00
      65006E006700740068002E004F0072006900670069006E000100500063007300
      5000650072004C0065006E0067007400680001000100010001000D000A007300
      71005F0053006500610072006300680050006B0067004E006F0041004D003300
      2E004F0072006900670069006E00010041004D00330001000100010001000D00
      0A00730071005F0053006500610072006300680050006B0067004E006F005300
      5400590043004B002E004F0072006900670069006E0001005300540059004300
      4B000100010050004300530001005300C40043004B0001000D000A0073007100
      5F0053006500610072006300680050006B0067004E006F004400610074006500
      43007200650061007400650064002E004F0072006900670069006E0001004400
      610074006500430072006500610074006500640001000100010001000D000A00
      730071005F0053006500610072006300680050006B0067004E006F004E004F00
      4F0046004C0045004E0047005400480053002E004F0072006900670069006E00
      01004E004F004F0046004C0045004E0047005400480053000100010001000100
      0D000A00730071005F0053006500610072006300680050006B0067004E006F00
      700072006F0064007500630074006E006F002E004F0072006900670069006E00
      0100700072006F0064007500630074006E006F0001000100010001000D000A00
      730071005F0053006500610072006300680050006B0067004E006F0070006100
      63006B0061006700650074007900700065006E006F002E004F00720069006700
      69006E0001007000610063006B0061006700650074007900700065006E006F00
      01000100010001000D000A00730071005F00500072006F0064004F006E006C00
      79004C002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C0079004C005000610063006B006100670065004E006F00
      2E004F0072006900670069006E0001005000610063006B006100670065004E00
      6F0001000100010001000D000A00730071005F00500072006F0064004F006E00
      6C0079004C004C00450056004B004F0044002E004F0072006900670069006E00
      01004C00450056004B004F0044000100010053005500500050004C0049004500
      5200200043004F0044004500010001000D000A00730071005F00500072006F00
      64004F006E006C0079004C005000630073005000650072004C0065006E006700
      740068002E004F0072006900670069006E000100500063007300500065007200
      4C0065006E0067007400680001000100010001000D000A00730071005F005000
      72006F0064004F006E006C0079004C0041004D0033002E004F00720069006700
      69006E00010041004D00330001000100010001000D000A00730071005F005000
      72006F0064004F006E006C0079004C0053005400590043004B002E004F007200
      6900670069006E00010053005400590043004B00010001005000430053000100
      5300C40043004B0001000D000A00730071005F00500072006F0064004F006E00
      6C0079004C00440061007400650043007200650061007400650064002E004F00
      72006900670069006E0001004400610074006500430072006500610074006500
      640001000100010001000D000A00730071005F00500072006F0064004F006E00
      6C0079004C004E004F004F0046004C0045004E0047005400480053002E004F00
      72006900670069006E0001004E004F004F0046004C0045004E00470054004800
      530001000100010001000D000A00730071005F00500072006F0064004F006E00
      6C0079004C00700072006F0064007500630074006E006F002E004F0072006900
      670069006E000100700072006F0064007500630074006E006F00010001000100
      01000D000A00730071005F00500072006F0064004F006E006C0079004C007000
      610063006B0061006700650074007900700065006E006F002E004F0072006900
      670069006E0001007000610063006B0061006700650074007900700065006E00
      6F0001000100010001000D000A006300640073005F005200610077004C004900
      50002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A006300640073005F0052006100
      77004C00490050004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      5200610077004C00490050004C00410047004500520047005200550050005000
      2E004F0072006900670069006E0001004C004100470045005200470052005500
      5000500001000100530054004F0043004B002000470052004F00550050000100
      01000D000A006300640073005F005200610077004C0049005000500049005000
      4E006F002E004F0072006900670069006E0001005000490050004E006F000100
      0100010001000D000A006300640073005F005200610077005000490050002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F005200610077005000
      490050005000490050004E006F002E004F0072006900670069006E0001005000
      490050004E006F0001000100010001000D000A006300640073005F0052006100
      77005000490050004F00520054002E004F0072006900670069006E0001004F00
      5200540001004F00520054000100430049005400590001004F00520054000100
      0D000A006300640073005F005200610077005000490050004F0077006E006500
      72004E006F002E004F0072006900670069006E0001004F0077006E0065007200
      4E006F0001000100010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006C00
      63005200610077005000490050004E0041004D0045002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E0001004F005200
      540001004F00520054000100430049005400590001004F005200540001000D00
      0A006D007400500072006F0064007500630074002E0049006E00640065007800
      44006500660073005B0030005D002E004600690065006C006400730001005000
      72006F0064007500630074004E006F0001000100010001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A005400660053006500610072006300680050006B00670054006F004400
      65005200650067000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 536
    Top = 424
    PixelsPerInch = 96
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleHeading: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
