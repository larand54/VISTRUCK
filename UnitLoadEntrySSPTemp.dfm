object fLoadEntrySSPTemp: TfLoadEntrySSPTemp
  Left = 213
  Top = 145
  Width = 1146
  Height = 798
  Caption = 'LAST (SSP)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 288
    Width = 1138
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 447
    Width = 1138
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  object dxPageControl1: TcxPageControl
    Left = 0
    Top = 55
    Width = 1138
    Height = 233
    ActivePage = tsLoadData
    Align = alTop
    TabOrder = 0
    ClientRectBottom = 232
    ClientRectLeft = 1
    ClientRectRight = 1137
    ClientRectTop = 21
    object tsLoadData: TcxTabSheet
      Caption = 'Leveranshuvud'
      object Splitter1: TSplitter
        Left = 0
        Top = 168
        Width = 1136
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clBlack
        ParentColor = False
      end
      object pLoadHead: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 123
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1136
          123)
        object Label1: TLabel
          Left = 18
          Top = 12
          Width = 34
          Height = 13
          Caption = 'LastNr:'
        end
        object Label2: TLabel
          Left = 18
          Top = 35
          Width = 42
          Height = 13
          Caption = 'Utlastad:'
        end
        object Label3: TLabel
          Left = 18
          Top = 57
          Width = 33
          Height = 13
          Caption = 'Status:'
        end
        object Label4: TLabel
          Left = 18
          Top = 84
          Width = 37
          Height = 13
          Caption = 'Last ID:'
        end
        object Label5: TLabel
          Left = 18
          Top = 107
          Width = 16
          Height = 13
          Caption = 'FS:'
        end
        object Label6: TLabel
          Left = 229
          Top = 12
          Width = 77
          Height = 13
          Caption = 'Lokalfraktf'#246'rare:'
        end
        object Label7: TLabel
          Left = 229
          Top = 35
          Width = 24
          Height = 13
          Caption = 'Fr'#229'n:'
        end
        object Label8: TLabel
          Left = 229
          Top = 57
          Width = 16
          Height = 13
          Caption = 'Till:'
        end
        object Label9: TLabel
          Left = 779
          Top = 57
          Width = 78
          Height = 13
          Caption = 'Leveransadress:'
        end
        object Label10: TLabel
          Left = 469
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Note1:'
        end
        object Label11: TLabel
          Left = 469
          Top = 33
          Width = 32
          Height = 13
          Caption = 'Note2:'
        end
        object Label12: TLabel
          Left = 469
          Top = 57
          Width = 32
          Height = 13
          Caption = 'Note3:'
        end
        object Label13: TLabel
          Left = 779
          Top = 81
          Width = 91
          Height = 13
          Caption = 'Utlastningssadress:'
        end
        object Label14: TLabel
          Left = 469
          Top = 81
          Width = 32
          Height = 13
          Caption = 'Note4:'
        end
        object Label15: TLabel
          Left = 779
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Note5:'
        end
        object Label16: TLabel
          Left = 779
          Top = 33
          Width = 32
          Height = 13
          Caption = 'Note6:'
        end
        object Label17: TLabel
          Left = 229
          Top = 81
          Width = 55
          Height = 13
          Caption = 'Requisition:'
        end
        object Label18: TLabel
          Left = 229
          Top = 105
          Width = 83
          Height = 13
          Caption = 'Transporthandler:'
        end
        object detLoaded: TcxDBDateEdit
          Left = 64
          Top = 26
          DataBinding.DataField = 'LoadedDate'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          Properties.ImmediatePost = True
          Properties.Kind = ckDateTime
          Style.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Width = 153
        end
        object imgcbStatus: TcxDBImageComboBox
          Left = 64
          Top = 50
          DataBinding.DataField = 'SenderLoadStatus'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
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
          TabOrder = 2
          Width = 153
        end
        object teLoadID: TcxDBTextEdit
          Left = 64
          Top = 74
          DataBinding.DataField = 'LoadID'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          TabOrder = 3
          Width = 121
        end
        object teFS: TcxDBTextEdit
          Left = 64
          Top = 98
          DataBinding.DataField = 'FS'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          TabOrder = 4
          Width = 121
        end
        object lcLocalShipper: TcxDBLookupComboBox
          Left = 320
          Top = 2
          DataBinding.DataField = 'LocalShippingCompanyNo'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_LocalShipper
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 145
        end
        object lcFrom: TcxDBLookupComboBox
          Left = 320
          Top = 26
          DataBinding.DataField = 'LocalLoadingLocation'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'CityName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.dsrcCities
          Properties.MaxLength = 0
          TabOrder = 6
          Width = 145
        end
        object lcTo: TcxDBLookupComboBox
          Left = 320
          Top = 50
          DataBinding.DataField = 'LocalDestinationNo'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'CityName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.dsrcCities
          Properties.MaxLength = 0
          TabOrder = 7
          Width = 145
        end
        object eLoadNo: TcxDBTextEdit
          Left = 64
          Top = 2
          DataBinding.DataField = 'LoadNo'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object lcLeveransAdress: TcxDBLookupComboBox
          Left = 872
          Top = 49
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'LeveransAdress'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          Properties.DropDownWidth = 400
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'AddressNo'
          Properties.ListColumns = <
            item
              FieldName = 'ADDR'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 16
          Width = 245
        end
        object teNoteLine1: TcxDBTextEdit
          Left = 504
          Top = 2
          DataBinding.DataField = 'NoteLine1'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 10
          Width = 265
        end
        object teNoteLine2: TcxDBTextEdit
          Left = 504
          Top = 26
          DataBinding.DataField = 'NoteLine2'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 11
          Width = 265
        end
        object teNoteLine3: TcxDBTextEdit
          Left = 504
          Top = 50
          DataBinding.DataField = 'NoteLine3'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 12
          Width = 265
        end
        object lcDepartAdress: TcxDBLookupComboBox
          Left = 872
          Top = 73
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'DepartAdress'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          Properties.DropDownWidth = 400
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'AddressNo'
          Properties.ListColumns = <
            item
              FieldName = 'AddressName'
            end
            item
              FieldName = 'ADDR'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 17
          Width = 245
        end
        object teNoteLine4: TcxDBTextEdit
          Left = 504
          Top = 74
          DataBinding.DataField = 'NoteLine4'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 13
          Width = 265
        end
        object teNoteLine5: TcxDBTextEdit
          Left = 872
          Top = 2
          DataBinding.DataField = 'NoteLine5'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 14
          Width = 241
        end
        object teNoteLine6: TcxDBTextEdit
          Left = 872
          Top = 26
          DataBinding.DataField = 'NoteLine6'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 15
          Width = 244
        end
        object teEndUserRequisition: TcxDBTextEdit
          Left = 320
          Top = 74
          DataBinding.DataField = 'EndUserRequisition'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 8
          Width = 145
        end
        object teTransportHandler: TcxDBTextEdit
          Left = 320
          Top = 98
          DataBinding.DataField = 'TransportHandler'
          DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadDelAdress
          TabOrder = 9
          Width = 145
        end
        object cxButton1: TcxButton
          Left = 872
          Top = 96
          Width = 113
          Height = 25
          Action = acCreateAddress
          TabOrder = 18
        end
      end
      object grdAddress: TcxGrid
        Left = 0
        Top = 171
        Width = 1136
        Height = 40
        Align = alBottom
        TabOrder = 1
        object grdAddressDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
      object grdLO: TcxGrid
        Left = 0
        Top = 123
        Width = 1136
        Height = 45
        Align = alClient
        TabOrder = 2
        object grdLODBTableView1: TcxGridDBTableView
          PopupMenu = pmLONumber
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmLoadEntrySSPTemp.ds_LSP
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
    object tsLoadNote: TcxTabSheet
      Caption = 'Notering'
      object meInternalNote: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'InternalNote'
        DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
        TabOrder = 0
        Height = 211
        Width = 1136
      end
    end
    object tsTransferFiles: TcxTabSheet
      Caption = 'Meddelanden'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 41
        Align = alTop
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 8
          Top = 5
          Width = 96
          Height = 30
          Action = acRefreshTransferFiles
          TabOrder = 0
        end
      end
      object grdTransferFiles: TcxGrid
        Left = 0
        Top = 41
        Width = 1136
        Height = 170
        Align = alClient
        TabOrder = 1
        object grdTransferFilesDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = dmLoadEntrySSPTemp.ds_TransferFiles
          DataController.KeyFieldNames = 'LoadNo;InOut'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdTransferFilesDBTableView1FileName: TcxGridDBColumn
            DataBinding.FieldName = 'FileName'
            Width = 228
          end
          object grdTransferFilesDBTableView1TransferType: TcxGridDBColumn
            DataBinding.FieldName = 'TransferType'
            Visible = False
          end
          object grdTransferFilesDBTableView1DateCreated: TcxGridDBColumn
            Caption = 'Registerad'
            DataBinding.FieldName = 'DateCreated'
            Width = 340
          end
          object grdTransferFilesDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            Visible = False
          end
          object grdTransferFilesDBTableView1Complete: TcxGridDBColumn
            DataBinding.FieldName = 'Complete'
            Width = 104
          end
          object grdTransferFilesDBTableView1SendDate: TcxGridDBColumn
            DataBinding.FieldName = 'SendDate'
            Visible = False
          end
          object grdTransferFilesDBTableView1LONo: TcxGridDBColumn
            Caption = 'LO'
            DataBinding.FieldName = 'LONo'
            Width = 105
          end
          object grdTransferFilesDBTableView1HTF_FS: TcxGridDBColumn
            Caption = 'HTF FS'
            DataBinding.FieldName = 'HTF_FS'
            Width = 203
          end
          object grdTransferFilesDBTableView1LoadNo: TcxGridDBColumn
            Caption = 'Lastnr'
            DataBinding.FieldName = 'LoadNo'
            Width = 105
          end
          object grdTransferFilesDBTableView1Meddelande: TcxGridDBColumn
            DataBinding.FieldName = 'Meddelande'
            Width = 113
          end
          object grdTransferFilesDBTableView1InOut: TcxGridDBColumn
            DataBinding.FieldName = 'InOut'
            Visible = False
          end
        end
        object grdTransferFilesLevel1: TcxGridLevel
          GridView = grdTransferFilesDBTableView1
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 850
      Height = 55
      Align = alClient
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 848
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel6: TPanel
      Left = 850
      Top = 0
      Width = 222
      Height = 55
      Align = alRight
      TabOrder = 1
      object cxLabel1: TcxLabel
        Left = 2
        Top = 11
        Caption = 'Lagerst'#228'lle:'
      end
      object cxLabel2: TcxLabel
        Left = 2
        Top = 31
        Caption = 'Lagergrupp:'
      end
      object lcPIP: TcxDBLookupComboBox
        Left = 64
        Top = 3
        DataBinding.DataField = 'PIP'
        DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PIPNO'
        Properties.ListColumns = <
          item
            FieldName = 'PIPNAME'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 2
        Width = 137
      end
      object lcLIP: TcxDBLookupComboBox
        Left = 64
        Top = 27
        DataBinding.DataField = 'LIP'
        DataBinding.DataSource = dmLoadEntrySSPTemp.ds_LoadHead
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
        TabOrder = 3
        Width = 137
      end
    end
    object Panel7: TPanel
      Left = 1072
      Top = 0
      Width = 66
      Height = 55
      Align = alRight
      TabOrder = 2
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 64
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object PanelLORows: TPanel
    Left = 0
    Top = 291
    Width = 1138
    Height = 156
    Align = alTop
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1136
      Height = 14
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LASTORDERRADER'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object grdLORows: TcxGrid
      Left = 1
      Top = 15
      Width = 1136
      Height = 140
      Align = alClient
      TabOrder = 1
      object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = ppmenuLO_Lines
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmLoadEntrySSPTemp.dsLORows
        DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnVertSizing = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        Styles.OnGetContentStyle = grdLORowsDBBandedTableView1StylesGetContentStyle
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
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 45
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PKGCODE'
          PropertiesClassName = 'TcxLabelProperties'
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
          Width = 196
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LENGTHDESC'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 93
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOOFUNITS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 65
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOLUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 63
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 50
          Position.BandIndex = 1
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRICEUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REFERENCE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 89
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LEV_PERIOD_START'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LEV_PERIOD_END'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 43
          Position.BandIndex = 1
          Position.ColIndex = 21
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
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KR_Ref'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 49
          Position.BandIndex = 1
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOM_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOM_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUCTGROUPNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCSPERPKG'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 19
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
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACT_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACT_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
          Caption = 'Akt.l'#228'ngd'
          DataBinding.FieldName = 'ACT_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 57
          Position.BandIndex = 1
          Position.ColIndex = 10
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
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MAX_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 16
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
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthGroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INCH_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVCH_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SpeciesNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GradeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PackageTypeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Prislista'
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 1
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
          Caption = 'Till'#229't alla l'#228'ngder'
          DataBinding.FieldName = 'OverrideRL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 60
          Position.BandIndex = 1
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
      end
      object grdLORowsLevel1: TcxGridLevel
        GridView = grdLORowsDBBandedTableView1
      end
    end
  end
  object PanelPackages: TPanel
    Left = 0
    Top = 450
    Width = 1138
    Height = 321
    Align = alClient
    TabOrder = 7
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1136
      Height = 16
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PAKET'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object grdPkgs: TcxGrid
      Left = 1
      Top = 17
      Width = 1136
      Height = 303
      Align = alClient
      TabOrder = 1
      object grdPkgsDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = pmPkgs
        OnKeyDown = grdPkgsDBBandedTableView1KeyDown
        NavigatorButtons.ConfirmDelete = False
        OnEditing = grdPkgsDBBandedTableView1Editing
        DataController.DataSource = dmLoadEntrySSPTemp.ds_LoadPackages2
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
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsCustomize.ColumnVertSizing = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        Styles.OnGetContentStyle = grdPkgsDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Caption = 'OTHER'
          end>
        object grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PACKAGENO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate
          Options.Filtering = False
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SupplierCode'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUCT'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 105
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
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProblemPackageLog'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 117
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MFBM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KVM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOPM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS_PER_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 122
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
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ActualThicknessMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ActualWidthMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SpeciesNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MainGradeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NoOfLengths'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OverrideMatch'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 30
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
          Position.ColIndex = 21
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
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn
          Caption = 'Fixed paket'
          DataBinding.FieldName = 'NoOfPackages'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
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
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Pkg_State'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Pkg_Function'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Changed'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 35
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
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OverrideRL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn
          Caption = 'IK'
          DataBinding.FieldName = 'InvNr'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1CustomPcs: TcxGridDBBandedColumn
          Caption = 'Styck best'#228'llt'
          DataBinding.FieldName = 'CustomPcs'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPkgsDBBandedTableView1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Pkgs'
      'LONumber'
      'LOLines')
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
    UseSystemFont = True
    Left = 408
    Top = 120
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
          ItemName = 'lbPackageEntry'
        end
        item
          Visible = True
          ItemName = 'lbReValidateAllPkgs'
        end
        item
          Visible = True
          ItemName = 'lbStartBarCodeReading'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
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
          ItemName = 'lbHyvelOrder'
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
    object lbHyvelOrder: TdxBarLargeButton
      Action = acPrintHyvelOrder
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
    object bbCustomPkgGrid: TdxBarButton
      Action = acChangePKGLayout
      Category = 0
    end
    object bbCustomgrdLONumber: TdxBarButton
      Action = acChangeLOLayout
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
      Action = acStreckKodsinlasning
      Category = 0
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
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acPrintMeny
      Category = 0
      DropDownMenu = pmPrint
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
    object dxBarButton5: TdxBarButton
      Action = acFixedPaket
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSend700Message
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acGetHTFFile
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acAktiveraLast
      Category = 0
    end
    object lbValidatePkg: TdxBarLargeButton
      Action = acValidatePkg
      Category = 1
    end
    object lbAddPackage: TdxBarLargeButton
      Action = acAddPkg
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
    object bbMatcha: TdxBarButton
      Caption = 'Manuell koppling'
      Category = 1
      Hint = 'Manuell koppling'
      Visible = ivAlways
    end
    object bbConnectPkgsToLO: TdxBarButton
      Action = acKopplaPaketMotLOManuellt
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Action = acShowNewRow
      Category = 1
    end
    object lbAddLONumber: TdxBarLargeButton
      Caption = 'L'#228'gg till LO'
      Category = 2
      Enabled = False
      Visible = ivAlways
    end
    object lbRemoveLONumber: TdxBarLargeButton
      Caption = 'Ta bort LO'
      Category = 2
      Enabled = False
      Visible = ivAlways
    end
    object bbUndoRemove: TdxBarButton
      Caption = #197'ngra ta bort'
      Category = 2
      Enabled = False
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = acOpenLOForm
      Category = 2
    end
    object bbPickPkgNos: TdxBarButton
      Action = acPickPkgNos
      Category = 3
    end
    object bbCustomLOLinesGrid: TdxBarButton
      Action = acChangeLORowLayout
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
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbAddPackage'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
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
        BeginGroup = True
        Visible = True
        ItemName = 'bbCustomPkgGrid'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    OnPopup = pmPkgsPopup
    Left = 280
    Top = 480
  end
  object pmLONumber: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'bbCustomgrdLONumber'
      end>
    UseOwnFont = False
    Left = 320
    Top = 128
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 400
    Top = 168
    Bitmap = {
      494C01010B000E00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00000000000000000000000000000000FFFFFFFE00FFFFFFFF000000FFFFFFF8
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
    Left = 224
    Top = 280
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
        ItemName = 'bbCustomLOLinesGrid'
      end>
    UseOwnFont = False
    Left = 280
    Top = 376
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 368
    Top = 368
    object acValidatePkg: TAction
      Caption = 'Validera paket'
      OnExecute = acValidatePkgExecute
      OnUpdate = acValidatePkgUpdate
    end
    object acValidateAllPkgs: TAction
      Caption = 'Val. alla pkt'
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
    object acAddPkg: TAction
      Caption = 'L'#228'gg till paket'
      OnExecute = acAddPkgExecute
      OnUpdate = acAddPkgUpdate
    end
    object acConnectMarkedPkgsToLO: TAction
      Caption = 'Koppla markerade paket mot LO-rad'
    end
    object acAddPkgByPkgCode: TAction
      Caption = 'L'#228'gg till paket per paketkod'
      OnExecute = acAddPkgByPkgCodeExecute
      OnUpdate = acAddPkgByPkgCodeUpdate
    end
    object acPickPkgNos: TAction
      Caption = 'Plocka paketnr'
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
      Caption = 'Koppla markerade paket mot LO manuellt'
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
      OnExecute = acPrintFSExecute
      OnUpdate = acPrintFSUpdate
    end
    object acPrintHyvelOrder: TAction
      Category = 'Print'
      Caption = 'Hyvelorder'
      OnExecute = acPrintHyvelOrderExecute
      OnUpdate = acPrintHyvelOrderUpdate
    end
    object acLOAllaVerk: TAction
      Category = 'Print'
      Caption = 'Lastorder alla verk'
      OnExecute = acLOAllaVerkExecute
      OnUpdate = acLOAllaVerkUpdate
    end
    object acPrintLOErtVerk: TAction
      Category = 'Print'
      Caption = 'Lastorder ert verk'
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
      Caption = 'Pktinmat. F9'
      Hint = #214'ppna paketinmatnings formul'#228'r'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = acPkgEntryExecute
      OnUpdate = acPkgEntryUpdate
    end
    object acStreckKodsinlasning: TAction
      Caption = 'Streckkod.'
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
    object acChangePKGLayout: TAction
      Caption = 'F'#228'ltv'#228'ljaren'
      OnExecute = acChangePKGLayoutExecute
    end
    object acChangeLORowLayout: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangeLORowLayoutExecute
    end
    object acChangeLOLayout: TAction
      Caption = 'F'#228'ltv'#228'ljaren'
      OnExecute = acChangeLOLayoutExecute
    end
    object acShowNewRow: TAction
      Caption = 'Inmatningsrad'
      OnExecute = acShowNewRowExecute
    end
    object acImportPackages: TAction
      Caption = 'Imp.paket'
      Hint = 'Importera paket med woodx'
      ImageIndex = 2
      OnExecute = acImportPackagesExecute
      OnUpdate = acImportPackagesUpdate
    end
    object acCreateInternLO: TAction
      Caption = 'Auto LO'
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
      ShortCut = 119
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
    object acFixedPaket: TAction
      Caption = 'Markera fixed paket'
      OnExecute = acFixedPaketExecute
    end
    object acSend700Message: TAction
      Caption = 'Send 700 msg'
      ImageIndex = 2
      OnExecute = acSend700MessageExecute
      OnUpdate = acSend700MessageUpdate
    end
    object acGetHTFFile: TAction
      Caption = 'H'#228'mta HTF fil'
      ImageIndex = 2
      OnExecute = acGetHTFFileExecute
      OnUpdate = acGetHTFFileUpdate
    end
    object acAktiveraLast: TAction
      Caption = 'Aktivera last'
      ImageIndex = 10
      OnExecute = acAktiveraLastExecute
      OnUpdate = acAktiveraLastUpdate
    end
    object acRefreshTransferFiles: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshTransferFilesExecute
    end
    object acCreateAddress: TAction
      Caption = 'Ny leveransadress'
      OnExecute = acCreateAddressExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = True
    Left = 112
    Top = 210
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 161
    Top = 175
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
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
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
        ItemName = 'lbHyvelOrder'
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
    UseOwnFont = False
    Left = 369
    Top = 191
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 417
    Top = 319
    object LggtillLO1: TMenuItem
      Caption = 'L'#228'gg till LO'
      Enabled = False
    end
    object Lggtillpaket1: TMenuItem
      Action = acAddPkg
    end
    object Lggtillpaketperpaketkod1: TMenuItem
      Action = acAddPkgByPkgCode
    end
    object Fltvljaren1: TMenuItem
      Action = acChangeLOLayout
    end
    object ndralayout1: TMenuItem
      Action = acChangeLORowLayout
    end
    object Fltvljaren2: TMenuItem
      Action = acChangePKGLayout
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object KopplamarkeradepaketmotLOrad1: TMenuItem
      Action = acConnectMarkedPkgsToLO
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
      Action = acPrintHyvelOrder
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
    object Inmatningsrad1: TMenuItem
      Action = acShowNewRow
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
    object ngratabort1: TMenuItem
      Caption = #197'ngra ta bort'
      Enabled = False
    end
    object ngratabort2: TMenuItem
      Action = acValidateAllPkgs
    end
    object Validerapaket1: TMenuItem
      Action = acValidatePkg
    end
  end
end
