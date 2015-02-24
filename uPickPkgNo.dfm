object fPickPkgNo: TfPickPkgNo
  Left = 216
  Top = 125
  Caption = 'Plocka paketnr'
  ClientHeight = 653
  ClientWidth = 1146
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 241
    Width = 1146
    Height = 353
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
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Content = cxStyleContent
      Styles.ContentEven = cxStyleContent
      Styles.ContentOdd = cxStyleContentOdd
      Styles.Footer = cxStyleHeader
      Styles.Header = cxStyleHeader
      object grdPickPkgNosDBTableView1MARKERAD: TcxGridDBColumn
        Caption = 'L'#228'gg till'
        DataBinding.FieldName = 'MARKERAD'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Filtering = False
        Width = 75
      end
      object grdPickPkgNosDBTableView1PAKETNR: TcxGridDBColumn
        Caption = 'Paketnr'
        DataBinding.FieldName = 'PAKETNR'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 73
      end
      object grdPickPkgNosDBTableView1LEVKOD: TcxGridDBColumn
        Caption = 'Prefix'
        DataBinding.FieldName = 'LEVKOD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 55
      end
      object grdPickPkgNosDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 73
      end
      object grdPickPkgNosDBTableView1STYCK: TcxGridDBColumn
        Caption = 'Styck'
        DataBinding.FieldName = 'STYCK'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 59
      end
      object grdPickPkgNosDBTableView1REGISTRERAT: TcxGridDBColumn
        Caption = 'Registrerad'
        DataBinding.FieldName = 'REGISTRERAT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 85
      end
      object grdPickPkgNosDBTableView1STYCKPERLNGD: TcxGridDBColumn
        Caption = 'Styck/l'#228'ngd'
        DataBinding.FieldName = 'STYCKPERL'#196'NGD'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 114
      end
      object grdPickPkgNosDBTableView1Produkt: TcxGridDBColumn
        Caption = 'Produkt'
        DataBinding.FieldName = 'Produkt'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 311
      end
      object grdPickPkgNosDBTableView1HTFStatus: TcxGridDBColumn
        DataBinding.FieldName = 'HTFStatus'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 87
      end
      object grdPickPkgNosDBTableView1Referens: TcxGridDBColumn
        DataBinding.FieldName = 'Referens'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 44
      end
      object grdPickPkgNosDBTableView1Info1: TcxGridDBColumn
        DataBinding.FieldName = 'Info1'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 28
      end
      object grdPickPkgNosDBTableView1Info2: TcxGridDBColumn
        DataBinding.FieldName = 'Info2'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 60
      end
      object grdPickPkgNosDBTableView1Paketstorlek: TcxGridDBColumn
        DataBinding.FieldName = 'Paketstorlek'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 31
      end
      object grdPickPkgNosDBTableView1Certfiering: TcxGridDBColumn
        DataBinding.FieldName = 'Certfiering'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 31
      end
    end
    object grdPickPkgNosLevel1: TcxGridLevel
      GridView = grdPickPkgNosDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 594
    Width = 1146
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
      Left = 439
      Top = 6
      Width = 89
      Height = 46
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 534
      Top = 6
      Width = 89
      Height = 46
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 1146
    Height = 128
    Align = alTop
    TabOrder = 2
    object LabelProduct: TLabel
      Left = 353
      Top = 25
      Width = 80
      Height = 16
      Caption = 'LabelProduct'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLength: TLabel
      Left = 353
      Top = 43
      Width = 74
      Height = 16
      Caption = 'LabelLength'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPIPName: TLabel
      Left = 353
      Top = 61
      Width = 92
      Height = 16
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 278
      Top = 25
      Width = 49
      Height = 16
      Caption = 'Produkt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 278
      Top = 43
      Width = 41
      Height = 16
      Caption = 'L'#228'ngd:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 278
      Top = 61
      Width = 70
      Height = 16
      Caption = 'Lagerst'#228'lle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelOwnerTitle: TLabel
      Left = 278
      Top = 7
      Width = 40
      Height = 16
      Caption = #196'gare:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelOwner: TLabel
      Left = 353
      Top = 7
      Width = 72
      Height = 16
      Caption = 'LabelOwner'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 278
      Top = 79
      Width = 34
      Height = 16
      Caption = 'LONr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLONr: TLabel
      Left = 353
      Top = 79
      Width = 92
      Height = 16
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbMarkAll: TBitBtn
      Left = 10
      Top = 7
      Width = 110
      Height = 42
      Action = acMarkAll
      Caption = 'Markera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object bbUnMarkAll: TBitBtn
      Left = 10
      Top = 55
      Width = 110
      Height = 50
      Action = acUnmarkAll
      Caption = 'Avmarkera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbFilterOnLength: TcxCheckBox
      Left = 784
      Top = 6
      Caption = 'Filtrera p'#229' l'#228'ngd'
      ParentFont = False
      Properties.OnChange = cbFilterOnLengthPropertiesChange
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 784
      Top = 72
      DataBinding.DataField = 'ProductDisplayName'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ProductNo'
      Properties.ListColumns = <
        item
          FieldName = 'ProductDisplayName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      Visible = False
      Width = 297
    end
    object cxLabel1: TcxLabel
      Left = 784
      Top = 56
      Caption = 'Produkter i lager'
      Visible = False
    end
    object teRef: TcxTextEdit
      Left = 648
      Top = 18
      TabOrder = 5
      Width = 121
    end
    object teInfo1: TcxTextEdit
      Left = 648
      Top = 45
      TabOrder = 6
      Width = 121
    end
    object teInfo2: TcxTextEdit
      Left = 648
      Top = 72
      TabOrder = 7
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 592
      Top = 19
      Caption = 'Referens'
    end
    object cxLabel3: TcxLabel
      Left = 592
      Top = 51
      Caption = 'Info 1'
    end
    object cxLabel4: TcxLabel
      Left = 592
      Top = 74
      Caption = 'Info 2'
    end
    object BitBtn3: TBitBtn
      Left = 128
      Top = 8
      Width = 121
      Height = 41
      Action = acSelectMarkedRows
      Caption = 'V'#228'lj markerade rader'
      TabOrder = 11
    end
    object cxLabel5: TcxLabel
      Left = 278
      Top = 105
      Caption = 'Lagergrupp:'
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 353
      Top = 101
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'LIPNo'
      Properties.ListColumns = <
        item
          FieldName = 'LIPName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 13
      Width = 145
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1146
    Height = 113
    Align = alTop
    TabOrder = 7
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1144
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Urvalsalternativ'
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 24
      Width = 121
      Height = 57
      Action = acShowMatchingProductAndLength
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 137
      Top = 24
      Width = 122
      Height = 57
      Action = acShowMatchingProduct
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 265
      Top = 24
      Width = 122
      Height = 57
      Action = acShowAddLOPkgsWithMatchingProduct
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 393
      Top = 24
      Width = 130
      Height = 57
      Action = acShowAllAddLOPkgs
      TabOrder = 4
    end
    object cxButton7: TcxButton
      Left = 529
      Top = 24
      Width = 122
      Height = 57
      Action = acShowPkgsWithSameActDimOnly
      TabOrder = 5
    end
    object cxLabel_Val: TcxLabel
      Left = 8
      Top = 87
      Caption = '______'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 656
      Top = 24
      Width = 121
      Height = 57
      Action = acShowMatchingLIP
      TabOrder = 7
    end
  end
  object ds_SelectedPkgNo: TDataSource
    DataSet = dmsSystem.mtSelectedPkgNo
    OnDataChange = ds_SelectedPkgNoDataChange
    Left = 272
    Top = 336
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Main')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 144
    Top = 280
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 968
      FloatTop = 379
      FloatClientWidth = 128
      FloatClientHeight = 200
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbShowMatchingProductAndLength'
        end
        item
          Visible = True
          ItemName = 'lbShowMatchingProduct'
        end
        item
          Visible = True
          ItemName = 'lbShowAddLOPkgsWithMatchingProduct'
        end
        item
          Visible = True
          ItemName = 'lbShowAllAddLOPkgs'
        end
        item
          Visible = True
          ItemName = 'lbShowTM'
        end
        item
          Visible = True
          ItemName = 'lbSearch'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 0
    end
    object lbShowMatchingProductAndLength: TdxBarLargeButton
      Action = acShowMatchingProductAndLength
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object lbShowMatchingProduct: TdxBarLargeButton
      Action = acShowMatchingProduct
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
    end
    object lbShowAddLOPkgsWithMatchingProduct: TdxBarLargeButton
      Action = acShowAddLOPkgsWithMatchingProduct
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object lbShowAllAddLOPkgs: TdxBarLargeButton
      Action = acShowAllAddLOPkgs
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object lbShowTM: TdxBarLargeButton
      Action = acShowPkgsWithSameActDimOnly
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object lbSearch: TdxBarLargeButton
      Action = acShowPkgsUsingSearch
      Category = 1
      ButtonStyle = bsChecked
      GroupIndex = 1
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
    Left = 144
    Top = 224
  end
  object ActionList1: TActionList
    Left = 144
    Top = 400
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
    object acShowAddLOPkgsWithMatchingProduct: TAction
      Caption = 'Urval add LO && produkt'
      OnExecute = acShowAddLOPkgsWithMatchingProductExecute
    end
    object acShowAllAddLOPkgs: TAction
      Caption = 'Urval add LO'
      OnExecute = acShowAllAddLOPkgsExecute
    end
    object acShowMatchingProductAndLength: TAction
      Caption = 'Urval produkt && l'#228'ngd'
      OnExecute = acShowMatchingProductAndLengthExecute
    end
    object acShowMatchingProduct: TAction
      Caption = 'Urval produkt'
      OnExecute = acShowMatchingProductExecute
    end
    object acShowPkgsWithSameActDimOnly: TAction
      Caption = 'Urval TM'
      OnExecute = acShowPkgsWithSameActDimOnlyExecute
    end
    object acShowPkgsUsingSearch: TAction
      Caption = 'Urval s'#246'k'
      OnExecute = acShowPkgsUsingSearchExecute
    end
    object acSelectMarkedRows: TAction
      Caption = 'V'#228'lj markerade rader'
      OnExecute = acSelectMarkedRowsExecute
    end
    object acShowMatchingLIP: TAction
      Caption = 'Urval lagergrupp'
      OnExecute = acShowMatchingLIPExecute
    end
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
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
    Top = 384
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
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 272
    Top = 432
  end
  object sq_PaketLista: TFDQuery
    ConstraintsEnabled = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      
        '(Select TOP 1 PVC.PackageCodeNo FROM PkgVarCode PVC WHERE PVC.Pa' +
        'ckageTypeNo = pt.packagetypeno),'
      'p.ProductDisplayName AS Produkt,'
      'CASE'
      'WHEN htf.Status = 1 THEN '#39'Modtaget'#39
      'WHEN htf.Status = 2 THEN '#39'Klar til produktion'#39
      'WHEN htf.Status = 3 THEN '#39'Produktionsdato'#39
      'WHEN htf.Status = 4 THEN '#39'Klar til afgang'#39
      'WHEN htf.Status = 5 THEN '#39'Udleverat'#39
      'End AS StatusHTF,'
      'PN.REFERENCE,'
      'PN.BL_NO,'
      'PN.Info2,'
      'ps.PackageSizeName AS Paketstorlek,'
      'cw.CertShortName AS Certfiering'
      ''
      'From dbo.packagenumber pn'
      
        'Left Outer Join dbo.PackageSize ps on ps.PackageSizeNo = pn.Pack' +
        'age_Size'
      'and ps.LanguageCode = 1'
      
        'Left Outer Join dbo.CertificationWood cw on cw.CertNo = pn.CertN' +
        'o'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.product p on p.productno = pt.productno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      
        'Left Outer Join dbo.PackageStatusHTF htf on htf.Paketnr = pn.Pac' +
        'kageNo'
      'and htf.prefix = pn.suppliercode'
      'where'
      'pn.Status = 1'
      'AND pt.productno = 13260'
      '')
    Left = 272
    Top = 280
    object sq_PaketListaPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PaketListaLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_PaketListaPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_PaketListaAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_PaketListaSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_PaketListaDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_PaketListaNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_PaketListaproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_PaketListaProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object sq_PaketListaStatusHTF: TStringField
      FieldName = 'StatusHTF'
      Origin = 'StatusHTF'
      ReadOnly = True
      Size = 19
    end
    object sq_PaketListaREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object sq_PaketListaBL_NO: TStringField
      FieldName = 'BL_NO'
      Origin = 'BL_NO'
      Size = 30
    end
    object sq_PaketListaInfo2: TStringField
      FieldName = 'Info2'
      Origin = 'Info2'
      Size = 30
    end
    object sq_PaketListaPaketstorlek: TStringField
      FieldName = 'Paketstorlek'
      Origin = 'Paketstorlek'
      Size = 50
    end
    object sq_PaketListaCertfiering: TStringField
      FieldName = 'Certfiering'
      Origin = 'Certfiering'
      Size = 5
    end
  end
  object cds_ProdInLager: TFDQuery
    Connection = dmsConnector.FDConnection1
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
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName'
      '')
    Left = 272
    Top = 232
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 145
    Top = 343
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object mtPkgNos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 744
    Top = 480
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
  end
  object mtProps: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 376
    Top = 336
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 376
    Top = 391
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 464
    Top = 400
  end
  object cds_LIP2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 464
    Top = 352
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIP2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIP2LIPName: TStringField
      FieldName = 'LIPName'
      Origin = 'LIPName'
      Size = 50
    end
  end
  object siLangLinked_fPickPkgNo: TsiLangLinked
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
    Left = 568
    Top = 328
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
