object frmPkgEntry: TfrmPkgEntry
  Left = 229
  Top = 109
  Caption = 'Registrera paket'
  ClientHeight = 685
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 214
    Width = 1120
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object grdPackages: TcxGrid
      Left = 0
      Top = 27
      Width = 1120
      Height = 444
      Align = alClient
      PopupMenu = pmPkgTable
      TabOrder = 0
      object grdPackagesDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = pmPkgTable
        OnKeyDown = grdPackagesDBBandedTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditing = grdPackagesDBBandedTableView1Editing
        OnEditKeyDown = grdPackagesDBBandedTableView1EditKeyDown
        DataController.DataSource = dsmtPackages
        DataController.KeyFieldNames = 'RecId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = grdPackagesDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Caption = 'PAKETID'
            FixedKind = fkLeft
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 173
          end
          item
            Caption = 'VOLYM'
            Width = 295
          end
          item
            Caption = 'L'#196'NGDER'
            Width = 575
          end>
      end
      object grdPackagesLevel1: TcxGridLevel
        GridView = grdPackagesDBBandedTableView1
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1120
      Height = 27
      Align = alTop
      TabOrder = 1
      object cxLabel9: TcxLabel
        Left = 447
        Top = 7
        Caption = 'L'#228'ngdgrupp:'
        ParentFont = False
      end
      object lcLengthGroup: TcxDBLookupComboBox
        Left = 521
        Top = 2
        DataBinding.DataField = 'LengthGroup'
        DataBinding.DataSource = dsUserProp
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        Properties.MaxLength = 0
        Properties.OnChange = lcLengthGroupPropertiesChange
        TabOrder = 0
        Width = 154
      end
      object cbDB_CopyPcs: TcxDBCheckBox
        Left = 678
        Top = 4
        Caption = 'Kopiera stycketal'
        DataBinding.DataField = 'CopyPcs'
        DataBinding.DataSource = dsUserProp
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 1
      end
      object cdAutoColWidth: TcxDBCheckBox
        Left = 790
        Top = 4
        Caption = 'Auto. kol.bredd'
        DataBinding.DataField = 'AutoColWidth'
        DataBinding.DataSource = dsUserProp
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cdAutoColWidthPropertiesChange
        TabOrder = 2
      end
      object cbNewItemRow: TcxDBCheckBox
        Left = 904
        Top = 3
        Caption = 'Inmatningsrad'
        DataBinding.DataField = 'NewItemRow'
        DataBinding.DataSource = dsUserProp
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cbNewItemRowPropertiesChange
        TabOrder = 3
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 440
        Height = 25
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 440
          Height = 22
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 1120
    Height = 150
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 17
      Top = 7
      Width = 31
      Height = 13
      Caption = #196'gare:'
    end
    object Label2: TLabel
      Left = 991
      Top = 16
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Verk:'
      Visible = False
    end
    object Label3: TLabel
      Left = 17
      Top = 31
      Width = 54
      Height = 13
      Caption = 'Lagerst'#228'lle:'
    end
    object Label4: TLabel
      Left = 17
      Top = 55
      Width = 57
      Height = 13
      Caption = 'Lagergrupp:'
    end
    object Label5: TLabel
      Left = 280
      Top = 79
      Width = 57
      Height = 13
      Caption = 'Registrerad:'
    end
    object Label6: TLabel
      Left = 280
      Top = 34
      Width = 48
      Height = 13
      Caption = 'M'#228'tpunkt:'
    end
    object Label7: TLabel
      Left = 554
      Top = 10
      Width = 65
      Height = 13
      Caption = 'Inmatningsalt:'
    end
    object Label8: TLabel
      Left = 825
      Top = 31
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'K'#246'rnummer:'
      Visible = False
    end
    object Label9: TLabel
      Left = 554
      Top = 34
      Width = 74
      Height = 13
      Caption = 'Kvalitetst'#228'mpel:'
    end
    object Label10: TLabel
      Left = 554
      Top = 58
      Width = 52
      Height = 13
      Caption = 'Streckkod:'
    end
    object Label11: TLabel
      Left = 19
      Top = 106
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Produkt:'
    end
    object Label12: TLabel
      Left = 280
      Top = 55
      Width = 38
      Height = 13
      Caption = 'Skiftlag:'
    end
    object BitBtn1: TBitBtn
      Left = 904
      Top = 50
      Width = 65
      Height = 22
      Action = acSearchRunNo
      Caption = 'S'#246'k k'#246'rnr'
      TabOrder = 19
      Visible = False
    end
    object lcOwner: TcxDBLookupComboBox
      Left = 80
      Top = 2
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 169
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 992
      Top = 32
      DataBinding.DataField = 'VERK'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.ListColumns = <>
      Properties.MaxLength = 0
      TabOrder = 13
      Visible = False
      Width = 81
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 80
      Top = 26
      DataBinding.DataField = 'PIPNAME'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 169
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 80
      Top = 50
      DataBinding.DataField = 'LIPName'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 2
      Width = 169
    end
    object lcRegPoint: TcxDBLookupComboBox
      Left = 360
      Top = 26
      DataBinding.DataField = 'REGPOINT'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 4
      Width = 169
    end
    object icInputOption: TcxDBImageComboBox
      Left = 672
      Top = 2
      DataBinding.DataField = 'InputOption'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Ange stycketal / l'#228'ngd'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Ange total l'#246'pmeter'
          Value = 1
        end
        item
          Description = 'Ange medell'#228'ngd och stycketal'
          Value = 2
        end
        item
          Description = 'Ange M3'
          Value = 3
        end
        item
          Description = 'Ange M3 och l'#228'ngd'
          Value = 4
        end
        item
          Description = 'Ange antal ramar'
          Value = '5'
        end>
      Properties.OnChange = icInputOptionPropertiesChange
      TabOrder = 7
      Width = 145
    end
    object deRegDate: TcxDBDateEdit
      Left = 360
      Top = 71
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      TabOrder = 6
      Width = 169
    end
    object seRunNo: TcxDBSpinEdit
      Left = 824
      Top = 50
      DataBinding.DataField = 'RunNo'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.ImmediatePost = True
      TabOrder = 15
      Visible = False
      Width = 73
    end
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 360
      Top = 2
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 169
    end
    object cxLabel6: TcxLabel
      Left = 279
      Top = 6
      Caption = 'Producent:'
      ParentFont = False
    end
    object teSupplierCode: TcxDBTextEdit
      Left = 672
      Top = 72
      DataBinding.DataField = 'SupplierCode'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      TabOrder = 10
      Width = 41
    end
    object cxLabel7: TcxLabel
      Left = 553
      Top = 78
      Caption = 'Prefix:'
      ParentFont = False
    end
    object icLengthOption: TcxDBImageComboBox
      Left = 992
      Top = 64
      DataBinding.DataField = 'LengthOption'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Produktspecifika'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'L'#228'ngdgrupp'
          Value = 1
        end>
      Properties.OnChange = icLengthOptionPropertiesChange
      TabOrder = 12
      Visible = False
      Width = 81
    end
    object cxLabel8: TcxLabel
      Left = 976
      Top = 90
      Caption = 'L'#228'ngd alt:'
      ParentFont = False
      Visible = False
    end
    object beProductDescription: TcxDBButtonEdit
      Left = 80
      Top = 98
      DataBinding.DataField = 'ProductDescription'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.Buttons = <
        item
          Caption = 'V'#228'lj produkt'
          Default = True
          Kind = bkText
        end
        item
          Caption = 'Rensa'
          Kind = bkText
        end>
      Properties.MaxLength = 0
      Properties.OnButtonClick = beProductDescriptionPropertiesButtonClick
      TabOrder = 11
      Width = 417
    end
    object lcBarcode: TcxDBLookupComboBox
      Left = 672
      Top = 50
      DataBinding.DataField = 'Barcode'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 9
      Width = 145
    end
    object lcGradestamp: TcxDBLookupComboBox
      Left = 672
      Top = 26
      DataBinding.DataField = 'Gradestamp'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 8
      Width = 145
    end
    object cbSaveToProduktionLogg: TcxDBCheckBox
      Left = 80
      Top = 120
      Caption = 'Spara till produktionslogg'
      DataBinding.DataField = 'AgentNo'
      DataBinding.DataSource = dsUserProp
      ParentColor = False
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -15
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 14
    end
    object cxLabel1: TcxLabel
      Left = 553
      Top = 102
      Caption = 'Standard pris/NM3:'
      ParentFont = False
    end
    object meStdPris: TcxDBMaskEdit
      Left = 672
      Top = 94
      DataBinding.DataField = 'Pris'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      TabOrder = 21
      Width = 65
    end
    object lcSkiftLag: TcxDBLookupComboBox
      Left = 360
      Top = 49
      DataBinding.DataField = 'SkiftLag'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ShiftTeamNo'
      Properties.ListColumns = <
        item
          FieldName = 'ShiftTeamName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 5
      Width = 169
    end
    object lcPackage_Size: TcxDBLookupComboBox
      Left = 672
      Top = 117
      DataBinding.DataField = 'Package_Size'
      DataBinding.DataSource = dsUserProp
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      TabOrder = 22
      Width = 145
    end
    object cxLabel2: TcxLabel
      Left = 554
      Top = 122
      Caption = 'Paketstorlek:'
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 64
    Align = alTop
    TabOrder = 2
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 568
      Height = 62
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 566
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel7: TPanel
      Left = 1050
      Top = 1
      Width = 69
      Height = 62
      Align = alRight
      TabOrder = 1
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 67
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel8: TPanel
      Left = 569
      Top = 1
      Width = 481
      Height = 62
      Align = alClient
      TabOrder = 2
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Product'
      'Paket')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <
      item
        PopupMenu = pmProducts
      end
      item
        PopupMenu = pmPackages
      end>
    UseSystemFont = False
    Left = 504
    Top = 480
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 458
      FloatTop = 284
      FloatClientWidth = 73
      FloatClientHeight = 182
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSavePkgs'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoInt'
        end
        item
          Visible = True
          ItemName = 'lbSelectProduct'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
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
      Caption = 'Paket'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OldName = 'Paket'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
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
      FloatLeft = 179
      FloatTop = 109
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbCloseForm'
        end>
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
      Hint = 'L'#228'gg till paket F2 |'
    end
    object lbRemovePkg: TdxBarLargeButton
      Action = acRemoveRow
      Category = 0
      Hint = 'Ta bort rad |'
    end
    object lbSavePkgs: TdxBarLargeButton
      Action = acSavePkgs
      Category = 0
    end
    object lbCloseForm: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object lbPkgNoInt: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object lbSelectProduct: TdxBarLargeButton
      Action = acValjProdukt
      Category = 0
    end
    object bbRemoveAllPkgs: TdxBarButton
      Action = acDeleteAllRows
      Category = 0
      Hint = #197'ngra alla rader |'
    end
    object lbSaveToInven: TdxBarLargeButton
      Caption = 'Spara'
      Category = 0
      Hint = 'Spara'
      Visible = ivNever
      LargeImageIndex = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acInmatningsrad
      Category = 0
    end
    object bbAddProduct: TdxBarButton
      Action = acValjProdukt
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acAddPkg
      Category = 2
      Hint = 'L'#228'gg till paket F2 |'
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6B73FFFF3131
        B5FF3131BDFF3131BDFF3131BDFF3131C6FF3131C6FF3131BDFF3131BDFF3131
        B5FF3131B5FF3131ADFF3131A5FF6363FFFFFFFFFFFFFFFFFFFF3131C6FF3131
        DEFF3131EFFF3131F7FF3131F7FF3131EFFF3131F7FF3131EFFF3131EFFF3131
        EFFF3131E7FF3131DEFF3131C6FF31319CFFFFFFFFFFFFFFFFFF3131D6FF3131
        EFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139
        FFFF3139FFFF3131E7FF3131CEFF3131ADFFFFFFFFFFFFFFFFFF3131E7FF3139
        FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3139FFFF3131F7FF3131DEFF3131B5FFFFFFFFFFFFFFFFFF3131EFFF3139
        FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3139FFFF3139FFFF3131E7FF3131BDFFFFFFFFFFFFFFFFFF3139FFFF3139
        FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3139FFFF3139FFFF3131EFFF3131C6FFFFFFFFFFFFFFFFFF3139FFFF3139
        FFFF848CFFFF848CFFFF848CFFFF848CFFFFFFFFFFFF848CFFFF848CFFFF848C
        FFFF848CFFFF3131F7FF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF3139
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF3942
        FFFF3942FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3131F7FF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF5252
        FFFF5252FFFF3942FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3131F7FF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3942FFFF6B6B
        FFFF6363FFFF424AFFFF3942FFFF3942FFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3139FFFF3131F7FF3131F7FF3131CEFFFFFFFFFFFFFFFFFF5252FFFF848C
        FFFF6B6BFFFF5252FFFF4A4AFFFF424AFFFFFFFFFFFF848CFFFF3139FFFF3139
        FFFF3139FFFF3139FFFF3131F7FF3131CEFFFFFFFFFFFFFFFFFF6363FFFF9C9C
        FFFF848CFFFF6B6BFFFF6363FFFF5252FFFF4A4AFFFF424AFFFF3942FFFF3139
        FFFF3139FFFF3139FFFF3131F7FF3131BDFFFFFFFFFFFFFFFFFFC6CEFFFF6363
        FFFF4A4AFFFF3942FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139
        FFFF3139FFFF3131F7FF3131DEFF7B84FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton3: TdxBarButton
      Action = acRemoveRow
      Category = 2
      Hint = 'Ta bort rad |'
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF52ADFFFF1852
        94FF185A9CFF185A9CFF185A9CFF185AA5FF185AA5FF185A9CFF185A9CFF1852
        94FF185294FF18528CFF184A84FF4AADFFFFFFFFFFFFFFFFFFFF185AA5FF186B
        BDFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873
        CEFF186BC6FF186BBDFF185AA5FF104A7BFFFFFFFFFFFFFFFFFF1863ADFF1873
        CEFF187BDEFF187BDEFF187BE7FF1884E7FF188CF7FF188CF7FF188CF7FF188C
        F7FF187BDEFF186BC6FF1863ADFF18528CFFFFFFFFFFFFFFFFFF186BC6FF187B
        DEFF1884EFFFFFFFFFFF84C6FFFF188CF7FF188CF7FF188CF7FF188CF7FF84C6
        FFFFFFFFFFFF1873CEFF186BBDFF185294FFFFFFFFFFFFFFFFFF1873CEFF1884
        E7FF188CF7FF188CFFFFFFFFFFFF84C6FFFF188CF7FF188CF7FF84C6FFFFFFFF
        FFFF1884E7FF1873D6FF186BC6FF185A9CFFFFFFFFFFFFFFFFFF187BDEFF188C
        F7FF188CFFFF188CF7FF188CF7FFFFFFFFFF84C6FFFF84C6FFFFFFFFFFFF188C
        F7FF1884E7FF1873D6FF1873CEFF185AA5FFFFFFFFFFFFFFFFFF1884E7FF188C
        FFFF188CF7FF188CF7FF188CF7FF188CF7FFFFFFFFFF84C6FFFF188CF7FF1884
        EFFF187BDEFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF1884EFFF188C
        FFFF188CFFFF188CF7FF188CF7FF84C6FFFFFFFFFFFFFFFFFFFF84C6FFFF1884
        E7FF1873D6FF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF188CFFFF2194
        FFFF2194FFFF188CFFFF84C6FFFFFFFFFFFF1884F7FF1884EFFFFFFFFFFF84C6
        FFFF1873CEFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF188CFFFF39A5
        FFFF39A5FFFF84C6FFFFFFFFFFFF188CFFFF188CFFFF1884EFFF1884E7FFFFFF
        FFFF84C6FFFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF2194FFFF52AD
        FFFF4AADFFFFFFFFFFFF2194FFFF2194FFFF1894FFFF188CF7FF1884EFFF1884
        E7FFFFFFFFFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF39A5FFFF6BBD
        FFFF52ADFFFF39A5FFFF319CFFFF299CFFFF299CFFFF2194FFFF188CFFFF1884
        F7FF1884EFFF187BDEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF4AADFFFF84C6
        FFFF6BBDFFFF52ADFFFF4AADFFFF39A5FFFF319CFFFF299CFFFF2194FFFF1894
        FFFF188CF7FF1884EFFF1873CEFF185A9CFFFFFFFFFFFFFFFFFFADDEFFFF4AAD
        FFFF319CFFFF2194FFFF188CFFFF188CFFFF188CF7FF188CF7FF1884EFFF1884
        E7FF187BDEFF1873CEFF186BBDFF63B5FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = acDeleteAllRows
      Category = 2
      Hint = #197'ngra alla rader |'
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF52ADFFFF1852
        94FF185A9CFF185A9CFF185A9CFF185AA5FF185AA5FF185A9CFF185A9CFF1852
        94FF185294FF18528CFF184A84FF4AADFFFFFFFFFFFFFFFFFFFF185AA5FF186B
        BDFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873CEFF1873
        CEFF186BC6FF186BBDFF185AA5FF104A7BFFFFFFFFFFFFFFFFFF1863ADFF1873
        CEFF187BDEFF187BDEFF187BE7FF1884E7FF188CF7FF188CF7FF188CF7FF188C
        F7FF187BDEFF186BC6FF1863ADFF18528CFFFFFFFFFFFFFFFFFF186BC6FF187B
        DEFF1884EFFFFFFFFFFF84C6FFFF188CF7FF188CF7FF188CF7FF188CF7FF84C6
        FFFFFFFFFFFF1873CEFF186BBDFF185294FFFFFFFFFFFFFFFFFF1873CEFF1884
        E7FF188CF7FF188CFFFFFFFFFFFF84C6FFFF188CF7FF188CF7FF84C6FFFFFFFF
        FFFF1884E7FF1873D6FF186BC6FF185A9CFFFFFFFFFFFFFFFFFF187BDEFF188C
        F7FF188CFFFF188CF7FF188CF7FFFFFFFFFF84C6FFFF84C6FFFFFFFFFFFF188C
        F7FF1884E7FF1873D6FF1873CEFF185AA5FFFFFFFFFFFFFFFFFF1884E7FF188C
        FFFF188CF7FF188CF7FF188CF7FF188CF7FFFFFFFFFF84C6FFFF188CF7FF1884
        EFFF187BDEFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF1884EFFF188C
        FFFF188CFFFF188CF7FF188CF7FF84C6FFFFFFFFFFFFFFFFFFFF84C6FFFF1884
        E7FF1873D6FF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF188CFFFF2194
        FFFF2194FFFF188CFFFF84C6FFFFFFFFFFFF1884F7FF1884EFFFFFFFFFFF84C6
        FFFF1873CEFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF188CFFFF39A5
        FFFF39A5FFFF84C6FFFFFFFFFFFF188CFFFF188CFFFF1884EFFF1884E7FFFFFF
        FFFF84C6FFFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF2194FFFF52AD
        FFFF4AADFFFFFFFFFFFF2194FFFF2194FFFF1894FFFF188CF7FF1884EFFF1884
        E7FFFFFFFFFF1873CEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF39A5FFFF6BBD
        FFFF52ADFFFF39A5FFFF319CFFFF299CFFFF299CFFFF2194FFFF188CFFFF1884
        F7FF1884EFFF187BDEFF1873CEFF1863ADFFFFFFFFFFFFFFFFFF4AADFFFF84C6
        FFFF6BBDFFFF52ADFFFF4AADFFFF39A5FFFF319CFFFF299CFFFF2194FFFF1894
        FFFF188CF7FF1884EFFF1873CEFF185A9CFFFFFFFFFFFFFFFFFFADDEFFFF4AAD
        FFFF319CFFFF2194FFFF188CFFFF188CFFFF188CF7FF188CF7FF1884EFFF1884
        E7FF187BDEFF1873CEFF186BBDFF63B5FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = acAddLengthColumn
      Category = 2
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFFFFF
        FFFFFFFFFFFFFFF7E7FFEF9C21FFFF00FFFFFF00FFFFFF00FFFFEF9C21FFF7A5
        5AFFF7A55AFFF7A55AFFEF9C21FFFF00FFFF008C08FFFF00FFFFEF9C21FFF7A5
        5AFFF7A55AFFF7A55AFFEF9C21FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF008C08FF008C08FF007308FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF008C08FF008C08FF007308FF007308FF007308FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF007308FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF007308FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF10F7FFFF10F7FFFF10F7FFFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF10F7FFFF10F7FFFF10F7FFFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF10F7FFFF10F7FFFF10F7FFFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF10F7FFFF10F7FFFF10F7FFFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF0063CEFF10F7FFFF10F7FFFF10F7FFFF0063CEFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = acPkgInfo
      Category = 2
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 608
    Top = 480
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
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
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
      FD00FFD6A500CE6300000000000000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE630000000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FFFFFFFFFF000000FFFFF1C00003FFFFFF000000C7FFE3C00003F07FFF000000
      C3FF87C00003E007FF000000C1FF0FC00003C0007F000000E0FE1FC000038000
      07000000F07C3FC00003800001000000FC307FC00003800001000000FE00FFC0
      0003800001000000FF01FFC00003800001000000FF83FFC00003800001000000
      FF01FFC00003800001000000FE00FFC00003800001000000FC187FC000038000
      01000000F83C3FC00003800001000000F07F1FC00003C00003000000E0FF8FC0
      0003F80007000000C1FFEFC00003FF800F00000083FFFFC00003FFFC1F000000
      87FFFFE00007FFFFFF0000008FFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
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
  object pmProducts: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbAddProduct'
      end>
    UseOwnFont = False
    Left = 624
    Top = 376
    PixelsPerInch = 96
  end
  object pmPackages: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbAddPkg'
      end
      item
        Visible = True
        ItemName = 'lbRemovePkg'
      end
      item
        Visible = True
        ItemName = 'bbRemoveAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 200
    Top = 360
    PixelsPerInch = 96
  end
  object dsmtPackages: TDataSource
    DataSet = dmsPkg.mtPackages
    OnDataChange = dsmtPackagesDataChange
    Left = 88
    Top = 352
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 504
    Top = 378
    object acAddPkg: TAction
      Caption = 'L'#228'gg till paket F2 |'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddPkgExecute
      OnUpdate = acAddPkgUpdate
    end
    object acRensaProdukt: TAction
      Caption = 'Rensa produkt'
    end
    object acPktNrSerie: TAction
      Caption = 'Pktnr serie'
      ImageIndex = 5
      OnExecute = acPktNrSerieExecute
      OnUpdate = acPktNrSerieUpdate
    end
    object acRemoveRow: TAction
      Caption = #197'ngra rad |'
      ImageIndex = 4
      OnExecute = acRemoveRowExecute
      OnUpdate = acRemoveRowUpdate
    end
    object acValjProdukt: TAction
      Caption = 'V'#228'lj produkt F10'
      ImageIndex = 6
      ShortCut = 121
      OnExecute = acValjProduktExecute
    end
    object acAddLengthColumn: TAction
      Caption = 'L'#228'gg till speciall'#228'ngd'
      OnExecute = acAddLengthColumnExecute
      OnUpdate = acAddLengthColumnUpdate
    end
    object acSearchRunNo: TAction
      Caption = 'S'#246'k k'#246'rnr'
      OnExecute = acSearchRunNoExecute
    end
    object acDeleteAllRows: TAction
      Caption = #197'ngra alla rader |'
      OnExecute = acDeleteAllRowsExecute
      OnUpdate = acDeleteAllRowsUpdate
    end
    object acInmatningsrad: TAction
      Caption = 'Inmatningsrad'
      OnExecute = acInmatningsradExecute
    end
    object acSavePkgs: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSavePkgsExecute
      OnUpdate = acSavePkgsUpdate
    end
    object acExit: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    Left = 80
    Top = 490
  end
  object dsUserProp: TDataSource
    DataSet = dmsPkg.mtUserProp
    Left = 88
    Top = 416
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPackages
    PopupMenus = <
      item
        GridView = grdPackagesDBBandedTableView1
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPackages
      end>
    Left = 288
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 288
    Top = 363
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 288
    Top = 419
    PixelsPerInch = 96
    object cxStyleAlreadyExist: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleFailedToSave: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object pmPkgTable: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 288
    Top = 483
    PixelsPerInch = 96
  end
  object siLangLinked_frmPkgEntry: TsiLangLinked
    Version = '7.9.0.1'
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
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
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
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 552
    Top = 304
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0050006B00670045006E00740072007900
      010052006500670069007300740072006500720061002000700061006B006500
      7400010052006500670069007300740072006500720061002000700061006B00
      650074000D000A00500061006E0065006C0031000100500061006E0065006C00
      310001000D000A00630078004C006100620065006C00390001004C00E4006E00
      67006400670072007500700070003A0001000D000A0063006200440042005F00
      43006F007000790050006300730001004B006F00700069006500720061002000
      73007400790063006B006500740061006C0001000D000A006300640041007500
      74006F0043006F006C005700690064007400680001004100750074006F002E00
      20006B006F006C002E006200720065006400640001000D000A00630062004E00
      650077004900740065006D0052006F007700010049006E006D00610074006E00
      69006E006700730072006100640001000D000A004C006100620065006C003100
      0100C40067006100720065003A0001000D000A004C006100620065006C003200
      01005600650072006B003A0001000D000A004C006100620065006C0033000100
      4C00610067006500720073007400E4006C006C0065003A0001000D000A004C00
      6100620065006C00340001004C00610067006500720067007200750070007000
      3A0001000D000A004C006100620065006C003500010052006500670069007300
      7400720065007200610064003A0001000D000A004C006100620065006C003600
      01004D00E4007400700075006E006B0074003A0001000D000A004C0061006200
      65006C003700010049006E006D00610074006E0069006E006700730061006C00
      74003A0001000D000A004C006100620065006C00380001004B00F60072006E00
      75006D006D00650072003A0001000D000A004C006100620065006C0039000100
      4B00760061006C00690074006500740073007400E4006D00700065006C003A00
      01000D000A004C006100620065006C0031003000010053007400720065006300
      6B006B006F0064003A0001000D000A004C006100620065006C00310031000100
      500072006F00640075006B0074003A0001000D000A004C006100620065006C00
      31003200010053006B006900660074006C00610067003A0001000D000A006300
      78004C006100620065006C0036000100500072006F0064007500630065006E00
      74003A0001000D000A00630078004C006100620065006C003700010050007200
      65006600690078003A0001000D000A00630078004C006100620065006C003800
      01004C00E4006E0067006400200061006C0074003A0001000D000A0063006200
      530061007600650054006F00500072006F00640075006B00740069006F006E00
      4C006F00670067000100530070006100720061002000740069006C006C002000
      700072006F00640075006B00740069006F006E0073006C006F00670067000100
      0D000A00630078004C006100620065006C00310001005300740061006E006400
      610072006400200070007200690073002F004E004D0033003A0001000D000A00
      630078004C006100620065006C0032000100500061006B006500740073007400
      6F0072006C0065006B003A0001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D002000310001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720032000100500061006B006500740001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      3300010043007500730074006F006D002000320001000D000A006C0062005300
      61007600650054006F0049006E00760065006E00010053007000610072006100
      01000D000A006100630041006400640050006B00670001004C00E40067006700
      2000740069006C006C002000700061006B006500740020004600320020007C00
      01000D000A0061006300520065006E0073006100500072006F00640075006B00
      74000100520065006E00730061002000700072006F00640075006B0074000100
      0D000A006100630050006B0074004E0072005300650072006900650001005000
      6B0074006E00720020007300650072006900650001000D000A00610063005200
      65006D006F007600650052006F0077000100C5006E0067007200610020007200
      6100640020007C0001000D000A0061006300560061006C006A00500072006F00
      640075006B00740001005600E4006C006A002000700072006F00640075006B00
      7400200046003100300001000D000A00610063004100640064004C0065006E00
      67007400680043006F006C0075006D006E0001004C00E4006700670020007400
      69006C006C0020007300700065006300690061006C006C00E4006E0067006400
      01000D000A0061006300530065006100720063006800520075006E004E006F00
      01005300F6006B0020006B00F60072006E00720001000D000A00610063004400
      65006C0065007400650041006C006C0052006F00770073000100C5006E006700
      72006100200061006C006C00610020007200610064006500720020007C000100
      0D000A006100630049006E006D00610074006E0069006E006700730072006100
      6400010049006E006D00610074006E0069006E00670073007200610064000100
      0D000A0061006300530061007600650050006B00670073000100530070006100
      7200610020004600330001000D000A0061006300450078006900740001005300
      7400E4006E006700200046003100320001000D000A006100630050006B006700
      49006E0066006F000100500061006B006500740069006E0066006F0072006D00
      6100740069006F006E0001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A006C00620041006400640050006B00
      670001004C00E400670067002000740069006C006C002000700061006B006500
      740020004600320020007C0001000D000A006C006200520065006D006F007600
      650050006B006700010054006100200062006F00720074002000720061006400
      20007C0001000D000A0062006200520065006D006F007600650041006C006C00
      50006B00670073000100C5006E00670072006100200061006C006C0061002000
      7200610064006500720020007C0001000D000A006C0062005300610076006500
      54006F0049006E00760065006E0001005300700061007200610001000D000A00
      6400780042006100720042007500740074006F006E00320001004C00E4006700
      67002000740069006C006C002000700061006B00650074002000460032002000
      7C0001000D000A006400780042006100720042007500740074006F006E003300
      010054006100200062006F0072007400200072006100640020007C0001000D00
      0A006400780042006100720042007500740074006F006E0034000100C5006E00
      670072006100200061006C006C00610020007200610064006500720020007C00
      01000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D0050006B00670045006E0074007200790001004D0053002000530061006E00
      730020005300650072006900660001004D0053002000530061006E0073002000
      530065007200690066000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F00650020005500490001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      310001005300650067006F00650020005500490001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001005300
      650067006F00650020005500490001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200330001005300650067006F00
      650020005500490001000D000A0070006D00500072006F006400750063007400
      730001005300650067006F00650020005500490001000D000A0070006D005000
      610063006B00610067006500730001005300650067006F006500200055004900
      01000D000A00630078005300740079006C00650041006C007200650061006400
      79004500780069007300740001005400610068006F006D00610001000D000A00
      630078005300740079006C0065004600610069006C006500640054006F005300
      61007600650001005400610068006F006D00610001000D000A0070006D005000
      6B0067005400610062006C00650001005300650067006F006500200055004900
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A004900440053005F00
      3100300030000100C40067006100720065003A0001000100010001000D000A00
      4900440053005F0031003000310001004C00610067006500720070006C006100
      740073003A00200001000100010001000D000A004900440053005F0031003000
      3200010044006100740075006D003A00200001000100010001000D000A004900
      440053005F0031003000370001004F0042005300210020005300500041005200
      41005200200049004E00540045002000540049004C004C002000500052004F00
      440055004B00540049004F004E0053004C004F004700470045004E0001000100
      010001000D000A004900440053005F0031003000390001002000730061006B00
      6E0061007200200073007400790063006B006500740061006C00010001000100
      01000D000A004900440053005F0031003100300001005200610064006E007200
      200001000100010001000D000A004900440053005F0031003100310001002000
      730061006B006E00610072002000700061006B00650074006E00720001000100
      010001000D000A004900440053005F0031003100330001002000730061006B00
      6E006100720020006C00F60070006D0065007400650072000100010001000100
      0D000A004900440053005F00310031003400010047007200F6006E0061002000
      720061006400650072002000E40072002000700061006B00650074006E007200
      2F0070007200650069007800200073006F006D00200072006500640061006E00
      2000660069006E006E0073002000690020006400610074006100620061007300
      65006E002C0020007200F600640061002000720061006400650072002000E400
      72002000700061006B0065007400200073006F006D00200069006E0074006500
      20006B0075006E00640065002000730070006100720061007300200028006B00
      6F006E00740061006B0074006100200073007500700070006F00720074002900
      01000100010001000D000A004900440053005F00310031003500010050006100
      6B00650074002000730070006100720061006400650020004F004B002C002000
      760069006C006C00200064007500200073007400E4006E00670061003F000100
      0100010001000D000A004900440053005F003100310036000100440065002000
      700061006B0065007400200073006F006D002000660069006E006E0073002000
      6B007600610072002000690020006C0069007300740061006E0020006B007500
      6E0064006500200069006E007400650020007200650067006900730074007200
      65007200610073002E0001000100010001000D000A004900440053005F003100
      3100370001005600E4006C006A00200065007400740020006C00610067006500
      72002E0001000100010001000D000A004900440053005F003100310038000100
      49006E00670065006E0020006D00E4007400700075006E006B00740020007600
      61006C00640001000100010001000D000A004900440053005F00310032000100
      50006B0074006E00720001000100010001000D000A004900440053005F003100
      3500010050007200650066006900780001000100010001000D000A0049004400
      53005F0032003200010053007400790063006B0001000100010001000D000A00
      4900440053005F0032003500010041004D00330001000100010001000D000A00
      4900440053005F0032003600010023002300230023002300230023002E003000
      3000300001000100010001000D000A004900440053005F003300300001004E00
      4D00330001000100010001000D000A004900440053005F003300340001004100
      4D00310001000100010001000D000A004900440053005F003300350001002300
      2300230023002300230023002E00300030003000300001000100010001000D00
      0A004900440053005F0033003800010050007200690073002F004E004D003300
      01000100010001000D000A004900440053005F00330039000100230023002300
      23002300230023002E003000300001000100010001000D000A00490044005300
      5F00340001005200610064006E00720001000100010001000D000A0049004400
      53005F003400330001004D00460042004D0001000100010001000D000A004900
      440053005F0036003100010050004B004700540059005000450020004E004F00
      01000100010001000D000A004900440053005F003600390001004D0065006400
      65006C006C00E4006E006700640028004D006500740065007200290001000100
      010001000D000A004900440053005F003700380001002000700061006B006500
      740020006B006F006D006D0065007200200061007400740020006C00E4006700
      6700610073002000740069006C006C002C0020004F004B003F00010001000100
      01000D000A004900440053005F003700390001004400750070006C0069006300
      61007400650020005000610063006B0061006700650020006E0075006D006200
      65007200200065006E0074006500720065006400200001000100010001000D00
      0A004900440053005F00380001004200650073006B007200690076006E006900
      6E00670001000100010001000D000A004900440053005F003800300001005000
      610063006B0061006700650020006E006F002000690073002000720065007300
      6500720076006500640020006200790020007500730065007200200001000100
      010001000D000A004900440053005F003800310001005000610063006B006100
      6700650020006E0075006D006200650072002000200001000100010001000D00
      0A004900440053005F00380032000100200061006C0072006500610064007900
      2000650078006900730074002C00200070006C00650061007300650020006300
      680061006E0067006500200074006F0020006400690066006600650072006500
      6E00740020006E0075006D0062006500720001000100010001000D000A004900
      440053005F00380033000100500061006B0065007400200069006E0074006500
      200073007000610072006100640065002C002000760069006C006C0020006400
      750020006100760073006C007500740061003F0001000100010001000D000A00
      4900440053005F003800340001004B0061006E00200069006E00740065002000
      620079007400610020006E00E400720020006400650074002000660069006E00
      6E0073002000700061006B0065007400720061006400650072002E0001000100
      010001000D000A004900440053005F0038003500010054006F00200075007300
      6500200074006800690073002000660075006E006300740069006F006E002000
      79006F00750020006D00750073007400200069006E0073006500720074002000
      6F006E00650020007000610063006B0061006700650020006600690072007300
      740001000100010001000D000A004900440053005F003800370001004D006100
      780020007000610063006B006100670065004E006F00200061006C006C006F00
      770065006400200069007300200001000100010001000D000A00490044005300
      5F00380038000100500061006B00650074006E0072002000660069006E006E00
      73002000690020006C0069007300740061006E00200072006500640061006E00
      2E0001000100010001000D000A004900440053005F0038003900010050006100
      6B00650074006E0072002000660069006E006E00730020007200650064006100
      6E002E00200001000100010001000D000A004900440053005F00390030000100
      500061006B00650074006E007200200001000100010001000D000A0049004400
      53005F003900310001002000E400720020007200650073006500720076006500
      720061007400200061007600200061006E007600E4006E006400610072006500
      200001000100010001000D000A004900440053005F003900320001004C00E400
      6E0067006400200001000100010001000D000A004900440053005F0039003300
      01002000660069006E006E007300200072006500640061006E00200069002000
      74006100620065006C006C0065006E002E0001000100010001000D000A004900
      440053005F003900360001005600E4006C006A002000700072006F0064007500
      6B00740001000100010001000D000A004900440053005F003900370001005200
      6500670069007300740072006500720069006E00670073006400610074007500
      6D0020006600E5007200200069006E0074006500200076006100720061002000
      73007400F6007200720065002000E4006E00200061006B007400750065006C00
      6C007400200064006100740075006D0001000100010001000D000A0049004400
      53005F003900380001004400750020006800610072002000760061006C007400
      2000610074007400200049004E00540045002000730070006100720061002000
      740069006C006C002000700072006F00640075006B00740069006F006E007300
      6C006F006700670065006E002C002000760069006C006C002000640075002000
      6700E50020007600690064006100720065003F00200028006F006D0020006400
      75002000740065007800200073006B0061007000610072002000700061006B00
      65007400200073006F006D00200073006B0061006C006C002000730079006E00
      6100730020006900200065006E00200069006E00760065006E00740065007200
      69006E006700200073006B0061006C006C0020006400750020006B0072007900
      7300730061002000690020002200530070006100720061002000740069006C00
      6C002000700072006F00640075006B00740069006F006E0073006C006F006700
      670022002900200001000100010001000D000A004900440053005F0039003900
      0100530070006100720061002000700061006B006500740020006D006F007400
      20006D00E4007400700075006E006B0074003A00200001000100010001000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00640078004200610072004D006100
      6E006100670065007200310042006100720031002E004F006C0064004E006100
      6D006500010043007500730074006F006D002000310001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032002E00
      4F006C0064004E0061006D0065000100500061006B006500740001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A006700720064005000610063006B0061006700
      6500730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E000100500041004B00450054004900440001000D000A00
      6700720064005000610063006B00610067006500730044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0031005D002E00430061007000740069006F006E0001005600
      4F004C0059004D0001000D000A006700720064005000610063006B0061006700
      6500730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0032005D002E0043006100
      7000740069006F006E0001004C00C4004E00470044004500520001000D000A00
      6900630049006E007000750074004F007000740069006F006E002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003000
      5D002E004400650073006300720069007000740069006F006E00010041006E00
      67006500200073007400790063006B006500740061006C0020002F0020006C00
      E4006E006700640001000D000A006900630049006E007000750074004F007000
      740069006F006E002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0031005D002E004400650073006300720069007000
      740069006F006E00010041006E0067006500200074006F00740061006C002000
      6C00F60070006D00650074006500720001000D000A006900630049006E007000
      750074004F007000740069006F006E002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0032005D002E00440065007300
      6300720069007000740069006F006E00010041006E006700650020006D006500
      640065006C006C00E4006E006700640020006F00630068002000730074007900
      63006B006500740061006C0001000D000A006900630049006E00700075007400
      4F007000740069006F006E002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0033005D002E0044006500730063007200
      69007000740069006F006E00010041006E006700650020004D00330001000D00
      0A006900630049006E007000750074004F007000740069006F006E002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      34005D002E004400650073006300720069007000740069006F006E0001004100
      6E006700650020004D00330020006F006300680020006C00E4006E0067006400
      01000D000A006900630049006E007000750074004F007000740069006F006E00
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0035005D002E004400650073006300720069007000740069006F006E00
      010041006E0067006500200061006E00740061006C002000720061006D006100
      720001000D000A00690063004C0065006E006700740068004F00700074006900
      6F006E002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E000100500072006F00640075006B007400730070006500630069006600
      69006B00610001000D000A00690063004C0065006E006700740068004F007000
      740069006F006E002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0031005D002E004400650073006300720069007000
      740069006F006E0001004C00E4006E0067006400670072007500700070000100
      0D000A0062006500500072006F00640075006300740044006500730063007200
      69007000740069006F006E002E00500072006F00700065007200740069006500
      73002E0042007500740074006F006E0073005B0030005D002E00430061007000
      740069006F006E0001005600E4006C006A002000700072006F00640075006B00
      740001000D000A0062006500500072006F006400750063007400440065007300
      6300720069007000740069006F006E002E00500072006F007000650072007400
      6900650073002E0042007500740074006F006E0073005B0031005D002E004300
      61007000740069006F006E000100520065006E007300610001000D000A006C00
      630053006B006900660074004C00610067002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E0001005300680069006600
      74005400650061006D004E0061006D00650001000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      5400660072006D0050006B00670045006E007400720079000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      42006100720032000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720033000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070006D00500072006F00
      640075006300740073000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070006D005000610063006B0061006700
      650073000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C00650041006C0072006500
      610064007900450078006900730074000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C0065004600610069006C006500640054006F00530061007600650001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0070006D0050006B0067005400610062006C00650001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A00}
  end
end
