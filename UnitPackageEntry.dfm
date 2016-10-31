object frmPackageEntry: TfrmPackageEntry
  Left = 258
  Top = 148
  Caption = 'Paketinmatning'
  ClientHeight = 826
  ClientWidth = 1497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 437
    Width = 1497
    Height = 389
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 0
      Top = 370
      Width = 1497
      Height = 19
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Panels = <>
    end
    object TPanel
      Left = 0
      Top = 0
      Width = 1497
      Height = 73
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 1
      object seColWidth: TcxSpinEdit
        Left = 1225
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.ImmediatePost = True
        Properties.Increment = 5.000000000000000000
        Properties.OnChange = seColWidthPropertiesChange
        TabOrder = 2
        Width = 70
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Verk:'
      end
      object cxLabel2: TcxLabel
        Left = 453
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Lagerst'#228'lle:'
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Verkkod:'
      end
      object cxLabel4: TcxLabel
        Left = 453
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Lagergrupp:'
      end
      object cxLabel5: TcxLabel
        Left = 226
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'M'#228'tpunkt:'
      end
      object cxLabel6: TcxLabel
        Left = 689
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'L'#228'ngdgrupp:'
      end
      object cxLabel7: TcxLabel
        Left = 1162
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Kol.bredd:'
      end
      object cxLabel8: TcxLabel
        Left = 226
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = #196'gare:'
      end
      object bcLengthOption: TcxComboBox
        Left = 768
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'LO L'#228'ngder'
          'ALLA L'#228'ngder'
          'STD L'#228'ngder'
          'Produktl'#228'ngder')
        Properties.OnChange = bcLengthOptionPropertiesChange
        TabOrder = 0
        Text = 'LO L'#228'ngder'
        Width = 149
      end
      object cxLabel9: TcxLabel
        Left = 689
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'L'#228'ngdalt:'
      end
      object seRunNo: TcxSpinEdit
        Left = 1004
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.ImmediatePost = True
        Properties.ValueType = vtInt
        Properties.OnChange = seColWidthPropertiesChange
        TabOrder = 1
        Visible = False
        Width = 70
      end
      object cxLabel10: TcxLabel
        Left = 926
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'K'#246'rnr:'
        Visible = False
      end
      object deRegDate: TcxDateEdit
        Left = 1004
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.Kind = ckDateTime
        TabOrder = 13
        Width = 149
      end
      object cxLabel11: TcxLabel
        Left = 926
        Top = 44
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Reg.datum:'
      end
      object cxButton1: TcxButton
        Left = 926
        Top = 5
        Width = 148
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acAddSpecialLengths
        Caption = 'L'#228'gg till &speciall'#228'ngder'
        TabOrder = 15
      end
      object cbSaveToProdLogg: TcxCheckBox
        Left = 1083
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Spara till produktionsloggen'
        Properties.ImmediatePost = True
        TabOrder = 16
        Width = 228
      end
      object lcVERK: TcxDBLookupComboBox
        Left = 69
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'VERK'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 17
        Width = 149
      end
      object lcREGPOINT: TcxDBLookupComboBox
        Left = 295
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'REGPOINT'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 18
        Width = 149
      end
      object lcOWNER: TcxDBLookupComboBox
        Left = 295
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'OWNER'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 19
        Width = 149
      end
      object lcPIPNAME: TcxDBLookupComboBox
        Left = 532
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'PIPNAME'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 20
        Width = 149
      end
      object lcLIPName: TcxDBLookupComboBox
        Left = 532
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'LIPName'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 21
        Width = 149
      end
      object lcLengthGroup: TcxDBLookupComboBox
        Left = 768
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'LengthGroup'
        DataBinding.DataSource = dsProps
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 22
        Width = 149
      end
      object meSupplierCode: TcxDBMaskEdit
        Left = 69
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'SupplierCode'
        DataBinding.DataSource = dsProps
        TabOrder = 23
        OnExit = meSupplierCodeExit
        Width = 149
      end
    end
    object grdPackages: TcxGrid
      Left = 0
      Top = 73
      Width = 1497
      Height = 297
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 2
      object grdPackagesDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditKeyDown = grdPackagesDBBandedTableView1EditKeyDown
        DataController.DataSource = dsmtPackages
        DataController.KeyFieldNames = 'RecID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'PAKETNR/PRODUKT'
          end
          item
            Caption = 'VOLYM'
          end
          item
            Caption = 'L'#196'NGDER'
          end>
      end
      object grdPackagesLevel1: TcxGridLevel
        GridView = grdPackagesDBBandedTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 429
    Width = 1497
    Height = 8
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel1
  end
  object Panel2: TPanel
    Left = 0
    Top = 80
    Width = 1497
    Height = 349
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object grdLORows: TcxGrid
      Left = 1
      Top = 1
      Width = 1495
      Height = 347
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object grdLORowsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmsProduct.ds_mtLO_Records
        DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdLORowsDBTableView1MATCH: TcxGridDBColumn
          DataBinding.FieldName = 'MATCH'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnChange = grdPkgsDBTableView1MATCHPropertiesChange
          Width = 51
        end
        object grdLORowsDBTableView1LO_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'LO_NUMBER'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 47
        end
        object grdLORowsDBTableView1PRODUCTDESCRIPTION: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUCTDESCRIPTION'
          PropertiesClassName = 'TcxLabelProperties'
          SortIndex = 0
          SortOrder = soAscending
          Width = 188
        end
        object grdLORowsDBTableView1LENGTHDESC: TcxGridDBColumn
          DataBinding.FieldName = 'LENGTHDESC'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 257
        end
        object grdLORowsDBTableView1REFERENCE: TcxGridDBColumn
          DataBinding.FieldName = 'REFERENCE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 136
        end
        object grdLORowsDBTableView1PKGCODE: TcxGridDBColumn
          DataBinding.FieldName = 'PKGCODE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 111
        end
        object grdLORowsDBTableView1ACT_LENGTH: TcxGridDBColumn
          DataBinding.FieldName = 'ACT_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 76
        end
        object grdLORowsDBTableView1ExtraID: TcxGridDBColumn
          DataBinding.FieldName = 'ExtraID'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 127
        end
        object grdLORowsDBTableView1OverrideRL: TcxGridDBColumn
          DataBinding.FieldName = 'OverrideRL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 97
        end
        object grdLORowsDBTableView1CustomerNo: TcxGridDBColumn
          DataBinding.FieldName = 'CustomerNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1CustShipPlanDetailObjectNo: TcxGridDBColumn
          DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1NOOFUNITS: TcxGridDBColumn
          DataBinding.FieldName = 'NOOFUNITS'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1VOLUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'VOLUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1PRICEUNIT: TcxGridDBColumn
          DataBinding.FieldName = 'PRICEUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1MIN_LENGTH: TcxGridDBColumn
          DataBinding.FieldName = 'MIN_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1MAX_LENGTH: TcxGridDBColumn
          DataBinding.FieldName = 'MAX_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1ACT_THICK: TcxGridDBColumn
          DataBinding.FieldName = 'ACT_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1ACT_WIDTH: TcxGridDBColumn
          DataBinding.FieldName = 'ACT_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1ProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1LEV_PERIOD_START: TcxGridDBColumn
          DataBinding.FieldName = 'LEV_PERIOD_START'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1LEV_PERIOD_END: TcxGridDBColumn
          DataBinding.FieldName = 'LEV_PERIOD_END'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1ORDERNO: TcxGridDBColumn
          DataBinding.FieldName = 'ORDERNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1PCSPERPKG: TcxGridDBColumn
          DataBinding.FieldName = 'PCSPERPKG'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1PRODUCTGROUPNO: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUCTGROUPNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1NOM_THICK: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1NOM_WIDTH: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn
          Caption = 'LO ID'
          DataBinding.FieldName = 'SupplierShipPlanObjectNo'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdLORowsDBTableView1ProductLengthGroupNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthGroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1INCH_THICK: TcxGridDBColumn
          DataBinding.FieldName = 'INCH_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdLORowsDBTableView1INCH_WIDTH: TcxGridDBColumn
          DataBinding.FieldName = 'INCH_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
      end
      object grdLORowsLevel1: TcxGridLevel
        GridView = grdLORowsDBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1497
    Height = 80
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 7
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 555
      Height = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 553
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 555
      Top = 0
      Width = 858
      Height = 80
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      object cbInputOption: TcxComboBox
        Left = 148
        Top = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Styck/l'#228'ngd'
          'Total L'#246'pmeter'
          'Styck/medell'#228'ngd'
          'Artiklar')
        Properties.OnChange = cbInputOptionPropertiesChange
        TabOrder = 0
        Text = 'Styck/l'#228'ngd'
        Width = 149
      end
      object cxLabel12: TcxLabel
        Left = 20
        Top = 27
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Inmatningsalternativ'
      end
      object cbCopyPcs: TCheckBox
        Left = 318
        Top = 27
        Width = 139
        Height = 21
        Margins.Left = 4
        Caption = 'Kopiera stycketal'
        TabOrder = 2
        OnClick = cbCopyPcsClick
      end
    end
    object Panel6: TPanel
      Left = 1413
      Top = 0
      Width = 84
      Height = 80
      Margins.Left = 4
      Align = alRight
      Constraints.MinWidth = 62
      TabOrder = 2
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 82
        Height = 48
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'HamtaPktNr')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 424
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 213
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbAddPkg'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoInt'
        end
        item
          Visible = True
          ItemName = 'lbSavePkgs'
        end
        item
          Visible = True
          ItemName = 'lbRemovePkg'
        end
        item
          Visible = True
          ItemName = 'lbFillInPkgNos'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbCloseForm'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbAddPkg: TdxBarLargeButton
      Action = acAddPkg
      Category = 0
    end
    object lbRemovePkg: TdxBarLargeButton
      Action = acRemovePkg
      Category = 0
    end
    object lbSavePkgs: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object lbCloseForm: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbPkgNoInt: TdxBarLargeButton
      Action = acPkgNoSerie
      Category = 0
    end
    object lbFillInPkgNos: TdxBarLargeButton
      Caption = 'H'#228'mta PktNr'
      Category = 0
      Hint = 'H'#228'mta PktNr'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmHamtaPktNr
      LargeImageIndex = 6
    end
    object bbFyllTommaPaketnr: TdxBarButton
      Action = acFillEmptyPkgNos
      Caption = 'Fyll alla tomma paketnr'
      Category = 1
    end
    object bbHamtaPktNrOchLaggUppPaket: TdxBarButton
      Action = acAddPkgsWithPkgNos
      Caption = 'L'#228'gg upp paket med paketnr'
      Category = 1
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 392
    Top = 128
    Bitmap = {
      494C010107000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      6300636363006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C66B
      6B00C6636300CE636300B55252009C6B6B00B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5737300942929009431
      31009C3939009C4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00527BC600FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00317BEF00527BC600296BC600FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00397BE700007BFF000073F700527BC600FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00009CFF00008CFF00008CFF00527BC600FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C66363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF0000B5FF00008CFF000094FF00527BC600527B
      C600FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      94000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A0000B5FF0008C6FF00009CFF00009C
      FF00527BC600F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE6363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C210000B5FF0008BDFF0000AD
      FF00009CFF00527BC600EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A5000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000B5847300AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100527BC600527BC600527BC60000C6FF0008FFFF0031F7
      FF0010BDFF0000ADFF00527BC600527BC600F7F7F700EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C210029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FF
      FF004AEFFF0018CEFF0000A5FF00527BC600EF9C2100EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C210039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DE
      FF0000FFFF0000FFFF0039EFFF0008C6FF00527BC600EF9C2100EFEFEF00ADAD
      FD000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E70008C6FF0039E7FF004AEFFF0042F7FF0018FF
      FF0000FFFF0000FFFF0008FFFF0021FFFF00527BC600EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A009C4A4A0000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C210031D6FF0008F7FF0000FF
      FF0000F7FF0000D6FF0000B5FF00527BC600EF9C2100EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0031D6
      FF0000F7FF0000EFFF0000ADFF0000A5FF00527BC600DEDEDE00DEDEDE00ADB5
      B5000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D60031D6FF0042DEFF0010D6FF005AA5FF00527BC600D6D6D600B5B5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60031D6FF0052A5FF00527BC600D6D6D600B5B5
      B50000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD42
      4200CE9C9C00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C68C8C00B552520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFF9FF
      FFFFFFFFFF000000FFFFF1C00003FFFFFF000000C7FFE3C00003FFFFFF000000
      C3FF87C00003F1FFCF000000C1FF0FC00003F5802F000000E0FE1FC00003F990
      0F000000F07C3FC00003FBDEDF000000FC307FC00003F1FFFF000000FE00FFC0
      0003FFFFFF000000FF01FFC00003F18FFF000000FF83FFC00003F7C423000000
      FF01FFC00003FB8003000000FE00FFC00003F5D237000000FC187FC00003F1FF
      7F000000F83C3FC00003FFFFFF000000F07F1FC00003F1FFFF000000E0FF8FC0
      0003FBA05F000000C1FFEFC00003FB821F00000083FFFFC00003F3989F000000
      87FFFFE00007FBFBFF0000008FFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
      FF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE00003FF
      FFFFE0000FFFFFFFC00001FFFFFFE0000FFF1FFFC000018000FFE0000FF8000F
      C0000180007FE0000FE0000FC0000180003FE0000FC0000FC0000180001FE000
      0FC0000FC0000180000FE0000FC0000FC00001800007E0000FC0000FC0000180
      0003E0000FC0000FC00001800001E0000FC0000FC00001800001E0000FC0000F
      C00001800001E0000FC0000FC00001800001E0000FC0000FC00001800001E000
      0FC0000FC00001C00001E0000FC0000FC00001E00001E0000FC0000FC00001F0
      0001E0000FC0000FC00001F80001E0000FE0000FC00001FC0001E0000FF8000F
      C00001FE0001FFFFFFFE1FFFC00001FF0001FFFFFFFFFFFFE00003FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmHamtaPktNr: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbFyllTommaPaketnr'
      end
      item
        Visible = True
        ItemName = 'bbHamtaPktNrOchLaggUppPaket'
      end>
    UseOwnFont = False
    Left = 296
    Top = 216
  end
  object dsmtPackages: TDataSource
    DataSet = dmsProduct.mtPackages
    OnDataChange = dsmtPackagesDataChange
    Left = 144
    Top = 336
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 569
    Top = 165
    object acSearchRunNo: TAction
      Caption = 'S'#246'k k'#246'rnr'
    end
    object acAddSpecialLengths: TAction
      Caption = 'L'#228'gg till speciall'#228'ngder'
      OnExecute = acAddSpecialLengthsExecute
      OnUpdate = acAddSpecialLengthsUpdate
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acRemovePkg: TAction
      Caption = 'Ta bort paket F5'
      ImageIndex = 4
      ShortCut = 116
      OnExecute = acRemovePkgExecute
      OnUpdate = acRemovePkgUpdate
    end
    object acPkgNoSerie: TAction
      Caption = 'Paketnr serie'
      ImageIndex = 5
      OnExecute = acPkgNoSerieExecute
      OnUpdate = acPkgNoSerieUpdate
    end
    object acAddPkg: TAction
      Caption = 'L'#228'gg till paket F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddPkgExecute
    end
    object acFillEmptyPkgNos: TAction
      Caption = 'acFillEmptyPkgNos'
      OnExecute = acFillEmptyPkgNosExecute
      OnUpdate = acFillEmptyPkgNosUpdate
    end
    object acAddPkgsWithPkgNos: TAction
      Caption = 'acAddPkgsWithPkgNos'
      OnExecute = acAddPkgsWithPkgNosExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acCloseExecute
    end
  end
  object dsProps: TDataSource
    DataSet = mtUserProp
    Left = 40
    Top = 304
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
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
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroup'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LIPName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PIPNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'REGPOINT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRODUCER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'OWNER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'VERK'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'Gradestamp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Barcode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'TO_PIPNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TO_LIPNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'OrderTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'FilterOrderDate'
        DataType = ftInteger
      end
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesPersonNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkSupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkKundNo'
        DataType = ftInteger
      end
      item
        Name = 'LOObjectType'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'BookingTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShowProduct'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
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
    Left = 40
    Top = 248
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
      OnChange = mtUserPropVerkNoChange
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtUserPropPIPNoChange
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      OnChange = mtUserPropLengthGroupNoChange
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropTO_PIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TO_PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'SalesRegionNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropTO_LIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TO_LIPNAME'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'ProducerNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtUserPropOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object mtUserPropStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtUserPropFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object mtUserPropClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtUserPropSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object mtUserPropVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object mtUserPropVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object mtUserPropLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object mtUserPropLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
    end
    object mtUserPropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtUserPropShowProduct: TIntegerField
      FieldName = 'ShowProduct'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'EndPeriod'
      Calculated = True
    end
    object mtUserPropFilter1: TStringField
      DisplayWidth = 50
      FieldName = 'Filter1'
    end
    object mtUserPropFilter2: TStringField
      DisplayWidth = 255
      FieldName = 'Filter2'
    end
    object mtUserPropName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP2
    Left = 128
    Top = 184
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP2
    Left = 48
    Top = 184
  end
  object cds_PIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS PIPNAME'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  CY.CITYNAME'
      '')
    Left = 48
    Top = 128
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIP2PIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_PIP2PIPNAME: TStringField
      FieldName = 'PIPNAME'
      Origin = 'PIPNAME'
      Size = 50
    end
  end
  object cds_LIP2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS LIPName'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 128
    Top = 128
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
  object siLangLinked_frmPackageEntry: TsiLangLinked
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
    Left = 600
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065004500
      6E007400720079000100500061006B006500740069006E006D00610074006E00
      69006E0067000100010001000D000A00630078004C006100620065006C003100
      01005600650072006B003A000100010001000D000A00630078004C0061006200
      65006C00320001004C00610067006500720073007400E4006C006C0065003A00
      0100010001000D000A00630078004C006100620065006C003300010056006500
      72006B006B006F0064003A000100010001000D000A00630078004C0061006200
      65006C00340001004C006100670065007200670072007500700070003A000100
      010001000D000A00630078004C006100620065006C00350001004D00E4007400
      700075006E006B0074003A000100010001000D000A00630078004C0061006200
      65006C00360001004C00E4006E0067006400670072007500700070003A000100
      010001000D000A00630078004C006100620065006C00370001004B006F006C00
      2E00620072006500640064003A000100010001000D000A00630078004C006100
      620065006C0038000100C40067006100720065003A000100010001000D000A00
      630078004C006100620065006C00390001004C00E4006E006700640061006C00
      74003A000100010001000D000A00630078004C006100620065006C0031003000
      01004B00F60072006E0072003A000100010001000D000A00630078004C006100
      620065006C003100310001005200650067002E0064006100740075006D003A00
      0100010001000D000A006300780042007500740074006F006E00310001004C00
      E400670067002000740069006C006C0020002600730070006500630069006100
      6C006C00E4006E0067006400650072000100010001000D000A00630062005300
      61007600650054006F00500072006F0064004C006F0067006700010053007000
      6100720061002000740069006C006C002000700072006F00640075006B007400
      69006F006E0073006C006F006700670065006E000100010001000D000A006700
      720064004C004F0052006F0077007300440042005400610062006C0065005600
      69006500770031004D00410054004300480001004D0041005400430048000100
      010001000D000A006700720064004C004F0052006F0077007300440042005400
      610062006C006500560069006500770031004C004F005F004E0055004D004200
      4500520001004C004F000100010001000D000A006700720064004C004F005200
      6F0077007300440042005400610062006C006500560069006500770031005000
      52004F0044005500430054004400450053004300520049005000540049004F00
      4E000100500052004F00440055004B0054004200450053004B00520049005600
      4E0049004E0047000100010001000D000A006700720064004C004F0052006F00
      77007300440042005400610062006C006500560069006500770031004C004500
      4E00470054004800440045005300430001004C00C4004E004700440042004500
      53004B005200490056004E0049004E0047000100010001000D000A0067007200
      64004C004F0052006F0077007300440042005400610062006C00650056006900
      6500770031005200450046004500520045004E00430045000100520045004600
      4500520045004E0053000100010001000D000A006700720064004C004F005200
      6F0077007300440042005400610062006C006500560069006500770031005000
      4B00470043004F0044004500010050004B0054002E004B004F00440001000100
      01000D000A006700720064004C004F0052006F00770073004400420054006100
      62006C006500560069006500770031004100430054005F004C0045004E004700
      54004800010041004B0054002E004C00C4004E00470044000100010001000D00
      0A006700720064004C004F0052006F0077007300440042005400610062006C00
      650056006900650077003100450078007400720061004900440001004B005200
      20005200650066006500720065006E0073000100010001000D000A0067007200
      64004C004F0052006F0077007300440042005400610062006C00650056006900
      6500770031004F00760065007200720069006400650052004C00010054006900
      6C006C00E5007400200061006C006C00610020006C00E4006E00670064006500
      72000100010001000D000A006700720064004C004F0052006F00770073004400
      42005400610062006C0065005600690065007700310043007500730074006F00
      6D00650072004E006F00010043007500730074006F006D00650072004E006F00
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      5400610062006C00650056006900650077003100430075007300740053006800
      6900700050006C0061006E00440065007400610069006C004F0062006A006500
      630074004E006F0001004300750073007400530068006900700050006C006100
      6E00440065007400610069006C004F0062006A006500630074004E006F000100
      010001000D000A006700720064004C004F0052006F0077007300440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000D00
      0A006700720064004C004F0052006F0077007300440042005400610062006C00
      6500560069006500770031004E004F004F00460055004E004900540053000100
      4B00560041004E00540049005400450054000100010001000D000A0067007200
      64004C004F0052006F0077007300440042005400610062006C00650056006900
      65007700310056004F004C0055004E0049005400010045004E00480045005400
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      5400610062006C00650056006900650077003100500052004900430045000100
      50005200490053000100010001000D000A006700720064004C004F0052006F00
      77007300440042005400610062006C0065005600690065007700310050005200
      49004300450055004E00490054000100500052004900530045004E0048004500
      54000100010001000D000A006700720064004C004F0052006F00770073004400
      42005400610062006C006500560069006500770031004D0049004E005F004C00
      45004E0047005400480001004D0049004E005F004C0045004E00470054004800
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      5400610062006C006500560069006500770031004D00410058005F004C004500
      4E0047005400480001004D00410058005F004C0045004E004700540048000100
      010001000D000A006700720064004C004F0052006F0077007300440042005400
      610062006C006500560069006500770031004100430054005F00540048004900
      43004B0001004100430054005F0054004800490043004B000100010001000D00
      0A006700720064004C004F0052006F0077007300440042005400610062006C00
      6500560069006500770031004100430054005F00570049004400540048000100
      4100430054005F00570049004400540048000100010001000D000A0067007200
      64004C004F0052006F0077007300440042005400610062006C00650056006900
      650077003100500072006F0064007500630074004C0065006E00670074006800
      4E006F000100500072006F0064007500630074004C0065006E00670074006800
      4E006F000100010001000D000A006700720064004C004F0052006F0077007300
      440042005400610062006C006500560069006500770031004C00450056005F00
      50004500520049004F0044005F005300540041005200540001004C0045005600
      5F0050004500520049004F0044005F0053005400410052005400010001000100
      0D000A006700720064004C004F0052006F007700730044004200540061006200
      6C006500560069006500770031004C00450056005F0050004500520049004F00
      44005F0045004E00440001004C00450056005F0050004500520049004F004400
      5F0045004E0044000100010001000D000A006700720064004C004F0052006F00
      77007300440042005400610062006C006500560069006500770031004F005200
      4400450052004E004F0001004F0052004400450052004E004F00010001000100
      0D000A006700720064004C004F0052006F007700730044004200540061006200
      6C0065005600690065007700310050004300530050004500520050004B004700
      010050004300530050004500520050004B0047000100010001000D000A006700
      720064004C004F0052006F0077007300440042005400610062006C0065005600
      6900650077003100500052004F004400550043005400470052004F0055005000
      4E004F000100500052004F004400550043005400470052004F00550050004E00
      4F000100010001000D000A006700720064004C004F0052006F00770073004400
      42005400610062006C006500560069006500770031004E004F004D005F005400
      4800490043004B0001004E004F004D005F0054004800490043004B0001000100
      01000D000A006700720064004C004F0052006F00770073004400420054006100
      62006C006500560069006500770031004E004F004D005F005700490044005400
      480001004E004F004D005F00570049004400540048000100010001000D000A00
      6700720064004C004F0052006F0077007300440042005400610062006C006500
      5600690065007700310053007500700070006C00690065007200530068006900
      700050006C0061006E004F0062006A006500630074004E006F0001004C004F00
      2000490044000100010001000D000A006700720064004C004F0052006F007700
      7300440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004C0065006E00670074006800470072006F00750070004E00
      6F000100500072006F0064007500630074004C0065006E006700740068004700
      72006F00750070004E006F000100010001000D000A006700720064004C004F00
      52006F0077007300440042005400610062006C00650056006900650077003100
      49004E00430048005F0054004800490043004B00010049004E00430048005F00
      54004800490043004B000100010001000D000A006700720064004C004F005200
      6F0077007300440042005400610062006C006500560069006500770031004900
      4E00430048005F0057004900440054004800010049004E00430048005F005700
      49004400540048000100010001000D000A00500061006E0065006C0033000100
      500061006E0065006C0033000100010001000D000A00630078004C0061006200
      65006C0031003200010049006E006D00610074006E0069006E00670073006100
      6C007400650072006E0061007400690076000100010001000D000A0063006200
      43006F007000790050006300730001004B006F00700069006500720061002000
      73007400790063006B006500740061006C000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      43007500730074006F006D00200031000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001004300
      7500730074006F006D00200032000100010001000D000A006C00620046006900
      6C006C0049006E0050006B0067004E006F00730001004800E4006D0074006100
      200050006B0074004E0072000100010001000D000A0062006200460079006C00
      6C0054006F006D006D006100500061006B00650074006E007200010046007900
      6C006C00200061006C006C006100200074006F006D006D006100200070006100
      6B00650074006E0072000100010001000D000A0062006200480061006D007400
      610050006B0074004E0072004F00630068004C00610067006700550070007000
      500061006B006500740001004C00E40067006700200075007000700020007000
      61006B006500740020006D00650064002000700061006B00650074006E007200
      0100010001000D000A0061006300530065006100720063006800520075006E00
      4E006F0001005300F6006B0020006B00F60072006E0072000100010001000D00
      0A00610063004100640064005300700065006300690061006C004C0065006E00
      670074006800730001004C00E400670067002000740069006C006C0020007300
      700065006300690061006C006C00E4006E006700640065007200010001000100
      0D000A0061006300530061007600650001005300700061007200610020004600
      33000100010001000D000A0061006300520065006D006F007600650050006B00
      6700010054006100200062006F00720074002000700061006B00650074002000
      460035000100010001000D000A006100630050006B0067004E006F0053006500
      7200690065000100500061006B00650074006E00720020007300650072006900
      65000100010001000D000A006100630041006400640050006B00670001004C00
      E400670067002000740069006C006C002000700061006B006500740020004600
      32000100010001000D000A0061006300460069006C006C0045006D0070007400
      790050006B0067004E006F007300010061006300460069006C006C0045006D00
      70007400790050006B0067004E006F0073000100010001000D000A0061006300
      41006400640050006B0067007300570069007400680050006B0067004E006F00
      730001006100630041006400640050006B006700730057006900740068005000
      6B0067004E006F0073000100010001000D000A006100630043006C006F007300
      6500010053007400E4006E00670020004600310032000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A006C006200460069006C006C0049006E0050006B0067004E006F0073000100
      4800E4006D0074006100200050006B0074004E0072000100010001000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006D00740055007300650072005000
      72006F0070005600650072006B004E006F0001005600650072006B004E006F00
      0100010001000D000A006D0074005500730065007200500072006F0070004F00
      77006E00650072004E006F0001004F0077006E00650072004E006F0001000100
      01000D000A006D0074005500730065007200500072006F007000500049005000
      4E006F0001005000490050004E006F000100010001000D000A006D0074005500
      730065007200500072006F0070004C00490050004E006F0001004C0049005000
      4E006F000100010001000D000A006D0074005500730065007200500072006F00
      700049006E007000750074004F007000740069006F006E00010049006E007000
      750074004F007000740069006F006E000100010001000D000A006D0074005500
      730065007200500072006F00700052006500670050006F0069006E0074004E00
      6F00010052006500670050006F0069006E0074004E006F000100010001000D00
      0A006D0074005500730065007200500072006F00700043006F00700079005000
      63007300010043006F00700079005000630073000100010001000D000A006D00
      74005500730065007200500072006F007000520075006E004E006F0001005200
      75006E004E006F000100010001000D000A006D00740055007300650072005000
      72006F007000500072006F00640075006300650072004E006F00010050007200
      6F00640075006300650072004E006F000100010001000D000A006D0074005500
      730065007200500072006F0070004100750074006F0043006F006C0057006900
      64007400680001004100750074006F0043006F006C0057006900640074006800
      0100010001000D000A006D0074005500730065007200500072006F0070005200
      6500670044006100740065000100520065006700440061007400650001000100
      01000D000A006D0074005500730065007200500072006F007000530075007000
      70006C0069006500720043006F0064006500010053007500700070006C006900
      6500720043006F00640065000100010001000D000A006D007400550073006500
      7200500072006F0070004C0065006E006700740068004F007000740069006F00
      6E0001004C0065006E006700740068004F007000740069006F006E0001000100
      01000D000A006D0074005500730065007200500072006F0070004C0065006E00
      670074006800470072006F00750070004E006F0001004C0065006E0067007400
      6800470072006F00750070004E006F000100010001000D000A006D0074005500
      730065007200500072006F0070004E00650077004900740065006D0052006F00
      770001004E00650077004900740065006D0052006F0077000100010001000D00
      0A006D0074005500730065007200500072006F00700047007200610064006500
      5300740061006D0070004E006F00010047007200610064006500530074006100
      6D0070004E006F000100010001000D000A006D00740055007300650072005000
      72006F00700042006100720043006F00640065004E006F000100420061007200
      43006F00640065004E006F000100010001000D000A006D007400550073006500
      7200500072006F0070004C0065006E00670074006800470072006F0075007000
      01004C0065006E00670074006800470072006F00750070000100010001000D00
      0A006D0074005500730065007200500072006F0070004C00490050004E006100
      6D00650001004C00490050004E0061006D0065000100010001000D000A006D00
      74005500730065007200500072006F0070005000490050004E0041004D004500
      01005000490050004E0041004D0045000100010001000D000A006D0074005500
      730065007200500072006F00700052004500470050004F0049004E0054000100
      52004500470050004F0049004E0054000100010001000D000A006D0074005500
      730065007200500072006F007000500052004F00440055004300450052000100
      500052004F00440055004300450052000100010001000D000A006D0074005500
      730065007200500072006F0070004F0057004E004500520001004F0057004E00
      450052000100010001000D000A006D0074005500730065007200500072006F00
      70005600450052004B0001005600450052004B000100010001000D000A006D00
      74005500730065007200500072006F00700052006F006C006500540079007000
      6500010052006F006C00650054007900700065000100010001000D000A006D00
      74005500730065007200500072006F0070004700720061006400650073007400
      61006D0070000100470072006100640065007300740061006D00700001000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      63006F0064006500010042006100720063006F00640065000100010001000D00
      0A006D0074005500730065007200500072006F007000500072006F0064007500
      630074004400650073006300720069007000740069006F006E00010050007200
      6F0064007500630074004400650073006300720069007000740069006F006E00
      0100010001000D000A006D0074005500730065007200500072006F0070005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F000100010001000D000A006D0074005500730065007200500072006F00
      7000500072006F006400750063007400470072006F00750070004E006F000100
      500072006F006400750063007400470072006F00750070004E006F0001000100
      01000D000A006D0074005500730065007200500072006F007000530061006C00
      6500730052006500670069006F006E004E006F000100530061006C0065007300
      52006500670069006F006E004E006F000100010001000D000A006D0074005500
      730065007200500072006F00700056006F006C0075006D00650055006E006900
      74004E006F00010056006F006C0075006D00650055006E00690074004E006F00
      0100010001000D000A006D0074005500730065007200500072006F0070004C00
      65006E0067007400680046006F0072006D00610074004E006F0001004C006500
      6E0067007400680046006F0072006D00610074004E006F000100010001000D00
      0A006D0074005500730065007200500072006F00700046006F0072006D000100
      46006F0072006D000100010001000D000A006D00740055007300650072005000
      72006F0070005500730065007200490044000100550073006500720049004400
      0100010001000D000A006D0074005500730065007200500072006F0070004C00
      65006E0067007400680056006F006C0055006E00690074004E006F0001004C00
      65006E0067007400680056006F006C0055006E00690074004E006F0001000100
      01000D000A006D0074005500730065007200500072006F007000470072006F00
      750070004200790042006F0078000100470072006F0075007000420079004200
      6F0078000100010001000D000A006D0074005500730065007200500072006F00
      7000470072006F0075007000530075006D006D00610072007900010047007200
      6F0075007000530075006D006D006100720079000100010001000D000A006D00
      74005500730065007200500072006F00700054004F005F005000490050004E00
      41004D004500010054004F005F005000490050004E0041004D00450001000100
      01000D000A006D0074005500730065007200500072006F00700054004F005F00
      4C00490050004E0041004D004500010054004F005F004C00490050004E004100
      4D0045000100010001000D000A006D0074005500730065007200500072006F00
      70004100670065006E0074004E006F0001004100670065006E0074004E006F00
      0100010001000D000A006D0074005500730065007200500072006F0070004D00
      610072006B006500740052006500670069006F006E004E006F0001004D006100
      72006B006500740052006500670069006F006E004E006F000100010001000D00
      0A006D0074005500730065007200500072006F0070004F007200640065007200
      54007900700065004E006F0001004F0072006400650072005400790070006500
      4E006F000100010001000D000A006D0074005500730065007200500072006F00
      7000530074006100740075007300010053007400610074007500730001000100
      01000D000A006D0074005500730065007200500072006F007000460069006C00
      7400650072004F00720064006500720044006100740065000100460069006C00
      7400650072004F00720064006500720044006100740065000100010001000D00
      0A006D0074005500730065007200500072006F00700043006C00690065006E00
      74004E006F00010043006C00690065006E0074004E006F000100010001000D00
      0A006D0074005500730065007200500072006F007000530061006C0065007300
      50006500720073006F006E004E006F000100530061006C006500730050006500
      720073006F006E004E006F000100010001000D000A006D007400550073006500
      7200500072006F0070005600650072006B0053007500700070006C0069006500
      72004E006F0001005600650072006B0053007500700070006C00690065007200
      4E006F000100010001000D000A006D0074005500730065007200500072006F00
      70005600650072006B004B0075006E0064004E006F0001005600650072006B00
      4B0075006E0064004E006F000100010001000D000A006D007400550073006500
      7200500072006F0070004C004F004F0062006A00650063007400540079007000
      650001004C004F004F0062006A00650063007400540079007000650001000100
      01000D000A006D0074005500730065007200500072006F0070004C006F006100
      640069006E0067004C006F0063006100740069006F006E004E006F0001004C00
      6F006100640069006E0067004C006F0063006100740069006F006E004E006F00
      0100010001000D000A006D0074005500730065007200500072006F0070005300
      6800690070007000650072004E006F0001005300680069007000700065007200
      4E006F000100010001000D000A006D0074005500730065007200500072006F00
      700042006F006F006B0069006E00670054007900700065004E006F0001004200
      6F006F006B0069006E00670054007900700065004E006F000100010001000D00
      0A006D0074005500730065007200500072006F00700043007500730074006F00
      6D00650072004E006F00010043007500730074006F006D00650072004E006F00
      0100010001000D000A006D0074005500730065007200500072006F0070005300
      68006F007700500072006F0064007500630074000100530068006F0077005000
      72006F0064007500630074000100010001000D000A006D007400550073006500
      7200500072006F0070005300740061007200740050006500720069006F006400
      01005300740061007200740050006500720069006F0064000100010001000D00
      0A006D0074005500730065007200500072006F00700045006E00640050006500
      720069006F006400010045006E00640050006500720069006F00640001000100
      01000D000A006300640073005F0050004900500032005000490050004E004F00
      01005000490050004E004F000100010001000D000A006300640073005F005000
      4900500032005000490050004E0041004D00450001005000490050004E004100
      4D0045000100010001000D000A006300640073005F004C004900500032004C00
      490050004E006F0001004C00490050004E006F000100010001000D000A006300
      640073005F004C004900500032004C00490050004E0061006D00650001004C00
      490050004E0061006D0065000100010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      5000610063006B0061006700650045006E0074007200790001004D0053002000
      530061006E0073002000530065007200690066000100010001000D000A005300
      74006100740075007300420061007200310001005400610068006F006D006100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      7200310001005400610068006F006D0061000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      5400610068006F006D0061000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100540061006800
      6F006D0061000100010001000D000A0070006D00480061006D00740061005000
      6B0074004E00720001005400610068006F006D0061000100010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A00620063004C0065006E006700740068004F007000
      740069006F006E002E00500072006F0070006500720074006900650073002E00
      4900740065006D007300010022004C004F0020004C00E4006E00670064006500
      720022002C00220041004C004C00410020004C00E4006E006700640065007200
      22002C00220053005400440020004C00E4006E00670064006500720022002C00
      500072006F00640075006B0074006C00E4006E00670064006500720001000100
      01000D000A006300620049006E007000750074004F007000740069006F006E00
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      7300010053007400790063006B002F006C00E4006E00670064002C0022005400
      6F00740061006C0020004C00F60070006D00650074006500720022002C005300
      7400790063006B002F006D006500640065006C006C00E4006E00670064002C00
      41007200740069006B006C00610072000100010001000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900440053005F0030000100430061006E006E006F0074002000730077006900
      7400680020007700680065006E0020007000610063006B006100670065007300
      20006100720065002000700072006500730065006E0074002E00010001000100
      0D000A004900440053005F003100300001002000E40072002000720065007300
      6500720076006500720061007400200061007600200061006E007600E4006E00
      640061007200650020000100010001000D000A004900440053005F0031003100
      0100500061006B00650074006E007200200020000100010001000D000A004900
      440053005F003100320001002000650078006900730074006500720061007200
      200072006500640061006E002C00200061006E00670065002000650074007400
      200061006E006E006100740020006E0075006D006D0065007200010001000100
      0D000A004900440053005F00310033000100500061006B00650074002000E400
      7200200069006E0074006500200073007000610072006100640065002C002000
      760069006C006C002000640075002000730070006100720061003F0001000100
      01000D000A004900440053005F003100350001004800F6006700730074006100
      2000700061006B00650074006E0072002000740069006C006C00E50074006500
      74002000E400720020000100010001000D000A004900440053005F0031003600
      0100500061006B00650074006E0072002000660069006E006E00730020007200
      6500640061006E002C00200061006E0067006500200065007400740020006100
      6E006E00610074002E000100010001000D000A004900440053005F0031003700
      0100500061006B00650074006E0072002000660069006E006E00730020007200
      6500640061006E0020000100010001000D000A004900440053005F0031003800
      0100500061006B00650074006E0072002000E400720020007200650073006500
      720076006500720061007400200061007600200061006E007600E4006E006400
      61007200650020000100010001000D000A004900440053005F00310039000100
      4B0061006E00200069006E00740065002000620079007400610020006E00E400
      72002000700061006B0065007400720061006400650072002000720065006400
      61006E002000E4007200200069006E006C0061006700640061002E0001000100
      01000D000A004900440053005F00320030000100460069006E006E0073002000
      69006E00670065006E002000700061006B00650074006E007200200073006500
      72006900650020006600F600720020007600650072006B002000010001000100
      0D000A004900440053005F00320032000100460069006E006E00730020006900
      6E00670065006E002000700061006B00650074006E0072002000730065007200
      6900650020006600F600720020000100010001000D000A004900440053005F00
      3200330001004C00E4006E006700640020000100010001000D000A0049004400
      53005F003200340001002000660069006E006E00730020007200650064006100
      6E0020006900200074006100620065006C006C0065006E002E00010001000100
      0D000A004900440053005F0032003800010056006100720020007600E4006E00
      6C006900670020006F006300680020007600E4006C006A00200065006E002000
      6D00E4007400700075006E006B0074002E000100010001000D000A0049004400
      53005F0032003900010045006A002000740069006C006C00E500740065006E00
      20006C006100670065007200670072007500700070002E000100010001000D00
      0A004900440053005F0033003000010052006500670069007300740072006500
      720069006E006700730064006100740075006D0020006600E500720020006900
      6E007400650020007600610072006100200073007400F6007200720065002000
      E4006E00200061006B007400750065006C006C00740020006400610074007500
      6D000100010001000D000A004900440053005F00330031000100560069006C00
      6C002000640075002000730070006100720061002000700061006B0065007400
      20006D006F00740020006D00E4007400700075006E006B0074003A0020000100
      010001000D000A004900440053005F003300320001004C006100670065007200
      70006C006100740073003A0020000100010001000D000A004900440053005F00
      33003300010044006100740075006D003A0020000100010001000D000A004900
      440053005F003300350001002000680061007200200069006E00670061002000
      73007400790063006B006500740061006C000100010001000D000A0049004400
      53005F003300360001005200610064006E00720020000100010001000D000A00
      4900440053005F003300380001002000680061007200200069006E0067006500
      740020007600E4007200640065002000690020004C0050004D0020006B006F00
      6C0075006D006E0065006E000100010001000D000A004900440053005F003300
      39000100500061006B006500740020006B0075006E0064006500200069006E00
      7400650020007300700061007200610073002E002000560069006C006C002000
      6400750020006C00E4006700670061002000640065002000700061006B006500
      7400200073006F006D0020007300700061007200610064006500730020007400
      69006C006C0020006C0061007300740065006E003F000100010001000D000A00
      4900440053005F0034000100560061007200750073006C006100670001000100
      01000D000A004900440053005F0034003000010045006E002000640065006C00
      2000700061006B006500740020006B0075006E0064006500200069006E007400
      650020007300700061007200610073002E002000560069006C006C0020006400
      750020006C00E4006700670061002000640065002000700061006B0065007400
      200073006F006D00200073007000610072006100640065007300200074006900
      6C006C0020006C0061007300740065006E003F000100010001000D000A004900
      440053005F003400320001005600E4006C006A00200065007400740020006C00
      610067006500720020000100010001000D000A004900440053005F0034003300
      01004B0061006E00200069006E00740065002000730070006100720061002C00
      200069006E00670065006E0020006D00E4007400700075006E006B0074002000
      760061006C0064000100010001000D000A004900440053005F00340034000100
      4C00E400670067002000740069006C006C002000650074007400200070006100
      6B006500740020006600F6007200730074000100010001000D000A0049004400
      53005F003400350001002000700061006B00650074006E007200200076006100
      720020007500700070007400610067006E0061002C002000760069006C006C00
      20006400750020006800E4006D00740061002000700061006B00650074006E00
      720020006900670065006E003F000100010001000D000A004900440053005F00
      350001004C006F006100640069006E006700200061006C006C0020006C006500
      6E0067007400680073002E002E002E000100010001000D000A00490044005300
      5F00370001002000700061006B006500740020006B006F006D006D0065007200
      200061007400740020006C00E400670067006100730020007500700070002C00
      2000E4007200200064006500740020006F006B003F000100010001000D000A00
      4900440053005F0038000100500061006B00650074006E007200200066006900
      6E006E007300200072006500640061006E002C00200061006E00670065002000
      650074007400200061006E006E006100740020000100010001000D000A004900
      440053005F0039000100500061006B00650074006E0072002000010001000100
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00620063004C0065006E006700
      740068004F007000740069006F006E002E00540065007800740001004C004F00
      20004C00E4006E0067006400650072000100010001000D000A00630062004900
      6E007000750074004F007000740069006F006E002E0054006500780074000100
      53007400790063006B002F006C00E4006E00670064000100010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A006700720064005000610063006B0061006700
      6500730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E000100500041004B00450054004E0052002F0050005200
      4F00440055004B0054000100010001000D000A00670072006400500061006300
      6B00610067006500730044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0031005D00
      2E00430061007000740069006F006E00010056004F004C0059004D0001000100
      01000D000A006700720064005000610063006B00610067006500730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0032005D002E00430061007000740069006F00
      6E0001004C00C4004E0047004400450052000100010001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A005400660072006D005000610063006B0061006700650045006E007400
      720079000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00530074006100740075007300420061007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720031000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A0070006D00480061006D007400610050006B0074004E007200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100010001000D000A00}
  end
end
