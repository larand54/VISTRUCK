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
    Top = 248
    Width = 1146
    Height = 346
    Align = alClient
    PopupMenu = pmPickPkgNosGrid
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
    Height = 135
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 278
      Top = 98
      Width = 58
      Height = 16
      Caption = 'Referens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelReferens: TLabel
      Left = 353
      Top = 98
      Width = 55
      Height = 16
      Caption = 'Referens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbFilterOnLength: TcxCheckBox
      Left = 900
      Top = 2
      Caption = 'Filtrera p'#229' l'#228'ngd'
      ParentFont = False
      Properties.OnChange = cbFilterOnLengthPropertiesChange
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 648
      Top = 111
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
      Left = 648
      Top = 95
      Caption = 'Produkter i lager'
      Visible = False
    end
    object teRef: TcxTextEdit
      Left = 902
      Top = 24
      TabOrder = 5
      Width = 120
    end
    object teInfo1: TcxTextEdit
      Left = 902
      Top = 51
      TabOrder = 6
      Width = 120
    end
    object teInfo2: TcxTextEdit
      Left = 902
      Top = 79
      TabOrder = 7
      Width = 120
    end
    object cxLabel2: TcxLabel
      Left = 846
      Top = 25
      Caption = 'Referens'
    end
    object cxLabel3: TcxLabel
      Left = 846
      Top = 58
      Caption = 'Info 1'
    end
    object cxLabel4: TcxLabel
      Left = 846
      Top = 80
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
      Left = 45
      Top = 112
      Caption = 'Lagergrupp:'
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 114
      Top = 111
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
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 137
      Top = 24
      Width = 122
      Height = 57
      Action = acShowMatchingProduct
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 265
      Top = 24
      Width = 122
      Height = 57
      Action = acShowAddLOPkgsWithMatchingProduct
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 393
      Top = 24
      Width = 130
      Height = 57
      Action = acShowAllAddLOPkgs
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 4
    end
    object cxButton7: TcxButton
      Left = 529
      Top = 24
      Width = 122
      Height = 57
      Action = acShowPkgsWithSameActDimOnly
      SpeedButtonOptions.GroupIndex = 1
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
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.Down = True
      TabOrder = 7
    end
    object cxButton2: TcxButton
      Left = 780
      Top = 24
      Width = 118
      Height = 57
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Urval LO&&Referens'
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 8
      OnClick = cxButton2Click
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
    UseSystemFont = False
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
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      'AND dbo.LOGICALINVENTORYPOINT.CanAddToLoad = 1'
      ''
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
    Left = 568
    Top = 328
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F000100
      50006C006F0063006B0061002000700061006B00650074006E00720001000100
      5000690063006B00200070006B00670020006E006F00010050006C006F006300
      6B0061002000700061006C006C006E00720001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      560069006500770031004D00410052004B00450052004100440001004C00E400
      670067002000740069006C006C0001000100410064006400010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C00650056006900650077003100500041004B00450054004E005200
      0100500061006B00650074006E0072000100500061006B00650074004E007200
      010050006B0067004E006F000100500061006C006C004E00720001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C006500560069006500770031004C00450056004B004F0044000100
      5000720065006600690078000100010050007200650066006900780001000100
      0D000A006700720064005000690063006B0050006B0067004E006F0073004400
      42005400610062006C0065005600690065007700310041004D00330001004100
      4D00330001000100010001000D000A006700720064005000690063006B005000
      6B0067004E006F007300440042005400610062006C0065005600690065007700
      310053005400590043004B00010053007400790063006B000100010050006300
      730001005300E40063006B0001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      7700310052004500470049005300540052004500520041005400010052006500
      6700690073007400720065007200610064000100010052006500670069007300
      74006500720065006400010001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      7700310053005400590043004B005000450052004C004E004700440001005300
      7400790063006B002F006C00E4006E0067006400010001005000630073002F00
      6C0065006E00670074006800010001000D000A00670072006400500069006300
      6B0050006B0067004E006F007300440042005400610062006C00650056006900
      650077003100500072006F00640075006B0074000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006700
      720064005000690063006B0050006B0067004E006F0073004400420054006100
      62006C006500560069006500770031005200650066006500720065006E007300
      01005200650066006500720065006E0073000100010052006500660065007200
      65006E0063006500010001000D000A006700720064005000690063006B005000
      6B0067004E006F007300440042005400610062006C0065005600690065007700
      310049006E0066006F003100010049006E0066006F0031000100010001000100
      0D000A006700720064005000690063006B0050006B0067004E006F0073004400
      42005400610062006C0065005600690065007700310049006E0066006F003200
      010049006E0066006F00320001000100010001000D000A006700720064005000
      690063006B0050006B0067004E006F007300440042005400610062006C006500
      56006900650077003100500061006B0065007400730074006F0072006C006500
      6B000100500061006B0065007400730074006F0072006C0065006B0001005000
      61006B0065007400730074006F0072006C0065006B00010050006B0067002000
      730069007A0065000100500061006C006C00730074006F0072006C0065006B00
      01000D000A006700720064005000690063006B0050006B0067004E006F007300
      440042005400610062006C006500560069006500770031004300650072007400
      660069006500720069006E006700010043006500720074006600690065007200
      69006E0067000100010043006500720074006900660069006300610074006900
      6F006E00010001000D000A004C006100620065006C0031000100500061006B00
      6500740020006D00610072006B00650072006100640065003A00010050006100
      6B006500740020006D00610072006B0065007200610064006500010053006500
      6C0065006300740065006400200070006B00670073000100500061006C006C00
      6100720020006D00610072006B006500720061006400650001000D000A004C00
      6100620065006C004E006F004F00660050006B00670073004D00610072006B00
      650064000100300001000100010001000D000A00420069007400420074006E00
      310001004F004B00010001004F004B00010001000D000A004200690074004200
      74006E0032000100430061006E00630065006C00010041007600620072007900
      74000100010041007600620072007900740001000D000A004C00610062006500
      6C00500072006F00640075006300740001004C006100620065006C0050007200
      6F00640075006300740001000100010001000D000A004C006100620065006C00
      4C0065006E0067007400680001004C006100620065006C004C0065006E006700
      7400680001000100010001000D000A004C006100620065006C00500049005000
      4E0061006D00650001004C006100620065006C005000490050004E0061006D00
      650001000100010001000D000A004C006100620065006C003200010050007200
      6F00640075006B0074003A000100500072006F00640075006B00740001005000
      72006F0064007500630074000100500072006F00640075006B00740001000D00
      0A004C006100620065006C00330001004C00E4006E00670064003A0001004C00
      E4006E006700640001004C0065006E0067007400680001004C00E4006E006700
      640001000D000A004C006100620065006C00340001004C006100670065007200
      73007400E4006C006C0065003A0001004C00610067006500720073007400E400
      6C006C0065000100530074006F0063006B00200070006C006100630065000100
      4C00610067006500720073007400E4006C006C00650001000D000A004C006100
      620065006C004F0077006E00650072005400690074006C0065000100C4006700
      6100720065003A000100C400670061007200650001004F0077006E0065007200
      0100C400670061007200650001000D000A004C006100620065006C004F007700
      6E006500720001004C006100620065006C004F0077006E006500720001000100
      010001000D000A004C006100620065006C00350001004C004F004E0072003A00
      01004C004F0001004C004F0001004C004F0001000D000A004C00610062006500
      6C004C004F004E00720001004C006100620065006C005000490050004E006100
      6D00650001000100010001000D000A0063006200460069006C00740065007200
      4F006E004C0065006E006700740068000100460069006C007400720065007200
      610020007000E50020006C00E4006E006700640001000100460069006C007400
      6500720020006C0065006E00670074006800010001000D000A00630078004C00
      6100620065006C0031000100500072006F00640075006B007400650072002000
      690020006C00610067006500720001000100500072006F006400750063007400
      7300200069006E002000730074006F0063006B00010001000D000A0063007800
      4C006100620065006C00320001005200650066006500720065006E0073000100
      01005200650066006500720065006E0063006500010001000D000A0063007800
      4C006100620065006C003300010049006E0066006F0020003100010001000100
      01000D000A00630078004C006100620065006C003400010049006E0066006F00
      2000320001000100010001000D000A00630078004C006100620065006C003500
      01004C006100670065007200670072007500700070003A0001004C0061006700
      65007200670072007500700070000100530074006F0063006B00200067007200
      6F007500700001004C0061006700650072006700720075007000700001000D00
      0A00500061006E0065006C003400010055007200760061006C00730061006C00
      7400650072006E00610074006900760001000100530065006C00650063007400
      69006F006E0020006F007000740069006F006E007300010001000D000A006300
      78004C006100620065006C005F00560061006C0001005F005F005F005F005F00
      5F0001000100010001000D000A00640078004200610072004D0061006E006100
      67006500720031004200610072003100010043007500730074006F006D002000
      310001000100010001000D000A006100630050006B00670049006E0066006F00
      0100500061006B0065007400200069006E0066006F0072006D00610074006900
      6F006E000100010050006B006700200069006E0066006F0072006D0061007400
      69006F006E000100500061006C006C00200069006E0066006F0072006D006100
      740069006F006E0001000D000A00610063004D00610072006B0041006C006C00
      01004D00610072006B00650072006100200061006C006C006100010001005300
      65006C00650063007400200061006C006C00010001000D000A00610063005500
      6E006D00610072006B0041006C006C000100410076006D00610072006B006500
      72006100200061006C006C0061000100010044006500730065006C0065006300
      7400200061006C006C00010001000D000A0061006300530068006F0077004100
      640064004C004F0050006B006700730057006900740068004D00610074006300
      680069006E006700500072006F00640075006300740001005500720076006100
      6C00200061006400640020004C004F002000260026002000700072006F006400
      75006B007400010055007200760061006C00200041004C004F0020006F006300
      68002000700072006F00640075006B0074000100530065006C00650063007400
      69006F006E00200041004C004F00200061006E0064002000700072006F006400
      750063007400010055007200760061006C00200041004C004F0020006F006300
      68002000700072006F00640075006B00740001000D000A006100630053006800
      6F00770041006C006C004100640064004C004F0050006B006700730001005500
      7200760061006C00200061006400640020004C004F0001005500720076006100
      6C00200041004C004F000100530065006C0065006300740069006F006E002000
      41004C004F00010055007200760061006C00200041004C004F0001000D000A00
      61006300530068006F0077004D00610074006300680069006E00670050007200
      6F00640075006300740041006E0064004C0065006E0067007400680001005500
      7200760061006C002000700072006F00640075006B0074002000260026002000
      6C00E4006E0067006400010055007200760061006C002000700072006F006400
      75006B00740020006F006300680020006C00E4006E0067006400010053006500
      6C0065006300740069006F006E002000700072006F0064007500630074002000
      61006E00640020006C0065006E00670074006800010055007200760061006C00
      2000700072006F00640075006B00740020006F006300680020006C00E4006E00
      6700640001000D000A0061006300530068006F0077004D006100740063006800
      69006E006700500072006F006400750063007400010055007200760061006C00
      2000700072006F00640075006B00740001000100530065006C00650063007400
      69006F006E002000700072006F006400750063007400010001000D000A006100
      6300530068006F00770050006B00670073005700690074006800530061006D00
      6500410063007400440069006D004F006E006C00790001005500720076006100
      6C00200054004D0001000100530065006C0065006300740069006F006E002000
      46004D00010001000D000A0061006300530068006F00770050006B0067007300
      5500730069006E00670053006500610072006300680001005500720076006100
      6C0020007300F6006B0001000100530065006C0065006300740069006F006E00
      2000730065006100720063006800010001000D000A0061006300530065006C00
      6500630074004D00610072006B006500640052006F007700730001005600E400
      6C006A0020006D00610072006B00650072006100640065002000720061006400
      6500720001000100530065006C0065006300740020006D00610072006B006500
      640020006C0069006E0065007300010001000D000A0061006300530068006F00
      77004D00610074006300680069006E0067004C00490050000100550072007600
      61006C0020006C00610067006500720067007200750070007000010001005300
      65006C0065006300740069006F006E002000730074006F0063006B0020006700
      72006F0075007000010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A006D007400500072006F006400750063007400500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      010001000D000A006D007400500072006F006400750063007400500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D00650001000100010001000D000A00730071005F00500061006B0065007400
      4C0069007300740061005000610063006B006100670065004E006F0001005000
      610063006B006100670065004E006F0001000100010001000D000A0073007100
      5F00500061006B00650074004C0069007300740061004C00450056004B004F00
      440001004C00450056004B004F0044000100010053005500500050004C004900
      45005200200043004F0044004500010001000D000A00730071005F0050006100
      6B00650074004C0069007300740061005000630073005000650072004C006500
      6E0067007400680001005000630073005000650072004C0065006E0067007400
      680001000100010001000D000A00730071005F00500061006B00650074004C00
      690073007400610041004D003300010041004D00330001000100010001000D00
      0A00730071005F00500061006B00650074004C00690073007400610053005400
      590043004B00010053005400590043004B000100010050004300530001005300
      C40043004B0001000D000A00730071005F00500061006B00650074004C006900
      7300740061004400610074006500430072006500610074006500640001004400
      610074006500430072006500610074006500640001000100010001000D000A00
      730071005F00500061006B00650074004C0069007300740061004E004F004F00
      46004C0045004E00470054004800530001004E004F004F0046004C0045004E00
      470054004800530001000100010001000D000A00730071005F00500061006B00
      650074004C006900730074006100700072006F0064007500630074006E006F00
      0100700072006F0064007500630074006E006F0001000100010001000D000A00
      730071005F00500061006B00650074004C006900730074006100500072006F00
      640075006B0074000100500072006F00640075006B0074000100010050007200
      6F006400750063007400010001000D000A00730071005F00500061006B006500
      74004C0069007300740061005300740061007400750073004800540046000100
      53007400610074007500730048005400460001000100010001000D000A007300
      71005F00500061006B00650074004C0069007300740061005200450046004500
      520045004E004300450001005200450046004500520045004E00430045000100
      0100010001000D000A00730071005F00500061006B00650074004C0069007300
      7400610042004C005F004E004F00010042004C005F004E004F00010001000100
      01000D000A00730071005F00500061006B00650074004C006900730074006100
      49006E0066006F003200010049006E0066006F00320001000100010001000D00
      0A00730071005F00500061006B00650074004C00690073007400610050006100
      6B0065007400730074006F0072006C0065006B000100500061006B0065007400
      730074006F0072006C0065006B000100500061006B0065007400730074006F00
      72006C0065006B00010050006B0067002000730069007A006500010050006100
      6C006C00730074006F0072006C0065006B0001000D000A00730071005F005000
      61006B00650074004C0069007300740061004300650072007400660069006500
      720069006E00670001004300650072007400660069006500720069006E006700
      01000100430065007200740069006600690063006100740069006F006E000100
      01000D000A006300640073005F00500072006F00640049006E004C0061006700
      65007200500072006F00640075006300740044006900730070006C0061007900
      4E0061006D0065000100500072006F0064007500630074004400690073007000
      6C00610079004E0061006D00650001000100010001000D000A00630064007300
      5F00500072006F00640049006E004C006100670065007200500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A006D00740050006B0067004E006F007300500061006300
      6B006100670065004E006F0001005000610063006B006100670065004E006F00
      01000100010001000D000A006D00740050006B0067004E006F00730050007200
      6500660069007800010050007200650066006900780001000100500072006500
      660069007800010001000D000A006D007400500072006F007000730050004900
      50004E006F0001005000490050004E006F0001000100010001000D000A006D00
      7400500072006F00700073004C00490050004E006F0001004C00490050004E00
      6F0001000100010001000D000A006D007400500072006F00700073004C004900
      500001004C004900500001000100010001000D000A006300640073005F004C00
      4900500032004C00490050004E006F0001004C00490050004E006F0001000100
      010001000D000A006300640073005F004C004900500032004C00490050004E00
      61006D00650001004C00490050004E0061006D00650001000100010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00540066005000690063006B0050006B0067004E006F0001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A004C006100620065006C00500072006F00640075006300740001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A004C006100620065006C004C0065006E0067007400680001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      4C006100620065006C005000490050004E0061006D00650001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      4C006100620065006C00320001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A004C006100620065006C003300
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A004C006100620065006C00340001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A004C006100
      620065006C004F0077006E00650072005400690074006C00650001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A004C006100620065006C004F0077006E006500720001004D00530020005300
      61006E00730020005300650072006900660001000100010001000D000A004C00
      6100620065006C00350001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A004C006100620065006C004C004F00
      4E00720001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A00620062004D00610072006B0041006C006C000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A006200620055006E004D00610072006B0041006C006C0001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      5300650067006F00650020005500490001000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      5300650067006F00650020005500490001000100010001000D000A0070006D00
      5000690063006B0050006B0067004E006F007300470072006900640001005300
      650067006F00650020005500490001000100010001000D000A00630078005300
      740079006C006500590065006C006C006F00770001005400610068006F006D00
      610001000100010001000D000A00630078005300740079006C00650052006500
      640001005400610068006F006D00610001000100010001000D000A0063007800
      5300740079006C006500410071007500610001005400610068006F006D006100
      01000100010001000D000A00630078005300740079006C00650042006C007500
      650001005400610068006F006D00610001000100010001000D000A0063007800
      5300740079006C006500530069006C0076006500720001005400610068006F00
      6D00610001000100010001000D000A00630078005300740079006C0065004800
      650061006400650072000100560065007200640061006E006100010001000100
      01000D000A00630078005300740079006C00650043006F006E00740065006E00
      740001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F006400640001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A004900440053005F003000010055007200760061006C0020007000
      72006F00640075006B00740020002600260020006C00E4006E00670064000100
      55007200760061006C002000700072006F00640075006B00740020006F006300
      680020006C00E4006E00670064000100530065006C0065006300740069006F00
      6E002000700072006F006400750063007400200061006E00640020006C006500
      6E00670074006800010055007200760061006C002000700072006F0064007500
      6B00740020006F006300680020006C00E4006E006700640001000D000A004900
      440053005F00310001004D006F00640074006100670065007400010001000100
      01000D000A004900440053005F0031003100010055007200760061006C002000
      61006400640020004C004F002000260026002000700072006F00640075006B00
      7400010055007200760061006C00200041004C004F0020006F00630068002000
      700072006F00640075006B0074000100530065006C0065006300740069006F00
      6E00200041004C004F00200061006E0064002000700072006F00640075006300
      7400010055007200760061006C00200041004C004F0020006F00630068002000
      700072006F00640075006B00740001000D000A004900440053005F0031003600
      010055007200760061006C00200061006400640020004C004F00010055007200
      760061006C00200041004C004F000100530065006C0065006300740069006F00
      6E00200041004C004F00010055007200760061006C00200041004C004F000100
      0D000A004900440053005F00320001004B006C00610072002000740069006C00
      2000700072006F00640075006B00740069006F006E0001000100520065006100
      64007900200066006F0072002000700072006F00640075006300740069006F00
      6E00010001000D000A004900440053005F003200310001005500720076006100
      6C00200054004D0001000100530065006C0065006300740069006F006E002000
      46004D00010001000D000A004900440053005F00320036000100550072007600
      61006C0020004C00610067006500720067007200750070007000010055007200
      760061006C0020006C0061006700650072006700720075007000700001005300
      65006C0065006300740069006F006E002000730074006F0063006B0020006700
      72006F0075007000010055007200760061006C0020006C006100670065007200
      6700720075007000700001000D000A004900440053005F00330001004B006C00
      610072002000740069006C00200061006600670061006E006700010001000100
      01000D000A004900440053005F0034000100550064006C006500760065007200
      6100740001000100010001000D000A004900440053005F003500010061006E00
      6400200001006F00630068002000010001006F0063006800200001000D000A00
      4900440053005F003600010055007200760061006C002000700072006F006400
      75006B00740001000100530065006C0065006300740069006F006E0020007000
      72006F006400750063007400010001000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A006C006300500072006F0064007500
      6300740044006900730070006C00610079004E0061006D0065002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D00650001000100010001000D000A006C0063004C00490050002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4C00490050004E0061006D00650001000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540066005000690063006B0050006B0067004E006F000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A004C006100620065006C00500072006F00640075006300740001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A004C006100620065006C004C0065006E006700740068000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A004C006100620065006C005000490050004E0061006D00
      65000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A004C006100620065006C003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A004C006100620065006C0033000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A004C00
      6100620065006C0034000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A004C006100620065006C00
      4F0077006E00650072005400690074006C006500010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      4C006100620065006C004F0077006E0065007200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      4C006100620065006C0035000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A004C00610062006500
      6C004C004F004E0072000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00620062004D0061007200
      6B0041006C006C000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A006200620055006E004D006100
      72006B0041006C006C000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0064007800420061007200
      4D0061006E00610067006500720031000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A0070006D005000690063006B0050006B0067004E006F00
      730047007200690064000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C006500590065006C006C006F0077000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C0065005200650064000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650041007100750061000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      78005300740079006C00650042006C0075006500010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C006500530069006C00760065007200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C006500480065006100640065007200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00630078005300740079006C00650043006F006E00
      740065006E0074000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      650043006F006E00740065006E0074004F006400640001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00}
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPickPkgNos
    PopupMenus = <>
    Left = 320
    Top = 497
  end
end
