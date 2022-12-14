object frmVisTruckLoadOrder: TfrmVisTruckLoadOrder
  Left = 212
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LASTORDER'
  ClientHeight = 743
  ClientWidth = 1234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  PopupMenu = pmShortcuts
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLOList: TPanel
    Left = 0
    Top = 95
    Width = 1234
    Height = 648
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 335
      Width = 1234
      Height = 4
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = Panel1
      Color = clMaroon
      ParentColor = False
    end
    object Memo1: TMemo
      Left = 616
      Top = 136
      Width = 185
      Height = 89
      TabOrder = 1
      Visible = False
    end
    object lbLO_To_Invoice: TListBox
      Left = 688
      Top = 336
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1234
      Height = 335
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 3
      object grdLO: TcxGrid
        Left = 1
        Top = 97
        Width = 1232
        Height = 237
        Align = alClient
        PopupMenu = pmLOGrid
        TabOrder = 0
        object grdLODBTableView1: TcxGridDBTableView
          OnDblClick = grdLODBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditKeyDown = grdLODBTableView1EditKeyDown
          OnFocusedRecordChanged = grdLODBTableView1FocusedRecordChanged
          DataController.DataSource = dmcOrder.dsrcSawmillLoadOrders
          DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'LoadedNM3'
              Column = grdLODBTableView1LoadedNM3
            end
            item
              Format = '######'
              Kind = skSum
              FieldName = 'LoadedPkgs'
              Column = grdLODBTableView1LoadedPkgs
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupRowHeight = 27
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 14
          Styles.Content = cxStyleContent
          Styles.ContentEven = cxStyleContent
          Styles.ContentOdd = cxStyleContentOdd
          Styles.Header = cxStyleHeader
          OnCustomDrawGroupCell = grdLODBTableView1CustomDrawGroupCell
          object grdLODBTableView1Lagerkod: TcxGridDBColumn
            Caption = 'Location'
            DataBinding.FieldName = 'Lagerkod'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 64
          end
          object grdLODBTableView1Supplier: TcxGridDBColumn
            DataBinding.FieldName = 'Supplier'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ShippingPlanStatus: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanStatus'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = ILStatus1616
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = 'PRELIMIN'#196'R'
                ImageIndex = 5
                Value = 0
              end
              item
                Description = 'NY'
                ImageIndex = 3
                Value = 1
              end
              item
                Description = 'AVSLAG'
                ImageIndex = 0
                Value = 2
              end
              item
                Description = 'ACCEPT'
                ImageIndex = 1
                Value = 3
              end
              item
                Description = 'AVSLUTAD'
                ImageIndex = 2
                Value = 4
              end
              item
                Description = 'V'#196'NTA'
                ImageIndex = 4
                Value = 5
              end
              item
                Description = 'PRODUKTION AVSLUTAD'
                ImageIndex = 6
                Value = 6
              end
              item
                Description = 'ANNULERAD'
                ImageIndex = 7
                Value = 7
              end
              item
                Description = 'ANNU.BEKR'#196'FTAD'
                ImageIndex = 8
                Value = 8
              end
              item
                Description = 'READY FOR DELIVERY'
                ImageIndex = 12
                Value = 9
              end
              item
                Description = #196'NDRAD'
                Value = 10
              end>
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Focusing = False
          end
          object grdLODBTableView1LONumber: TcxGridDBColumn
            DataBinding.FieldName = 'LONumber'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object grdLODBTableView1PKGCode: TcxGridDBColumn
            DataBinding.FieldName = 'PackageCode'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Product: TcxGridDBColumn
            DataBinding.FieldName = 'Product'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 148
          end
          object grdLODBTableView1Length: TcxGridDBColumn
            DataBinding.FieldName = 'Length'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 100
          end
          object grdLODBTableView1FromWeek: TcxGridDBColumn
            DataBinding.FieldName = 'FromWeek'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ToWeek: TcxGridDBColumn
            DataBinding.FieldName = 'ToWeek'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Volume: TcxGridDBColumn
            DataBinding.FieldName = 'Volume'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ShipTo: TcxGridDBColumn
            DataBinding.FieldName = 'ShipTo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 137
          end
          object grdLODBTableView1UnitName: TcxGridDBColumn
            DataBinding.FieldName = 'UnitName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Destination: TcxGridDBColumn
            DataBinding.FieldName = 'Destination'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 220
          end
          object grdLODBTableView1ClientName: TcxGridDBColumn
            DataBinding.FieldName = 'ClientName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 148
          end
          object grdLODBTableView1SUPP_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'SUPP_NAME'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 155
          end
          object grdLODBTableView1LOADING: TcxGridDBColumn
            DataBinding.FieldName = 'LOADING'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 137
          end
          object grdLODBTableView1LOCAL_CUST: TcxGridDBColumn
            DataBinding.FieldName = 'LOCAL_CUST'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 146
          end
          object grdLODBTableView1INITIALS: TcxGridDBColumn
            Caption = 'INITIALER'
            DataBinding.FieldName = 'INITIALS'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1READYDATE: TcxGridDBColumn
            DataBinding.FieldName = 'READYDATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 83
          end
          object grdLODBTableView1ShippersShipDate: TcxGridDBColumn
            DataBinding.FieldName = 'ShippersShipDate'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 94
          end
          object grdLODBTableView1BarCode: TcxGridDBColumn
            DataBinding.FieldName = 'BarCode'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1REFERENS: TcxGridDBColumn
            Caption = 'Avropsreferens'
            DataBinding.FieldName = 'REFERENS'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1SKAPAD: TcxGridDBColumn
            DataBinding.FieldName = 'SKAPAD'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Reference: TcxGridDBColumn
            Caption = 'Adress/kundreferens'
            DataBinding.FieldName = 'Reference'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1NT: TcxGridDBColumn
            DataBinding.FieldName = 'NT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 48
          end
          object grdLODBTableView1NB: TcxGridDBColumn
            DataBinding.FieldName = 'NB'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 43
          end
          object grdLODBTableView1AT: TcxGridDBColumn
            DataBinding.FieldName = 'AT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 45
          end
          object grdLODBTableView1AB: TcxGridDBColumn
            DataBinding.FieldName = 'AB'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 40
          end
          object grdLODBTableView1TT: TcxGridDBColumn
            DataBinding.FieldName = 'TT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 44
          end
          object grdLODBTableView1TB: TcxGridDBColumn
            DataBinding.FieldName = 'TB'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 44
          end
          object grdLODBTableView1TS: TcxGridDBColumn
            DataBinding.FieldName = 'TS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 82
          end
          object grdLODBTableView1UT: TcxGridDBColumn
            DataBinding.FieldName = 'UT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 70
          end
          object grdLODBTableView1KV: TcxGridDBColumn
            DataBinding.FieldName = 'KV'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 73
          end
          object grdLODBTableView1PK: TcxGridDBColumn
            DataBinding.FieldName = 'PK'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 54
          end
          object grdLODBTableView1CustomerShowInGrid: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerShowInGrid'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1OrderNo: TcxGridDBColumn
            DataBinding.FieldName = 'OrderNoText'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1Delivery_WeekNo: TcxGridDBColumn
            DataBinding.FieldName = 'Delivery_WeekNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1CSH_CustomerNo: TcxGridDBColumn
            DataBinding.FieldName = 'CSH_CustomerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShipToInvPointNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1LoadingLocationNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadingLocationNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1CHCustomerNo: TcxGridDBColumn
            DataBinding.FieldName = 'CHCustomerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1SPCustomerNo: TcxGridDBColumn
            DataBinding.FieldName = 'SPCustomerNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 88
          end
          object grdLODBTableView1ObjectType: TcxGridDBColumn
            DataBinding.FieldName = 'ObjectType'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Intern'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Add LO'
                Value = 1
              end
              item
                Description = 'LO'
                Value = 2
              end>
          end
          object grdLODBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn
            DataBinding.FieldName = 'SupplierShipPlanObjectNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1OrderType: TcxGridDBColumn
            DataBinding.FieldName = 'OrderType'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1INTLNGD: TcxGridDBColumn
            DataBinding.FieldName = 'INTL'#196'NGD'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1RADREFERENS: TcxGridDBColumn
            Caption = 'Produktm'#228'rkning'
            DataBinding.FieldName = 'RADREFERENS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 137
          end
          object grdLODBTableView1KONTRAKTSBESKRIVNING: TcxGridDBColumn
            DataBinding.FieldName = 'KONTRAKTSBESKRIVNING'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 218
          end
          object grdLODBTableView1MARKNAD: TcxGridDBColumn
            DataBinding.FieldName = 'MARKNAD'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Pris: TcxGridDBColumn
            DataBinding.FieldName = 'Pris'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ShowInGrid: TcxGridDBColumn
            DataBinding.FieldName = 'ShowInGrid'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ProductGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 110
          end
          object grdLODBTableView1PriceListName: TcxGridDBColumn
            DataBinding.FieldName = 'PriceListName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 87
          end
          object grdLODBTableView1PcsPerPkg: TcxGridDBColumn
            DataBinding.FieldName = 'PcsPerPkg'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 82
          end
          object grdLODBTableView1PackageWidth: TcxGridDBColumn
            DataBinding.FieldName = 'PackageWidth'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 93
          end
          object grdLODBTableView1PackageHeight: TcxGridDBColumn
            DataBinding.FieldName = 'PackageHeight'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 91
          end
          object grdLODBTableView1PkgCodePPNo: TcxGridDBColumn
            DataBinding.FieldName = 'PkgCodePPNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ProdInstruNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProdInstruNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ProductLengthNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductLengthNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 91
          end
          object grdLODBTableView1LanguageCode: TcxGridDBColumn
            DataBinding.FieldName = 'LanguageCode'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ALMM: TcxGridDBColumn
            DataBinding.FieldName = 'ALMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1SequenceNo: TcxGridDBColumn
            DataBinding.FieldName = 'SequenceNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1Lagergrupp: TcxGridDBColumn
            DataBinding.FieldName = 'Lagergrupp'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ETD: TcxGridDBColumn
            DataBinding.FieldName = 'ETD'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 115
          end
          object grdLODBTableView1ETA: TcxGridDBColumn
            DataBinding.FieldName = 'ETA'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 109
          end
          object grdLODBTableView1Package_Size: TcxGridDBColumn
            DataBinding.FieldName = 'Package_Size'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdLODBTableView1PackageSizeName: TcxGridDBColumn
            DataBinding.FieldName = 'PackageSizeName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 101
          end
          object grdLODBTableView1Lngd: TcxGridDBColumn
            DataBinding.FieldName = 'L'#228'ngd'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1PkgArticleNo: TcxGridDBColumn
            Caption = 'Artikelnr'
            DataBinding.FieldName = 'PkgArticleNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1LOGroupNo: TcxGridDBColumn
            Caption = 'LO gruppnr'
            DataBinding.FieldName = 'LOGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1LOBuffertName: TcxGridDBColumn
            Caption = 'LO-Buffert'
            DataBinding.FieldName = 'LOBuffertName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1LoadedPkgs: TcxGridDBColumn
            DataBinding.FieldName = 'LoadedPkgs'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1LoadedNM3: TcxGridDBColumn
            DataBinding.FieldName = 'LoadedNM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1PlanPaket: TcxGridDBColumn
            DataBinding.FieldName = 'PlanPaket'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1PlanAM3: TcxGridDBColumn
            DataBinding.FieldName = 'PlanAM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ProducedAM3: TcxGridDBColumn
            DataBinding.FieldName = 'ProducedAM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1ProducedPKT: TcxGridDBColumn
            DataBinding.FieldName = 'ProducedPKT'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Order_AM3: TcxGridDBColumn
            DataBinding.FieldName = 'Order_AM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Internnotering: TcxGridDBColumn
            DataBinding.FieldName = 'Internnotering'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 200
          end
          object grdLODBTableView1LoadedAM3: TcxGridDBColumn
            DataBinding.FieldName = 'LoadedAM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLODBTableView1Produktnotering: TcxGridDBColumn
            Caption = 'Internnotering'
            DataBinding.FieldName = 'Produktnotering'
          end
          object grdLODBTableView1LoadStatus: TcxGridDBColumn
            Caption = 'Load status'
            DataBinding.FieldName = 'LoadStatus'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmsConnector.cxImageListLoadStatus
            Properties.Items = <
              item
                Description = 'Preliminary'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Problem load'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = 'Complete'
                ImageIndex = 2
                Value = 2
              end
              item
                Description = 'Prepaid'
                ImageIndex = 3
                Value = 3
              end
              item
                Description = 'Ready'
                ImageIndex = 4
                Value = 4
              end
              item
                Description = 'No loads'
                ImageIndex = 5
                Value = 5
              end>
            OnCustomDrawCell = grdLODBTableView1LoadStatusCustomDrawCell
            OnGetDisplayText = grdLODBTableView1LoadStatusGetDisplayText
          end
          object grdLODBTableView1NoOfLoads: TcxGridDBColumn
            Caption = 'No of Loads'
            DataBinding.FieldName = 'NoOfLoads'
          end
        end
        object grdLOLevel1: TcxGridLevel
          GridView = grdLODBTableView1
        end
      end
      object PanelMainLOMenu: TPanel
        Left = 1
        Top = 1
        Width = 1232
        Height = 96
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object teSearchLONo: TcxTextEdit
          Left = 64
          Top = 11
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = teSearchLONoKeyDown
          Width = 58
        end
        object teSearchLoadNo: TcxTextEdit
          Left = 64
          Top = 39
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyDown = teSearchLoadNoKeyDown
          Width = 58
        end
        object lcVerk: TcxDBLookupComboBox
          Left = 168
          Top = 11
          DataBinding.DataField = 'Verk'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.DropDownWidth = 250
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'SearchName'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 121
        end
        object icStatus: TcxDBImageComboBox
          Left = 560
          Top = 7
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.DropDownRows = 12
          Properties.Images = imglistActions
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Alla'
              ImageIndex = 18
              Value = 0
            end
            item
              Description = 'Alla (ej avslutade och ann.bekr)'
              ImageIndex = 19
              Value = 1
            end
            item
              Description = 'Avslutade och ann. bekr'#228'ftad'
              ImageIndex = 2
              Value = 2
            end
            item
              Description = 'Nya och annulerade'
              ImageIndex = 12
              Value = 3
            end
            item
              Description = 'Avslag'
              ImageIndex = 10
              Value = 4
            end
            item
              Description = 'Accepterad'
              ImageIndex = 11
              Value = 5
            end
            item
              Description = 'V'#228'nta'
              ImageIndex = 14
              Value = 6
            end
            item
              Description = 'Produktion avslutad'
              ImageIndex = 16
              Value = 7
            end
            item
              Description = 'Prelimin'#228'r'
              ImageIndex = 15
              Value = 8
            end
            item
              Description = 'Annulerad'
              ImageIndex = 30
              Value = 9
            end
            item
              Description = 'Ann. bekr'#228'ftad'
              ImageIndex = 25
              Value = 10
            end
            item
              Description = 'Klar f'#246'r utlastning'
              ImageIndex = 29
              Value = 11
            end>
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 103
        end
        object icOrderTypeNo: TcxDBImageComboBox
          Left = 560
          Top = 39
          DataBinding.DataField = 'OrderTypeNo'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'F'#246'rs'#228'ljning'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Ink'#246'p'
              Value = 1
            end>
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 103
        end
        object lcDestination: TcxDBLookupComboBox
          Left = 386
          Top = 39
          DataBinding.DataField = 'Destination'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'Ort'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 117
        end
        object cxButton1: TcxButton
          Left = 999
          Top = 5
          Width = 69
          Height = 57
          Action = acSaveChanges
          OptionsImage.Layout = blGlyphTop
          TabOrder = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cxButton2: TcxButton
          Left = 1068
          Top = 5
          Width = 72
          Height = 57
          Action = acCancelChanges
          OptionsImage.Layout = blGlyphTop
          TabOrder = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cxButton3: TcxButton
          Left = 852
          Top = 5
          Width = 73
          Height = 57
          Caption = 'Skriv ut'
          DropDownMenu = pmPrintmenu
          Kind = cxbkDropDown
          TabOrder = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 669
          Top = 5
          Width = 105
          Height = 57
          Action = atRefresh
          OptionsImage.Layout = blGlyphTop
          TabOrder = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cxButton7: TcxButton
          Left = 774
          Top = 5
          Width = 78
          Height = 57
          Action = acSearch
          OptionsImage.Layout = blGlyphTop
          TabOrder = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object teMultiSearch: TcxTextEdit
          Left = 168
          Top = 39
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Visible = False
          OnKeyDown = teMultiSearchKeyDown
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 17
          Caption = 'LONr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 2
          Top = 43
          Caption = 'LastNr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel3: TcxLabel
          Left = 125
          Top = 15
          Caption = 'Verk:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel4: TcxLabel
          Left = 125
          Top = 43
          Caption = 'BL:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Visible = False
        end
        object cxLabel5: TcxLabel
          Left = 293
          Top = 15
          Caption = 'Lastst'#228'lle:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel6: TcxLabel
          Left = 293
          Top = 43
          Caption = 'Destination:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel7: TcxLabel
          Left = 504
          Top = 15
          Caption = 'Status:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxButton8: TcxButton
          Left = 925
          Top = 5
          Width = 74
          Height = 57
          Action = acSaveVyer
          TabOrder = 23
        end
        object teREF: TcxTextEdit
          Left = 64
          Top = 67
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyDown = teREFKeyDown
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 2
          Top = 71
          Caption = 'Refs:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cbShowOnlySelectedVerksLOs: TcxDBCheckBox
          Left = 754
          Top = 68
          Caption = 'Visa endast valt verks LO'#39's'
          DataBinding.DataField = 'AutoColWidth'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Verdana'
          Style.Font.Style = [fsBold]
          Style.StyleController = cxEditStyleControllerFileldLabels
          Style.IsFontAssigned = True
          TabOrder = 7
        end
        object teReferens: TcxTextEdit
          Left = 386
          Top = 66
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Visible = False
          OnKeyDown = teReferensKeyDown
          Width = 117
        end
        object cxLabel9: TcxLabel
          Left = 293
          Top = 69
          Caption = 'Kund ref:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Visible = False
        end
        object cxButton9: TcxButton
          Left = 1146
          Top = 5
          Width = 82
          Height = 57
          Action = acClose
          OptionsImage.Layout = blGlyphTop
          TabOrder = 26
        end
        object cxLabel10: TcxLabel
          Left = 509
          Top = 41
          Caption = 'O.typ:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxButton10: TcxButton
          Left = 1068
          Top = 66
          Width = 160
          Height = 30
          Action = acSendWoodxDeliveryMessage
          TabOrder = 28
        end
        object lcLaststlle: TcxDBLookupComboBox
          Left = 386
          Top = 11
          DataBinding.DataField = 'Lastst'#228'lle'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'Ort'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 117
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 518
          Top = 68
          Caption = 'Visa endast fr'#229'n valt lastst'#228'lle'
          DataBinding.DataField = 'VolumeUnitNo'
          DataBinding.DataSource = dmcOrder.ds_Props
          ParentFont = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 29
        end
        object cxButton11: TcxButton
          Left = 1008
          Top = 64
          Width = 57
          Height = 33
          Action = acSetupForm
          TabOrder = 30
        end
      end
    end
    object PanelLoadDetail: TPanel
      Left = 0
      Top = 339
      Width = 1234
      Height = 309
      Align = alClient
      Constraints.MinWidth = 400
      TabOrder = 4
      object grdFS: TcxGrid
        Left = 1
        Top = 53
        Width = 1232
        Height = 255
        Align = alClient
        PopupMenu = pmLoadGrid
        TabOrder = 0
        OnExit = grdFSExit
        object grdFSDBTableView1: TcxGridDBTableView
          OnDblClick = grdFSDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnInitEdit = grdFSDBTableView1InitEdit
          DataController.DataSource = dmcOrder.dsrcLoadsForLO
          DataController.KeyFieldNames = 'LoadNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'ActualM3'
              Column = grdFSDBTableView1ActualM3
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'NominalM3'
              Column = grdFSDBTableView1NominalM3
            end
            item
              Format = '#,###,###'
              Kind = skSum
              FieldName = 'Pcs'
              Column = grdFSDBTableView1Pcs
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'MFBM'
              Column = grdFSDBTableView1MFBM
            end
            item
              Format = '###'
              Kind = skCount
              FieldName = 'LoadNo'
              Column = grdFSDBTableView1LoadNo
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'LinealMeter'
              Column = grdFSDBTableView1LinealMeter
            end
            item
              Format = '###'
              Kind = skSum
              FieldName = 'ANTPKT'
              Column = grdFSDBTableView1ANTPKT
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Content = cxStyleContent
          Styles.ContentEven = cxStyleContent
          Styles.ContentOdd = cxStyleContentOdd
          Styles.OnGetContentStyle = grdFSDBTableView1StylesGetContentStyle
          Styles.Footer = cxStyleHeader
          Styles.Header = cxStyleHeader
          object grdFSDBTableView1ShippingPlanNo: TcxGridDBColumn
            Caption = ' LO'
            DataBinding.FieldName = 'ShippingPlanNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 28
          end
          object grdFSDBTableView1LoadNo: TcxGridDBColumn
            Caption = ' Lastnr'
            DataBinding.FieldName = 'LoadNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 27
          end
          object grdFSDBTableView1LoadID: TcxGridDBColumn
            Caption = ' Last ID'
            DataBinding.FieldName = 'LoadID'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 44
          end
          object grdFSDBTableView1LoadedDate: TcxGridDBColumn
            Caption = ' Utlastad'
            DataBinding.FieldName = 'LoadedDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Width = 54
          end
          object grdFSDBTableView1SenderLoadStatus: TcxGridDBColumn
            Caption = ' Status'
            DataBinding.FieldName = 'SenderLoadStatus'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dmsConnector.cxImageListLoadStatus
            Properties.Items = <
              item
                Description = 'Prelimin'#228'r'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Problem'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = 'Avslutad'
                ImageIndex = 2
                Value = 2
              end
              item
                Description = 'Prepaid'
                ImageIndex = 3
                Value = 3
              end
              item
                Description = 'Ready'
                ImageIndex = 4
                Value = 4
              end>
            Properties.ReadOnly = True
            Width = 64
          end
          object grdFSDBTableView1Pcs: TcxGridDBColumn
            Caption = ' Styck'
            DataBinding.FieldName = 'Pcs'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 70
          end
          object grdFSDBTableView1ActualM3: TcxGridDBColumn
            Caption = ' AM3'
            DataBinding.FieldName = 'ActualM3'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 26
          end
          object grdFSDBTableView1NominalM3: TcxGridDBColumn
            Caption = ' NM3 '
            DataBinding.FieldName = 'NominalM3'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 25
          end
          object grdFSDBTableView1LinealMeter: TcxGridDBColumn
            Caption = ' AM1'
            DataBinding.FieldName = 'LinealMeter'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 25
          end
          object grdFSDBTableView1MFBM: TcxGridDBColumn
            DataBinding.FieldName = 'MFBM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 33
          end
          object grdFSDBTableView1FS: TcxGridDBColumn
            DataBinding.FieldName = 'FS'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 52
          end
          object grdFSDBTableView1VERK: TcxGridDBColumn
            DataBinding.FieldName = 'VERK'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 58
          end
          object grdFSDBTableView1ANTPKT: TcxGridDBColumn
            Caption = ' Paket '
            DataBinding.FieldName = 'ANTPKT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 57
          end
          object grdFSDBTableView1SupplierNo: TcxGridDBColumn
            DataBinding.FieldName = 'SupplierNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
          end
          object grdFSDBTableView1AR: TcxGridDBColumn
            Caption = 'AR datum'
            DataBinding.FieldName = 'AR'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Width = 244
          end
          object grdFSDBTableView1AR_AV: TcxGridDBColumn
            Caption = ' AR av'
            DataBinding.FieldName = 'AR_AV'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 72
          end
          object grdFSDBTableView1LoadAR: TcxGridDBColumn
            Caption = ' AR'
            DataBinding.FieldName = 'LoadAR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            Width = 65
          end
          object grdFSDBTableView1PackageEntryOption: TcxGridDBColumn
            DataBinding.FieldName = 'PackageEntryOption'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 65
          end
          object grdFSDBTableView1Position: TcxGridDBColumn
            DataBinding.FieldName = 'Position'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 52
          end
          object grdFSDBTableView1ShortNote: TcxGridDBColumn
            Caption = 'Trucknotering'
            DataBinding.FieldName = 'ShortNote'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 98
          end
          object grdFSDBTableView1LocalShippingCompany: TcxGridDBColumn
            Caption = 'Lokal befraktare'
            DataBinding.FieldName = 'LocalShippingCompany'
            Width = 274
          end
          object grdFSDBTableView1Lagerkod: TcxGridDBColumn
            DataBinding.FieldName = 'Lagerkod'
            Width = 20
          end
        end
        object grdFSLevel1: TcxGridLevel
          GridView = grdFSDBTableView1
        end
      end
      object pnlLowerGridHdr: TPanel
        Left = 1
        Top = 1
        Width = 1232
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 211
          Top = 10
          Width = 47
          Height = 13
          Caption = 'Redodag:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 359
          Top = 34
          Width = 45
          Height = 13
          Caption = 'Sped. ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 926
          Top = 36
          Width = 42
          Height = 13
          Caption = 'Spedit'#246'r:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 769
          Top = 33
          Width = 48
          Height = 13
          Caption = 'Sped.Dat:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 800
          Top = 11
          Width = 19
          Height = 13
          Caption = 'B'#229't:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 211
          Top = 34
          Width = 33
          Height = 13
          Caption = 'Trp.ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 926
          Top = 10
          Width = 25
          Height = 13
          Caption = 'ETD:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 489
          Top = 33
          Width = 26
          Height = 13
          Caption = 'Note:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 361
          Top = 7
          Width = 33
          Height = 13
          Caption = 'L'#228'ngd:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object bbBookingForm: TBitBtn
          Left = 1097
          Top = 1
          Width = 131
          Height = 27
          Action = acBooking
          Caption = 'Bokning F10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 29
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD5B9BFDFDFDFDFDFDFDFDFDFDFD
            FDFDFDFDFDFDFDFDFDA4495B5BA4FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD4949
            52ED92494900FDFDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BED0909DB4949405C5B
            525252FDFDFDFDFDFDFDFDFDA4ED0909E49BDB4949490C5D005B52FDFDFDFDFD
            FDFDFDFDA4EDA4525B52E44949000C0C0A494952FD9B5BFDFDFD0AFDA4ED5252
            529BED8949000C0C0C0A135C0A525BA4FDFD0A0AFD9B9B9B0709EDE492400C0C
            0C0C5D5D13499B0AFDFD0A0F0F5BF609EDEDED9B520A0C0C0C0C0C5D5C0A4913
            52FD0F0F0F9B9BE407924A130C0C0C0C0C0C0C0C545C145D52FD0F0F0F0F0F49
            520AA4FD52520C0C0C0C0C0C0C0C5C5D52FDFD0F0F0F0F523F3F3FFDFD525252
            0C0C0C0C0C0C0C0C52FDFD0F0FFDFD3F3FB7BFFBFDFDFD52520C0C0C0C0C0C52
            52FDFD0F0FFDFDA4FBFBFBFBFBFDFDFD520C0C0C525252FDFD41FDFD0F0F0F0F
            FBFBFBFBFBFBFDFDFD52525252FDFD525252FDFDFDFD0F0F0FFBFBFBFBFBFDFD
            FDFDFDFDFD4141525215FDFDFDFDFDFD0FFD0FFBFBFBFDFDFDFDFDFDFD525252
            1515FDFDFDFDFDFD0FFD0FFDFDFDFDFDFDFDFDFDFD5252521515FDFDFDFDFDFD
            FDFD0FFDFDFDFDFDFDFDFDFDFDFDFD525215FDFDFDFDFDFDFDFD0FFDFDFDFDFD
            FDFDFDFDFDFDFDFD5252FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
            FD52FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
          ParentFont = False
          TabOrder = 8
        end
        object bbSave: TBitBtn
          Left = 1097
          Top = 28
          Width = 131
          Height = 24
          Action = acSaveBooking
          Caption = 'Spara Shift+F3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 20
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000942929009431
            31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
            4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
            5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
            73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
            8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
            A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
            BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
            CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
            E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
            33343433332505050B4848191516111B27384647452D0002131048191515111A
            05184046492E0102121048191515111C03032F42493200011210481915151120
            0601243A493200011210481915151221231D1F27322C04041310481915151515
            1515151313151515160F48190D111E282B292B2828292B26150C481909384544
            4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
            3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
            4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
            4343434343434630130F4848092D3A363636363636363A2A0748}
          ParentFont = False
          TabOrder = 9
        end
        object deShippersShipDate: TcxDBDateEdit
          Left = 824
          Top = 28
          DataBinding.DataField = 'ShippersShipDate'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 97
        end
        object ePreliminaryRequestedPeriod: TcxDBTextEdit
          Left = 267
          Top = 2
          DataBinding.DataField = 'PreliminaryRequestedPeriod'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 88
        end
        object ePanic_Note: TcxDBTextEdit
          Left = 519
          Top = 27
          DataBinding.DataField = 'Panic_Note'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Style.Color = clSkyBlue
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 243
        end
        object eSupplierReference: TcxDBTextEdit
          Left = 267
          Top = 27
          DataBinding.DataField = 'SupplierReference'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 88
        end
        object eShippingCompanyBookingID: TcxDBTextEdit
          Left = 410
          Top = 27
          DataBinding.DataField = 'ShippingCompanyBookingID'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 73
        end
        object eCarrierName: TcxDBTextEdit
          Left = 824
          Top = 6
          DataBinding.DataField = 'CarrierName'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clSilver
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 97
        end
        object deETD: TcxDBDateEdit
          Left = 973
          Top = 3
          DataBinding.DataField = 'ETD'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clSilver
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 121
        end
        object eClientName: TcxDBTextEdit
          Left = 973
          Top = 28
          DataBinding.DataField = 'ClientName'
          DataBinding.DataSource = dmcOrder.dsrcBooking
          ParentFont = False
          Properties.ReadOnly = True
          Style.Color = clSilver
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 121
        end
        object cxButton5: TcxButton
          Left = 6
          Top = 4
          Width = 97
          Height = 46
          Action = acNewLoadWithLO
          OptionsImage.Layout = blGlyphTop
          TabOrder = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cxButton6: TcxButton
          Left = 105
          Top = 4
          Width = 100
          Height = 46
          Action = acOpenLoad
          OptionsImage.Layout = blGlyphTop
          TabOrder = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object tedbLength: TcxDBTextEdit
          Left = 410
          Top = 2
          DataBinding.DataField = 'Length'
          DataBinding.DataSource = dmcOrder.dsrcSawmillLoadOrders
          ParentFont = False
          Style.Color = clYellow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 352
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 971
      Height = 57
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 971
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel6: TPanel
      Left = 971
      Top = 0
      Width = 200
      Height = 57
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 1171
      Top = 0
      Width = 63
      Height = 57
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 63
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object tcLO: TcxTabControl
    Left = 0
    Top = 57
    Width = 1234
    Height = 38
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 6
    Properties.TabIndex = 0
    Properties.Tabs.Strings = (
      'Lastorderlista')
    OnCanClose = tcLOCanClose
    OnChange = tcLOChange
    ClientRectBottom = 38
    ClientRectRight = 1234
    ClientRectTop = 35
  end
  object pnlLoad: TPanel
    Left = 89
    Top = 493
    Width = 1137
    Height = 540
    TabOrder = 3
    Visible = False
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Print'
      'Loads'
      'LOGridPopUp')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.Images = imglistActions
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <
      item
      end>
    ShowShortCutInHint = True
    UseSystemFont = False
    Left = 528
    Top = 392
    PixelsPerInch = 96
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
      FloatLeft = 151
      FloatTop = 383
      FloatClientWidth = 759
      FloatClientHeight = 130
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbNewLoadWithLO'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'lbOpenLoad'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbApplyUpdates'
        end
        item
          Visible = True
          ItemName = 'lbCancelUpdates'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
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
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Action = atRefresh
      Category = 0
      ShortCut = 113
    end
    object lbOpenLoad: TdxBarLargeButton
      Action = acOpenLoad
      Category = 0
    end
    object lbNewLoad: TdxBarLargeButton
      Action = atNewLoad
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acPrintmeny
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pmPrint
    end
    object lbApplyUpdates: TdxBarLargeButton
      Action = acSaveChanges
      Category = 0
    end
    object lbCancelUpdates: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'S'#246'k LO:'
      Category = 0
      Hint = 'S'#246'k LO:'
      Visible = ivAlways
    end
    object lbNewLoadWithLO: TdxBarLargeButton
      Action = acNewLoadWithLO
      Category = 0
    end
    object ccShowAll: TdxBarControlContainerItem
      Caption = 'Show All'
      Category = 0
      Hint = 'Show All'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acPrintLOWYSWYG
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acExportToXLS
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSearchLoadNo
      Category = 0
    end
    object bcLastLoadNoOpen: TdxBarCombo
      Caption = 'Last/LONr'
      Category = 0
      Hint = 'Last/LONr'
      Visible = ivAlways
      ShowCaption = True
      ItemIndex = -1
    end
    object bbGoToLoad: TdxBarButton
      Caption = #214'ppna'
      Category = 0
      Hint = #214'ppna'
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSkapaPaketKoder
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acLOLengths
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acAddLONrToSyncFile
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acReadImportedPackages
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acSearch
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = acUtlastningsSpec
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton33: TdxBarButton
      Action = acPrintLO_All_Mills_Manually
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = acPrintLO_Your_Mill_Manually
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acSendWoodxDeliveryMessage
      Category = 0
    end
    object bPrintLODittVerk: TdxBarButton
      Caption = 'LO &Ert verk'
      Category = 1
      Hint = 'LO Ert verk'
      Visible = ivAlways
      ShortCut = 16453
      OnClick = bPrintLODittVerkClick
    end
    object bPrintLOAllVerk: TdxBarButton
      Caption = '&LO alla verk'
      Category = 1
      Hint = 'LO alla verk'
      Visible = ivAlways
      ShortCut = 16460
      OnClick = bPrintLOAllVerkClick
    end
    object bAllaLasterPerLO: TdxBarButton
      Caption = '&Alla laster per LO och Verk'
      Category = 1
      Hint = 'Alla laster per LO och Verk'
      Visible = ivAlways
      ShortCut = 16449
      OnClick = bAllaLasterPerLOClick
    end
    object bbAvropVerk: TdxBarButton
      Caption = 'Avrop Verk'
      Category = 1
      Hint = 'Avrop Verk'
      Visible = ivAlways
      OnClick = bbAvropVerkClick
    end
    object bbTallyUSA: TdxBarButton
      Caption = 'F'#246'ljesedel (USA)'
      Category = 1
      Hint = 'F'#246'ljesedel (USA)'
      Visible = ivAlways
    end
    object bbTallyVer2: TdxBarButton
      Caption = 'F'#246'ljesedel'
      Category = 1
      Hint = 'F'#246'ljesedel'
      Visible = ivAlways
      OnClick = acPrintFSExecute
    end
    object bbTally_USA: TdxBarButton
      Caption = 'F'#246'ljesedel (USA) '
      Category = 1
      Hint = 'F'#246'ljesedel (USA) '
      Visible = ivAlways
      OnClick = bbTally_USAClick
    end
    object bbAvrakningSpecVer2: TdxBarButton
      Caption = 'Avr'#228'kning Spec'
      Category = 1
      Hint = 'Avr'#228'kning Spec'
      Visible = ivAlways
      OnClick = bbAvrakningSpecVer2Click
    end
    object dxBarButton1: TdxBarButton
      Action = acSamlingFS
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Action = acSpec_ALLA_Laster
      Category = 1
    end
    object dxBarButton18: TdxBarButton
      Caption = 'F'#246'ljesedel (dk)'
      Category = 1
      Hint = 'F'#246'ljesedel (dk)'
      Visible = ivAlways
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = '&LO alla verk (dk)'
      Category = 1
      Hint = 'LO alla verk (dk)'
      Visible = ivAlways
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = '&Alla laster per LO och Verk (dk)'
      Category = 1
      Hint = 'Alla laster per LO och Verk (dk)'
      Visible = ivAlways
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = '&Alla laster per LO och Verk (markerade laster)'
      Category = 1
      Hint = 'Alla laster per LO och Verk (markerade laster)'
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = 'Alla laster per LO (markerade laster)'
      Category = 1
      Hint = 'Alla laster per LO (markerade laster)'
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Alla laster per LO'
      Category = 1
      Hint = 'Alla laster per LO'
      Visible = ivAlways
      OnClick = dxBarButton23Click
    end
    object dxBarButton25: TdxBarButton
      Action = acPrintMarkedLOs
      Category = 1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFA563
        6BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA563
        6BFFA5636BFFA5636BFFA5636BFFA5636BFFFF00FFFFFF00FFFFFF00FFFF4A52
        63FFFFEFC6FFF7D6B5FFEFD6ADFFEFCE9CFFEFCE94FFEFC68CFFEFBD84FFEFBD
        7BFFEFBD84FFEFBD84FFEFC684FFA5636BFFFF00FFFFFF00FFFF636B84FF186B
        C6FF636B84FFF7DEBDFFEFD6ADFFEFCEA5FFEFCE9CFFEFC694FFEFC68CFFEFBD
        84FFEFBD7BFFEFBD7BFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFF31A5
        FFFF1073D6FF6B6B84FFF7DEBDFFEFD6B5FFEFCEA5FFEFCE9CFFEFC694FFEFC6
        8CFFEFBD84FFEFBD7BFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA563
        5AFF31A5FFFF1073D6FF5A6384FFF7DEBDFFEFD6ADFFEFCEA5FFEFCE9CFFEFC6
        94FFEFC68CFFEFBD84FFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA573
        6BFFFFF7EFFF31A5FFFF427BADFF8C635AFFAD7B73FF94635AFFAD7B6BFFCEA5
        84FFEFC694FFEFC68CFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA573
        6BFFFFFFFFFFF7EFE7FFAD8C8CFFB58C84FFDEBDA5FFEFD6B5FFD6B59CFFB58C
        73FFCEA584FFEFC694FFEFC68CFFA5636BFFFF00FFFFFF00FFFFFF00FFFFBD84
        6BFFFFFFFFFFFFF7EFFFAD847BFFDEC6B5FFF7E7CEFFF7E7C6FFFFFFF7FFD6B5
        9CFFAD7B6BFFEFCE9CFFEFCE94FFA5636BFFFF00FFFFFF00FFFFFF00FFFFBD84
        6BFFFFFFFFFFFFFFFFFF946363FFF7EFDEFFF7EFDEFFF7E7CEFFFFFFEFFFEFD6
        B5FF94635AFFEFCEA5FFF7D6A5FFA5636BFFFF00FFFFFF00FFFFFF00FFFFD694
        6BFFFFFFFFFFFFFFFFFFB58C84FFDEC6C6FFF7EFE7FFF7EFDEFFFFFFD6FFDEBD
        A5FFAD7B73FFF7D6FDFFEFCEA5FFA5636BFFFF00FFFFFF00FFFFFF00FFFFD694
        6BFFFFFFFFFFFFFFFFFFD6BDBDFFBD9494FFDEC6C6FFF7EFDEFFDEC6B5FFB58C
        84FFB58C7BFFDECEB5FFB5AD94FFA5636BFFFF00FFFFFF00FFFFFF00FFFFDE9C
        73FFFFFFFFFFFFFFFFFFFFFFFFFFD6BDBDFFB58C84FF946363FFAD847BFFCEA5
        9CFFA56B5AFFA56B5AFFA56B5AFFA5636BFFFF00FFFFFF00FFFFFF00FFFFDE9C
        73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFD6BD
        BDFFA56B5AFFE79C52FFE78C31FFB56B4AFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC6
        C6FFA56B5AFFFFB55AFFBD7B5AFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFD6BD
        BDFFA56B5AFFBD846BFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD694
        6BFFA56B5AFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object dxBarButton26: TdxBarButton
      Action = acPrintLOStatus
      Category = 1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFA563
        6BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA5636BFFA563
        6BFFA5636BFFA5636BFFA5636BFFA5636BFFFF00FFFFFF00FFFFFF00FFFF4A52
        63FFFFEFC6FFF7D6B5FFEFD6ADFFEFCE9CFFEFCE94FFEFC68CFFEFBD84FFEFBD
        7BFFEFBD84FFEFBD84FFEFC684FFA5636BFFFF00FFFFFF00FFFF636B84FF186B
        C6FF636B84FFF7DEBDFFEFD6ADFFEFCEA5FFEFCE9CFFEFC694FFEFC68CFFEFBD
        84FFEFBD7BFFEFBD7BFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFF31A5
        FFFF1073D6FF6B6B84FFF7DEBDFFEFD6B5FFEFCEA5FFEFCE9CFFEFC694FFEFC6
        8CFFEFBD84FFEFBD7BFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA563
        5AFF31A5FFFF1073D6FF5A6384FFF7DEBDFFEFD6ADFFEFCEA5FFEFCE9CFFEFC6
        94FFEFC68CFFEFBD84FFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA573
        6BFFFFF7EFFF31A5FFFF427BADFF8C635AFFAD7B73FF94635AFFAD7B6BFFCEA5
        84FFEFC694FFEFC68CFFEFC684FFA5636BFFFF00FFFFFF00FFFFFF00FFFFA573
        6BFFFFFFFFFFF7EFE7FFAD8C8CFFB58C84FFDEBDA5FFEFD6B5FFD6B59CFFB58C
        73FFCEA584FFEFC694FFEFC68CFFA5636BFFFF00FFFFFF00FFFFFF00FFFFBD84
        6BFFFFFFFFFFFFF7EFFFAD847BFFDEC6B5FFF7E7CEFFF7E7C6FFFFFFF7FFD6B5
        9CFFAD7B6BFFEFCE9CFFEFCE94FFA5636BFFFF00FFFFFF00FFFFFF00FFFFBD84
        6BFFFFFFFFFFFFFFFFFF946363FFF7EFDEFFF7EFDEFFF7E7CEFFFFFFEFFFEFD6
        B5FF94635AFFEFCEA5FFF7D6A5FFA5636BFFFF00FFFFFF00FFFFFF00FFFFD694
        6BFFFFFFFFFFFFFFFFFFB58C84FFDEC6C6FFF7EFE7FFF7EFDEFFFFFFD6FFDEBD
        A5FFAD7B73FFF7D6FDFFEFCEA5FFA5636BFFFF00FFFFFF00FFFFFF00FFFFD694
        6BFFFFFFFFFFFFFFFFFFD6BDBDFFBD9494FFDEC6C6FFF7EFDEFFDEC6B5FFB58C
        84FFB58C7BFFDECEB5FFB5AD94FFA5636BFFFF00FFFFFF00FFFFFF00FFFFDE9C
        73FFFFFFFFFFFFFFFFFFFFFFFFFFD6BDBDFFB58C84FF946363FFAD847BFFCEA5
        9CFFA56B5AFFA56B5AFFA56B5AFFA5636BFFFF00FFFFFF00FFFFFF00FFFFDE9C
        73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFD6BD
        BDFFA56B5AFFE79C52FFE78C31FFB56B4AFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC6
        C6FFA56B5AFFFFB55AFFBD7B5AFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFF7F7EFFFD6BD
        BDFFA56B5AFFBD846BFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7AD
        7BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD6946BFFD694
        6BFFA56B5AFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object dxBarButton29: TdxBarButton
      Action = acPrintFSMisMatch
      Category = 1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF424242FF424242FF424242FF4242
        42FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF8C8C8CFFC6C6C6FFFFFFFFFF848484FF8484
        84FF424242FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF8C8C8CFF424242FF424242FF424242FF4242
        42FF424242FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF8C8C8CFFC6C6C6FFFFFFFFFF848484FF8484
        84FF424242FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF00AD
        FFFFFF00FFFFFF00FFFFFF00FFFF8C8C8CFF848484FF848484FF848484FF8484
        84FF424242FFFF00FFFFFF00FFFFFF00FFFF00ADFFFFFF00FFFFFF00FFFFFF00
        FFFF006BFFFFFF00FFFF0084FFFF008484FF00FFFFFF00FFFFFF00CEFFFF00FF
        FFFF008484FF426BB5FFFF00FFFF006BFFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF00ADFFFF0084FFFF00FFFFFF00E7F7FF00E7FFFF00E7FFFF00E7
        F7FF00FFFFFF426BB5FF00ADFFFFFF00FFFFFF00FFFFFF00FFFF00ADFFFFFF00
        FFFFFF00FFFF5ABDFFFF00FFFFFF00E7FFFF00EFFFFF00EFFFFF00E7FFFF00E7
        FFFF00DEFFFF00FFFFFF426BB5FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF006B
        FFFF5ABDFFFFC6FFFFFF29EFFFFF00EFFFFF00F7FFFF00FFFFFF00FFFFFF00E7
        FFFF00E7FFFF00DEFFFF00FFFFFF426BB5FF006BFFFFFF00FFFFFF00FFFFFF00
        FFFF5ABDFFFFC6FFFFFF6BFFFFFF21FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00EFFFFF00E7FFFF00CEFFFF426BB5FFFF00FFFFFF00FFFFFF00FFFF006B
        FFFF5ABDFFFFC6FFFFFFE7FFFFFF31FFFFFF08FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00F7FFFF00E7FFFF00FFFFFF426BB5FF006BFFFFFF00FFFF00ADFFFFFF00
        FFFF5ABDFFFFC6FFFFFFE7FFFFFF6BFFFFFF31FFFFFF00FFFFFF00FFFFFF00FF
        FFFF00F7FFFF00FFFFFF00CEFFFF426BB5FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF5ABDFFFFC6FFFFFFE7FFFFFF73FFFFFF21FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00CEFFFF426BB5FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF006BFFFF5ABDFFFFC6FFFFFFE7FFFFFFE7FFFFFF00FFFFFF00FF
        FFFF00CEFFFF426BB5FF006BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF006B
        FFFF00ADFFFFFF00FFFFFF00FFFF5ABDFFFF5ABDFFFF10B5FFFF10B5FFFF10B5
        FFFF10B5FFFFFF00FFFFFF00FFFF00ADFFFF006BFFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object dxbbtnPrintTO_Manually: TdxBarButton
      Action = acPrintTO_Manually
      Category = 1
    end
    object dxbbtnPrintTO: TdxBarButton
      Action = acPrintTO
      Category = 1
    end
    object LO_YourMill_Manually: TdxBarButton
      Action = acPrintLO_Your_Mill_Manually
      Category = 1
    end
    object LO_All_Mills_Manually: TdxBarButton
      Action = acPrintLO_All_Mills_Manually
      Category = 1
    end
    object bbChangeLayout: TdxBarButton
      Action = acChangeLoadLayout
      Category = 2
    end
    object dxBarButton16: TdxBarButton
      Action = acAddToLastLoadList
      Category = 2
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Importera paket (woodx)'
      Category = 2
      Hint = 'Importera paket (woodx)'
      Visible = ivAlways
      ImageIndex = 17
    end
    object dxBarButton28: TdxBarButton
      Action = acChangeLOonLoad
      Category = 2
    end
    object dxBarButton30: TdxBarButton
      Action = acEmailaFS
      Category = 2
    end
    object dxBarButton2: TdxBarButton
      Action = acSetToNEW
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton3: TdxBarButton
      Action = acCancelChanges
      Category = 3
    end
    object dxBarButton4: TdxBarButton
      Action = atAcceptLoadOrder
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton5: TdxBarButton
      Action = atCompletedLoadOrder
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton6: TdxBarButton
      Action = atPreliminary
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton7: TdxBarButton
      Action = atProductionComplete
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton8: TdxBarButton
      Action = atRejectLoadOrder
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton9: TdxBarButton
      Action = atSetToONHOLD
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton10: TdxBarButton
      Action = acConfirmCancel
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton11: TdxBarButton
      Action = acChangeLOLayout
      Category = 3
    end
    object dxBarButton12: TdxBarButton
      Action = acShowLOGroupByBox
      Category = 3
    end
    object dxBarButton13: TdxBarButton
      Action = acExpandAll
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton14: TdxBarButton
      Action = acCollapseAll
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton15: TdxBarButton
      Action = acShowPriceList
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton27: TdxBarButton
      Action = acLOLengths
      Category = 3
      Style = cxStylePopMenu
    end
    object SpinEditRubrikFontSortimentsVy: TdxBarSpinEdit
      Caption = 'Tabell: Rubrikfont storlek'
      Category = 3
      Hint = 'Tabell: Rubrikfont storlek'
      Style = cxStylePopMenu
      Visible = ivAlways
      OnCurChange = SpinEditRubrikFontSortimentsVyCurChange
    end
    object SpinEditContentFontSortimentsVy: TdxBarSpinEdit
      Caption = 'Tabell: Cellfont storlek'
      Category = 3
      Hint = 'Tabell: Cellfont storlek'
      Style = cxStylePopMenu
      Visible = ivAlways
      OnCurChange = SpinEditContentFontSortimentsVyCurChange
    end
    object dxBarButton32: TdxBarButton
      Action = acChangePackage_Size
      Category = 3
      Style = cxStylePopMenu
    end
    object dxBarButton35: TdxBarButton
      Caption = 'Klar f'#246'r utlastning'
      Category = 3
      Hint = 'Klar f'#246'r utlastning'
      Style = cxStylePopMenu
      Visible = ivAlways
      OnClick = dxBarButton35Click
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 528
    Top = 224
    Bitmap = {
      494C010125002900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000F000000001002000000000000068
      01000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002201BE0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002201BE002201BE0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000D5DC0000D5DC0000D5DC0000BEC40000BEC4000074770000B5B90000B5
      B90000BEC40000BEC400000000002201BE002201BE0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000A6AA0000A6AA0000A6AA0000D5DC0000D5DC000074770000D5DC0000D5
      DC0000B5B90000B5B900000000002201BE002201BE0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000D5DC0000D5DC0000D5DC0000B5B90000B5B9000074770000BEC40000BE
      C40000D5DC0000D5DC00000000002201BE002201BE0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000BEC40000BEC40000BEC40000D5DC0000D5DC000074770000D5DC0000D5
      DC0000A6AA0000A6AA00000000002201BE002201BE00000000001D019E00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      0000007477000074770000747700007477000074770000747700007477000074
      77000074770000747700000000002201BE002201BE00000000002501CD001D01
      9E00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000B5B90000B5B90000B5B90000D5DC0000D5DC000074770000B5B90000B5
      B90000D5DC0000D5DC00000000002201BE002201BE00000000002501CD002501
      CD001D019E00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002201BE002201BE000000
      000000D5DC0000D5DC0000D5DC0000BEC40000BEC4000074770000BEC40000BE
      C40000C5CA0000C5CA00000000002201BE002201BE00000000002401CB002501
      CD002501CD001D019E00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00000000002201BE000000
      000000A6AA0000A6AA0000A6AA0000D5DC0000D5DC000074770000B5B90000B5
      B90000D5DC0000D5DC00000000002201BE00000000002301C200FFFFFF002401
      CB002501CD002501CD001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002201BE002201BE00FFFFFF002301
      C2002401CB002501CD001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF001D01
      9E001F01A9002001AF002101B8002001AF002101B8002301C0002201BE002201
      BE002201BE002201BE002201BE001D019E002201BE002201BE002201BE002301
      C200FFFFFF002401CB001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF001D019E001F01A9002001AF002101B8002001AF002101B8002301C0002201
      BE002201BE002201BE002201BE002201BE001D019E002201BE002201BE002201
      BE00FFFFFF002301C5001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF001D019E001F01A9002001AF002101B8002001AF002101B8002301
      C0002201BE002201BE002201BE002201BE002201BE001D019E002201BE002201
      BE002201BE002301C2001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF001D019E001F01A9002001AF002101B8002001AF002101
      B8002301C0002201BE002201BE002201BE002201BE002201BE001D019E002201
      BE002201BE002201BE001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF001D019E001F01A9002001AF002101B8002001
      AF002101B8002301C0002201BE002201BE002201BE002201BE002201BE001D01
      9E002201BE002201BE001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF001D019E001F01A9002001AF002101
      B8002001AF002101B8002301C0002201BE002201BE002201BE002201BE002201
      BE001D019E002201BE001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001D019E001F01A9002001
      AF002101B8002001AF002101B8002301C0002201BE002201BE002201BE002201
      BE002201BE001D019E001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001D019E001F01
      A9002001AF002101B8002001AF002101B8002301C0002201BE002201BE002201
      BE002201BE002201BE001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF001D01
      9E001D019E001D019E001D019E001D019E001D019E001D019E001D019E001D01
      9E001D019E001D019E001D019E00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
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
      0000527BC600527BC60000000000000000000000000000000000000000000000
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
      0000527BC6001873F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC6000073FF000073F700296BC600527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001D019C001D019C001D019C001D019C001D019C001D019C001D019C001D01
      9C001D019C001D019C001D019C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC6000073FF00007BFF000073F700186BD600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C002101B6002201BE002201BE002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C001D019C000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C60000000000000000000000000040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      000040E0E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC6000084FF000084FF000084FF000084FF00107BEF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001F01A9002101B6002201BE002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002601D3001D019C0000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C60000000000000000000000000040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      000040E0E00040E0E00040E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600009CFF00008CFF00008CFF00008CFF000884F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001F01A9002101B6002201BE002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002401CB002601D3001D019C00000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040E0E00040E0E00040E0E00040E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000527BC60000B5FF00009CFF00008CFF000094FF000894
      F700527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001D019E001F01A9002101B6000000000000000000000000002201BE002201
      BE002201BE002201BE001D019C002301C2002401CB002601D3001D019C000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      000040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0
      E000000000000000000040E0E00040E0E00040E0E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC60000C6FF0000B5FF000094FF00009C
      FF00009CFF001084EF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001D019E001F01A9002101B6002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002201BE002301C2002401CB002601D3001D01
      9C000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000040E0E00040E0E00040E0E00040E0E00040E0E00040E0
      E00040E0E00040E0E000000000000000000040E0E00040E0E00040E0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC60000D6FF0008C6FF0000A5
      FF00009CFF00009CFF000894F700527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001D019E001F01A9002101B6002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002201BE00FFFFFF002301C2002401CB002601
      D3001D019C0000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000040E0E00040E0E00040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E0000000000040E0E00040E0E00040E0
      E000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC60000E7FF0018DE
      FF0008BDFF0000ADFF0000A5FF00009CFF00527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001D019E001F01A9002101B6002201BE001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002201BE00FFFFFF002201BE002301C2002401
      CB002601D3001D019C00000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040E0E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC60008F7
      FF0029F7FF0021D6FF0000B5FF0000A5FF0000A5FF00527BC6004A7BB5000000
      0000000000000000000000000000000000000000000000000000000000001D01
      9C001B0192001D019E001F01A9002101B6001D019C002201BE002201BE002201
      BE002201BE002201BE001D019C002201BE002201BE002201BE00FFFFFF002301
      C2002401CB002601D3001D019C000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000000040E0
      E000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC600527BC600527BC600527BC600527BC60000EF
      FF0008FFFF0031F7FF0039E7FF0010BDFF0000ADFF0000A5FF000894F700527B
      C600000000000000000000000000000000000000000000000000000000001D01
      9C001D019C001D019C001D019C001D019C001D019C001D019C001D019C001D01
      9C001D019C001D019C001D019C002201BE002201BE002201BE00FFFFFF002201
      BE002301C2002401CB001D019C000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000000040E0
      E00040E0E00040E0E00000000000000000000000000000000000000000000000
      000000000000527BC60029ADFF0000C6FF0000DEFF0000EFFF0000F7FF0000E7
      FF0000F7FF0000FFFF0021FFFF004AEFFF0018CEFF0000ADFF0000A5FF00009C
      FF00527BC6000000000000000000000000000000000000000000000000001701
      7E0017017E00180187001B0192001D019E001F01A9002101B6002201BE002201
      BE002201BE002301C2002401CB001D019C002201BE002201BE002201BE002201
      BE00FFFFFF002301C2001D019C000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040E0
      E00040E0E00040E0E00040E0E000000000000000000000000000000000000000
      000000000000527BC60031ADFF0000C6FF0000DEFF0000F7FF0000FFFF0000F7
      FF0000E7FF0000F7FF0000FFFF0008FFFF0039FFFF0029DEFF0000B5FF0000A5
      FF000094FF00527BC60000000000000000000000000000000000000000000000
      000017017E0017017E00180187001B0192001D019E001F01A9002101B6002201
      BE002201BE002201BE002301C2002401CB001D019C002201BE002201BE002201
      BE00FFFFFF002201BE001D019C000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      00000000000040E0E00040E0E00040E0E0000000000000000000000000000000
      000000000000527BC60039A5FF0000C6FF0000DEFF0000EFFF0000F7FF0000F7
      FF0000EFFF0000DEFF0000FFFF0000FFFF0000FFFF0021FFFF0039EFFF0008C6
      FF00009CFF00527BC60000000000000000000000000000000000000000000000
      00000000000017017E0017017E00180187001B0192001D019E001F01A9002101
      B6002201BE002201BE002201BE002301C2002401CB001D019C002201BE002201
      BE002201BE002201BE001D019C000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0
      E00040E0E000000000000000000040E0E0000000000000000000000000000000
      000000000000527BC6006BB5FF0008C6FF0018E7FF0039E7FF004AEFFF005AF7
      FF0042F7FF0018FFFF0008FFFF0000FFFF0000FFFF0000FFFF0008FFFF0021FF
      FF0010D6FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000017017E0017017E00180187001B0192001D019E001F01
      A9002101B6002201BE002201BE002201BE002301C2002401CB001D019C002201
      BE002201BE002201BE001D019C000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7000000000000000000000000000000000040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      000040E0E000000000000000000040E0E00040E0E00040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E000000000000000000000000000000000000000
      00000000000000000000527BC600527BC60084B5FF0018DEFF0008F7FF0008FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F7FF0000EFFF0018DE
      F70063DEF700527BC60000000000000000000000000000000000000000000000
      000000000000000000000000000017017E0017017E00180187001B0192001D01
      9E001F01A9002101B6002201BE002201BE002201BE002301C2002401CB001D01
      9C002201BE002201BE001D019C00000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700000000000000000000000000000000000000000040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      000040E0E00040E0E00040E0E000000000000000000040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E0000000000000000000000000000000
      000000000000000000000000000000000000527BC600527BC60084B5FF0031D6
      FF0008F7FF0000FFFF0000FFFF0000F7FF0000D6FF0000BDFF0000B5FF0018A5
      F700527BC6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017017E0017017E0017017E001B01
      92001D019E001F01A9002101B6002201BE002201BE002201BE002301C2002401
      CB001D019C002201BE001D019C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040E0E00040E0E00040E0E00040E0E000000000000000000040E0
      E00040E0E00040E0E00040E0E00040E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC600527B
      C600527BC60084B5FF0018E7FF0000F7FF0000EFFF0000CEFF0000ADFF0000A5
      FF0010A5FF00527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000017017E0017017E001501
      76001B0192001D019E001F01A9002101B6002201BE002201BE002201BE002301
      C2002401CB001D019C001D019C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040E0E00040E0E00040E0E00040E0E00040E0E00040E0
      E00040E0E000000000000000000040E0E00040E0E00040E0E00040E0E0000000
      00000000000040E0E00040E0E00040E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC60084B5FF0029DEFF0000EFFF0000DEFF0000B5
      FF0000A5FF0084B5FF00527BC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000017017E001701
      7E00150176001B0192001D019E001F01A9002201BE002201BE002201BE002201
      BE002301C2002401CB001D019C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040E0E00040E0E00040E0E00040E0
      E00040E0E00040E0E00040E0E000000000000000000040E0E00040E0E00040E0
      E00040E0E000000000000000000040E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC600527BC60084B5FF0042DEFF0010D6
      FF0000B5FF005AA5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001701
      7E0017017E001D019C001D019C001D019C001D019C001D019C001D019C001D01
      9C001D019C001D019C001D019C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040E0E00040E0
      E00040E0E00040E0E00040E0E00040E0E00040E0E000000000000000000040E0
      E00040E0E00040E0E00040E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC600527BC60084B5
      FF006BC6FF0052A5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040E0E00040E0E00040E0E00040E0E00040E0E00040E0E00040E0E0000000
      00000000000040E0E00040E0E00040E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000527B
      C600527BC600527BC60000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000003939
      39006B6B6B000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000005A5A5A004242
      420052525200A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A009494
      94008C8C8C007B7B7B00B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424242004A4A4A0094949400D6D6
      D600BDBDBD008C8C8C00B5B5B500000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000393939005252520094949400CECECE00CECE
      CE009C9C9C00B5B5B50000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000292929005A5A5A009C9C9C00C6C6C600C6C6C6009494
      9400A5A5A500000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B00181818009C9C9C00B5B5B500C6C6C60094949400A5A5
      A50000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000FFFF0000FFFF000000
      FF000000FF0000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C6000000FF000000FF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A00393939008C8C8C00ADADAD0094949400ADADAD000000
      000000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      42004263630084848400000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000FF000000FF000000FF0000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B00181818004A4A4A006B6B6B0084848400A5A5A500000000000000
      0000000000000000000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      2100846363000021420000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000000FF000000FF0000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      000094846B0031313100524A4A004A4A4A004242420094846B00A5A5A5006363
      6300393939006B6B6B009C9C9C0094949400CECECE0000000000000000000000
      000000000000000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000FF000000FF00C6C6C600C6C6C600C6C6C6000000
      FF000000FF00C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B0000000000000000000094949400524A
      3900735A4A009C948400B5ADA500B5AD9C00A5948400846B5A004A3931001818
      180052524A00ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A50042424200000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF000000FF000000FF0000FFFF000000FF000000
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000094949C004A4239009484
      6B00F7E7CE00FFFFEF00FFF7E700FFF7DE00FFF7DE00FFE7D600A59484004A42
      39006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF000000FF000000FF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B000000000000423939009C948400FFF7
      E700FFF7DE00E7CEB500DEC6AD00DEC6AD00EFD6BD00FFE7CE00FFFFF700A59C
      94006B6363000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      8400002184000021840042424200000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF000000FF000000FF000000FF000000FF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B000094949C0094847300EFDECE00FFEF
      E700E7C6A500EFBD8C00EFBD9C00EFBD9C00EFC69400DEBD9400FFEFE700FFEF
      D6007B6B5A00737B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      8400002184004242420042424200000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E7000000FF000000FF0000E7E70000E7E7000000FF000000
      FF0000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B0000A59C8C00C6B59400FFE7CE00FFE7
      D600EFC6AD00EFBD8C00EFBD9400EFBD9400EFBD8C00E7C69C00F7E7CE00FFFF
      DE009C8C73007373730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      420042424200000000000000000042002100000000000000000000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C6000000
      FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00009C9C9C00D6BDA500FFE7CE00FFE7
      D600F7DEC600F7CEAD00F7CEA500F7CEA500EFC6AD00FFDEC600FFE7CE00FFEF
      CE00AD9C8C008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      00000000000042424200424242004242420000000000000000000000000000FF
      FF000000FF000000FF0000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B0000A59C8C00CEBDA500FFDEBD00FFDE
      C600F7DEC600F7D6BD00F7D6B500F7D6BD00F7D6BD00FFDEC600F7DEBD00FFEF
      CE00B5A594008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      FF000000FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B0000A59C8C00C6BDA500F7D6B500FFD6
      B500FFDEC600FFEFD600FFF7DE00FFF7DE00FFE7CE00F7D6BD00FFD6B500FFF7
      C600A5947B0084848C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A500000000000000FF000000FF000000
      FF000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C6000000FF000000FF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B000000000000A59C8C00F7CEAD00FFD6
      FD00FFE7D600F7FFFF00F7FFFF00FFFFF700FFFFF700FFDED600FFD6B500EFD6
      A50094947B00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000FF000000FF000000FF000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF000000FF000000FF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000094948C00B5AD9C00F7CE
      A500FFE7CE00F7FFFF00F7FFFF00FFFFFF00FFF7EF00FFDEC600FFDEB500ADA5
      8C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000FF000000FF00000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B000000000000000000009CA5A500BDB5
      9400F7D6AD00FFEFD600FFFFE700FFF7DE00FFE7BD00EFD6A500CEBDA5009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500B5B5A500DECEAD00EFD6A500E7CE9C00DEC6AD00CEC6B500A5A59C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500B5B5A500000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      4200000000000000000000000000000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C
      2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      4200000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D6000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C
      2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C
      2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D6000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D6000000000000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B500000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D6000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B5000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE700000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B50000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B50000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
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
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      00000000000000000000000000007B737B007B737B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      00000000000000000000000000000000000000000000C66B6B00CE636300B552
      52009C6B6B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500CE6363008C420800843910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000008473730084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A009C6B6B00A58C8C0094292900B5736B00DECECE00C6CEC600F7F7F700FFFF
      FF00E7E7E700CE636300A5392100C65A5A009C4A4A0000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000947B9400734A52007B3931007B31
      21007B422900735242006B5A5200848484000000000000000000000000007B73
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      000000000000000000000000000000000000B5847300C66B6B00CE636300BD5A
      5A00A5737300A5848400942121008C181800B5736B00EFE7E700D6DEDE00F7F7
      F700FFFFFF00CE636300B5393100C65A5A009C4A4A004A0052009C4A4A000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073425A0063397300422163004A2973005231
      7B0042216300734263007B42520073524200635A5A0084848400948494007B73
      7B007B737B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      080000000000000000000000000000000000B5847300C66B6B00CE636300B552
      5200A5737300AD8C8C00942929009429290094313100B5B5B500EFE7E700D6E7
      DE00F7F7F700CE636300B5393900C65A5A009C4A4A0021210000C65A5A009C4A
      4A000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000633173004A297300635A7B0094849400A594A500A59C
      FD00948C9C009C94A500A594A500845A7B007342390052425A00423152000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C390800000000000000000000000000B5847300C66B6B00CE636300B552
      5200B5737300C6ADAD00BD9C9C00BD9C9C00BDA5A500BDA5A500B5B5B500EFE7
      E700C6CEC600CE636300B5393900C65A5A009C4A4A00B5524200C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063397B0042315A007B738400A59CAD00A594A500B5A5B5009C8C
      A500736B7B009C9CAD00A59CB500AD9CB5006B526B0052394A005A525A000000
      000000000000000000000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C3908000000000000000000B5847300C66B6B00CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300B54A4A00C65A5A009C4A4A00CE5A5200C65A5A009C4A
      4A004A0052009C4A4A0000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C739C004A3963007B737B00AD9CAD00C6BDC600C6B5BD00CEBDC600BDAD
      BD00ADA5B500ADA5B500948CA5008C8C9C00B5ADBD005A426B005A4A4A000000
      000000000000000000000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C3908000000000000000000B5847300AD4A4A00AD4A4A00CE8C
      8C00CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
      7300DE7B7B00D66B6B00AD424200CE6363009C4A4A00C6525200C65A5A009C4A
      4A0021210000C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A316B00948494009C949C00A59CA500D6CECE00D6CECE00D6CECE00CEC6
      CE00C6BDC600CEC6C600A59CAD009494AD00A59CB500A59CAD004A425A008C8C
      8C0000000000000000000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C39080000000000B5847300A5423900C6847B00F7F7
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700E7949400AD313100CE6363009C4A4A00B5525200C65A5A009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B5A6B00BDA5B500CEBDC600D6CECE00DED6D600DED6D600D6CED600D6CE
      D600D6CECE00D6CECE00C6BDC600A5A5B500948CA500A5A5B5005A6384007373
      730000000000000000000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C39080000000000B5847300A5423900C6848400FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100CE6363009C4A4A00B54A4A00C65A5A009C4A
      4A00C65A4A00C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00AD949C00C6ADB500C6B5BD00DED6D600DED6DE00DED6DE00DED6D600C6BD
      CE00D6CECE00D6CECE00CEBDC600ADA5B50084849400A59CB500737B8C006B6B
      6B0000000000000000000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C390800B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00BDA5AD00C6ADB500C6BDBD00DED6DE00DED6DE00DED6DE00B5ADB500736B
      9400CEBDC600CEC6C600C6B5C600ADA5BD009C9CAD00A59CB5008C848C006B6B
      7B0000000000000000000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00BDA5AD00B5A5AD00CEC6C600D6CED600DED6DE00DED6D600948CA500635A
      8C00CEBDC600C6BDC600BDADBD00ADA5B500848494009C9CAD00847B84007B7B
      840000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B5A
      6B00A5949C009C949C00B5ADAD00BDB5BD00DED6DE00DED6D6007B739400AD9C
      B500C6BDC600BDB5C600B5ADBD009C9CAD009C94AD00A59CAD006B5A6B009494
      940000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000847B8C00C6B5C600C6BDBD00D6CED600D6CED600C6BDC6007B7B8400B5AD
      BD00C6B5C600B5ADC600A59CB5009494AD00A59CB500A594A5005A525A000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C390800B5847300A5423900C6847B00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000002110
      290042424A00ADADB500C6BDC600B5ADBD00B5B5B5009C949C006B6B7300BDB5
      C600BDB5C600ADB5C600848CA50084849C00A59CAD00736373008C8C8C000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C39080000000000B58C5A009C5A2100B58C6B00C6CE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD7B730094100800841010009C4A4A00BD525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      000000000000000000000000000000000000000000000000000000000000634A
      5A00181821004A424A00BDADB500B5ADBD00A5ADC6006B7384007B849C00B5B5
      CE00A5ADC6009CADCE009CA5C6009C94AD00736B7B0063636300000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C39080000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700CE636B00B5424200BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF0000000000000000000000000000000000000000000000000000000000BDA5
      B5007B7B7B0018101800524A5A009C949C009CA5B5006B94AD006B94AD007BAD
      C60084A5BD008C94AD008C8494005A525A003131390000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C3908000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00CEC6C600D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00FFF7F700E7949400AD313100BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000C6BDC600736B730018182100312142006B63730073738400525A7300525A
      73004A4A6300524A5A0029293900181821004A4A520000000000000000000000
      000000000000000000000000000000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C390800000000000000000000000000000000000000000000000000B584
      7300945A0800B5846300FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C67B7B0094100800841010009C4A
      4A00B55A4200BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5ADB5008C6B7B006B526300524A6300847B84009C9CA5005A637B003131
      420018182900181821001818210018314200636B730000000000000000000000
      000000000000000000000000000000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      080000000000000000000000000000000000000000000000000000000000B58C
      6B00945A0800B58C6B00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600D6ADAD00BD7B7300BD737300CE63
      6B00B54A3900BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6BDC600ADADB50000000000000000000000000000000000BDBDCE004A42
      5A006B52630073636B0042425200525263000000000000000000000000000000
      000000000000000000000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900C6847B00FFFFFF00CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600FFF7F700E794
      9400A5392100BD5A5A009C4A4A0000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5ADB500B5B5B500C6C6C600000000000000000000000000000000000000
      00009C8C94008C848C008C849400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900BD7B7300FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700CE8C
      8C009C311800BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5ADB500B5ADB500B5B5B500BDBDBD00C6C6C600C6BDC600C6BD
      C600ADA5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300945A0800B57B7300C6CECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BD84
      7B0094311800943131009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5ADB500ADA5AD009C949C00ADA5AD00ADA5AD00A59C
      FD00B5ADBD000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000422100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0039ADDE0039ADDE0039ADDE0039ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042210000A52100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039ADDE0094DEEF007BE7F7005AD6EF0052C6E70052C6
      E70042BDDE0029ADD60018A5D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021A5D600A5DEF700BDFFFF0094FFFF009CFFFF008CEF
      FF007BE7F70073DEF7005ACEEF004AC6E70039B5DE0029ADD60029ADDE000000
      0000000000000000000000000000000000000000000000A5E70000A5E70000A5
      E70000A5E70000A5E7000042210000A5210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018A5D6006BC6E700BDFFFF0094FFFF0094F7FF0094F7
      FF0094FFFF009CF7FF0094F7FF0094F7FF0084EFFF007BE7F7006BDEF70052C6
      E70021A5D6000000000000000000000000000000000000A5E70084E7E70084E7
      E70084E7E7000042210000A5210000A5210000A5210000A5210000A5210000A5
      2100004221000000000000A5E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD6005AC6E700A5E7F700A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF006BCE
      E70042BDE7000000000000000000000000000000000000A5E70084E7E70084E7
      E7000042210000A5210000A5210000A521000042210000A5210000A5210000A5
      21000042210084E7E70084E7E70000A5E7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF7005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039B5DE005AC6E70094DEEF00A5FFFF008CF7FF0094F7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7006BD6F70029ADD60000000000000000000000000000A5E700000000000042
      210000A5210000A5210000A521000042210000000000000000000042210000A5
      210000A521000042210084E7E70084E7E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0039BD
      DE00000000000000000000000000000000000000000039ADDE0039ADDE0039AD
      DE0039ADDE0039ADDE0039B5DE007BE7F7005AC6E700ADEFF70094FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E7007BE7F7004AC6E700000000000000000000000000000000000042210000A5
      210000A52100004221000042210084E7E70084E7E70084E7E7000042210000A5
      210000A521000042210084E7E70084E7E70084E7E70000A5E70000A5E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0063D6
      EF0018A5D6000000000000000000000000000000000039ADDE0094DEEF007BE7
      F7005AD6EF0052C6E70039B5DE008CEFFF005AC6E700ADE7F700A5FFFF008CF7
      FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF006BCE
      E70084EFFF006BD6F7000000000000000000000000000042210000A5210000A5
      21000042210084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A521000042210084E7E70084E7E70084E7E70084E7E70000A5
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF008CEF
      FF0029ADD6000000000000000000000000000000000021A5D60084DEF70063D6
      EF0063D6EF0073E7F70039B5DE0094F7FF0073E7F7006BC6E700A5E7F700ADEF
      F700A5EFF700ADEFF700A5F7FF008CF7FF0084EFFF008CEFFF008CEFFF006BCE
      E70084EFFF008CEFFF0031B5DE00000000000000000000422100004221000042
      21000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A5210000422100000000000000000084E7E70084E7E70084E7
      E70000A5E70000A5E700000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF00A5F7
      FF004AC6E7000000000000000000000000000000000018A5D6006BCEE70073E7
      F70073E7F7007BE7F70039B5DE0094F7FF0094FFFF005AC6E7005AC6E7005AC6
      E7005AC6E7005AC6E700A5DEF700ADF7FF0094F7FF008CEFFF0084EFFF006BCE
      E70073E7FF009CFFFF0052C6E700000000000000000000000000000000000000
      00000000000000A5E70000A5E70084E7E70084E7E70084E7E70084E7E70084E7
      E7000042210000A5210000A521000042210084E7E7000000000084E7E70084E7
      E70084E7E70000A5E70000A5E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF00A5F7
      FF00A5F7FF0021A5D60000000000000000000000000029ADD6005AC6E7008CEF
      FF0084EFFF008CF7FF0042B5DE0094EFF70094FFFF009CFFFF0094FFFF008CF7
      FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7F700ADF7FF00A5F7FF008CE7
      FF0094EFFF00B5FFFF0094EFF70029ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042210000A5210000A52100004221000000000000000000000000000000
      000084E7E70084E7E70084E7E70000A5E70000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF0094F7
      FF0094F7FF0042BDE70000000000000000000000000039B5DE005AC6E70094EF
      F70094FFFF0094F7FF0039B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6E70094DEEF009CDEF70094DE
      EF009CDEF700A5E7F700A5E7F70042B5DE00000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000042210000A5210000A5210000422100A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF008CEFFF008CEFFF007BDEFF0094EFFF00A5F7
      FF00A5F7FF006BD6EF0018A5D600000000000000000039B5DE007BE7F7005ACE
      EF0094FFFF0094FFFF0042B5DE0094F7FF0094FFFF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF007BEFF7005AC6E7005AC6E7005AC6
      E70029ADD60029ADD60039ADDE0029ADD600000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF000042210000A5210000A5210000422100F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE700BDE7F700BDE7F700BDE7F700BDE7F700CEEFF700CEEF
      F700CEEFF700C6EFFF0029ADD600000000000000000039B5DE008CEFFF005AC6
      E700A5EFF7009CFFFF0042B5DE00A5F7FF009CFFFF0094F7FF0094F7FF008CF7
      FF0094EFFF0094EFF70094EFF70094EFF70094EFFF0094EFFF009CF7FF0063D6
      EF0000000000000000000000000000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5000042210000A5210000A5210000422100A5A5A5000000
      0000FFFFFF000000000000A5E70084E7E700000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF005AD6EF005AD6EF005AD6EF0031B5DE0021A5D60029AD
      D60029ADD60029ADD60021A5D600000000000000000039B5DE0094F7FF0073E7
      F7006BC6E700A5E7F700ADEFF70029ADD600B5FFFF009CFFFF00A5FFFF009CFF
      FF005ACEEF0039ADDE0042B5DE0042B5DE0042B5DE004ABDE70052C6E70042B5
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042210000A5210000A5210000422100000000000000
      00000000000042E7E70042E7E70000A5E70000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF0039BDE700000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF005AC6E7005AC6E7005AC6E70029ADD60029ADD60029ADD60029ADD60029AD
      D60029ADD60084EFFF006BCEE70073E7FF009CFFFF0052C6E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A521000042210084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF0039B5DE00000000000000
      0000000000000000000000000000000000000000000042B5DE0094EFF70094FF
      FF009CFFFF0094FFFF008CF7FF0084EFFF0073E7F7005AC6E7005AC6E700ADE7
      F700ADF7FF00A5F7FF008CE7FF0094EFFF00B5FFFF0094EFF70029ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000422100004221000042210042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE70021A5D600000000000000
      0000000000000000000000000000000000000000000039B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF009CF7FF0084F7FF005AC6E7005AC6
      E70094DEEF009CDEF70094DEEF009CDEF700A5E7F700A5E7F70042B5DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5E70000A5
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE0094F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BEF
      F7005AC6E7005AC6E7005AC6E70029ADD60029ADD60039ADDE0029ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A5E70000A5E70042E7E70042E7E7000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E7000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042B5DE00A5F7FF009CFF
      FF0094F7FF0094F7FF008CF7FF0094EFFF0094EFF70094EFF70094EFF70094EF
      FF0094EFFF009CF7FF0063D6EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E7000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD600B5FF
      FF009CFFFF00A5FFFF009CFFFF005ACEEF0039ADDE0042B5DE0042B5DE0042B5
      DE004ABDE70052C6E70042B5DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029ADD60029AD
      D60029ADD60029ADD60029ADD60029ADD6000000000000000000000000000000
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
      0000000000000000000000000000000000000063210000632100000000000000
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
      00000000000000000000000000000063210000C6210000C62100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084424200844242008442
      4200844242008442420084424200844242008442420084424200844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000E7630000E7630000C621000063
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C6630000844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF000063210000E7630000E7630000E7630000E7630000C6
      210000632100C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000C684
      0000C6840000C6840000C6840000C6840000C68400008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000063210000E7630000C6210000C6210000C6210000E7630000E7
      630000C6210000632100C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00C6A50000844242008442420084424200A5A5A5008442420000FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000063210000E7630000E7630000E76300006321000063210000E7630000E7
      630000C6210000C621000063210000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6A5000084424200C6C6C600A5A5A5008442420000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000632100C6C6C600C6C6C6000063210000E7
      630000E7630000C6210000C62100006321000063210000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600A5A5A50084424200C6C6C60000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000063
      210000E7630000C6210000C621000063210000FFFF0000FFFF00C6C6C6000063
      210000E7630000E7630000E7630000C6210000C621000063210000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF00F7FFFF00C6C6C600A5A5A50084424200C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000C6C6C6000063210000E7
      630000E7630000E7630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000E7630000E7630000C621000063210000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF0000FFFF0000FFFF00C663
      0000C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000FFFF000063210000E7
      630000E763000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF000063210000E7630000E7630000E7630000E7630000C621000063
      210000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF000042210000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF00C684630000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000063210000E7630000E7
      630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000632100C6C6C60000E7630000E7630000E7630000C6
      21000063210000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF00C684
      0000F7FFFF008442420084424200A5A5A5008442420000FFFF00C684630000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      210000632100C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000FFFF000063210000E7
      63000063210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000E7630000E7630000E7
      630000C621000063210000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000C6840000F7FF
      FF00C6A50000C6A5000084424200C6C6C600A5A5A5008442420000FFFF00F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00006321000063
      2100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6C6C600C6C6C6000063
      2100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E7000063210000E7630000E7
      630000E7630000C62100006321000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100008421000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000063
      2100006321000063210000632100C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E7000063210000E7
      630000E7630000E7630000632100000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000063210000632100006321000063210000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E7000063
      210000E7630000E7630000632100000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000422100008421000042
      210000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000844242008442
      4200844242008442420084424200844242008442420084424200F7CEA500F7CE
      A50000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000632100006321000063210000E7E700C6C6C60000E7
      E70000E7E70000632100006321000063210000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000063210000E763000063210000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C663000084424200F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000632100006321000063210000632100C6C6C60000FF
      FF0000632100006321000063210000632100C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E70000632100006321000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000632100006321000063
      210000632100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF0000422100008421000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF000063210000632100006321000063
      2100006321000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000422100004221000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF006B73FF003131B5003131BD003131BD003131BD003131C6003131
      C6003131BD003131BD003131B5003131B5003131AD003131A5006363FF00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131C6003131DE003131EF003131F7003131F7003131EF003131
      F7003131EF003131EF003131EF003131E7003131DE003131C60031319C00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C60000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131D6003131EF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131E7003131CE003131AD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131E7003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE003131B500FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF00000000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      0000FFFFFF003131EF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131E7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FF000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00000000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003131EF003131C600FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00848CFF00848CFF00848CFF00848CFF00848C
      FF00848CFF00848CFF00848CFF00848CFF003131F7003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF000000000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003139FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000FFFFFF003139FF003942FF003942FF003139FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC60000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000FFFFFF003139FF005252FF005252FF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003131F7003131EF003131EF003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B50000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700FF000000FF00
      0000FF000000C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF003942FF006B6BFF006363FF00424AFF003942FF003942FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      0000000000000000000000FFFF0000000000C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000FFFFFF005252FF00848CFF006B6BFF005252FF004A4AFF00424AFF00424A
      FF003139FF003139FF003139FF003139FF003139FF003131F7003131CE00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E700000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000FFFFFF006363FF009C9CFF00848CFF006B6BFF006363FF005252FF004A4A
      FF00424AFF003942FF003139FF003139FF003139FF003131F7003131BD00FFFF
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000FFFFFF00C6CEFF006363FF004A4AFF003942FF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003131F7003131DE007B84FF00FFFF
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A5000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00000000000000000000730800000000000000
      00000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700F7A55A00000000000000000000730800007308000000
      0000000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600F7A55A00007308000073080000730800008C08000073
      080000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7
      C600FFE7C600FFE7C600F7A55A000000000000000000008C0800008C08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B50000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C21000000000000000000008C0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700EF9C
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7A5
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE00000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD6000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A000873100000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE630000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE6300000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      080000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
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
      2800000060000000F00000000100010000000000400B00000000000000000000
      000000000000000000000000FFFFFF00800040000000000000000000C000C000
      0000000000000000A001400000000000000000009FFE40000000000000000000
      9002400000000000000000009002400000000000000000009002400000000000
      0000000090024000000000000000000090024000000000000000000090024000
      0000000000000000900240000000000000000000500280000000000000000000
      3FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3FFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFC00003FFFFFFF07FFFE001FF
      8000018007FFF03FFFE000FF8000018001FFF01FFFE0007F8000018000FFF80F
      FFE0003F80000180007FFC03FFE0001F800001C0001FFE01FFE0000F800001F0
      000FFF00FFE00007800001FC0007FF807FE00003800001FE0003FFC01FE00001
      800001FF0001F8000FE00001800001FF0000F80007E00001800001FF0000F800
      03F00001800001FF8000F80003F80001800001C00000F80003FC0001800001C0
      0000FC0003FE0001C00003C00000FF0007FF0001FFFFFFC00000FFC003FF8001
      FFFFFFF00000FFF801FFC001FFFFFFFC0000FFFE01FFE001FFFFFFFF0000FFFF
      81FFFFFFFFFFFFFFC000FFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF
      FFFFFFFFFFFFFFFFFFFFC3FF9FFFFFFFFFFFFFFFFFFF81FE0FFF8000FFFFE03F
      FFFF01F00FFF80007FF0203FFFFE03E0007F80003FF0200FFFFC07C0007F8000
      1FF03C07FFF80FC0002780000FFFFC07FFF81F400003800007FFFE0FFFF03F20
      0003800003FFFC07F0007F000001800001C00000C003FF000001800001C00000
      8007FF004001800001C000008007FF806001800001C000000003FF9838018000
      01C000000003FF981C06C00001C000000003FFC00E18E00001C000000003FFF0
      0FE0E00001C000000003FFFD0FE0880001C000008003FFFD7FE01C0001C00000
      8007FFFF7FF83E0001C00000C00FFFFF7FFCFF0001FFFFFFE01FFFFFFFFEFFFF
      FFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
      001FFFFFFFE0000FFFFFF1F0000F807FFFE0000FC7FFE3F0000F8003FFE0000F
      C3FF87F0000F80003FE0000FC1FF0FF0000F800007E0000FE0FE1FF0000F8000
      03E0000FF07C3FF0000F800003E0000FFC307FF0000F800003E0000FFE00FFF0
      000F800003E0000FFF01FFF0000F800003E0000FFF83FFF0000F800003E0000F
      FF01FFF0000F800003E0000FFE00FFF8001F800003E0000FFC187FFC7E3F8000
      03E0000FF83C3FFC7E3F800003E0000FF07F1FFC7E3F800003E0000FE0FF8FFC
      7E3F800003E0000FC1FFEFFC3C3F800007E0000F83FFFFFC003FC03FFFE0000F
      87FFFFFE007FE07FFFFFFFFF8FFFFFFF00FFFFFFFFFFFFFFFFFFFFFF81FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FE7FFFFFFC7F8000FFFFFFF1FF3FFFFFF83F00007FC7FFE3FF00EFFFF81F
      00001FC3FF87FE0007FFF80F00000FC1FF0FFC001FFFFC0700000FE0FE1FF800
      1F000603000003F07C3FF0001F000303000001FC307FF0000F000381000001FE
      00FFF0000F0003C1000001FF01FFE0000F0007C0000001FF83FFE0000F007FE0
      000001FF01FFE0000F003FE0000001FE00FFE0000F001FE0000001FC187FF000
      1F000FC0000001F83C3FE0001F040781000001F07F1FE0003F060001E00001E0
      FF8FE0007F070003E00001C1FFEFF0007F078007E0000183FFFFF0007F07C00F
      E0000187FFFFF3C0FF8FF03FFC00018FFFFFF1F1FFFFFFFFFC0001FFFFFFF807
      FFFFFFFFFC0001FFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF
      FFFFFFFFFFFC1FFFFF1FFFFFFFFF807FFFFC01FFFE0FFF8000FF8003FFFC001F
      8007FF80007F80001FFC00078001FF80003F80001FFC00078000FF80001F8000
      0FFC000380003F80000F80000F80000380001F80000780000780000380000F80
      0003800007800001800003800001800007800001F80001800001800003800000
      E00000800001800003800000C00000800001800001800000C000008000018000
      0180000FC00000C0000180000180000FE00000E0000180003F80003FFFFE00F0
      000180003F80001FFFFE00F8000180003F80001FFFFFC0FC0001C03FFF80001F
      FFFFF0FE0001E07FFF8001FFFFFFFCFF0001FFFFFFC001FFFFFFFFFFFFFFFFFF
      FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFE1FFFFF
      FFFF801FFFFFFFFFFE0FFFFFFFFF801FFFFFFFFF8000FF8000FFC000FF8000FF
      80007F80007FC0007F80007F80003F80003FC0003F80003F80001F80001FC000
      1F80001F80000F80000FC0000F80000F800007800007C0000780000780000380
      0003C00003800003800001800001C00001800001800001800001C00001800001
      800001800001C00001800001800001800001C00001800001800001800001C000
      01800001C00001C00001800001C00001E00001E00001E00001E00001F00001F0
      0001F00001F00001F80001F80001F80001F80001FC0001FC0001FC0001FC0001
      FE0001FE0001FE0001FE0001FF0001FF0001FF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFF83FFFFFFFFFF
      FFFFFF80FFFE00FFFFFFFFC00003FF007FFC007FFFFFFFC0000380003F80007F
      F8001FC0000380003F80003FF0000FC0000380003F80003FF0000FC000038000
      1F80001FF0000FC0000380000F80000FF0000FC00003800007800007F0000FC0
      0003800003800003F0000FC00003800001800001F0000FC00003800001800001
      F0000FC00003800001800001F0000FC00003800001800001F0000FC000038000
      01800001F0000FC00003C00001C00001F0000FC00003E00001E00001F0000FC0
      0003F00001F00001F0000FC00003F80001F80001F8001FC00003FC0001FC0001
      FFFFFFE00007FE0001FE0001FFFFFFFFFFFFFF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFFFFFDE9DCFF
      FFFFFFFFFFFF0C1FA01801FFFFFFFFFFFFFC0007803803FFFFFFFFFFFFF00001
      803803FFFFFFFFFFFFE00003C03CFBFFFC8FFFFFFF800003C03CFBFFFB8FF00F
      FF800003C03CFBFCFBFFF00FFF800003C03CFBFCFBCFF00FFF800003C038F8FF
      FBCFF00FFF800003C038F8FDFBFFF001BF8000030010F8FCF7CFF0019FC00003
      8008E0FE6FCFF0000FE000078008E0FF37FFF0019FF8000FC03CC3F33BCFF001
      BFF8001FC07CD3F33BCFF00FFFFC007FC07CD3F87BFFF00FFFFC00FFC07CC3FF
      FB8FF00FFFFC01FFC13C11FFFC8FF00FFFFC01FFC13C11FFFFFFFFFFFFFC01FF
      81B818FFFFFFFFFFFFFC01FFB9DB9DFFFFFFFFFFFFF803FFB9DB9DFFFFFFFFFF
      FFF803FF7BE7BEFFFFFFFFFFFFF007FFFFFFFFE00003FFFFFFFFFFFFFFFFFFE0
      0003FFFFFFFFFFFFFF1FFFE00003807FFFC00003F8000FE000038003FFC00003
      E0000FE0000380001FC00003C0000FE0000380001FC00003C0000FE000038000
      0FC00003C0000FE0000380000FC00003C0000FE00003800007C00003C0000FE0
      0003800007C00003C0000FE00003800007C00003C0000FE00003800003C00003
      C0000FE00003800003C00003C0000FE00003800001C00003C0000FE000038000
      00C00003C0000FE00003800000C00003C0000FE00003800007C00003C0000FE0
      0003800007C00003E0000FE00003800007C00003F8000FE00007C03F07C00003
      FE1FFFE0000FE07E0FE00007FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList_DBForm: TActionList
    Images = imglistActions
    Left = 148
    Top = 260
    object atRefresh: TAction
      Caption = 'Uppdatera F6'
      Hint = 'Re-read load orders from database'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = atRefreshExecute
    end
    object atAcceptLoadOrder: TAction
      Category = 'GENERAL'
      Caption = 'Accept'
      ImageIndex = 11
      OnExecute = atAcceptLoadOrderExecute
    end
    object atRejectLoadOrder: TAction
      Category = 'GENERAL'
      Caption = 'Avslag'
      ImageIndex = 10
      OnExecute = atRejectLoadOrderExecute
    end
    object atCompletedLoadOrder: TAction
      Category = 'GENERAL'
      Caption = 'Avslutad'
      ImageIndex = 12
      OnExecute = atCompletedLoadOrderExecute
    end
    object atNewLoad: TAction
      Caption = 'Ny last'
      ImageIndex = 17
      OnExecute = atNewLoadExecute
    end
    object atSetToONHOLD: TAction
      Category = 'GENERAL'
      Caption = 'V'#228'nta'
      ImageIndex = 14
      OnExecute = atSetToONHOLDExecute
    end
    object atProductionComplete: TAction
      Category = 'GENERAL'
      Caption = 'Produktion avslutad'
      ImageIndex = 16
      OnExecute = atProductionCompleteExecute
    end
    object atPreliminary: TAction
      Caption = 'Prelimin'#228'r'
      ImageIndex = 15
      OnExecute = atPreliminaryExecute
    end
    object acSetToNEW: TAction
      Category = 'GENERAL'
      Caption = 'Ny'
      ImageIndex = 13
      OnExecute = acSetToNEWExecute
    end
    object acSamlingFS: TAction
      Caption = 'Samlings f'#246'ljesedel per LO och verk'
      OnExecute = acSamlingFSExecute
    end
    object acChangeLOLayout: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangeLOLayoutExecute
    end
    object acSaveChanges: TAction
      Caption = 'Spara F3'
      Enabled = False
      ImageIndex = 20
      ShortCut = 114
      OnExecute = acSaveChangesExecute
      OnUpdate = acSaveChangesUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      Enabled = False
      ImageIndex = 23
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acConfirmCancel: TAction
      Caption = 'Bekr'#228'fta annulering'
      ImageIndex = 25
      OnExecute = acConfirmCancelExecute
    end
    object acShowLOGroupByBox: TAction
      Caption = 'Visa grupperingsrutan'
      OnExecute = acShowLOGroupByBoxExecute
    end
    object acChangeLoadLayout: TAction
      Caption = 'F'#228'ltv'#228'ljare'
      OnExecute = acChangeLoadLayoutExecute
    end
    object acNewLoadWithLO: TAction
      Caption = 'Ny Last F2'
      ImageIndex = 9
      ShortCut = 113
      OnExecute = acNewLoadWithLOExecute
      OnUpdate = acNewLoadWithLOUpdate
    end
    object acOpenLoad: TAction
      Caption = #214'ppna last F9'
      ImageIndex = 2
      ShortCut = 120
      OnExecute = acOpenLoadExecute
      OnUpdate = acOpenLoadUpdate
    end
    object acPrintLOWYSWYG: TAction
      Caption = '&WYSIWYG'
      ImageIndex = 7
      ShortCut = 16471
      OnExecute = acPrintLOWYSWYGExecute
      OnUpdate = acPrintLOWYSWYGUpdate
    end
    object acExpandAll: TAction
      Caption = 'Expandera alla'
      OnExecute = acExpandAllExecute
    end
    object acCollapseAll: TAction
      Caption = 'Kollapsa alla'
      OnExecute = acCollapseAllExecute
    end
    object acExportToXLS: TAction
      Caption = 'Exp. till XLS F11'
      ImageIndex = 27
      ShortCut = 122
      OnExecute = acExportToXLSExecute
      OnUpdate = acExportToXLSUpdate
    end
    object acSearchLoadNo: TAction
      Caption = 'S'#246'k Lastnr'
      ImageIndex = 28
      OnExecute = acSearchLoadNoExecute
    end
    object acAddToLastLoadList: TAction
      Caption = 'L'#228'gg till senaste Lastnr listan'
    end
    object acSpec_ALLA_Laster: TAction
      Caption = 'Samlings f'#246'ljesedel, alla laster per LO'
      OnExecute = acSpec_ALLA_LasterExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acBooking: TAction
      Caption = 'Bokning F10'
      ImageIndex = 29
      ShortCut = 121
      OnExecute = acBookingExecute
      OnUpdate = acBookingUpdate
    end
    object acShowPriceList: TAction
      Caption = 'Visa prislista'
      ImageIndex = 31
    end
    object acPrintLOStatus: TAction
      Caption = 'LO kontroll'
      ImageIndex = 7
      OnExecute = acPrintLOStatusExecute
    end
    object acPrintMarkedLOs: TAction
      Caption = 'Skriv ut markerade LO'
      OnExecute = acPrintMarkedLOsExecute
      OnUpdate = acPrintMarkedLOsUpdate
    end
    object acSkapaPaketKoder: TAction
      Caption = 'Skapa koder Shift+F2'
      ImageIndex = 32
      ShortCut = 8305
      OnExecute = acSkapaPaketKoderExecute
    end
    object acLOLengths: TAction
      Caption = 'LO L'#228'ngder'
      ImageIndex = 33
      OnExecute = acLOLengthsExecute
      OnUpdate = acLOLengthsUpdate
    end
    object acLoadOrderListSetup: TAction
      Caption = 'Inst'#228'llningar'
      OnExecute = acLoadOrderListSetupExecute
    end
    object acNewLoadNoLo: TAction
      Caption = 'Ny last'
      ImageIndex = 29
    end
    object acChangeLOonLoad: TAction
      Caption = 'Byt LO nummer i markerad last'
      OnExecute = acChangeLOonLoadExecute
      OnUpdate = acChangeLOonLoadUpdate
    end
    object acAddLONrToSyncFile: TAction
      Caption = 'Skapa ny lastorderfil'
      ImageIndex = 34
    end
    object acReadImportedPackages: TAction
      Caption = 'Importera alla'
    end
    object acAddMarkedLOToSyncFile: TAction
      Caption = 'L'#228'gg markerade LO till lastorderfilen'
    end
    object acSelectFileToCreateLoad: TAction
      Caption = 'Importera'
    end
    object acSaveBooking: TAction
      Caption = 'Spara Shift+F3'
      ImageIndex = 20
      ShortCut = 8306
      OnExecute = acSaveBookingExecute
      OnUpdate = acSaveBookingUpdate
    end
    object acAngeSynkMappen: TAction
      Caption = 'Synk.mapp'
    end
    object acPrintmeny: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 7
      ShortCut = 119
      OnExecute = acPrintmenyExecute
    end
    object acPrintFSMisMatch: TAction
      Caption = 'F'#246'ljesedel (paket saknar koppling)'
      OnExecute = acPrintFSMisMatchExecute
    end
    object acSearch: TAction
      Caption = 'S'#246'k F7'
      ImageIndex = 28
      ShortCut = 118
      OnExecute = acSearchExecute
    end
    object acBytMellanBTBochBTH: TAction
      Caption = 'V'#228'xla bolag'
      Visible = False
      OnExecute = acBytMellanBTBochBTHExecute
    end
    object acImportPkgs: TAction
      Caption = 'Importera f'#246'ljesedlar'
    end
    object acOpenFS: TAction
      Caption = #214'ppna'
      OnUpdate = acOpenFSUpdate
    end
    object acDeleteLoad_Imp: TAction
      Caption = 'Ta bort'
    end
    object acSendLoadOrderNoToHH: TAction
      Caption = 'Skicka lista till HH'
    end
    object acAddMarkedLONoToSendList: TAction
      Caption = 'L'#228'gg till markerade LOnr'
    end
    object acAddLOnoToSendList: TAction
      Caption = 'L'#228'gg till'
    end
    object acPrintLOList: TAction
      Caption = 'Skriv ut'
    end
    object acRemoveLOHHRow: TAction
      Caption = 'Ta bort'
    end
    object acRemoveALLLOHHRows: TAction
      Caption = 'Ta bort alla'
    end
    object acDeleteALLLoad_Imp: TAction
      Caption = 'Ta bort alla'
    end
    object acEmailaFS: TAction
      Caption = 'Maila f'#246'ljesedel'
      OnExecute = acEmailaFSExecute
    end
    object acUtlastningsSpec: TAction
      Caption = 'Hampen spec'
      ImageIndex = 9
    end
    object acPrintFS: TAction
      Caption = 'F'#246'ljesedel'
      OnExecute = acPrintFSExecute
    end
    object acIncreaseHeaderFont: TAction
      Caption = '+ rubrik'
    end
    object acDecreaseHeaderFont: TAction
      Caption = '- rubrik'
    end
    object acIncreaseContentFont: TAction
      Caption = '+ rader'
    end
    object acDecreaseContentFont: TAction
      Caption = '- rader'
    end
    object acSaveVyer: TAction
      Caption = 'Spara vyer'
      OnExecute = acSaveVyerExecute
    end
    object acPrintCMR: TAction
      Caption = 'CMR'
      OnExecute = acPrintCMRExecute
    end
    object acChangePackage_Size: TAction
      Caption = #196'ndra Paketstorleksrubriken'
      OnExecute = acChangePackage_SizeExecute
    end
    object acPrintTO: TAction
      Category = 'Print'
      Caption = 'TO'
      OnExecute = acPrintTOExecute
    end
    object acPrintTO_Manually: TAction
      Category = 'Print'
      Caption = 'TO Manuell'
      OnExecute = acPrintTO_ManuallyExecute
    end
    object acPrintLO_Your_Mill_Manually: TAction
      Category = 'Print'
      Caption = 'LO ert verk Manuell'
      OnExecute = acPrintLO_Your_Mill_ManuallyExecute
    end
    object acPrintLO_All_Mills_Manually: TAction
      Category = 'Print'
      Caption = 'LO alla verk Manuell'
      OnExecute = acPrintLO_All_Mills_ManuallyExecute
    end
    object acPrintLO_Your_Mill: TAction
      Category = 'Print'
      Caption = 'LO ert verk'
      OnExecute = acPrintLO_Your_MillExecute
    end
    object acPrintLO_All_Mills: TAction
      Category = 'Print'
      Caption = 'LO alla verk'
      OnExecute = acPrintLO_All_MillsExecute
    end
    object acMailTO_Manually: TAction
      Category = 'Print'
      Caption = 'Maila TO Manuell'
      OnExecute = acPrintTO_ManuallyExecute
    end
    object acSendWoodxDeliveryMessage: TAction
      Caption = 'Send woodx'
      ImageIndex = 34
      OnExecute = acSendWoodxDeliveryMessageExecute
      OnUpdate = acSendWoodxDeliveryMessageUpdate
    end
    object acSetupForm: TAction
      Caption = 'Setup'
      OnExecute = acSetupFormExecute
    end
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbTallyVer2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end
      item
        Visible = True
        ItemName = 'bbTally_USA'
      end
      item
        Visible = True
        ItemName = 'bPrintLOAllVerk'
      end
      item
        Visible = True
        ItemName = 'bPrintLODittVerk'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        Visible = True
        ItemName = 'dxBarButton34'
      end
      item
        Visible = True
        ItemName = 'bAllaLasterPerLO'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end
      item
        Visible = True
        ItemName = 'bbAvropVerk'
      end
      item
        Visible = True
        ItemName = 'dxbbtnPrintTO'
      end
      item
        Visible = True
        ItemName = 'dxbbtnPrintTO_Manually'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbAvrakningSpecVer2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end>
    UseOwnFont = False
    Left = 440
    Top = 392
    PixelsPerInch = 96
  end
  object images1616: TImageList
    Left = 528
    Top = 272
    Bitmap = {
      494C010104000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000080D100783
      D1FF0783D1FF0783D1FF0783D1FF33B2F2FF76C63CFF76C63CFF76C63CFF76C6
      3CFF76C63CFF76C63CFF76C63CFF76C63CFF000000000000000000000000ADAD
      FD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      000000000000000000000000000000000000022B45540783D1FF33B2F2FF33B2
      F2FF33B2F2FF1D98DDFF1D98DDFF1D98DDFF2CA9ECFF33B2F2FF6EA00AFF6EA0
      0AFF6EA00AFF6EA00AFF6EA00AFF76C63CFF0000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      000000000000000000000000000000000000031A283033B2F2FF7ADBF9FF7ADB
      F9FF7ADBF9FF33B2F2FF33B2F2FF33B2F2FF1D98DDFF1D98DDFF6EA00AFF6EA0
      0AFF6EA00AFF6EA00AFF6EA00AFF76C63CFF00000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B0073737300000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      000000000000000000000000000000000000000000000783D1FF0783D1FF0783
      D1FF0783D1FF0783D1FF0783D1FF33B2F2FF33B2F2FF6EA00AFF6EA00AFF6EA0
      0AFF6EA00AFF6EA00AFF578407FF76C63CFF00000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000115212833B2F2FF33B2F2FF33B2
      F2FF33B2F2FF1D98DDFF1D98DDFF1D98DDFF1D98DDFF33B2F2FF6EA00AFFE1F6
      FFFFBDEEFFFFBDEEFFFF578407FF76C63CFFF7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000033B2F2FF7ADBF9FFBDEE
      FFFF7ADBF9FF33B2F2FF33B2F2FF33B2F2FF1D98DDFF1D98DDFFE1F6FFFFE1F6
      FFFFBDEEFFFFBDEEFFFFBDEEFFFF76C63CFFF7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      000000000000000000000000000000000000000000000783D1FF0783D1FF0783
      D1FF209EE4FF1D98DDFF0783D1FF33B2F2FF33B2F2FF33B2F2FF14C1FFFF14C1
      FFFFBDEEFFFFBDEEFFFF158AFFFFBDEEFFFFF7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000115212833B2F2FF33B2F2FF7ADB
      F9FF7ADBF9FF33B2F2FF33B2F2FF1D98DDFF1D98DDFF1D98DDFFE1F6FFFFE1F6
      FFFF158CFFFFBDEEFFFF158AFFFF1592FFFFF7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF00000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000033B2F2FF33B2F2FF7ADB
      F9FFBDEEFFFF33B2F2FF33B2F2FF33B2F2FF1D98DDFFE1F6FFFFE1F6FFFFE1F6
      FFFF158AFFFFBDEEFFFF158AFFFFBDEEFFFFF7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      FF000000FF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFFE1F6FFFFE1F6FFFFE1F6
      FFFFBDEEFFFFBDEEFFFFBDEEFFFFBDEEFFFFF7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFF6EA00AFFE1F6FFFFE1F6
      FFFFBDEEFFFFBDEEFFFFBDEEFFFF76C63CFFF7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C9400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFF6EA00AFF6EA00AFF5784
      07FF578407FF578407FF578407FF76C63CFF00000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFF6EA00AFF578407FF5784
      07FF578407FF578407FF578407FF76C63CFF00000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFF6EA00AFF578407FF5784
      07FF578407FF578407FF578407FF76C63CFF0000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076C63CFF76C63CFF76C63CFF76C6
      3CFF76C63CFF76C63CFF76C63CFF76C63CFF000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F00FFFFFF8FF0000E003FFFFF87F0000
      C001FCFFF07F00008001F87FF03F00008000F03FE03F00000000E01FE01F0000
      0000C01FE01F00000000C00FF30F00000000C207FF0F00000000E703FF870000
      0000FF83FF8700000001FFC7FFC300008001FFFFFFC700008003FFFFFFEF0000
      C007FFFFFFFF0000E00FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 528
    Top = 328
    Bitmap = {
      494C010109000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
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
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
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
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
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
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
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
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
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
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
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
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
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
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
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
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
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
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
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
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000084424200844242008442
      4200844242008442420084424200844242008442420084424200844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000422100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C6630000844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042210000A52100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000C6840000C684
      0000C6840000C6840000C6840000C6840000C68400008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000C6840000F7FF
      FF00C6A50000844242008442420084424200A5A5A5008442420000FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000A5E70000A5E70000A5
      E70000A5E70000A5E7000042210000A5210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6A5000084424200C6C6C600A5A5A5008442420000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E70084E7E7000042210000A5210000A5210000A5210000A5210000A5210000A5
      2100004221000000000000A5E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600A5A5A50084424200C6C6C60000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E7000042210000A5210000A5210000A521000042210000A5210000A5210000A5
      21000042210084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF00F7FFFF00C6C6C600A5A5A50084424200C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000A5E700000000000042
      210000A5210000A5210000A521000042210000000000000000000042210000A5
      210000A521000042210084E7E70084E7E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF0000FFFF0000FFFF00C663
      0000C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000000000000042210000A5
      210000A52100004221000042210084E7E70084E7E70084E7E7000042210000A5
      210000A521000042210084E7E70084E7E70084E7E70000A5E70000A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF00C684630000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000042210000A5210000A5
      21000042210084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A521000042210084E7E70084E7E70084E7E70084E7E70000A5
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF008442420084424200A5A5A5008442420000FFFF00C684630000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      210000632100C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000422100004221000042
      21000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A5210000422100000000000000000084E7E70084E7E70084E7
      E70000A5E70000A5E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00C6A50000C6A5000084424200C6C6C600A5A5A5008442420000FFFF00F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00006321000063
      2100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000A5E70000A5E70084E7E70084E7E70084E7E70084E7E70084E7
      E7000042210000A5210000A521000042210084E7E7000000000084E7E70084E7
      E70084E7E70000A5E70000A5E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000063
      2100006321000063210000632100C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042210000A5210000A52100004221000000000000000000000000000000
      000084E7E70084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000063210000632100006321000063210000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000042210000A5210000A5210000422100A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844242008442
      4200844242008442420084424200844242008442420084424200F7CEA500F7CE
      A50000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000632100006321000063210000E7E700C6C6C60000E7
      E70000E7E70000632100006321000063210000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF000042210000A5210000A5210000422100F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      00000000000000000000000000000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C663000084424200F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000632100006321000063210000632100C6C6C60000FF
      FF0000632100006321000063210000632100C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5000042210000A5210000A5210000422100A5A5A5000000
      0000FFFFFF000000000000A5E70084E7E7000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000632100006321000063
      210000632100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042210000A5210000A5210000422100000000000000
      00000000000042E7E70042E7E70000A5E7000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF000063210000632100006321000063
      2100006321000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A521000042210084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000422100004221000042210042E7
      E70042E7E70042E7E70042E7E70042E7E70000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5E70000A5
      E70042E7E70042E7E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A5E70000A5E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E700000000000031FF000031FF000031
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063210000632100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000C6210000C62100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000E7630000E7630000C621000063
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF000063210000E7630000E7630000E7630000E7630000C6
      210000632100C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000063210000E7630000C6210000C6210000C6210000E7630000E7
      630000C6210000632100C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000063210000E7630000E7630000E76300006321000063210000E7630000E7
      630000C6210000C621000063210000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C60000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000632100C6C6C600C6C6C6000063210000E7
      630000E7630000C6210000C62100006321000063210000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF000063
      210000E7630000C6210000C621000063210000FFFF0000FFFF00C6C6C6000063
      210000E7630000E7630000E7630000C6210000C621000063210000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF00000000E7
      E70000E7E70000000000000000000000000000000000C6C6C6000063210000E7
      630000E7630000E7630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000E7630000E7630000C621000063210000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FF000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00000000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF000063210000E7
      630000E763000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF000063210000E7630000E7630000E7630000E7630000C621000063
      210000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF000042210000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6
      C60000E7E70000E7E70000E7E70000000000000000000063210000E7630000E7
      630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000632100C6C6C60000E7630000E7630000E7630000C6
      21000063210000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF000000000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF000063210000E7
      63000063210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000E7630000E7630000E7
      630000C621000063210000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C6000063
      2100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E7000063210000E7630000E7
      630000E7630000C62100006321000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100008421000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E7000063210000E7
      630000E7630000E7630000632100000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700FF000000FF00
      0000FF000000C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E7000063
      210000E7630000E7630000632100000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000422100008421000042
      210000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      0000000000000000000000FFFF0000000000C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000063210000E763000063210000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E70000632100006321000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF0000422100008421000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000422100004221000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000F8001F00
      0000000000000000F0000F000000000000000000F0000F000000000000000000
      F0000F000000000000000000F0000F000000000000000000F0000F0000000000
      00000000F0000F000000000000000000F0000F000000000000000000F0000F00
      0000000000000000F0000F000000000000000000F0000F000000000000000000
      F0000F000000000000000000F8001F000000000000000000FC7E3F0000000000
      00000000FC7E3F000000000000000000FC7E3F000000000000000000FC7E3F00
      0000000000000000FC3C3F000000000000000000FC003F000000000000000000
      FE007F000000000000000000FF00FF000000000000000000FF81FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF801FFFFF
      FFFFFF9FFFFFFFF9801FFFFFFFFFFF1FFFFFFFF1C000FF8000FFFE0FFFC7FFE3
      C0007F80007F8007FFC3FF87C0003F80003F8001FFC1FF0FC0001F80001F8000
      FFE0FE1FC0000F80000F80003FF07C3FC0000780000780001FFC307FC0000380
      000380000FFE00FFC00001800001800003FF01FFC00001800001F80001FF83FF
      C00001800001E00000FF01FFC00001800001C00000FE00FFC00001800001C000
      00FC187F800001C00001C00000F83C3FE00001E00001E00000F07F1FF00001F0
      0001FFFE00E0FF8FF80001F80001FFFE00C1FFEFFC0001FC0001FFFFC083FFFF
      FE0001FE0001FFFFF087FFFFFF0001FF0001FFFFFC8FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFF83FFFF3FFFFFFFFFFF80FFFE
      00FFFE1FFFFFFFFFFF007FFC007FFE0FFFFFFFFF80003F80007F8000FF8000FF
      80003F80003F80007F80007F80003F80003F80003F80003F80001F80001F8000
      1F80001F80000F80000F80000F80000F80000780000780000780000780000380
      0003800003800003800001800001800001800001800001800001800001800001
      8000018000018000018000018000018000018000018000018000018000018000
      01800001C00001C00001C00001C00001E00001E00001E00001E00001F00001F0
      0001F00001F00001F80001F80001F80001F80001FC0001FC0001FC0001FC0001
      FE0001FE0001FE0001FE0001FF0001FF0001FF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 312
    Top = 252
    PixelsPerInch = 96
    object dxComponentPrinter1Link2: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 8
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 297180
      PrinterPage.PageSize.Y = 419100
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40619.713961400460000000
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object pmLOGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'SpinEditRubrikFontSortimentsVy'
      end
      item
        Visible = True
        ItemName = 'SpinEditContentFontSortimentsVy'
      end>
    UseOwnFont = True
    OnPopup = pmLOGridPopup
    Left = 440
    Top = 276
    PixelsPerInch = 96
  end
  object pmLoadGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end>
    UseOwnFont = False
    Left = 440
    Top = 332
    PixelsPerInch = 96
  end
  object SaveDialog1: TSaveDialog
    Left = 88
    Top = 808
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 760
  end
  object SaveDialog2: TSaveDialog
    Left = 88
    Top = 624
  end
  object cxb: TPopupMenu
    Images = imglistActions
    Left = 176
    Top = 624
    object Ny1: TMenuItem
      Action = acSetToNEW
    end
  end
  object pmShortcuts: TPopupMenu
    AutoPopup = False
    Left = 488
    Top = 696
    object Bokning1: TMenuItem
      Action = acBooking
    end
    object Stng1: TMenuItem
      Action = acClose
    end
    object NyLastmotLOnr1: TMenuItem
      Action = acNewLoadWithLO
    end
    object ppnalast1: TMenuItem
      Action = acOpenLoad
    end
    object WYSIWYG1: TMenuItem
      Action = acPrintLOWYSWYG
    end
    object Spara1: TMenuItem
      Action = acSaveChanges
    end
    object Uppdatera1: TMenuItem
      Action = atRefresh
    end
    object SkrivutF81: TMenuItem
      Action = acPrintmeny
    end
    object SparaShiftF31: TMenuItem
      Action = acSaveBooking
    end
    object SparaF31: TMenuItem
      Action = acSaveChanges
    end
    object ngraF41: TMenuItem
      Action = acCancelChanges
    end
    object ExptillXLSF111: TMenuItem
      Action = acExportToXLS
    end
    object acPrintFSMisMatch1: TMenuItem
      Action = acPrintFSMisMatch
    end
    object SkF71: TMenuItem
      Action = acSearch
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    SkinName = 'Silver'
    Left = 488
    Top = 638
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 648
    Top = 278
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 648
    Top = 334
  end
  object mtMarkedRows: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 312
    Top = 302
    object mtMarkedRowsKeyField: TIntegerField
      FieldName = 'KeyField'
    end
    object mtMarkedRowsSSPNo: TIntegerField
      FieldName = 'SSPNo'
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 288
    Top = 759
  end
  object mtImportedLoads: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 144
    Top = 311
    object mtImportedLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtImportedLoadsLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtImportedLoadsAntalPaket: TIntegerField
      FieldName = 'AntalPaket'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 288
    Top = 623
    PixelsPerInch = 96
    object cxStyle1clYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle1Red: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
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
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStylePopMenu: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdLO
    PopupMenus = <>
    Left = 312
    Top = 353
  end
  object pmPrintmenu: TPopupMenu
    Left = 648
    Top = 226
    object Fljesedel1: TMenuItem
      Action = acPrintFS
    end
    object Mailafljesedel1: TMenuItem
      Action = acEmailaFS
    end
    object acPrintCMR1: TMenuItem
      Action = acPrintCMR
    end
    object LOallaverk1: TMenuItem
      Action = acPrintLO_All_Mills
    end
    object Lastorderertverk1: TMenuItem
      Action = acPrintLO_Your_Mill
    end
    object LOallaverkManuell1: TMenuItem
      Action = acPrintLO_All_Mills_Manually
    end
    object LOertverkManuell1: TMenuItem
      Action = acPrintLO_Your_Mill_Manually
    end
    object LOkontroll1: TMenuItem
      Action = acPrintLOStatus
    end
    object O1: TMenuItem
      Action = acPrintTO
    end
    object OManuell1: TMenuItem
      Action = acPrintTO_Manually
    end
    object acMailTOManually1: TMenuItem
      Action = acMailTO_Manually
    end
    object Specificationallalaster1: TMenuItem
      Caption = 'Specification markerade laster'
      OnClick = Specificationallalaster1Click
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 23724176
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030606
          061A0C0C0C2D0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C
          0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C
          0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C
          0C2E0C0C0C2E0C0C0C2E0C0C0C2E0C0C0C2C0404041400000001070707104D4D
          4D7C7F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F
          7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F
          7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F7FC17F7F
          7FC17F7F7FC17F7F7FC1808080C27D7D7DBD3A3A3A62020202071212121B8E8E
          8EB2D6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFD6D6D6FFD6D6D6FFD4D4D4FE727272940606060D1414141B9C9C
          9CB2E9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFE9E9E9FFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE7E7E7FE7D7D7D960707070E1515151BA4A4
          A4B2F1F1F1FFE9E9E9FFE5E5E5FFE8E8E8FFE7E7E7FFE5E5E5FFE6E6E6FFE5E5
          E5FFE6E6E6FFEBEBEBFFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF5F5F5FFF3F3F3FE838383960707070E1616161BA5A5
          A5B2EEEEEEFFD6D6D6FFCFCFCFFFD1D1D1FFCECECEFFCECECEFFCCCCCCFFCECE
          CEFFCFCFCFFFD7D7D7FFDADADAFFDBDBDBFFD9D9D9FFDADADAFFDEDEDEFFDCDC
          DCFFDCDCDCFFDEDEDEFFDBDBDBFFD9D9D9FFDDDDDDFFDADADAFFDCDCDCFFDCDC
          DCFFD7D7D7FFE3E3E3FFF5F5F5FFF4F4F4FE838383950707070D1616161BA5A5
          A5B2F0F0F0FFDDDDDDFFD8D8D8FFDBDBDBFFD7D7D7FFDADADAFFD8D8D8FFD9D9
          D9FFD7D7D7FFDADADAFFD4D4D4FFD6D6D6FFD6D6D6FFD1D1D1FFD3D3D3FFD5D5
          D5FFD8D8D8FFD7D7D7FFD2D2D2FFD0D0D0FFD8D8D8FFD4D4D4FFD5D5D5FFD3D3
          D3FFD1D1D1FFD7D7D7FFEFEFEFFFF4F4F4FE848484950707070D1616161BA5A5
          A5B2F5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2
          F2FFF2F2F2FFF3F3F3FFF2F2F2FFF2F2F2FFF3F3F3FFF2F2F2FFF1F1F1FFF2F2
          F2FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF2F2F2FFF1F1
          F1FFF2F2F2FFF2F2F2FFF5F5F5FFF4F4F4FE848484950707070D1616161BA5A5
          A5B2F4F4F4FFEEEEEEFFEBEBEBFFEDEDEDFFEDEDEDFFEEEEEEFFF5F5F5FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF6F6F6FFF4F4F4FE848484950707070D1616161BA5A5
          A5B2EDEDEDFFD6D6D6FFD2D2D2FFD0D0D0FFCDCDCDFFD2D2D2FFE2E2E2FFE6E6
          E6FFE7E7E7FFE4E4E4FFE6E6E6FFE5E5E5FFE6E6E6FFE7E7E7FFE5E5E5FFE3E3
          E3FFE3E3E3FFE2E2E2FFE6E6E6FFE5E5E5FFE2E2E2FFDFDFDFFFE7E7E7FFF3F3
          F3FFF5F5F5FFF5F5F5FFF6F6F6FFF4F4F4FE848484950707070D1616161BA5A5
          A5B2ECECECFFD3D3D3FFD2D2D2FFCCCCCCFFC9C9C9FFC5C5C5FFCACACAFFC9C9
          C9FFCDCDCDFFCFCFCFFFD2D2D2FFCBCBCBFFC9C9C9FFCBCBCBFFCFCFCFFFCECE
          CEFFCBCBCBFFC2C2C2FFC9C9C9FFC7C7C7FFC3C3C3FFC1C1C1FFCACACAFFD2D2
          D2FFD5D5D5FFDBDBDBFFEFEFEFFFF4F4F4FE848484950707070D1616161BA5A5
          A5B2F0F0F0FFDFDFDFFFDFDFDFFFDDDDDDFFDCDCDCFFDCDCDCFFD9D9D9FFD8D8
          D8FFDBDBDBFFDFDFDFFFDDDDDDFFD8D8D8FFD6D6D6FFD6D6D6FFDEDEDEFFDFDF
          DFFFD8D8D8FFD2D2D2FFD5D5D5FFD6D6D6FFD5D5D5FFD2D2D2FFD2D2D2FFD2D2
          D2FFD1D1D1FFD5D5D5FFE8E8E8FFF4F4F4FE848484950707070E1616161BA5A5
          A5B2F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF4F4
          F4FFF3F3F3FFF4F4F4FFF5F5F5FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2F3F3F3FFEDEDEDFFEAEAEAFFECECECFFEBEBEBFFEAEAEAFFEBEBEBFFEAEA
          EAFFEAEAEAFFEFEFEFFFF5F5F5FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5
          F5FFF5F5F5FFF5F5F5FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF6F6F6FFF6F6F6FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2EEEEEEFFD8D8D8FFD2D2D2FFD4D4D4FFD2D2D2FFD2D2D2FFD0D0D0FFD1D1
          D1FFD1D1D1FFDADADAFFDEDEDEFFDEDEDEFFDDDDDDFFDEDEDEFFE2E2E2FFDFDF
          DFFFDEDEDEFFE0E0E0FFDEDEDEFFDCDCDCFFDFDFDFFFDDDDDDFFDEDEDEFFDEDE
          DEFFDADADAFFE5E5E5FFF5F5F5FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2F1F1F1FFDFDFDFFFDBDBDBFFDEDEDEFFD9D9D9FFDCDCDCFFDADADAFFDBDB
          DBFFD9D9D9FFDBDBDBFFD6D6D6FFD8D8D8FFD9D9D9FFD5D5D5FFD6D6D6FFD7D7
          D7FFD9D9D9FFD9D9D9FFD5D5D5FFD3D3D3FFD9D9D9FFD6D6D6FFD7D7D7FFD5D5
          D5FFD2D2D2FFD9D9D9FFF1F1F1FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2EEEEEEFFE1E1E1FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFE1E1E1FFDFDFDFFFDFDFDFFFDFDF
          DFFFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0E0FFDFDF
          DFFFDFDFDFFFDEDEDEFFE5E5E5FFF1F1F1FE848484960707070E1616161BA5A5
          A5B2E7E7E7FFD2D2D2FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FFD7D7D7FFEEEEEEFE848484960707070E1616161BA5A5
          A5B2F5F5F5FFEDEDEDFFE7E7E7FFE9E9E9FFE8E8E8FFE7E7E7FFE7E7E7FFE7E7
          E7FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFEDEDEDFFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2F6F6F6FFEAEAEAFFE3E3E3FFE7E7E7FFE7E7E7FFE4E4E4FFE4E4E4FFE3E3
          E3FFE1E1E1FFE2E2E2FFE1E1E1FFE2E2E2FFEDEDEDFFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF4F4F4FE848484960707070E1616161BA5A5
          A5B2F7F6F6FFF6F5F6FFF6F5F5FFF6F5F6FFF6F5F6FFF6F5F5FFF6F5F5FFF6F5
          F5FFF6F5F5FFF6F5F5FFF6F5F5FFF6F5F6FFF6F6F6FFF7F6F6FFF7F6F6FFF7F6
          F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6
          F6FFF7F6F6FFF7F6F6FFF7F6F7FFF5F4F4FE848484960707070E1515151B9EA3
          9FB2EAF3EDFFE9F3ECFFE9F4EDFFE9F4EDFFE9F4EEFFEAF4EEFFE9F4EEFFE9F5
          EFFFE9F5EFFFE9F5EFFFE9F6F0FFEAF6F1FFEAF6F1FFE9F6F1FFE9F6F1FFE9F6
          F1FFEAF6F1FFEBF6F1FFEBF5F1FFEBF5F0FFEBF5F0FFEBF4EFFFEBF5EFFFEBF5
          EFFFEBF4EFFFEBF4EEFFEBF4EEFFE8F1EBFE7F8380970707070E08120B1B3B8C
          52B265D688FF77DD9AFF78E09FFF75E2A1FF6FE3A1FF69E5A1FF6FE8A8FF77EC
          B1FF6FEEB1FF72F1B6FF70F3B9FF69F6BAFF6AF8BFFF6CFAC2FF6EF9C2FF78F7
          C2FF65F4B6FF59F0ABFF58EDA7FF58EAA2FF58E79DFF58E398FF58E094FF58DE
          90FF58D98AFF57CF82FF57C87CFF61C37FFE466E51910708070C0010041B007D
          23B243CF6EFFA1E9B9FF86E5A9FF96EAB7FF97EDBCFF69E7A2FF9DF1C5FF97F3
          C4FF97F5C7FF93F6C8FF82F7C3FF8EFACCFF8AFCCEFF91FDD2FF7EFCC9FF96FB
          D1FF60F5B3FF05EC82FF00E777FF00E271FF00DD6AFF00D963FF00D45BFF00CF
          54FF07C751FF31BE63FF52BF75FF5DA874DB283D2E4E020202030010041B037E
          26B267D788FF93E6AFFF2CD168FF79E3A2FFD4F7E3FFABF1CAFFD2F8E4FFACF5
          D0FFCEF9E4FFBFFADEFFA7F8D3FFD5FCEBFFBCFBE0FFBEFCE2FFBBFCE1FFC4FC
          E4FF7AF5BDFF11EB85FF0AE67BFF01E170FF00DC69FF00D862FF00D35BFF00CE
          52FF25CF65FFBAEBCBFFCBD3CDDE575A586107070707000000000010041B027E
          24B33ECC68FF8EE4ABFF31D26BFF3AD675FF8DEAB3FF62E59BFF4EE492FF51E7
          98FF96F2C3FF7DF2BAFF5AF0A9FF54F2AAFF40F2A3FF42F3A5FF53F4ADFF5DF3
          AFFF3CEF9BFF2CEA90FF48E999FF09E071FF00DA66FF00D660FF00D259FF00CC
          50FF3AD273FFBCD5C5E6646162690A0A0A0B00000000000000000010041A0078
          20AC0BB83CF85AD07FF835CC6BF80DC652F81ECE65F805CD59F800D05CF802D5
          63F81FDD7BF819E07CF802E074F800E278F800E47AF800E57CF800E57BF801E3
          79F802E176F812DF7AF822DD7DF804D768F800D360F800CE5AF800CA54F809C7
          52F751B978DD5A625D710A09090B0000000000000000000000000007020B0038
          0F500055197506581F74055A2274005B2174005D2474005F287400602A740062
          2D7400642F740065327400673474006836740069377400693774006937740068
          367400673574006633740065307400632E7400612C7400602974005E2674105D
          2D71263F30490C0C0C0E00000000000000000000000000000000000000000001
          0002000100020001000200010002000201020002010200020102000201020002
          0102000201020002010200020102000201020002010200020102000201020002
          0102000201020002010200020102000201020002010200020102000201020102
          0102000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000C000001240000001C000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000070000001C0000
          01240000000C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000060B200224428101162872000102310000
          000E000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000E00010231011628720224
          428100060B200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000810200A5493BD106AB6E6063155A10009
          11540000001E0000000700000000000000000000000000000000000000000000
          00000000000000000000000000070000001E00091154063155A1116AB6E60B55
          93BD000810200000000000000000000000000000000000000000000000000000
          00000000000000000000000000000002040D0A4477981C8DF2FE1A84DCF50E54
          8AC903192C790001043600000010000000020000000000000000000000000000
          000000000002000000100001043603192C790E548AC91A84DCF51D8FF2FE0A45
          77980002040D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002052A4A681A82E0F12094FFFF2294
          F5FE1C77BCE70B395DA9010A1458000000220000000800000001000000010000
          000800000022010A14580C395DA91D77BCE72394F5FE2194FFFF1B85E0F1052B
          4A68000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000021728401574C2DB1C94FEFF1D94
          FFFF249AFCFF2A93E2F81A5D90CD051E33810002043900000014000000140002
          0439061E33811C5D90CD2E93E2F82898FCFF2091FFFF2293FEFF1A77C2DB0217
          2840000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000911200F5E99B91999FBFF1698
          FFFF1797FFFF209CFFFF33A6F7FF2F87C4EB123F62AD010D1968010D1968133E
          62AD3486C4EB3AA2F7FF2797FFFF1F90FFFF1F90FFFF2797FBFF166099B90009
          1120000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002040C0A446E90189AF2FC119D
          FFFF129BFFFF139AFFFF1A9DFFFF33AAFDFF43A3E4F82A6D9FDA2C6D9FDA49A1
          E4F83DA5FDFF2595FFFF1F90FFFF1F90FFFF2191FFFF2E9AF2FC10446E900002
          040C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002052842601893DEF10EA3
          FFFF0CA0FFFF0D9FFFFF0E9DFFFF129DFFFF2DAAFFFF52B8FBFF55B7FBFF35A4
          FFFF1F93FFFF1E90FFFF1F90FFFF1E90FFFF2897FFFF3393DEF1082842600000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000021321371780BFDA0FA9
          FEFF06A4FFFF07A3FFFF09A2FFFF0BA0FFFF0F9FFFFF1FA5FFFF22A2FFFF1798
          FFFF1995FFFF1D92FFFF1E90FFFF1F90FFFF349FFEFF3180BFDA031321370000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000060B19176494B422B2
          FAFF07ABFFFF03A8FFFF05A7FFFF06A5FFFF08A3FFFF0AA0FFFF0D9EFFFF119C
          FFFF1599FFFF1896FFFF1C93FFFF2293FFFF45A8FAFF276494B400060B190000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000001020B1244668C40B3
          EDFA24B7FFFF0CAEFFFF07ACFFFF04AAFFFF04A7FFFF06A5FFFF09A2FFFF0DA0
          FFFF109DFFFF1499FFFF1896FFFF2A9CFFFF50A9EDFA1842668C0001020B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000007000000210B2F4B8C50AD
          DFF557C9FFFF2BB8FFFF17B2FFFF0FAFFFFF08ACFFFF04A9FFFF05A6FFFF08A3
          FFFF0CA0FFFF109DFFFF1499FFFF38A8FFFF52A2DFF50D2E4B8C000000210000
          0007000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000A0001022E061B2E7932739ED574C8
          F1FC7CD4FFFF5DC9FFFF34BBFFFF20B5FFFF16B1FFFF0CAEFFFF05AAFFFF04A7
          FFFF08A4FFFF0CA0FFFF109DFFFF27A3FFFF48A9F1FC28699ED5061B2E790001
          022E0000000A0000000100000000000000000000000000000000000000000000
          00000000000000000002000000110004083F0F304A96498DB7E48CD3F6FE9CDF
          FFFF92DBFFFF85D6FFFF68CCFFFF42C0FFFF28B8FFFF1BB3FFFF0FAFFFFF06AB
          FFFF04A7FFFF08A3FFFF0CA0FFFF119CFFFF209EFFFF37A2F6FE2B7AB7E40B2D
          4A960004083F0000001100000002000000000000000000000000000000000000
          0000000000040000001800091253194464AC66A8D0F0A8E0FBFFB7E8FFFFAFE5
          FFFFA5E1FFFF9ADDFFFF8CD9FFFF74D1FFFF50C5FFFF31BBFFFF1EB4FFFF0FAF
          FFFF05AAFFFF04A6FFFF08A3FFFF0D9FFFFF129AFFFF1B99FFFF2D9DFBFF2B86
          D0F00F3D64AC010A125300000018000000040000000000000000000000010000
          0007000001260414226A2F6287C686C1E3F8C5ECFEFFCEEFFFFFC8ECFFFFC0EA
          FFFFB7E7FFFFACE4FFFF9FDFFFFF92DBFFFF7ED4FFFF62CBFFFF40C0FFFF25B6
          FFFF0FAFFFFF04A9FFFF05A5FFFF0AA1FFFF0F9DFFFF1499FFFF1A95FFFF2597
          FEFF298DE3F8135287C60213226A0000012600000007000000010000000E0001
          033209223783437BA2D7A6D5EFFCDBF3FFFFE1F5FFFFDBF3FFFFD5F1FFFFCEEF
          FFFFC6ECFFFFBCE9FFFFB0E5FFFFA3E1FFFF93DBFFFF83D6FFFF6CCEFFFF51C5
          FFFF33BBFFFF19B2FFFF0BAAFFFF0BA5FFFF0EA0FFFF129BFFFF1797FFFF1C93
          FFFF2293FFFF2590EFFC1462A2D7041F3783000103320000000E01080F431437
          539B649DC3EAC5E7F9FFEFFBFFFFF0FAFFFFECF9FFFFE7F7FFFFE2F6FFFFDCF3
          FFFFD4F1FFFFCBEDFFFFC0EAFFFFB3E6FFFFA4E1FFFF94DBFFFF82D5FFFF6ECE
          FFFF57C7FFFF3EBFFFFF27B6FFFF1CAEFFFF16A6FFFF149FFFFF1699FFFF1B95
          FFFF1F91FFFF2191FFFF2291F9FF1672C3EA052F539B00080F430E3D64994B94
          C5EA9ED2F1FCC5E3F6FDD0E9F8FED7EDFAFFDBEFFBFFDDF1FCFFDDF2FDFFDBF2
          FDFFD7F1FEFFD2F0FFFFCCEEFFFFC1EAFFFFB3E5FFFFA3E0FFFF91DBFFFF7ED4
          FFFF69CDFFFF51C5FFFF35BBFFFF23B2FEFF1CAAFDFF17A1FDFF1599FCFF1893
          FBFF1C8EFAFF1D8BF8FE1D8AF6FD1C89F1FC1170C5EA0437649906243E53163E
          5F76234B6C822D55778E3860829A426B8DA54D7799B05882A3BA628DAEC46A97
          B9CE70A0C4D98BBEE0F1C8EBFDFFCDEEFFFFC0EAFFFFB2E5FFFFA0E0FFFF8ED9
          FFFF79D3FFFF55C4FDFF1D9AE0F10B7EC4D90873B9CE0869AEC4085FA3BA0956
          99B0094E8DA50847829A0841778E063A6C8205345F7602213E53000000000000
          010200000204000205080003080D00050C1200081017000A141C020E19230311
          1E290616273726527797A9D4EFFAD6F1FFFFCAEEFFFFBDE9FFFFADE3FFFF9BDE
          FFFF85D7FFFF49B4EFFA074877970015273700101E29000D1923000A141C0008
          101700060C120004080D00020508000102040000010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000006192A4070A2C6DED4F0FEFFD5F1FFFFC7ECFFFFB7E7FFFFA8E2
          FFFF86D6FEFF308CC6DE01172A40000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000040913386487A6BCE0F6FEDCF4FFFFCFEFFFFFC1EAFFFFB1E6
          FFFF76C9F6FE175987A600040913000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002102B435D87B6D8EBDCF3FFFFD7F2FFFFCAEDFFFFB2E5
          FFFF52A5D8EB0628435D00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020C1625497BA1BECAEAFBFFDEF4FFFFD1F0FFFFA1DC
          FBFF2A71A1BE000C162500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000010307183D5B799BCAE9F7E0F5FFFFD3F1FFFF7AC0
          E9F70D395B790001030700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000031423375C94BED7D3EFFDFFC5EAFDFF488E
          BED7011323370000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000003060E25537897A7D6F3FC9CD2F3FC1C51
          78970003060E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000109233A525DA4D1E758A2D1E70723
          3A52000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000009101B1C5D8DAD1C5D8DAD0009
          101B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000010204031D3447031E35480001
          0204000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000A000200170002001A00020019000200190002
          001A000100150000000700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000002000A00260360004A0BA2004F0EA7004F0EA7004F0EA7004F
          0EA800450A9A0019024400000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000A0019006614B600A034FD00AB3FFE00B044FE00AF44FE00AA
          3EFE009D2EFA004A0B8A00020008000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C001D057824C111BA59FF13C96AFF13D070FF13D070FF13C8
          69FF10B752FF045A15970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C001D21873DC160DC9AFF6BE8ACFF6AECAEFF6AECAEFF6BE8
          ACFF5BD58DFE186326970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C011D10913EC135EA94FF3EF1A2FF3DF2A2FF3DF2A2FF3EF1
          A1FF33E187FE0C6725970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C011D009238C100E87AFF00ED81FF00EE82FF00ED82FF00EC
          80FF00DE6DFE00661F970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C011D009035C100E474FF00E87AFF00E97BFF00E87BFF00E8
          7AFF00DB68FE00651E970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C011D008D33C100E06EFF00E374FF00E474FF00E474FF00E4
          73FF00D763FE00631C970003000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000C011D008B30C100DB67FF00DF6CFF00DF6DFF00DF6DFF00DF
          6CFF00D25DFE00611A9600020009000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000060000000800000008000000080000000800000008000000080000
          000800000008000A012402872EC209D866FF0DDC6DFF0EDD6EFF0FDD6EFF10DD
          6FFF0AD05EFE015F1A9900020012000000080000000800000008000000080000
          0008000000080000000800000008000000050000000100000000000000000008
          001F0022036500290575002905750029067500290675002A0675002A0675002A
          06750029067400320783069232DB20D86EFF29DC78FF27DC77FF26DC76FF26DC
          76FF1ACF63FE04721EC4002B0679002A0674002A0675002A0675002A0675002A
          0675002A0575002A0575002A05750020025E000600180000000000000002002A
          045E00791BE3008625F1008928F1008C2BF1008F2CF100912EF100912FF10092
          30F100922FF100922FF207B345FB28D76FFF32DA78FF30DA77FF2ED976FF2DD9
          75FF1FD066FF04A63BF900912EF100922FF100922FF100922EF100902DF1008F
          2BF1008C2AF1008A27F1008624F1007516DB002102490000000000000004003A
          0974009730F900A640FF00AB44FF00AF49FF00B34CFF00B64FFF00B851FF00B9
          52FF00B951FF00B850FF0EC458FF30D56FFF39D776FF37D775FF35D775FF35D6
          73FF27D069FF06BD53FF00B750FF00B951FF00B951FF00B850FF00B64FFF00B3
          4CFF00AF48FF00AA43FF00A43FFF00932BF3002F055A0000000000000004033C
          0A741CA844F82ABD60FF29C164FF29C568FF28C96BFF28CB6EFF27CD6FFF27CE
          70FF27CE71FF25CD6EFF2ED06DFF3ED474FF3FD576FF3ED475FF3CD474FF3BD4
          72FF39D371FF2BCE6FFF22CC6DFF22CD6DFF22CC6CFF22CB6BFF21C968FF21C6
          64FF20C260FF20BE5BFF1EB854FF0C9D30F1002F055A0000000000000004063C
          0A7449B559F871D184FF70D285FF6FD487FF6ED589FF6CD68AFF6BD78CFF6BD8
          8CFF6AD98DFF62D889FF4DD379FF47D375FF46D375FF45D375FF43D274FF42D2
          72FF4AD377FF5DD785FF5FD786FF5ED684FF5DD581FF5CD37EFF5BD17BFF5ACF
          77FF59CC73FF58CA70FF50C565FF20A230F1002E035A0000000000000004043A
          08743AAD46F860C86FFF5ECA71FF5DCB72FF5CCD74FF5BCE75FF59CF77FF58D0
          78FF56D179FF54D178FF50D176FF4ED176FF4DD175FF4CD175FF4AD174FF49D0
          72FF48CF71FF4ACF71FF4ACE6FFF48CC6CFF47CB69FF45C965FF44C661FF43C4
          5EFF42C159FF41BF55FF3DBC4EFF1D9E2BF1012E035A00000000000000040438
          07733CAC46F868C973FF67CB75FF66CC77FF65CD78FF63CF79FF62CF7AFF61D0
          7BFF5FD17BFF5ED17CFF5CD17BFF56D077FF54D076FF53D075FF51CF74FF50CF
          73FF51CF73FF54CF74FF53CE72FF51CC6FFF4FCA6CFF4EC869FF4DC765FF4CC4
          62FF4BC25DFF4ABF59FF46BC52FF219E2BF2012D035A00000000000000010230
          0561309C37EE66C06EFC69C172FB67C273FB66C375FB66C475FB65C476FB64C5
          77FB64C678FB64C779FC5BC974FE58CD74FF5BCE77FF59CE76FF58CE75FF57CE
          73FF58CC73FF5DC874FE5DC573FC5CC370FB5BC26EFB5BC16CFB5AC069FB5ABE
          67FB59BC64FB59BB62FB4EB756FC1B8F21E60025014A0000000000000000000E
          011D063A0A6C114A1680134B1880134B1980134B1980134B1A80134B1A80124C
          1A80124B1A7F12501A8E1B8D2FE050C668FF63CE79FF61CE77FF5FCD76FF5FCD
          76FF47BF5EFF197A27CB124D1A85124D1A80124D1980124D1980124C1880124C
          1880124C1780124C16800F4B128003360664000A001400000000000000000000
          0000000100020001000300010003000100030001000300010003000100030001
          0003000100030009001F0F701EC153C466FF6ACE7BFF67CD79FF66CC78FF66CD
          77FF47BA5AFE094F12970002000C000100030001000300010003000100030001
          0003000100030001000300010003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000009001D116F1DC159C366FF71CD7DFF6ECC7BFF6DCC7AFF6DCC
          79FF4DB95AFE0B4E12970002000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000009001D116C1BC15EC267FF78CD80FF75CC7DFF74CC7CFF74CC
          7CFF51B75BFE0B4D12970002000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000008001D136A1AC163C168FF7FCD83FF7CCC80FF7BCC7FFF7BCC
          7FFF56B65CFE0C4C11970002000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000008001D146819C169C16AFF86CE86FF83CD84FF81CC82FF81CC
          82FF5BB65EFE0C4A11970002000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000008001D14681AC16EC26FFF8CD08CFF8ACF8AFF88CF88FF88CF
          88FF60B862FE0E4912970001000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000008001D17681CC176C677FF96D596FF94D393FF92D392FF92D3
          92FF68BA69FE0F4914970001000A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000700191A6520BB78C479FF98D399FF95D196FF94D195FF94D1
          95FF6BB96EFE1147178E00010008000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000002000808300E6627652DAC326C38AE326B37AE326C37AE326B
          37AE235E29A406200A4700000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000200060005000F0005001000050010000500100005
          00100004000E0001000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          0000000000020000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000020000000000000000000000020000
          051C000012450000154B0000154B0000154B0000164B0000164B0000174B0000
          174B0000174B0000174B0000184B0000184B0000184B0000184B0000184B0000
          184B0000184B0000184B0000184B0000184B0000174B0000174B0000174B0000
          174B0000164B0000164B0000154B0000103C0000020F000000000000020A0001
          3C75000485DA00058EE1000790E1000792E1000893E1000995E1000A97E1000A
          98E1000B99E1000B9AE1000B9AE1000C9BE1000C9BE1000C9BE1000C9BE1000C
          9BE1000C9BE1000C9BE1000B9AE1000B9AE1000A99E1000A99E1000997E10008
          95E1000794E1000692E1000590E100037BCB0000234900000001000007120004
          659F000FBFFF0012C4FF0014C6FF0015C8FF0017C9FF0019CAFF001BCBFF001B
          CDFF001DCDFF001ECEFF001FCFFF001FCFFF001FD0FF001FD0FF001FD0FF001F
          D0FF001FCFFF001FCFFF001ECEFF001DCEFF001BCDFF001ACCFF0019CAFF0017
          C9FF0015C7FF0013C6FF0012C4FF000DB6F80002437000000003000007120109
          6DA11029CDFF1B36D4FF1C38D5FF1C3AD6FF1C3CD8FF1C3DD9FF1C3FDBFF1C40
          DCFF1C41DCFF1C42DDFF1C43DEFF1C44DEFF1C44DFFF1C44DFFF1C44DFFF1C44
          DFFF1C44DEFF1C43DEFF1C42DDFF1C41DCFF1C40DCFF1C3FDBFF1C3DD9FF1C3C
          D8FF1C3AD6FF1C38D4FF1C36D3FF1227C3F802054A740000000400000812010F
          72A11E43DBFF385DE5FF3961E7FF3963E8FF3965EAFF3967ECFF3969EEFF396A
          EFFF396CF0FF396DF1FF396EF2FF396FF2FF396FF3FF396FF3FF396FF3FF396F
          F2FF396EF2FF396CF1FF396BF0FF396AEEFF3969EDFF3967ECFF3965EAFF3962
          E8FF3960E6FF395DE4FF385AE2FF223DCEF802074D7400000004000008120211
          75A11640DEFF214FE5FF2152E8FF2156EAFF2159EDFF215BEFFF215DF1FF2160
          F3FF2162F4FF2163F6FF2164F7FF2165F7FF2165F8FF2166F8FF2165F7FF2164
          F7FF2163F6FF2161F5FF2160F3FF215EF1FF215CEFFF2159EEFF2156EBFF2153
          E9FF2150E6FF214DE3FF2149E0FF1131CDF800064E7400000004000008120411
          75A12448DCFF3258E4FF315BE6FF315EE8FF3160EAFF3163ECFF3165EEFF3166
          EFFF3168F1FF316AF2FF316BF3FF316BF4FF316CF4FF316CF4FF316BF4FF316B
          F3FF316AF2FF3168F1FF3167F0FF3165EFFF3163EDFF3161EBFF315EE9FF315C
          E7FF3159E4FF3156E2FF3152DFFF1834CCF800074F7400000004000009120611
          76A13955DCFF526FE5FF5271E7FF5273E9FF5275EAFF5277ECFF5279EDFF527A
          EFFF527CF0FF527DF1FF527DF1FF527EF2FF527EF2FF527EF2FF527EF2FF527E
          F1FF527DF1FF527CF0FF527BEFFF5279EEFF5277EDFF5276EBFF5274E9FF5272
          E7FF5270E5FF526DE4FF5069E1FF2B41CEF802095073000000030000070D040D
          6B90384ED3F96177E1FC6179E2FB617AE3FB617DE5FB617FE6FB6180E8FB6182
          E9FB6183EAFB6184EBFB6185ECFB6185ECFB6186ECFB6186ECFB6186ECFB6185
          ECFB6185EBFB6184EBFB6183EAFB6181E9FB6180E8FB617FE6FB617DE5FB617B
          E3FB6179E1FB6177E0FB6073DEFC3447C6ED0309445D00000001000001020003
          263308126079111D6A8012206B8012216D8012236E8012256F80122671801227
          72801229738012297380122A7480122B7580122B7580122C7580122C7580122C
          7580122B7580122B7580122A7480122973801228728012277180122670801224
          6F8012236E8012216D80121F6B800913576B0003151B00000000000000000000
          0000000001020000020300000203000002030000020300000203000002030000
          0203000003030000030300000303000003030000030300000303000003030000
          0303000003030000030300000303000003030000030300000303000003030000
          0203000002030000020300000203000002020000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000040000000D000000160000001800000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0018000000120000000800000001000000000000000000000000000000000000
          00010000000B00000227020313500708246A080A2870090B2771090B2871090B
          2871090B2871090B2871090B2871090B2871080A2871080A2871080928710708
          2871070828710607287105062871050528710404287104042771040426710404
          246F020219600000063C00000016000000040000000000000000000000000000
          000B01010E3D0F1154922B2E9ED13A3EBCE83D42C1EC3E43C2EC3F44C4EC3F44
          C5EC3F44C7EC3F44C8EC3F44C9EC3E43CAEC3E42CCEC3D40CDEC3C3FCEEC3C3F
          CEEC3C3FCFEC3C3FCFEC3C3FCFEC3C3FD0EC3C40D0EC3D41CEEC3F43CDEC3F43
          CAEB3639B4E01B1D76B8040423650000021E0000000200000000000000040000
          0A2B12136B9F3334C3EF2E2FCAFF2121C4FF1E1EC6FF1E1ECAFF1E1ECDFF1E1E
          D0FF1E1ED3FF1E1ED7FF1E1EDAFF1E1EDDFF1E1EE0FF1E1EE3FF1E1EE6FF2021
          E8FF2427E9FF282BEAFF2C31EBFF2F35ECFF333BEDFF3640EDFF3A45EEFF3E4A
          EFFF4753F0FF4C56E6FC2B2F9DD1050526600000000E000000000000010D0606
          436B2324BDEB1717BDFF0302B6FF0000B9FF0000BDFF0000C1FF0000C4FF0000
          C8FF0000CCFF0000D0FF0000D3FF0000D7FF0000DBFF0000DEFF0000E2FF0002
          E4FF0608E5FF0B0FE6FF1016E7FF141CE8FF1822E9FF1D28EAFF212EEBFF2533
          ECFF2A39EDFF3646EFFF4551E7FD1D207FB701010B2C0000000200000A1C0D0D
          7BA21313BDFD0101B2FF0000B6FF0000BAFF0000BEFF0000C1FF0000C5FF0000
          C8FF0000CCFF0202D0FF1111D6FF2A2ADEFF4343E4FF4F4FE8FF4B4BEBFF3A3B
          EAFF2326E8FF1318E7FF1016E7FF141CE8FF1A24E9FF1E29EBFF232FEBFF2734
          ECFF2B3AEDFF2F3FEFFF394AEFFF2F38BDE60405275000000004000014240808
          8BB80404B3FF0000B2FF0000B6FF0000B9FF0000BDFF0000C0FF0000C5FF0202
          C9FF2222D2FF6464E2FFA9A9F0FFD4D4F8FFE8E8FCFFEEEEFDFFECECFDFFE1E1
          FCFFC4C4F9FF9092F4FF4C51EDFF2027E9FF1923E9FF1E29EAFF232FEBFF2835
          EDFF2C3BEDFF3040EFFF3447F0FF2D3AD1F20607396300000004000015250101
          85B90000B0FF0000B1FF0000B5FF0000B9FF0000BCFF0000C0FF0808C6FF4B4B
          D7FFB6B6F0FFEFEFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFFFFDBDDFCFF8E92F4FF353DECFF1D28EAFF222EEBFF2734
          ECFF2B3AEDFF2F40EFFF3446F0FF2835D1F305073A6500000005000014250000
          80B90000AFFF0000B0FF0000B4FF0000B8FF0000BBFF0808C1FF6363DAFFD9D9
          F6FFFFFFFFFFFFFFFFFFFBFBFEFFE4E4F8FFC5C5F1FFB3B3EEFFBABAF0FFD4D4
          F5FFF2F2FCFFFFFFFFFFFFFFFFFFF7F7FEFFAEB1F7FF4049EDFF212CEBFF2633
          ECFF2A39EDFF2E3FEEFF3345F0FF2634CDF30406386500000005000013250000
          7CB90000ACFF0000AFFF0000B3FF0000B7FF0303BBFF5050D2FFDBDBF6FFFFFF
          FFFFFFFFFFFFE8E8F8FF9898E5FF4C4CD9FF2424D6FF1919D9FF1C1CDDFF3333
          E0FF7071E6FFC7C7F3FFFBFBFEFFFFFFFFFFF8F9FEFFA9ADF7FF353FECFF2431
          ECFF2938EDFF2D3EEEFF3244EFFF2633CAF30406356500000005000012250000
          78B90303ABFF0505B0FF0606B3FF0404B7FF2C2CC5FFBDBDEEFFFFFFFFFFFFFF
          FFFFDCDCF4FF6565D9FF0F0FCEFF0000D2FF0000D7FF0000DBFF0000DFFF0000
          E1FF0607E1FF3335E2FFAAACEFFFF8F8FDFFFFFFFFFFF3F3FEFF7F86F3FF2834
          ECFF2735ECFF2C3BEEFF3142EEFF2432C6F30406346500000005000011250101
          75B90808AAFF0F0FB2FF1010B5FF1313BAFF7878D9FFF3F3FCFFFFFFFFFFF0F0
          FAFF7979DBFF1717CCFF0909D0FF0505D3FF0202D6FF0000D9FF0000DEFF0000
          E1FF0203E4FF0407E4FF3337E3FFBDBFF3FFFEFEFFFFFFFFFFFFC8CBFAFF414C
          EEFF2431ECFF2A39EDFF2F3FEDFF222FC3F30405326500000005000010250101
          70B90C0CA8FF1717B3FF1717B7FF2A2AC0FFB8B8EBFFFFFFFFFFFEFEFFFFB9B9
          EAFF3434CEFF2020D0FF2121D3FF1F1FD6FF1818D8FF0F0FDAFF0707DCFF0101
          DFFF0101E3FF0406E4FF090CE4FF5F62E8FFEDEDFBFFFFFFFFFFEEEFFDFF6C74
          F2FF222EECFF2835EDFF2C3BEBFF202CC1F3040532650000000500000F250101
          6DB91010A7FF1E1EB3FF1E1EB7FF4545C6FFDBDBF4FFFFFFFFFFF6F6FCFF8484
          DDFF2828CDFF2929D0FF2B2BD4FF2D2DD7FF2D2DDBFF2C2CDDFF2626DFFF1919
          E0FF0A0BE2FF0404E4FF0407E4FF292CE6FFC9CAF7FFFFFFFFFFFBFBFFFF8F94
          F4FF232FEBFF2431ECFF2837EAFF1E28C0F3040432650000000500000E250101
          68B91515A5FF2525B4FF2525B8FF5C5CCBFFE9E9F8FFFFFFFFFFECECFAFF6D6D
          D9FF2D2DCCFF3131D0FF3232D3FF3434D6FF3535DAFF3636DDFF3838E0FF3838
          E3FF3131E5FF2021E5FF0E0FE5FF1517E6FFABACF5FFFFFFFFFFFFFFFFFFA4A8
          F6FF252FEBFF202CEBFF2432E8FF1B25BEF3030431650000000500000D250101
          65B91919A3FF2C2CB4FF2C2CB8FF6363CCFFEBEBF8FFFFFFFFFFECECFAFF7070
          D9FF3434CCFF3838D0FF3939D3FF3A3AD6FF3B3BD9FF3F3FDCFF3F3FDFFF4040
          E2FF4242E5FF4242E8FF3637E8FF2C2DE8FFACADF6FFFFFFFFFFFFFFFFFFA5A8
          F5FF222AEAFF1C26EAFF202CE7FF1820BCF3030431650000000500000D250202
          61B91D1DA2FF3434B5FF3434B9FF5C5CC7FFE3E3F5FFFFFFFFFFF4F4FCFF8888
          DFFF3E3ECDFF4040D0FF4141D3FF4545D6FF7171E2FF9E9EEDFF8383E9FF5151
          E2FF4949E3FF4B4BE6FF4C4CE9FF5C5CECFFCECEFAFFFFFFFFFFFDFDFEFF9093
          F1FF191FE8FF1720E9FF1B24E5FF141CBAF3020330650000000500000C250202
          5EB92121A1FF3B3BB6FF3C3CBAFF5050C1FFCCCCEBFFFFFFFFFFFDFDFFFFB7B7
          EBFF4F4FCFFF4646CFFF4747D2FF5C5CD9FFCDCDF4FFFCFCFEFFE3E3FAFF7C7C
          E9FF4F4FE3FF5252E5FF5252E7FF8282EFFFEDEDFDFFFFFFFFFFF2F2FCFF6B6D
          ECFF0E13E6FF1218E8FF151DE3FF1016B8F3020330650000000500000C250202
          5BB926269FFF4343B7FF4444BBFF4949BEFFA2A2DAFFFAFAFCFFFFFFFFFFEBEB
          F9FF8484DDFF4F4FD0FF4E4ED1FF6C6CDBFFE4E4F9FFFFFFFFFFF5F5FDFF9494
          EBFF5757E1FF5858E4FF6A6AE8FFC2C2F6FFFDFDFFFFFFFFFFFFDDDDF7FF4F51
          E7FF0A0DE5FF0B0FE6FF0F14E1FF0B0FB6F3010230650000000500000B250202
          5AB92A2A9FFF4A4AB7FF4C4CBCFF4C4CBEFF7373C8FFDFDFF0FFFFFFFFFFFEFE
          FFFFD6D6F4FF8080DBFF5757D2FF7272DAFFE5E5F8FFFFFFFFFFF5F5FDFF9999
          EAFF5E5EE0FF6D6DE5FFB1B1F2FFF4F4FDFFFFFFFFFFFCFCFDFFB7B7EEFF6262
          E9FF2A2BE8FF080AE4FF0709DFFF0709B4F3010130650000000500000B250303
          59B92E2E9FFF5252B8FF5454BCFF5454BFFF5A5AC0FF9F9FD5FFF4F4F9FFFFFF
          FFFFFEFEFFFFDEDEF5FF8383DCFF7878DAFFE6E6F8FFFFFFFFFFF5F5FDFF9D9D
          EAFF7B7BE3FFC2C2F3FFF6F6FDFFFFFFFFFFFEFEFEFFDADAF2FF8585E5FF7070
          EBFF6262EBFF2828E5FF0303DDFF0102B2F300002F650000000500000C250303
          58B933339FFF5959B9FF5B5BBDFF5C5CBFFF5D5DC2FF6A6AC3FFB8B8DDFFF7F7
          FAFFFFFFFFFFFCFCFEFFA8A8E4FF7F7FDAFFE7E7F8FFFFFFFFFFF6F6FDFFA2A2
          E9FFABABEBFFF9F9FEFFFFFFFFFFFFFFFFFFE2E2F3FF9999E1FF7676E5FF7777
          E9FF7979EAFF6262E8FF1B1BDBFF0000ADF300002F650000000500000B250404
          56B93A3AA0FF6161BBFF6262BDFF6464C0FF6565C3FF6565C4FF7474C5FFB0B0
          D8FFE2E2EEFFD4D4E9FF8B8BD4FF8484D9FFE8E8F8FFFFFFFFFFF6F6FDFFA6A6
          E8FFA4A4E3FFEEEEF6FFF6F6FAFFD7D7EDFF9999DDFF7C7CE1FF7D7DE6FF7F7F
          E7FF8181E8FF8282E9FF5656DFFF0E0EABF300002E650000000500000B250606
          56B94444A3FF6969BCFF6969BEFF6A6AC0FF6C6CC3FF6E6EC5FF6E6EC7FF7474
          C5FF8585C8FF8181C9FF7474CDFF8A8AD9FFE9E9F8FFFFFFFFFFF7F7FCFFABAB
          E7FF8282D7FFA0A0D8FFA9A9D9FF8F8FD7FF8181DEFF8383E2FF8585E3FF8686
          E4FF8888E5FF8A8AE6FF7D7DE2FF2A2AACF300002C650000000500000B250909
          58B95050A8FF7070BDFF7171BFFF7272C1FF7373C3FF7474C5FF7676C8FF7676
          C9FF7777CAFF7878CDFF7A7ACFFF9191D8FFEBEBF8FFFFFFFFFFF7F7FDFFB0B0
          E7FF8282DAFF8383D8FF8484D9FF8787DDFF8A8AE0FF8B8BE0FF8D8DE1FF8E8E
          E2FF8F8FE3FF9191E4FF8C8CE1FF3C3CACF301012C650000000400000B241111
          5BB96060AFFF7777BEFF7878BFFF7979C2FF7A7AC4FF7B7BC6FF7D7DC8FF7E7E
          CAFF8080CCFF8181CEFF8282CFFF9696D8FFEBEBF8FFFFFFFFFFF7F7FCFFB2B2
          E5FF8A8AD9FF8C8CDBFF8E8EDCFF8F8FDDFF9191DEFF9292DFFF9494E0FF9595
          E1FF9696E1FF9898E1FF9696E0FF4E4EB0F306062E640000000400000A1F2323
          64B47272B6FF7E7EBFFF7F7FC1FF8080C3FF8282C5FF8383C7FF8585C9FF8686
          CBFF8888CDFF8989CEFF8A8AD0FF9393D2FFCDCDE5FFF0F0F5FFDCDCECFFA3A3
          DAFF9292D9FF9494DAFF9696DBFF9797DCFF9999DDFF9A9ADEFF9C9CDFFF9D9D
          DFFF9E9EDFFF9F9FDFFFA1A1DFFF7070BAF10F0F305D000000020000050F2828
          5A957E7EBBFD8686C0FF8686C2FF8787C4FF8989C6FF8A8AC8FF8C8CCAFF8D8D
          CBFF8F8FCDFF9090CFFF9292D0FF9292D1FF9B9BCEFFA9A9D0FFA1A1D1FF9898
          D5FF9A9AD8FF9B9BDAFF9D9DDBFF9E9EDBFFA0A0DCFFA1A1DDFFA3A3DDFFA4A4
          DDFFA5A5DEFFA6A6DDFFAEAEE0FF8484B6E10F0F233F00000000000000011111
          2B4B6E6EA5E09797C7FF9191C5FF8F8FC5FF9090C7FF9292C9FF9393CAFF9595
          CCFF9696CEFF9898CFFF9999D1FF9A9AD2FF9B9BD3FF9A9AD3FF9D9DD5FFA0A0
          D7FFA1A1D8FFA3A3D9FFA4A4DAFFA6A6DBFFA7A7DCFFA9A9DCFFAAAADCFFABAB
          DCFFADADDDFFB8B8E1FFBDBDDFFB57577A9F0303091300000000000000000101
          060D2D2D52798686B4E6ABABD2FFABABD2FFABABD3FFADADD5FFAEAED6FFB0B0
          D8FFB2B2D9FFB4B4DBFFB5B5DCFFB7B7DDFFB9B9DFFFBABAE0FFBCBCE1FFBDBD
          E2FFBFBFE3FFC1C1E4FFC2C2E5FFC4C4E5FFC5C5E6FFC6C6E6FFC8C8E6FFC9C9
          E7FFCFCFE9FFCCCCE4FA7B7B9ABA141424370000000100000000000000000000
          00000202070E1F1F3B575D5D83A98585A8CC9090B1D29292B2D29393B3D29595
          B4D29797B5D29898B6D29A9AB7D29C9CB8D29D9DB8D29F9FB9D2A0A0BAD2A1A1
          BBD2A3A3BCD2A5A5BDD2A6A6BDD2A6A6BDD2A7A7BED2A8A8BED2A9A9BED2A7A7
          BDD28F8FA8C050506B860F0F1C2B000000020000000000000000000000000000
          0000000000000000010205050E1810101F2D1616233216162332161624321717
          2432171724321818243218182432181825321818253219192532191925321919
          25321A1A25321A1A25321A1A26321A1A26321A1A26321A1A26321A1A26321919
          24310E0E19250101060B00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000400000003000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000040000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000020000000F02020229070707440A0A0A510A0A0A500707073F0101
          01220000000A0000000100000000000000000000000000000000000000000000
          000000000000000000000000000400000014040404320909094A0B0B0B530909
          094D050505370101011B00000006000000000000000000000000000000000000
          0004020202281010106E232322B02B2B2AD12E2D2CDC2F2E2EDB2E2E2ECC2424
          24A30D0D0D580101011700000001000000000000000000000000000000000000
          00000000000000000007050505331919197F2B2B2ABC2F2F2ED62E2E2DDD2D2C
          2BD9282827C31919199307070748000000110000000000000000000000040404
          042F1A1A1A9E2A2A29E924262AFE262A34FF2D3440FF2B3240FF262B35FF2E2F
          32FC343434D91616167401010115000000000000000000000000000000000000
          0000000000050707073A282828AF353535F1292B32FF2B303CFF323842FF2E33
          3CFF25282EFF292929F8262625CC0D0D0D640000000F000000000101011A1414
          148B252627F31F273DFF415788FF6D89C0FF809FD5FF7A98D3FF5D79B9FF3143
          76FF282C3AFF333333D90D0D0D4F000000040000000000000000000000000000
          00000303031B22222299333437F7273251FF51679FFF7F98CDFF91AAD9FF8AA3
          D1FF667CAAFF324162FF21252CFE222221CE0707074500000004070707491E1E
          1ED51B2847FF3C60BAFF648EF6FF6391FBFF5F8FFAFF5F8DFAFF5C88FBFF5177
          EDFF273E92FF2C303FFC21212095020202110000000000000000000000000000
          00000D0C0C46313132DB25325DFF4A6BD0FF769BFEFF749DFFFF739FFFFF75A1
          FFFF749EFFFF618AE9FF2A4681FF1F232BFA1312128E010101120B0B0B6C191D
          27EB1E419CFF386BF4FF3467F6FF2F61F4FF3366F4FF3667F4FF305FF4FF2B57
          F7FF2649DDFF232E66FF262525B40404041C0000000000000000000000000000
          0001131312602D303CEE2642ACFF466FFEFF4372FFFF3D71FFFF4579FFFF487B
          FFFF4578FFFF417AFFFF336BDFFF1A2F59FF151414B30202021E0B0B0A6F151D
          32ED1640BFFF1C50F2FF1E4CF1FF214CF1FF2751F1FF2B53F2FF2950F1FF143A
          F0FF0E2EDFFF1E2B76FF242424B90505051E0000000000000000000000000000
          0001131212642A2E42EF1F3CC0FF2B55FCFF2958FFFF2E5FFFFF3767FFFF3B6B
          FFFF3969FFFF235FFFFF1A5CF4FF15357BFF131314B7030303200F0E0E5A191C
          28E510298DFF163DDAFF1B3FEAFF1F3EECFF2444EEFF2947EEFF2844EBFF0D29
          DEFF061BAEFF222752FF292928B60606061C0000000000000000000000000000
          000116161661303139EE20328BFF2949E2FF284FF8FF2D55FDFF335CFFFF3961
          FFFF3660FDFF174BF6FF083CCDFF112556FE171817A404040415101010303333
          33C81A203FFF15278AFF1E33C0FF2336D2FF293CD8FF2D3FD6FF2031C5FF0817
          9DFF131A58FF2F3035FF2B2B2AB40606061A0000000000000000000000000000
          00011818185E383837ED2A2E45FF2C3B91FF3048CDFF3551E3FF3B58EBFF3F5B
          EBFF2B49DCFF092BB6FF091D65FF2B2E37F82525247701010106070707154444
          44A3535354FE282B3DFF1A2058FF1E2577FF242C85FF232B81FF151C65FF1A1E
          43FF303135FF2A2929FE1C1C1CA4040404130000000000000000000000000000
          00001111114E282828E6313131FF303240FF2A3263FF2F3B86FF344195FF2F3D
          90FF15226FFF131C49FF3A3C43FF5B5B5BE91E1E1E4B00000000010101042727
          2762686867EE686867FF545454FF494A4FFF4B4C54FF4B4C53FF424245FF3939
          38FF212120FF0F0F0FFB12121286010101090000000000000000000000000000
          00000A0A0A35161616D3131313FF302F2EFF3E3E3EFF48484DFF4E5057FF4B4C
          53FF4C4C50FF5E5D5DFF6D6D6CFE4D4D4DB70A0A0A1D00000000000000000A0A
          0A20474747BA5F5F5FFF5D5D5DFF6A6A6AFF808080FF777777FF3E3E3DFF0F0F
          0FFF020202FF151515F81919197A010101060000000000000000000000000000
          00000A0A0A2D222222CB080808FF050505FF202020FF5A5A59FF828281FF7777
          77FF616161FF5C5C5CFF5A5A5AEE262626680101010300000000000000000101
          01162A2A2AA3595959FD515151FF555555FF6D6D6DFF6A6A6AFF333333FF0808
          08FF030303FF212121F81C1C1C7B0000000B0000000000000000000000000000
          00010A0A0A312C2C2CC9101010FF010101FF161616FF4E4E4EFF727272FF6262
          62FF4F4F4FFF565656FF4A4A4AE40E0E0E580000000300000000000000000101
          0121191919C04F4F4FFF565656FF515151FF666666FF717171FF474747FF1414
          14FF050505FF222222FB1A1A1AB10000004C0000000E00000000000000020000
          0020080808762A2A2AE0121212FF050505FF282828FF5C5C5CFF6B6B6BFF5959
          59FF505050FF5B5B5BFF393939F50909097A0000000500000000000000000101
          010E1313139D3D3D3DFD575757FF525252FF696969FF7F7F7FFF5A5A5AFF1D1D
          1DFF060606FF1B1B1BFF0F0F0FF8010101CA0000004800000004000000130000
          007F030303E8191919FD101010FF090909FF363636FF696969FF6A6A6AFF5555
          55FF535353FF525252FF292929E8080808560000000100000000000000000000
          0002101010652F2F2FEF464646FF515151FF707070FF8D8D8DFF696969FF2626
          26FF070707FF0A0A0AFF030303FF010101FB01010194000000130000003A0101
          01CE010101FF060606FF080808FF0D0D0DFF414141FF707070FF6A6A6AFF5656
          56FF4D4D4DFF3D3D3DFF232323C5060606290000000000000000000000000000
          00000B0B0B32333333CF3C3C3CFF3F3F3FFF595959FF757575FF5C5C5CFF2A2A
          2AFF111111FF0C0C0CFF070707FF040404FF020202C700000033000000690202
          02EF050505FF090909FF0D0D0DFF171717FF3E3E3EFF606060FF575757FF4545
          45FF3C3C3CFF3C3C3CFC212121900202020C0000000000000000000000000000
          0000040404122F2F2FA04F4F4FFE444444FF3D3D3DFF3D3D3DFF353535FF2929
          29FF212121FF1B1B1BFF151515FF0F0F0FFF090909E102020258050505900C0C
          0CFB121212FF181818FF1E1E1EFF242424FF2E2E2EFF383838FF3B3B3BFF3E3E
          3EFF494949FF4A4A4AEE17171758000000010000000000000000000000000000
          0000000000031F1F1F66565656F35C5C5CFF535353FF484848FF3F3F3FFF3939
          39FF323232FF2C2C2CFF262626FF202020FF181818EE0808087E0F0F0FB11C1C
          1CFF222222FF282828FF2E2E2EFF343434FF3B3B3BFF424242FF4D4D4DFF5757
          57FF5D5D5DFF444444CA0A0A0A27000000000000000000000000000000000000
          00000000000010101031515151D4636363FF616161FF5D5D5DFF565656FF4D4D
          4DFF434343FF3C3C3CFF353535FF2F2F2FFF282828F6121212A11B1B1BC92B2B
          2BFF313131FF373737FF3E3E3EFF464646FF515151FF595959FF5F5F5FFF6363
          63FF676767FC373737930303030B000000000000000000000000000000000000
          0000000000000303030B3C3C3C8C727272F8707070FF696969FF626262FF5A5A
          5AFF525252FF4F4F4FFF4B4B4BFF434343FF353535FC1B1B1BD3252525E73C3C
          3CFF464646FF4D4D4DFF505050FF555555FF5C5C5CFF636363FF6D6D6DFF7878
          78FF686868DC1D1D1D4900000000000000000000000000000000000000000000
          00000000000000000000151515305F5F5FBB868686FE838383FF7A7A7AFF7171
          71FF646464FF5E5E5EFF5E5E5EFF575757FF3E3E3EFF343434FA353535FC4949
          49FF5B5B5BFF5E5E5EFF5E5E5EFF646464FF6E6E6EFF797979FF868686FF8181
          81F23F3F3F810606060F00000000000000000000000000000000000000000000
          00000000000000000000010101021D1D1D3A636363B68C8C8CF6939393FF8D8D
          8DFF7A7A7AFF6F6F6FFF6B6B6BFF626262FF515151FF545454FF4D4D4DFF5656
          56FF666666FF6B6B6BFF6F6F6FFF7A7A7AFF878787FF8E8E8EFF7F7F7FE54646
          46850B0B0B170000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010213131334474747C47B7B7BFF8E8E
          8EFF858585FF868686FF898989FF7D7D7DFF686868FF6C6C6CFF595959FF6D6D
          6DFF838383FF858585FF7D7D7DFF848484FF848484FF686868F82D2D2D850808
          0812000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000B131313943F3F3FFD5D5D
          5DFF5E5E5EFF6C6C6CFF979797FF969696FF747474FF737373FF606060FF8282
          82FF9C9C9CFF848484FF5B5B5BFF5F5F5FFF535353FF2E2E2EE8070707490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002141414543A3A3AE44848
          48FF454545FF484848FC666666D56D6D6DBF646464D7707070FB5C5C5CF06666
          66C96C6C6CC1595959E9414141FF494949FF444444FC2C2C2CB20606061D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404040D232323633D3D
          3DB0444444BF373737981616163C0C0C0C191C1C1C42454545992E2E2E7B1010
          10270D0D0D1E24242463404040B1434343BF3535359713131336000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202050A0A
          0A180C0C0C1F060606100000000000000000010101020707070F0404040A0000
          000000000000020202050A0A0A180D0D0D1F0606061000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000001010107090909291010104110101043101010431010
          1043101010431010104310101043101010431010104310101043101010431010
          1043101010431010104310101043101010431010104310101043101010430D0D
          0D330202020C0000000000000000000000000000000000000000000000000000
          000000000000000000000909091252525284838383C7838383C8828282C78282
          82C7828282C7828282C7828282C7838383C7878787C78A8A8AC7858585C78282
          82C7838383C7848484C7848484C7848484C7848484C7848484C7858585C86969
          69A2101010220000000000000000000000000000000000000000000000000000
          000200000004000000040505050F6565658DCCCCCCFBD3D3D3FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD5D5D5FFD7D7D7FFCBCBCBFFCECE
          CEFFD5D5D5FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FF8686
          86B30D0D0D1C0000000400000004000000040000000200000000010101100A0A
          0A3310101047101010480F0F0F483B3B3B7FBEBEBEEDDCDCDCFFDBDBDBFFDBDB
          DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDADADAFFDBDB
          DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFCBCBCBF75656
          569B1010104B1010104810101048101010470909092F0000000C2222224C7171
          71B88C8C8CD98B8B8BD98A8A8AD88B8B8BDDABABABF7D2D2D2FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFB2B2B2FB8686
          86E38A8A8AD88B8B8BD98B8B8BD98B8B8BD86A6A6AAF1B1B1B3F4C4C4C7CB4B4
          B4F1C1C1C1FFC0C0C0FFC1C1C1FFB1B1B1FF7C7C7CFFA8A8A8FFB7B7B7FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFAEAEAEFF747474FF9595
          95FFC2C2C2FFC1C1C1FFC1C1C1FFC1C1C1FFAFAFAFEB4444446B56565687BCBC
          BCF3C7C7C7FFC7C7C7FFC8C8C8FFADADADFF323232FF2A2A2AFF353535FF3434
          34FF343434FF343434FF333333FF333333FF333333FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF2C2C2CFF1B1B1BFF8383
          83FFCACACAFFCACACAFFCACACAFFCACACAFFB9B9B9EE4B4B4B715F5F5F8EC4C4
          C4F5CFCFCFFFCFCFCFFFD0D0D0FFBEBEBEFF474747FF0D0D0DFF0C0C0CFF0C0C
          0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C
          0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF0C0C0CFF2B2B2BFFA1A1
          A1FFD2D2D2FFD3D3D3FFD5D5D5FFD2D2D2FFBEBEBEEE4C4C4C716060608ECBCB
          CBF5D7D7D7FFD7D7D7FFD7D7D7FFD6D6D6FFB6B6B6FF969696FF949494FF9595
          95FF959595FF959595FF959595FF959595FF959595FF959595FF959595FF9595
          95FF959595FF959595FF959595FF959595FF949494FF959595FFAAAAAAFFD1D1
          D1FFD7D7D7FFD4D4D4FFD2D2D2FFD6D6D6FFC5C5C5EE4E4E4E716262628ED1D1
          D1F5DFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE0E1E1FFE0E1
          E2FFE0E1E2FFE0E1E1FFE0E1E1FFE0E1E1FFE0E1E1FFE0E1E1FFE0E1E2FFE0E1
          E2FFE0E1E2FFE0E1E2FFE0E1E2FFE0E2E2FFE0E1E2FFE0E1E1FFE0E0E0FFDFDF
          DFFFDEDEDEFFDADADAFFD9D9D9FFDDDDDDFFCBCBCBEE4E4E4E716464648ED8D8
          D8F5E7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE6E7E7FFE7E5E3FFE7E3
          DDFFE7E2DCFFE7E3DDFFE7E3DEFFE7E4DEFFE7E4DEFFE7E3DEFFE7E3DDFFE7E2
          DCFFE7E2DAFFE7E0D9FFE7DFD8FFE7DED8FFE6E1DDFFE6E6E5FFE6E7E7FFE7E7
          E7FFE7E7E7FFE6E6E6FFE7E7E7FFE7E7E7FFD1D1D1EE4F4F4F716565658EDFDF
          DFF5F2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3EDE7FFEACBAEFFD9AE
          83FFD5AB80FFD5AE86FFD5B08AFFD5B28CFFD5B18CFFD5B089FFD5AD84FFD5AA
          7FFFD5A579FFD59E72FFD5966CFFD79069FFE2A789FFEDDAD0FFF2F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFD7D7D7EE515151716767678EE7E7
          E7F5FCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFF8E1D1FFD18B56FFB86B
          2FFFB77034FFB7743AFFB7773EFFB77840FFB7783FFFB7763DFFB77338FFB76F
          32FFB7672BFFB75F24FFB7551DFFB74B16FFC65929FFE9B49CFFFBFAF9FFFCFD
          FDFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFDEDEDEEE525252716868688EEBEB
          EBF5FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFFFFFFF6DAC7FFD88B57FFCF83
          4AFFCF8A50FFCF9055FFCE9359FFCE945BFFCF945BFFCF9359FFCF8F54FFCE89
          4FFFCE8048FFCE7942FFCE6F3BFFCF6633FFD36232FFE8AA8FFFFCFAF9FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE2E2E2EE5353537165656588EBEB
          EBF4FFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFFFFF5D5C3FFDF905EFFD486
          50FFCF854DFFD0894EFFD08B4FFFD08D50FFD28F52FFD7955BFFD38A4FFFD081
          46FFD07941FFD0723BFFD06A35FFD56835FFDD6B3CFFE9AA8FFFFCF9F8FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFDFDFDFEB4D4D4D695050506DE1E1
          E1EDFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFFFFFFF3CFBDFFD18054FFBA74
          47FFB67548FFBD7A49FFC77F48FFC78048FFC8814AFFCB834DFFC87C46FFC776
          40FFC76F3BFFC76937FFC86332FFCC6233FFD5673BFFE5A78CFFFCF9F7FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFCFCFCFDF3636364E2828283CBDBD
          BDD0FEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF2CDBCFFDB916FFFCC92
          76FFCA9578FFD29979FFDB9D75FFDA9C72FFD99A70FFD9986DFFD8966BFFD993
          69FFD99067FFDB8E66FFDE8E68FFE3906DFFE38864FFE5AB92FFFBF8F6FFFEFE
          FFFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFA0A0A0B6151515230707070E6464
          647ADBDBDBE8F6F6F6FBFCFCFCFFFEFEFEFFFFFFFFFFF1CBBCFFE7A387FFE8AC
          94FFE7AD95FFE9B096FFE8B194FFE7B092FFE6AE8FFFE6AC8DFFE6AA8BFFE6A8
          89FFE7A688FFE8A487FFE8A386FFE9A386FFE69B7BFFE5B099FFFBF8F6FFFCFC
          FCFFF9F9F9FFF7F7F7FEF1F1F1F9CCCCCCDC4747475B02020205000000000C0C
          0C1240404050717171849D9D9DB0CECECEE2F2F2F1FEECC3B3FFECAF97FFF4C5
          B0FFF4C5B1FFF4C5B0FFF3C6B0FFF3C5AFFFF3C4AEFFF3C3ACFFF3C2AAFFF3C0
          A8FFF3BDA7FFF2BCA5FFF1BBA3FFF1BBA2FFEBAC91FFE1AF99FFF0EDEBFFD0D1
          D1F0A1A1A1C48383839E60606075333333410606060A00000000000000000000
          000000000000030303071010101E6D6D6D96CFCFCFFCCDB1A7FFE3B19EFFEBBD
          AAFFECBBA8FFEDBDAAFFEEC1AFFFF0C4B2FFF0C5B4FFF0C4B3FFEFC4B1FFEEC2
          AFFFECBDAAFFEAB9A6FFE7B5A1FFE4B39FFFDCA792FFCEAB9DFFDAD8D7FF8B8C
          8CB81B1B1B310909090F01010103000000000000000000000000000000000000
          000000000000000000000000000764646485D7D7D7FBCAC8C7FFF2EAE7FFF6EA
          E6FFF4E3DDFFF2DED7FFF1DED6FFEFDDD6FFECDCD5FFE9D9D2FFE6D6CFFFE3D2
          CBFFDFCDC6FFDDCDC6FFDACCC6FFD8CBC7FFD5CCC9FFCDCAC9FFDADADAFF8282
          82A8060606110000000000000000000000000000000000000000000000000000
          000000000000000000000101010868686886E6E6E6FBD6D6D6FFF8F9F9FFFEFF
          FFFFFFFFFFFFFEFFFFFFFEFEFEFFFAFBFBFFF6F7F7FFF3F3F3FFEEEFEFFFEAEB
          EBFFE6E7E7FFE3E4E4FFDFE0E0FFDCDDDDFFD9DADAFFD0D0D0FFDBDBDBFF8484
          84A9070707130000000000000000000000000000000000000000000000000000
          000000000000000000000101010869696986EAEAEAFBDADADAFFF8F8F8FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFCFFF9F9F9FFF5F5F5FFF0F0F0FFEDED
          EDFFE9E9E8FFE5E5E5FFE1E1E1FFDEDEDEFFDBDBDBFFD0D0D0FFDBDBDBFF8383
          83A9070707130000000000000000000000000000000000000000000000000000
          000000000000000000000101010869696986EBEBEBFBDEDEDEFFF9F9F9FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFF7F7F7FFF3F3F3FFEFEF
          EFFFEBEBEBFFE7E7E7FFE3E3E3FFE0E0E0FFDDDDDDFFD1D1D1FFDADADAFF8383
          83A9070707130000000000000000000000000000000000000000000000000000
          000000000000000000000000000865656586EAEAEAFBE0E0E0FFF9F9F9FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFF9F9F9FFF5F5F5FFF1F1
          F1FFEDEDEDFFEAEAEAFFE6E6E6FFE2E2E2FFDFDFDFFFD2D2D2FFDADADAFF8383
          83A9070707130000000000000000000000000000000000000000000000000000
          000000000000000000000000000862626286EAEAEAFDE2E2E2FFFAFAFAFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFF7F7F7FFF4F4
          F4FFEFEFEFFFECECECFFE8E8E8FFE5E5E5FFE1E1E1FFD3D3D3FFD9D9D9FF8383
          83A9070707130000000000000000000000000000000000000000000000000000
          000000000000000000000000000444444463A9A9A9CCCBCBCBEFFBFBFBFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFAFAFAFFF6F6
          F6FFF2F2F2FFEEEEEEFFEAEAEAFFE7E7E7FFE3E3E3FFD4D4D4FFD9D9D9FF8282
          82A9070707130000000000000000000000000000000000000000000000000000
          00000000000000000000000000010A0A0A122121213C969696BDFBFBFBFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFF8F8
          F8FFF4F4F4FFF0F0F0FFECECECFFE8E8E8FFE5E5E5FFD5D5D5FFD9D9D9FF8282
          82A9070707130000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009090917919191B1FBFBFBFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFBFB
          FBFFF7F7F7FFF3F3F3FFEFEFEFFFEBEBEBFFE8E8E8FFD6D6D6FFD9D9D9FF8282
          82A9070707130000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C0C17929292ACF6F6F6FCF9F9
          F9FCF9F9F9FCF9F9F9FCF9F9F9FCF9F9F9FCF9F9F9FCF9F9F9FCF8F8F8FCF7F7
          F7FCF5F5F5FCF2F2F2FCF0F0F0FCEDEDEDFCEAEAEAFCD9D9D9FED9D9D9FF8484
          84A9070707120000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000606060946464654757575827575
          7581757575817575758175757581757575817575758175757581757575817575
          758175757581757575817474748174747481737373808383839DB3B3B3D16767
          677F0505050A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010102020202040202
          0204020202040202020402020204020202040202020402020204020202040202
          020402020204020202040202020402020204020202040E0E0E132D2D2D361818
          181D010101010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040101001D0100001B000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000F00000012000000040302021C2A201E8A261D1B80010101140000
          000D000000100000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          020C221B196D2A211F8C110D0D5E251D1B86705752E666504ADA1812116D1E17
          157B241B197D0504031A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020403
          031753423FAE856A65F57B6864E4988581F1B19B97FDA99490FB806C68E77961
          5DEF614C47CE0D0A093100000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003030316130F0E521C16
          166D705C5AD0B69E9AFFC5B1ADFFC3AEABFFBEA9A5FFC0ABA6FFC2AEAAFFB8A2
          9EFF826C68E5251D1B7E100C0C56060404250000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001A16153C6E5B58CF836C
          69EAAF9793FABDA6A2FFB29792FFAB8E8AFFA98D88FFA88B87FFAB8E8AFFB49B
          97FFB19894FD816A65EC66514DDB251D1C620000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000110F0F2170615EB5B397
          93FFBBA19CFFB49894FFB59A96FFC0A6A3FFC7B0ADFFC2AAA6FFB39894FFAC8F
          8BFFB0948FFFAC8F8AFF79615ED51C1615400000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101010A0A0909385D4E4CABB699
          95FCBDA09CFFBFA39FFFC8AFACFEC2B2B1E09F9595B0B8AAAAD0C8B1AFFCB79B
          98FFB0948FFFAD908BFF6C5955C60E0B0B430000000B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001311102C685A59B5A7908CF2C1A5
          A1FFC8AEABFFCBB3AFFFBDA8A5EE5851516E1111111238353448AC9A98DEBFA6
          A2FFB89D9AFFB39692FF997F7BF45C4B49C01410103900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000016131323786B69A2B8A4A1ECC8B0
          FDFFD5BFBDFFD7C1BFFFAA9592E92E2726620000001014121141907D7AD7C5AD
          AAFFC2A9A6FFB99E9AFFAE9490F6806E6BC41F1A193800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000080000000F0000000600000000010101021110101B7166659CC6B0
          FDFCDCCBC9FFE4D4D2FFC3ADAAFB6D5B58C932292790564846B6AF9895F7D7C3
          C1FFD2BDBBFFC1A8A5FF837270C1201C1C380303030500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040F0B0A4A1F1816830A07073900000001000000000706061A706867A6CAB8
          B5FDD6C5C3FFEEE1E1FFE8DAD9FFCFBEBEFDBCACAAF7CBBAB8FCDFD0CEFFE7D9
          D8FFE1D2D0FFD0BCB9FF82716FCA1512123B0000000000000000000000000000
          000000000000000000000000000203020222090707400201011B0000000B0201
          012640322EA9755A54F530252289000000120101011924202065A9A09FD9CEC3
          C2ECC9B7B5FBDED0CFFFF3E9E8FFF5EBEBFFF5EBEBFFF5EBEBFFF3E9E9FFEEE2
          E1FFE7DBDAFDD1C4C2F0AA9996E03D3635600000000100000000000000000000
          000000000000000000000302020E2F25238256433FCE29201E8E1C1514793529
          27A5715954E791736BFF5B4642D01B14137C241B1A8B554340D3625755B3534F
          4F69A39A98C8CCBBB8FFD5C6C4FFE6DAD9FFEDE2E1FFEDE3E3FFEBE0DFFFEADF
          DDFFC6BCBCE05E5A5A74433E3E54181616200000000000000000000000000000
          00000000000000000000030303104C3D3B9E93756FFF856B66F5907975F4AB96
          92FCBCA9A5FFBEAAA7FFAE9994FD8A7470F37E645FF4886B64FD3A2D2A950505
          0519817C7C9EE4DBDBF8BEB3B1E4C4B5B4F1D5C8C6FFD4C8C6F8CBC2C0E5E2DA
          DAF3ADA6A6CA1918182900000000000000000000000000000000000000000000
          00020202021B0403032B0806063A51423FB1A48984FEC3AFABFFDFD2CFFFEBE0
          DFFFEDE2E1FFEDE2E1FFEBDFDEFFDFD2D0FFC2AEABFF9E827EFE473734AF0807
          073D57555588888585A44442424C736F6F84E1DADBF2A7A3A3B94442424E716E
          6E7B7A7777881312121900000000000000000000000000000000000000000302
          0210342A2884544441C2574644C498807CF1CEBBB7FFE4D5D4FFEADADAFFEAD9
          D8FFE9D7D7FFE9D7D7FFEAD8D8FFEBDBDBFFE6D7D7FFCEBBB8FF8E7773F04939
          36BF4C3C39C3312826840000000A1C1B1B21807F7F894746464F000000010606
          06080A0A0A0C0101010100000000000000000000000000000000000000000907
          0717675653B0A38682FEA88C88FFC4ADAAFFD9C6C4FFE0CDCCFFE7D4D4FFE8D6
          D6FFE8D6D6FFE8D6D6FFE8D6D6FFE7D5D5FFE2CFCEFFDBC8C7FFC3ACA9FF9B7F
          7BFE90726CFD4E3D3AA30403030F020202020B0B0B0C05050506000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0103312B2B51937E7BDCBB9F9BFFCBB3B0FFD4BDBBFFDEC9C8FFE6D4D3FFE8D6
          D6FFE8D6D6FFE8D6D6FFE8D6D6FFE7D4D4FFDFCCCBFFD5BFBDFFCCB5B2FFB397
          93FF7D6561DC231B1A4F01000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          00101714134A88736FD5BFA29DFFC8ADA9FFD1B9B6FFDBC4C2FFE1CDCCFFDCCC
          CCF3B9ADADCAB8ADADC9DACAC9F2E0CCCBFFDAC5C4FFD1BAB8FFC7AEABFFB89C
          97FF75605DD0100D0C3E00000008000000010000000000000000000000000000
          00000000000000000000000000000000000000000000000000000806061B352D
          2C7C6D5E5BC7AE948FF6BEA09CFFC5AAA6FFCEB5B2FFD3BCB9FFCAB7B5F37770
          708B201F1F24201F1F2478706F8ECAB5B4F5D0B9B7FFCBB3B1FFC1A7A4FFB89B
          97FF977D79F24A3C3BB31B1615600202020E0000000000000000000000000000
          00000000000000000000000000000000000000000000000000001815152F8977
          74C7C2A9A6FFC4AAA6FFBDA29DFFC4ABA7FFCDB5B2FFCBB4B0FFA3918ED92522
          223B00000000000000002A272643A79492E1C5ADAAFFC4ABA8FFBAA09DFFB497
          93FFAF938EFFA08581FD61514EB50B09091D0000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0B0B134F47
          466B938582BDC1ACA8F6BDA39EFFC4ACA8FFCCB5B1FFC7AFABFF9C8682E52822
          22600000000F000000112E27266A9F8885EBC3AAA7FFC2AAA7FFB39894FFB093
          8EFFAE9590F6897774C6483E3D710706060E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000303
          03052A27273EA69796D5BDA4A0FFC3ABA7FFCBB5B2FFCAB3AFFFB09692FC6B59
          56CB271F1E832A212086715E5BD0B09591FDC8B2AFFFC9B3AFFFB69B97FFB094
          8FFF927E7CD2272222400605050A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00021816163C9A8F8DCEC3AEAAFFBDA6A1FFCBB7B2FFCEBAB6FFC8B3AFFFBBA5
          A1FEA5918DF6A8938FF7BDA8A4FEC8B3AFFFCEBAB7FFCCB7B3FFC5AEAAFFC0A7
          A4FF837271CC1310103B00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000505
          050D5E58578ED1C4C3F6D8C8C5FFB8A29DFFC4B0ACFFD0BDB9FFD2BFBCFFD3C2
          BFFFD6C6C3FFD7C8C4FFD4C4C1FFD2BFBCFFCFBCB9FFCDBAB6FFD5C3C0FFD7C5
          C3FFB29C9AF7544A489605050510000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000605
          0509716C6B86C9C0C0DEC0B8B8D6C5B5B2F6B6A19CFFC6B2AEFFD1C0BCFFD3C3
          BFFFD4C4C1FFD4C4C0FFD3C3BFFFD2C1BEFFD0BFBBFFD7C8C4FFDBD0CEF5BBB2
          B0D7B4A4A2DF6A5F5E900706060D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A19191F3432323D3231313D958F8FAFCBBCBAFDB8A39EFFBDA9A5FFC9B7
          B3FFCFBFBBFFD0C0BCFFCFBFBBFFCFBFBBFFD8C9C6FFE2D7D5FD918B8AAD2E2C
          2C3C322F2F3F1A18182200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000005615C5C7FEAE1E1FBDDD4D3FBC4B6B3F9C2B0
          FDFFC2B1ADFFC7B7B3FFD0C2BFFFD7CCCAF9E9E0DFFBE8E0DFFC625E5D880000
          0008000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000202020666636377DED9D9E9A09D9DAB7370707FA19B
          9AB6E0D8D7F7E8E0DFFCADA8A7C17270707F9B9797A9DDD8D8EC736F6F8A0505
          050B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A19191D4847474F1E1E1E23030303042A28
          2934C5C1C1D2DAD8D8E5413F3F4D030303041C1B1B214D4B4B56201F20260101
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A0A
          0A0D6261616A7272727A14131318000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = grdFS
    PopupMenus = <>
    Left = 312
    Top = 400
  end
  object cxEditStyleControllerEditControls: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -25
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Style.IsFontAssigned = True
    Left = 488
    Top = 776
    PixelsPerInch = 96
  end
  object cxEditStyleControllerFileldLabels: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -14
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 488
    Top = 824
    PixelsPerInch = 96
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer3Timer
    Left = 648
    Top = 386
  end
  object siLangLinked_frmVisTruckLoadOrder: TsiLangLinked
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
      'ListField')
    Left = 488
    Top = 584
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0056006900730054007200750063006B00
      4C006F00610064004F00720064006500720001004C004100530054004F005200
      440045005200010001004C004F004100440020004F0052004400450052000100
      01000D000A00500061006E0065006C0031000100500061006E0065006C003100
      01000100010001000D000A006700720064004C004F0044004200540061006200
      6C0065005600690065007700310053007500700070006C006900650072000100
      5600650072006B006E007200010001004D0069006C006C0020006E006F000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031005300680069007000700069006E00670050006C0061006E00
      5300740061007400750073000100530074006100740075007300010001005300
      74006100740075007300010001000D000A006700720064004C004F0044004200
      5400610062006C006500560069006500770031004C004F004E0075006D006200
      6500720001004C004F00010001004C004F00010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310050004B00
      470043006F006400650001005300F6006B006E0061006D006E00010001005300
      6500610072006300680020006E0061006D006500010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005000
      72006F0064007500630074000100500072006F00640075006B00740001000100
      500072006F006400750063007400010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C0065006E006700
      7400680001004C00E4006E0067006400010001004C0065006E00670074006800
      010001000D000A006700720064004C004F00440042005400610062006C006500
      56006900650077003100460072006F006D005700650065006B00010046007200
      E5006E0020007600650063006B00610001000100460072006F006D0020007700
      650065006B00010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310054006F005700650065006B0001005400
      69006C006C0020007600650063006B0061000100010054006F00200077006500
      65006B00010001000D000A006700720064004C004F0044004200540061006200
      6C0065005600690065007700310056006F006C0075006D00650001004B007600
      61006E0074006900740065007400010001005100750061006E00740069007400
      7900010001000D000A006700720064004C004F00440042005400610062006C00
      650056006900650077003100530068006900700054006F0001004C0065007600
      2E00740069006C006C0001004C00650076002000740069006C006C0001004400
      65006C00200074006F0001004C00650076002000740069006C006C0001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      7700310055006E00690074004E0061006D006500010056006F006C002E006500
      6E006800650074000100010056006F006C002E0075006E006900740001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100440065007300740069006E006100740069006F006E0001004400
      65007300740069006E006100740069006F006E0001000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      310043006C00690065006E0074004E0061006D00650001004B0075006E006400
      0100010043007500730074006F006D0065007200010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      5500500050005F004E0041004D00450001005600650072006B00010001004D00
      69006C006C00010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004C004F004100440049004E0047000100
      4C0061007300740073007400E4006C006C006500010001004C006F0061006400
      69006E006700200070006C00610063006500010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004C004F00
      430041004C005F00430055005300540001004B0075006E006400200028006C00
      6F006B0061006C00290001004B0075006E00640020006C006F006B0061006C00
      010043007500730074006F006D006500720020006C006F00630061006C000100
      4B0075006E00640020006C006F006B0061006C0001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310049004E00
      49005400490041004C005300010049004E0049005400490041004C0045005200
      0100010049004E0049005400490041004C005300010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005200
      4500410044005900440041005400450001005200650064006F00640061006700
      010001005200650061006400790020006400610074006500010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      3100530068006900700070006500720073005300680069007000440061007400
      6500010053007000650064002E0064006100740075006D000100420065006600
      720061006B0074006100720065006E007300200064006100740075006D000100
      4300610072007200690065007200730020006400610074006500010042006500
      6600720061006B0074006100720065006E007300200064006100740075006D00
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310042006100720043006F006400650001005300740072006500
      63006B006B006F0064000100010042006100720063006F006400650001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031005200450046004500520045004E00530001004100760072006F00
      700073007200650066006500720065006E00730001004100760072006F007000
      7300720065006600010043004F0020007200650066006500720065006E006300
      650001004100760072006F007000730072006500660001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      4B00410050004100440001005200650067006900730074007200650072006100
      6400010001005200650067006900730074006500720065006400010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031005200650066006500720065006E006300650001004100640072006500
      730073002F006B0075006E0064007200650066006500720065006E0073000100
      010041006400640072006500730073002F0063007500730074006F006D006500
      72002000720065006600010001000D000A006700720064004C004F0044004200
      5400610062006C006500560069006500770031004E00540001004E0054000100
      01004E005400010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004E00420001004E004200010001004E00
      5700010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031004100540001004100540001000100410054000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100410042000100410042000100010041005700010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031005400540001005400540001000100010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310054004200
      0100540042000100010054005700010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005400530001005400
      5300010054007200E40073006C00610067000100530070006500630069006500
      7300010054007200E40073006C006100670001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100550054000100
      550054000100550074006600F600720061006E00640065000100530075007200
      66006100630069006E0067000100550074006600F600720061006E0064006500
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031004B00560001004B00560001004B00760061006C0069007400
      6500740001004700720061006400650001004B00760061006C00690074006500
      740001000D000A006700720064004C004F00440042005400610062006C006500
      5600690065007700310050004B00010050004B00010049006D00700072006500
      67006E006500720069006E0067000100540072006500610074006D0065006E00
      7400010049006D0070007200650067006E006500720069006E00670001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      7700310043007500730074006F006D0065007200530068006F00770049006E00
      4700720069006400010043007500730074006F006D0065007200530068006F00
      770049006E00470072006900640001000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004F007200
      6400650072004E006F0001004F0072006400650072006E00720001004F007200
      6400650072004E00720001004F0072006400650072004E006F0001004F007200
      6400650072004E00720001000D000A006700720064004C004F00440042005400
      610062006C00650056006900650077003100440065006C006900760065007200
      79005F005700650065006B004E006F0001004C00650076006500720061006E00
      73007600650063006B00610001000100440065006C0069007600650072007900
      20007700650065006B00010001000D000A006700720064004C004F0044004200
      5400610062006C006500560069006500770031004300530048005F0043007500
      730074006F006D00650072004E006F0001004300530048005F00430075007300
      74006F006D00650072004E006F0001000100010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310053006800
      6900700054006F0049006E00760050006F0069006E0074004E006F0001005300
      68006900700054006F0049006E00760050006F0069006E0074004E006F000100
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F0001004C006F006100640069006E0067004C00
      6F0063006100740069006F006E004E006F0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4300480043007500730074006F006D00650072004E006F000100430048004300
      7500730074006F006D00650072004E006F0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      5300500043007500730074006F006D00650072004E006F000100530050004300
      7500730074006F006D00650072004E004F0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4F0062006A00650063007400540079007000650001004C004F00200074007900
      7000010001004C004F0020007400790070006500010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      7500700070006C00690065007200530068006900700050006C0061006E004F00
      62006A006500630074004E006F00010052006100640020004900440001000100
      4C0069006E00650049004400010001000D000A006700720064004C004F004400
      42005400610062006C006500560069006500770031004F007200640065007200
      540079007000650001004F005200440045005200540059005000450001004F00
      5200440045005200540059005000010001004F00520044004500520054005900
      500001000D000A006700720064004C004F00440042005400610062006C006500
      5600690065007700310049004E0054004C004E0047004400010049006E007400
      2E006C00E4006E0067006400010049006E00740020006C00E4006E0067006400
      010049006E00740020006C0065006E00670074006800010049006E0074002000
      6C00E4006E006700640001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031005200410044005200450046004500
      520045004E0053000100500072006F00640075006B0074006D00E40072006B00
      6E0069006E00670001000100500072006F00640075006300740020006D006100
      72006B00010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031004B004F004E005400520041004B0054005300
      4200450053004B005200490056004E0049004E00470001004B006F006E007400
      720061006B00740073006200650073006B007200690076006E0069006E006700
      01004F0072006400650072006200650073006B007200690076006E0069006E00
      670001004F007200640065007200200064006500730063007200690070007400
      69006F006E0001004F0072006400650072006200650073006B00720069007600
      6E0069006E00670001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004D00410052004B004E00410044000100
      4D00610072006B006E0061006400010001004D00610072006B00650074000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100500072006900730001005000720069007300010001005000
      7200690063006500010001000D000A006700720064004C004F00440042005400
      610062006C00650056006900650077003100530068006F00770049006E004700
      7200690064000100530068006F00770049006E00470072006900640001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      56006900650077003100500072006F006400750063007400470072006F007500
      70004E006F000100500072006F006400750063007400470072006F0075007000
      4E006F0001000100010001000D000A006700720064004C004F00440042005400
      610062006C00650056006900650077003100500072006900630065004C006900
      730074004E0061006D006500010050007200690073006C006900730074006100
      01000100500072006900630065006C00690073007400010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      50006300730050006500720050006B0067000100500050005000010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031005000610063006B0061006700650057006900640074006800
      0100500061006B0065007400620072006500640064000100010050006B006700
      2000770069006400740068000100500061006C006C0062007200650064006400
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031005000610063006B0061006700650048006500690067006800
      74000100500061006B00650074006800F6006A0064000100010050006B006700
      20006800650069006700680074000100500061006C006C006800F6006A006400
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310050006B00670043006F0064006500500050004E006F000100
      560061007200690061006E0074006E00720001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      500072006F00640049006E0073007400720075004E006F000100500072006F00
      640049006E0073007400720075004E006F0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F0001000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      74004C0065006E006700740068004E006F000100500072006F00640075006300
      74004C0065006E006700740068004E006F0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4C0061006E006700750061006700650043006F006400650001004C0061006E00
      6700750061006700650043006F006400650001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      41004C004D004D00010041004C004D004D0001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      530065007100750065006E00630065004E006F00010053006500710075006500
      6E00630065004E006F0001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C00610067006500
      72006700720075007000700001004C0061006700650072006700720075007000
      700001000100530074006F0063006B002000670072006F007500700001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004500540044000100450054004400010001004500540044000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100450054004100010045005400410001000100450054004100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031005000610063006B006100670065005F00530069007A00
      650001005000610063006B006100670065005F00530069007A00650001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031005000610063006B00610067006500530069007A006500
      4E0061006D0065000100500061006B0065007400730074006F0072006C006500
      6B000100500061006B0065007400730074006F0072006C0065006B0001005000
      6B0067002000730069007A0065000100500061006C006C00730074006F007200
      6C0065006B0001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031004C006E006700640001004C00E4006E006700
      6400010001004C0065006E00670074006800010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310050006B00
      6700410072007400690063006C0065004E006F00010041007200740069006B00
      65006C006E00720001000100410072007400690063006C00650020006E006F00
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004C004F00470072006F00750070004E006F0001004C00
      4F002000670072007500700070006E007200010001004C004F00200067007200
      6F007500700020006E006F00010001000D000A006700720064004C004F004400
      42005400610062006C006500560069006500770031004C004F00420075006600
      66006500720074004E0061006D00650001004C004F002D004200750066006600
      65007200740001004C004F00420075006600660065007200740001004C004F00
      420075006600660065007200740001004C004F00420075006600660065007200
      740001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004C006F00610064006500640050006B00670073000100
      4C00650076002E0070006B00740001004C00650076002000700061006B006500
      74000100440065006C00200070006B006700730001004C006500760020007000
      61006C006C006100720001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031004C006F0061006400650064004E00
      4D00330001004C00650076002E004E004D00330001000100440065006C002000
      4E004D003300010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310050006C0061006E00500061006B006500
      7400010050006C0061006E0065007200610064002000700061006B0065007400
      28006B00F60072006F00720064006500720029000100010050006C0061006E00
      6E0065006400200070006B00670073002800720075006E0020006F0072006400
      650072002900010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310050006C0061006E0041004D0033000100
      50006C0061006E006500720061006400200041004D00330028006B00F6007200
      6F00720064006500720029000100010050006C0061006E006E00650064002000
      41004D0033002800720075006E0020006F007200640065007200290001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100500072006F006400750063006500640041004D00330001005000
      72006F006400750063006500720061006400200041004D003300010001005000
      72006F0064007500630065006400200041004D003300010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      500072006F006400750063006500640050004B0054000100500072006F006400
      75006300650072006100640065002000700061006B0065007400010001005000
      72006F0064007500630065006400200070006B00670073000100500072006F00
      640075006300650072006100640065002000700061006C006C00610072000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004F0072006400650072005F0041004D003300010041004D003300
      20004C004F0001000100010001000D000A006300780042007500740074006F00
      6E003300010053006B0072006900760020007500740001000100500072006900
      6E007400010001000D000A00630078004C006100620065006C00310001004C00
      4F004E0072003A0001004C004F0001004C004F0001004C004F0001000D000A00
      630078004C006100620065006C00320001004C006100730074004E0072003A00
      01004C006100730074006E00720001004C006F00610064004E006F0001004C00
      6100730074006E00720001000D000A00630078004C006100620065006C003300
      01005600650072006B003A0001005600650072006B0001004D0069006C006C00
      01005600650072006B0001000D000A00630078004C006100620065006C003400
      010042004C003A0001000100010001000D000A00630078004C00610062006500
      6C00350001004C0061007300740073007400E4006C006C0065003A0001004C00
      61007300740073007400E4006C006C00650001004C006F006100640069006E00
      6700200070006C0061006300650001004C0061007300740073007400E4006C00
      6C00650001000D000A00630078004C006100620065006C003600010044006500
      7300740069006E006100740069006F006E003A00010044006500730074006900
      6E006100740069006F006E000100440065007300740069006E00610074006900
      6F006E000100440065007300740069006E006100740069006F006E0001000D00
      0A00630078004C006100620065006C0037000100530074006100740075007300
      3A00010053007400610074007500730001005300740061007400750073000100
      53007400610074007500730001000D000A00630078004C006100620065006C00
      3800010052006500660073003A00010052006500660001005200650066000100
      52006500660001000D000A0063006200530068006F0077004F006E006C007900
      530065006C00650063007400650064005600650072006B0073004C004F007300
      01005600690073006100200065006E0064006100730074002000760061006C00
      740020007600650072006B00730020004C004F00270073000100010053006800
      6F00770020006F006E006C00790020004C004F007300200066006F0072002000
      730065006C006500630074006500640020006D0069006C006C00010001000D00
      0A00630078004C006100620065006C00390001004B0075006E00640020007200
      650066003A0001004B0075006E00640020007200650066000100430075007300
      74006F006D0065007200200072006500660001004B0075006E00640020007200
      6500660001000D000A0067007200640046005300440042005400610062006C00
      6500560069006500770031005300680069007000700069006E00670050006C00
      61006E004E006F00010020004C004F00010001004C004F00010001000D000A00
      67007200640046005300440042005400610062006C0065005600690065007700
      31004C006F00610064004E006F00010020004C006100730074006E0072000100
      010020004C006F00610064004E006F00010001000D000A006700720064004600
      5300440042005400610062006C006500560069006500770031004C006F006100
      640049004400010020004C00610073007400200049004400010001004C006F00
      61006400200049004400010001000D000A006700720064004600530044004200
      5400610062006C006500560069006500770031004C006F006100640065006400
      440061007400650001002000550074006C006100730074006100640001000100
      4C006F006100640065006400010001000D000A00670072006400460053004400
      42005400610062006C00650056006900650077003100530065006E0064006500
      72004C006F006100640053007400610074007500730001002000530074006100
      74007500730001000100530074006100740075007300010001000D000A006700
      7200640046005300440042005400610062006C00650056006900650077003100
      5000630073000100200053007400790063006B00010001005000630073000100
      5300E40063006B0001000D000A00670072006400460053004400420054006100
      62006C00650056006900650077003100410063007400750061006C004D003300
      0100200041004D00330001000100010001000D000A0067007200640046005300
      440042005400610062006C006500560069006500770031004E006F006D006900
      6E0061006C004D003300010020004E004D0033002000010001004E004D003300
      010001000D000A0067007200640046005300440042005400610062006C006500
      560069006500770031004C0069006E00650061006C004D006500740065007200
      0100200041004D00310001000100010001000D000A0067007200640046005300
      440042005400610062006C006500560069006500770031004D00460042004D00
      01004D00460042004D00010001004D00460042004D00010001000D000A006700
      7200640046005300440042005400610062006C00650056006900650077003100
      4600530001004600530001000100540061006C006C007900010001000D000A00
      67007200640046005300440042005400610062006C0065005600690065007700
      31005600450052004B0001005600650072006B00010001004D0069006C006C00
      010001000D000A0067007200640046005300440042005400610062006C006500
      5600690065007700310041004E00540050004B00540001002000500061006B00
      65007400200001000100200050006B006700730020000100500061006C006C00
      6100720001000D000A0067007200640046005300440042005400610062006C00
      65005600690065007700310053007500700070006C006900650072004E006F00
      010053007500700070006C006900650072004E006F0001000100010001000D00
      0A0067007200640046005300440042005400610062006C006500560069006500
      7700310041005200010041005200200064006100740075006D00010001004100
      520020006400610074006500010001000D000A00670072006400460053004400
      42005400610062006C00650056006900650077003100410052005F0041005600
      0100200041005200200061007600010001004100520020006200790001000100
      0D000A0067007200640046005300440042005400610062006C00650056006900
      6500770031004C006F0061006400410052000100200041005200010001004100
      5200010001000D000A0067007200640046005300440042005400610062006C00
      6500560069006500770031005000610063006B0061006700650045006E007400
      720079004F007000740069006F006E0001005000610063006B00610067006500
      45006E007400720079004F007000740069006F006E0001000100010001000D00
      0A004C006100620065006C00310001005200650064006F006400610067003A00
      01005200650064006F0064006100670001005200650061006400790020006400
      61007400650001005200650064006F0064006100670001000D000A004C006100
      620065006C003200010053007000650064002E002000490044003A0001004200
      65006600720061006B0074006100720065006E00730020007200650066000100
      4300610072007200690065007200730020007200650066000100420065006600
      720061006B0074006100720065006E007300200072006500660001000D000A00
      4C006100620065006C0033000100530070006500640069007400F60072003A00
      0100420065006600720061006B00740061007200650001004300610072007200
      6900650072000100420065006600720061006B00740061007200650001000D00
      0A004C006100620065006C003400010053007000650064002E00440061007400
      3A000100420065006600720061006B0074006100720065006E00730020006400
      6100740075006D00010043006100720072006900650072007300200064006100
      740065000100420065006600720061006B0074006100720065006E0073002000
      64006100740075006D0001000D000A004C006100620065006C00350001004200
      E50074003A000100460061007200740079006700010056006500730073006500
      6C00010046006100720074007900670001000D000A004C006100620065006C00
      360001005400720070002E00490044003A000100540072007000490044000100
      5400720070004900440001005400720070004900440001000D000A004C006100
      620065006C00370001004500540044003A000100450054004400010045005400
      4400010045005400440001000D000A004C006100620065006C00380001004E00
      6F00740065003A0001004E006F00740065007200610001004E006F0074006500
      01004E006F00740065007200610001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001004300750073007400
      6F006D002000310001000100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001004300750073007400
      6F006D002000320001000100010001000D000A00640078004200610072004300
      6F006E00740072006F006C0043006F006E007400610069006E00650072004900
      740065006D00310001004E006500770020004900740065006D00010001000100
      01000D000A006400780042006100720053007400610074006900630031000100
      5300F6006B0020004C004F003A0001005300F6006B0020004C004F0001005300
      6500610072006300680020004C004F0001005300F6006B0020004C004F000100
      0D000A0063006300530068006F00770041006C006C000100530068006F007700
      200041006C006C0001005600690073006100200061006C006C00610001000100
      5600690073006100200061006C006C00610001000D000A00620063004C006100
      730074004C006F00610064004E006F004F00700065006E0001004C0061007300
      74002F004C004F004E007200010001004C006F00610064002F004C004F006E00
      6F00010001000D000A006200620047006F0054006F004C006F00610064000100
      D600700070006E006100010001004F00700065006E00010001000D000A006400
      780042006100720043006F006E00740072006F006C0043006F006E0074006100
      69006E00650072004900740065006D00320001004E0065007700200049007400
      65006D0001000100010001000D000A0064007800420061007200420075007400
      74006F006E003300310001004E0065007700200042007500740074006F006E00
      01000100010001000D000A0062005000720069006E0074004C004F0044006900
      740074005600650072006B0001004C004F002000260045007200740020007600
      650072006B00010001004C004F00200079006F007500720020006D0069006C00
      6C00010001000D000A0062005000720069006E0074004C004F0041006C006C00
      5600650072006B00010026004C004F00200061006C006C006100200076006500
      72006B00010001004C004F00200061006C006C0020006D0069006C006C007300
      010001000D000A00620041006C006C0061004C00610073007400650072005000
      650072004C004F000100260041006C006C00610020006C006100730074006500
      7200200070006500720020004C004F0020006F00630068002000560065007200
      6B000100010041006C006C0020006C006F006100640073002000700065007200
      20004C004F00200061006E00640020006D0069006C006C00010001000D000A00
      620062004100760072006F0070005600650072006B0001004100760072006F00
      700020005600650072006B0001000100430061006C006C0020006F0066006600
      20006D0069006C006C00010001000D000A0062006200540061006C006C007900
      55005300410001004600F6006C006A00650073006500640065006C0020002800
      550053004100290001000100540061006C006C00790020002800550053002900
      010001000D000A0062006200540061006C006C00790056006500720032000100
      4600F6006C006A00650073006500640065006C0001000100540061006C006C00
      7900010001000D000A0062006200540061006C006C0079005F00550053004100
      01004600F6006C006A00650073006500640065006C0020002800550053004100
      2900200001000100540061006C006C0079002000280055005300290001000100
      0D000A006200620041007600720061006B006E0069006E006700530070006500
      630056006500720032000100410076007200E4006B006E0069006E0067002000
      53007000650063000100010053006500740074006C0065006D0065006E007400
      20007300700065006300010001000D000A006400780042006100720042007500
      740074006F006E003100380001004600F6006C006A0065007300650064006500
      6C002000280064006B00290001000100540061006C006C007900200028006400
      6B002900010001000D000A006400780042006100720042007500740074006F00
      6E0031003900010026004C004F00200061006C006C0061002000760065007200
      6B002000280064006B002900010001004C004F00200061006C006C0020006D00
      69006C006C0073002000280064006B002900010001000D000A00640078004200
      6100720042007500740074006F006E00320030000100260041006C006C006100
      20006C0061007300740065007200200070006500720020004C004F0020006F00
      6300680020005600650072006B002000280064006B0029000100010041006C00
      6C0020006C006F00610064007300200070006500720020004C004F0020006100
      6E00640020006D0069006C006C002000280064006B002900010001000D000A00
      6400780042006100720042007500740074006F006E0032003100010026004100
      6C006C00610020006C0061007300740065007200200070006500720020004C00
      4F0020006F006300680020005600650072006B00200028006D00610072006B00
      6500720061006400650020006C00610073007400650072002900010001004100
      6C006C0020006C006F00610064007300200070006500720020004C004F002000
      61006E00640020006D0069006C006C0020002800730065006C00650063007400
      6500640020006C006F006100640073002900010001000D000A00640078004200
      6100720042007500740074006F006E0032003200010041006C006C0061002000
      6C0061007300740065007200200070006500720020004C004F00200028006D00
      610072006B006500720061006400650020006C00610073007400650072002900
      0100010041006C006C0020006C006F0061006400730020007000650072002000
      4C004F0020002800730065006C006500630074006500640020006C006F006100
      640073002900010001000D000A00640078004200610072004200750074007400
      6F006E0032003300010041006C006C00610020006C0061007300740065007200
      200070006500720020004C004F000100010041006C006C0020006C006F006100
      64007300200070006500720020004C004F00010001000D000A00640078004200
      6100720042007500740074006F006E0032003400010049006D0070006F007200
      74006500720061002000700061006B00650074002000280077006F006F006400
      78002900010049006D0070006F00720074006500720061002000700061006B00
      650074002000280057006F006F00640058002900010049006D0070006F007200
      7400200070006B0067002000280057006F006F00640058002900010049006D00
      70006F00720074006500720061002000700061006C006C002000280057006F00
      6F0064005800290001000D000A005300700069006E0045006400690074005200
      75006200720069006B0046006F006E00740053006F007200740069006D006500
      6E007400730056007900010054006100620065006C006C003A00200052007500
      6200720069006B0066006F006E0074002000730074006F0072006C0065006B00
      010001005400610062006C0065003A0020004C006100620065006C0066006F00
      6E0074002000730069007A006500010001000D000A005300700069006E004500
      64006900740043006F006E00740065006E00740046006F006E00740053006F00
      7200740069006D0065006E007400730056007900010054006100620065006C00
      6C003A002000430065006C006C0066006F006E0074002000730074006F007200
      6C0065006B00010001005400610062006C0065003A002000430065006C006C00
      66006F006E0074002000730069007A006500010001000D000A00610074005200
      6500660072006500730068000100550070007000640061007400650072006100
      2000460036000100010055007000640061007400650020004600360001000100
      0D000A00610074004100630063006500700074004C006F00610064004F007200
      640065007200010041006300630065007000740001000100010001000D000A00
      61007400520065006A006500630074004C006F00610064004F00720064006500
      720001004100760073006C006100670001000100520065006A00650063007400
      65006400010001000D000A006100740043006F006D0070006C00650074006500
      64004C006F00610064004F00720064006500720001004100760073006C007500
      7400610064000100010043006F006D0070006C00650074006500640001000100
      0D000A00610074004E00650077004C006F006100640001004E00790020006C00
      610073007400010001004E006500770020006C006F0061006400010001000D00
      0A006100740053006500740054006F004F004E0048004F004C00440001005600
      E4006E0074006100010001005700610069007400010001000D000A0061007400
      500072006F00640075006300740069006F006E0043006F006D0070006C006500
      740065000100500072006F00640075006B00740069006F006E00200061007600
      73006C00750074006100640001000100500072006F0064007500630074006900
      6F006E00200063006F006D0070006C006500740065006400010001000D000A00
      610074005000720065006C0069006D0069006E00610072007900010050007200
      65006C0069006D0069006E00E4007200010001005000720065006C0069006D00
      69006E00610072007900010001000D000A006100630053006500740054006F00
      4E004500570001004E007900010001004E0065007700010001000D000A006100
      6300530061006D006C0069006E006700460053000100530061006D006C006900
      6E006700730020006600F6006C006A00650073006500640065006C0020007000
      6500720020004C004F0020006F006300680020007600650072006B0001000100
      43006F006C006C0065006300740069006F006E002000740061006C006C007900
      200070006500720020004C004F00200061006E00640020006D0069006C006C00
      010001000D000A00610063004300680061006E00670065004C004F004C006100
      79006F00750074000100C4006E0064007200610020006C00610079006F007500
      7400010001004300680061006E006700650020006C00610079006F0075007400
      010001000D000A006100630053006100760065004300680061006E0067006500
      7300010053007000610072006100200046003300010001005300610076006500
      200046003300010001000D000A0061006300430061006E00630065006C004300
      680061006E006700650073000100C5006E006700720061002000460034000100
      010055006E0064006F00200046003400010001000D000A006100630043006F00
      6E006600690072006D00430061006E00630065006C000100420065006B007200
      E400660074006100200061006E006E0075006C006500720069006E0067000100
      420065006B007200E400660074006100200061006E006E0075006C006C006500
      720069006E006700010043006F006E006600690072006D00200061006E006E00
      75006C006D0065006E0074000100420065006B007200E4006600740061002000
      61006E006E0075006C006C006500720069006E00670001000D000A0061006300
      530068006F0077004C004F00470072006F00750070004200790042006F007800
      010056006900730061002000670072007500700070006500720069006E006700
      730072007500740061006E0001000100530068006F0077002000670072006F00
      75007000200062006F007800010001000D000A00610063004300680061006E00
      670065004C006F00610064004C00610079006F007500740001004600E4006C00
      74007600E4006C006A00610072006500010001004600690065006C0064006300
      68006F006F00730065007200010001000D000A00610063004E00650077004C00
      6F006100640057006900740068004C004F0001004E00790020004C0061007300
      7400200046003200010001004E006500770020006C006F006100640020004600
      3200010001000D000A00610063004F00700065006E004C006F00610064000100
      D600700070006E00610020006C00610073007400200046003900010001004F00
      700065006E0020006C006F0061006400200046003900010001000D000A006100
      63005000720069006E0074004C004F0057005900530057005900470001002600
      5700590053004900570059004700010001002600570059005300490057005900
      4700010001000D000A006100630045007800700061006E00640041006C006C00
      010045007800700061006E006400650072006100200061006C006C0061000100
      010045007800700061006E006400200061006C006C00010001000D000A006100
      630043006F006C006C00610070007300650041006C006C0001004B006F006C00
      6C006100700073006100200061006C006C0061000100010043006F006C006C00
      6100700073006500200061006C006C00010001000D000A006100630045007800
      70006F007200740054006F0058004C00530001004500780070002E0020007400
      69006C006C00200058004C005300200046003100310001000100450078007000
      2E00200074006F00200058004C0053002000460031003100010001000D000A00
      610063005300650061007200630068004C006F00610064004E006F0001005300
      F6006B0020004C006100730074006E00720001005300F6006B0020004C006100
      730074004E007200010053006500610072006300680020004C006F0061006400
      4E006F0001005300F6006B0020004C006100730074004E00720001000D000A00
      6100630041006400640054006F004C006100730074004C006F00610064004C00
      69007300740001004C00E400670067002000740069006C006C00200073006500
      6E00610073007400650020004C006100730074006E00720020006C0069007300
      740061006E0001000100410064006400200074006F0020006C00610074006500
      7300740020004C006F00610064004E006F0020006C0069007300740001000100
      0D000A006100630053007000650063005F0041004C004C0041005F004C006100
      73007400650072000100530061006D006C0069006E006700730020006600F600
      6C006A00650073006500640065006C002C00200061006C006C00610020006C00
      61007300740065007200200070006500720020004C004F000100010043006F00
      6C006C0065006300740069006F006E002000740061006C006C0079002C002000
      61006C006C0020006C006F00610064007300200070006500720020004C004F00
      010001000D000A006100630043006C006F0073006500010053007400E4006E00
      670020004600310032000100010043006C006F00730065002000460031003200
      010001000D000A006100630042006F006F006B0069006E006700010042006F00
      6B006E0069006E00670020004600310030000100010042006F006F006B006900
      6E0067002000460031003000010001000D000A0061006300530068006F007700
      500072006900630065004C006900730074000100560069007300610020007000
      7200690073006C00690073007400610001000100530068006F00770020007000
      72006900630065006C00690073007400010001000D000A006100630050007200
      69006E0074004C004F0053007400610074007500730001004C004F0020006B00
      6F006E00740072006F006C006C00010001004C004F0020006300740072006C00
      010001000D000A00610063005000720069006E0074004D00610072006B006500
      64004C004F007300010053006B0072006900760020007500740020006D006100
      72006B006500720061006400650020004C004F00010001005000720069006E00
      74002000730065006C006500630074006500640020004C004F00010001000D00
      0A006100630053006B00610070006100500061006B00650074004B006F006400
      65007200010053006B0061007000610020006B006F0064006500720020005300
      68006900660074002B0046003200010001004300720065006100740065002000
      63006F006400650073002000530068006900660074002B004600320001000100
      0D000A00610063004C004F004C0065006E00670074006800730001004C004F00
      20004C00E4006E006700640065007200010001004C004F0020006C0065006E00
      6700740068007300010001000D000A00610063004C006F00610064004F007200
      6400650072004C0069007300740053006500740075007000010049006E007300
      7400E4006C006C006E0069006E00670061007200010001005300650074007400
      69006E0067007300010001000D000A00610063004E00650077004C006F006100
      64004E006F004C006F0001004E00790020006C00610073007400010001004E00
      6500770020006C006F0061006400010001000D000A0061006300430068006100
      6E00670065004C004F006F006E004C006F006100640001004200790074002000
      4C004F0020006E0075006D006D00650072002000690020006D00610072006B00
      650072006100640020006C00610073007400010042007900740020004C004F00
      2000690020006D00610072006B00650072006100640020006C00610073007400
      01004300680061006E006700650020004C004F00200069006E00200073006500
      6C006500630074006500640020006C006F006100640001004200790074002000
      4C004F002000690020006D00610072006B00650072006100640020006C006100
      7300740001000D000A00610063004100640064004C004F004E00720054006F00
      530079006E006300460069006C006500010053006B0061007000610020006E00
      790020006C006100730074006F007200640065007200660069006C0001005300
      6B0061007000610020006E00790020004C004F002000660069006C0001004300
      7200650061007400650020006E006500770020004C004F00660069006C006500
      010053006B0061007000610020006E00790020004C004F002000660069006C00
      01000D000A0061006300520065006100640049006D0070006F00720074006500
      64005000610063006B006100670065007300010049006D0070006F0072007400
      650072006100200061006C006C0061000100010049006D0070006F0072007400
      200061006C006C00010001000D000A00610063004100640064004D0061007200
      6B00650064004C004F0054006F00530079006E006300460069006C0065000100
      4C00E4006700670020006D00610072006B006500720061006400650020004C00
      4F002000740069006C006C0020006C006100730074006F007200640065007200
      660069006C0065006E00010001004100640064002000730065006C0065006300
      74006500640020004C004F00200074006F0020004C004F002000660069006C00
      6500010001000D000A0061006300530065006C00650063007400460069006C00
      650054006F004300720065006100740065004C006F0061006400010049006D00
      70006F00720074006500720061000100010049006D0070006F00720074000100
      01000D000A0061006300530061007600650042006F006F006B0069006E006700
      0100530070006100720061002000530068006900660074002B00460033000100
      010053006100760065002000530068006900660074002B004600330001000100
      0D000A006100630041006E0067006500530079006E006B004D00610070007000
      65006E000100530079006E006B002E006D006100700070000100010001000100
      0D000A00610063005000720069006E0074006D0065006E007900010053006B00
      720069007600200075007400200046003800010001005000720069006E007400
      200046003800010001000D000A00610063005000720069006E00740046005300
      4D00690073004D00610074006300680001004600F6006C006A00650073006500
      640065006C0020002800700061006B00650074002000730061006B006E006100
      720020006B006F00700070006C0069006E006700290001004600F6006C006A00
      650073006500640065006C0020002800700061006B0065007400200073006100
      6B006E006100720020006D0061007400630068006E0069006E00670029000100
      540061006C006C0079002000280070006B006700200077006900740068006F00
      7500740020006D006100740063006800290001004600F6006C006A0065007300
      6500640065006C0020002800700061006C006C002000730061006B006E006100
      720020006D0061007400630068006E0069006E006700290001000D000A006100
      630053006500610072006300680001005300F6006B0020004600370001000100
      530065006100720063006800200046003700010001000D000A00610063004200
      790074004D0065006C006C0061006E004200540042006F006300680042005400
      480001005600E40078006C006100200062006F006C0061006700010001004300
      680061006E006700650020006D0069006C006C00010001000D000A0061006300
      49006D0070006F007200740050006B0067007300010049006D0070006F007200
      740065007200610020006600F6006C006A0065007300650064006C0061007200
      0100010049006D0070006F00720074002000740061006C006C00690065007300
      010001000D000A00610063004F00700065006E00460053000100D60070007000
      6E006100010001004F00700065006E00010001000D000A006100630044006500
      6C006500740065004C006F00610064005F0049006D0070000100540061002000
      62006F007200740001000100440065006C00650074006500010001000D000A00
      61006300530065006E0064004C006F00610064004F0072006400650072004E00
      6F0054006F0048004800010053006B00690063006B00610020006C0069007300
      740061002000740069006C006C0020004800480001000100530065006E006400
      20006C00690073007400200074006F00200048004800010001000D000A006100
      63004100640064004D00610072006B00650064004C004F004E006F0054006F00
      530065006E0064004C0069007300740001004C00E40067006700200074006900
      6C006C0020006D00610072006B006500720061006400650020004C004F006E00
      7200010001004100640064002000730065006C00650063007400650064002000
      4C004F006E006F00010001000D000A00610063004100640064004C004F006E00
      6F0054006F00530065006E0064004C0069007300740001004C00E40067006700
      2000740069006C006C0001000100410064006400010001000D000A0061006300
      5000720069006E0074004C004F004C00690073007400010053006B0072006900
      7600200075007400010001005000720069006E007400010001000D000A006100
      6300520065006D006F00760065004C004F004800480052006F00770001005400
      6100200062006F007200740001000100440065006C0065007400650001000100
      0D000A0061006300520065006D006F007600650041004C004C004C004F004800
      480052006F0077007300010054006100200062006F0072007400200061006C00
      6C00610001000100440065006C00650074006500200061006C006C0001000100
      0D000A0061006300440065006C0065007400650041004C004C004C006F006100
      64005F0049006D007000010054006100200062006F0072007400200061006C00
      6C00610001000100440065006C00650074006500200061006C006C0001000100
      0D000A006100630045006D00610069006C0061004600530001004D0061006900
      6C00610020006600F6006C006A00650073006500640065006C00010001004500
      6D00610069006C002000740061006C006C007900010001000D000A0061006300
      550074006C006100730074006E0069006E006700730053007000650063000100
      480061006D00700065006E002000730070006500630001000100010001000D00
      0A00610063005000720069006E0074004600530001004600F6006C006A006500
      73006500640065006C0001000100540061006C006C007900010001000D000A00
      6100630049006E00630072006500610073006500480065006100640065007200
      46006F006E00740001002B002000720075006200720069006B00010001002B00
      20006C006100620065006C00010001000D000A00610063004400650063007200
      650061007300650048006500610064006500720046006F006E00740001002D00
      2000720075006200720069006B0001000100010001000D000A00610063004900
      6E0063007200650061007300650043006F006E00740065006E00740046006F00
      6E00740001002B00200072006100640065007200010001002B0020006C006900
      6E0065007300010001000D000A00610063004400650063007200650061007300
      650043006F006E00740065006E00740046006F006E00740001002D0020007200
      610064006500720001000100010001000D000A00610063005300610076006500
      5600790065007200010053007000610072006100200076007900650072000100
      0100530061007600650020007600690065007700010001000D000A0061006300
      5000720069006E00740043004D005200010043004D0052000100010001000100
      0D000A00610063004300680061006E00670065005000610063006B0061006700
      65005F00530069007A0065000100C4006E006400720061002000500061006B00
      65007400730074006F0072006C0065006B007300720075006200720069006B00
      65006E00010001004300680061006E0067006500200070006B00670020007300
      69007A00650020006E0061006D0065000100C4006E0064007200610020005000
      61006C006C00730074006F0072006C0065006B00730072007500620072006900
      6B0065006E0001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00320001004E00
      650077005200650070006F007200740001000100010001000D000A0053007000
      6500630069006600690063006100740069006F006E0061006C006C0061006C00
      6100730074006500720031000100530070006500630069006600690063006100
      740069006F006E0020006D00610072006B006500720061006400650020006C00
      610073007400650072000100010053007000650063002000730065006C006500
      630074006500640020006C006F00610064007300010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004900
      6E007400650072006E006E006F0074006500720069006E006700010049006E00
      7400650072006E006E006F0074006500720069006E0067000100010049006E00
      7400650072006E0061006C0020006E006F0074006500010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4C006F00610064006500640041004D00330001004C00650076002E0041004D00
      330001000100010001000D000A006700720064004C004F004400420054006100
      62006C00650056006900650077003100500072006F00640075006B0074006E00
      6F0074006500720069006E006700010049006E007400650072006E006E006F00
      74006500720069006E0067000100010049006E007400650072006E0061006C00
      20006E006F0074006500010001000D000A006700720064004600530044004200
      5400610062006C0065005600690065007700310050006F007300690074006900
      6F006E00010050006F0073006900740069006F006E0001000100010001000D00
      0A0067007200640046005300440042005400610062006C006500560069006500
      77003100530068006F00720074004E006F007400650001005400720075006300
      6B006E006F0074006500720069006E0067000100010046006F0072006B006C00
      6900660074006E006F00740065007300010001000D000A004C00610062006500
      6C00390001004C00E4006E00670064003A0001004C00E4006E00670064000100
      4C0065006E0067007400680001004C00E4006E006700640001000D000A006100
      63005000720069006E00740054004F00010054004F0001000100010001000D00
      0A00610063005000720069006E00740054004F005F004D0061006E0075006100
      6C006C007900010054004F0020004D0061006E00750065006C006C0001000100
      54004F0020004D0061006E00750061006C002000750073006100670065000100
      01000D000A00610063005000720069006E0074004C004F005F0059006F007500
      72005F004D0069006C006C005F004D0061006E00750061006C006C0079000100
      4C004F00200065007200740020007600650072006B0020004D0061006E007500
      65006C006C000100010054004F00200079006F007500720020006D0069006C00
      6C0020004D0061006E00750061006C0020007500730061006700650001000100
      0D000A00610063005000720069006E0074004C004F005F0041006C006C005F00
      4D0069006C006C0073005F004D0061006E00750061006C006C00790001004C00
      4F00200061006C006C00610020007600650072006B0020004D0061006E007500
      65006C006C000100010054004F00200061006C006C0020006D0069006C006C00
      730020004D0061006E00750061006C0020007500730061006700650001000100
      0D000A00610063005000720069006E0074004C004F005F0059006F0075007200
      5F004D0069006C006C0001004C004F0020006500720074002000760065007200
      6B00010001004C004F00200079006F007500720020006D0069006C006C000100
      01000D000A00610063005000720069006E0074004C004F005F0041006C006C00
      5F004D0069006C006C00730001004C004F00200061006C006C00610020007600
      650072006B00010001004C004F00200061006C006C0020006D0069006C006C00
      7300010001000D000A00610063004D00610069006C0054004F005F004D006100
      6E00750061006C006C00790001004D00610069006C006100200054004F002000
      4D0061006E00750065006C006C000100010045004D00610069006C0020005400
      4F0020006D0061006E00750061006C006C007900010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A006400
      780042006100720043006F006E00740072006F006C0043006F006E0074006100
      69006E00650072004900740065006D00310001004E0065007700200049007400
      65006D0001000100010001000D000A0064007800420061007200530074006100
      740069006300310001005300F6006B0020004C004F003A0001005300F6006B00
      20004C004F00010053006500610072006300680020004C004F0001005300F600
      6B0020004C004F0001000D000A0063006300530068006F00770041006C006C00
      0100530068006F007700200041006C006C000100560069007300610020006100
      6C006C006100010001005600690073006100200061006C006C00610001000D00
      0A00620063004C006100730074004C006F00610064004E006F004F0070006500
      6E0001004C006100730074002F004C004F004E007200010001004C006F006100
      64002F004C004F006E006F00010001000D000A006200620047006F0054006F00
      4C006F00610064000100D600700070006E006100010001004F00700065006E00
      010001000D000A006400780042006100720043006F006E00740072006F006C00
      43006F006E007400610069006E00650072004900740065006D00320001004E00
      6500770020004900740065006D0001000100010001000D000A00640078004200
      6100720042007500740074006F006E003300310001004E006500770020004200
      7500740074006F006E0001000100010001000D000A0062005000720069006E00
      74004C004F0044006900740074005600650072006B0001004C004F0020004500
      7200740020007600650072006B00010001004C004F00200079006F0075007200
      20006D0069006C006C00010001000D000A0062005000720069006E0074004C00
      4F0041006C006C005600650072006B0001004C004F00200061006C006C006100
      20007600650072006B00010001004C004F00200061006C006C0020006D006900
      6C006C007300010001000D000A00620041006C006C0061004C00610073007400
      650072005000650072004C004F00010041006C006C00610020006C0061007300
      740065007200200070006500720020004C004F0020006F006300680020005600
      650072006B000100010041006C006C0020006C006F0061006400730020007000
      6500720020004C004F00200061006E00640020006D0069006C006C0001000100
      0D000A00620062004100760072006F0070005600650072006B00010041007600
      72006F00700020005600650072006B0001000100430061006C006C0020006F00
      6600660020006D0069006C006C00010001000D000A0062006200540061006C00
      6C00790055005300410001004600F6006C006A00650073006500640065006C00
      20002800550053004100290001000100540061006C006C007900200028005500
      53002900010001000D000A0062006200540061006C006C007900560065007200
      320001004600F6006C006A00650073006500640065006C000100010054006100
      6C006C007900010001000D000A0062006200540061006C006C0079005F005500
      5300410001004600F6006C006A00650073006500640065006C00200028005500
      530041002900200001000100540061006C006C00790020002800550053002900
      010001000D000A006200620041007600720061006B006E0069006E0067005300
      70006500630056006500720032000100410076007200E4006B006E0069006E00
      6700200053007000650063000100010053006500740074006C0065006D006500
      6E00740020007300700065006300010001000D000A0064007800420061007200
      42007500740074006F006E003100380001004600F6006C006A00650073006500
      640065006C002000280064006B00290001000100540061006C006C0079002000
      280064006B002900010001000D000A0064007800420061007200420075007400
      74006F006E003100390001004C004F00200061006C006C006100200076006500
      72006B002000280064006B002900010001004C004F00200061006C006C002000
      6D0069006C006C0073002000280064006B002900010001000D000A0064007800
      42006100720042007500740074006F006E0032003000010041006C006C006100
      20006C0061007300740065007200200070006500720020004C004F0020006F00
      6300680020005600650072006B002000280064006B0029000100010041006C00
      6C0020006C006F00610064007300200070006500720020004C004F0020006100
      6E00640020006D0069006C006C002000280064006B002900010001000D000A00
      6400780042006100720042007500740074006F006E0032003100010041006C00
      6C00610020006C0061007300740065007200200070006500720020004C004F00
      20006F006300680020005600650072006B00200028006D00610072006B006500
      720061006400650020006C006100730074006500720029000100010041006C00
      6C0020006C006F00610064007300200070006500720020004C004F0020006100
      6E00640020006D0069006C006C0020002800730065006C006500630074006500
      640020006C006F006100640073002900010001000D000A006400780042006100
      720042007500740074006F006E0032003200010041006C006C00610020006C00
      61007300740065007200200070006500720020004C004F00200028006D006100
      72006B006500720061006400650020006C006100730074006500720029000100
      010041006C006C0020006C006F00610064007300200070006500720020004C00
      4F0020002800730065006C006500630074006500640020006C006F0061006400
      73002900010001000D000A006400780042006100720042007500740074006F00
      6E0032003300010041006C006C00610020006C00610073007400650072002000
      70006500720020004C004F000100010041006C006C0020006C006F0061006400
      7300200070006500720020004C004F00010001000D000A006400780042006100
      720042007500740074006F006E0032003400010049006D0070006F0072007400
      6500720061002000700061006B00650074002000280077006F006F0064007800
      2900010049006D0070006F00720074006500720061002000700061006B006500
      74002000280057006F006F00640058002900010049006D0070006F0072007400
      200070006B0067002000280057006F006F00640058002900010049006D007000
      6F00720074006500720061002000700061006C006C002000280057006F006F00
      64005800290001000D000A005300700069006E00450064006900740052007500
      6200720069006B0046006F006E00740053006F007200740069006D0065006E00
      7400730056007900010054006100620065006C006C003A002000520075006200
      720069006B0066006F006E0074002000730074006F0072006C0065006B000100
      01005400610062006C0065003A0020004C006100620065006C0066006F006E00
      74002000730069007A006500010001000D000A005300700069006E0045006400
      6900740043006F006E00740065006E00740046006F006E00740053006F007200
      740069006D0065006E007400730056007900010054006100620065006C006C00
      3A002000430065006C006C0066006F006E0074002000730074006F0072006C00
      65006B00010001005400610062006C0065003A002000430065006C006C006600
      6F006E0074002000730069007A006500010001000D000A006100740052006500
      660072006500730068000100520065002D00720065006100640020006C006F00
      6100640020006F00720064006500720073002000660072006F006D0020006400
      61007400610062006100730065000100C50074006500720073006B0061007000
      610020006C006100730074006F0072006400650072007300200066007200E500
      6E002000640061007400610062006100730065006E0001000100C50074006500
      720073006B0061007000610020006C006100730074006F007200640065007200
      7300200066007200E5006E002000640061007400610062006100730065006E00
      01000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A006D0074004D006100
      72006B006500640052006F00770073005300530050004E006F00010053005300
      50004E006F0001000100010001000D000A006D00740049006D0070006F007200
      7400650064004C006F006100640073004C006F00610064004E006F0001004C00
      6F00610064004E006F0001000100010001000D000A006D00740049006D007000
      6F0072007400650064004C006F006100640073004C004F004E006F0001004C00
      4F004E006F0001000100010001000D000A006D00740049006D0070006F007200
      7400650064004C006F0061006400730041006E00740061006C00500061006B00
      65007400010041006E00740061006C00500061006B0065007400010001004E00
      6F004F00660050006B0067007300010041006E00740061006C00500061006C00
      6C0001000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D005600690073005400720075006300
      6B004C006F00610064004F00720064006500720001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A0063007800
      42007500740074006F006E00310001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A0063007800420075007400
      74006F006E00320001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A006300780042007500740074006F006E00
      330001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A006300780042007500740074006F006E00340001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A006300780042007500740074006F006E00370001004D00530020005300
      61006E00730020005300650072006900660001000100010001000D000A007000
      6E006C004C006F00770065007200470072006900640048006400720001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A004C006100620065006C00310001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A004C00610062006500
      6C00320001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A004C006100620065006C00330001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      4C006100620065006C00340001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A004C006100620065006C003500
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A004C006100620065006C00360001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A004C006100
      620065006C00370001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A004C006100620065006C00380001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A006200620042006F006F006B0069006E00670046006F0072006D000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A0062006200530061007600650001004D0053002000530061006E00
      730020005300650072006900660001000100010001000D000A00630078004200
      7500740074006F006E00350001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A00630078004200750074007400
      6F006E00360001004D0053002000530061006E00730020005300650072006900
      660001000100010001000D000A00740063004C004F0001004D00530020005300
      61006E00730020005300650072006900660001000100010001000D000A006400
      78004200610072004D0061006E00610067006500720031000100530065006700
      6F00650020005500490001000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100530065006700
      6F00650020005500490001000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100530065006700
      6F00650020005500490001000100010001000D000A0070006D00500072006900
      6E00740001005300650067006F00650020005500490001000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0032000100540069006D00650073002000
      4E0065007700200052006F006D0061006E0001000100010001000D000A007000
      6D004C004F00470072006900640001005400610068006F006D00610001000100
      010001000D000A0070006D004C006F0061006400470072006900640001005300
      650067006F00650020005500490001000100010001000D000A00630078005300
      740079006C006500310063006C00590065006C006C006F007700010054006100
      68006F006D00610001000100010001000D000A00630078005300740079006C00
      6500310052006500640001005400610068006F006D0061000100010001000100
      0D000A00630078005300740079006C0065004800650061006400650072000100
      560065007200640061006E00610001000100010001000D000A00630078005300
      740079006C00650043006F006E00740065006E00740001005600650072006400
      61006E00610001000100010001000D000A00630078005300740079006C006500
      50006F0070004D0065006E0075000100560065007200640061006E0061000100
      0100010001000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F00640064000100560065007200640061006E00610001000100
      010001000D000A004C006100620065006C00390001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00740063004C004F002E00540061006200730001004C006100
      730074006F0072006400650072006C006900730074006100010001004C006F00
      610064004F0072006400650072004C00690073007400010001000D000A006400
      78004200610072004D0061006E00610067006500720031002E00430061007400
      650067006F0072006900650073000100440065006600610075006C0074002C00
      5000720069006E0074002C004C006F006100640073002C004C004F0047007200
      6900640050006F0070005500700001000100010001000D000A00740063004C00
      4F002E00500072006F0070006500720074006900650073002E00540061006200
      730001004C006100730074006F0072006400650072006C006900730074006100
      010001004C006F00610064004F0072006400650072004C006900730074000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A004900440053005F00300001005400650073007400
      69006E00670001000100010001000D000A004900440053005F00310001005600
      69006C006C002000640075002000730070006100720061002000E4006E006400
      720069006E006700610072003F000100010044006F00200079006F0075002000
      770061006E007400200074006F00200073006100760065002000630068006100
      6E006700650073003F00010001000D000A004900440053005F00310030000100
      4C006100730074004E0072003A0001004C006100730074006E00720001004C00
      6F00610064004E006F0001004C006100730074006E00720001000D000A004900
      440053005F0031003100010041006E006700650020004C004F0020006E007500
      6D006D0065007200200061007400740020006200790074006100200074006900
      6C006C000100010045006E0074006500720020004C004F0020006E006F002000
      74006F0020006300680061006E0067006500200074006F00010001000D000A00
      4900440053005F003100320001004C004F0020004E0072003A0001004C004F00
      01004C004F0001004C004F0001000D000A004900440053005F00310033000100
      4C004F006E0072002000E4006E0064007200610074002000690020006C006100
      7300740065006E002000010001004C004F0020006300680061006E0067006500
      6400200069006E0020006C006F00610064002000010001000D000A0049004400
      53005F003100340001004C004F006E007200200001004C004F0001004C004F00
      01004C004F0001000D000A004900440053005F00310035000100200066006900
      6E006E007300200065006A00200065006C006C006500720020007300E5002000
      73006B0069006C006A0065007200200073006900670020006C00650076006500
      720061006E007400F6007200200065006C006C006500720020006C0061007300
      740073007400E4006C006C006500200066007200E5006E002000640065007400
      20004C004F006E00720020006C0061007300740065006E002000680061007200
      2E0001000100200064006F006500730020006E006F0074002000650078006900
      7300740020006F0072002000740068006500200073007500700070006C006900
      6500720073002F006C006F006100640070006C00610063006500200064006900
      660066006500720073002000660072006F006D00200077006800610074002000
      74006800650020004C004F006E006F00200074006800650020006C006F006100
      64002000680061007300010001000D000A004900440053005F00310036000100
      45006D00610069006C006100640072006500730073002000730061006B006E00
      6100730020006600F600720020006B006C00690065006E00740065006E002C00
      200061006E0067006500200061006400720065007300730065006E0020006400
      6900720065006B0074002000690020006D00610069006C006500740028006F00
      750074006C006F006F006B002900010045006D00610069006C00610064007200
      6500730073002000730061006B006E006100730020006600F600720020006B00
      75006E00640065006E002C00200061006E006700650020006100640072006500
      7300730065006E00200064006900720065006B0074002000690020006D006100
      69006C006500740028006F00750074006C006F006F006B002900010045006D00
      610069006C002000610064006400720065007300730020006900730020006D00
      69007300730069006E006700200066006F007200200074006800650020006300
      7500730074006F006D00650072002C0020007000750074002000740068006500
      20006100640064007200650073007300200069006E0074006F00200074006800
      6500200065006D00610069006C0020006400690072006500630074006C007900
      200028006F00750074006C006F006F006B002900010045006D00610069006C00
      6100640072006500730073002000730061006B006E006100730020006600F600
      720020006B0075006E00640065006E002C00200061006E006700650020006100
      6400720065007300730065006E00200064006900720065006B00740020006900
      20006D00610069006C006500740028006F00750074006C006F006F006B002900
      01000D000A004900440053005F003100380001004600F6006C006A0065007300
      6500640065006C0020006200690066006F006700610064002E00200001000100
      540061006C006C00790020006100740074006100630068006500640001000100
      0D000A004900440053005F003100390001004C006F0061006400200074006100
      6C006C0079002000610074007400610063006800650064002E00200001004600
      F6006C006A00650073006500640065006C0020006200690066006F0067006100
      64000100540061006C006C007900200061007400740061006300680065006400
      01004600F6006C006A00650073006500640065006C0020006200690066006F00
      67006100640001000D000A004900440053005F00320001004800690074007400
      610064006500200069006E007400650020004C004F004E007200200001004800
      690074007400610064006500200069006E007400650020004C004F0001004300
      6F0075006C00640020006E006F0074002000660069006E00640020004C004F00
      01004800690074007400610064006500200069006E007400650020004C004F00
      01000D000A004900440053005F0032003000010045006D00610069006C006100
      640072006500730073002000730061006B006E006100730020006600F6007200
      20006B006C00690065006E00740065006E002100010045006D00610069006C00
      6100640072006500730073002000730061006B006E006100730020006600F600
      720020006B0075006E00640065006E002100010045006D00610069006C002000
      610064006400720065007300730020006900730020006D006900730073006900
      6E006700200066006F0072002000740068006500200063007500730074006F00
      6D00650072002100010045006D00610069006C00610064007200650073007300
      2000730061006B006E006100730020006600F600720020006B0075006E006400
      65006E00210001000D000A004900440053005F00320031000100430061006E00
      6E006F00740020006F00700065006E002C0020004C006F006100640020006900
      730020006C006F0063006B006500640020006200790020007500730065007200
      200001004B0061006E00200069006E00740065002000F600700070006E006100
      2C0020004C0061007300740065006E002000E400720020006C00E50073007400
      200061007600200061006E007600E4006E006400610072006500200001000100
      4B0061006E00200069006E00740065002000F600700070006E0061002C002000
      4C0061007300740065006E002000E400720020006C00E5007300740020006100
      7600200061006E007600E4006E006400610072006500200001000D000A004900
      440053005F00330001002C0020006400650074002000660069006E006E007300
      20006400E400720065006D006F007400200065006E0020006100640064002000
      4C004F0020006E007200200001000100010001000D000A004900440053005F00
      3400010020006B006F00700070006C00610064002000740069006C006C002000
      640065006E002C002000760069006C006C0020006400750020006800E4006D00
      740061002000640065006E003F000100010020006D0061007400630068006500
      6400200074006F002000690074002C00200064006F00200079006F0075002000
      770061006E007400200074006F0020006700650074002000690074003F000100
      01000D000A004900440053005F00350001004B0061006E00200069006E007400
      650020006100760073006C0075007400610020004C004F0020006600F6007200
      200061007400740020006400650074002000660069006E006E00730020006C00
      61007300740065007200200073006F006D00200069006E00740065002000E400
      720020006100760073006C0075007400610064006500200065006C006C006500
      7200200069006E006700610020006C0061007300740065007200200061006C00
      6C0073002E0001000100430061006E006E006F007400200043006F006D007000
      6C0065007400650020004C004F00200062006500630061007500730065002000
      74006800650072006500200061007200650020006C006F006100640073002000
      6E006F007400200063006F006D0070006C00650074006500640020006F007200
      20006E006F0020006C006F00610064007300200061007400200061006C006C00
      2E002000010001000D000A004900440053005F00360001004C004F002000E400
      7200200069006E0074006500200061006B00740069007600010001004C004F00
      20006900730020006E006F007400200061006300740069007600650001000100
      0D000A004900440053005F00370001004100760072006F007000650074002000
      E4007200200069006E0074006500200061006B00740069007600010001004300
      4F0020006900730020006E006F00740020006100630074006900760065000100
      01000D000A004900440053005F003800010054006100620065006C006C002000
      6500780070006F007200740065007200610064002000740069006C006C002000
      45007800630065006C002000660069006C002000010001005400610062006C00
      650020006500780070006F007200740065006400200074006F00200045007800
      630065006C002000660069006C0065002000010001000D000A00490044005300
      5F003900010041006E006700650020004C006100730074004E00720001000100
      45006E0074006500720020004C006F00610064004E006F00010001000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A0063007800530070006C00690074007400
      6500720031002E0048006F0074005A006F006E00650043006C00610073007300
      4E0061006D00650001005400630078004D00650064006900610050006C006100
      79006500720038005300740079006C00650001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      53007500700070006C006900650072002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031005300680069007000700069006E00670050006C00
      61006E005300740061007400750073002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      49006D0061006700650043006F006D0062006F0042006F007800500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004C004F00
      4E0075006D006200650072002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310050004B00470043006F00640065002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004C004F00440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004C006500
      6E006700740068002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      77003100460072006F006D005700650065006B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310054006F005700650065006B002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004C004F00
      440042005400610062006C0065005600690065007700310056006F006C007500
      6D0065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      530068006900700054006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310055006E00690074004E0061006D0065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100440065007300740069006E00
      6100740069006F006E002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      65007700310043006C00690065006E0074004E0061006D0065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310053005500500050005F00
      4E0041004D0045002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031004C004F004100440049004E0047002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031004C004F00430041004C005F00430055005300
      54002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004900
      4E0049005400490041004C0053002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031005200450041004400590044004100540045002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      6800690070007000650072007300530068006900700044006100740065002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100420061007200
      43006F00640065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031005200450046004500520045004E0053002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310053004B0041005000410044002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005200650066006500
      720065006E00630065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004E0054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004E0042002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100410054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100410042002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100540054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100540042002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100540053002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100550054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004B0056002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      65007700310050004B002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      65007700310043007500730074006F006D0065007200530068006F0077004900
      6E0047007200690064002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004F0072006400650072004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C00650056006900650077003100440065006C0069007600650072007900
      5F005700650065006B004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004300530048005F0043007500730074006F006D006500
      72004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      3100530068006900700054006F0049006E00760050006F0069006E0074004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004C00
      6F006100640069006E0067004C006F0063006100740069006F006E004E006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310043004800
      43007500730074006F006D00650072004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031005300500043007500730074006F006D00
      650072004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031004F0062006A0065006300740054007900700065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780049006D0061006700650043006F006D0062006F0042006F00
      7800500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      7700310053007500700070006C00690065007200530068006900700050006C00
      61006E004F0062006A006500630074004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004F007200640065007200540079007000
      65002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004900
      4E0054004C004E00470044002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031005200410044005200450046004500520045004E0053002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004C00
      4F00440042005400610062006C006500560069006500770031004B004F004E00
      5400520041004B00540053004200450053004B005200490056004E0049004E00
      47002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004D00
      410052004B004E00410044002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310050007200690073002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      650056006900650077003100530068006F00770049006E004700720069006400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310050007200
      6F006400750063007400470072006F00750070004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100500072006900630065004C00
      6900730074004E0061006D0065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      5600690065007700310050006300730050006500720050006B0067002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005000
      610063006B00610067006500570069006400740068002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780054006500780074004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005000610063006B00
      6100670065004800650069006700680074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780054006500780074004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A006700720064004C004F0044004200
      5400610062006C0065005600690065007700310050006B00670043006F006400
      6500500050004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100500072006F00640049006E0073007400720075004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100500072006F0064007500630074004C0065006E0067007400
      68004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      31004C0061006E006700750061006700650043006F00640065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310041004C004D004D002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100530065007100
      750065006E00630065004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004C006100670065007200670072007500700070002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100450054004400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310045005400
      41002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005000
      610063006B006100670065005F00530069007A0065002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031005000610063006B00610067006500
      530069007A0065004E0061006D0065002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031004C006E00670064002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C0065005600690065007700310050006B00670041007200740069006300
      6C0065004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031004C004F00470072006F00750070004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031004C004F0042007500660066006500
      720074004E0061006D0065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031004C006F00610064006500640050006B00670073002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C006F0061006400
      650064004E004D0033002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      65007700310050006C0061006E00500061006B00650074002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064004C004F0044004200
      5400610062006C0065005600690065007700310050006C0061006E0041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005000
      72006F006400750063006500640041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C00650056006900650077003100500072006F0064007500630065006400
      50004B0054002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      31004F0072006400650072005F0041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006C0063005600650072006B002E0050007200
      6F0070006500720074006900650073002E004B00650079004600690065006C00
      64004E0061006D0065007300010043006C00690065006E0074004E006F000100
      0100010001000D000A006C0063005600650072006B002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D006500730001005300650061007200630068004E0061006D006500
      01000100010001000D000A006C0063004C00610073007400730074006C006C00
      65002E00500072006F0070006500720074006900650073002E004B0065007900
      4600690065006C0064004E0061006D0065007300010043006900740079004E00
      6F0001000100010001000D000A006C0063004C00610073007400730074006C00
      6C0065002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D006500730001004F0072007400
      010001004300690074007900010001000D000A006C0063004400650073007400
      69006E006100740069006F006E002E00500072006F0070006500720074006900
      650073002E004B00650079004600690065006C0064004E0061006D0065007300
      010043006900740079004E006F0001000100010001000D000A006C0063004400
      65007300740069006E006100740069006F006E002E00500072006F0070006500
      720074006900650073002E004C006900730074004600690065006C0064004E00
      61006D006500730001004F007200740001000100430069007400790001000100
      0D000A0063006200530068006F0077004F006E006C007900530065006C006500
      63007400650064005600650072006B0073004C004F0073002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079004300
      6800650063006B0065006400010054007200750065000100530061006E007400
      01000100530061006E00740001000D000A0063006200530068006F0077004F00
      6E006C007900530065006C00650063007400650064005600650072006B007300
      4C004F0073002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C00730065000100460065006C0001000100460065006C0001000D00
      0A0067007200640046005300440042005400610062006C006500560069006500
      770031005300680069007000700069006E00670050006C0061006E004E006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      46005300440042005400610062006C006500560069006500770031004C006F00
      610064004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640046005300440042005400610062006C006500560069006500
      770031004C006F0061006400490044002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640046005300440042005400610062006C00
      6500560069006500770031004C006F0061006400650064004400610074006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780044006100740065004500640069007400
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640046005300440042005400610062006C0065005600690065007700
      3100530065006E006400650072004C006F006100640053007400610074007500
      73002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D006500010054006300780049006D0061006700650043006F00
      6D0062006F0042006F007800500072006F007000650072007400690065007300
      01000100010001000D000A006700720064004600530044004200540061006200
      6C006500560069006500770031005000630073002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00670072006400460053004400420054006100
      62006C00650056006900650077003100410063007400750061006C004D003300
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      46005300440042005400610062006C006500560069006500770031004E006F00
      6D0069006E0061006C004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640046005300440042005400610062006C006500
      560069006500770031004C0069006E00650061006C004D006500740065007200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      46005300440042005400610062006C006500560069006500770031004D004600
      42004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640046005300440042005400610062006C00650056006900650077003100
      460053002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640046005300440042005400610062006C00650056006900650077003100
      5600450052004B002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640046005300440042005400610062006C006500560069006500
      7700310041004E00540050004B0054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640046005300440042005400610062006C00
      65005600690065007700310053007500700070006C006900650072004E006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      46005300440042005400610062006C0065005600690065007700310041005200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780044006100740065004500640069007400
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640046005300440042005400610062006C0065005600690065007700
      3100410052005F00410056002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640046005300440042005400610062006C0065005600
      69006500770031004C006F0061006400410052002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B0065006400010054007200750065000100530061006E00740001000100
      530061006E00740001000D000A00670072006400460053004400420054006100
      62006C006500560069006500770031004C006F0061006400410052002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      0100460065006C0001000100460065006C0001000D000A006700720064004600
      5300440042005400610062006C006500560069006500770031004C006F006100
      6400410052002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043006800650063006B00
      42006F007800500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640046005300440042005400610062006C0065005600
      69006500770031005000610063006B0061006700650045006E00740072007900
      4F007000740069006F006E002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      42006100720031002E004F006C0064004E0061006D0065000100430075007300
      74006F006D002000310001000100010001000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032002E004F006C006400
      4E0061006D006500010043007500730074006F006D0020003200010001000100
      01000D000A005300700069006E00450064006900740052007500620072006900
      6B0046006F006E00740053006F007200740069006D0065006E00740073005600
      79002E0054006500780074000100300001000100010001000D000A0053007000
      69006E00450064006900740043006F006E00740065006E00740046006F006E00
      740053006F007200740069006D0065006E0074007300560079002E0054006500
      780074000100300001000100010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0032002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010046006F0072006D0061007400200072006100700070006F00720074000100
      010046006F0072006D0061007400200072006100700070006F00720074000100
      0D000A006D0074004D00610072006B006500640052006F00770073002E005600
      65007200730069006F006E00010037002E00360033002E003000300020005300
      740061006E0064006100720064002000450064006900740069006F006E000100
      0100010001000D000A006D00740049006D0070006F0072007400650064004C00
      6F006100640073002E00560065007200730069006F006E00010037002E003600
      33002E003000300020005300740061006E006400610072006400200045006400
      6900740069006F006E0001000100010001000D000A006700720064004C004F00
      440042005400610062006C0065005600690065007700310049006E0074006500
      72006E006E006F0074006500720069006E0067002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004C006F00610064006500640041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640046005300440042005400610062006C006500560069006500770031005000
      6F0073006900740069006F006E002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640046005300440042005400610062006C006500
      56006900650077003100530068006F00720074004E006F00740065002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F00700065007200740069006500730001000100010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031005300680069007000700069006E00670050006C00
      61006E005300740061007400750073002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0030005D002E00440065007300
      6300720069007000740069006F006E0001005000520045004C0049004D004900
      4E00C4005200010001005000520045004C0049004D0049004E00410052005900
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031005300680069007000700069006E00670050006C006100
      6E005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0031005D002E004400650073006300
      720069007000740069006F006E0001004E005900010001004E00450057000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      69006500770031005300680069007000700069006E00670050006C0061006E00
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0032005D002E0044006500730063007200
      69007000740069006F006E0001004100560053004C0041004700010001005200
      45004A0045004300540045004400010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005300680069007000
      700069006E00670050006C0061006E005300740061007400750073002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      33005D002E004400650073006300720069007000740069006F006E0001004100
      4300430045005000540001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005300680069007000
      700069006E00670050006C0061006E005300740061007400750073002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      34005D002E004400650073006300720069007000740069006F006E0001004100
      560053004C0055005400410044000100010043004F004D0050004C0045005400
      45004400010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031005300680069007000700069006E0067005000
      6C0061006E005300740061007400750073002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0035005D002E0044006500
      73006300720069007000740069006F006E0001005600C4004E00540041000100
      01005700410049005400010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100530068006900700070006900
      6E00670050006C0061006E005300740061007400750073002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0036005D00
      2E004400650073006300720069007000740069006F006E000100500052004F00
      440055004B00540049004F004E0020004100560053004C005500540041004400
      01000100500052004F00440055004300540049004F004E00200043004F004D00
      50004C004500540045004400010001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310053006800690070007000
      69006E00670050006C0061006E005300740061007400750073002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003700
      5D002E004400650073006300720069007000740069006F006E00010041004E00
      4E0055004C004500520041004400010041004E004E0055004C004C0045005200
      41004400010041004E004E0055004C004C0045004400010041004E004E005500
      4C004C00450052004100440001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100530068006900700070006900
      6E00670050006C0061006E005300740061007400750073002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0038005D00
      2E004400650073006300720069007000740069006F006E00010041004E004E00
      55002E00420045004B005200C4004600540041004400010041004E004E002000
      420045004B005200C4004600540041004400010041004E004E00200043004F00
      4E004600490052004D0045004400010041004E004E002000420045004B005200
      C400460054004100440001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031005300680069007000700069006E00
      670050006C0061006E005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0039005D002E00
      4400650073006300720069007000740069006F006E0001004B004C0041005200
      20004600D60052002000550054004C004100530054004E0049004E0047000100
      010052004500410044005900200054004F0020004C004F004100440001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031005300680069007000700069006E00670050006C0061006E005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B00310030005D002E0044006500730063007200
      69007000740069006F006E000100C4004E004400520041004400010001004300
      480041004E00470045004400010001000D000A006700720064004C004F004400
      42005400610062006C006500560069006500770031004F0062006A0065006300
      740054007900700065002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0030005D002E00440065007300630072006900
      7000740069006F006E00010049006E007400650072006E000100010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031004F0062006A0065006300740054007900700065002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003100
      5D002E004400650073006300720069007000740069006F006E00010041006400
      640020004C004F00010041006400640020004C004F00010041004C004F000100
      41006400640020004C004F0001000D000A006700720064004C004F0044004200
      5400610062006C006500560069006500770031004F0062006A00650063007400
      54007900700065002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0032005D002E004400650073006300720069007000
      740069006F006E0001004C004F00010001004C004F00010001000D000A006C00
      63005600650072006B002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001005300650061007200630068004E006100
      6D00650001000100010001000D000A0069006300530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0030005D002E004400650073006300720069007000740069006F006E00
      010041006C006C0061000100010041006C006C00010001000D000A0069006300
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0031005D002E0044006500730063007200
      69007000740069006F006E00010041006C006C0061002000280065006A002000
      6100760073006C007500740061006400650020006F0063006800200061006E00
      6E002E00620065006B00720029000100010041006C006C00200028006E006F00
      7400200063006F006D0070006C006500740065006400200061006E0064002000
      61006E006E00200063006F006E0066002900010001000D000A00690063005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0032005D002E00440065007300630072006900
      7000740069006F006E0001004100760073006C00750074006100640065002000
      6F0063006800200061006E006E002E002000620065006B007200E40066007400
      610064000100010043006F006D0070006C006500740065006400200061006E00
      6400200061006E006E0075006C006C0065006400200063006F006E0066006900
      72006D0065006400010001000D000A0069006300530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0033005D002E004400650073006300720069007000740069006F006E00
      01004E007900610020006F0063006800200061006E006E0075006C0065007200
      61006400650001004E007900610020006F0063006800200061006E006E007500
      6C006C006500720061006400650001004E0065007700200061006E0064002000
      61006E006E0075006C006C006500640001004E007900610020006F0063006800
      200061006E006E0075006C006C006500720061006400650001000D000A006900
      63005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0034005D002E004400650073006300
      720069007000740069006F006E0001004100760073006C006100670001000100
      520065006A0065006300740065006400010001000D000A006900630053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0035005D002E004400650073006300720069007000
      740069006F006E00010041006300630065007000740065007200610064000100
      010041006300630065007000740065006400010001000D000A00690063005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0036005D002E00440065007300630072006900
      7000740069006F006E0001005600E4006E007400610001000100570061006900
      7400010001000D000A00690063005300740061007400750073002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003700
      5D002E004400650073006300720069007000740069006F006E00010050007200
      6F00640075006B00740069006F006E0020006100760073006C00750074006100
      640001000100500072006F00640075006300740069006F006E00200063006F00
      6D0070006C006500740065006400010001000D000A0069006300530074006100
      7400750073002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0038005D002E0044006500730063007200690070007400
      69006F006E0001005000720065006C0069006D0069006E00E400720001000100
      5000720065006C0069006D0069006E00610072007900010001000D000A006900
      63005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0039005D002E004400650073006300
      720069007000740069006F006E00010041006E006E0075006C00650072006100
      6400010041006E006E0075006C006C006500720061006400010041006E006E00
      75006C006C0065006400010041006E006E0075006C006C006500720061006400
      01000D000A00690063005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B00310030005D00
      2E004400650073006300720069007000740069006F006E00010041006E006E00
      2E002000620065006B007200E4006600740061006400010041006E006E002000
      620065006B007200E4006600740061006400010041006E006E00200063006F00
      6E006600690072006D0065006400010041006E006E002000620065006B007200
      E400660074006100640001000D000A0069006300530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B00310031005D002E004400650073006300720069007000740069006F00
      6E0001004B006C006100720020006600F60072002000750074006C0061007300
      74006E0069006E0067000100010052006500610064007900200074006F002000
      6C006F0061006400010001000D000A00690063004F0072006400650072005400
      7900700065004E006F002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0030005D002E00440065007300630072006900
      7000740069006F006E0001004600F60072007300E4006C006A006E0069006E00
      670001000100530061006C0065007300010001000D000A00690063004F007200
      64006500720054007900700065004E006F002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0031005D002E0044006500
      73006300720069007000740069006F006E00010049006E006B00F60070000100
      010050007500720063006800610073006500010001000D000A006C0063004C00
      610073007400730074006C006C0065002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E0001004F007200740001000100
      4300690074007900010001000D000A006C006300440065007300740069006E00
      6100740069006F006E002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001004F007200740001000100430069007400
      7900010001000D000A0067007200640046005300440042005400610062006C00
      650056006900650077003100530065006E006400650072004C006F0061006400
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0030005D002E0044006500730063007200
      69007000740069006F006E0001005000720065006C0069006D0069006E00E400
      7200010001005000720065006C0069006D0069006E0061007200790001000100
      0D000A0067007200640046005300440042005400610062006C00650056006900
      650077003100530065006E006400650072004C006F0061006400530074006100
      7400750073002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0031005D002E0044006500730063007200690070007400
      69006F006E000100500072006F0062006C0065006D0001000100500072006F00
      62006C0065006D00010001000D000A0067007200640046005300440042005400
      610062006C00650056006900650077003100530065006E006400650072004C00
      6F00610064005300740061007400750073002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0032005D002E0044006500
      73006300720069007000740069006F006E0001004100760073006C0075007400
      610064000100010043006F006D0070006C006500740065006400010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660072006D005600690073005400720075006300
      6B004C006F00610064004F007200640065007200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      6300780042007500740074006F006E0031000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      780042007500740074006F006E0032000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      42007500740074006F006E0033000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078004200
      7500740074006F006E0034000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780042007500
      740074006F006E0037000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0070006E006C004C006F00
      7700650072004700720069006400480064007200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      4C006100620065006C0031000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A004C00610062006500
      6C0032000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A004C006100620065006C00330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A004C006100620065006C003400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      4C006100620065006C0035000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A004C00610062006500
      6C0036000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A004C006100620065006C00370001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A004C006100620065006C003800010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      6200620042006F006F006B0069006E00670046006F0072006D00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A006200620053006100760065000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      780042007500740074006F006E0035000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      42007500740074006F006E0036000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00740063004C00
      4F000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00640078004200610072004D0061006E006100
      67006500720031000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720032000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0070006D005000720069006E0074000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A0070006D004C004F00470072006900640001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A0070006D004C006F0061006400470072006900640001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C006500310063006C00590065006C006C006F00
      77000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00630078005300740079006C00650031005200
      650064000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065004800
      650061006400650072000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C00650043006F006E00740065006E0074000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      78005300740079006C00650050006F0070004D0065006E007500010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C00650043006F006E00740065006E00
      74004F00640064000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A004C006100620065006C003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00}
  end
  object sq_GetLONos: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 288
    Top = 574
  end
  object ILStatus1616: TImageList
    Height = 24
    Width = 24
    Left = 528
    Top = 448
    Bitmap = {
      494C01010D001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000004469000000
      0000004469000000000000000000004E7700000000000044690000446900004E
      7700004E77000000000000446900004469000000000000000000000000000000
      0000000000000044690000446900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000000000000000
      00000044690000000000004E7700000000000044690000000000004E77000000
      0000004469000044690000000000004E77000000000000446900000000000044
      690000446900004E7700004E7700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E4600FF8C2000FF8C2000FF8C
      2000004E7700004E77000044690000446900004E7700004E7700000000000044
      690000000000004E7700004E770000000000004469000044690000446900004E
      7700004E77000000000000446900004469000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E4600FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000004E7700000000000044690000446900004E
      7700004E77000000000000000000004469000044690000446900004E77000000
      00000000000000446900004E7700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C20002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF00004E77000000
      0000000000000044690000446900004E7700004E7700004E7700000000000000
      000000446900004E770000000000004469000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C20002600BF002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF002600BF002600
      BF0000446900004E7700004E7700000000000000000000000000004469000044
      6900004E77000000000000446900004E77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C20002600BF002600BF002400
      B3002400B3002400B3002400B3002400B3002400B3002600BF002600BF002600
      BF002600BF002600BF002600BF0000000000004469000044690000446900004E
      77000000000000446900004E7700004469000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C20002600BF002400B3008A8A
      8A008A8A8A008A8A8A000000000000CEE90000B0CA002400B3002400B3002400
      B3002600BF002600BF002600BF002600BF002600BF00004E7700004E77000000
      000000446900004E770000446900004469000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C20002400B3008A8A8A008A8A
      8A00000000000000000000B5CE0000C4DF0000CEE90000B0CA0000A4BB0000B5
      CE002400B3002400B3002400B3002600BF002600BF002600BF002600BF002600
      BF00004E77000044690000446900004E77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000808080008A8A8A000000
      00000000000000B0CA0000B0CA0000B5CE0000C4DF0000B0CA00009CB30000CE
      E90000B5CE0000B0CA00009CB3002400B3002400B3002400B3002600BF002600
      BF002600BF002600BF002600BF00004469000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000808080008A8A8A008A8A
      8A008A8A8A0000000000000000000000000000CEE90000CEE90000B0CA0000B5
      CE0000CEE90000A4BB0000B0CA0000C4DF00000000008A8A8A002400B3002400
      B3002400B3002600BF002600BF002600BF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000808080008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A00000000000000000000A4BB0000B0
      CA0000B5CE00009CB30000A4BB00000000000000000074747400747474007474
      7400747474002400B3002400B3002400B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C20008080
      800080808000808080008A8A8A008A8A8A008A8A8A008A8A8A00000000000000
      00000000000000B5CE0000000000747474007474740074747400FFFFFF00FFFF
      FF007474740074747400747474002400B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C20008080800080808000808080008A8A8A008A8A8A008A8A
      8A008A8A8A00000000007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00747474002400B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C200080808000808080008080
      80008A8A8A007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002400B300FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C200000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C2000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E
      4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF9E4600FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF9E4600FF9E4600FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF8C20000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF9E4600FF9E46000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E46000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C20000000000000000000000000000000
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
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
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
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD735200C65A0000AD4A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE00189CCE00189CCE00189CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B55A3100C65A0000CE630000B552100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60031B5DE0021ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE00ADF7FF007BF7FF006BEFF70031B5DE0031B5
      DE0031B5DE00189CCE00189CCE001094CE00000000000000000000000000ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B55A3100C6630000CE630000B55A2100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD6009CDEEF0084EFFF004AC6E70021ADD60018A5C60018A5
      C60018A5C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0084DEEF0094FFFF007BF7FF0084F7FF0084F7
      FF007BF7FF0073EFFF0063DEF70031B5DE0031B5DE0000000000A5A5A5004242
      4200000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B55A2100CE630000C6630000C68463000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60052BDE7009CFFFF0094FFFF0073DEF70073DEF70073DE
      F70073DEF7004AC6E70021ADD60018A5C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0063C6E70094FFFF0073F7FF007BF7FF0073EF
      FF0073EFFF0073EFFF0073EFFF007BF7FF0052C6E700ADADAD005A5A5A009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000AD4A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A
      0000BD5A0000C68463000000000000000000AD4A0000CE630000B54A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60052BDE700ADFFFF008CF7FF008CEFFF008CEFFF008CEF
      FF0073DEF70073DEF70073DEF7004AC6EF0021ADD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE00189CCE0084E7F7007BF7FF007BF7FF0073EF
      FF0073EFFF0073EFFF0073EFFF0073EFFF00BDBDBD006B6B6B009C9C9C00B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000B5520000D6730000CE6B0000CE630000CE630000CE630000CE63
      0000C6630000BD6B42000000000000000000CE9C8400C6630000C6630000C684
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60029ADD600ADDEEF0094F7FF0094F7FF008CEFFF008CEF
      FF008CEFFF008CEFFF0073DEF70073DEF7004AC6EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0052DEEF00189CCE0094FFFF0073F7FF009C9C
      9C009C9C9C009C9C9C009C9C9C0073EFFF006B6B6B00181818006B6B6B008484
      8400000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000BD5A0000DE7B0000D6730000CE630000A5421000CE9C8400CE9C
      8400CE9C840000000000000000000000000000000000AD4A0000CE630000B552
      1000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60073DEF70029ADD6009CFFFF008CF7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70018A5C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE007BF7FF00189CCE0073CEEF00BDBDBD004A4A
      4A00524A4A004A4A4A0052525200A5A5A500393939006B6B6B00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000C6630000E7840000CE630000DE730000CE630000C68463000000
      00000000000000000000000000000000000000000000C6734200CE630000B54A
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD60094F7FF0029ADD600ADDEEF00A5EFF700A5EFF700A5F7
      FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70039BDE700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE008CFFFF0063E7F70094949C0094846B0084E7
      F70084E7F70084E7F70084E7F700A59484006B6B6B00DEDED60073EFFF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000F7940000B5521000B5520000DE7B0000CE6B0000BD7B
      52000000000000000000000000000000000000000000C6734200CE630000B54A
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD6009CFFFF0073DEF70029ADD60018A5C60018A5C60018A5
      C600ADDEEF008CF7FF0084EFFF0084EFFF0073DEF70073DEF70018A5C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0084FFFF00BDBDBD004239390084E7F70084E7
      F70084E7F70084E7F70084E7F70084E7F7006B636300C6C6C600A5F7FF0039AD
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE6B0800FF9C0800CE84420000000000B5520000E7840000CE6B
      0000BD63310000000000000000000000000000000000B54A0000CE630000B552
      1000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD6009CFFFF0094F7FF0073DEF70073DEF70073DEF7006BDE
      F70029ADD600ADDEEF0084EFFF0084EFFF0084EFFF0094EFFF0031A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE008CFFFF00A5A5A500C6B5940073CEEF0084E7
      F70084E7F70084E7F70084E7F70084E7F7009C8C730073737300299CCE00189C
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE732100FFAD3100CE844A000000000000000000C6631000E784
      0000E77B0000BD520000C67B5200C68C7300B5521000C6630000C6630000C684
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0073DE
      F70073DEF70029ADD60018A5C60029A5D60029A5D60029A5D60018A5C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000189CCE0084E7F7009C9C9C00D6BDA500FFE7D60073CE
      EF0073CEEF0073CEEF0084E7F70084E7F700AD9C8C0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE7B3900FFBD6300C67B5200000000000000000000000000B55A
      2100E77B0000E7840000DE7B0000D6730000CE6B0000C6630000AD4A10000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029ADD600C6FFFF0094FFFF009CFFFF00D6FFFF00D6FFFF008CEF
      FF0094EFFF0073DEF70073DEF70018ADDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000189CCE00B5B5AD00C6BDA500FFD6B500FFDE
      C600FFF7DE00FFF7DE0073CEEF0073CEEF00A5947B0084848C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE947B00C6845A00000000000000000000000000000000000000
      0000CE9C8400C6631000CE6B0000CE6B0000BD5A0000BD6B4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021ADD6009CDEEF00C6FFFF00C6FFFF009CDEEF0018ADD60018A5
      C60018A5C60018A5C60018A5C60018A5CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00A59C8C00FFD6AD00FFE7
      D600F7FFFF00FFFFF700FFDED600FFD6B50094947B00A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031B5DE0029ADD60018A5C60018A5C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00BDB59400F7D6
      FD00FFFFE700FFF7DE00EFD6A500CEBDA500BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500B5B5
      A500EFD6A500E7CE9C00CEC6B500A5A59C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
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
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
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
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
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
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000084424200844242008442
      4200844242008442420084424200844242008442420084424200844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000422100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C6630000844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042210000A52100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000C6840000C684
      0000C6840000C6840000C6840000C6840000C68400008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000C6840000F7FF
      FF00C6A50000844242008442420084424200A5A5A5008442420000FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000A5E70000A5E70000A5
      E70000A5E70000A5E7000042210000A5210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6A5000084424200C6C6C600A5A5A5008442420000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E70084E7E7000042210000A5210000A5210000A5210000A5210000A5210000A5
      2100004221000000000000A5E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600A5A5A50084424200C6C6C60000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E7000042210000A5210000A5210000A521000042210000A5210000A5210000A5
      21000042210084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF00F7FFFF00C6C6C600A5A5A50084424200C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000A5E700000000000042
      210000A5210000A5210000A521000042210000000000000000000042210000A5
      210000A521000042210084E7E70084E7E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF0000FFFF0000FFFF00C663
      0000C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000000000000042210000A5
      210000A52100004221000042210084E7E70084E7E70084E7E7000042210000A5
      210000A521000042210084E7E70084E7E70084E7E70000A5E70000A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF00C684630000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000042210000A5210000A5
      21000042210084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A521000042210084E7E70084E7E70084E7E70084E7E70000A5
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF008442420084424200A5A5A5008442420000FFFF00C684630000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      210000632100C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000422100004221000042
      21000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A5210000422100000000000000000084E7E70084E7E70084E7
      E70000A5E70000A5E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00C6A50000C6A5000084424200C6C6C600A5A5A5008442420000FFFF00F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00006321000063
      2100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000A5E70000A5E70084E7E70084E7E70084E7E70084E7E70084E7
      E7000042210000A5210000A521000042210084E7E7000000000084E7E70084E7
      E70084E7E70000A5E70000A5E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000063
      2100006321000063210000632100C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042210000A5210000A52100004221000000000000000000000000000000
      000084E7E70084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000063210000632100006321000063210000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000042210000A5210000A5210000422100A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844242008442
      4200844242008442420084424200844242008442420084424200F7CEA500F7CE
      A50000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000632100006321000063210000E7E700C6C6C60000E7
      E70000E7E70000632100006321000063210000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF000042210000A5210000A5210000422100F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      00000000000000000000000000000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C663000084424200F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000632100006321000063210000632100C6C6C60000FF
      FF0000632100006321000063210000632100C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5000042210000A5210000A5210000422100A5A5A5000000
      0000FFFFFF000000000000A5E70084E7E7000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000632100006321000063
      210000632100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042210000A5210000A5210000422100000000000000
      00000000000042E7E70042E7E70000A5E7000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF000063210000632100006321000063
      2100006321000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A521000042210084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000422100004221000042210042E7
      E70042E7E70042E7E70042E7E70042E7E70000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5E70000A5
      E70042E7E70042E7E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A5E70000A5E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E700000000000031FF000031FF000031
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063210000632100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000C6210000C62100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000E7630000E7630000C621000063
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF000063210000E7630000E7630000E7630000E7630000C6
      210000632100C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000063210000E7630000C6210000C6210000C6210000E7630000E7
      630000C6210000632100C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000063210000E7630000E7630000E76300006321000063210000E7630000E7
      630000C6210000C621000063210000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C60000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000632100C6C6C600C6C6C6000063210000E7
      630000E7630000C6210000C62100006321000063210000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF000063
      210000E7630000C6210000C621000063210000FFFF0000FFFF00C6C6C6000063
      210000E7630000E7630000E7630000C6210000C621000063210000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF00000000E7
      E70000E7E70000000000000000000000000000000000C6C6C6000063210000E7
      630000E7630000E7630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000E7630000E7630000C621000063210000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FF000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00000000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF000063210000E7
      630000E763000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF000063210000E7630000E7630000E7630000E7630000C621000063
      210000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF000042210000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6
      C60000E7E70000E7E70000E7E70000000000000000000063210000E7630000E7
      630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000632100C6C6C60000E7630000E7630000E7630000C6
      21000063210000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF000000000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF000063210000E7
      63000063210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000E7630000E7630000E7
      630000C621000063210000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C6000063
      2100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E7000063210000E7630000E7
      630000E7630000C62100006321000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100008421000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E7000063210000E7
      630000E7630000E7630000632100000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700FF000000FF00
      0000FF000000C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E7000063
      210000E7630000E7630000632100000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000422100008421000042
      210000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      0000000000000000000000FFFF0000000000C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000063210000E763000063210000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E70000632100006321000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF0000422100008421000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000422100004221000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00D684F90000000000000000003552A100
      0000000000000000002904000000000000000000008619000000000000000000
      0018320000000000000000000001C40000000000000000000001080000000000
      0000000000001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF8001FFF
      FFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF
      F0000FFFF8FFFFFFFFFC3FFFF0000FFFF87FF8FFFFFC00EFF0000FFFFC3FF807
      FFFC004FF0000FFFFE1FF800FFFC000FF0000FF8031FF8007FFC000FF0000FF8
      030FF8007FFC000FF0000FF8078FF8003FFC001FF0000FF81F8FF8003FFC000F
      F0000FF80F8FF8001FFC000FF8001FF8878FF8001FFC000FFC7E3FF8C00FF800
      1FFC003FFC7E3FF8E01FF800FFFE003FFC7E3FF9F03FF800FFFF003FFC7E3FFF
      FFFFFC3FFFFF807FFC3C3FFFFFFFFFFFFFFFC0FFFC003FFFFFFFFFFFFFFFFFFF
      FE007FFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFFF
      FFFFFF9FFFFFFFF9801FFFFFFFFFFF1FFFFFFFF1C000FF8000FFFE0FFFC7FFE3
      C0007F80007F8007FFC3FF87C0003F80003F8001FFC1FF0FC0001F80001F8000
      FFE0FE1FC0000F80000F80003FF07C3FC0000780000780001FFC307FC0000380
      000380000FFE00FFC00001800001800003FF01FFC00001800001F80001FF83FF
      C00001800001E00000FF01FFC00001800001C00000FE00FFC00001800001C000
      00FC187F800001C00001C00000F83C3FE00001E00001E00000F07F1FF00001F0
      0001FFFE00E0FF8FF80001F80001FFFE00C1FFEFFC0001FC0001FFFFC083FFFF
      FE0001FE0001FFFFF087FFFFFF0001FF0001FFFFFC8FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFF83FFFF3FFFFFFFFFFF80FFFE
      00FFFE1FFFFFFFFFFF007FFC007FFE0FFFFFFFFF80003F80007F8000FF8000FF
      80003F80003F80007F80007F80003F80003F80003F80003F80001F80001F8000
      1F80001F80000F80000F80000F80000F80000780000780000780000780000380
      0003800003800003800001800001800001800001800001800001800001800001
      8000018000018000018000018000018000018000018000018000018000018000
      01800001C00001C00001C00001C00001E00001E00001E00001E00001F00001F0
      0001F00001F00001F80001F80001F80001F80001FC0001FC0001FC0001FC0001
      FE0001FE0001FE0001FE0001FF0001FF0001FF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
