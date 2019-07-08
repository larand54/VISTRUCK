object fLoadEntrySSP: TfLoadEntrySSP
  Left = 247
  Top = 145
  Caption = 'LAST (SSP)'
  ClientHeight = 786
  ClientWidth = 1237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1237
    Height = 786
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object dxPageControl1: TcxPageControl
      Left = 0
      Top = 82
      Width = 1237
      Height = 231
      Align = alTop
      Constraints.MinHeight = 198
      TabOrder = 0
      Visible = False
      Properties.ActivePage = tsLoadData
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.SkinName = ''
      ClientRectBottom = 227
      ClientRectLeft = 4
      ClientRectRight = 1233
      ClientRectTop = 24
      object tsLoadData: TcxTabSheet
        Caption = 'Leveranshuvud'
        object pLoadHead: TPanel
          Left = 0
          Top = 0
          Width = 1229
          Height = 74
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object detLoaded: TcxDBDateEdit
            Left = 80
            Top = 26
            DataBinding.DataField = 'LoadedDate'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.Kind = ckDateTime
            Style.LookAndFeel.Kind = lfFlat
            Style.StyleController = cxEditStyleControllerEditControls
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 0
            Width = 145
          end
          object imgcbStatus: TcxDBImageComboBox
            Left = 80
            Top = 50
            DataBinding.DataField = 'SenderLoadStatus'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            Enabled = False
            ParentFont = False
            Properties.Images = images1616
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = 'Prelimin'#228'r'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Problem last'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = 'Avslutad'
                ImageIndex = 2
                Value = 2
              end>
            Properties.ReadOnly = True
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 1
            Width = 145
          end
          object teLoadID: TcxDBTextEdit
            Left = 301
            Top = 2
            DataBinding.DataField = 'LoadID'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 2
            Width = 122
          end
          object teFS: TcxDBTextEdit
            Left = 301
            Top = 26
            DataBinding.DataField = 'FS'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 3
            Width = 122
          end
          object lcLocalShipper: TcxDBLookupComboBox
            Left = 619
            Top = 2
            DataBinding.DataField = 'LocalShippingCompanyNo'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.KeyFieldNames = 'ClientNo'
            Properties.ListColumns = <
              item
                FieldName = 'ClientName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmsContact.ds_LocalShipper
            Properties.MaxLength = 0
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 4
            Width = 145
          end
          object lcFrom: TcxDBLookupComboBox
            Left = 619
            Top = 26
            DataBinding.DataField = 'LocalLoadingLocation'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.KeyFieldNames = 'CityNo'
            Properties.ListColumns = <
              item
                FieldName = 'CityName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmsContact.dsrcCities
            Properties.MaxLength = 0
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 5
            Width = 145
          end
          object lcTo: TcxDBLookupComboBox
            Left = 619
            Top = 50
            DataBinding.DataField = 'LocalDestinationNo'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.KeyFieldNames = 'CityNo'
            Properties.ListColumns = <
              item
                FieldName = 'CityName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmsContact.dsrcCities
            Properties.MaxLength = 0
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 6
            Width = 145
          end
          object eLoadNo: TcxDBTextEdit
            Left = 80
            Top = 2
            DataBinding.DataField = 'LoadNo'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            Enabled = False
            ParentFont = False
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 7
            Width = 145
          end
          object cxLabel4: TcxLabel
            Left = 8
            Top = 6
            Caption = 'LastNr:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 30
            Caption = 'Utlastad:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel6: TcxLabel
            Left = 8
            Top = 54
            Caption = 'Status:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel7: TcxLabel
            Left = 237
            Top = 8
            Caption = 'Last ID:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel8: TcxLabel
            Left = 237
            Top = 30
            Caption = 'FS:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel9: TcxLabel
            Left = 483
            Top = 6
            Caption = 'Lokalfraktf'#246'rare:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel10: TcxLabel
            Left = 483
            Top = 30
            Caption = 'Fr'#229'n:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel11: TcxLabel
            Left = 483
            Top = 54
            Caption = 'Till:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object lcLIP: TcxDBLookupComboBox
            Left = 904
            Top = 26
            DataBinding.DataField = 'LIP'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'LIPNo'
            Properties.ListColumns = <
              item
                FieldName = 'LIPName'
              end
              item
                FieldName = 'PIPNAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 16
            Width = 137
          end
          object lcPIP: TcxDBLookupComboBox
            Left = 904
            Top = 2
            DataBinding.DataField = 'PIP'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'PIPNO'
            Properties.ListColumns = <
              item
                FieldName = 'PIPNAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.StyleController = cxEditStyleControllerEditControls
            TabOrder = 17
            Width = 137
          end
          object cxLabel1: TcxLabel
            Left = 770
            Top = 6
            Caption = 'Lagerst'#228'lle:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel2: TcxLabel
            Left = 770
            Top = 30
            Caption = 'Lagergrupp:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cbShowOriginalLO: TcxDBCheckBox
            Left = 770
            Top = 49
            Caption = 'Visa 0-LO rader'
            DataBinding.DataField = 'ShowOriginalLO'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnChange = cbShowOriginalLOPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 20
            Width = 239
          end
          object btTextPad: TcxButton
            Left = 429
            Top = 2
            Width = 54
            Height = 24
            Action = acTextPad
            TabOrder = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btTextPadFS: TcxButton
            Left = 429
            Top = 28
            Width = 54
            Height = 24
            Action = acTextPadFS
            TabOrder = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BitBtn1: TBitBtn
            Left = 1086
            Top = 0
            Width = 86
            Height = 20
            Hint = #197'terst'#228'ller de flyttbara panelerna'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = #197'terst'#228'll formul'#228'r'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnClick = BitBtn1Click
          end
        end
        object pgrdLO: TPanel
          Left = 0
          Top = 74
          Width = 1229
          Height = 65
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Constraints.MinHeight = 50
          TabOrder = 1
          object grdLO: TcxGrid
            Left = 1
            Top = 1
            Width = 1227
            Height = 63
            Align = alClient
            TabOrder = 0
            object grdLODBTableView1: TcxGridDBTableView
              PopupMenu = pmLONumber
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmLoadEntrySSP.ds_LSP
              DataController.KeyFieldNames = 'LoadNo;ShippingPlanNo'
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
              Styles.Content = cxStyleContent
              Styles.ContentEven = cxStyleContent
              Styles.ContentOdd = cxStyleContentOdd
              Styles.Header = cxStyleHeader
              object grdLODBTableView1LoadNo: TcxGridDBColumn
                DataBinding.FieldName = 'LoadNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1ShippingPlanNo: TcxGridDBColumn
                DataBinding.FieldName = 'ShippingPlanNo'
                Options.Filtering = False
                Width = 59
              end
              object grdLODBTableView1CUSTOMER: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTOMER'
                Options.Filtering = False
                Width = 114
              end
              object grdLODBTableView1SUPPLIER: TcxGridDBColumn
                DataBinding.FieldName = 'SUPPLIER'
                Options.Filtering = False
                Width = 100
              end
              object grdLODBTableView1LOC_CUST: TcxGridDBColumn
                DataBinding.FieldName = 'LOC_CUST'
                Options.Filtering = False
                Width = 100
              end
              object grdLODBTableView1SHIPPER: TcxGridDBColumn
                DataBinding.FieldName = 'SHIPPER'
                Options.Filtering = False
                Width = 100
              end
              object grdLODBTableView1READYDATE: TcxGridDBColumn
                DataBinding.FieldName = 'READYDATE'
                Options.Filtering = False
                Width = 104
              end
              object grdLODBTableView1VESSEL: TcxGridDBColumn
                DataBinding.FieldName = 'VESSEL'
                Options.Filtering = False
                Width = 100
              end
              object grdLODBTableView1ETD: TcxGridDBColumn
                DataBinding.FieldName = 'ETD'
                Options.Filtering = False
                Width = 70
              end
              object grdLODBTableView1ETA: TcxGridDBColumn
                DataBinding.FieldName = 'ETA'
                Options.Filtering = False
                Width = 70
              end
              object grdLODBTableView1SHIPPER_REF: TcxGridDBColumn
                DataBinding.FieldName = 'SHIPPER_REF'
                Options.Filtering = False
                Width = 70
              end
              object grdLODBTableView1SHIPPERID: TcxGridDBColumn
                DataBinding.FieldName = 'SHIPPERID'
                Options.Filtering = False
              end
              object grdLODBTableView1SHIPPERS_SHIPDATE: TcxGridDBColumn
                DataBinding.FieldName = 'SHIPPERS_SHIPDATE'
                Visible = False
                Options.Filtering = False
                Width = 70
              end
              object grdLODBTableView1SHIPPERS_SHIPTIME: TcxGridDBColumn
                DataBinding.FieldName = 'SHIPPERS_SHIPTIME'
                Visible = False
                Options.Filtering = False
                Width = 70
              end
              object grdLODBTableView1ORDERNO: TcxGridDBColumn
                DataBinding.FieldName = 'ORDERNO'
                Visible = False
                Options.Filtering = False
              end
              object grdLODBTableView1ORDERTYPE: TcxGridDBColumn
                Caption = 'Kontrakttyp'
                DataBinding.FieldName = 'ORDERTYPE'
                Visible = False
                Options.Filtering = False
              end
              object grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn
                DataBinding.FieldName = 'LOADING_LOCATION'
                Visible = False
                Options.Filtering = False
                Width = 60
              end
              object grdLODBTableView1SHIP_TO: TcxGridDBColumn
                DataBinding.FieldName = 'SHIP_TO'
                Visible = False
                Options.Filtering = False
                Width = 60
              end
              object grdLODBTableView1SupplierNo: TcxGridDBColumn
                DataBinding.FieldName = 'SupplierNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
                Width = 87
              end
              object grdLODBTableView1CreatedUser: TcxGridDBColumn
                DataBinding.FieldName = 'CreatedUser'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1ModifiedUser: TcxGridDBColumn
                DataBinding.FieldName = 'ModifiedUser'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1DateCreated: TcxGridDBColumn
                DataBinding.FieldName = 'DateCreated'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
                Width = 84
              end
              object grdLODBTableView1CustomerNo: TcxGridDBColumn
                DataBinding.FieldName = 'CustomerNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1ObjectType: TcxGridDBColumn
                DataBinding.FieldName = 'ObjectType'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1Avrop_CustomerNo: TcxGridDBColumn
                DataBinding.FieldName = 'Avrop_CustomerNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1LoadingLocationNo: TcxGridDBColumn
                DataBinding.FieldName = 'LoadingLocationNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn
                DataBinding.FieldName = 'ShipToInvPointNo'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
              object grdLODBTableView1Shipping: TcxGridDBColumn
                DataBinding.FieldName = 'Shipping'
                Visible = False
                Options.Filtering = False
                VisibleForCustomization = False
              end
            end
            object grdLOLevel1: TcxGridLevel
              GridView = grdLODBTableView1
            end
          end
        end
        object pgrdAddress: TPanel
          Left = 0
          Top = 139
          Width = 1229
          Height = 64
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alBottom
          TabOrder = 2
          object grdAddress: TcxGrid
            Left = 1
            Top = 1
            Width = 1227
            Height = 62
            Align = alClient
            TabOrder = 0
            object grdAddressDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmsContact.dsrcAddressAndReference
              DataController.KeyFieldNames = 'Address'
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
              Styles.Content = cxStyleContent
              Styles.ContentEven = cxStyleContent
              Styles.ContentOdd = cxStyleContentOdd
              Styles.Header = cxStyleHeader
              object grdAddressDBTableView1Address: TcxGridDBColumn
                DataBinding.FieldName = 'Address'
                Options.Filtering = False
              end
              object grdAddressDBTableView1Destination: TcxGridDBColumn
                DataBinding.FieldName = 'Destination'
                Options.Filtering = False
              end
              object grdAddressDBTableView1Reference: TcxGridDBColumn
                DataBinding.FieldName = 'Reference'
                Options.Filtering = False
              end
            end
            object grdAddressLevel1: TcxGridLevel
              GridView = grdAddressDBTableView1
            end
          end
        end
      end
      object tsLoadNote: TcxTabSheet
        Caption = 'Notering'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object meInternalNote: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'InternalNote'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          TabOrder = 0
          Height = 203
          Width = 1229
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1237
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1144
        Height = 55
        Align = alClient
        TabOrder = 0
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 1142
          Height = 45
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel6: TPanel
        Left = 1144
        Top = 0
        Width = 28
        Height = 55
        Align = alRight
        TabOrder = 1
        object Edit1: TEdit
          Left = 8
          Top = 8
          Width = 1
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
      end
      object Panel7: TPanel
        Left = 1172
        Top = 0
        Width = 65
        Height = 55
        Align = alRight
        TabOrder = 2
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 63
          Height = 45
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
    end
    object PanelNote: TPanel
      Left = 0
      Top = 55
      Width = 1237
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      TabOrder = 2
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 1
        Top = 1
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        DataBinding.DataField = 'ShortNote'
        DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 1235
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 313
      Width = 1237
      Height = 473
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel8'
      TabOrder = 3
      object Splitter1: TSplitter
        Left = 0
        Top = 152
        Width = 1237
        Height = 4
        Cursor = crVSplit
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        Color = clYellow
        ParentColor = False
      end
      object PanelPackages: TPanel
        Left = 0
        Top = 156
        Width = 1237
        Height = 317
        Align = alBottom
        BevelOuter = bvNone
        Constraints.MaxHeight = 406
        Constraints.MinHeight = 102
        TabOrder = 0
        OnResize = PanelPackagesResize
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1237
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object mePackageNo: TcxMaskEdit
            Left = 105
            Top = 5
            ParentFont = False
            Properties.ReadOnly = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -16
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyDown = mePackageNoKeyDown
            Width = 217
          end
          object cxLabel3: TcxLabel
            Left = 2
            Top = 11
            Caption = 'Ange paketnr:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -15
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxButton1: TcxButton
            Left = 328
            Top = 2
            Width = 97
            Height = 35
            Action = acRaderaPaket
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cxButton2: TcxButton
            Left = 432
            Top = 2
            Width = 97
            Height = 35
            Action = acPickPkgNos
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cxButton3: TcxButton
            Left = 535
            Top = 2
            Width = 130
            Height = 35
            Action = acKopplaPaketMotLOManuellt
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object cbKopplaEjMotDublett: TcxCheckBox
            Left = 935
            Top = 10
            Caption = 'Koppla ej om dublett'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Color = clMaroon
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 132
          end
          object btNumPad: TcxButton
            Left = 1160
            Top = 0
            Width = 77
            Height = 37
            Align = alRight
            Action = acNumPad
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cxButton4: TcxButton
            Left = 1173
            Top = 4
            Width = 155
            Height = 31
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Action = acSetPositionInAllPkgs
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cxBtnChgTreatmentInfo: TcxButton
            Left = 1072
            Top = 1
            Width = 97
            Height = 35
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Action = acChgRef_and_Info
            TabOrder = 8
            WordWrap = True
          end
          object cxbtnRegBulkDelivery: TcxButton
            Left = 671
            Top = 2
            Width = 81
            Height = 35
            Action = acRegBulkDelivery
            TabOrder = 9
            WordWrap = True
          end
          object cxbtnScanArticle: TcxButton
            Left = 764
            Top = 2
            Width = 75
            Height = 35
            Caption = 'Skanna Artikel'
            Colors.Normal = clScrollBar
            Colors.NormalText = clBlack
            Colors.Pressed = clRed
            Colors.PressedText = clBtnHighlight
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2007Green'
            OptionsImage.Images = images1616
            OptionsImage.NumGlyphs = 2
            SpeedButtonOptions.GroupIndex = 576734370
            SpeedButtonOptions.AllowAllUp = True
            TabOrder = 10
            WordWrap = True
            OnClick = cxbtnScanArticleClick
          end
          object cxbtnCreatePalletPkg: TcxButton
            Left = 852
            Top = 2
            Width = 75
            Height = 35
            Caption = 'Skapa pallpaket'
            Colors.Normal = clScrollBar
            Colors.NormalText = clBlack
            Colors.Pressed = clRed
            Colors.PressedText = clBtnHighlight
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Seven'
            OptionsImage.Images = images1616
            OptionsImage.NumGlyphs = 2
            SpeedButtonOptions.GroupIndex = 576734370
            SpeedButtonOptions.AllowAllUp = True
            TabOrder = 11
            WordWrap = True
            OnClick = cxbtnCreatePalletPkgClick
          end
        end
        object grdPkgs: TcxGrid
          Left = 0
          Top = 37
          Width = 1237
          Height = 280
          Align = alClient
          PopupMenu = pmPkgs
          TabOrder = 1
          object grdPkgsDBBandedTableView1: TcxGridDBBandedTableView
            OnKeyDown = grdPkgsDBBandedTableView1KeyDown
            Navigator.Buttons.CustomButtons = <>
            OnEditing = grdPkgsDBBandedTableView1Editing
            DataController.DataSource = dmLoadEntrySSP.ds_LoadPackages2
            DataController.KeyFieldNames = 'LoadNo;LoadDetailNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '######'
                Kind = skCount
                FieldName = 'PACKAGENO'
                Column = grdPkgsDBBandedTableView1PACKAGENO
              end
              item
                Format = '#,###,###.000'
                Kind = skSum
                FieldName = 'M3_NET'
                Column = grdPkgsDBBandedTableView1M3_NET
              end
              item
                Format = '#,###,###.000'
                Kind = skSum
                FieldName = 'KVM'
                Column = grdPkgsDBBandedTableView1KVM
              end
              item
                Format = '#,###,###.000'
                Kind = skSum
                FieldName = 'M3_NOM'
                Column = grdPkgsDBBandedTableView1M3_NOM
              end
              item
                Format = '######'
                Kind = skSum
                FieldName = 'PCS'
                Column = grdPkgsDBBandedTableView1PCS
              end
              item
                Format = '#,###,###.000'
                Kind = skSum
                FieldName = 'MFBM'
                Column = grdPkgsDBBandedTableView1MFBM
              end
              item
                Format = '#,###,###.000'
                Kind = skSum
                FieldName = 'LOPM'
                Column = grdPkgsDBBandedTableView1LOPM
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsCustomize.ColumnVertSizing = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.HideSelection = True
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.Content = cxStyleContent
            Styles.ContentEven = cxStyleContent
            Styles.ContentOdd = cxStyleContentOdd
            Styles.OnGetContentStyle = grdPkgsDBBandedTableView1StylesGetContentStyle
            Styles.Footer = cxStyleHeader
            Styles.Header = cxStyleHeader
            Bands = <
              item
                Caption = 'OTHER'
              end>
            object grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PACKAGENO'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SupplierCode'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ShippingPlanNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRODUCT'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 219
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PackageOK'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 0
              Properties.ValueUnchecked = 1
              Options.Filtering = False
              Width = 41
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProblemPackageLog'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 33
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn
              DataBinding.FieldName = 'M3_NET'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PCS'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 21
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'M3_NOM'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 23
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MFBM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 59
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn
              Caption = 'm2'
              DataBinding.FieldName = 'KVM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn
              Caption = 'Lpm'
              DataBinding.FieldName = 'LOPM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PCS_PER_LENGTH'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 133
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DefaultCustShipObjectNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 49
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProductLengthNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ActualThicknessMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ActualWidthMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SurfacingNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SpeciesNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MainGradeNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NoOfLengths'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OverrideMatch'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Filtering = False
              Width = 20
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DateCreated'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProductNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LoadNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn
              Caption = 'Radnr'
              DataBinding.FieldName = 'LoadDetailNo'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 33
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NoOfPackages'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PACKAGETYPENO'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CreatedUser'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ModifiedUser'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1LIPNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LIPNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Pkg_State'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Pkg_Function'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Changed'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Defsspno'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 51
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OverrideRL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn
              Caption = 'IK'
              DataBinding.FieldName = 'InvNr'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Visible = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Paketstorlek'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 42
              Position.BandIndex = 0
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REFERENCE'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1INFO1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INFO1'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 119
              Position.BandIndex = 0
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1INFO2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INFO2'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 43
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1Certfiering: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Certfiering'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 36
              Position.BandIndex = 0
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object grdPkgsDBBandedTableView1PositionName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PositionName'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
          end
          object grdPkgsLevel1: TcxGridLevel
            GridView = grdPkgsDBBandedTableView1
          end
        end
        object TouchKeyboard1: TTouchKeyboard
          Left = 197
          Top = 66
          Width = 650
          Height = 200
          GradientEnd = clSilver
          GradientStart = clGray
          Layout = 'Standard'
          Visible = False
        end
        object TouchKeyboard2: TTouchKeyboard
          Left = 840
          Top = 43
          Width = 250
          Height = 230
          GradientEnd = clSilver
          GradientStart = clGray
          Layout = 'NumPad'
          Visible = False
        end
      end
      object PanelLORows: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        Constraints.MinHeight = 81
        TabOrder = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1237
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Caption = 'LASTORDERRADER'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object grdLORows: TcxGrid
          Left = 0
          Top = 16
          Width = 1237
          Height = 136
          Align = alClient
          PopupMenu = ppmenuLO_Lines
          TabOrder = 1
          object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = grdLORowsDBBandedTableView1CellClick
            DataController.DataSource = dmLoadEntrySSP.dsLORows
            DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '######'
                Kind = skSum
                FieldName = 'LoadedPkgs'
                Column = grdLORowsDBBandedTableView1LoadedPkgs
              end
              item
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.DataRowSizing = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.HideSelection = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.OnGetContentStyle = grdLORowsDBBandedTableView1StylesGetContentStyle
            Styles.Header = cxStyleHeader
            Bands = <
              item
                Caption = 'MATCH'
                Width = 52
              end
              item
                Width = 897
              end>
            object grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MATCH'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Properties.OnChange = grdLORowsDBBandedTableView1MATCHPropertiesChange
              Options.Filtering = False
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ShippingPlanNo'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 38
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PKGCODE'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 71
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INTERNPRODDESC'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 188
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
              Caption = 'L'#228'ngdbesk.'
              DataBinding.FieldName = 'LENGTHDESC'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 73
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Internnotering: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Internnotering'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 132
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOOFUNITS'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 68
              Position.BandIndex = 1
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VOLUNIT'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRICE'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRICEUNIT'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 84
              Position.BandIndex = 1
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
              Caption = 'Adress/kundreferens'
              DataBinding.FieldName = 'REFERENCE'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 83
              Position.BandIndex = 1
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LEV_PERIOD_START'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 44
              Position.BandIndex = 1
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LEV_PERIOD_END'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 43
              Position.BandIndex = 1
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ORDERNO'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 86
              Position.BandIndex = 1
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
              Caption = 'Produktm'#228'rkning'
              DataBinding.FieldName = 'KR_Ref'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              Width = 49
              Position.BandIndex = 1
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOM_THICK'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOM_WIDTH'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRODUCTGROUPNO'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PCSPERPKG'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 61
              Position.BandIndex = 1
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProductLengthNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LoadNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SupplierShipPlanObjectNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 67
              Position.BandIndex = 1
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACT_THICK'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACT_WIDTH'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
              Caption = 'Akt.l'#228'ngd'
              DataBinding.FieldName = 'ACT_LENGTH'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 63
              Position.BandIndex = 1
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LoadingLocationNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INTERNPRODDESC'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 137
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ShipToInvPointNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProductNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MIN_LENGTH'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MAX_LENGTH'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CustomerNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Width = 67
              Position.BandIndex = 1
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ProductLengthGroupNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INCH_THICK'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INVCH_WIDTH'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SurfacingNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SpeciesNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'GradeNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PackageTypeNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 1
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Prislista'
              Visible = False
              Options.Filtering = False
              Width = 59
              Position.BandIndex = 1
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
              Caption = 'Till'#229't alla l'#228'ngder'
              DataBinding.FieldName = 'OverrideRL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 49
              Position.BandIndex = 1
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CERTI'
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tr'#228'slag'
              Visible = False
              Width = 144
              Position.BandIndex = 1
              Position.ColIndex = 43
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LoadedPkgs'
              Width = 104
              Position.BandIndex = 1
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PkgDiff: TcxGridDBBandedColumn
              Caption = 'Diff'
              DataBinding.FieldName = 'PkgDiff'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle
              Width = 72
              Position.BandIndex = 1
              Position.ColIndex = 45
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Paketstorlek'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 96
              Position.BandIndex = 1
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
          end
          object grdLORowsLevel1: TcxGridLevel
            GridView = grdLORowsDBBandedTableView1
          end
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Pkgs'
      'LONumber'
      'LOLines'
      'FastReport')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <
      item
        PopupMenu = pmPkgs
      end
      item
        PopupMenu = pmLONumber
      end
      item
        PopupMenu = ppmenuLO_Lines
      end>
    UseSystemFont = False
    Left = 928
    Top = 440
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
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 253
      FloatTop = 147
      FloatClientWidth = 161
      FloatClientHeight = 308
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSaveLoad'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'lbDeleteLoad'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'lbStartBarCodeReading'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoSerie'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
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
          ItemName = 'lbClose'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbSaveLoad: TdxBarLargeButton
      Action = acSaveLoad
      Category = 0
    end
    object lbClose: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbReValidateAllPkgs: TdxBarLargeButton
      Action = acValidateAllPkgs
      Category = 0
    end
    object lbPackageEntry: TdxBarLargeButton
      Action = acPkgEntry
      Category = 0
    end
    object lbDeleteLoad: TdxBarLargeButton
      Action = acDeleteLoad
      Category = 0
    end
    object siPrint: TdxBarSubItem
      Caption = 'Skriv ut'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbFS'
        end
        item
          Visible = True
          ItemName = 'lbLastOrderAllaVerk'
        end
        item
          Visible = True
          ItemName = 'lbLastOrderErtVerk'
        end
        item
          Visible = True
          ItemName = 'lbSpecAllaLasterLO'
        end>
    end
    object lbFS: TdxBarLargeButton
      Action = acPrintFS
      Category = 0
    end
    object lbLastOrderAllaVerk: TdxBarLargeButton
      Action = acLOAllaVerk
      Category = 0
    end
    object lbLastOrderErtVerk: TdxBarLargeButton
      Action = acPrintLOErtVerk
      Category = 0
    end
    object lbSpecAllaLasterLO: TdxBarLargeButton
      Action = acPrintSpecAllaLasterLO
      Category = 0
    end
    object lbPkgNoSerie: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object bbTally_Ver2: TdxBarButton
      Caption = 'F'#246'ljesedel Ver2'
      Category = 0
      Hint = 'F'#246'ljesedel Ver2'
      Visible = ivAlways
      OnClick = bbTally_Ver2Click
    end
    object lbStartBarCodeReading: TdxBarLargeButton
      Caption = 'Skriv ut'
      Category = 0
      Hint = 'Skriv ut'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmReport
      LargeImageIndex = 4
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acImportPackages
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acCreateInternLO
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSaveAndOK
      Caption = 'Avsluta && Spara F10'
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acPrintFS
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acPrintFSMisMatch
      Category = 0
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000424242000084
        8400848484008C8C8C00426BB500C6C6C60000E7F70000EFF700FF00FF00006B
        FF000084FF0000ADFF0010B5FF005ABDFF0000CEFF0000DEFF0000E7FF0000EF
        FF0029EFFF0000F7FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF006BFF
        FF0073FFFF00C6FFFF00E7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080808080808
        0800000000080808080808080808080803051D02020008080808080808080808
        0300000000000808080808080808080803051D0202000808080808080B080808
        0302020202000808080B08080809080A0114140E140104080908080808080B0A
        140610100614040B0808080B08080D1410111110100F140408080808090D1B12
        1113141410100F1404090808080D1B19171414141411100E04080808090D1B1C
        18151414141310140409080B080D1B1C191814141413140E0408080808080D1B
        1C1A171414140E04080808080808090D1B1C1C14140E040908080808090B0808
        0D0D0C0C0C0C08080B0908080808080808080808080808080808}
    end
    object dxBarButton4: TdxBarButton
      Action = acMailaFS
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSetStatusPrelandSave
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Verktyg'
      Category = 0
      Hint = 'Verktyg'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmMenuOptions
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acGetVPPackages
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acShowLoadHeader
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = acPrintCMR
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acPrintFSandCMR
      Category = 0
    end
    object dxBarSpinEditContent: TdxBarSpinEdit
      Caption = 'Font storlek'
      Category = 0
      Hint = 'Font storlek'
      Visible = ivAlways
      OnCurChange = dxBarSpinEditContentCurChange
    end
    object bePkgFont: TcxBarEditItem
      Caption = 'Font storlek'
      Category = 0
      Hint = 'Font storlek'
      Visible = ivAlways
      OnCurChange = bePkgFontCurChange
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      InternalEditValue = 0
    end
    object dxBarButton5: TdxBarButton
      Action = acPrintFSMisMatch
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = acPrintFS
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = acMailaFS
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = acPrintTO
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = acPrintTo_Manuell
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = acPrintLOErtVerk
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = acLOAllaVerk
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = acPrintCMR
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = acMailTreatmentCertificate
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = acTreatmentCerticate
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = acMailTO_Manuell
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxbrbtnRegBulkDelivery: TdxBarButton
      Action = acRegBulkDelivery
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = acShowPkgLogg
      Category = 0
    end
    object lbValidatePkg: TdxBarLargeButton
      Action = acValidatePkg
      Category = 1
    end
    object lbRemovePackage: TdxBarLargeButton
      Action = acInsertPkgToInventory
      Category = 1
    end
    object lbSetDefaultMatchAllPkg: TdxBarLargeButton
      Action = acSetDefaultMatchOnAllPkgs
      Category = 1
    end
    object lbDeletePkg: TdxBarLargeButton
      Action = acRemovePkgFromSystem
      Caption = 'Ta bort markerade paketet fr'#229'n systemet'
      Category = 1
    end
    object lbRemoveAllPkgs: TdxBarLargeButton
      Action = acInsertAllPkgsToInventory
      Category = 1
    end
    object lbDeleteALLPkgs: TdxBarLargeButton
      Action = acRemoveAllPkgsFromSystem
      Category = 1
    end
    object lbUndo: TdxBarLargeButton
      Action = acUndoPkgOperation
      Category = 1
    end
    object lbPkgInfo: TdxBarLargeButton
      Action = acPkgInfo
      Category = 1
    end
    object bbConnectPkgsToLO: TdxBarButton
      Action = acKopplaPaketMotLOManuellt
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Action = acSetPositionInSelectedPkgs
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acOpenLOForm
      Category = 2
    end
    object bbPickPkgNos: TdxBarButton
      Action = acPickPkgNos
      Category = 3
    end
    object bbAddPkgPerPkgCode: TdxBarButton
      Action = acAddPkgByPkgCode
      Category = 3
    end
    object bbRemovePkgsPerPkgCode: TdxBarButton
      Action = acTaBortPaketPerPaketKod
      Category = 3
    end
  end
  object pmPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbValidatePkg'
      end
      item
        Visible = True
        ItemName = 'lbReValidateAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbRemovePackage'
      end
      item
        Visible = True
        ItemName = 'lbRemoveAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbDeletePkg'
      end
      item
        Visible = True
        ItemName = 'lbDeleteALLPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbUndo'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbSetDefaultMatchAllPkg'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbPkgInfo'
      end
      item
        Visible = True
        ItemName = 'bePkgFont'
      end>
    UseOwnFont = True
    OnPopup = pmPkgsPopup
    Left = 288
    Top = 392
  end
  object pmLONumber: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 816
    Top = 336
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 840
    Top = 440
    Bitmap = {
      494C01010B000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00A59C9C00AD9C9C00ADA59C00AD9C
      9400A594940094848400736B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000104A1000104A1000104A
      1000104A10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000ADAD
      FD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A1000108C180039CE390039CE
      390063AD6300428C420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C1800108C180039CE390039CE390039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000108C180039CE390042CE420042CE420039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      00000000000000000000108C180039CE390073DE730063DE63005AD65A004AD6
      4A0042C6420063AD6300108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      000000000000428C4200108C180073DE730073DE730073DE730073DE730063DE
      63005AD65A0039CE3900108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000428C4200108C180073DE730073DE7B0073DE730073DE730039CE390073DE
      730073DE730073DE730039CE3900108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B0000000000000000000000000000000000108C
      1800428C420094F79C0094F79C0084EF8C0073DE730039CE3900108C180039CE
      390073DE730073DE730073DE7300108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000108C180073DE
      730094F79C0094F79C0094F79C0094F79C0039CE3900108C180000000000108C
      180073DE730073DE730073DE730073DE7300108C180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C940000000000000000000000000063AD630073DE
      730094F79C0094F79C0073DE7300108C1800428C42000000000000000000428C
      420039CE390073DE7B0084EF8C0073DE730039CE3900428C4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C0000000000000000000000000063AD630039CE
      390073DE730039CE3900108C1800000000000000000000000000000000000000
      0000108C180073DE730094F79C0094F79C0073DE730063AD6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C000000000000000000000000000000000063AD
      630063AD630063AD630000000000000000000000000000000000000000000000
      000000000000108C180094F79C0094F79C0094F79C0073DE7300108C18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063AD630094F79C0094F79C0094F79C0073DE7300428C
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063AD630094F79C0094F79C0084EF8C0039CE
      390063AD63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E7000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039CE390094F79C00A5F7A50094F7
      9C0039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE630000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039CE3900BDFFBD00BDFF
      BD0094F79C0039CE390063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE630000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039CE3900BDFF
      BD00BDFFBD0094F79C0063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039CE
      3900BDFFBD0073DE730063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
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
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C6000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C6000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C6000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE0000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
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
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
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
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFE00FFFFFFFF000000FFFFFFF8
      003FFFFFFF000000C00003F0001FFF87FF000000C00003E0000FFF03FF000000
      C00003C00007FE03FF000000C00003800003FE03FF000000C00003800003FC01
      FF000000C00003800001F801FF000000C00003000001F000FF000000C0000300
      0001E000FF000000C00003000001C0207F000000C00003000001C0603F000000
      C00003000001C1F03F000000C00003000001E3F81F000000C00003000001FFFC
      0F000000C00003000001FFFE07000000C00003000001FFFF03000000C0000380
      0003FFFF81000000C00003800003FFFFC1000000C00003C00007FFFFE1000000
      E00007E0000FFFFFF3000000FFFFFFF0001FFFFFFF000000FFFFFFF8003FFFFF
      FF000000FFFFFFFC007FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FFF9FFFFFFFFFFFFFC0007FFFFF1C00003FFFFFFF00001C7FFE3C00003C00003
      E00003C3FF87C00003800001800003C1FF0FC00003800001800003E0FE1FC000
      03800001800003F07C3FC00003800001800003FC307FC00003800001800003FE
      00FFC00003800001800003FF01FFC00003800001C00003FF83FFC00003800001
      E00007FF01FFC00003800001F8000FFE00FFC00003800001F8001FFC187FC000
      03800001FC007FF83C3FC00003800001FC00FFF07F1FC00003800001FC01FFE0
      FF8FC00003800001FC01FFC1FFEFC00003C00003FC01FF83FFFFC00003FFFFFF
      FC01FF87FFFFE00007FFFFFFF803FF8FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FF
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
  object images1616: TImageList
    Left = 128
    Top = 336
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B0073737300000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF00000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      FF000000FF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C9400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FFFFFF8FF0000E003FFFFF87F0000
      C001FCFFF07F00008001F87FF03F00008000F03FE03F00000000E01FE01F0000
      0000C01FE01F00000000C00FF30F00000000C207FF0F00000000E703FF870000
      0000FF83FF8700000001FFC7FFC300008001FFFFFFC700008003FFFFFFEF0000
      C007FFFFFFFF0000E00FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ppmenuLO_Lines: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbConnectPkgsToLO'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbAddPkgPerPkgCode'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbPickPkgNos'
      end
      item
        Visible = True
        ItemName = 'dxbrbtnRegBulkDelivery'
      end
      item
        Visible = True
        ItemName = 'dxBarSpinEditContent'
      end>
    UseOwnFont = True
    OnPopup = ppmenuLO_LinesPopup
    Left = 288
    Top = 336
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 384
    Top = 336
    object acValidatePkg: TAction
      Caption = 'Validera paket'
      OnExecute = acValidatePkgExecute
      OnUpdate = acValidatePkgUpdate
    end
    object acValidateAllPkgs: TAction
      Caption = 'Validera alla pkt'
      Hint = 'Validera alla paket'
      ImageIndex = 2
      OnExecute = acValidateAllPkgsExecute
      OnUpdate = acValidateAllPkgsUpdate
    end
    object acInsertPkgToInventory: TAction
      Caption = 'L'#228'gg markerade paket tillbaks till lager'
      OnExecute = acInsertPkgToInventoryExecute
      OnUpdate = acInsertPkgToInventoryUpdate
    end
    object acInsertAllPkgsToInventory: TAction
      Caption = 'L'#228'gg alla paket till lagret'
      OnExecute = acInsertAllPkgsToInventoryExecute
      OnUpdate = acInsertAllPkgsToInventoryUpdate
    end
    object acRemovePkgFromSystem: TAction
      Caption = 'Ta bort paketet fr'#229'n systemet'
      OnExecute = acRemovePkgFromSystemExecute
      OnUpdate = acRemovePkgFromSystemUpdate
    end
    object acRemoveAllPkgsFromSystem: TAction
      Caption = 'Ta bort alla paket fr'#229'n systemet'
      OnExecute = acRemoveAllPkgsFromSystemExecute
      OnUpdate = acRemoveAllPkgsFromSystemUpdate
    end
    object acUndoPkgOperation: TAction
      Caption = #197'ngra'
      OnExecute = acUndoPkgOperationExecute
      OnUpdate = acUndoPkgOperationUpdate
    end
    object acSetDefaultMatchOnAllPkgs: TAction
      Caption = 'S'#228'tt standard matchning p'#229' alla paket'
      OnExecute = acSetDefaultMatchOnAllPkgsExecute
      OnUpdate = acSetDefaultMatchOnAllPkgsUpdate
    end
    object acPkgInfo: TAction
      Caption = 'Paket information'
      OnExecute = acPkgInfoExecute
      OnUpdate = acPkgInfoUpdate
    end
    object acAddPkgByPkgCode: TAction
      Caption = 'L'#228'gg till paket per paketkod'
      OnExecute = acAddPkgByPkgCodeExecute
      OnUpdate = acAddPkgByPkgCodeUpdate
    end
    object acPickPkgNos: TAction
      Caption = 'Plocka paket'
      OnExecute = acPickPkgNosExecute
      OnUpdate = acPickPkgNosUpdate
    end
    object acSaveLoad: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSaveLoadExecute
      OnUpdate = acSaveLoadUpdate
    end
    object acPrintTallyUSNote: TAction
      Caption = 'F'#246'ljesedel USA'
      OnExecute = acPrintTallyUSNoteExecute
    end
    object acKopplaPaketMotLOManuellt: TAction
      Caption = 'Koppla markerade paket mot vald LO-rad'
      OnExecute = acKopplaPaketMotLOManuelltExecute
      OnUpdate = acKopplaPaketMotLOManuelltUpdate
    end
    object acDeleteLoad: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = acDeleteLoadExecute
      OnUpdate = acDeleteLoadUpdate
    end
    object acPrintFS: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel'
      ImageIndex = 4
      OnExecute = acPrintFSExecute
      OnUpdate = acPrintFSUpdate
    end
    object acLOAllaVerk: TAction
      Category = 'Print'
      Caption = 'LO alla verk'
      OnExecute = acLOAllaVerkExecute
      OnUpdate = acLOAllaVerkUpdate
    end
    object acPrintLOErtVerk: TAction
      Category = 'Print'
      Caption = 'LO ert verk'
      OnExecute = acPrintLOErtVerkExecute
      OnUpdate = acPrintLOErtVerkUpdate
    end
    object acPrintSpecAllaLasterLO: TAction
      Category = 'Print'
      Caption = 'Specification alla laster LO'
      OnExecute = acPrintSpecAllaLasterLOExecute
      OnUpdate = acPrintSpecAllaLasterLOUpdate
    end
    object acPkgEntry: TAction
      Caption = 'Registrera paket F9'
      Hint = #214'ppna paketinmatnings formul'#228'r'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = acPkgEntryExecute
      OnUpdate = acPkgEntryUpdate
    end
    object acStreckKodsinlasning: TAction
      Caption = 'L'#228's streckkod'
      Hint = 'Paketinmatning med streckkodsl'#228'sare'
      ImageIndex = 7
      OnExecute = acStreckKodsinlasningExecute
      OnUpdate = acStreckKodsinlasningUpdate
    end
    object acPktNrSerie: TAction
      Caption = 'Pktnrserie'
      Hint = 'H'#228'mta paket inom ett paketnr intervall'
      ImageIndex = 6
      OnExecute = acPktNrSerieExecute
      OnUpdate = acPktNrSerieUpdate
    end
    object acTaBortPaketPerPaketKod: TAction
      Caption = 'Ta bort paket per paketkod'
      OnExecute = acTaBortPaketPerPaketKodExecute
      OnUpdate = acTaBortPaketPerPaketKodUpdate
    end
    object acImportPackages: TAction
      Caption = 'Importera WoodX f'#246'ljesedel'
      Hint = 'Importera paket med woodx'
      ImageIndex = 2
      OnExecute = acImportPackagesExecute
      OnUpdate = acImportPackagesUpdate
    end
    object acCreateInternLO: TAction
      Caption = 'Automat generera lastorder'
      ImageIndex = 8
      OnExecute = acCreateInternLOExecute
      OnUpdate = acCreateInternLOUpdate
    end
    object acOpenLOForm: TAction
      Caption = #214'ppna LO'
      OnExecute = acOpenLOFormExecute
      OnUpdate = acOpenLOFormUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acSaveAndOK: TAction
      Caption = 'OK && Spara F10'
      ImageIndex = 10
      ShortCut = 121
      OnExecute = acSaveAndOKExecute
      OnUpdate = acSaveAndOKUpdate
    end
    object acPrintMeny: TAction
      Category = 'Print'
      Caption = 'Skriv ut F8'
      ImageIndex = 4
      OnExecute = acPrintMenyExecute
    end
    object acPrintFSMisMatch: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel (paket saknar koppling)'
      OnExecute = acPrintFSMisMatchExecute
    end
    object acDeleteNotCompletePkgs: TAction
      Caption = 'Ta bort paket'
      OnExecute = acDeleteNotCompletePkgsExecute
    end
    object acMailaFS: TAction
      Category = 'Print'
      Caption = 'Maila f'#246'ljesedel'
      OnExecute = acMailaFSExecute
    end
    object acSetStatusPrelandSave: TAction
      Caption = 'Prelimin'#228'r'
      Hint = 'S'#228'tt lasten till status prelimin'#228'r'
      ImageIndex = 9
      OnExecute = acSetStatusPrelandSaveExecute
      OnUpdate = acSetStatusPrelandSaveUpdate
    end
    object acGetVPPackages: TAction
      Caption = 'H'#228'mta paket f'#246'rbrukade av Vida Packaging'
      OnExecute = acGetVPPackagesExecute
      OnUpdate = acGetVPPackagesUpdate
    end
    object acShowLoadHeader: TAction
      Caption = 'Visa huvud F7'
      ShortCut = 118
      OnExecute = acShowLoadHeaderExecute
    end
    object acRaderaPaket: TAction
      Caption = 'Ta bort fr'#229'n last'
      OnExecute = acRaderaPaketExecute
      OnUpdate = acRaderaPaketUpdate
    end
    object acPrintCMR: TAction
      Category = 'Print'
      Caption = '   CMR    '
      ImageIndex = 4
      OnExecute = acPrintCMRExecute
    end
    object acPrintFSandCMR: TAction
      Caption = 'F'#246'ljesedel && CMR'
      ImageIndex = 4
      ShortCut = 119
      OnExecute = acPrintFSandCMRExecute
    end
    object acSetPositionInAllPkgs: TAction
      Caption = 'Ange Position f'#246'r alla paket'
      OnExecute = acSetPositionInAllPkgsExecute
      OnUpdate = acSetPositionInAllPkgsUpdate
    end
    object acSetPositionInSelectedPkgs: TAction
      Caption = 'Ange Position f'#246'r markerade paket'
      OnExecute = acSetPositionInSelectedPkgsExecute
      OnUpdate = acSetPositionInSelectedPkgsUpdate
    end
    object acPrintTO: TAction
      Category = 'Print'
      Caption = 'TO'
      OnExecute = acPrintTOExecute
    end
    object acPrintTo_Manuell: TAction
      Category = 'Print'
      Caption = 'TO Manuell'
      OnExecute = acPrintTo_ManuellExecute
    end
    object acTreatmentCerticate: TAction
      Category = 'Print'
      Caption = 'Behandlingscertifikat'
      OnExecute = acTreatmentCerticateExecute
    end
    object acMailTreatmentCertificate: TAction
      Category = 'Print'
      Caption = 'Maila Behandlingscertifikat'
      OnExecute = acMailTreatmentCertificateExecute
    end
    object acMailTO_Manuell: TAction
      Category = 'Print'
      Caption = 'Maila TO Manuell'
      OnExecute = acPrintTo_ManuellExecute
    end
    object acChgRef_and_Info: TAction
      Caption = #196'ndra Ref o Info f'#246'r markerade'
      OnExecute = acChgRef_and_InfoExecute
    end
    object acRegBulkDelivery: TAction
      Caption = 'Reg. BULK-leverans.'
      OnExecute = acRegBulkDeliveryExecute
      OnUpdate = acRegBulkDeliveryUpdate
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    SkinName = 'Silver'
    Left = 112
    Top = 674
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 289
    Top = 439
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
    object cxStyleclSkyBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleOrange: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 4227327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleOrange2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 7846911
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12895487
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleGreen2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11927477
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleContent2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbFS'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'lbLastOrderAllaVerk'
      end
      item
        Visible = True
        ItemName = 'lbLastOrderErtVerk'
      end
      item
        Visible = True
        ItemName = 'lbSpecAllaLasterLO'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = True
    Left = 889
    Top = 511
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 593
    Top = 335
    object Lggtillpaketperpaketkod1: TMenuItem
      Action = acAddPkgByPkgCode
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object AutoLO1: TMenuItem
      Action = acCreateInternLO
    end
    object abortlastF51: TMenuItem
      Action = acDeleteLoad
    end
    object Importpaket1: TMenuItem
      Action = acImportPackages
    end
    object Lggallapakettilllagret1: TMenuItem
      Action = acInsertAllPkgsToInventory
    end
    object Lggmarkeradepakettillbakstilllager1: TMenuItem
      Action = acInsertPkgToInventory
    end
    object KopplamarkeradepaketmotLOmanuellt1: TMenuItem
      Action = acKopplaPaketMotLOManuellt
    end
    object RegBULKleverans1: TMenuItem
      Action = acRegBulkDelivery
    end
    object Lastorderallaverk1: TMenuItem
      Action = acLOAllaVerk
    end
    object ppnaLO1: TMenuItem
      Action = acOpenLOForm
    end
    object Plockapaketnr1: TMenuItem
      Action = acPickPkgNos
    end
    object PktinmatF91: TMenuItem
      Action = acPkgEntry
    end
    object Paketinformation1: TMenuItem
      Action = acPkgInfo
    end
    object Pktnrserie1: TMenuItem
      Action = acPktNrSerie
    end
    object Fljesedel1: TMenuItem
      Action = acPrintFS
    end
    object Hyvelorder1: TMenuItem
      Caption = 'Hyvelorder'
      OnClick = acPrintHyvelOrderExecute
    end
    object Lastorderertverk1: TMenuItem
      Action = acPrintLOErtVerk
    end
    object SkrivutF81: TMenuItem
      Action = acPrintMeny
    end
    object SpecificationallalasterLO1: TMenuItem
      Action = acPrintSpecAllaLasterLO
    end
    object FljesedelUSA1: TMenuItem
      Action = acPrintTallyUSNote
    end
    object abortallapaketfrnsystemet1: TMenuItem
      Action = acRemoveAllPkgsFromSystem
    end
    object StatusOKSparaF101: TMenuItem
      Action = acSaveAndOK
    end
    object SparaF31: TMenuItem
      Action = acSaveLoad
    end
    object Sttstandardmatchningpallapaket1: TMenuItem
      Action = acSetDefaultMatchOnAllPkgs
    end
    object Streckkod1: TMenuItem
      Action = acStreckKodsinlasning
    end
    object abortpaketperpaketkod1: TMenuItem
      Action = acTaBortPaketPerPaketKod
    end
    object ngra1: TMenuItem
      Action = acUndoPkgOperation
    end
    object ngratabort2: TMenuItem
      Action = acValidateAllPkgs
    end
    object Validerapaket1: TMenuItem
      Action = acValidatePkg
    end
    object Visahuvud1: TMenuItem
      Action = acShowLoadHeader
    end
  end
  object pmMenuOptions: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbPackageEntry'
      end
      item
        Visible = True
        ItemName = 'lbReValidateAllPkgs'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarLargeButton7'
      end>
    UseOwnFont = True
    Left = 480
    Top = 338
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 208
    Top = 335
  end
  object cxEditStyleControllerFileldLabels: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
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
    Left = 128
    Top = 440
    PixelsPerInch = 96
  end
  object cxEditStyleControllerEditControls: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Style.IsFontAssigned = True
    StyleDisabled.Color = clBtnFace
    StyleDisabled.TextColor = clNavy
    Left = 128
    Top = 392
    PixelsPerInch = 96
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPkgs
    PopupMenus = <>
    Left = 600
    Top = 393
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdLORows
    PopupMenus = <>
    Left = 672
    Top = 409
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = grdLORows
    PopupMenus = <>
    Left = 512
    Top = 408
  end
  object siLangLinked_fLoadEntrySSP: TsiLangLinked
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
    Left = 744
    Top = 400
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006F006100640045006E007400720079005300
      5300500001004C00410053005400200028005300530050002900010001004C00
      4F0041004400200028005300530050002900010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004100430054005F005400480049004300
      4B0001004100430054005F0054004800490043004B0001000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004100430054005F00
      5700490044005400480001004100430054005F00570049004400540048000100
      0100010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041006300
      7400750061006C0054006800690063006B006E006500730073004D004D000100
      410063007400750061006C0054006800690063006B006E006500730073004D00
      4D0001000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      410063007400750061006C00570069006400740068004D004D00010041006300
      7400750061006C00570069006400740068004D004D0001000100010001000D00
      0A00670072006400410064006400720065007300730044004200540061006200
      6C00650056006900650077003100410064006400720065007300730001004100
      6400640072006500730073000100410064007200650073007300010041006400
      64007200650073007300010041006400720065007300730001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100520045004600450052004500
      4E004300450001004100640072006500730073002F006B0075006E0064007200
      650066006500720065006E007300010001004100640064007200650073007300
      2F0063007500730074006F006D00650072002000720065006600010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004100430054005F00
      4C0045004E00470054004800010041006B0074002E006C00E4006E0067006400
      010041006B00740020006C00E4006E0067006400010041006300740020006C00
      65006E00670074006800010041006B00740020006C00E4006E00670064000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041004C004D004D000100
      41004C004D004D0001000100010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004D0033005F004E0045005400010041004D003300010001000100
      01000D000A00630078004C006100620065006C003300010041006E0067006500
      2000700061006B00650074006E0072003A00010041006E006700650020007000
      61006B00650074006E007200010045006E00740065007200200070006B006700
      20006E006F00010041006E00670065002000700061006C006C006E0072000100
      0D000A006100630053006500740050006F0073006900740069006F006E004900
      6E0041006C006C0050006B0067007300010041006E0067006500200050006F00
      73006900740069006F006E0020006600F6007200200061006C006C0061002000
      700061006B00650074000100010045006E00740065007200200070006F007300
      6900740069006F006E00200066006F007200200061006C006C00200070006100
      63006B006100670065007300010041006E0067006500200050006F0073006900
      740069006F006E0020006600F6007200200061006C006C006100200070006100
      6C006C006100720001000D000A006100630053006500740050006F0073006900
      740069006F006E0049006E00530065006C006500630074006500640050006B00
      67007300010041006E0067006500200050006F0073006900740069006F006E00
      20006600F600720020006D00610072006B006500720061006400650020007000
      61006B00650074000100010045006E00740065007200200070006F0073006900
      740069006F006E00200066006F00720020006D0061006B006500640020007000
      610063006B006100670065007300010041006E0067006500200050006F007300
      6900740069006F006E0020006600F600720020006D00610072006B0065007200
      6100640065002000700061006C006C006100720001000D000A00610063004300
      7200650061007400650049006E007400650072006E004C004F00010041007500
      74006F006D00610074002000670065006E006500720065007200610020006C00
      6100730074006F00720064006500720001004100750074006F00200067006500
      6E006500720065007200610020004C004F0001004100750074006F0020006700
      65006E006500720061007400650020004C004F0001004100750074006F002000
      670065006E006500720065007200610020004C004F0001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031004100
      760072006F0070005F0043007500730074006F006D00650072004E006F000100
      4100760072006F0070005F0043007500730074006F006D00650072004E006F00
      01000100010001000D000A00640078004200610072004C006100720067006500
      42007500740074006F006E00330001004100760073006C007500740061002000
      2600260020005300700061007200610020004600310030000100010053006500
      7400200074006F00200043006F006D0070006C00650074006500200061006E00
      6400200073006100760065002000460031003000010001000D000A0061006300
      540072006500610074006D0065006E0074004300650072007400690063006100
      74006500010042006500680061006E0064006C0069006E006700730063006500
      720074006900660069006B006100740001000100540072006500610074006D00
      65006E0074002000630065007200740069006600690063006100740065000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100560045005300530045004C0001004200E500740001004600
      610072007400790067000100560065007300730065006C000100460061007200
      74007900670001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004300
      650072007400660069006500720069006E006700010043006500720074006600
      69006500720069006E0067000100010043006500720074006900660069006300
      6100740069006F006E00010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100430045005200540049000100430065007200740069006600
      6900650072006100640001000100430065007200740069006600690065006400
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100430068006100
      6E0067006500640001004300680061006E006700650064000100C4006E006400
      72006100640001000100C4006E00640072006100640001000D000A0061006300
      5000720069006E00740043004D005200010020002000200043004D0052002000
      20002000200001000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      7200010053006B0061007000610064002000610076000100010053006B006100
      70006100640020006100760001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310043007200650061007400650064005500730065007200010043007200
      650061007400650064005500730065007200010053006B006100700061006400
      2000610076000100010053006B00610070006100640020006100760001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      72003100010043007500730074006F006D002000310001000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      72003200010043007500730074006F006D002000320001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      7700310043007500730074006F006D00650072004E006F000100430075007300
      74006F006D00650072004E006F0001000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310043007500730074006F006D0065007200
      4E006F00010043007500730074006F006D00650072004E006F00010001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310043007500
      73007400530068006900700050006C0061006E00440065007400610069006C00
      4F0062006A006500630074004E006F0001004300750073007400530068006900
      700050006C0061006E00440065007400610069006C004F0062006A0065006300
      74004E006F0001000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100440061007400650043007200
      6500610074006500640001004400610074006500430072006500610074006500
      640001000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4400610074006500430072006500610074006500640001004400610074006500
      430072006500610074006500640001000100010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100440065006600610075006C007400430075007300
      740053006800690070004F0062006A006500630074004E006F00010044006500
      6600610075006C007400430075007300740053006800690070004F0062006A00
      6500630074004E006F0001000100010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004400650066007300730070006E006F000100440065006600
      7300730070006E006F0001000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005300480049005000
      5F0054004F000100440065007300740069006E006100740069006F006E000100
      0100010001000D000A0067007200640041006400640072006500730073004400
      42005400610062006C0065005600690065007700310044006500730074006900
      6E006100740069006F006E000100440065007300740069006E00610074006900
      6F006E0001000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310050006B0067004400690066006600010044006900660066000100
      01004400690066006600010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310056004F004C0055004E0049005400010045006E0068006500
      74000100010055006E0069007400010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004500540041000100
      45005400410001000100450054004100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100450054004400
      010045005400440001000100450054004400010001000D000A00640078004200
      610072005300700069006E00450064006900740043006F006E00740065006E00
      7400010046006F006E0074002000730074006F0072006C0065006B0001000100
      46006F006E0074002000730069007A006500010001000D000A00620065005000
      6B00670046006F006E007400010046006F006E0074002000730074006F007200
      6C0065006B000100010046006F006E0074002000730069007A00650001000100
      0D000A00630078004C006100620065006C0031003000010046007200E5006E00
      3A00010046007200E5006E000100460072006F006D00010046007200E5006E00
      01000D000A00630078004C006100620065006C0038000100460053003A000100
      460053000100540061006C006C00790001004600530001000D000A0061006300
      5000720069006E0074004600530001004600F6006C006A006500730065006400
      65006C0001000100540061006C006C007900010001000D000A00610063005000
      720069006E0074004600530061006E00640043004D00520001004600F6006C00
      6A00650073006500640065006C00200026002600200043004D00520001000100
      540061006C006C007900200061006E006400200043004D005200010001000D00
      0A00610063005000720069006E007400460053004D00690073004D0061007400
      6300680001004600F6006C006A00650073006500640065006C00200028007000
      61006B00650074002000730061006B006E006100720020006B006F0070007000
      6C0069006E006700290001004600F6006C006A00650073006500640065006C00
      20002800700061006B00650074002000730061006B006E006100720020006D00
      61007400630068006E0069006E00670029000100540061006C006C0079002000
      280070006B006700200077006900740068006F007500740020006D0061007400
      63006800290001004600F6006C006A00650073006500640065006C0020002800
      700061006C006C002000730061006B006E006100720020006D00610074006300
      68006E0069006E006700290001000D000A00610063005000720069006E007400
      540061006C006C007900550053004E006F007400650001004600F6006C006A00
      650073006500640065006C00200055005300410001000100540061006C006C00
      7900200055005300010001000D000A0062006200540061006C006C0079005F00
      560065007200320001004600F6006C006A00650073006500640065006C002000
      560065007200320001000100540061006C006C00790020007600650072003200
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004700
      72006100640065004E006F000100470072006100640065004E006F0001000100
      010001000D000A0048007900760065006C006F00720064006500720031000100
      48007900760065006C006F0072006400650072000100010050006C0061006E00
      6E0069006E00670020006F007200640065007200010001000D000A0061006300
      470065007400560050005000610063006B00610067006500730001004800E400
      6D00740061002000700061006B006500740020006600F6007200620072007500
      6B00610064006500200061007600200056006900640061002000500061006300
      6B006100670069006E00670001000100470065007400200070006B0067002000
      7500730065006400200062007900200056006900640061002000500061006300
      6B006100670069006E006700010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310049006E0076004E007200010049004B0001000100010001000D00
      0A006100630049006D0070006F00720074005000610063006B00610067006500
      7300010049006D0070006F0072007400650072006100200057006F006F006400
      580020006600F6006C006A00650073006500640065006C000100010049006D00
      70006F0072007400200057006F006F00640058002000740061006C006C007900
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      4E00430048005F0054004800490043004B00010049004E00430048005F005400
      4800490043004B0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310049006E007400650072006E006E006F00740065007200
      69006E006700010049006E007400650072006E006E006F007400650072006900
      6E0067000100010049006E007400650072006E0061006C0020006E006F007400
      6500010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      49004E005600430048005F0057004900440054004800010049004E0056004300
      48005F005700490044005400480001000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004F005200
      440045005200540059005000450001004B006F006E007400720061006B007400
      74007900700001004F007200640065007200200074007900700001004F007200
      6400650072002000740079007000650001004F00720064006500720020007400
      7900700001000D000A00630062004B006F00700070006C00610045006A004D00
      6F0074004400750062006C0065007400740001004B006F00700070006C006100
      200065006A0020006F006D0020006400750062006C0065007400740001000100
      44006F0020006E006F00740020006C0069006E006B00200064006F0075006200
      6C006500010001000D000A00610063004B006F00700070006C00610050006100
      6B00650074004D006F0074004C004F004D0061006E00750065006C006C007400
      01004B006F00700070006C00610020006D00610072006B006500720061006400
      65002000700061006B006500740020006D006F0074002000760061006C006400
      20004C004F002D00720061006400010001004C0069006E006B00200073006500
      6C0065006300740065006400200070006B0067007300200074006F0020007300
      65006C006500630074006500640020004C004F0020006C0069006E0065000100
      4B006F00700070006C00610020006D00610072006B0065007200610064006500
      2000700061006C006C006100720020006D006F0074002000760061006C006400
      20004C004F002D0072006100640001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310043005500530054004F00
      4D004500520001004B0075006E0064000100010043007500730074006F006D00
      65007200010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031004C004F0043005F0043005500530054000100
      4B0075006E006400280069006E007400650072006E00290001004B0075006E00
      6400200069006E007400650072006E00010043007500730074006F006D006500
      7200200069006E007400650072006E0001004B0075006E006400200069006E00
      7400650072006E0001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004E004F004F00460055004E0049005400530001004B00760061006E00
      74006900740065007400010001005100750061006E0074006900740079000100
      01000D000A00630078004C006100620065006C00320001004C00610067006500
      7200670072007500700070003A0001004C006100670065007200670072007500
      700070000100530074006F0063006B002000670072006F007500700001004C00
      61006700650072006700720075007000700001000D000A00630078004C006100
      620065006C00310001004C00610067006500720073007400E4006C006C006500
      3A0001004C00610067006500720073007400E4006C006C006500010053007400
      6F0063006B00200070006C0061006300650001004C0061006700650072007300
      7400E4006C006C00650001000D000A00630078004C006100620065006C003700
      01004C006100730074002000490044003A0001004C0061007300740020004900
      440001004C006F006100640020004900440001004C0061007300740020004900
      440001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      6F00610064004E006F0001004C006100730074006E007200010001004C006F00
      610064004E006F00010001000D000A006700720064004C004F00440042005400
      610062006C006500560069006500770031004C006F00610064004E006F000100
      4C006100730074006E007200010001004C006F00610064004E006F0001000100
      0D000A00630078004C006100620065006C00340001004C006100730074004E00
      72003A0001004C006100730074006E00720001004C006F00610064004E006F00
      01004C006100730074006E00720001000D000A00500061006E0065006C003100
      01004C004100530054004F005200440045005200520041004400450052000100
      01004C004F004100440020004F00520044004500520020004C0049004E004500
      5300010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031004C004F004100440049004E0047005F004C004F00
      43004100540049004F004E0001004C0061007300740073007400E4006C006C00
      6500010001004C006F006100640069006E006700200070006C00610063006500
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      450056005F0050004500520049004F0044005F0045004E00440001004C006500
      76002E0050006500720069006F006400200073006C007500740001004C006500
      7600200070006500720069006F006400200073006C0075007400010044006500
      6C00200070006500720069006F006400200065006E00640001004C0065007600
      200070006500720069006F006400200073006C007500740001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C00450056005F0050004500
      520049004F0044005F005300540041005200540001004C00650076002E007000
      6500720069006F00640020007300740061007200740001004C00650076002000
      70006500720069006F0064002000730074006100720074000100440065006C00
      200070006500720069006F00640020007300740061007200740001004C006500
      7600200070006500720069006F00640020007300740061007200740001000D00
      0A00740073004C006F0061006400440061007400610001004C00650076006500
      720061006E0073006800750076007500640001000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      53005500500050004C0049004500520001004C00650076006500720061006E00
      7400F60072000100010053007500700070006C00690065007200010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C00490050004E006F000100
      4C00490050004E006F0001000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031005300680069007000700069006E00670050006C00
      61006E004E006F0001004C004F00010001004C004F00010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031005300680069007000700069006E006700
      50006C0061006E004E006F0001004C004F00010001004C004F00010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031005300680069007000700069006E00670050006C0061006E004E006F00
      01004C004F00010001004C004F00010001000D000A00610063004C004F004100
      6C006C0061005600650072006B0001004C004F00200061006C006C0061002000
      7600650072006B00010001004C004F00200061006C006C0020006D0069006C00
      6C007300010001000D000A00610063005000720069006E0074004C004F004500
      720074005600650072006B0001004C004F002000650072007400200076006500
      72006B00010001004C004F00200079006F007500720020006D0069006C006C00
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F0001004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F0001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F0001004C006F00610064006900
      6E0067004C006F0063006100740069006F006E004E006F000100010001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C006F00610064004E00
      6F0001004C006F00610064004E006F0001000100010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500072006F0062006C0065006D0050006100
      63006B006100670065004C006F00670001004C006F0067006700010001004C00
      6F006700010001000D000A00630078004C006100620065006C00390001004C00
      6F006B0061006C006600720061006B0074006600F60072006100720065003A00
      01004C006F006B0061006C002000620065006600720061006B00740061007200
      650001004C006F00630061006C00200063006100720072006900650072000100
      4C006F006B0061006C002000620065006600720061006B007400610072006500
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004C004F0050004D00
      01004C0070006D000100010052006D00010001000D000A006100630049006E00
      730065007200740041006C006C0050006B006700730054006F0049006E007600
      65006E0074006F007200790001004C00E40067006700200061006C006C006100
      2000700061006B00650074002000740069006C006C0020006C00610067007200
      6500740001000100410064006400200061006C006C00200070006B0067007300
      200074006F002000730074006F0063006B0001004C00E4006700670020006100
      6C006C0061002000700061006C006C00610072002000740069006C006C002000
      6C006100670072006500740001000D000A006100630049006E00730065007200
      740050006B00670054006F0049006E00760065006E0074006F00720079000100
      4C00E4006700670020006D00610072006B006500720061006400650020007000
      61006B00650074002000740069006C006C00620061006B007300200074006900
      6C006C0020006C00610067006500720001000100500075007400200073006500
      6C0065006300740065006400200070006B006700730020006200610063006B00
      200074006F002000730074006F0063006B0001004C00E4006700670020006D00
      610072006B00650072006100640065002000700061006C006C00610072002000
      740069006C006C00620061006B0073002000740069006C006C0020006C006100
      67006500720001000D000A006100630041006400640050006B00670042007900
      50006B00670043006F006400650001004C00E400670067002000740069006C00
      6C002000700061006B006500740020007000650072002000700061006B006500
      74006B006F00640001000100410064006400200070006B006700200062007900
      200070006B006700200063006F006400650001004C00E4006700670020007400
      69006C006C002000700061006C006C0020007000650072002000700061006C00
      6C006B006F00640001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C0045004E00470054004800440045005300430001004C00E4006E00
      670064006200650073006B002E0001004C00E4006E0067006400620065007300
      6B007200690076006E0001004C0065006E006700740068002000640065007300
      6300720001004C00E4006E00670064006200650073006B007200690076006E00
      01000D000A0061006300530074007200650063006B004B006F00640073006900
      6E006C00610073006E0069006E00670001004C00E40073002000730074007200
      650063006B006B006F0064000100010052006500610064002000620061007200
      63006F0064006500010001000D000A0067007200640050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004B0056004D0001006D00320001000100010001000D000A00610063004D00
      610069006C00540072006500610074006D0065006E0074004300650072007400
      690066006900630061007400650001004D00610069006C006100200042006500
      680061006E0064006C0069006E00670073006300650072007400690066006900
      6B0061007400010001004D00610069006C002000540072006500610074006D00
      65006E007400200063006500720074002E00010001000D000A00610063004D00
      610069006C0061004600530001004D00610069006C00610020006600F6006C00
      6A00650073006500640065006C000100010045006D00610069006C0020007400
      61006C006C007900010001000D000A00610063004D00610069006C0054004F00
      5F004D0061006E00750065006C006C0001004D00610069006C00610020005400
      4F0020004D0061006E00750065006C006C000100010045004D00610069006C00
      200054004F0020006D0061006E00750061006C006C007900010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004D00610069006E00470072006100
      640065004E006F0001004D00610069006E00470072006100640065004E006F00
      01000100010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004F00
      76006500720072006900640065004D00610074006300680001004D0061006E00
      750065006C006C0020006B006F00700070006C0069006E00670001004D006100
      6E00750065006C006C0020006D0061007400630068006E0069006E0067000100
      4D0061006E00750061006C0020006D00610074006300680001004D0061006E00
      750065006C006C0020006D0061007400630068006E0069006E00670001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004D00410054004300
      480001004D00410054004300480001000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D00410058005F004C0045004E004700
      5400480001004D00410058005F004C0045004E00470054004800010001000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004D00460042004D00
      01004D00460042004D00010001004D00460042004D00010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004D0049004E005F004C004500
      4E0047005400480001004D0049004E005F004C0045004E004700540048000100
      0100010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004D006F00
      640069006600690065006400550073006500720001004D006F00640069006600
      69006500640055007300650072000100C4006E00640072006100640020006100
      760001000100C4006E00640072006100640020006100760001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4D006F00640069006600690065006400550073006500720001004D006F006400
      6900660069006500640055007300650072000100C4006E006400720061006400
      20006100760001000100C4006E00640072006100640020006100760001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004D0033005F004E004F004D00
      01004E004D003300010001004E004D003300010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004E004F004D005F005400480049004300
      4B0001004E004F004D005F0054004800490043004B0001000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004E004F004D005F00
      5700490044005400480001004E004F004D005F00570049004400540048000100
      0100010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E006F00
      4F0066004C0065006E00670074006800730001004E006F004F0066004C006500
      6E00670074006800730001000100010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004E006F004F0066005000610063006B006100670065007300
      01004E006F004F0066005000610063006B006100670065007300010001000100
      01000D000A00740073004C006F00610064004E006F007400650001004E006F00
      74006500720069006E00670001004E006F00740065007200610001004E006F00
      7400650001004E006F00740065007200610001000D000A00610063004E007500
      6D0050006100640001004E0075006D0050006100640001000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031004F0062006A00650063007400540079007000650001004F0062006A00
      650063007400540079007000650001000100010001000D000A00610063005300
      61007600650041006E0064004F004B0001004F004B0020002600260020005300
      70006100720061002000460031003000010001004F004B00200061006E006400
      200053006100760065002000460031003000010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004F005200
      4400450052004E004F0001004F0072006400650072006E00720001004F007200
      6400650072004E00720001004F0072006400650072004E006F0001004F007200
      6400650072004E00720001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004F0052004400450052004E004F0001004F007200640065007200
      6E00720001004F0072006400650072004E00720001004F007200640065007200
      4E006F0001004F0072006400650072004E00720001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031005000610063006B006100670065005400
      7900700065004E006F0001005000610063006B00610067006500540079007000
      65004E006F0001000100010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005000410043004B0041004700450054005900500045004E004F000100
      5000410043004B0041004700450054005900500045004E004F00010001000100
      01000D000A006100630050006B00670049006E0066006F000100500061006B00
      65007400200069006E0066006F0072006D006100740069006F006E0001000100
      50006B006700200069006E0066006F0072006D006100740069006F006E000100
      500061006C006C00200069006E0066006F0072006D006100740069006F006E00
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050004B00
      470043004F00440045000100500061006B00650074006B006F00640001000100
      50006B006700200063006F00640065000100500061006C006C006B006F006400
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000410043004B00
      4100470045004E004F000100500061006B00650074006E007200010050006100
      6B00650074004E007200010050006B0067004E006F000100500061006C006C00
      4E00720001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500061006B0065007400730074006F0072006C0065006B000100500061006B00
      65007400730074006F0072006C0065006B000100500061006B00650074007300
      74006F0072006C0065006B00010050006B0067002000730069007A0065000100
      500061006C006C00730074006F0072006C0065006B0001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500061006B0065007400730074006F007200
      6C0065006B000100500061006B0065007400730074006F0072006C0065006B00
      0100500061006B0065007400730074006F0072006C0065006B00010050006B00
      67002000730069007A0065000100500061006C006C00730074006F0072006C00
      65006B0001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006B00
      67005F00460075006E006300740069006F006E00010050006B0067005F004600
      75006E006300740069006F006E0001000100010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310050006B0067005F00530074006100740065000100
      50006B0067005F005300740061007400650001000100010001000D000A006100
      630050006B0074004E00720053006500720069006500010050006B0074006E00
      7200730065007200690065000100010050006B0067006E006F00200073006500
      72006900650073000100500061006C006C006E00720073006500720069006500
      01000D000A00610063005000690063006B0050006B0067004E006F0073000100
      50006C006F0063006B0061002000700061006B00650074000100010050006900
      63006B00200070006B006700010050006C006F0063006B006100200070006100
      6C006C006100720001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      50006F0073006900740069006F006E004E0061006D006500010050006F007300
      6900740069006F006E0001000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310050004300530050004500520050004B0047000100
      50005000500001000100010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310053007500700070006C0069006500720043006F006400650001005000
      7200650066006900780001000100500072006500660069007800010001000D00
      0A00610063005300650074005300740061007400750073005000720065006C00
      61006E006400530061007600650001005000720065006C0069006D0069006E00
      E4007200010001005000720065006C0069006D0069006E006100720079000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050005200
      4900430045000100500072006900730001000100500072006900630065000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050005200
      49004300450055004E00490054000100500072006900730065006E0068006500
      740001000100500072006900630065002000260075006E006900740001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006900
      73006C006900730074006100010050007200690073006C006900730074006100
      01000100500072006900630065006C00690073007400010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500052004F00440055004300
      5400470052004F00550050004E004F000100500052004F004400550043005400
      470052004F00550050004E004F0001000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500072006F0064007500630074004C00
      65006E00670074006800470072006F00750070004E006F000100500072006F00
      64007500630074004C0065006E00670074006800470072006F00750070004E00
      6F0001000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F0001000100010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500052004F0044005500430054000100500072006F006400
      75006B00740001000100500072006F006400750063007400010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310049004E00540045005200
      4E00500052004F00440044004500530043000100500072006F00640075006B00
      74006200650073006B002E00280069006E007400650072006E00290001000100
      500072006F006400750063007400640065007300630072006900700072006900
      6F006E002000280069006E007400650072006E002900010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500052004F00440055004300
      54004400450053004300520049005000540049004F004E000100500072006F00
      640075006B0074006200650073006B002E00280069006E007400650072006E00
      290001000100500072006F006400750063007400640065007300630072006900
      7000720069006F006E002000280069006E007400650072006E00290001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004B0052005F00
      5200650066000100500072006F00640075006B0074006D00E40072006B006E00
      69006E00670001000100500072006F00640075006300740020006D0061007200
      6B00010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C006F00
      61006400440065007400610069006C004E006F0001005200610064006E007200
      010001004C0069006E0065004E006F00010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100520045004100
      44005900440041005400450001005200650064006F0064006100670001000100
      5200650061006400790020006400610074006500010001000D000A0067007200
      64004100640064007200650073007300440042005400610062006C0065005600
      69006500770031005200650066006500720065006E0063006500010052006500
      66006500720065006E006300650001000100010001000D000A00610063005000
      6B00670045006E00740072007900010052006500670069007300740072006500
      720061002000700061006B006500740020004600390001000100520065006700
      69007300740065007200200070006B0067002000460039000100520065006700
      69007300740072006500720061002000700061006C006C002000460039000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031005300680069007000700069006E00670001005300680069007000
      700069006E006700010053006B006500700070006E0069006E00670001000100
      53006B006500700070006E0069006E00670001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100530068006900
      700054006F0049006E00760050006F0069006E0074004E006F00010053006800
      6900700054006F0049006E00760050006F0069006E0074004E006F0001000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      68006900700054006F0049006E00760050006F0069006E0074004E006F000100
      530068006900700054006F0049006E00760050006F0069006E0074004E006F00
      01000100010001000D000A006C00620053007400610072007400420061007200
      43006F0064006500520065006100640069006E006700010053006B0072006900
      7600200075007400010001005000720069006E007400010001000D000A007300
      69005000720069006E007400010053006B007200690076002000750074000100
      01005000720069006E007400010001000D000A00610063005000720069006E00
      74004D0065006E007900010053006B0072006900760020007500740020004600
      3800010001005000720069006E007400200046003800010001000D000A006100
      630053006100760065004C006F00610064000100530070006100720061002000
      46003300010001005300610076006500200046003300010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530070006500630069006500
      73004E006F00010053007000650063006900650073004E006F00010001000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005300700065006300
      6900650073004E006F00010053007000650063006900650073004E006F000100
      0100010001000D000A00610063005000720069006E0074005300700065006300
      41006C006C0061004C00610073007400650072004C004F000100530070006500
      630069006600690063006100740069006F006E00200061006C006C0061002000
      6C006100730074006500720020004C004F000100530070006500630020006100
      6C006C00610020006C006100730074006500720020004C004F00010053007000
      65006300200061006C006C0020006C006F0061006400730020004C004F000100
      5300700065006300200061006C006C00610020006C0061007300740065007200
      20004C004F0001000D000A006700720064004C004F0044004200540061006200
      6C00650056006900650077003100530048004900500050004500520053005F00
      53004800490050004400410054004500010053007000650064002E0064006100
      740075006D000100420065006600720061006B0074006100720065006E007300
      200064006100740075006D000100430061007200720069006500720073002000
      64006100740065000100420065006600720061006B0074006100720065006E00
      7300200064006100740075006D0001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310053004800490050005000
      4500520049004400010053007000650064002E00490044000100420065006600
      720061006B0074006100720065006E0073002000720065006600010043006100
      7200720069006500720073002000720065006600010042006500660072006100
      6B0074006100720065006E007300200072006500660001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      4800490050005000450052005F00520045004600010053007000650064002E00
      7200650066006500720065006E0073000100420065006600720061006B007400
      6100720065006E00730020007200650066000100430061007200720069006500
      7200730020007200650066000100420065006600720061006B00740061007200
      65006E007300200072006500660001000D000A006700720064004C004F004400
      42005400610062006C0065005600690065007700310053004800490050005000
      4500520053005F005300480049005000540049004D0045000100530070006500
      64002E007400690064000100420065006600720061006B007400610072006500
      6E007300200064006100740075006D0001004300610072007200690065007200
      7300200064006100740065000100420065006600720061006B00740061007200
      65006E007300200064006100740075006D0001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100530048004900
      50005000450052000100530070006500640069007400F6007200010042006500
      6600720061006B00740061007200650001004300610072007200690065007200
      0100420065006600720061006B00740061007200650001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031005000610063006B006100670065004F004B00
      0100530074006100740075007300010001005300740061007400750073000100
      01000D000A00630078004C006100620065006C00360001005300740061007400
      750073003A000100530074006100740075007300010053007400610074007500
      7300010053007400610074007500730001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500043005300010053007400790063006B00010001005000
      6300730001005300E40063006B0001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031005000430053005F005000450052005F004C0045004E0047005400
      4800010053007400790063006B002F006C00E4006E0067006400010001005000
      630073002F006C0065006E00670074006800010001000D000A00610063004300
      6C006F0073006500010053007400E4006E006700200046003100320001000100
      43006C006F00730065002000460031003200010001000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310053007500
      700070006C006900650072004E006F00010053007500700070006C0069006500
      72004E006F0001000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310053007500700070006C006900650072005300680069007000
      50006C0061006E004F0062006A006500630074004E006F000100530075007000
      70006C00690065007200530068006900700050006C0061006E004F0062006A00
      6500630074004E006F0001000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310053007500720066006100630069006E0067004E00
      6F00010053007500720066006100630069006E0067004E006F00010001000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005300750072006600
      6100630069006E0067004E006F00010053007500720066006100630069006E00
      67004E006F0001000100010001000D000A006100630053006500740044006500
      6600610075006C0074004D0061007400630068004F006E0041006C006C005000
      6B006700730001005300E4007400740020007300740061006E00640061007200
      640020006D0061007400630068006E0069006E00670020007000E50020006100
      6C006C0061002000700061006B00650074000100010053006500740020006400
      65006600610075006C00740020006D006100740063006800200074006F002000
      61006C006C00200070006B006700730001005300E40074007400200073007400
      61006E00640061007200640020006D0061007400630068006E0069006E006700
      20007000E500200061006C006C0061002000700061006C006C00610072000100
      0D000A0061006300520065006D006F007600650041006C006C0050006B006700
      7300460072006F006D00530079007300740065006D0001005400610020006200
      6F0072007400200061006C006C0061002000700061006B006500740020006600
      7200E5006E002000730079007300740065006D00650074000100010044006500
      6C00650074006500200061006C006C00200070006B0067007300200066007200
      6F006D002000730079007300740065006D00010054006100200062006F007200
      7400200061006C006C0061002000700061006C006C0061007200200066007200
      E5006E002000730079007300740065006D006500740001000D000A0061006300
      440065006C006500740065004C006F0061006400010054006100200062006F00
      7200740020004600350001000100440065006C00650074006500200046003500
      010001000D000A0061006300520061006400650072006100500061006B006500
      7400010054006100200062006F0072007400200066007200E5006E0020006C00
      61007300740001000100520065006D006F0076006500200070006B0067002000
      660072006F006D0020006C006F0061006400010001000D000A006C0062004400
      65006C0065007400650050006B006700010054006100200062006F0072007400
      20006D00610072006B00650072006100640065002000700061006B0065007400
      65007400200066007200E5006E002000730079007300740065006D0065007400
      01000100440065006C006500740065002000730065006C006500630074006500
      6400200070006B00670073002000660072006F006D0020007300790073007400
      65006D00010054006100200062006F007200740020006D00610072006B006500
      7200610064002000700061006C006C00200066007200E5006E00200073007900
      7300740065006D006500740001000D000A0061006300440065006C0065007400
      65004E006F00740043006F006D0070006C0065007400650050006B0067007300
      010054006100200062006F00720074002000700061006B006500740001000100
      440065006C00650074006500200070006B006700010054006100200062006F00
      720074002000700061006C006C0001000D000A00610063005400610042006F00
      72007400500061006B0065007400500065007200500061006B00650074004B00
      6F006400010054006100200062006F00720074002000700061006B0065007400
      20007000650072002000700061006B00650074006B006F006400010001004400
      65006C00650074006500200070006B0067002000700065007200200070006B00
      6700200063006F0064006500010054006100200062006F007200740020007000
      61006C006C0020007000650072002000700061006C006C006B006F0064000100
      0D000A0061006300520065006D006F007600650050006B006700460072006F00
      6D00530079007300740065006D00010054006100200062006F00720074002000
      700061006B006500740065007400200066007200E5006E002000730079007300
      740065006D006500740001000100440065006C00650074006500200070006B00
      670073002000660072006F006D002000730079007300740065006D0001005400
      6100200062006F00720074002000700061006C006C0065006E00200066007200
      E5006E002000730079007300740065006D006500740001000D000A0061006300
      5400650078007400500061006400010054006500780074005000610064000100
      0100010001000D000A0061006300540065007800740050006100640046005300
      0100540065007800740050006100640001000100010001000D000A0063007800
      4C006100620065006C00310031000100540069006C006C003A00010054006900
      6C006C00010054006F000100540069006C006C0001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004F007600650072007200690064006500
      52004C000100540069006C006C00E5007400200061006C006C00610020006C00
      E4006E0067006400650072000100010041006C006C006F007700200061006C00
      6C0020006C0065006E006700740068007300010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004F00760065007200720069006400650052004C00
      0100540069006C006C00E5007400200061006C006C00610020006C00E4006E00
      67006400650072000100010041006C006C006F007700200061006C006C002000
      6C0065006E006700740068007300010001000D000A0061006300500072006900
      6E00740054004F00010054004F0001000100010001000D000A00610063005000
      720069006E00740054006F005F004D0061006E00750065006C006C0001005400
      4F0020004D0061006E00750065006C006C000100010054004F0020004D006100
      6E00750061006C00200075007300610067006500010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031005400720073006C00610067000100
      54007200E40073006C0061006700010001005300700065006300690065007300
      010001000D000A00630078004C006100620065006C0035000100550074006C00
      610073007400610064003A000100550074006C00610073007400610064000100
      4C006F0061006400650064000100550074006C00610073007400610064000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C006F006100
      64006500640050006B00670073000100550074006C0061007300740061006400
      6500200070006B007400010001004C006F006100640065006400200070006B00
      670073000100550074006C006100730074006100640065002000700061006C00
      6C0001000D000A0061006300560061006C006900640061007400650041006C00
      6C0050006B00670073000100560061006C006900640065007200610020006100
      6C006C006100200070006B0074000100560061006C0069006400650072006100
      200061006C006C0061002000700061006B00650074000100560061006C006900
      6400610074006500200061006C006C00200070006B0067007300010056006100
      6C0069006400650072006100200061006C006C0061002000700061006C006C00
      6100720001000D000A0061006300560061006C00690064006100740065005000
      6B0067000100560061006C00690064006500720061002000700061006B006500
      740001000100560061006C0069006400610074006500200070006B0067000100
      560061006C00690064006500720061002000700061006C006C0001000D000A00
      640078004200610072004C00610072006700650042007500740074006F006E00
      360001005600650072006B007400790067000100010054006F006F006C007300
      010001000D000A0063006200530068006F0077004F0072006900670069006E00
      61006C004C004F0001005600690073006100200030002D004C004F0020007200
      610064006500720001000100530068006F007700200030002D004C004F002000
      6C0069006E0065007300010001000D000A0061006300530068006F0077004C00
      6F00610064004800650061006400650072000100560069007300610020006800
      750076007500640020004600370001000100530068006F007700200068006500
      61006400200046003700010001000D000A006100630055006E0064006F005000
      6B0067004F007000650072006100740069006F006E000100C5006E0067007200
      61000100010055006E0064006F00010001000D000A00610063004F0070006500
      6E004C004F0046006F0072006D000100D600700070006E00610020004C004F00
      010001004F00700065006E0020004C004F00010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0062006200
      540061006C006C0079005F00560065007200320001004600F6006C006A006500
      73006500640065006C002000560065007200320001000100540061006C006C00
      790020007600650072003200010001000D000A00640078004200610072004C00
      610072006700650042007500740074006F006E00360001005600650072006B00
      7400790067000100010054006F006F006C007300010001000D000A0064007800
      4200610072005300700069006E00450064006900740043006F006E0074006500
      6E007400010046006F006E0074002000730074006F0072006C0065006B000100
      010046006F006E0074002000730069007A006500010001000D000A0062006500
      50006B00670046006F006E007400010046006F006E0074002000730074006F00
      72006C0065006B000100010046006F006E0074002000730069007A0065000100
      01000D000A0061006300560061006C006900640061007400650041006C006C00
      50006B00670073000100560061006C0069006400650072006100200061006C00
      6C0061002000700061006B006500740001000100560061006C00690064006100
      74006500200061006C006C00200070006B00670073000100560061006C006900
      6400650072006100200061006C006C0061002000700061006C006C0061007200
      01000D000A006100630050006B00670045006E007400720079000100D6007000
      70006E0061002000700061006B006500740069006E006D00610074006E006900
      6E0067007300200066006F0072006D0075006C00E4007200010001004F007000
      65006E00200050006B00670045006E00740072007900200066006F0072006D00
      0100D600700070006E0061002000700061006C006C0069006E006D0061007400
      6E0069006E0067007300200066006F0072006D0075006C00E400720001000D00
      0A0061006300530074007200650063006B004B006F006400730069006E006C00
      610073006E0069006E0067000100500061006B006500740069006E006D006100
      74006E0069006E00670020006D00650064002000730074007200650063006B00
      6B006F00640073006C00E40073006100720065000100010050006B0067002000
      72006500670020007700690074006800200062006100720063006F0064006500
      20007200650061006400650072000100500061006C006C0069006E006D006100
      74006E0069006E00670020006D00650064002000730074007200650063006B00
      6B006F00640073006C00E400730061007200650001000D000A00610063005000
      6B0074004E0072005300650072006900650001004800E4006D00740061002000
      700061006B0065007400200069006E006F006D00200065007400740020007000
      61006B00650074006E007200200069006E00740065007200760061006C006C00
      01000100470065007400200070006B006700200069006E00200050006B006700
      4E006F002000720061006E006700650001004800E4006D007400610020007000
      61006C006C00200069006E006F006D0020006500740074002000700061006C00
      6C006E007200200069006E00740065007200760061006C006C0001000D000A00
      6100630049006D0070006F00720074005000610063006B006100670065007300
      010049006D0070006F00720074006500720061002000700061006B0065007400
      20006D0065006400200077006F006F0064007800010049006D0070006F007200
      74006500720061002000700061006B00650074002000280057006F006F006400
      58002900010049006D0070006F0072007400200070006B006700200028005700
      6F006F00640058002900010049006D0070006F00720074006500720061002000
      700061006C006C002000280057006F006F0064005800290001000D000A006100
      63005300650074005300740061007400750073005000720065006C0061006E00
      6400530061007600650001005300E4007400740020006C006100730074006500
      6E002000740069006C006C002000730074006100740075007300200070007200
      65006C0069006D0069006E00E400720001005300E4007400740020006C006100
      7300740065006E002000740069006C006C002000730074006100740075007300
      20005000720065006C0069006D0069006E00E400720001005300650074002000
      6C006F0061006400200074006F00200073007400610074007500730020005000
      720065006C0069006D0069006E0061007200790001005300E400740074002000
      6C0061007300740065006E002000740069006C006C0020007300740061007400
      7500730020005000720065006C0069006D0069006E00E400720001000D000A00
      6C0062005300740061007200740042006100720043006F006400650052006500
      6100640069006E006700010053006B0072006900760020007500740001000100
      5000720069006E007400010001000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00540066004C006F006100640045006E0074007200790053005300
      500001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A00500061006E0065006C00310001004D00530020005300
      61006E00730020005300650072006900660001000100010001000D000A005000
      61006E0065006C00320001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A006300780042007500740074006F00
      6E00310001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A006300780042007500740074006F006E0032000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A006300780042007500740074006F006E00330001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100010054006100
      68006F006D00610001000100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200310001005400610068006F00
      6D00610001000100010001000D000A00640078004200610072004D0061006E00
      61006700650072003100420061007200320001005400610068006F006D006100
      01000100010001000D000A0070006D0050006B00670073000100540061006800
      6F006D00610001000100010001000D000A0070006D004C004F004E0075006D00
      62006500720001005400610068006F006D00610001000100010001000D000A00
      700070006D0065006E0075004C004F005F004C0069006E006500730001005400
      610068006F006D00610001000100010001000D000A0063007800530074007900
      6C006500590065006C006C006F00770001005400610068006F006D0061000100
      0100010001000D000A00630078005300740079006C0065005200650064000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C006500410071007500610001005400610068006F006D00610001000100
      010001000D000A00630078005300740079006C00650042006C00750065000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C006500530069006C0076006500720001005400610068006F006D006100
      01000100010001000D000A00630078005300740079006C006500480065006100
      6400650072000100560065007200640061006E00610001000100010001000D00
      0A00630078005300740079006C00650043006F006E00740065006E0074000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A00630078005300740079006C00650043006F006E00740065006E00
      74004F006400640001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00630078005300740079006C0065006300
      6C0053006B00790042006C007500650001005400610068006F006D0061000100
      0100010001000D000A00630078005300740079006C0065004700720065006500
      6E0001005400610068006F006D00610001000100010001000D000A0063007800
      5300740079006C0065004F00720061006E006700650001005400610068006F00
      6D00610001000100010001000D000A00630078005300740079006C0065004F00
      720061006E0067006500320001005400610068006F006D006100010001000100
      01000D000A00630078005300740079006C006500520065006400320001005400
      610068006F006D00610001000100010001000D000A0063007800530074007900
      6C00650047007200650065006E00320001005400610068006F006D0061000100
      0100010001000D000A00630078005300740079006C00650043006F006E007400
      65006E007400320001005400610068006F006D00610001000100010001000D00
      0A0070006D005000720069006E00740001005400610068006F006D0061000100
      0100010001000D000A0070006D004D0065006E0075004F007000740069006F00
      6E00730001005400610068006F006D00610001000100010001000D000A006200
      7400540065007800740050006100640001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A006200740054006500
      780074005000610064004600530001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A00620074004E0075006D00
      50006100640001004D0053002000530061006E00730020005300650072006900
      660001000100010001000D000A006300780042007500740074006F006E003400
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A0070006D005200650070006F00720074000100540061006800
      6F006D00610001000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A004900440053005F00300001004C0061007300740065006E0020006B00
      61006E00200069006E00740065002000E4006E00640072006100730020006600
      F600720020006100740074002000640065006E002000E4007200200061006E00
      6B006F006D007300740072006500670069007300740072006500720061006400
      010001004C006F00610064002000630061006E006E006F007400200062006500
      20006300680061006E0067006500640020006200650063006100750073006500
      20006900740020006900730020006100720072006900760061006C0020007200
      650067006900730074006500720065006400010001000D000A00490044005300
      5F00310001004C0061007300740065006E0020006B0061006E00200069006E00
      740065002000E4006E00640072006100730020006600F6007200200061007400
      740020007300740061007400750073002000E400720020002200410076007300
      6C0075007400610064002200010001004C006F00610064002000630061006E00
      6E006F00740020006200650020006300680061006E0067006500640020006200
      6500630061007500730065002000730074006100740075007300200069007300
      200043006F006D0070006C00650074006500010001000D000A00490044005300
      5F00310030000100500061006B00650074006E0072002000660069006E006E00
      7300200072006500640061006E002000690020006C0061007300740065006E00
      2E000100010050006B0067004E006F00200061006C0072006500610064007900
      200061006400640065006400200074006F00200074006800650020006C006F00
      610064000100500061006C006C006E0072002000660069006E006E0073002000
      72006500640061006E002000690020006C0061007300740065006E002E000100
      0D000A004900440053005F00310031000100500061006B00650074006E007200
      20003D0020000100010050006B0067004E006F0020003D002000010050006100
      6C006C006E00720020003D00200001000D000A004900440053005F0031003500
      01004200410044005F004C0045004E0047005400480001000100010001000D00
      0A004900440053005F00310036000100C4006E006400720069006E0067006100
      72002000E4007200200069006E00740065002000730070006100720061006400
      65002C002000760069006C006C00200064007500200073007000610072006100
      3F00010001004300680061006E00670065007300200061007200650020006E00
      6F0074002000730061007600650064002C00200064006F00200079006F007500
      2000770061006E007400200074006F00200073006100760065003F0001000100
      0D000A004900440053005F003100370001002000700061006B00650074002000
      6C00E4006700670073002000740069006C006C0020006C006100730074006500
      6E002C002000760069006C006C00200064007500200066006F00720074007300
      E4007400740061003F0001000100200070006B0067002000770069006C006C00
      200062006500200061006400640065006400200074006F0020006C006F006100
      64002C00200064006F00200079006F0075002000770061006E00740020007400
      6F00200063006F006E00740069006E00750065003F0001002000700061006C00
      6C0020006C00E4006700670073002000740069006C006C0020006C0061007300
      740065006E002C002000760069006C006C00200064007500200066006F007200
      74007300E4007400740061003F0001000D000A004900440053005F0031003900
      0100500061006B00650074006E00720020000100500061006B00650074004E00
      7200010050006B0067004E006F000100500061006C006C004E00720001000D00
      0A004900440053005F003200300001002000660069006E006E00730020006900
      6E007400650001000100200064006F006500730020006E006F00740020006500
      7800690073007400010001000D000A004900440053005F003200340001002000
      E400720020007200650073006500720076006500720061007400200061007600
      2000010001002000690073002000720065007300650072007600650064002000
      620079002000010001000D000A004900440053005F0032003500010044006500
      6E0020006800E400720020004C0061007300740020004F007200640065007200
      6E002000E4007200200069006E00740065002000740069006C006C006700E400
      6E0067006C00690067002C0020006B0061006E0073006B00650020004C004F00
      2000730074006100740075007300200069006E00740065002000E40072002000
      610063006300650070007400200065006C006C00650072002000610074007400
      20006100760072006F00700065007400200069006E00740065002000E4007200
      200061006B00740069007600740020006C00E4006E006700720065003F000100
      0100540068006900730020006C006F006100640020006F007200640065007200
      20006900730020006E006F007400200061007600610069006C00610062006C00
      65002C002000700065007200680061007000730020004C004F00200073007400
      610074007500730020006900730020006E006F00740020006100630063006500
      7000740020006F00720020007400680065002000630061006C006C0020006F00
      6600660020006900730020006E006F0074002000610063007400690076006500
      3F00010001000D000A004900440053005F003200380001002000660069006E00
      6E007300200069006E00740065002000690020006C0061006700650072002000
      01000100200064006F006500730020006E006F00740020006500780069007300
      7400200069006E002000730074006F0063006B00010001000D000A0049004400
      53005F003300330001004B006F00640065006E0020006B0075006E0064006500
      200069006E00740065002000F6007600650072007300E4007400740061007300
      2000740069006C006C0020006500740074002000500061006B00650074006E00
      720001000100540068006500200063006F0064006500200063006F0075006C00
      640020006E006F00740020006200650020007400720061006E0073006C006100
      740065006400200074006F0020006100200050006B0067004E006F0001004B00
      6F00640065006E0020006B0075006E0064006500200069006E00740065002000
      F6007600650072007300E40074007400610073002000740069006C006C002000
      6500740074002000500061006C006C006E00720001000D000A00490044005300
      5F00340001004C0061007300740065006E0020006B0061006E002000E4006E00
      64007200610073002E00010001004C006F00610064002000630061006E002000
      6200650020006300680061006E00670065006400010001000D000A0049004400
      53005F0034003700010052006100640065006E0020006C006900670067006500
      7200200069002000E4006E006400720069006E00670073006C00E40067006500
      2C00200073007000610072006100200072006100640065006E00200067006500
      6E006F006D002000700069006C002000750070007000200065006C006C006500
      720020006E006500720020006600F6007200730074002E00010001004C006900
      6E006500200069007300200069006E0020006300680061006E00670065002000
      6D006F00640065002C002000730061007600650020006C0069006E0065002000
      6600690072007300740020006200790020006100720072006F00770020007500
      70002F0064006F0077006E002E00010001000D000A004900440053005F003400
      38000100C400720020006400750020007300E4006B00650072003F0020006D00
      610072006B00650072006100640065002000700061006B006500740020006B00
      6F006D006D0065007200200061007400740020006600F6007300760069006E00
      6E006100200066007200E5006E002000730079007300740065006D0065007400
      210001000100410072006500200079006F007500200073007500720065003F00
      2000530065006C0065006300740065006400200070006B006700730020007700
      69006C006C002000620065002000640065006C00650074006500640020006600
      72006F006D0020007400680065002000730079007300740065006D0021000100
      C400720020006400750020007300E4006B00650072003F0020006D0061007200
      6B00650072006100640065002000700061006C006C0065006E0020006B006F00
      6D006D0065007200200061007400740020006600F6007300760069006E006E00
      6100200066007200E5006E002000730079007300740065006D00650074002100
      01000D000A004900440053005F00340039000100C40072002000640075002000
      7300E4006B00650072003F002000700061006B006500740065006E0020006B00
      6F006D006D0065007200200061007400740020006600F6007300760069006E00
      6E006100200066007200E5006E002000730079007300740065006D0065007400
      210001000100410072006500200079006F007500200073007500720065003F00
      2000530065006C0065006300740065006400200070006B006700730020007700
      69006C006C002000620065002000640065006C00650074006500640020006600
      72006F006D0020007400680065002000730079007300740065006D0021000100
      C400720020006400750020007300E4006B00650072003F002000700061006C00
      6C00610072006E00610020006B006F006D006D00650072002000610074007400
      20006600F6007300760069006E006E006100200066007200E5006E0020007300
      79007300740065006D0065007400210001000D000A004900440053005F003500
      0100430061006E006E006F00740020006300720065006100740065002C002000
      4C006F006100640020006900730020006C006F0063006B006500640020006200
      790020007500730065007200200001004B0061006E00200069006E0074006500
      200073006B006100700061002C0020004C0061007300740065006E002000E400
      720020006C00E50073007400200061007600200061006E007600E4006E006400
      6100720065002000010001004B0061006E00200069006E007400650020007300
      6B006100700061002C0020004C0061007300740065006E002000E40072002000
      6C00E50073007400200061007600200061006E007600E4006E00640061007200
      6500200001000D000A004900440053005F003500300001004400750020006200
      65006700E40072006400650020000100010059006F0075002000720065007100
      7500650073007400650064002000010001000D000A004900440053005F003500
      310001002000700061006B006500740020006D00650064002000640065007400
      2000660069006E006E007300200065006E006400610073007400200001000100
      200070006B006700200077006900740068002000740068006100740020006900
      730020006F006E006C007900200001002000700061006C006C0020006D006500
      640020006400650074002000660069006E006E007300200065006E0064006100
      73007400200001000D000A004900440053005F00350032000100200076006900
      6C006C0020006400750020006C00E40067006700610020000100010020006400
      6F00200079006F0075002000770061006E007400200074006F00200061006400
      64002000010001000D000A004900440053005F00350033000100200070006100
      6B00650074002000740069006C006C0020006C0061007300740065006E003F00
      010001002000700067007300200074006F00200074006800650020006C006F00
      610064003F0001002000700061006C006C002000740069006C006C0020006C00
      61007300740065006E003F0001000D000A004900440053005F00350034000100
      4400650074002000660069006E006E007300200069006E006700610020007000
      61006B0065007400200061007600200070006B0074006B006F00640020000100
      01005400680065007200650020006900730020006E006F00200070006B006700
      20007700690074006800200070006B006700200063006F006400650001004400
      650074002000660069006E006E007300200069006E0067006100200070006100
      6C006C00610072002000610076002000700061006C006C006B006F0064002000
      01000D000A004900440053005F003500350001002000690020006C0061006700
      65007200200001000100200069006E002000730074006F0063006B0020000100
      01000D000A004900440053005F00350036000100530070006100720061002000
      6C0061007300740065006E0020006600F6007200730074002E00010001005300
      610076006500200074006800650020006C006F00610064002000660069007200
      73007400010001000D000A004900440053005F003500380001004C00E4006700
      67002000740069006C006C0020006D0069006E0073007400200065006E002000
      4C004F002E000100010041006400640020006100740020006C00650061007300
      740020006F006E00650020004C004F00010001000D000A004900440053005F00
      350039000100550074006C006100730074006E0069006E006700730064006100
      740075006D0020006600E5007200200069006E00740065002000760061007200
      6100200073007400F6007200720065002000E4006E00200061006B0074007500
      65006C006C007400200064006100740075006D0026007400690064002C002000
      76006100720020007600E4006E006C006900670020006A007500730074006500
      720061002E000100550074006C006100730074006E0069006E00670073006400
      6100740075006D0020006600E5007200200069006E0074006500200076006100
      72006100200073007400F6007200720065002000E4006E00200061006B007400
      750065006C006C007400200064006100740075006D0026002600740069006400
      2C00200076006100720020007600E4006E006C006900670020006A0075007300
      74006500720061002E0001004C006F0061006400650064002000640061007400
      65002000630061006E006E006F00740020006200650020006C00610074006500
      720020007400680061006E002000630075007200720065006E00740020006400
      610074006500200061006E0064002000740069006D0065002C00200070006C00
      65006100730065002000610064006A007500730074002E000100550074006C00
      6100730074006E0069006E006700730064006100740075006D0020006600E500
      7200200069006E007400650020007600610072006100200073007400F6007200
      720065002000E4006E00200061006B007400750065006C006C00740020006400
      6100740075006D00260026007400690064002C00200076006100720020007600
      E4006E006C006900670020006A007500730074006500720061002E0001000D00
      0A004900440053005F00360001004C00E4006E006700640020006D0061007400
      6300680061007200200065006A0020006C00E4006E0067006400670072007500
      7000700065006E00010001004C0065006E00670074006800200064006F006500
      730020006E006F00740020006D00610074006300680020007400680065002000
      6C0065006E006700740068002000670072006F0075007000010001000D000A00
      4900440053005F003600300001004D0061006E00750065006C006C0020006B00
      6F00700070006C0069006E00670001004D0061006E00750065006C006C002000
      6D0061007400630068006E0069006E00670001004D0061006E00750061006C00
      20006D00610074006300680001004D0061006E00750065006C006C0020006D00
      61007400630068006E0069006E00670001000D000A004900440053005F003600
      3100010054006100200062006F00720074002000700061006B00650074006500
      6E00200066007200E5006E0020006C0061007300740065006E0020006600F600
      7200730074002E0001000100520065006D006F0076006500200070006B006700
      73002000660072006F006D00200074006800650020006C006F00610064002000
      66006900720073007400010001000D000A004900440053005F00360032000100
      C400720020006400750020007300E4006B00650072003F000100010041007200
      6500200079006F007500200073007500720065003F00010001000D000A004900
      440053005F003600330001004100760073006C0075007400610020006C006100
      7300740065006E000100010043006F006D0070006C0065007400650020007400
      6800650020006C006F0061006400010001000D000A004900440053005F003600
      340001004C00E400670067002000740069006C006C00200065006E0020004C00
      4F0020006600F6007200730074002E0001000100410064006400200061002000
      4C004F00200066006900720073007400010001000D000A004900440053005F00
      3600350001005600E4006C006A00200065006E0020004C006100670065007200
      6700720075007000700020006600F6007200730074002E000100010053006500
      6C00650063007400200061002000730074006F0063006B002000670072006F00
      75007000200066006900720073007400010001000D000A004900440053005F00
      3600360001005600E4006C006A0020006C00610067006500720020006600F600
      7200730074002E0001005600E4006C006A0020006C0061006700650072002000
      6600F6007200730074000100530065006C006500630074002000730074006F00
      63006B0020006600690072007300740001005600E4006C006A0020006C006100
      67006500720020006600F60072007300740001000D000A004900440053005F00
      3600380001005300630061006E006E006100200065006E006400610073007400
      200069006E002000700061006B006500740020006D006500640020006C006500
      76006500720061006E007400F600720073006B006F0064002000010001004F00
      6E006C00790020007300630061006E00200070006B0067002000770069007400
      6800200073007500700070006C00690065007200200063006F00640065000100
      53006B0061006E006E006100200065006E00640073007400200069006E002000
      700061006C006C006100720020006D006500640020006C006500760065007200
      61006E007400F600720073006B006F00640001000D000A004900440053005F00
      370001004F004B00010001004F004B00010001000D000A004900440053005F00
      380001004200410044005F0050004B00470001000100010001000D000A004900
      440053005F003800310001005600610072006E0069006E006700210020005500
      74006C006100730074006100640065002000700061006B006500740020007300
      7400E4006D006D0065007200200069006E00740065002000F600760065007200
      65006E00730020006D0065006400200061006E00740061006C00200070006100
      6B006500740020007000E50020006F0072006400650072000100010057006100
      72006E0069006E006700210020004C006F006100640065006400200070006B00
      67007300200064006F0020006E006F00740020006D0061007400630068002000
      74006800650020006E006F0020006F006600200070006B006700730020006F00
      6E0020006F007200640065007200210001005600610072006E0069006E006700
      21002000550074006C006100730074006100640065002000700061006B006500
      7400200073007400E4006D006D0065007200200069006E00740065002000F600
      76006500720065006E00730020006D0065006400200061006E00740061006C00
      2000700061006C006C006100720020007000E50020006F007200640065007200
      01000D000A004900440053005F00380032000100560069006C006C0020006400
      75002000E4006E006400720061002000740069006C006C002000640061006700
      65006E007300200064006100740075006D003F000100010044006F0020007900
      6F0075002000770061006E007400200074006F0020006300680061006E006700
      6500200074006F00200074006F00640061007900730020006400610074006500
      3F00010001000D000A004900440053005F003800330001004600F6006C006A00
      650073006500640065006C0020006200690066006F006700610064002E002000
      01000100540061006C006C007900200061007400740061006300680065006400
      010001000D000A004900440053005F003800340001004C006F00610064002000
      740061006C006C0079002000610074007400610063006800650064002E002000
      01004600F6006C006A00650073006500640065006C0020006200690066006F00
      6700610064000100540061006C006C0079002000610074007400610063006800
      6500640001004600F6006C006A00650073006500640065006C00200062006900
      66006F0067006100640001000D000A004900440053005F003800350001004C00
      61007300740065006E0020006B0061006E00200069006E007400650020007300
      E40074007400610073002000740069006C006C0020007000720065006C006900
      6D0069006E00E400720020006600F60072002000610074007400200064006500
      6E002000E4007200200061006E006B006F006D00730074007200650067006900
      73007400720065007200610064002E00010001004C006F006100640020006300
      61006E006E006F00740020006200650020006300680061006E00670065006400
      200074006F0020005000720065006C0069006D0069006E006100720079002000
      6200650063006100750073006500200069007400200068006100730020006200
      650065006E0020006100720072006900760061006C0020007200650067006900
      730074006500720065006400010001000D000A004900440053005F0038003900
      010020007000720065006600690078003A000100200070007200650066006900
      7800010020007000720065006600690078000100200070007200650066006900
      780001000D000A004900440053005F00390001004200410044005F004C004500
      4E00470054004800200001000100010001000D000A004900440053005F003900
      390001002000E4007200200072006500640061006E00200069006E006D006100
      74006100740001000100200069007300200061006C0072006500610064007900
      200065006E0074006500720065006400010001000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00450064006900740031002E00540065007800740001004500
      640069007400310001000100010001000D000A00640078004200610072005300
      700069006E00450064006900740043006F006E00740065006E0074002E005400
      6500780074000100300001000100010001000D000A0054006F00750063006800
      4B006500790062006F0061007200640031002E004C00610079006F0075007400
      01005300740061006E0064006100720064000100010044006500660061007500
      6C007400010001000D000A0054006F007500630068004B006500790062006F00
      61007200640032002E004C00610079006F007500740001004E0075006D005000
      6100640001000100010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006900
      6D006700630062005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0030005D002E004400
      650073006300720069007000740069006F006E0001005000720065006C006900
      6D0069006E00E4007200010001005000720065006C0069006D0069006E006100
      72007900010001000D000A0069006D0067006300620053007400610074007500
      73002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E004400650073006300720069007000740069006F00
      6E000100500072006F0062006C0065006D0020006C0061007300740001000100
      500072006F0062006C0065006D0020006C006F0061006400010001000D000A00
      69006D006700630062005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0032005D002E00
      4400650073006300720069007000740069006F006E0001004100760073006C00
      75007400610064000100010043006F006D0070006C0065007400650064000100
      01000D000A006C0063004C006F00630061006C00530068006900700070006500
      72002E00500072006F0070006500720074006900650073002E004C0069007300
      740043006F006C0075006D006E0073005B0030005D002E004300610070007400
      69006F006E00010043006C00690065006E0074004E0061006D00650001000100
      010001000D000A006C006300460072006F006D002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100430069007400
      79004E0061006D00650001000100010001000D000A006C00630054006F002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E00010043006900740079004E0061006D00650001000100010001000D000A00
      6C0063004C00490050002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001004C00490050004E0061006D0065000100
      0100010001000D000A006C0063004C00490050002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0031005D002E00430061007000740069006F006E000100500049005000
      4E0041004D00450001000100010001000D000A006C0063005000490050002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001005000490050004E0041004D00450001000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0030005D002E00430061007000740069006F006E0001004D00410054004300
      480001000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0030005D002E00430061007000740069006F00
      6E0001004F00540048004500520001000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540066004C006F006100640045006E007400720079005300530050000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00500061006E0065006C00310001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00500061006E0065006C0032000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078004200
      7500740074006F006E0031000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780042007500
      740074006F006E0032000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800420075007400
      74006F006E0033000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00640078004200610072004D00
      61006E00610067006500720031000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720032000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0070006D0050006B006700
      73000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A0070006D004C004F004E0075006D0062006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00700070006D0065006E0075004C004F005F00
      4C0069006E00650073000100440045004600410055004C0054005F0043004800
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
      0A00630078005300740079006C00650063006C0053006B00790042006C007500
      65000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00630078005300740079006C00650047007200
      650065006E000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00630078005300740079006C006500
      4F00720061006E00670065000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780053007400
      79006C0065004F00720061006E00670065003200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C006500520065006400320001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650047007200650065006E00320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00630078005300740079006C00650043006F006E0074006500
      6E00740032000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A0070006D005000720069006E007400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A0070006D004D0065006E0075004F00700074006900
      6F006E0073000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A006200740054006500780074005000
      610064000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0062007400540065007800740050006100
      6400460053000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00620074004E0075006D0050006100
      64000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A006300780042007500740074006F006E003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A0070006D005200650070006F007200740001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00}
  end
  object ActionList2: TActionList
    Left = 300
    Top = 175
    object acTextPad: TAction
      Caption = 'TextPad'
      OnExecute = acTextPadExecute
    end
    object acTextPadFS: TAction
      Caption = 'TextPad'
      OnExecute = acTextPadFSExecute
    end
    object acNumPad: TAction
      Caption = 'NumPad'
      OnExecute = acNumPadExecute
    end
    object acShowPkgLogg: TAction
      Caption = 'Show log'
      ImageIndex = 1
      OnExecute = acShowPkgLoggExecute
    end
  end
  object pmReport: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
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
        ItemName = 'dxBarButton15'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 408
    Top = 418
  end
end
