object fLoadEntrySSP: TfLoadEntrySSP
  Left = 247
  Top = 145
  Caption = 'LAST (SSP)'
  ClientHeight = 786
  ClientWidth = 1235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 1235
    Height = 786
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object dxPageControl1: TcxPageControl
      Left = 0
      Top = 82
      Width = 1235
      Height = 231
      Align = alTop
      Constraints.MinHeight = 198
      TabOrder = 0
      Visible = False
      Properties.ActivePage = tsLoadData
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.SkinName = ''
      ClientRectBottom = 231
      ClientRectRight = 1235
      ClientRectTop = 24
      object tsLoadData: TcxTabSheet
        Caption = 'Leveranshuvud'
        object pLoadHead: TPanel
          Left = 0
          Top = 0
          Width = 1235
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object detLoaded: TcxDBDateEdit
            Left = 80
            Top = 25
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
            OnEnter = detLoadedEnter
            OnExit = detLoadedExit
            Width = 145
          end
          object imgcbStatus: TcxDBImageComboBox
            Left = 80
            Top = 52
            DataBinding.DataField = 'SenderLoadStatus'
            DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
            ParentFont = False
            Properties.Images = dmsConnector.cxImageListLoadStatus
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
            Top = 28
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
            Top = 28
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
            Top = 54
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
            Transparent = True
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
            Transparent = True
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
            Transparent = True
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
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 237
            Top = 29
            Caption = 'FS:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
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
            Transparent = True
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
            Transparent = True
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
            Transparent = True
          end
          object lcLIP: TcxDBLookupComboBox
            Left = 904
            Top = 29
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
            Transparent = True
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
            Transparent = True
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
            Transparent = True
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
          Top = 81
          Width = 1235
          Height = 62
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
            Width = 1233
            Height = 60
            Align = alClient
            TabOrder = 0
            object grdLODBTableView1: TcxGridDBTableView
              PopupMenu = pmLONumber
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
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
          Top = 143
          Width = 1235
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
            Width = 1233
            Height = 62
            Align = alClient
            TabOrder = 0
            object grdAddressDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
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
        object meInternalNote: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'InternalNote'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          TabOrder = 0
          Height = 207
          Width = 1235
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1235
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 55
        Align = alClient
        TabOrder = 0
        object dxBarDockControl1: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 1102
          Height = 45
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel7: TPanel
        Left = 1165
        Top = 0
        Width = 70
        Height = 55
        Align = alRight
        TabOrder = 1
        object dxBarDockControl2: TdxBarDockControl
          Left = 1
          Top = 1
          Width = 68
          Height = 45
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object Panel6: TPanel
        Left = 1104
        Top = 0
        Width = 61
        Height = 55
        Align = alRight
        TabOrder = 2
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 6
          Top = 12
          DataBinding.DataField = 'SenderLoadStatus'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.Images = dmsConnector.cxImageListLoadStatus
          Properties.ImmediateDropDownWhenKeyPressed = False
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
          Properties.ShowDescriptions = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 0
          Width = 51
        end
      end
    end
    object PanelNote: TPanel
      Left = 0
      Top = 55
      Width = 1235
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
        Width = 1233
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 313
      Width = 1235
      Height = 473
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object Splitter1: TSplitter
        Left = 0
        Top = 152
        Width = 1235
        Height = 4
        Cursor = crVSplit
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        Color = clYellow
        ParentColor = False
        ExplicitWidth = 1237
      end
      object PanelPackages: TPanel
        Left = 0
        Top = 156
        Width = 1235
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
          Width = 1235
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
            Width = 115
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
            Left = 449
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
            Left = 552
            Top = 2
            Width = 129
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
          end
          object btNumPad: TcxButton
            Left = 1158
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
            Left = 1172
            Top = 1
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
            Left = 1058
            Top = 3
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
            Left = 677
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
          Width = 1235
          Height = 280
          Align = alClient
          PopupMenu = pmPkgs
          TabOrder = 1
          object grdPkgsDBBandedTableView1: TcxGridDBBandedTableView
            OnKeyDown = grdPkgsDBBandedTableView1KeyDown
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
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
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
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
              Properties.Alignment = taRightJustify
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
              Properties.Alignment = taRightJustify
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
              Properties.Alignment = taRightJustify
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
              Properties.Alignment = taRightJustify
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
          Left = 791
          Top = 19
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
        Width = 1235
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        Constraints.MinHeight = 81
        TabOrder = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1235
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
          Width = 1235
          Height = 136
          Align = alClient
          PopupMenu = ppmenuLO_Lines
          TabOrder = 1
          object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
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
                Caption = 'LO Rows'
                Width = 897
              end>
            object grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MATCH'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
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
              Width = 37
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
              Width = 181
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
              Caption = 'L'#228'ngdbesk.'
              DataBinding.FieldName = 'LENGTHDESC'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 71
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Internnotering: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Internnotering'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 128
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOOFUNITS'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VOLUNIT'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 49
              Position.BandIndex = 1
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRICE'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Filtering = False
              Width = 38
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
              Width = 80
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
              Width = 59
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
              Width = 61
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
            object grdLORowsDBBandedTableView1Lagerkod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Lagerkod'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 38
              Position.BandIndex = 1
              Position.ColIndex = 46
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
              Properties.Alignment = taRightJustify
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 48
              Position.BandIndex = 1
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CERTI'
              Width = 39
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
              Width = 83
              Position.BandIndex = 1
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1PkgDiff: TcxGridDBBandedColumn
              Caption = 'Diff'
              DataBinding.FieldName = 'PkgDiff'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle
              Width = 95
              Position.BandIndex = 1
              Position.ColIndex = 45
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Paketstorlek'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 93
              Position.BandIndex = 1
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object grdLORowsDBBandedTableView1LoadingAddressNo: TcxGridDBBandedColumn
              Caption = 'Prepaid'
              DataBinding.FieldName = 'LoadingAddressNo'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Position.BandIndex = 0
              Position.ColIndex = 1
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
    ImageOptions.LargeImages = cxImageList1
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
    Left = 904
    Top = 288
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
          ItemName = 'dxBarLargeButton14'
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
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoSerie'
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
    object dxBarLargeButton13: TdxBarLargeButton
      Action = acMailaFS
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = acSetLoadReady
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
    PixelsPerInch = 96
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
    PixelsPerInch = 96
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 800
    Top = 400
    Bitmap = {
      494C01010C001800040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000831E18ED912A
      20E4802F2CE4223E80E6223A89E61F3795E6183498E71831A1E7182BB2E71E36
      96E6223B8AE6263E7EE643648CBEEFF1F5100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C2F1CFFAF3B
      22FF943F30FF28257EFF211C9AFF1813B7FF000BB0FF0000C8FF0000FFFF120E
      C5FF1B18A6FF262386FF3A527DD3ECEFF3130000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000104A1000104A1000104A
      1000104A10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD4028FFC44F
      2FFFA14A39FF0E2550FF072073FF082470FFD8A18FFFFFFFFFFFD7E5DFFF2139
      91FF000E92FF090C8CFF3C5580CEEFF2F5100000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000ADAD
      FD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A1000108C180039CE390039CE
      390063AD6300428C420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5472DFFC254
      35FFC95A39FF18205DFF0D119AFF283171FFA96C62FFECD8D7FFFFFFFFFFFCF6
      CEFFA8AD9EFF4A5D83FF2D4C7ED7E7EDF21A0000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C1800108C180039CE390039CE390039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B94B31FFC95C
      3BFFDD653BFF071AA0FF07149AFF503546FFE4CFCEFFB68181FFB17D7EFFFFEC
      CFFFFFFFD0FFFFFFD1FF3D5987F4D0DCE8360000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000108C180039CE390042CE420042CE420039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFBFC0583A3C39AF3F6F90D00000000BF5335FFE46C
      40FF995C4AFF0004B8FF5A4E60FFF8E5DCFFD4A994FFB57968FFB67F7DFFFFFC
      F9FFDFC1C4FF8C4646FF9EAFCEFFA2BCD5750000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      00000000000000000000108C180039CE390073DE730063DE63005AD65A004AD6
      4A0042C6420063AD6300108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000089A4C38D8DBEF0FF6E9CC7B6F5F7F90BC25233FFE270
      3EFF433B6FFF162191FFC16235FFBE4D32FFDAAF99FFECD8B6FFF6E5BBFF652F
      58FDB78481FC9C6B70FFB8DAFDFF89A6C7970000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      000000000000428C4200108C180073DE730073DE730073DE730073DE730063DE
      63005AD65A0039CE3900108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5C5D75379A3D4FDA5D2FFFF88BDF2FF89A7C694CB512CFFBD67
      41FF0619AAFF634B63FFFF8E52FFF48153FFB14025FFA6422DFFC0896BFF3036
      8ECF818B9F8E9C98B0FEBDE0FFFF789BC1BA0000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000428C4200108C180073DE730073DE7B0073DE730073DE730039CE390073DE
      730073DE730073DE730039CE3900108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5B9CF66A3C4E7FFCDEEFFFFB0D8FFFFA1DDFFFF7C5F75FFC4562BFF3431
      82FF0000FFFFC55529FFBA4D30FFE97C50FFE2754BFFB34527FFC75239FFA6AB
      BC5E7C9DC1C3B4DAFFFFB0D8FFFF6992C0E10000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B0000000000000000000000000000000000108C
      1800428C420094F79C0094F79C0084EF8C0073DE730039CE3900108C180039CE
      390073DE730073DE730073DE7300108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007998BBAFD3EEFFFFCFEDFFFF9FD5FFFF87819EFF891F11FFAE5833FF060F
      C1FF0000F6FFCE572DFFA93F27FFA93C25FFA23722FFA73821FFB04734FF8525
      1CE996899FFFB4EBFFFF9BC8F8FF7D9FC3A80000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000108C180073DE
      730094F79C0094F79C0094F79C0094F79C0039CE3900108C180000000000108C
      180073DE730073DE730073DE730073DE7300108C180000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFC
      FD047199C2F3DAF7FFFFCCECFFFF61536DE98C1F13FFB13F25FF7D4845FF0000
      E9FF0A13C6FFC65331FFAB3F27FFA93C26FFA33622FFA43823FFB74B31FFD45F
      39FF922E24FF8A90B4FF72AADFFAC4D2E1440000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C940000000000000000000000000063AD630073DE
      730094F79C0094F79C0073DE7300108C1800428C42000000000000000000428C
      420039CE390073DE7B0084EF8C0073DE730039CE3900428C4200000000000000
      00000000000000000000000000000000000000000000000000007EABD39EA2D3
      FFFFA1C8F2FF77A1CDD8D2E0EC30EDE2E21D8C2B21E7AC3E26FF282586FF0000
      FFFF3F284BFFAD4128FFAC4028FFC75837FFD56741FFD16440FFC75735FF8933
      2FFF9D2A13FFB24026FFD8C5C73A000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C0000000000000000000000000063AD630039CE
      390073DE730039CE3900108C1800000000000000000000000000000000000000
      0000108C180073DE730094F79C0094F79C0073DE730063AD6300000000000000
      000000000000000000000000000000000000D1B4B44BB1949B71686688F7998A
      A5FF5C8FC3FF7B86A3AFCFC5CB42D1B4B44B9C5B5BA49D2C19FF0415B1FF0000
      F3FF59292CFF7F150BFF9B301CFF881E11FFCC5E3BFFC85736FF922919FFFAF5
      F7FFBA8281FF83221CFE00000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C000000000000000000000000000000000063AD
      630063AD630063AD630000000000000000000000000000000000000000000000
      000000000000108C180094F79C0094F79C0094F79C0073DE7300108C18000000
      000000000000000000000000000000000000A25F5FE7E3C4C1FFE2BEBBFFDDBC
      B5FF4178B1FFA9A4A9FFE4B99EFFC58E7AFFBA91916E973D38C7000AD4FF000D
      C6FF913D20FF781109FFBB4626FFB94A30FFB2462BFFC25435FF9D311DFFFEFA
      FBFFE5CECEFFAC7A7A8C00000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063AD630094F79C0094F79C0094F79C0073DE7300428C
      420000000000000000000000000000000000B37A78DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEECFFF5E5C8FFF2E0C2FFE3BDA7FFC6A2A25D000000008695B4792341
      7FEAB3C7DDFFBBE4FEFFABCDF2FF823839FF872A26DD933F3CC6943E3AC8C8A7
      A758000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063AD630094F79C0094F79C0084EF8C0039CE
      390063AD6300000000000000000000000000B37A73DFFFFFFFFFFFFFFFFFFFFF
      FFFFFEF8EBFFEBDEC5FFEDDEC2FFE3BEAAFFC7A3A35C00000000000000007F9C
      B8906698CAFF6492C6FF67A2D8FF6C81A8FFE9DBDB24FCFBFB04FCFBFB040000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E7000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039CE390094F79C00A5F7A50094F7
      9C0039CE390063AD63000000000000000000B47973DFFCF6EBFFFDF9F2FFFFFD
      F8FFFFFFFFFFFFFFFFFFFFFFF8FFE4C2B1FFC8A3A35C00000000CAD8E63D729D
      C9EAB4DAFFFFACD6FFFF85B5E9FF3E7AB6F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE630000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039CE3900BDFFBD00BDFF
      BD0094F79C0039CE390063AD630000000000B6796DDFEFE0C4FFEFE4CDFFF7F2
      E2FFFFFFFFFFFFFFFFFFEEE4CDFFE6CABEFFC7A2A25D000000007DAFDBF1E2FF
      FFFFE2FFFFFFC4EDFFFFB8E4FFFF7BA8DAFFB3BFD04C00000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE630000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039CE3900BDFF
      BD00BDFFBD0094F79C0063AD630000000000AD6B5DEAF7E0C8FFF7E6D4FFF9EE
      E5FFFEF7F7FFFEF7F7FFFEF7F7FFDBBCB7FFC6A2A25DFBF9F90677637AFDA880
      89FFA9858BFFA1A0B8FFAACBEAFF4384B9FF537FA4B0FCFCFD03000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039CE
      3900BDFFBD0073DE730063AD630000000000B27C7B88B07C7A9CB07D7C9CB07D
      7D9CB07D7D9CB07D7D9CB07D7D9CAB75729EE3D2D22DB383837CAE351AFFC04C
      28FFD86438FFC45333FF9D3E32FF473852FF387FAECCF3F4F70C000000000000
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
      0000000000000000000000000000000000000000000000000000770C06FF7A0E
      06FF7D2525FF9B2D1BFFC15335FFAD3F27FFA664649B00000000000000000000
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
      00000000000000000000000000000000000000000000000000008C2014F97C0F
      09FFCDADB1FFBB4829FFF78958FFD06340FFC098986700000000000000000000
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
      00000000000000000000000000000000000000000000000000009B4B45BF8D20
      13FFA03B2BFFBA4D31FFEB7E51FFCC5E3BFFEFE6E61900000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DAC3
      C33CA26666998E2E25E39F514ABACAABAB540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFE00FFFFFFFFFFC000FFFFFFF8
      003FFFFFFFFFC000C00003F0001FFF87FFFFC000C00003E0000FFF03FFFFC000
      C00003C00007FE03FFFFC000C00003800003FE03FFFC4000C00003800003FC01
      FFFC0000C00003800001F801FFF80000C00003000001F000FFF00000C0000300
      0001E000FFF00000C00003000001C0207FE00000C00003000001C0603FC00001
      C00003000001C1F03F000003C00003000001E3F81F000003C00003000001FFFC
      0F00400FC00003000001FFFE0700601FC00003000001FFFF030040FFC0000380
      0003FFFF8100407FC00003800003FFFFC100003FC00003C00007FFFFE100003F
      E00007E0000FFFFFF3FFC07FFFFFFFF0001FFFFFFFFFC07FFFFFFFF8003FFFFF
      FFFFC07FFFFFFFFC007FFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
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
    PixelsPerInch = 96
  end
  object ActionList1: TActionList
    Images = cxImageList1
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
      Visible = False
      OnExecute = acRemovePkgFromSystemExecute
      OnUpdate = acRemovePkgFromSystemUpdate
    end
    object acRemoveAllPkgsFromSystem: TAction
      Caption = 'Ta bort alla paket fr'#229'n systemet'
      Visible = False
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
      ImageIndex = 11
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
    object acSetLoadReady: TAction
      Caption = 'Ready'
      ImageIndex = 12
      OnExecute = acSetLoadReadyExecute
      OnUpdate = acSetLoadReadyUpdate
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    SkinName = 'Silver'
    Left = 112
    Top = 674
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 289
    Top = 447
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
    Top = 399
    PixelsPerInch = 96
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
    PixelsPerInch = 96
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
    Style.Shadow = False
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
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
    Left = 696
    Top = 321
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = grdLORows
    PopupMenus = <>
    Left = 480
    Top = 392
  end
  object siLangLinked_fLoadEntrySSP: TsiLangLinked
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
    Left = 728
    Top = 240
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
      640065000D000A00640078004200610072005300700069006E00450064006900
      740043006F006E00740065006E0074002E005400650078007400010030000100
      0100010001000D000A0054006F007500630068004B006500790062006F006100
      7200640031002E004C00610079006F007500740001005300740061006E006400
      61007200640001000100440065006600610075006C007400010001000D000A00
      54006F007500630068004B006500790062006F0061007200640032002E004C00
      610079006F007500740001004E0075006D005000610064000100010001000100
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A0069006D0067006300620053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0030005D002E004400650073006300720069007000
      740069006F006E0001005000720065006C0069006D0069006E00E40072000100
      01005000720065006C0069006D0069006E00610072007900010001000D000A00
      69006D006700630062005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0031005D002E00
      4400650073006300720069007000740069006F006E000100500072006F006200
      6C0065006D0020006C0061007300740001000100500072006F0062006C006500
      6D0020006C006F0061006400010001000D000A0069006D006700630062005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0032005D002E00440065007300630072006900
      7000740069006F006E0001004100760073006C00750074006100640001000100
      43006F006D0070006C006500740065006400010001000D000A006C0063004C00
      6F00630061006C0053006800690070007000650072002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010043006C00
      690065006E0074004E0061006D00650001000100010001000D000A006C006300
      460072006F006D002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043006900740079004E0061006D0065000100
      0100010001000D000A006C00630054006F002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E0001004300690074007900
      4E0061006D00650001000100010001000D000A006C0063004C00490050002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001004C00490050004E0061006D00650001000100010001000D000A006C00
      63004C00490050002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0031005D002E004300
      61007000740069006F006E0001005000490050004E0041004D00450001000100
      010001000D000A006C0063005000490050002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E0001005000490050004E00
      41004D00450001000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E0001004D00410054004300480001000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0030005D002E00430061007000740069006F006E0001004F00540048004500
      520001000100010001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00540066004C006F006100
      640045006E007400720079005300530050000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A005000
      61006E0065006C0031000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00500061006E0065006C00
      32000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A006300780042007500740074006F006E003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A006300780042007500740074006F006E0032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A006300780042007500740074006F006E00330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A0070006D0050006B006700730001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A0070006D004C004F004E0075006D0062006500720001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00700070006D0065006E0075004C004F005F004C0069006E00650073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00630078005300740079006C006500590065006C006C00
      6F0077000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065005200
      650064000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065004100
      7100750061000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00630078005300740079006C006500
      42006C00750065000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      6500530069006C007600650072000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078005300
      740079006C006500480065006100640065007200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C00650043006F006E00740065006E00740001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00630078005300740079006C00650043006F006E0074006500
      6E0074004F00640064000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C00650063006C0053006B00790042006C007500650001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650047007200650065006E00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C0065004F00720061006E0067006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00630078005300740079006C0065004F0072006100
      6E006700650032000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      650052006500640032000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C00650047007200650065006E0032000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650043006F006E00740065006E0074003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A0070006D005000720069006E007400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      70006D004D0065006E0075004F007000740069006F006E007300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A006200740054006500780074005000610064000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A0062007400540065007800740050006100640046005300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00620074004E0075006D0050006100640001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A006300780042007500740074006F006E003400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      70006D005200650070006F00720074000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
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
    Left = 384
    Top = 394
    PixelsPerInch = 96
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 152
    Top = 256
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 15794464
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000020000000000000000000000000000
          0002000000080000001000000014000000140000001400000014000000140000
          0014000000140000001500000015000000150000001500000015000000150000
          00160000001600000016000000130000000C0000000400000000000000010000
          00071E151163583E33FD593D33FF583C32FF5A3F37FFC48B5BFFBE8353FFBB7D
          4DFFB8794AFFB67545FFB37141FFB06C3CFFAD6938FFAB6535FFA86232FF6D43
          2EFF4F342CFF4F342CFF4E342DFE2519158B0000000C00000002000000010000
          000B3E2B24B0816458FF75554AFF74544AFF62483FFFE8C491FFE4BC85FFE3B8
          80FFE3B67CFFE1B379FFE0B176FFDFAF73FFDEAC70FFDDAB6EFFDDA96BFF815E
          44FF6B4C42FF6B4C42FF6B4D43FF4F352CFC0000001200000003000000010000
          000C402D26B186685CFF78584DFF78594DFF674D43FFE2C192FFDEB986FFDBB4
          7DFFDBB17AFFDAAF77FFD9AD74FFD9AA71FFD7A86EFFD7A66BFFD6A569FF815F
          45FF6C4E44FF6D4E44FF6D4F45FF51362EFF0000001400000003000000010000
          000C443028B18C6E63FF7D5D51FF7C5C50FF6C5247FFFAF4F1FFF9F2EFFFF7F1
          ECFFF7F0EBFFF6EFE9FFF5EEE9FFF5EEE8FFF4ECE7FFF3ECE6FFF4EBE5FF8D79
          72FF6F5046FF6E5046FF705247FF523830FF0000001400000003000000010000
          000B46332AB1927567FF826254FF816255FF6F564BFFFAF6F3FFF1E6E0FFEBDE
          D5FFE8D7CFFFE6D5CDFFE5D3CAFFE3D0C8FFE2CEC4FFE0CCC3FFF4ECE6FF917C
          74FF715349FF705249FF72544AFF533A31FF0000001300000003000000010000
          000A49362DB0987B6DFF866659FF866758FF745B4FFFFBF7F5FFF2E7E1FFECDF
          D8FFE9DAD1FFE7D6CEFFE5D4CBFFE4D1C9FFE2CFC6FFE1CDC4FFF5ECE7FF937F
          77FF73554CFF72544BFF74574DFF553C33FF0000001200000003000000000000
          000A4C3930B09E8275FF8B6C5DFF8B6C5DFF796053FFFBF8F6FFE4D1C7FFD8BC
          AEFFD2B5A6FFCCA999FFC8A392FFC59E8EFFC19888FFBD9283FFF5EEE8FF9682
          7AFF75594EFF74584DFF775A51FF573D35FF0000001200000003000000000000
          000A4F3C33B0A38A7AFF907162FF8F7163FF7D6356FFFCF9F8FFFBF8F5FFFAF7
          F4FFFAF6F3FFF9F4F1FFF8F2EFFFF8F2EEFFF7F1EDFFF6F0ECFFF6EFEAFF9985
          7DFF775C51FF765A50FF7A5F54FF5A4138FF0000001100000003000000000000
          0009533F35AFA99081FF957766FF947767FF846B5CFFAB988FFFAB988EFFAA98
          8EFFA9978EFFA6948AFFA18F86FFA08E85FF9E8D84FF9E8C84FF9D8B82FF7F68
          5EFF7A5F54FF795E52FF7D6357FF5D433AFF0000001000000002000000000000
          0009574438AFB09687FF997C6BFF9A7E6BFF9A7D6CFF997D6BFF997E6BFF997E
          6CFF987E6DFF977C6BFF82675BFF7F665AFF7F6659FF7F655AFF7F6559FF7E63
          57FF7C6255FF7B6155FF7F675BFF5E463CFF0000001000000002000000000000
          00085A473BAFB49C8EFF9E8170FF9E826FFF9E8270FF9E8271FF9E8371FF9E83
          71FF9D8271FF9D8371FF927868FF83695DFF82695DFF82685CFF81685BFF8066
          5AFF806559FF7E6358FF84695FFF61483FFF0000000F00000002000000000000
          00085D493DAFBAA293FFA38673FFA58C78FFA8907DFFA98F7EFFA88F7DFFA88F
          7DFFA88F7DFFA68E7DFFA58B7BFF8F776AFF8A7166FF8A7164FF887064FF866D
          63FF846C5FFF80665AFF866D61FF634A40FF0000000E00000002000000000000
          0008604D41AEBFA898FFA68A78FFAD9381FF6E5449FF543931FF5C413AFF654B
          43FF624940FF60473DFF5E453CFF5C443AFF5B433AFF5A4238FF584037FF6048
          3FFF887164FF83695DFF897165FF654C42FF0000000E00000002000000000000
          0007635043AEC3AE9EFFAA8F7BFFB09783FF563A33FF5D4740FF70564CFFE9DB
          D1FFDDC6B7FFDCC5B5FFDBC4B4FFCCB5A5FFB8A295FFBCA79BFFC8B4A7FF8670
          67FF8A7267FF846B5FFF8C7569FF675045FF0000000D00000001000000000000
          0006665245AEC7B3A2FFAD937EFFB39A86FF583C34FF5E4942FF72584FFFEEE1
          D8FFE0CCBEFFE0CBBCFFDFCABAFFB19B8FFF61483FFF694E44FF977F73FF8974
          6AFF8C7468FF866D61FF8F776BFF695147FF0000000C00000001000000000000
          0006685447ADCAB6A7FFB29681FFB69C89FF593C35FF5F4A43FF745A51FFF2E7
          DFFFE5D3C5FFE3D2C3FFE3D0C1FFB29F92FF584039FF5E433BFF9B8378FF8D79
          6FFF8E7469FF877065FF917A6FFF6B5348FF0000000C00000001000000000000
          00066A5648ADCEBBABFFB49A84FFB99F8BFF593D35FF604B44FF765D53FFF5EC
          E6FFE9D9CCFFE8D8CAFFE7D7C9FFB4A397FF523A33FF563C35FF9E877CFF917D
          73FF8F776AFF8A7166FF947D71FF6C554AFF0000000B00000001000000000000
          00056C594AADD0BDAFFFB79C87FFBAA18DFF5B3E37FF604B45FF785F56FFF7F1
          ECFFEDDFD2FFECDED0FFEBDDCFFFB5A59BFF4B3832FF4C3932FF8B7A73FF9481
          78FF8F776BFF8B7267FF967F74FF6D564BFF0000000A00000001000000000000
          00046B5949A8D2BFB0FFD3C1B2FFD5C4B4FF5B3F37FF614C45FF7A6057FFF9F4
          F0FFF9F5F0FFF9F4EFFFF8F3EEFFF8F2EDFFF7F1EBFFF7F1EBFFF6EFEAFF9684
          7DFFB4A399FFB29F96FFB09C94FF6E564CFC0000000800000001000000000000
          0002241E193C6D5A4CAA705D4EAC705E4FAC57453BAC4E3C33AD534039AD7062
          5CAD6F605AAD6D5F59AD6C5D56AD6A5B54AD685852AD665650AD64544EAD4F3F
          39AD4D3F36AD4C3E36AD4A3B34AB2E2520700000000400000001000000000000
          0000000000020000000400000004000000040000000400000005000000050000
          0005000000050000000500000005000000050000000600000006000000060000
          0006000000060000000600000005000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000043024
          204F3A2C27603A2C27603A2C27603A2B26603A2B26603A2B2660392B2660392B
          2560392A2560392A2560392A2560392A2561392A246138292461382924613829
          246138292461382924613829236138282362322520580D0A081D0000000CB595
          8AF1E1CFC8FFE1CFC8FFE0CFC8FFE1CEC7FFE0CEC7FFE0CEC7FFE0CEC6FFDFCE
          C6FFDFCDC5FFDFCDC6FFDFCCC5FFDFCCC5FFDECBC4FFDECCC4FFDECBC3FFDECC
          C3FFDECBC3FFDECBC3FFDDCAC3FFDDCAC2FFC7ADA3F8342622580000000ECAAB
          A1FFF8F1ECFFF7EFE9FFF7EFE9FFF6EEE9FFF7EDE8FFF6EEE9FFF6EEE8FFF6EE
          E8FFF6EFE8FFF6EEE8FFF7EDE7FFF6EEE8FFF6EEE8FFF6EDE7FFF7EEE8FFF6EE
          E8FFF6ECE6FFF6EEE7FFF6EEE8FFF6EEE7FFE0CEC6FF3A2C27600000000DCBAD
          A3FFF8F2EDFFF7EFEAFFF7EFEAFFF7EFEAFF926C5FFFF7EFE9FFF6EFE9FF906C
          5FFFF7EFE9FFF7EFE9FF906B5EFFF6EFE9FFF6EEE8FF8F6A5DFFF6EFE8FFF7EE
          E9FF8F6A5DFFF6EEE8FFF6EEE8FFF6EEE8FFE1CEC7FF3B2C27600000000DCCAF
          A4FFF8F2EEFFF7EFEAFFB5998DFFB4998EFF936D60FFB4988EFFB4978DFF926C
          5FFFB4978DFFB3978DFF916B5EFFB4978DFFB3978CFF916B5EFFB3968CFFB396
          8BFF916B5DFFB3968BFFE0D1CAFFF6EFE9FFE1D0C8FF3B2D28600000000CCCAF
          A5FFF9F3EFFFF7EFEBFF956F62FF946F63FF947062FF936F62FF946F61FF936F
          61FF936E61FF936E61FF926D61FF926E60FF926D60FF926D60FF926D60FF926C
          5FFF916C60FF916C5FFFD5C3BBFFF7EFE9FFE2D0C9FF3C2D28600000000CCDB1
          A6FFF9F3EFFFF7F0ECFFE6D4CDFFF7F2ECFFF7F1ECFFF7F1ECFFF7F1ECFFF7F1
          EBFFF7F1ECFFF7F1EBFFF7F1EBFFF7F1EBFFF7F0EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFF6F0EAFFF7EFEAFFF7EFEAFFE2D1CAFF3C2D295F0000000BCFB3
          A8FFFAF4F1FFF8F1EDFFE6D4CDFFF8F3EEFFF8F2EEFFF7F2EDFFF7F2EDFFF7F2
          EDFFF7F1EDFFF7F2EDFFF7F1ECFFF7F1ECFFF7F1ECFFF7F1ECFFF8F1ECFFF7F0
          EBFFF7F0EBFFF7F0EBFFF7EFEBFFF7F0EBFFE3D2CCFF3C2E295E0000000ACFB3
          A9FFFAF5F1FFF8F2EEFFE7D5CEFFF9F2EFFFF9F3EEFFF8F2EFFFF8F3EEFFF8F2
          EEFFF7F2EEFFF8F1EDFFF8F1EEFFF7F1EDFFF8F2EDFFF7F1ECFFF7F1EDFFF7F1
          EDFFF7F1ECFFF7F1ECFFF7F0ECFFF8F0ECFFE4D3CDFF3D2F2A5E0000000AD0B5
          ABFFFAF5F2FFF9F1EFFFE7D6CFFFF9F3F0FFF9F3F0FFF8F3EFFFF9F3EFFFF9F3
          EEFFF8F3EEFFF8F3EEFFF8F2EEFFF8F2EEFFF8F2EDFFF8F2EEFFF8F1EDFFF7F2
          EDFFF8F1EDFFF7F2EDFFF8F1EDFFF8F1EDFFE4D3CDFF3D2F2A5E00000009D1B6
          ADFFFBF6F3FFF9F3EFFFE8D7D0FFF9F4F1FFF9F4F1FFFAF4F1FFF9F4F0FFF9F4
          F0FFF9F4F0FFF9F3F0FFF9F4F0FFF9F3EFFFF8F3EFFFF8F3EFFFF8F3EFFFF9F3
          EEFFF8F2EEFFF8F2EEFFF9F2EEFFF8F2EEFFE5D5CFFF3E302B5E00000009D4BA
          B1FFFBF7F4FFFAF4F1FFE8D7D1FFFAF4F1FFFAF5F0FFFAF4F1FFFAF4F0FFFAF4
          F0FFFAF4F1FFFAF4F0FFFAF4F0FFFAF4F0FFF9F4EFFFF9F4EFFFFAF3EFFFFAF3
          EFFFF9F3EFFFFAF3EFFFFAF3EFFFFAF3EFFFE7D7D2FF3E312D5D00000008D5BB
          B2FFFBF7F5FFFAF5F1FFE9D9D2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F1FFFAF5
          F1FFFAF5F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F1FFFAF4F0FFFAF4F0FFFAF4
          F0FFFAF3F0FFFAF3F0FFFAF3F0FFFAF4F0FFE7D8D3FF3F322D5D00000007D6BD
          B4FFFBF8F6FFFAF6F3FFEADAD3FFFAF6F4FFFBF6F4FFFAF6F4FFFBF6F3FF8FB7
          E4FF659DDEFF659DDEFF659DDEFF659DDEFF659DDEFF659DDEFF659DDEFF659D
          DEFF659DDDFF659DDEFF659DDDFF659DDDFF6996CFFF262D3A5C00000007D7BE
          B5FFFBF8F7FFFAF7F4FFEADAD4FFFBF7F5FFFBF7F4FFFAF7F4FFFAF7F5FF1D74
          D5FF2E9CF1FF2796EFFF2795F0FF2796EFFF2795EFFF2795EFFF2794EFFF2694
          EEFF2794EEFF2794EEFF2694EFFF2594EFFF278CE7FF0926475C00000007D7C0
          B6FFFBF9F8FFFBF7F5FFEADBD6FFFBF8F5FFFBF7F6FFFBF7F5FFFBF7F5FF1E76
          D5FF2D9AF1FF1A8DEDFF1A8CEDFF198CEDFF198CECFF188BEDFF188BEDFF188A
          EDFFB1D8F9FFB1D8F9FFA9D4F8FF178AECFF298EE7FF0926475C00000006D9C1
          B8FFFCFAF9FFFBF8F6FFEBDDD7FFFBF8F7FFFBF8F6FFFCF8F7FFFCF8F6FF1E77
          D6FF309DF2FF81C1F6FFB3D9F9FF81C0F6FF45A3F2FFB2D9F9FF95CAF7FF3098
          EFFF59ADF2FFB2D8F9FFE5F2FDFF1A8CEEFF2B90E8FF0926475B00000005DAC2
          B9FFFCFBF9FFFCF9F6FFEBDDD8FFFBF9F7FFFCF9F8FFFBF9F7FFFBF8F7FF1F78
          D6FF33A0F3FFB4DBFAFF2092F0FF1F92F0FFB4DAFAFF1F91EFFF69B6F4FF69B5
          F4FFFEFFFFFF1C8FEEFFB3D9FAFF1C8FEEFF2E92E8FF0926475B00000005DAC3
          BAFFFCFAF9FFFBF8F8FFECDED8FFFBF9F8FFFCF9F8FFFBF8F8FFFCF9F7FF1F78
          D6FF38A3F4FFB5DBFAFF2495F1FF2395F1FFB5DBFAFF2394F0FF6BB7F5FF6BB7
          F5FFFEFFFFFF2093EFFFB4DAFAFF2091EFFF3194E9FF0926475A00000004DCC4
          BBFFFDFBFAFFFDFAF9FFEDDFDAFFFCF9F8FFFCFAF8FFFCF9F8FFFCF9F8FF207A
          D8FF3BA6F6FFB6DDFBFF2698F2FF2698F2FF7EC2F7FFB6DCFAFFB2DAFAFF51AC
          F4FFAAD6FAFFB5DBFAFFADD8FAFF2294F1FF3396EAFF0927475A00000004DCC6
          BCFFFEFCFBFFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFDFAF8FF227C
          D8FF3FAAF6FFB7DDFBFF2A9BF3FF299BF3FF289AF3FF289AF3FF279AF3FF2799
          F3FF2798F2FF2699F2FF2598F2FF2597F1FF3699EBFF0927475A00000004DDC6
          BEFFFEFDFDFFFDFCFBFFFDFCFBFFFDFCFBFFFEFCFBFFFEFCFBFFFEFCFBFF237E
          DAFF45AFF7FF94D0FAFF37A5F5FF36A5F5FF35A4F5FF35A4F5FF35A4F5FF34A3
          F5FF34A3F5FF33A3F5FF33A2F5FF33A2F4FF399CECFF0927485A00000002BCA3
          99E2DFCAC2FFDFCAC2FFDFCAC2FFDFCAC2FFDFCAC2FFDFCAC2FFDFCAC2FF2480
          DBFF41A2ECFF3FA0EBFF3E9FEBFF3D9EEBFF3B9CEAFF3B9CE9FF3B9AE9FF3999
          E8FF3897E8FF3796E7FF3594E7FF3594E6FF2B82D5F109213C4A000000000000
          0002000000030000000300000003000000030000000300000003000000030002
          0303010203040102030401020304010203040102030401020304010203040102
          0304010203040102030401020405010204050002030400000102}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000010000
          0002000000040000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000060000000600000006000000060000
          0006000000060000000500000003000000010000000000000000000000020E0A
          091E3326215A392A2464392A246439292464392A2465392A2465392924653929
          2465382924653929246638292466392924663929246638292466392924663929
          2466382924663325205C0D0A0920000000030000000000000000000000043326
          2159C7ADA3F8DECBC3FFDECBC3FFDECAC3FFDECBC3FFD5BCB3FFD4BBB2FFDECA
          C2FFDDCAC2FFDECAC2FFDDCAC2FFD4BBB2FFD4BBB2FFDDC9C2FFDECAC2FFDEC9
          C2FFDEC9C1FFC7ACA1F83325215B00000005000000010000000000000005392A
          2561DFCBC3FFF7EDE8FFF6EDE8FFF7EDE8FFF7EDE8FFE5D3CBFFE4D2CBFFF6ED
          E9FFF7EDE8FFF6ECE8FFF6EDE8FFE4D2CBFFE5D2CBFFF7ECE8FFF6ECE7FFF6EC
          E8FFF6EDE8FFDFCAC3FF392A256400000006000000010000000000000005392B
          2661DFCCC5FFF6EDE9FFF6EEE8FFF7EEE9FFF7EDE9FFE5D3CDFFE5D3CCFFF7ED
          E9FFF7EDE9FFF6EDE9FFF6EDE8FFE4D3CBFFE5D2CCFFF7EDE8FFF7EDE9FFF7ED
          E8FFF7EDE8FFDFCBC4FF392A2564000000060000000100000000000000043B28
          1B60CCA283FFD1A88AFFD1A889FFD1A789FFD1A78AFFCB9F80FFCB9F7FFFD0A7
          89FFD1A789FFD0A689FFD0A789FFCA9E7FFFCCAA99FFD3B9B0FFD4B9B0FFD4B9
          B0FFD4B8AFFFCEB1A8FF3A2C2764000000050000000100000000000000043C28
          1760D9B188FFE1BB89FFE1BB8AFFE0BB89FFE1BB89FFD5A97AFFD5A97AFFE1BA
          89FFE1BA89FFE0BA8AFFE1BA89FFD5A879FFE4CAB9FFF7EEE9FFF7EEEAFFF7EE
          EAFFF7EEEAFFE0CDC7FF3B2C2763000000050000000100000000000000043D28
          175FDAB48BFFE2BC8BFFE1BC8BFFE2BC8BFFE2BC8BFFD6AA7BFFD6AA7BFFE1BB
          8AFFE1BB8AFFE1BB8AFFE1BB8AFFD6A97AFFE4CBBAFFF7EEEAFFF7EEEAFFF7EE
          EAFFF7EEEAFFE2CFC8FF3B2D2862000000050000000000000000000000043E29
          185FDCB68DFFE2BD8DFFE2BD8DFFE2BD8CFFE2BD8CFFD7AC7DFFD7AC7DFFE2BC
          8CFFE2BC8CFFE2BC8BFFE2BC8BFFD7AB7CFFE6CCBCFFF7EFEBFFF7EFEBFFF8EF
          EBFFF8EEEBFFE2D0CAFF3C2E2A62000000050000000000000000000000033E2A
          195ECFA078FFC48E62FFC48E62FFC48E62FFC38D61FFC38D61FFC38D61FFC38D
          61FFC38C61FFC38C60FFC38C60FFC28B60FFC59C86FFD4BBB2FFD3BAB2FFCAAC
          A1FFC5A599FFD7C1BAFF43383562000000040000000000000000000000033E2A
          195DDDB992FFE3BF90FFE3BF90FFE3BF8FFFE3C08FFFD9AF81FFD9AF80FFE3BF
          8EFFE3BF8EFFE3BF8EFFE2BF8EFFD8AF7FFFE6CEBEFFF8F4F2FF88ABD1FFEAE8
          EBFFF8F3F0FFA7BAD4FF1E2D3D63000000040000000000000000000000033F2B
          1A5DDFBB94FFE4C191FFE4C191FFE4C191FFE4C190FFDAB182FFDAB182FFE4C1
          90FFE3C190FFE4C090FFE3C090FFD9B081FFE8D0BFFFF6F2F0FF307ABFFF87A9
          CFFFA6B7D3FF3A7FC2FF0B253E64000000040000000000000000000000033F2B
          1B5CDFBD97FFE5C392FFE4C292FFE4C392FFE4C292FFDBB485FFDAB384FFE4C2
          92FFE4C292FFE4C291FFEAD0ABFFE9D6BEFFEEE4DBFFF1EEECFF378CCFFF358C
          D0FF216EBAFF3597DBFF0C2640670000010B000001060000000200000003402B
          1B5CD9B28BFFD3A779FFD3A779FFD3A679FFD2A679FFD0A174FFCFA174FFD2A6
          78FFD2A678FFD2A577FFDCBA98FF8AA6C0FF408AC9FF4797D4FF3F9CDBFF45B0
          EDFF45AFEDFF3EA2E2FF348BCFFF3283C8FF194D7EAD040D151F00000002402C
          1C5BE1C09AFFE5C595FFE5C595FFE6C595FFE6C595FFDDB788FFDDB788FFE6C5
          95FFE5C595FFE5C594FFE8CA9DFFDFCEB7FF97B6CFFF62B0E4FF5CBEF1FF4CB5
          EEFF4BB4EFFF4AB4EEFF47A6E3FF265D8AAF040D15210000000100000002402C
          1C5AE1C09CFFE6C696FFE6C696FFE6C696FFE6C696FFDEB889FFDDB889FFE6C5
          96FFE6C596FFE5C695FFE6C695FFE9D2B2FFA6B5C8FF3D8BCFFF6CC6F3FF78CD
          F5FF7BCDF5FF6DC7F3FF4398D7FF0D305A890000000300000000000000023A28
          1A52D1A981F8E1C19CFFE1C19CFFE1C19CFFE1C19CFFDEBB96FFDEBB95FFE1C0
          9BFFE1C09BFFE1C09BFFE9D0B4FFAEC1CEFF609DD3FF96CDEEFF9FD5F1FF9ADC
          F7FF95DAF7FF89D0F2FF87C6ECFF529AD4FF153C628403080C1000000001100B
          07183A291A51402C1C59402C1C59402C1C5A402C1C5A402C1C5A402C1C5A402C
          1C5A402C1C5A402C1C5A45362A5A2535415B132F465D132F465E67AFE2FF97D0
          F0FF8AC5EBFF8FCAEDFF1E4E7492112D45580E26394903080C10000000000000
          0000000000010000000200000002000000020000000200000002000000020000
          000200000002000000020000000200000002000000020000000557A5DFFF4372
          95AD1D486A8270B3E3FF14314858000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000022A6591AA0711
          181E000000011F4A6C80112A3D49000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000711181D0000
          00000000000003080C0F03080C0F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
          6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D225265642220643D224D32302C342E3776342E3463322E342C312E342C34
          2C342C342C362E3963302C342E342D332E362C382D382C38732D382D332E362D
          382D3863302D332C312E362D352E352C342D362E3956342E3743372E332C362E
          332C342C31302E382C342C313620202623393B63302C362E362C352E342C3132
          2C31322C313263362E362C302C31322D352E342C31322D31324332382C31302E
          382C32342E372C362E332C32302C342E377A222F3E0D0A3C7061746820636C61
          73733D225265642220643D224D31372C3134682D32632D302E362C302D312D30
          2E342D312D31563363302D302E362C302E342D312C312D31683263302E362C30
          2C312C302E342C312C317631304331382C31332E362C31372E362C31342C3137
          2C31347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000040000000800000009000000090000
          000A0000000A0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B000000080000000300000000000000000000000000000000000000000000
          00010000000100000001000000043628225B6E5045AF6E4F45B06E4F44B06E4F
          43B16D4E43B16D4E43B16D4D42B16C4D42B16C4C41B26C4C41B26C4B41B26B4B
          40B14F372F890000000900000002000000010000000100000000000000010000
          000400000007000000090000000F705247B0F8F1ECFFF8F0EDFFF7F0EDFFF7F0
          EBFFF6EFEAFFF5EDE8FFF5EDE7FFF5ECE6FFF5ECE6FFF5ECE5FFF5ECE5FFF5EC
          E6FFA27364FF000000170000000D0000000A0000000700000003000000081A12
          0F3C33231E6734241F6C32231D707E5C4ED1F9F3F0FFE0B27BFFE1B37CFFE0B3
          7CFFE0B178FFDDA96EFFDCA66AFFDCA569FFDBA467FFDAA365FFDAA162FFECD2
          BAFF9D6E5FFF2A1B167A2D1D17722D1D17701F14105404030218000000138866
          59D3B89282FDC6A797FFBFA08FFFAB8271FFFAF5F2FFE3BA86FFE7C08DFFE7BF
          8CFFE6BD8AFFE3B57EFFE1B075FFE0AF74FFDFAD72FFDFAC6FFFDCA769FFECD4
          BCFF996B5BFFB39483FFBE9E8EFFB28B7AFF936F5FE72519155400000019B189
          78FFCBAC9CFFDFCABBFFDDC8B9FFBD9A8BFFFBF7F4FFE6C08EFFE9C596FFE9C4
          95FFE9C493FFE6BE8AFFE1B379FFE1B177FFE0B075FFE0AE72FFDDA96BFFEED6
          BEFFA07364FFDAC8BBFFDCC6B7FFC9AA99FFB79180FF35251F6E00000019B58C
          7CFFCFB2A3FFE4D2C6FFCBB1A1FF9A6D5BFFD0BDB5FFC49A74FFC59E79FFC49E
          79FFC49D78FFC39C75FFBF9063FFBF9062FFBE8E60FFBD8C5FFFBC885AFFC7A6
          91FF8E604EFFB39384FFE2CEC1FFCDB0A1FFBB9485FF3626206F00000017B791
          81FFD3B9ACFFEADBD2FFDECCBFFFC6ADA0FFC3AA9CFFC3A99BFFC3A99CFFC3A9
          9BFFC3AA9CFFC3A99CFFC3AA9BFFC3A99CFFC3A99BFFC3A99BFFC3A99CFFC3AA
          9BFFC3AA9CFFD5C0B4FFE7D7CBFFD1B7A9FFBD9A8BFF3627216D00000015BB95
          86FFD8C1B6FFEFE5DDFFECE0D7FFECE0D7FFECE0D8FFECE0D7FFECE0D7FFECE0
          D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
          D7FFECE0D7FFECE0D8FFECE0D7FFD6BEB3FFC09F91FF3727226C00000013BE9A
          8CFFDDCAC0FFF5EDE8FFF1E9E3FFF2EAE4FFF3ECE5FFF3ECE6FFF3ECE6FFF3EC
          E6FFF3ECE6FFF3ECE6FFF3ECE6FFF3ECE6FFF3EBE6FFF3EBE6FFF3ECE6FFF3EB
          E5FFF2EBE5FFF2E9E2FFF1E9E2FFDBC6BDFFC4A599FF3728236B00000011C3A1
          93FFE1D0C9FFF8F4F0FFF3EEE9FFC5BAB4FF97857EFF8B7972FF8B7972FF8B78
          71FF8B7872FF8B7871FF8A7871FF8A7871FF897771FF897771FF897670FF907E
          78FFAEA09AFFF0EAE6FFF6F0ECFFDFCDC5FFC9ACA0FF392A25690000000FC7A7
          9AFFE6D7D1FFFBF9F7FFB8ACA7FF674B42FF6B4E44FF6D4F45FF6E4F45FF6E4F
          45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4E
          44FF65483EFF8B7972FFF1ECEAFFE4D4CDFFCEB2A9FF3B2C27680000000DCBAE
          A1FFE9DDD7FFFDFCFBFF7F6A60FF795B51FF7B5D52FF7D5F54FF7D6054FF7E60
          55FF806256FF806257FF806256FF806257FF806256FF7F6155FF7D5F54FF7D5F
          54FF7B5D52FF785E53FFD2CAC6FFE7DAD4FFD2B9AFFF3C2F29670000000BD0B4
          A7FFECE1DDFFFEFEFDFF806658FFA58777FFA68777FFA98A79FFA88A79FFAA8A
          7AFFAC8C7BFFAB8C7BFFAB8C7BFFAB8C7BFFAC8C7BFFAA8B7AFFA98A79FFA98A
          79FFA68877FF917365FFCBC2BEFFE9DDD9FFD6BFB7FF3E312B6500000009CCB4
          AAF6EFE7E3FFFFFEFEFF977C6CFF8E6F62FF71544AFF71534AFF705349FF7053
          49FF705349FF705348FF6F5248FF6F5248FF6E5147FF6E5147FF6E5146FF6E50
          46FF6D4F45FFAC8E7DFFD2C9C5FFECE2DDFFDAC7C0FC3D312C5F000000058D7D
          76ABEDE4E0FDFDFBFBFFA08674FFB78E7CFFF3EAE5FFEEE3DCFFEEE2DBFFEDE2
          DCFFEDE1DAFFEDE1DAFFEDE0D9FFEDE0D9FFECDFD8FFECDFD9FFECDFD8FFEEE2
          DCFFA37464FFB29582FFD2C8C3FFF1E9E5FFB3A199D6211B193700000002211D
          1B2D8C7D76A7CFBBB2EE9A8273FFAE8A79FFF4EDE9FFF0E6E0FFF0E5DFFFEFE4
          E0FFEFE4DFFFEFE4DDFFEEE3DDFFEFE3DDFFEEE2DCFFEEE1DCFFEEE1DBFFF0E5
          DFFFA77A6AFF9D8476FFB59F94F4A6948BCB372F2B500403030B000000000000
          000100000003000000050000000E795E54B1F6F0EDFFF2E9E4FFF2E9E4FFF1E8
          E3FFF2E8E3FFF1E7E2FFF0E7E2FFF1E7E1FFF0E6E0FFF0E6E0FFF0E5DFFFF2E8
          E3FFAE8373FF0000001E0000000F000000090000000400000001000000000000
          00000000000100000001000000077D6359AEF8F4F1FFF5EDE9FFF4ECE8FFF4EC
          E8FFF4ECE7FFF4EBE6FFF3EAE6FFF2EAE5FFF3E9E5FFF2E9E4FFF2E8E3FFF4EC
          E8FFB38B7CFF0000001200000004000000010000000100000000000000000000
          000000000000000000000000000680695EADFAF6F4FFF7F0EDFFF6EFECFFF6EF
          ECFFF6EFEBFFF6EEEAFFF5EEEAFFF5EEEAFFF5EDE9FFF4EDE8FFF4ECE8FFF5EF
          ECFFBA9485FF0000000E00000002000000000000000000000000000000000000
          0000000000000000000000000004846D63ACFAF8F7FFF8F4F1FFF9F3F0FFF8F2
          F0FFF7F2EFFFF7F2EFFFF7F2EFFFF7F2EEFFF7F0EDFFF7F0EDFFF6EFECFFF8F3
          F0FFC09C8DFF0000000D00000001000000000000000000000000000000000000
          0000000000000000000000000004877167ACFDFAF9FFFBF7F5FFFAF6F4FFFAF6
          F3FFF9F6F3FFF9F5F2FFF9F5F2FFF9F5F2FFF8F4F1FFF9F4F0FFF8F3F0FFF9F6
          F3FFC5A395FF0000000C00000001000000000000000000000000000000000000
          000000000000000000000000000389756BABFEFEFEFFFEFDFCFFFEFCFCFFFEFC
          FCFFFDFCFCFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFBFBFFFDFC
          FCFFCAAA9BFF0000000900000001000000000000000000000000000000000000
          000000000000000000000000000267585180D1B3A5FFD1B3A5FFD1B3A4FFD0B2
          A4FFD1B2A4FFCFB2A3FFCFB2A3FFCFB1A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEAF
          A1FF998277C10000000500000001000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040000000400000002000000010000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000040000000200000001000000000000000000000000000000000000
          000000000001000000020000000A00000015000001180000000D000000040000
          00010000000000000000000000000000000000000001000000020000000A0000
          0017000001190000000E00000005000000010000000000000000000000000000
          0000000000030000000C0C0A2956252085D52A259DF40A093B7B0101061B0000
          000400000001000000000000000000000000000000040000000E0606265A1E1B
          81D8262198F2110D3E7A0201061B000000040000000100000000000000000000
          0001000000080A08204B2B2A94DE2B36BCFF2B36BEFF20269EF00B0A3E800000
          0012000000050000000100000001000000030000000E050321591B1E8BE12630
          B8FF2631BCFF2628A1EF120E3F7A0000000D0000000200000000000000000000
          00020000000F362C94EA3A45C5FF2E3BC2FF2E3AC2FF2D3AC1FF2228A8FE0806
          327A0000001200000005000000030000000D0504215820219DFD2A36BEFF2936
          BFFF2A36BEFF2A35BEFF302CA0F2000001170000000400000000000000000000
          00020000000D2E267BC5515BCAFF3B48C8FF323EC4FF313EC4FF313DC3FF252A
          A9FE0B0B3F800101061D000000100807285C1F228DE02E3AC1FF2E3AC2FF2D39
          C1FF2D38C1FF3C46C3FF343091DA000001150000000400000000000000000000
          00010000000607061432393989C45863CEFF3C48CAFF3542C6FF3542C6FF3441
          C5FF262CA3F00B0B3F830503215C21248FE0313CC0FF313FC4FF313EC4FF313D
          C4FF4754CBFF4041A1E3110F305D0000000A0000000200000000000000000000
          0000000000020000000708071735424296D36A7ADAFF3F4DCCFF3846C9FF3945
          C8FF3845C8FF292EACFE21239EFE3742C6FF3643C7FF3542C7FF3543C7FF4D5B
          CEFF5151BBFF0F0C2C5C0000000C000000020000000100000000000000000000
          00000000000100000002000000090B091F3F454598D2636FD4FF4754CFFF3D4A
          CBFF3C49CBFF3C48CAFF3B48CAFF3B48CAFF3A47CAFF3947C9FF4E5BCDFF4A4E
          A8E20F0D2C5B0000000D00000003000000010000000000000000000000000000
          00000000000000000000000000020000000808071734434590C46875D7FF4755
          CFFF414FCDFF404ECDFF404DCCFF3F4CCDFF3E4CCCFF5B6AD6FF4F53ABE21514
          345C0000000B0000000300000001000000000000000000000000000000000000
          000000000000000000000000000000000002000000080908183846479CD4505D
          D4FF4552D0FF4452D0FF4351CFFF4352CFFF4452CFFF5558C2FF110F2F5D0000
          000E000000020000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000002000000090B0B2B5733369ADF5261
          D5FF5362D6FF5462D6FF5462D6FF515FD4FF4E5DD4FF383DB5FE100F417E0101
          0619000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000001000000090908244C4346A0DE6B78DAFF7280
          DFFF7380E0FF7280DFFF717FDFFF6D7BDEFF6A78DCFF6573DBFF474EB3EF1312
          43790000000D0000000400000001000000000000000000000000000000000000
          00000000000000000001000000080A09254C4B4CB6FC808EE3FF7F8DE4FF7E8C
          E4FF7D8BE3FF94A3EAFFA4B4EEFF7C89E3FF7583E0FF7280E0FF707EDEFF4F54
          BFFE0D0B366F0000000C00000003000000010000000000000000000000000000
          0000000000010000000611112F505054A8DD8896E7FF8997E8FF8795E7FF8794
          E7FF94A2E9FF7077BDE15C5FA7D298A6E8FF8594E6FF7A88E3FF7785E2FF7482
          E1FF545AC3FE1818487802020614000000020000000000000000000000000000
          0001000000040C0B2543565AABDC8B97E5FF919FEAFF909EEAFF8F9DE9FFA4B5
          EFFF767CC0E01D1C3B590B0A1A335B5F9DC29DAAEAFF8795E8FF7E8DE5FF7C8B
          E4FF7887E3FF585FBDEE1B1A4974000000080000000100000000000000000000
          00010101030C605FBAF09EAAECFF99A7EDFF99A7EDFF98A6EDFFACBCF2FF848B
          DBFE1616355100000008000000060B0B1A2F6266ABD0B5C5F4FF8B99EAFF8392
          E7FF808FE7FF7C8BE5FF6A6CC9F8020206140000000200000000000000000000
          0001010101075F5FA8CAADBBF0FFA6B5F0FFA0AEEFFFA9B9F1FF7C84C3DF1717
          3650000000070000000100000001000000050F0F23386368ACCFA5B2EEFF92A1
          EBFF8796EAFF95A4EBFF7074BCDD0101030D0000000200000000000000000000
          0000000000030C0C1C2B666BA8C3B8C7F3FFC2D4F7FF7F88C7E01F203E540000
          000500000002000000000000000000000001000000050C0B1B2D6065A2C0AEBE
          F0FFB6C8F5FF7B83C5E21F203F57000000050000000100000000000000000000
          000000000001000000030D0D1C296465ABC88284D8F61818364B000000050000
          00010000000000000000000000000000000000000001000000040C0C1B2A6161
          A8C88080D5F61717374F00000006000000010000000000000000000000000000
          0000000000000000000100000002000000050000000500000003000000010000
          0000000000000000000000000000000000000000000000000001000000030000
          0006000000070000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000050000000500000004000000040000000200000001000000040000
          000D010000160100001801000018010000180100001801000019010000190100
          00190100001901000019010000190100001A0100001A0100001A0100001A0100
          001A0100001A0100001B0100001A010000150000000A000000020000000C765D
          54ACC1A196FAC7A69BFFC7A69BFFC6A69AFFB3887AFFC5A499FFC5A498FFC4A4
          98FFC4A498FFB79083FFC3A397FFC3A297FFC3A296FFC2A296FFBC988BFFBC97
          8AFFC2A095FFC2A095FFC2A094FFB08E82F2372722620000000700000013C4A6
          9BFAF6EFEBFFF7F1ECFFF8F0ECFFF7F0ECFFC39F92FFF7F0ECFFF7EFEBFFF8F0
          EBFFF7EFEBFFD3B9AFFFF7F0EBFFF7F0EBFFF7F0EBFFF7EFEBFFE5D3CCFFE5D2
          CCFFF7EFEBFFF7EFEBFFF7EEEAFFF1E8E4FF6E5046AD0000000B00000014CCAE
          A3FFF8F2EDFFF7EEEAFFF7EEE9FFF6EEEAFFC3A094FFF6EEE9FFF7EEE9FFF7EE
          E9FFF6EEE9FFD3B9AEFFF7EEE9FFF6EEE9FFF6EDE9FFF6EDE8FFE4D2CBFFE4D2
          CAFFF6EEE8FFF6EDE8FFF6EDE8FFFAF4F0FF725449B20000000C00000013CCAF
          A5FFF8F2EEFFF7EFEAFFF7EFEAFFF7EFEAFFC4A296FFF7EEEAFFF7EEEAFFF7EE
          EAFFF7EEEAFFD4BAB0FFF7EEE9FFF7EEE9FFF6EEE9FFF7EEE9FFE4D3CCFFE4D3
          CBFFF6EEE9FFF6EEE8FFF6EDE9FFFAF4F0FF74554BB20000000C00000012C29F
          93FFD8C0B7FFD7BEB4FFD7BEB4FFD6BEB3FFC6A498FFD6BDB3FFD6BCB2FFD6BC
          B2FFD5BCB2FFC9AA9EFFD5BBB1FFD4BBB1FFD4BAB0FFD4BAB0FFCEB1A6FFCEB0
          A5FFD4B9AFFFD4B9AFFFD3B8AEFFD5BBB2FF74564CB20000000B00000012CFB3
          A9FFF9F3EFFFF8F0ECFFF8F0ECFFF7F0ECFFC6A69AFFF7F0EBFFF7F0EBFFF8F0
          EBFFF8EFEBFFD6BDB3FFF7EFEAFFF7EFEBFFF7EFEBFFF7EFEBFFE6D5CEFFE6D4
          CDFFF7EFEAFFF7EFEAFFF6EFEAFFFAF5F2FF75584DB10000000A00000011D0B5
          AAFFF9F3F0FFF8F1ECFFF8F1ECFFF8F0ECFFC8A79CFFF8F0ECFFF7F0ECFFF7F0
          EBFFF7EFECFFD6BEB5FFF7EFEBFFF8F0EBFFF8EFEBFFF7EFEBFFE6D6CEFFE7D5
          CDFFF7EFEAFFF7EFEAFFF7EFEBFFFAF4F2FF76594FB10000000A00000010D1B6
          ACFFFAF4F1FFF8F2EDFFF8F1EDFFF9F1EDFFCAA99EFFF8F1EDFFF8F1EDFFF8F1
          EDFFF8F0EDFFD8C0B7FFF8F0EDFFF8F0ECFFF8F0ECFFF8F0ECFFE7D7D0FFE7D6
          CFFFF8F0EBFFF8F0ECFFF8EFEBFFFAF5F2FF785B50B10000000A0000000FD3B8
          AEFFF9F4F1FFF8F2EEFFF8F2EEFFF9F2EEFFCBAB9FFFF8F2EDFFF9F1EEFFF9F1
          EDFFF8F1EDFFD8C1B8FFF8F1EDFFF8F1EDFFF8F1ECFFF8F1EDFFE8D8D1FFE8D7
          D1FFF8F0ECFFF8F0ECFFF8F0EBFFFAF6F2FF785C51B10000000A0000000FCAA9
          9EFFDCC7BEFFDCC6BDFFDCC5BCFFDBC4BBFFCCADA2FFDAC4BBFFDAC4BBFFDAC4
          BAFFDAC3BAFFCFB2A8FFDAC2B9FFD9C1B8FFD9C1B8FFD8C1B7FFD3B8ADFFD3B7
          ADFFD7C0B6FFD7BFB6FFD7BFB5FFD8C1B8FF795D53B0000000090000000DD6BB
          B2FFFBF5F3FFF9F3F0FFF9F3F0FFF9F3EFFFCEAFA3FFF9F2F0FFF9F3EFFFF9F2
          EFFFF9F2EFFFDBC4BBFFF9F2EFFFF9F2EFFFF9F2EEFFF9F2EEFFE9DAD3FFE9D9
          D3FFF9F1EEFFF9F2EDFFF9F1EEFFFAF7F4FF7A5F55B0000000080000000DD6BD
          B3FFFAF6F4FFF9F3F1FFF9F3F0FFF9F3F0FFCFB1A6FFFAF2F0FFF9F3F0FFFAF3
          EFFFF9F2F0FFDCC5BCFFF9F3EFFFF9F3EFFFF9F2EFFFF9F2EFFFEADBD4FFE9DA
          D4FFF9F1EFFFF9F1EEFFF9F1EEFFFAF7F4FF7C6057B0000000080000000CD7BD
          B5FFFBF7F5FFFAF6F3FFFBF5F3FFFAF5F3FFD0B3A8FFFAF5F2FFFAF5F2FFFBF5
          F2FFFAF5F2FFDDC8BFFFFAF5F2FFFAF5F2FFFAF4F2FFFAF4F1FFEBDDD7FFEBDC
          D7FFFAF4F1FFFAF4F1FFFAF4F1FFFBF7F4FF7C6258B0000000080000000BCEA1
          7EFFDDBA98FFDBB491FFDAB490FFDAB38FFFCB9B75FFD9B28EFFD8B18DFFD9B0
          8DFFD8B08CFFCDA07AFFD7AF8BFFD6AE8AFFD6AD89FFD6AD88FFD1A47FFFD0A3
          7EFFD5AB87FFD5AA86FFD4A986FFD9B18DFF7A5339AF000000080000000BD0A0
          73FFE2BC8BFFDEB07AFFDEB079FFDDAF78FFC9905CFFDDAE77FFDDAE77FFDCAD
          76FFDCAD75FFCD9660FFDBAB75FFDCAB74FFDBAA73FFDAAA73FFD29E68FFD29E
          67FFD9A971FFDAA972FFDAA870FFDDAE7BFF784B29AF000000070000000AD1A2
          75FFE4BF8FFFDFB37DFFDFB27CFFDEB17BFFCA915DFFDEB17BFFDEB07AFFDDB0
          7AFFDDAF79FFCE9862FFDCAE77FFDCAE77FFDCAD77FFDCAD76FFD3A06AFFD39F
          6AFFDBAC74FFDBAB74FFDBAA73FFDEB27DFF784B29AF0000000700000009D2A2
          77FFE6C496FFE0B57FFFE1B57FFFE0B37EFFCA935EFFE0B37DFFDFB37DFFDFB2
          7CFFDEB27BFFD09A64FFDEB17AFFDEB079FFDDB079FFDDAF79FFD5A26CFFD5A2
          6CFFDCAE77FFDDAD76FFDCAC76FFDFB481FF784C2AAE0000000600000006C293
          6AF0ECD2B0FFF0D9B8FFF0D9B7FFF0D7B6FFD6AA7EFFEFD7B5FFEED7B5FFEED6
          B3FFEED5B2FFDCB68CFFEDD5B1FFEDD4B0FFECD3AFFFECD3AEFFE3C29AFFE3C1
          99FFEBD1ABFFEBD0ABFFEBCEAAFFDEB990FF6E45279F00000004000000033727
          194D785436A0815A3AAC815A39AC815A39AC815A38AC815938AC805938AC8059
          38AC805837AC805836AC805736AC7F5736AC7E5635AD7E5635AD7E5634AD7E55
          34AD7D5433AD7D5432AD7C5332AD6242278B130D072300000002000000000000
          0002000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000500000005000000050000
          0005000000050000000500000005000000040000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000400000002000000060100
          00110101001701010019010100190101001901010019010000190100001A0100
          001A0100001A0100001A0100001A0100001A0100001B0100001B0100001B0100
          001B0100001B0100001B0100001C0100001B010000160000000A00000010A17F
          73E3C7A89CFFC7A79BFFC7A79CFFC7A79BFFC7A69BFFC6A69BFFC6A69AFFC6A6
          9AFFC6A59AFFC5A599FFC6A599FFC6A598FFC5A498FFC5A498FFC5A398FFC5A4
          97FFC4A397FFC4A397FFC4A296FFC4A396FFB08E81F12E221D5300000014C9AA
          9EFFF8F1ECFFF6EFEAFFF6EEE9FFF6EEE9FFF6EEE9FFF6EEE8FFF6EEE8FFF6EE
          E8FFF6EEE8FFF6EEE8FFF6EDE8FFF5EDE8FFF6EEE8FFF6EEE7FFF6EDE8FFF5ED
          E7FFF5EDE7FFF5EDE7FFF5EDE7FFF5EDE7FFDECAC2FF392A256500000014CAAC
          A1FFF7F0EBFFF6ECE7FFF6ECE6FFF6EDE7FFF5ECE7FFF6ECE6FFF5EDE6FFF5ED
          E6FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE5FFF5ECE5FFF5EB
          E5FFF5ECE5FFF5ECE5FFF5EBE5FFF5EBE5FFDFCBC4FF3A2A256600000013CBAE
          A3FFF7F1ECFFF6EEE7FFBDB2ACFFE4DCD7FFF6EDE7FFF6EDE8FFF5EEE7FFF6ED
          E7FFF5EDE7FFF5EDE7FFF6EDE7FFCCC1BBFFCCC2BCFFF7EFEBFFF5ECE6FFF5ED
          E6FFBCB0A9FFDCD3CDFFE4DAD4FFF5ECE5FFE0CDC5FF3A2B266500000011CDB0
          A5FFF8F2EDFFF7EEE9FF4F3D35FFBEB4AFFFF7EFE9FFF7EFEBFFF7F0EBFFF6EE
          E9FFF7F0EBFFF6EFE9FFF7F0EAFF796A64FF796A65FFF6F0EBFFF6EEE8FFF7F0
          EAFF4B3932FFA89C97FFBDB2ADFFF6EDE7FFE0CFC7FF3B2C276400000010CFB2
          A8FFF9F3EEFFF7F0EBFF524037FFBFB5AFFF4E3C34FFAA9F98FFBFB5AFFF4E3B
          34FF857871FF867871FFD8CFCAFF7B6C66FF7A6C66FFF6F0ECFF4B3933FFBDB4
          AFFF4C3B34FFA99D98FFBEB3AEFFF6EEE8FFE1D0C9FF3B2C276300000010D0B4
          AAFFF9F3EFFFF7F0EBFF544238FFC0B6B0FF513E36FFABA09AFFBFB5B0FF5744
          3BFF867871FF887A72FFD8D0CAFF7D6D66FF7C6D66FFF7F1ECFF513F37FFBEB5
          AFFF4F3D35FFAA9E99FFBEB4AFFFF6EFE9FFE2D1CBFF3B2D28620000000ED2B6
          ACFFFAF5F1FFF8F2EDFF56443AFFC1B7B2FF534038FFADA19CFFC0B6B2FF5946
          3CFF877973FF897B74FFD9D1CCFF7F6F68FF7D6E68FFF8F2EEFF534138FFBFB5
          B0FF503E36FFACA09AFFBFB5AFFFF7F0EBFFE3D3CDFF3C2E29620000000DD3B9
          AEFFFAF6F3FFF9F3EEFF58453BFFC1B8B3FF54423AFFAEA39DFFC2B8B2FF5B48
          3EFF897B74FF8A7D75FFDAD2CDFF7F7069FF7F7069FFF8F3EFFF55433AFFC0B7
          B1FF524037FFACA19BFFC0B6B1FFF8F1ECFFE5D5CEFF3D2F2A610000000CD4BA
          B1FFFAF6F4FFF9F4EFFF5A463CFFC2B9B3FF56433AFFAEA49DFFC2B9B3FF5D4A
          3FFF8A7C75FF8C7E76FFDBD3CEFF80726AFF807169FFF8F3F0FF58443BFFC1B7
          B3FF544239FFAEA29CFFC0B7B2FFF8F2EDFFE5D6D0FF3E2F2B600000000BD6BC
          B3FFFBF8F5FFFAF5F1FF5C483EFFC4BBB5FF58453BFFB0A69FFFC3BBB5FF5F4B
          40FF8B7E76FF8D8078FFDCD5CFFF82736BFF82736BFFF9F5F1FF5A463CFFC2B9
          B3FF56443AFFAEA39EFFC2B8B4FFF9F3EFFFE7D8D2FF3E312C5F0000000AD7BE
          B4FFFBF8F6FFFAF6F2FF5D4A3FFFC4BBB6FF59463CFFB1A6A0FFC4BBB5FF614D
          42FF8D7F77FF8E8178FFDCD6D0FF83746DFF83746CFFF9F6F2FF5B483DFFC3BA
          B4FF57443AFFB0A59EFFC2BAB4FFF9F4F0FFE7D9D4FF3F312D5E00000009D7BF
          B6FFFCF9F7FFFAF6F3FF5F4B40FFC5BBB7FF5B483DFFB1A6A1FFC5BBB7FF624E
          42FF8D7F78FF8F8179FFDDD6D2FF84756DFF84756DFFF9F6F3FF5D493FFFC4BB
          B6FF58463BFFB1A69FFFC3BBB5FFF9F5F2FFE8DAD5FF3F322E5E00000008D9C1
          B8FFFDFAF8FFFBF8F5FF604C40FFC5BCB7FF5C493EFFB2A7A1FFC5BCB7FF644F
          44FF8F8078FF90827AFFDDD6D2FF86776FFF85766EFFFAF6F3FF5F4B40FFC4BB
          B6FF5A473DFFB1A7A0FFC3BBB5FFFAF6F3FFE9DCD6FF40332F5D00000007DAC3
          B9FFFDFAF9FFFCF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFBF8F6FFFBF8F6FFFBF9
          F6FFFCF8F6FFFBF7F5FFFBF8F6FFFBF7F5FFFBF8F5FFFBF7F5FFFCF7F5FFFBF7
          F4FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFEADCD8FF41342F5C00000006DCC4
          BBFFFDFCF9FFFCF9F7FFFCFAF7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9
          F7FFFBF9F7FFFCF9F7FFFCF9F6FFFCF8F6FFFCF8F6FFFBF9F6FFFBF8F6FFFBF8
          F6FFFCF8F5FFFBF8F6FFFBF8F6FFFCF8F5FFEADED9FF4235305C00000005DCC6
          BDFFFFFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFDFCFFFEFDFBFFFEFC
          FBFFFEFCFBFFFEFCFCFFFEFCFBFFFEFCFBFFECDFDAFF4236315B00000003B098
          8DD3D5B7AAFED4B7AAFED4B7AAFED4B7AAFED4B6A9FED4B6A9FED3B5A8FED3B5
          A8FED3B5A8FED2B4A7FED2B3A6FED2B3A6FED1B2A5FED1B2A5FED0B2A4FED0B0
          A3FECFB0A3FECFAFA2FECEAEA1FECEADA0FEBB9E92E9332B2844000000010000
          0001000000030000000300000003000000030000000400000004000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000400000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010208051A091D
          15550A20175F091D14560208051B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030B2219544899
          7DF7339E78FF2C8A67F80A221856000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000030E291E5C61BB
          9FFF33B98BFF36A77FFF0D281D5E000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000020000000300000005000000070E2A205E63BF
          A3FF34BB8EFF38AA83FF0D291E60000000090000000600000004000000010000
          0002000000040000000400000004000000040000000400000004000000040000
          00040000000400000005000000081945348F1E533FAE1D523DAE23624ACB4BB5
          93FF36BD90FF3CAD87FF205C44CB194936AF194935AE133A2A90000000050100
          000E010000130100001401000014010000140100001401000014010000140100
          001401000014010000160101011B51AB8EFF5ED0AEFF49C7A0FF49C79FFF47C7
          9EFF38BF93FF47C69EFF47C69EFF46C69DFF45C69DFF349774FF0000000D9F7D
          72E2C5A69CFFC4A59AFFC4A59AFFC4A49AFFC4A599FFC4A499FFC4A499FFC3A3
          98FFC4A497FFC2A396FFDCCDC7FF62B398FF92E1CBFF81DCC1FF81DCC1FF7DDB
          BFFF64D1B0FF6CD5B5FF7CD9BEFF81DCC0FF85DCC2FF4EA385FF00000011C8AA
          9FFFF8F3EFFFF7EFEBFFF7F0EBFFF7F0EBFFF7F0EBFFF7F0EBFFF7EFEAFFF7EF
          EAFFF7EFEAFFF6EFE9FFF7F3F0FF64B79BFF6DC1A7FF6DC0A6FF6ABCA2FF9ADA
          C8FF6FD7B9FF71CCB1FF63B59BFF69BA9FFF68B99FFF418E74E300000011C9AC
          A2FFF9F2EEFFF6EFEAFFF6EFEAFFF6EFE9FFF7EFE9FFF6EFE9FFF6EFE9FFF7EF
          EAFFF7EFE9FFF6EEE9FFF6EFEBFFF7F2EEFFF6F2EFFFF4EFECFFB5D1C4FF90D3
          BFFF7ADCC0FF6EC7ADFF1332275F00000009000000080000000600000011CBAE
          A4FFF9F3EFFFD3C5BEFFA38A80FFD3C4BCFFD2C3BDFFBAA69DFFB9A69CFFD1C3
          BCFFD1C3BCFF9F877DFFD1C1B9FFD0C2BAFFD0C0B9FF84685CFFB9D6C9FF96D5
          C4FF85E0C8FF77CBB3FF1434295B00000003000000010000000100000010CCB0
          A6FFF9F4F0FFD4C6C0FFA58D82FFD4C6BFFFD3C5BFFFCEBBB4FFCDBBB3FFD3C5
          BEFFD2C4BEFFC5B1A8FFD2C3BCFFD1C4BCFFD1C3BBFFAA8576FFBBD9CCFFA1DA
          C9FFBDF0E3FF97D6C3FF16362B5A0000000100000000000000000000000FCEB3
          AAFFFAF5F1FFF8F1ECFFB39D94FFF8F2EDFFF8F1EDFFEEE3DEFFEFE3DDFFF7F1
          ECFFF7F0ECFFE5D5CDFFF8F1ECFFF7F1EBFFF7F1ECFFBD9585FFCEE5DBFF5ABB
          9CFF4AB593FF43A385E9122D24430000000100000000000000000000000FD0B5
          ACFFFAF6F3FFB5A198FFAF988DFFE7D7D0FFE6D7D0FFE4D2CBFFE4D2CBFFE6D7
          CFFFE6D7CFFFE0CDC6FFE6D6CFFFE6D6CFFFE6D6CFFFC09888FFF8F2EEFFF9F5
          F3FFCAAFA6FF0000000E000000030000000000000000000000000000000ED2B7
          AEFFFAF6F4FFF9F3F0FFB7A29AFFF9F3F0FFF9F3F0FFF1E6E1FFF1E6E1FFF9F3
          EFFFF9F3EFFFE8D8D2FFF9F3EFFFF9F2EFFFF9F2EEFFC29B8AFFF8F2EEFFF9F5
          F1FFB58D7FFF0000000C000000020000000000000000000000000000000ED4BB
          B2FFFAF7F5FF997D73FFB1988FFFE1CEC7FFE1CEC7FFE1CEC7FFE1CEC6FFE1CE
          C7FFE0CDC6FFE0CDC6FFE0CDC6FFE0CDC5FFDFCDC5FFC39D8DFFF9F3EFFFFAF6
          F3FFB79183FF0000000B000000010000000000000000000000000000000DD5BD
          B3FFFBF7F6FFFAF5F3FFBBA89FFFFAF5F3FFFAF5F2FFF2E9E5FFF1E9E5FFFAF5
          F2FFFAF4F1FFE9DBD6FFFAF4F1FFFAF4F1FFF9F3F0FFC5A08FFFF9F4F1FFFBF6
          F4FFBA9487FF0000000B000000010000000000000000000000000000000CD7BF
          B6FFFCF9F7FFBDAAA2FFB8A299FFECDFDAFFEBDFDAFFE8DAD5FFE9DAD5FFEBDE
          D9FFEBDED9FFE5D5CFFFEBDED8FFEBDDD8FFEBDDD8FFC6A292FFFAF5F2FFFBF8
          F5FFBD978AFF0000000A000000010000000000000000000000000000000CD9C1
          B8FFFCF9F8FFFCF7F6FFBEACA4FFFCF7F6FFFBF7F5FFF3EAE8FFF3EBE8FFFBF6
          F5FFFBF6F4FFECDFDAFFFBF7F4FFFBF6F4FFFAF6F4FFC8A594FFFBF6F3FFFCF8
          F6FFBF9B8EFF0000000A000000010000000000000000000000000000000BDAC3
          BBFFFCF9F9FFDDD3CDFFBBA49BFFECDED7FFEBDDD7FFE7D7CFFFE7D7CFFFEBDD
          D6FFEBDDD6FFE2CFC8FFEBDCD6FFEBDCD6FFEBDCD6FFC9A797FFFAF6F5FFFCF8
          F7FFC29E91FF0000000A000000010000000000000000000000000000000BDCC5
          BDFFFDFAFAFFDFD4CFFFE3D7D2FFECDED9FFECDFD9FFECDFDAFFECDFD9FFECDE
          D8FFECDED8FFECDFDAFFEBDDD7FFECDDD8FFEBDDD7FFEBDCD7FFFCF7F6FFFDF9
          F8FFC4A294FF00000009000000010000000000000000000000000000000ADDC7
          BFFFFDFAFAFFFDFAF9FFFDF9F9FFFCF9F8FFFDF9F9FFFCF9F9FFFCF8F8FFFCF9
          F8FFFDF9F8FFFCF8F7FFFCF8F8FFFCF8F7FFFCF8F7FFFCF9F7FFFCF8F7FFFDFA
          FAFFC7A598FF000000080000000100000000000000000000000000000009DDC8
          C1FFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFDFDFDFFFEFDFDFFFDFDFDFFFEFD
          FDFFFEFDFDFFFDFDFDFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFEFDFCFFFEFD
          FDFFC9A79BFF000000080000000100000000000000000000000000000007BDA4
          9AE3DFCAC2FFDFC9C1FFDEC9C1FFDEC9C1FFDEC9C1FFDEC9C1FFDEC9C1FFDEC8
          C0FFDDC8C0FFDDC8C0FFDDC8C0FFDDC8BFFFDDC7BFFFDDC7BFFFDCC7BFFFDCC7
          BEFFA88D83D60000000600000001000000000000000000000000000000020000
          0006000000090000000900000009000000090000000900000009000000090000
          0009000000090000000900000009000000090000000900000009000000090000
          0008000000060000000200000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000200000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00070000000D000000100000000D000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000200000009110A
          05336F4520C9855124EC603B19B90A0603270000000800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000525180D4AA26F
          40F4CB9863FFD4A169FFC3905AFF764C27C7100A042B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000086546289BD6AD
          82FFD8A46BFFD6A065FFD7A36AFFB28051F52A1A0C5900000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000009765533A7E8CD
          ACFFDBAD78FFD6A166FFD7A369FFC1956AFC2F1D0D5F00000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000641301F61D2AD
          83FAE8CBAAFFE3C098FFDEBB95FF97714DD71A11083900000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002070503124D3B
          266DB2906AD8CBA67CF09A7754CC302113530302010D00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00080000000F000000130000000F000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0005191009303725155D1D1007480201010D0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000A896847BECBA274FB986E45E9251609580000000600000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000DC3996EFDE3BE92FFDEB37FFF674325BF0805021D00000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000BAE8863E3E6C7A1FFDCB078FFC39767FA5B3F259E1A10083D0302010E0000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          000769513993E1C6A5FEE2B989FFDCAF79FFCA9F6DFD966F47DF52361E9A120B
          062B000000050000000100000000000000000000000000000000000000000000
          0000000000000000000000000002000000070100000A0100000A000000060000
          0005261B103EBA9E7EE1EED8B8FFDFB47DFFDEB17AFFDFB37FFFD2A777FF845C
          38D4030201130000000300000000000000000000000000000000000000000000
          00000000000000000001120C081D7D6348A7C39C6EFFAC855DF26449309D0905
          03180503020F6E52369CECDCC4FFEACDA3FFE3BA87FFDFB47DFFDFB37DFFCDA2
          72FF5D3D21A70000000700000001000000000000000000000000000000000000
          000000000000000000023526184ED4BD9EF3F3E3BCFFEFDDB4FFD9C098FE462B
          178400000007271B1045C7A582FEEED9B7FFE7C695FFE4BF8DFFE0B682FFDFB6
          84FFA77648F60302010C00000001000000000000000000000000000000000000
          000000000000000000013A2B1C53DECAACF9F5E8C5FFF3E1B8FFF2E0B8FF936D
          4DE50000000805030211AA7B51FEF1DDBBFFE9CB9BFFE7C797FFE5C08FFFE5C1
          95FFB68353FC0101010A00000001000000000000000000000000000000000000
          0000000000000000000121181030B59C7FD6F8F1DAFFF4E5BEFFF3E2BBFFA478
          52FF1A0F083819100935B48B63FEEFD9B3FFEBCEA0FFE9CB9CFFE9CA9DFFE1C3
          9FFF6F50329E0000000500000001000000000000000000000000000000000000
          0000000000000000000005040209624C367FEBDAC2FFF9F1D9FFF5E6C3FFD5BA
          94FF84613FD2876342CFD9BC94FFEED8ADFFEDD3A6FFEED8B3FFEEDCC1FFAA8D
          6ED2130E08210000000200000000000000000000000000000000000000000000
          000000000000000000000000000100000003785B3D9AE4CEB2FFFAF5E9FFF9F2
          DDFFF6EBCDFFF3E3BFFFF1DFB8FFF4E6C8FFF9F3E3FFE8D5BFFFA78560D7221A
          1035000000030000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000034837265D9A7F60B7C7B2
          97E0DDCBB4F3EBDAC4FDE5D3BCF9CAB49AE49E8162C2543F2974120D091D0000
          0002000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020F0C08162B21
          17383A2D1F4A433323563E2F20522D22173D110D081A00000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000020000000200000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000300000003000000030000
          0003000000030000000300000002000000020000000000000000000000010000
          00040000000B0000000F00000011000000110000001100000011000000110000
          0011000000110000001100000012000000120000001200000012000000120000
          001300000013000000130000001000000009000000020000000000000002040C
          09241F5944B92E7D61FF2D7D60FF2D7D5FFF2D7D5FFF2D7C5FFF2C7B5EFF2D7B
          5DFF2D7A5DFF2C7A5DFF2B7A5CFF2C795CFF2B795CFF2B795CFF2B785AFF2B77
          5BFF2A775AFF2A765AFF276F54F20C22195E0000000800000001000000040F29
          1F5A41A685FA49C59CFF48C49BFF46C49AFF46C39AFF44C399FF43C298FF43C1
          97FF42C096FF40C095FF40BF94FF40BE93FF3FBE92FF3DBE91FF3DBD91FF3CBD
          90FF3BBC8FFF3ABB8FFF3AB489FF287056F00000000F0000000200000004102C
          23614AB492FF39BE92FF3ABE91FF38BE90FF38BD90FF38BD8FFF37BC8FFF38BC
          8EFF37BB8EFF36BB8EFF36BB8CFF36BA8CFF35BA8CFF35BA8BFF34BA8BFF34B9
          8AFF34B88AFF33B88AFF3CBC90FF2D7C5EFF000000110000000300000004112D
          23604DB795FF3BC094FF3BBF93FF3ABF92FF3ABF93FF39BE92FF39BD91FF3ABD
          90FF61D1B0FF50C8A1FF37BC8FFF37BC8FFF36BB8DFF36BB8DFF35BB8DFF35BA
          8CFF35BA8CFF35BA8CFF3EBE93FF2F8062FF000000100000000200000004112E
          245F51BA99FF3DC196FF3CC196FF3CC095FF3BC094FF3BC094FF41C298FF50BC
          9AFF4C987AFF49A483FF3EC094FF38BD90FF38BD8FFF37BC90FF37BC8FFF37BB
          8EFF36BB8EFF36BB8DFF41C095FF308365FF0000001000000002000000041230
          265F54BC9CFF3FC398FF3EC398FF3EC298FF3DC296FF43C49AFF4CB894FF5B9F
          84FFD3DED6FF73A790FF4EBB98FF3BBF93FF3ABE91FF39BE92FF39BE91FF39BD
          90FF38BD90FF38BC8FFF44C297FF328668FF0000000E00000002000000031331
          275E57BF9FFF40C59BFF40C59AFF3FC49AFF3FC499FF52C19EFF569D82FFF5F4
          F0FFF3E8DFFFD6DED5FF267A58FF4CC5A0FF3BC094FF3BBF94FF3ABF93FF39BE
          92FF39BE92FF39BE91FF46C49BFF348B6CFF0000000E00000002000000031332
          275D5AC2A3FF42C79DFF42C69DFF45C79EFF55C7A5FF5EA78BFFCDD9D0FFF3E9
          E1FFF2E7DEFFF5EAE3FF93B6A5FF3EA17FFF41C299FF3CC196FF3CC196FF3BC0
          95FF3BC094FF3BBF94FF4AC69EFF358E6FFF0000000E00000002000000031433
          295D5DC4A5FF44C99FFF46C9A1FF56C8A5FF419172FFC5D5CBFFF2E9E2FFD7CF
          C3FFCAC9BDFFF3E8E0FFF0EAE4FF63A088FF48BA95FF3EC398FF3EC398FF3DC2
          97FF3DC296FF3DC196FF4CC8A1FF379272FF0000000C00000001000000031434
          2A5C60C7A9FF45CAA2FF44C79FFF2B8B68FFC8D0C8FFF5EAE4FFCFCABFFF3073
          55FF54876DFFDDD6CDFFF4EAE3FFC0CFC3FF51A285FF46C89FFF40C49AFF3FC4
          99FF3FC398FF3FC398FF4FCAA4FF389675FF0000000C00000001000000031435
          2B5C62C9ACFF47CBA4FF47CBA3FF39AA85FF4D866AFFA2B0A0FF52977AFF45C1
          9BFF3EAC87FF769D86FFEBE0D8FFF1EBE4FF88AD9BFF50B090FF48C8A1FF41C5
          9BFF41C59BFF40C59AFF53CCA8FF3A9978FF0000000B00000001000000021537
          2B5B65CBAEFF49CDA6FF49CDA6FF4BCEA7FF45B391FF449E7FFF52C7A5FF58D3
          B0FF56CFADFF43A484FF7B9782FFECE1D9FFE7E7E0FF569077FF54BA99FF4CCB
          A5FF42C69DFF42C69CFF56CEAAFF3C9C7CFF0000000A00000001000000021537
          2C5A67CDB1FF4BCFA9FF58D5B2FF61D9B9FF61D9B8FF60D8B8FF60D8B7FF5FD6
          B6FF5ED7B6FF5ED6B5FF3A9978FF7C9884FFEEE3DCFFEFF0ECFF4F9278FF64CB
          AFFF55D1ADFF48CAA3FF59D0ADFF3D9F7FFF0000000A0000000100000002173A
          2E5A73D3B9FF65DBBDFF69DDBFFF68DCBEFF67DBBDFF67DCBCFF66DBBBFF65DB
          BBFF65DABBFF64D9BAFF63D9B9FF4CA889FF8AA693FFECE1DBFFCBD7CEFF6CAD
          95FF6DD3B7FF5FD5B4FF6AD8B9FF41A686FF0000000900000001000000021A3D
          325982DAC4FF6FDFC4FF6FDFC4FF6EDFC3FF6EDEC2FF6DDEC2FF6CDDC1FF6BDD
          C0FF6BDDC0FF6ADCBFFF69DCBEFF66D7B9FF55B395FF6C937DFFD8D3C9FFC2CE
          C3FF408E71FF5FCDAEFF7ADFC5FF46AF8FFF0000000800000001000000011A3D
          335987DDC7FF75E2C8FF74E2C7FF73E2C7FF73E1C6FF72E1C6FF71E0C5FF71E0
          C5FF70E0C4FF6FDFC3FF6FDFC3FF6EDFC2FF6DDEC1FF64CFB3FF488A6DFF859E
          8BFF328565FF69D9BBFF81E2CAFF49B392FF0000000700000001000000011A3E
          33588BDEC9FF79E5CBFF79E5CBFF78E4CAFF77E4CAFF78E4CAFF77E3C9FF76E3
          C9FF76E3C8FF75E2C7FF74E2C7FF74E2C6FF73E1C6FF72E1C5FF6CD8BCFF4FB0
          92FF6BD8BBFF70DFC3FF88E5CFFF4AB594FF0000000700000001000000011A3E
          34578EE0CBFF7FE7CFFF7FE7CEFF7EE6CEFF7DE6CDFF7DE6CDFF7CE5CDFF7CE5
          CDFF7BE5CCFF7BE4CBFF7AE4CBFF7AE4CBFF79E3CAFF78E3C9FF78E3C9FF77E2
          C8FF76E2C8FF76E2C8FF8EE8D3FF4CB796FF0000000600000001000000011B3F
          345798E2CEFF83E9D2FF83E9D2FF83E8D2FF82E8D1FF81E8D1FF81E8D0FF80E7
          D0FF80E7D0FF7FE7CFFF7FE7CFFF7FE6CFFF7EE6CEFF7DE6CDFF7DE6CDFF7CE5
          CCFF7BE5CCFF7BE5CCFF9CEBDAFF4DB998FF000000050000000100000001122B
          243B71B3A1D8AAE5D6FFAAE5D6FFA9E5D6FFA9E5D5FFA8E5D5FFA8E5D5FFA8E5
          D4FFA7E4D4FFA7E4D4FFA7E4D4FFA6E4D4FFA5E4D3FFA5E4D3FFA5E3D3FFA5E3
          D3FFA3E3D3FFA3E3D2FF91D2C1F3357F68B10000000300000000000000000205
          0407102620351B3F34561B3F34571B3F34571B3F34571B3F34571B3F34571B3F
          34571A3F34571A3E34571A3E34571A3E34571A3E33571A3E33571A3E33571A3E
          33581A3E33581A3E335816352C4C060F0D180000000100000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
          3131373744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C223E0D
          0A09093C7265637420793D22342220636C6173733D22426C7565222077696474
          683D22333222206865696768743D223234222F3E0D0A09093C7265637420783D
          22322220793D22362220636C6173733D225768697465222077696474683D2232
          3822206865696768743D223230222F3E0D0A09093C706F6C79676F6E20636C61
          73733D22426C75652220706F696E74733D2233302C382031362C313820322C38
          20322C31302031302E342C313620322C323220322C32342031312E382C313720
          31362C32302032302E322C31372033302C32342033302C32322032312E362C31
          362033302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000040000000A0000000C000000070000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000C35292288231D1AA5090707380000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001472584AFE6F5B4FFF14100F680000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000016775B4DFE735E52FF15110F690000000800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000147B5E4FFE766054FF161210680000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000147F6151FE7A6456FF171210680000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000013826453FE7D6759FF171311670000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000011856655FE7F695CFF191412680000000800000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000010876856FE826C5EFF1914126C0000001200000008000000040000
          0001000000010000000100000000000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000F40947BFE67B9A3FF25624AE71B4A37A9091C1460030B07330001
          0110000000090000000600000004000000060000000A0000000A000000070000
          0004000000020000000000000000000000000000000000000000000000000000
          00020000000E747A65FE8C8E80FF2A4E3DD4308A6AFF31876AF425634ED3113A
          29B20A23187906130D480309062906110D3C194331A2143A29A0091B135B0103
          031A000000080000000300000001000000000000000000000000000000000000
          00010000000D906D5AFE8D7566FF273329A6308666FE45B291FF5CCFB1FF6FDC
          C1FF3CA282FF28795AFF246C4FFF276D50FF277354FF277757FF236E50FF174B
          36D8030C083C0000000C00000003000000010000000000000000000000000000
          00010000000C916E5BFE91796AFF22231E83318163FE49B191FF5CCDAFFF77E1
          C7FF4FCEAAFF3AB18AFF2C956FFF298160FF287556FF287D5DFF2B8C68FF2F97
          73FF277E5DFB0E2F22800105031B000000040000000100000000000000000000
          00010000000A93705CFE937C6CFF1F1B176D307F61FC4CB192FF60CCB0FF81E4
          CDFF51D1ADFF3DB790FF2F9C75FF2B8765FF297859FF2A8361FF2D926EFF34A6
          7FFF3EBB93FF369C7BF3133A2C900000000E0000000300000000000000000000
          00010000000A95705CFE978070FF1F1A16662F785DF14DAF92FF62CCB0FF8EE9
          D5FF5CD6B5FF40BB94FF32A37CFF2E8D6BFF297B5BFF2C8865FF309873FF36AC
          84FF3FBF96FF4ECEA9FF47A889FF0C261C7A0000000A00000002000000000000
          00010000000896715DFE9B8372FF211A1765307A5FF74FB294FF65CEB3FF9AED
          DBFF67DDBEFF48C09CFF34A580FF2F926FFF2B7D5DFF2D8B68FF359D79FF4CB7
          94FF6CD0B2FF89E2CBFF8CE6D0FF5BA48DFE0E251C5E00010108000000000000
          00010000000798725DFE9D8574FF231E1A6A307D61FE51B497FF6AD1B8FFA3F2
          E1FF6EE3C6FF53C8A6FF37A883FF319471FF2B7D5EFF459B7EFF5FB79BFF6CC7
          ACFF7CD2BAFF8DDCC7FF9BE3D0FFA4E5D4FF558676CF07140F2F000000000000
          00010000000698725EFEA08776FF282A227C327E63FE54B69AFF6ED6BDFFABF4
          E5FF76E7CCFF5DCEAFFF41AF8CFF339673FF3F9275FF48A183FB265A49951024
          1E3B0000000C0D1B182E23473D613F7E6E9D50A68DD91029204A000000000000
          00010000000599725EFEA28A7AFF2E372C9937856AFE58BA9FFF74DCC4FFB2F7
          E9FF7DECD2FF63D3B5FF4AB696FF409F7FFA296450A3050E0B1F000000050000
          0003000000020000000200000004000000050000000500000003000000000000
          0000000000049A735EFEA48C7CFF35493AC03F9478FF5DBFA4FF7AE2CAFFB9FA
          ECFF91F4DDFF8BE2CDFF7ECEB6FF428C75CB0918132900000002000000010000
          0000000000000000000000000000000000010000000100000000000000000000
          00000000000449A58AFE53B89CFF3D987AF2B2E3D5FFC6EDE4FFC5F6EBFFC0ED
          E2FF8CDAC4FF64BFA3FE34826ABE091511220000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002588C74E89FAEA0F84C8976C04C9583AA499280AA428977A5326C
          5C8720463B5D0C1C172800000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001261D18402F231D4F0D0A08170000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
