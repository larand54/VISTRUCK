object fPickPkgNo: TfPickPkgNo
  Left = 216
  Top = 125
  Caption = 'Plocka paketnr'
  ClientHeight = 804
  ClientWidth = 1410
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object grdPickPkgNos: TcxGrid
    Left = 0
    Top = 305
    Width = 1410
    Height = 426
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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
    Top = 731
    Width = 1410
    Height = 73
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 107
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Paket markerade:'
    end
    object LabelNoOfPkgsMarked: TLabel
      Left = 118
      Top = 20
      Width = 7
      Height = 16
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '0'
    end
    object BitBtn1: TBitBtn
      Left = 540
      Top = 7
      Width = 110
      Height = 57
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 657
      Top = 7
      Width = 110
      Height = 57
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 139
    Width = 1410
    Height = 166
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 2
    object LabelProduct: TLabel
      Left = 434
      Top = 31
      Width = 94
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelProduct'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLength: TLabel
      Left = 434
      Top = 53
      Width = 89
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelLength'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPIPName: TLabel
      Left = 434
      Top = 75
      Width = 106
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelPIPName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 342
      Top = 31
      Width = 59
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Produkt:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 342
      Top = 53
      Width = 49
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'L'#228'ngd:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 342
      Top = 75
      Width = 82
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagerst'#228'lle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelOwnerTitle: TLabel
      Left = 342
      Top = 9
      Width = 47
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #196'gare:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelOwner: TLabel
      Left = 434
      Top = 9
      Width = 85
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelOwner'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 342
      Top = 97
      Width = 41
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LONr:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelLONr: TLabel
      Left = 434
      Top = 97
      Width = 80
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'LabelLONo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 342
      Top = 121
      Width = 70
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Referens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelReferens: TLabel
      Left = 434
      Top = 121
      Width = 66
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Referens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbMarkAll: TBitBtn
      Left = 12
      Top = 9
      Width = 136
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acMarkAll
      Caption = 'Markera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object bbUnMarkAll: TBitBtn
      Left = 12
      Top = 68
      Width = 136
      Height = 61
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acUnmarkAll
      Caption = 'Avmarkera alla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbFilterOnLength: TcxCheckBox
      Left = 1108
      Top = 2
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Filtrera p'#229' l'#228'ngd'
      ParentFont = False
      Properties.OnChange = cbFilterOnLengthPropertiesChange
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 149
    end
    object lcProductDisplayName: TcxDBLookupComboBox
      Left = 798
      Top = 137
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Width = 365
    end
    object cxLabel1: TcxLabel
      Left = 798
      Top = 117
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Produkter i lager'
      Visible = False
    end
    object teRef: TcxTextEdit
      Left = 1110
      Top = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 5
      Width = 148
    end
    object teInfo1: TcxTextEdit
      Left = 1110
      Top = 63
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 6
      Width = 148
    end
    object teInfo2: TcxTextEdit
      Left = 1110
      Top = 97
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 7
      Width = 148
    end
    object cxLabel2: TcxLabel
      Left = 1041
      Top = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Referens'
    end
    object cxLabel3: TcxLabel
      Left = 1041
      Top = 71
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Info 1'
    end
    object cxLabel4: TcxLabel
      Left = 1041
      Top = 99
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Info 2'
    end
    object BitBtn3: TBitBtn
      Left = 158
      Top = 10
      Width = 148
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acSelectMarkedRows
      Caption = 'V'#228'lj markerade rader'
      TabOrder = 11
    end
    object cxLabel5: TcxLabel
      Left = 55
      Top = 138
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Lagergrupp:'
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 140
      Top = 137
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Width = 179
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1410
    Height = 139
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 7
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1408
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Urvalsalternativ'
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 12
      Top = 30
      Width = 149
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingProductAndLength
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 169
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingProduct
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 326
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowAddLOPkgsWithMatchingProduct
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 3
    end
    object cxButton6: TcxButton
      Left = 484
      Top = 30
      Width = 160
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowAllAddLOPkgs
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 4
    end
    object cxButton7: TcxButton
      Left = 651
      Top = 30
      Width = 150
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowPkgsWithSameActDimOnly
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 5
    end
    object cxLabel_Val: TcxLabel
      Left = 10
      Top = 107
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '______'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 807
      Top = 30
      Width = 149
      Height = 70
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acShowMatchingLIP
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.Down = True
      TabOrder = 7
    end
    object cxButton2: TcxButton
      Left = 960
      Top = 30
      Width = 145
      Height = 70
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
    Font.Height = -14
    Font.Name = 'Tahoma'
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
    PixelsPerInch = 120
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
    Left = 568
    Top = 328
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000690063006B0050006B0067004E006F000100
      50006C006F0063006B0061002000700061006B00650074006E00720001000100
      01000D000A006700720064005000690063006B0050006B0067004E006F007300
      440042005400610062006C006500560069006500770031004D00410052004B00
      450052004100440001004C00E400670067002000740069006C006C0001000100
      01000D000A006700720064005000690063006B0050006B0067004E006F007300
      440042005400610062006C00650056006900650077003100500041004B004500
      54004E0052000100500061006B00650074006E0072000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C006500560069006500770031004C00450056004B004F0044000100
      5000720065006600690078000100010001000D000A0067007200640050006900
      63006B0050006B0067004E006F007300440042005400610062006C0065005600
      690065007700310041004D003300010041004D0033000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C0065005600690065007700310053005400590043004B0001005300
      7400790063006B000100010001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      7700310052004500470049005300540052004500520041005400010052006500
      6700690073007400720065007200610064000100010001000D000A0067007200
      64005000690063006B0050006B0067004E006F00730044004200540061006200
      6C0065005600690065007700310053005400590043004B005000450052004C00
      4E0047004400010053007400790063006B002F006C00E4006E00670064000100
      010001000D000A006700720064005000690063006B0050006B0067004E006F00
      7300440042005400610062006C00650056006900650077003100500072006F00
      640075006B0074000100500072006F00640075006B0074000100010001000D00
      0A006700720064005000690063006B0050006B0067004E006F00730044004200
      5400610062006C00650056006900650077003100520065006600650072006500
      6E00730001005200650066006500720065006E0073000100010001000D000A00
      6700720064005000690063006B0050006B0067004E006F007300440042005400
      610062006C0065005600690065007700310049006E0066006F00310001004900
      6E0066006F0031000100010001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      7700310049006E0066006F003200010049006E0066006F003200010001000100
      0D000A006700720064005000690063006B0050006B0067004E006F0073004400
      42005400610062006C00650056006900650077003100500061006B0065007400
      730074006F0072006C0065006B000100500061006B0065007400730074006F00
      72006C0065006B000100010001000D000A006700720064005000690063006B00
      50006B0067004E006F007300440042005400610062006C006500560069006500
      770031004300650072007400660069006500720069006E006700010043006500
      72007400660069006500720069006E0067000100010001000D000A004C006100
      620065006C0031000100500061006B006500740020006D00610072006B006500
      72006100640065003A000100010001000D000A004C006100620065006C004E00
      6F004F00660050006B00670073004D00610072006B0065006400010030000100
      010001000D000A00420069007400420074006E00310001004F004B0001000100
      01000D000A00420069007400420074006E0032000100430061006E0063006500
      6C000100010001000D000A004C006100620065006C00500072006F0064007500
      6300740001004C006100620065006C00500072006F0064007500630074000100
      010001000D000A004C006100620065006C004C0065006E006700740068000100
      4C006100620065006C004C0065006E006700740068000100010001000D000A00
      4C006100620065006C005000490050004E0061006D00650001004C0061006200
      65006C005000490050004E0061006D0065000100010001000D000A004C006100
      620065006C0032000100500072006F00640075006B0074003A00010001000100
      0D000A004C006100620065006C00330001004C00E4006E00670064003A000100
      010001000D000A004C006100620065006C00340001004C006100670065007200
      73007400E4006C006C0065003A000100010001000D000A004C00610062006500
      6C004F0077006E00650072005400690074006C0065000100C400670061007200
      65003A000100010001000D000A004C006100620065006C004F0077006E006500
      720001004C006100620065006C004F0077006E00650072000100010001000D00
      0A004C006100620065006C00350001004C004F004E0072003A00010001000100
      0D000A004C006100620065006C004C004F004E00720001004C00610062006500
      6C005000490050004E0061006D0065000100010001000D000A00630062004600
      69006C007400650072004F006E004C0065006E00670074006800010046006900
      6C007400720065007200610020007000E50020006C00E4006E00670064000100
      010001000D000A00630078004C006100620065006C0031000100500072006F00
      640075006B007400650072002000690020006C00610067006500720001000100
      01000D000A00630078004C006100620065006C00320001005200650066006500
      720065006E0073000100010001000D000A00630078004C006100620065006C00
      3300010049006E0066006F00200031000100010001000D000A00630078004C00
      6100620065006C003400010049006E0066006F00200032000100010001000D00
      0A00630078004C006100620065006C00350001004C0061006700650072006700
      72007500700070003A000100010001000D000A00500061006E0065006C003400
      010055007200760061006C00730061006C007400650072006E00610074006900
      76000100010001000D000A00630078004C006100620065006C005F0056006100
      6C0001005F005F005F005F005F005F000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004300
      7500730074006F006D00200031000100010001000D000A006100630050006B00
      670049006E0066006F000100500061006B0065007400200069006E0066006F00
      72006D006100740069006F006E000100010001000D000A00610063004D006100
      72006B0041006C006C0001004D00610072006B00650072006100200061006C00
      6C0061000100010001000D000A006100630055006E006D00610072006B004100
      6C006C000100410076006D00610072006B00650072006100200061006C006C00
      61000100010001000D000A0061006300530068006F0077004100640064004C00
      4F0050006B006700730057006900740068004D00610074006300680069006E00
      6700500072006F006400750063007400010055007200760061006C0020006100
      6400640020004C004F002000260026002000700072006F00640075006B007400
      0100010001000D000A0061006300530068006F00770041006C006C0041006400
      64004C004F0050006B0067007300010055007200760061006C00200061006400
      640020004C004F000100010001000D000A0061006300530068006F0077004D00
      610074006300680069006E006700500072006F00640075006300740041006E00
      64004C0065006E00670074006800010055007200760061006C00200070007200
      6F00640075006B00740020002600260020006C00E4006E006700640001000100
      01000D000A0061006300530068006F0077004D00610074006300680069006E00
      6700500072006F006400750063007400010055007200760061006C0020007000
      72006F00640075006B0074000100010001000D000A0061006300530068006F00
      770050006B00670073005700690074006800530061006D006500410063007400
      440069006D004F006E006C007900010055007200760061006C00200054004D00
      0100010001000D000A0061006300530068006F00770050006B00670073005500
      730069006E006700530065006100720063006800010055007200760061006C00
      20007300F6006B000100010001000D000A0061006300530065006C0065006300
      74004D00610072006B006500640052006F007700730001005600E4006C006A00
      20006D00610072006B0065007200610064006500200072006100640065007200
      0100010001000D000A0061006300530068006F0077004D006100740063006800
      69006E0067004C0049005000010055007200760061006C0020006C0061006700
      65007200670072007500700070000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A006D007400500072006F0064007500630074005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F000100010001000D000A006D007400500072006F006400750063007400
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065000100500072006F00640075006300740044006900730070006C006100
      79004E0061006D0065000100010001000D000A00730071005F00500061006B00
      650074004C0069007300740061005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F000100010001000D000A007300
      71005F00500061006B00650074004C0069007300740061004C00450056004B00
      4F00440001004C00450056004B004F0044000100010001000D000A0073007100
      5F00500061006B00650074004C00690073007400610050006300730050006500
      72004C0065006E0067007400680001005000630073005000650072004C006500
      6E006700740068000100010001000D000A00730071005F00500061006B006500
      74004C00690073007400610041004D003300010041004D003300010001000100
      0D000A00730071005F00500061006B00650074004C0069007300740061005300
      5400590043004B00010053005400590043004B000100010001000D000A007300
      71005F00500061006B00650074004C0069007300740061004400610074006500
      4300720065006100740065006400010044006100740065004300720065006100
      7400650064000100010001000D000A00730071005F00500061006B0065007400
      4C0069007300740061004E004F004F0046004C0045004E004700540048005300
      01004E004F004F0046004C0045004E0047005400480053000100010001000D00
      0A00730071005F00500061006B00650074004C00690073007400610070007200
      6F0064007500630074006E006F000100700072006F0064007500630074006E00
      6F000100010001000D000A00730071005F00500061006B00650074004C006900
      730074006100500072006F00640075006B0074000100500072006F0064007500
      6B0074000100010001000D000A00730071005F00500061006B00650074004C00
      6900730074006100530074006100740075007300480054004600010053007400
      61007400750073004800540046000100010001000D000A00730071005F005000
      61006B00650074004C0069007300740061005200450046004500520045004E00
      4300450001005200450046004500520045004E00430045000100010001000D00
      0A00730071005F00500061006B00650074004C00690073007400610042004C00
      5F004E004F00010042004C005F004E004F000100010001000D000A0073007100
      5F00500061006B00650074004C00690073007400610049006E0066006F003200
      010049006E0066006F0032000100010001000D000A00730071005F0050006100
      6B00650074004C006900730074006100500061006B0065007400730074006F00
      72006C0065006B000100500061006B0065007400730074006F0072006C006500
      6B000100010001000D000A00730071005F00500061006B00650074004C006900
      7300740061004300650072007400660069006500720069006E00670001004300
      650072007400660069006500720069006E0067000100010001000D000A006300
      640073005F00500072006F00640049006E004C00610067006500720050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100010001000D000A006300640073005F00500072006F006400
      49006E004C006100670065007200500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F000100010001000D000A006D00
      740050006B0067004E006F0073005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F000100010001000D000A006D00
      740050006B0067004E006F007300500072006500660069007800010050007200
      65006600690078000100010001000D000A006D007400500072006F0070007300
      5000490050004E006F0001005000490050004E006F000100010001000D000A00
      6D007400500072006F00700073004C00490050004E006F0001004C0049005000
      4E006F000100010001000D000A006D007400500072006F00700073004C004900
      500001004C00490050000100010001000D000A006300640073005F004C004900
      500032004C00490050004E006F0001004C00490050004E006F00010001000100
      0D000A006300640073005F004C004900500032004C00490050004E0061006D00
      650001004C00490050004E0061006D0065000100010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      66005000690063006B0050006B0067004E006F0001004D005300200053006100
      6E0073002000530065007200690066000100010001000D000A004C0061006200
      65006C00500072006F00640075006300740001004D0053002000530061006E00
      73002000530065007200690066000100010001000D000A004C00610062006500
      6C004C0065006E0067007400680001004D0053002000530061006E0073002000
      530065007200690066000100010001000D000A004C006100620065006C005000
      490050004E0061006D00650001004D0053002000530061006E00730020005300
      65007200690066000100010001000D000A004C006100620065006C0032000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      0D000A004C006100620065006C00330001004D0053002000530061006E007300
      2000530065007200690066000100010001000D000A004C006100620065006C00
      340001004D0053002000530061006E0073002000530065007200690066000100
      010001000D000A004C006100620065006C004F0077006E006500720054006900
      74006C00650001004D0053002000530061006E00730020005300650072006900
      66000100010001000D000A004C006100620065006C004F0077006E0065007200
      01004D0053002000530061006E00730020005300650072006900660001000100
      01000D000A004C006100620065006C00350001004D0053002000530061006E00
      73002000530065007200690066000100010001000D000A004C00610062006500
      6C004C004F004E00720001004D0053002000530061006E007300200053006500
      7200690066000100010001000D000A00620062004D00610072006B0041006C00
      6C0001004D0053002000530061006E0073002000530065007200690066000100
      010001000D000A006200620055006E004D00610072006B0041006C006C000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      5400610068006F006D0061000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100540061006800
      6F006D0061000100010001000D000A0070006D005000690063006B0050006B00
      67004E006F007300470072006900640001005400610068006F006D0061000100
      010001000D000A00630078005300740079006C006500590065006C006C006F00
      770001005400610068006F006D0061000100010001000D000A00630078005300
      740079006C00650052006500640001005400610068006F006D00610001000100
      01000D000A00630078005300740079006C006500410071007500610001005400
      610068006F006D0061000100010001000D000A00630078005300740079006C00
      650042006C007500650001005400610068006F006D0061000100010001000D00
      0A00630078005300740079006C006500530069006C0076006500720001005400
      610068006F006D0061000100010001000D000A00630078005300740079006C00
      65004800650061006400650072000100560065007200640061006E0061000100
      010001000D000A00630078005300740079006C00650043006F006E0074006500
      6E00740001004D0053002000530061006E007300200053006500720069006600
      0100010001000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F006400640001004D0053002000530061006E00730020005300
      65007200690066000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A004900440053005F003000010055007200760061006C00200070007200
      6F00640075006B00740020002600260020006C00E4006E006700640001000100
      01000D000A004900440053005F00310001004D006F0064007400610067006500
      74000100010001000D000A004900440053005F00310031000100550072007600
      61006C00200061006400640020004C004F002000260026002000700072006F00
      640075006B0074000100010001000D000A004900440053005F00310036000100
      55007200760061006C00200061006400640020004C004F000100010001000D00
      0A004900440053005F00320001004B006C00610072002000740069006C002000
      700072006F00640075006B00740069006F006E000100010001000D000A004900
      440053005F0032003100010055007200760061006C00200054004D0001000100
      01000D000A004900440053005F0032003600010055007200760061006C002000
      4C006100670065007200670072007500700070000100010001000D000A004900
      440053005F00330001004B006C00610072002000740069006C00200061006600
      670061006E0067000100010001000D000A004900440053005F00340001005500
      64006C006500760065007200610074000100010001000D000A00490044005300
      5F003500010061006E00640020000100010001000D000A004900440053005F00
      3600010055007200760061006C002000700072006F00640075006B0074000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006C006300500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000D00
      0A006C0063004C00490050002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001004C00490050004E0061006D006500
      0100010001000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00540066005000690063006B005000
      6B0067004E006F000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A004C006100620065006C0050007200
      6F0064007500630074000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A004C006100620065006C004C00
      65006E006700740068000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A004C006100620065006C005000
      490050004E0061006D0065000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A004C006100620065006C00
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A004C006100620065006C0033000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A004C006100620065006C0034000100440045004600410055004C0054005F00
      43004800410052005300450054000100010001000D000A004C00610062006500
      6C004F0077006E00650072005400690074006C00650001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00
      4C006100620065006C004F0077006E0065007200010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A004C00
      6100620065006C0035000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A004C006100620065006C004C00
      4F004E0072000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00620062004D00610072006B0041006C00
      6C000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A006200620055006E004D00610072006B0041006C00
      6C000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720031000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0070006D00
      5000690063006B0050006B0067004E006F007300470072006900640001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      01000D000A00630078005300740079006C006500590065006C006C006F007700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100010001000D000A00630078005300740079006C0065005200650064000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00630078005300740079006C00650041007100750061000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00630078005300740079006C00650042006C00750065000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00630078005300740079006C006500530069006C0076006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00630078005300740079006C006500480065006100
      6400650072000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00630078005300740079006C0065004300
      6F006E00740065006E0074000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A0063007800530074007900
      6C00650043006F006E00740065006E0074004F00640064000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00}
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPickPkgNos
    PopupMenus = <>
    Left = 320
    Top = 497
  end
end
