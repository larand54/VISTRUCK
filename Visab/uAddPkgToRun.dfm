object fAddPkgToRun: TfAddPkgToRun
  Left = 197
  Top = 107
  Caption = 'Paket ej kopplade till k'#246'rorder'
  ClientHeight = 974
  ClientWidth = 1205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 69
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object lcPRODUCER: TcxDBLookupComboBox
      Left = 98
      Top = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'PRODUCER'
      DataBinding.DataSource = dsProps
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 317
    end
    object deRegDate: TcxDBDateEdit
      Left = 906
      Top = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = dsProps
      TabOrder = 1
      Width = 149
    end
    object cxLabel1: TcxLabel
      Left = 719
      Top = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Visa paket producerade FOM:'
    end
    object cxLabel2: TcxLabel
      Left = 30
      Top = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Producent:'
    end
    object lcREGPOINT: TcxDBLookupComboBox
      Left = 492
      Top = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'REGPOINT'
      DataBinding.DataSource = dsProps
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 218
    end
    object cxLabel3: TcxLabel
      Left = 423
      Top = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'M'#228'tpunkt:'
    end
    object bUpdate: TcxButton
      Left = 1083
      Top = 20
      Width = 92
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acRefresh
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 923
    Width = 1205
    Height = 51
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 69
    Width = 1205
    Height = 854
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1203
      Height = 549
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 1201
        Height = 51
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
      end
      object grdNonAssignedPkgs: TcxGrid
        Left = 1
        Top = 52
        Width = 1201
        Height = 496
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object grdNonAssignedPkgsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_UsedPkgs
          DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#######'
              Kind = skCount
              FieldName = 'PAKETNR'
              Column = grdNonAssignedPkgsDBTableView1PAKETNR
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdNonAssignedPkgsDBTableView1PRODUKT: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUKT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 443
          end
          object grdNonAssignedPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn
            DataBinding.FieldName = 'ANTPERL'#196'NGD'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 235
          end
          object grdNonAssignedPkgsDBTableView1PAKETNR: TcxGridDBColumn
            DataBinding.FieldName = 'PAKETNR'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 0
            SortOrder = soAscending
            Width = 56
          end
          object grdNonAssignedPkgsDBTableView1LEVKOD: TcxGridDBColumn
            DataBinding.FieldName = 'LEVKOD'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 46
          end
          object grdNonAssignedPkgsDBTableView1AM3: TcxGridDBColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1NM3: TcxGridDBColumn
            DataBinding.FieldName = 'NM3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1STYCK: TcxGridDBColumn
            DataBinding.FieldName = 'STYCK'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1MFBM: TcxGridDBColumn
            DataBinding.FieldName = 'MFBM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1PackageTypeNo: TcxGridDBColumn
            DataBinding.FieldName = 'PackageTypeNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1AM1: TcxGridDBColumn
            DataBinding.FieldName = 'AM1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1MAXLENGTH: TcxGridDBColumn
            DataBinding.FieldName = 'MAXLENGTH'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdNonAssignedPkgsDBTableView1Registrerad: TcxGridDBColumn
            DataBinding.FieldName = 'Registrerad'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 111
          end
          object grdNonAssignedPkgsDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 70
          end
        end
        object grdNonAssignedPkgsLevel1: TcxGridLevel
          GridView = grdNonAssignedPkgsDBTableView1
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 558
      Width = 1203
      Height = 295
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      TabOrder = 1
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 1201
        Height = 59
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 325
          Top = 6
          Width = 257
          Height = 44
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acAssignSelectedPkgToRun
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 601
          Top = 6
          Width = 257
          Height = 44
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = acPktUtanKorOrder
          TabOrder = 1
          Visible = False
        end
      end
      object grdSortingOrders: TcxGrid
        Left = 1
        Top = 60
        Width = 1201
        Height = 234
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        object grdSortingOrdersDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_SorOrdRow
          DataController.KeyFieldNames = 'SortingOrderNo;SortingOrderRowNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdSortingOrdersDBTableView1SortingOrderNo: TcxGridDBColumn
            DataBinding.FieldName = 'SortingOrderNo'
            PropertiesClassName = 'TcxLabelProperties'
            SortIndex = 0
            SortOrder = soAscending
          end
          object grdSortingOrdersDBTableView1SortingOrderRowNo: TcxGridDBColumn
            DataBinding.FieldName = 'SortingOrderRowNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdSortingOrdersDBTableView1Produkt: TcxGridDBColumn
            DataBinding.FieldName = 'Produkt'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdSortingOrdersDBTableView1Kvalitet: TcxGridDBColumn
            DataBinding.FieldName = 'Kvalitet'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1Trslag: TcxGridDBColumn
            DataBinding.FieldName = 'Tr'#228'slag'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1Utfrande: TcxGridDBColumn
            DataBinding.FieldName = 'Utf'#246'rande'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1IMP: TcxGridDBColumn
            DataBinding.FieldName = 'IMP'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1AT: TcxGridDBColumn
            DataBinding.FieldName = 'AT'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1AB: TcxGridDBColumn
            DataBinding.FieldName = 'AB'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1NT: TcxGridDBColumn
            DataBinding.FieldName = 'NT'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1NB: TcxGridDBColumn
            DataBinding.FieldName = 'NB'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1ProdAM1: TcxGridDBColumn
            DataBinding.FieldName = 'ProdAM1'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1ProdAM3: TcxGridDBColumn
            DataBinding.FieldName = 'ProdAM3'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdSortingOrdersDBTableView1ProdPCS: TcxGridDBColumn
            DataBinding.FieldName = 'ProdPCS'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1ProdPKT: TcxGridDBColumn
            DataBinding.FieldName = 'ProdPKT'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdSortingOrdersDBTableView1ProdNM3: TcxGridDBColumn
            DataBinding.FieldName = 'ProdNM3'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdSortingOrdersDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
          end
        end
        object grdSortingOrdersLevel1: TcxGridLevel
          GridView = grdSortingOrdersDBTableView1
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 550
      Width = 1203
      Height = 8
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salBottom
      Control = Panel6
      Color = clMaroon
      ParentColor = False
    end
  end
  object ActionList1: TActionList
    Left = 473
    Top = 81
    object acClose: TAction
      Caption = 'St'#228'ng'
    end
    object acAssignSelectedPkgToRun: TAction
      Caption = 'Koppla markerade paket till k'#246'rorder'
      OnExecute = acAssignSelectedPkgToRunExecute
      OnUpdate = acAssignSelectedPkgToRunUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshExecute
    end
    object acPktUtanKorOrder: TAction
      Caption = 'Paket utan k'#246'rorder'
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 344
    Top = 384
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      '')
    Left = 344
    Top = 336
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
  end
  object mtProps: TkbmMemTable
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
        Name = 'RegDate'
        DataType = ftDateTime
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
        Name = 'RoleType'
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
    Left = 398
    Top = 336
    object mtPropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtPropsRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtPropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtPropsRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtPropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtPropsProducerNoChange
    end
    object mtPropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtPropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtPropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtPropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtPropsLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtPropsREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtPropsPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsRoleType: TIntegerField
      FieldName = 'RoleType'
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 398
    Top = 384
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 22
    Top = 384
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 86
    Top = 384
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 166
    Top = 384
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 246
    Top = 384
  end
  object cds_Verk: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName'
      '')
    Left = 24
    Top = 336
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_producer: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  R.RoleType = 9'
      ''
      'Order by C.clientName')
    Left = 88
    Top = 336
    object cds_producerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_producerClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_producerSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_RegPoint: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName')
    Left = 168
    Top = 336
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
  end
  object cds_LengthGroup: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    Left = 248
    Top = 336
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object cds_UsedPkgs: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUKT,'
      'ptl.pcsperlength '#9#9'    AS '#9'ANTPERL'#196'NGD,'
      'PP.PackageNo'#9#9#9'    AS'#9'PAKETNR,'
      'PP.SUPPLIERCODE'#9#9#9'  AS '#9'LEVKOD,'
      'P.Totalm3Actual'#9#9#9'    AS '#9'AM3,'
      'P.Totalm3Nominal'#9#9#9'  AS '#9'NM3,'
      'P.TotalNoOfPieces'#9#9#9'  AS'#9'STYCK,'
      'P.TotalMFBMNominal   '#9'  AS  MFBM,'
      'IsNull(P.PackageTypeNo,0) AS PackageTypeNo,'
      ''
      'PR.ProductNo,'
      'P.TotalLinealMeterActualLength AS AM1,'
      
        '      '#9'(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail' +
        ' PD'
      
        '      '#9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = P' +
        'D.ProductLengthNo'
      '      '#9'WHERE PD.PackageTypeNo = PP.PackageTypeNo) AS MAXLENGTH,'
      ''
      'PP.ProductionDate AS Registrerad'
      'FROM'
      'dbo.Package_Production PP'
      'LEFT OUTER JOIN dbo.PackageType P'#9#9
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'ON '#9'P.PackageTypeNo = PP.PackageTypeNo'
      ''
      'WHERE'
      'pp.ProductionUnitNo = :ProductionUnitNo'
      'and pp.SupplierNo = :SupplierNo'
      'and PP.Operation = 0'
      'and PP.ProductionDate >= :ProducedSince'
      'and pp.PackageNo not in (Select Sorp.PackageNo'
      'From dbo.SortingOrderNewPkgs SORP'
      'Where sorp.SupplierCode = pp.SupplierCode)')
    Left = 456
    Top = 328
    ParamData = <
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCEDSINCE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_UsedPkgsPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'Registrerad'
      Size = 100
    end
    object cds_UsedPkgsANTPERLNGD: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_UsedPkgsPAKETNR: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PAKETNR'
      Origin = 'PAKETNR'
      Required = True
    end
    object cds_UsedPkgsLEVKOD: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_UsedPkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_UsedPkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_UsedPkgsSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_UsedPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cds_UsedPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ReadOnly = True
      Required = True
    end
    object cds_UsedPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_UsedPkgsAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
    end
    object cds_UsedPkgsMAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_UsedPkgsRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
    end
  end
  object ds_UsedPkgs: TDataSource
    DataSet = cds_UsedPkgs
    Left = 456
    Top = 384
  end
  object cds_SorOrdRow: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SOR.SortingOrderNo, SOR.SortingOrderRowNo,'
      'pd.ProductDisplayName AS Produkt,'
      'gd.GradeName AS Kvalitet,'
      'sc.SpeciesName AS Tr'#228'slag,'
      'sf.SurfacingName AS Utf'#246'rande,'
      'pc.ProductCategoryName AS IMP,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      '--SSP.ShippingPlanNo AS LONR,'
      'pg.SpeciesNo,'
      'pg.SurfacingNo,'
      'SOR.ProductNo,'
      '--SOR.*, '
      '--CSD.Reference AS M'#196'RKE,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdAM1,'
      ''
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdAM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderNewPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdPCS,'
      ''
      '(Select Count(SORP.PackageNo) FROM dbo.SortingOrderNewPkgs SORP'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdPKT,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdNM3'
      ''
      ''
      'FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SortingOrder SO on SO.SortingOrderNo = SOR.Sortin' +
        'gOrderNo'
      
        '--Left Outer Join dbo.SupplierShippingPlan SSP on SSP.SupplierSh' +
        'ipPlanObjectNo = SOR.CSDNo'
      
        '--Left Outer Join dbo.CustomerShippingPlanDetails CSD on CSD.Cus' +
        'tShipPlanDetailObjectNo = SSP.CustShipPlanDetailObjectNo'
      'INNER JOIN      dbo.Product pd ON pd.ProductNo = SOR.ProductNo'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE SO.ProducerNo = :ProducerNo'
      'and SO.ProductionUnitNo = :ProductionUnitNo'
      'and SO.Status < 3')
    Left = 504
    Top = 328
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SorOrdRowSortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rordernr'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SorOrdRowSortingOrderRowNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SorOrdRowProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object cds_SorOrdRowKvalitet: TStringField
      FieldName = 'Kvalitet'
      Origin = 'Kvalitet'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_SorOrdRowTrslag: TStringField
      FieldName = 'Tr'#228'slag'
      Origin = '[Tr'#228'slag]'
      Required = True
      Size = 30
    end
    object cds_SorOrdRowUtfrande: TStringField
      FieldName = 'Utf'#246'rande'
      Origin = '[Utf'#246'rande]'
      Required = True
      Size = 30
    end
    object cds_SorOrdRowIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      Required = True
    end
    object cds_SorOrdRowAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_SorOrdRowAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_SorOrdRowNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_SorOrdRowNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_SorOrdRowSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_SorOrdRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_SorOrdRowProdAM1: TFloatField
      FieldName = 'ProdAM1'
      Origin = 'ProdAM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdAM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ProdAM3'
      Origin = 'ProdAM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'ProdPCS'
      Origin = 'ProdPCS'
      ReadOnly = True
      DisplayFormat = '#,###,###'
    end
    object cds_SorOrdRowProdPKT: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'ProdPKT'
      Origin = 'ProdPKT'
      ReadOnly = True
      DisplayFormat = '#,###,###'
    end
    object cds_SorOrdRowProdNM3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'ProdNM3'
      Origin = 'ProdNM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
  end
  object ds_SorOrdRow: TDataSource
    DataSet = cds_SorOrdRow
    Left = 502
    Top = 384
  end
  object FD_AssignPkgToRun: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert into dbo.SortingOrderNewPkgs'
      '(SortingOrderNo,'
      'SortingOrderRowNo,'
      'PackageNo,'
      'SupplierCode,'
      'Status,'
      'OLDLIPNo,'
      'OLDMCClassNo,'
      'DateCreated,'
      'CreatedUser,'
      'PackageTypeNo,'
      'Price_SEKPerNM3,'
      'Price_SEKPerAM3)'
      ''
      'Select :SortingOrderNo,'
      ':SortingOrderRowNo,'
      ':PackageNo,'
      ':SupplierCode,'
      '0, --Status,'
      '(Select so.LIPNo FROM dbo.SortingOrder SO'
      'WHERE SO.SortingOrderNo = :SortingOrderNo) AS OLDLIPNo,'
      '0, --OLDMCClassNo,'
      'GetDate(), --DateCreated'
      ':CreatedUser,'
      ':PackageTypeNo,'
      '(Select sor.Price FROM dbo.SortingOrderRow SOR'
      'WHERE SOR.SortingOrderNo = :SortingOrderNo'
      
        'and SOR.SortingOrderRowNo = :SortingOrderRowNo) AS Price_SEKPerN' +
        'M3,'
      '0 AS Price_SEKPerAM3'
      '')
    Left = 584
    Top = 304
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FD_PoductToRun: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'INSERT INTO [vis_vida].[dbo].[SortingOrderRow]'
      '           ([SortingOrderNo]'
      '           ,[SortingOrderRowNo]'
      '           ,[CSDNo]'
      '           ,[ProductNo]'
      '           ,[MCClassNo]'
      '           ,[ProductLengthNo]'
      '           ,[LengthDescription]'
      '           ,[PlannedAM3]'
      '           ,[NoOfUnits]'
      '           ,[VolumeUnitNo]'
      '           ,[DateCreated]'
      '           ,[CreatedUser]'
      '           ,[PPP]'
      '           ,[ProdInstructNo]'
      '           ,[PcsIn]'
      '           ,[AM1In]'
      '           ,[TargetProduct]'
      '           ,[CostDist]'
      '           ,[Price]'
      '           ,[PriceUnit]'
      '           ,[Prio]'
      '           ,[Status]'
      '           ,[Mark]'
      '           ,[Customer]'
      '           ,[ExportRow]'
      '           ,[PriceListNo]'
      '           ,[SortOrder]'
      '           ,[NoteMark]'
      '           ,[NoteStamp]'
      '           ,[LIPNo]'
      '           ,[AM3]'
      '           ,[NM3]'
      '           ,[PCS]'
      '           ,[AM1]'
      '           ,[OutturnOfInputAM3]'
      '           ,[ProductValue]'
      '           ,[Languagecode]'
      '           ,[SizeFormat]'
      '           ,[LengthFormat]'
      '           ,[VolumeFormat]'
      '           ,[Urlagg]'
      '           ,[EndPkgAllowed]'
      '           ,[PkgPrefix]'
      '           ,[Notering]'
      '           ,[StickRecipe]'
      '           ,[RefCopies]'
      '           ,[StackerNo]'
      '           ,[AntalBitarUt]'
      '           ,[AntalKapSnitt]'
      '           ,[PlannedNM3]'
      '           ,[ArtikelKod])'
      '     VALUES'
      '           (:SortingOrderNo'
      '           ,:SortingOrderRowNo'
      '           ,0 --CSDNo, int,>'
      '           ,:ProductNo'
      '           ,0 --<MCClassNo, int,>'
      '           ,533 --<ProductLengthNo, int,>'
      
        '           ,'#39'Fallande l'#228'ngd'#39' --<LengthDescription, varchar(100),' +
        '>'
      '           ,0.0 --<PlannedAM3, decimal(18,3),>'
      '           ,0.0 --<NoOfUnits, decimal(18,3),>'
      '           ,3 --<VolumeUnitNo, int,>'
      '           ,GetDate() --<DateCreated, datetime,>'
      '           ,:CreatedUser'
      '           ,0-- PPP, int,>'
      '           ,0 --ProdInstructNo, int,>'
      '           ,0.0 --<PcsIn, decimal(18,5),>'
      '           ,0.0 --<AM1In, decimal(18,5),>'
      '           ,0 --<TargetProduct, int,>'
      '           ,0.0 --<CostDist, decimal(18,2),>'
      '           ,0.0 --<Price, decimal(18,2),>'
      '           ,0 --<PriceUnit, int,>'
      '           ,0 --<Prio, int,>'
      '           ,0 --<Status, int,>'
      '           ,'#39#39' -- <Mark, varchar(50),>'
      '           ,'#39#39' --<Customer, varchar(80),>'
      '           ,0 --<ExportRow, int,>'
      '           ,0 --<PriceListNo, int,>'
      '           ,0 --<SortOrder, int,>'
      '           ,'#39#39' --<NoteMark, varchar(50),>'
      '           ,'#39#39' --<NoteStamp, varchar(50),>'
      '           ,0 --<LIPNo, int,>'
      '           ,0.0 --<AM3, decimal(18,3),>'
      '           ,0.0 --<NM3, decimal(18,3),>'
      '           ,0 --<PCS, int,>'
      '           ,0.0 --<AM1, decimal(18,3),>'
      '           ,0.0 --<OutturnOfInputAM3, decimal(18,3),>'
      '           ,0.0 --<ProductValue, decimal(18,3),>'
      '           ,0 --<Languagecode, int,>'
      '           ,0 --<SizeFormat, int,>'
      '           ,0 --<LengthFormat, int,>'
      '           ,0 --<VolumeFormat, int,>'
      '           ,0 --<Urlagg, int,>'
      '           ,0 --<EndPkgAllowed, int,>'
      '           ,'#39#39' --<PkgPrefix, varchar(5),>'
      '           ,'#39#39' --<Notering, varchar(200),>'
      '           ,'#39#39' --<StickRecipe, varchar(100),>'
      '           ,0 --<RefCopies, int,>'
      '           ,-1 --<StackerNo, int,>'
      '           ,1 --<AntalBitarUt, int,>'
      '           ,0 --<AntalKapSnitt, int,>'
      '           ,0.0 --<PlannedNM3, decimal(18,3),>'
      '           ,'#39#39') --<ArtikelKod, varchar(30),>)')
    Left = 640
    Top = 304
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object siLangLinked_fAddPkgToRun: TsiLangLinked
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
      'ListField')
    Left = 496
    Top = 456
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006400640050006B00670054006F0052007500
      6E000100500061006B0065007400200065006A0020006B006F00700070006C00
      6100640065002000740069006C006C0020006B00F60072006F00720064006500
      72000100010001000100500061006B0065007400200065006A0020006B006F00
      700070006C006100640065002000740069006C006C0020006B00F60072006F00
      72006400650072000D000A0061006300410073007300690067006E0053006500
      6C006500630074006500640050006B00670054006F00520075006E0001004B00
      6F00700070006C00610020006D00610072006B00650072006100640065002000
      700061006B00650074002000740069006C006C0020006B00F60072006F007200
      64006500720001000100010001004B006F00700070006C00610020006D006100
      72006B00650072006100640065002000700061006B0065007400200074006900
      6C006C0020006B00F60072006F0072006400650072000D000A00610063004300
      6C006F0073006500010053007400E4006E006700010001000100010053007400
      E4006E0067000D000A006100630050006B0074005500740061006E004B006F00
      72004F0072006400650072000100500061006B00650074002000750074006100
      6E0020006B00F60072006F007200640065007200010001000100010050006100
      6B006500740020007500740061006E0020006B00F60072006F00720064006500
      72000D000A006100630052006500660072006500730068000100550070007000
      6400610074006500720061000100010001000100550070007000640061007400
      6500720061000D000A00630078004C006100620065006C003100010056006900
      730061002000700061006B00650074002000700072006F006400750063006500
      7200610064006500200046004F004D003A000100010001000100560069007300
      61002000700061006B00650074002000700072006F0064007500630065007200
      610064006500200046004F004D003A000D000A00630078004C00610062006500
      6C0032000100500072006F0064007500630065006E0074003A00010001000100
      0100500072006F0064007500630065006E0074003A000D000A00630078004C00
      6100620065006C00330001004D00E4007400700075006E006B0074003A000100
      0100010001004D00E4007400700075006E006B0074003A000D000A0067007200
      64004E006F006E00410073007300690067006E006500640050006B0067007300
      440042005400610062006C0065005600690065007700310041004D0031000100
      41004D003100010001000100010041004D0031000D000A006700720064004E00
      6F006E00410073007300690067006E006500640050006B006700730044004200
      5400610062006C0065005600690065007700310041004D003300010041004D00
      3300010001000100010041004D0033000D000A006700720064004E006F006E00
      410073007300690067006E006500640050006B00670073004400420054006100
      62006C0065005600690065007700310041004E0054005000450052004C004E00
      47004400010053007400790063006B002F006C00E4006E006700640001000100
      0100010053007400790063006B002F006C00E4006E00670064000D000A006700
      720064004E006F006E00410073007300690067006E006500640050006B006700
      7300440042005400610062006C006500560069006500770031004C0045005600
      4B004F0044000100500072006500660069007800010001000100010050007200
      65006600690078000D000A006700720064004E006F006E004100730073006900
      67006E006500640050006B0067007300440042005400610062006C0065005600
      69006500770031004D00410058004C0045004E0047005400480001004D004100
      58004C0045004E0047005400480001000100010001004D00410058004C004500
      4E004700540048000D000A006700720064004E006F006E004100730073006900
      67006E006500640050006B0067007300440042005400610062006C0065005600
      69006500770031004D00460042004D0001004D00460042004D00010001000100
      01004D00460042004D000D000A006700720064004E006F006E00410073007300
      690067006E006500640050006B0067007300440042005400610062006C006500
      560069006500770031004E004D00330001004E004D0033000100010001000100
      4E004D0033000D000A006700720064004E006F006E0041007300730069006700
      6E006500640050006B0067007300440042005400610062006C00650056006900
      6500770031005000610063006B0061006700650054007900700065004E006F00
      01005000610063006B0061006700650054007900700065004E006F0001000100
      010001005000610063006B0061006700650054007900700065004E006F000D00
      0A006700720064004E006F006E00410073007300690067006E00650064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      41004B00450054004E0052000100500061006B00650074006E00720001000100
      01000100500061006B00650074006E0072000D000A006700720064004E006F00
      6E00410073007300690067006E006500640050006B0067007300440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      500072006F0064007500630074004E006F000D000A006700720064004E006F00
      6E00410073007300690067006E006500640050006B0067007300440042005400
      610062006C00650056006900650077003100500052004F00440055004B005400
      0100500072006F00640075006B0074000100010001000100500072006F006400
      75006B0074000D000A006700720064004E006F006E0041007300730069006700
      6E006500640050006B0067007300440042005400610062006C00650056006900
      6500770031005200650067006900730074007200650072006100640001005200
      6500670069007300740072006500720061006400010001000100010052006500
      6700690073007400720065007200610064000D000A006700720064004E006F00
      6E00410073007300690067006E006500640050006B0067007300440042005400
      610062006C0065005600690065007700310053005400590043004B0001005300
      5400590043004B00010001000100010053005400590043004B000D000A006700
      7200640053006F007200740069006E0067004F00720064006500720073004400
      42005400610062006C0065005600690065007700310041004200010041004200
      0100010001000100410042000D000A0067007200640053006F00720074006900
      6E0067004F0072006400650072007300440042005400610062006C0065005600
      6900650077003100410054000100410054000100010001000100410054000D00
      0A0067007200640053006F007200740069006E0067004F007200640065007200
      7300440042005400610062006C0065005600690065007700310049004D005000
      010049004D005000010001000100010049004D0050000D000A00670072006400
      53006F007200740069006E0067004F0072006400650072007300440042005400
      610062006C006500560069006500770031004B00760061006C00690074006500
      740001004B00760061006C00690074006500740001000100010001004B007600
      61006C0069007400650074000D000A0067007200640053006F00720074006900
      6E0067004F0072006400650072007300440042005400610062006C0065005600
      69006500770031004E00420001004E00420001000100010001004E0042000D00
      0A0067007200640053006F007200740069006E0067004F007200640065007200
      7300440042005400610062006C006500560069006500770031004E0054000100
      4E00540001000100010001004E0054000D000A0067007200640053006F007200
      740069006E0067004F0072006400650072007300440042005400610062006C00
      650056006900650077003100500072006F00640041004D003100010050007200
      6F00640041004D0031000100010001000100500072006F00640041004D003100
      0D000A0067007200640053006F007200740069006E0067004F00720064006500
      72007300440042005400610062006C0065005600690065007700310050007200
      6F00640041004D003300010041004D003300010001000100010041004D003300
      0D000A0067007200640053006F007200740069006E0067004F00720064006500
      72007300440042005400610062006C0065005600690065007700310050007200
      6F0064004E004D00330001004E004D00330001000100010001004E004D003300
      0D000A0067007200640053006F007200740069006E0067004F00720064006500
      72007300440042005400610062006C0065005600690065007700310050007200
      6F006400500043005300010053007400790063006B0001000100010001005300
      7400790063006B000D000A0067007200640053006F007200740069006E006700
      4F0072006400650072007300440042005400610062006C006500560069006500
      77003100500072006F00640050004B0054000100500061006B00650074000100
      010001000100500061006B00650074000D000A0067007200640053006F007200
      740069006E0067004F0072006400650072007300440042005400610062006C00
      650056006900650077003100500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F000100010001000100500072006F00
      64007500630074004E006F000D000A0067007200640053006F00720074006900
      6E0067004F0072006400650072007300440042005400610062006C0065005600
      6900650077003100500072006F00640075006B0074000100500072006F006400
      75006B0074000100010001000100500072006F00640075006B0074000D000A00
      67007200640053006F007200740069006E0067004F0072006400650072007300
      440042005400610062006C0065005600690065007700310053006F0072007400
      69006E0067004F0072006400650072004E006F0001004B00F60072006F007200
      6400650072006E00720001000100010001004B00F60072006F00720064006500
      72006E0072000D000A0067007200640053006F007200740069006E0067004F00
      72006400650072007300440042005400610062006C0065005600690065007700
      310053006F007200740069006E0067004F00720064006500720052006F007700
      4E006F0001005200610064006E00720001000100010001005200610064006E00
      72000D000A0067007200640053006F007200740069006E0067004F0072006400
      650072007300440042005400610062006C006500560069006500770031005300
      7000650063006900650073004E006F0001005300700065006300690065007300
      4E006F00010001000100010053007000650063006900650073004E006F000D00
      0A0067007200640053006F007200740069006E0067004F007200640065007200
      7300440042005400610062006C00650056006900650077003100530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F00010001000100010053007500720066006100630069006E00
      67004E006F000D000A0067007200640053006F007200740069006E0067004F00
      72006400650072007300440042005400610062006C0065005600690065007700
      31005400720073006C0061006700010054007200E40073006C00610067000100
      01000100010054007200E40073006C00610067000D000A006700720064005300
      6F007200740069006E0067004F00720064006500720073004400420054006100
      62006C00650056006900650077003100550074006600720061006E0064006500
      0100550074006600F600720061006E0064006500010001000100010055007400
      6600F600720061006E00640065000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A006300640073005F004C0065006E00670074006800470072006F00
      75007000470072006F00750070004E0061006D0065000100470072006F007500
      70004E0061006D0065000100010001000100470072006F00750070004E006100
      6D0065000D000A006300640073005F004C0065006E0067007400680047007200
      6F0075007000470072006F00750070004E006F000100470072006F0075007000
      4E006F000100010001000100470072006F00750070004E006F000D000A006300
      640073005F00700072006F006400750063006500720043006C00690065006E00
      74004E0061006D006500010043006C00690065006E0074004E0061006D006500
      010001000100010043006C00690065006E0074004E0061006D0065000D000A00
      6300640073005F00700072006F006400750063006500720043006C0069006500
      6E0074004E006F00010043006C00690065006E0074004E006F00010001000100
      010043006C00690065006E0074004E006F000D000A006300640073005F007000
      72006F00640075006300650072005300650061007200630068004E0061006D00
      650001005300650061007200630068004E0061006D0065000100010001000100
      5300650061007200630068004E0061006D0065000D000A006300640073005F00
      500072006F00700073004100670065006E0074004E006F000100410067006500
      6E0074004E006F0001000100010001004100670065006E0074004E006F000D00
      0A006300640073005F00500072006F00700073004100750074006F0043006F00
      6C005700690064007400680001004100750074006F0043006F006C0057006900
      64007400680001000100010001004100750074006F0043006F006C0057006900
      6400740068000D000A006300640073005F00500072006F007000730042006100
      720043006F00640065004E006F00010042006100720043006F00640065004E00
      6F00010001000100010042006100720043006F00640065004E006F000D000A00
      6300640073005F00500072006F007000730042006F006F006B0069006E006700
      54007900700065004E006F00010042006F006F006B0069006E00670054007900
      700065004E006F00010001000100010042006F006F006B0069006E0067005400
      7900700065004E006F000D000A006300640073005F00500072006F0070007300
      43006C00690065006E0074004E006F00010043006C00690065006E0074004E00
      6F00010001000100010043006C00690065006E0074004E006F000D000A006300
      640073005F00500072006F007000730043006F00700079005000630073000100
      43006F0070007900500063007300010001000100010043006F00700079005000
      630073000D000A006300640073005F00500072006F0070007300430075007300
      74006F006D00650072004E006F00010043007500730074006F006D0065007200
      4E006F00010001000100010043007500730074006F006D00650072004E006F00
      0D000A006300640073005F00500072006F007000730045006E00640050006500
      720069006F006400010045006E00640050006500720069006F00640001000100
      0100010045006E00640050006500720069006F0064000D000A00630064007300
      5F00500072006F0070007300460069006C007400650072004F00720064006500
      720044006100740065000100460069006C007400650072004F00720064006500
      720044006100740065000100010001000100460069006C007400650072004F00
      720064006500720044006100740065000D000A006300640073005F0050007200
      6F007000730046006F0072006D00010046006F0072006D000100010001000100
      46006F0072006D000D000A006300640073005F00500072006F00700073004700
      72006100640065005300740061006D0070004E006F0001004700720061006400
      65005300740061006D0070004E006F0001000100010001004700720061006400
      65005300740061006D0070004E006F000D000A006300640073005F0050007200
      6F0070007300470072006F00750070004200790042006F007800010047007200
      6F00750070004200790042006F0078000100010001000100470072006F007500
      70004200790042006F0078000D000A006300640073005F00500072006F007000
      7300470072006F0075007000530075006D006D00610072007900010047007200
      6F0075007000530075006D006D00610072007900010001000100010047007200
      6F0075007000530075006D006D006100720079000D000A006300640073005F00
      500072006F007000730049006E007000750074004F007000740069006F006E00
      010049006E007000750074004F007000740069006F006E000100010001000100
      49006E007000750074004F007000740069006F006E000D000A00630064007300
      5F00500072006F00700073004C0065006E0067007400680046006F0072006D00
      610074004E006F0001004C0065006E0067007400680046006F0072006D006100
      74004E006F0001000100010001004C0065006E0067007400680046006F007200
      6D00610074004E006F000D000A006300640073005F00500072006F0070007300
      4C0065006E00670074006800470072006F00750070004E006F0001004C006500
      6E00670074006800470072006F00750070004E006F0001000100010001004C00
      65006E00670074006800470072006F00750070004E006F000D000A0063006400
      73005F00500072006F00700073004C0065006E006700740068004F0070007400
      69006F006E0001004C0065006E006700740068004F007000740069006F006E00
      01000100010001004C0065006E006700740068004F007000740069006F006E00
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      680056006F006C0055006E00690074004E006F0001004C0065006E0067007400
      680056006F006C0055006E00690074004E006F0001000100010001004C006500
      6E0067007400680056006F006C0055006E00690074004E006F000D000A006300
      640073005F00500072006F00700073004C00490050004E006F0001004C004900
      50004E006F0001000100010001004C00490050004E006F000D000A0063006400
      73005F00500072006F00700073004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F0001004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F0001000100010001004C006F00
      6100640069006E0067004C006F0063006100740069006F006E004E006F000D00
      0A006300640073005F00500072006F00700073004C004F004F0062006A006500
      63007400540079007000650001004C004F004F0062006A006500630074005400
      79007000650001000100010001004C004F004F0062006A006500630074005400
      7900700065000D000A006300640073005F00500072006F00700073004D006100
      72006B006500740052006500670069006F006E004E006F0001004D0061007200
      6B006500740052006500670069006F006E004E006F0001000100010001004D00
      610072006B006500740052006500670069006F006E004E006F000D000A006300
      640073005F00500072006F00700073004E00650077004900740065006D005200
      6F00770001004E00650077004900740065006D0052006F007700010001000100
      01004E00650077004900740065006D0052006F0077000D000A00630064007300
      5F00500072006F00700073004F00720064006500720054007900700065004E00
      6F0001004F00720064006500720054007900700065004E006F00010001000100
      01004F00720064006500720054007900700065004E006F000D000A0063006400
      73005F00500072006F00700073004F0077006E00650072004E006F0001004F00
      77006E00650072004E006F0001000100010001004F0077006E00650072004E00
      6F000D000A006300640073005F00500072006F00700073005000490050004E00
      6F0001005000490050004E006F0001000100010001005000490050004E006F00
      0D000A006300640073005F00500072006F0070007300500072006F0064007500
      6300650072004E006F000100500072006F00640075006300650072004E006F00
      0100010001000100500072006F00640075006300650072004E006F000D000A00
      6300640073005F00500072006F00700073005200650067004400610074006500
      0100520065006700440061007400650001000100010001005200650067004400
      6100740065000D000A006300640073005F00500072006F007000730052006500
      670050006F0069006E0074004E006F00010052006500670050006F0069006E00
      74004E006F00010001000100010052006500670050006F0069006E0074004E00
      6F000D000A006300640073005F00500072006F0070007300520075006E004E00
      6F000100520075006E004E006F000100010001000100520075006E004E006F00
      0D000A006300640073005F00500072006F0070007300530061006C0065007300
      50006500720073006F006E004E006F000100530061006C006500730050006500
      720073006F006E004E006F000100010001000100530061006C00650073005000
      6500720073006F006E004E006F000D000A006300640073005F00500072006F00
      70007300530061006C006500730052006500670069006F006E004E006F000100
      530061006C006500730052006500670069006F006E004E006F00010001000100
      0100530061006C006500730052006500670069006F006E004E006F000D000A00
      6300640073005F00500072006F00700073005300680069007000700065007200
      4E006F00010053006800690070007000650072004E006F000100010001000100
      53006800690070007000650072004E006F000D000A006300640073005F005000
      72006F0070007300530068006F007700500072006F0064007500630074000100
      530068006F007700500072006F00640075006300740001000100010001005300
      68006F007700500072006F0064007500630074000D000A006300640073005F00
      500072006F00700073005300740061007200740050006500720069006F006400
      01005300740061007200740050006500720069006F0064000100010001000100
      5300740061007200740050006500720069006F0064000D000A00630064007300
      5F00500072006F00700073005300740061007400750073000100530074006100
      74007500730001000100010001005300740061007400750073000D000A006300
      640073005F00500072006F007000730053007500700070006C00690065007200
      43006F0064006500010053007500700070006C0069006500720043006F006400
      6500010001000100010053007500700070006C0069006500720043006F006400
      65000D000A006300640073005F00500072006F00700073005500730065007200
      4900440001005500730065007200490044000100010001000100550073006500
      7200490044000D000A006300640073005F00500072006F007000730056006500
      72006B004B0075006E0064004E006F0001005600650072006B004B0075006E00
      64004E006F0001000100010001005600650072006B004B0075006E0064004E00
      6F000D000A006300640073005F00500072006F00700073005600650072006B00
      4E006F0001005600650072006B004E006F000100010001000100560065007200
      6B004E006F000D000A006300640073005F00500072006F007000730056006500
      72006B0053007500700070006C006900650072004E006F000100560065007200
      6B0053007500700070006C006900650072004E006F0001000100010001005600
      650072006B0053007500700070006C006900650072004E006F000D000A006300
      640073005F00500072006F007000730056006F006C0075006D00650055006E00
      690074004E006F00010056006F006C0075006D00650055006E00690074004E00
      6F00010001000100010056006F006C0075006D00650055006E00690074004E00
      6F000D000A006300640073005F0052006500670050006F0069006E0074005000
      72006F00640075006300740069006F006E0055006E00690074004E0061006D00
      65000100500072006F00640075006300740069006F006E0055006E0069007400
      4E0061006D0065000100010001000100500072006F0064007500630074006900
      6F006E0055006E00690074004E0061006D0065000D000A006300640073005F00
      52006500670050006F0069006E00740052006500670069007300740072006100
      740069006F006E0050006F0069006E0074004E006F0001005200650067006900
      7300740072006100740069006F006E0050006F0069006E0074004E006F000100
      01000100010052006500670069007300740072006100740069006F006E005000
      6F0069006E0074004E006F000D000A006300640073005F0053006F0072004F00
      7200640052006F00770041004200010041004200010001000100010041004200
      0D000A006300640073005F0053006F0072004F007200640052006F0077004100
      54000100410054000100010001000100410054000D000A006300640073005F00
      53006F0072004F007200640052006F00770049004D005000010049004D005000
      010001000100010049004D0050000D000A006300640073005F0053006F007200
      4F007200640052006F0077004B00760061006C00690074006500740001004B00
      760061006C00690074006500740001000100010001004B00760061006C006900
      7400650074000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004E00420001004E00420001000100010001004E0042000D000A006300
      640073005F0053006F0072004F007200640052006F0077004E00540001004E00
      540001000100010001004E0054000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F00640041004D003100010050007200
      6F00640041004D0031000100010001000100500072006F00640041004D003100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      72006F00640041004D003300010041004D003300010001000100010041004D00
      33000D000A006300640073005F0053006F0072004F007200640052006F007700
      500072006F0064004E004D00330001004E004D00330001000100010001004E00
      4D0033000D000A006300640073005F0053006F0072004F007200640052006F00
      7700500072006F006400500043005300010053007400790063006B0001000100
      0100010053007400790063006B000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F00640050004B005400010050006100
      6B00650074000100010001000100500061006B00650074000D000A0063006400
      73005F0053006F0072004F007200640052006F007700500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      01000100500072006F0064007500630074004E006F000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006F00640075006B00
      74000100500072006F00640075006B0074000100010001000100500072006F00
      640075006B0074000D000A006300640073005F0053006F0072004F0072006400
      52006F00770053006F007200740069006E0067004F0072006400650072004E00
      6F0001004B00F60072006F0072006400650072006E0072000100010001000100
      4B00F60072006F0072006400650072006E0072000D000A006300640073005F00
      53006F0072004F007200640052006F00770053006F007200740069006E006700
      4F00720064006500720052006F0077004E006F0001005200610064006E007200
      01000100010001005200610064006E0072000D000A006300640073005F005300
      6F0072004F007200640052006F00770053007000650063006900650073004E00
      6F00010053007000650063006900650073004E006F0001000100010001005300
      7000650063006900650073004E006F000D000A006300640073005F0053006F00
      72004F007200640052006F00770053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      0100010053007500720066006100630069006E0067004E006F000D000A006300
      640073005F0053006F0072004F007200640052006F0077005400720073006C00
      61006700010054007200E40073006C0061006700010001000100010054007200
      E40073006C00610067000D000A006300640073005F0053006F0072004F007200
      640052006F007700550074006600720061006E00640065000100550074006600
      F600720061006E00640065000100010001000100550074006600F60072006100
      6E00640065000D000A006300640073005F00550073006500640050006B006700
      730041004D003100010041004D003100010001000100010041004D0031000D00
      0A006300640073005F00550073006500640050006B006700730041004D003300
      010041004D003300010001000100010041004D0033000D000A00630064007300
      5F00550073006500640050006B006700730041004E0054005000450052004C00
      4E0047004400010053007400790063006B002F006C00E4006E00670064000100
      01000100010053007400790063006B002F006C00E4006E00670064000D000A00
      6300640073005F00550073006500640050006B00670073004C00450056004B00
      4F00440001005000720065006600690078000100010001000100500072006500
      6600690078000D000A006300640073005F00550073006500640050006B006700
      73004D00410058004C0045004E0047005400480001004D00410058004C004500
      4E0047005400480001000100010001004D00410058004C0045004E0047005400
      48000D000A006300640073005F00550073006500640050006B00670073004D00
      460042004D0001004D00460042004D0001000100010001004D00460042004D00
      0D000A006300640073005F00550073006500640050006B00670073004E004D00
      330001004E004D00330001000100010001004E004D0033000D000A0063006400
      73005F00550073006500640050006B00670073005000610063006B0061006700
      650054007900700065004E006F0001005000610063006B006100670065005400
      7900700065004E006F0001000100010001005000610063006B00610067006500
      54007900700065004E006F000D000A006300640073005F005500730065006400
      50006B0067007300500041004B00450054004E0052000100500061006B006500
      74006E0072000100010001000100500061006B00650074006E0072000D000A00
      6300640073005F00550073006500640050006B0067007300500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      010001000100500072006F0064007500630074004E006F000D000A0063006400
      73005F00550073006500640050006B0067007300500052004F00440055004B00
      54000100500072006F00640075006B0074000100010001000100500072006F00
      640075006B0074000D000A006300640073005F00550073006500640050006B00
      6700730052006500670069007300740072006500720061006400010052006500
      6700690073007400720065007200610064000100010001000100520065006700
      690073007400720065007200610064000D000A006300640073005F0055007300
      6500640050006B006700730053005400590043004B0001005300540059004300
      4B00010001000100010053005400590043004B000D000A006300640073005F00
      5600650072006B0043006C00690065006E0074004E0061006D00650001004300
      6C00690065006E0074004E0061006D006500010001000100010043006C006900
      65006E0074004E0061006D0065000D000A006300640073005F00560065007200
      6B0043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000100010043006C00690065006E0074004E006F000D000A00
      6300640073005F005600650072006B005300650061007200630068004E006100
      6D00650001005300650061007200630068004E0061006D006500010001000100
      01005300650061007200630068004E0061006D0065000D000A006D0074005000
      72006F00700073004100750074006F0043006F006C0057006900640074006800
      01004100750074006F0043006F006C0057006900640074006800010001000100
      01004100750074006F0043006F006C00570069006400740068000D000A006D00
      7400500072006F007000730043006F0070007900500063007300010043006F00
      70007900500063007300010001000100010043006F0070007900500063007300
      0D000A006D007400500072006F007000730049006E007000750074004F007000
      740069006F006E00010049006E007000750074004F007000740069006F006E00
      010001000100010049006E007000750074004F007000740069006F006E000D00
      0A006D007400500072006F00700073004C0065006E0067007400680047007200
      6F007500700001004C0065006E00670074006800470072006F00750070000100
      0100010001004C0065006E00670074006800470072006F00750070000D000A00
      6D007400500072006F00700073004C0065006E00670074006800470072006F00
      750070004E006F0001004C0065006E00670074006800470072006F0075007000
      4E006F0001000100010001004C0065006E00670074006800470072006F007500
      70004E006F000D000A006D007400500072006F00700073004C0065006E006700
      740068004F007000740069006F006E0001004C0065006E006700740068004F00
      7000740069006F006E0001000100010001004C0065006E006700740068004F00
      7000740069006F006E000D000A006D007400500072006F00700073004C004900
      50004E006F0001004C00490050004E006F0001000100010001004C0049005000
      4E006F000D000A006D007400500072006F00700073004E006500770049007400
      65006D0052006F00770001004E00650077004900740065006D0052006F007700
      01000100010001004E00650077004900740065006D0052006F0077000D000A00
      6D007400500072006F00700073004F0057004E004500520001004F0057004E00
      4500520001000100010001004F0057004E00450052000D000A006D0074005000
      72006F00700073004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F0001000100010001004F0077006E00650072004E006F000D000A00
      6D007400500072006F00700073005000490050004E006F000100500049005000
      4E006F0001000100010001005000490050004E006F000D000A006D0074005000
      72006F0070007300500052004F00440055004300450052000100500052004F00
      440055004300450052000100010001000100500052004F004400550043004500
      52000D000A006D007400500072006F0070007300500072006F00640075006300
      650072004E006F000100500072006F00640075006300650072004E006F000100
      010001000100500072006F00640075006300650072004E006F000D000A006D00
      7400500072006F00700073005200650067004400610074006500010052006500
      6700440061007400650001000100010001005200650067004400610074006500
      0D000A006D007400500072006F007000730052004500470050004F0049004E00
      5400010052004500470050004F0049004E005400010001000100010052004500
      470050004F0049004E0054000D000A006D007400500072006F00700073005200
      6500670050006F0069006E0074004E006F00010052006500670050006F006900
      6E0074004E006F00010001000100010052006500670050006F0069006E007400
      4E006F000D000A006D007400500072006F007000730052006F006C0065005400
      790070006500010052006F006C00650054007900700065000100010001000100
      52006F006C00650054007900700065000D000A006D007400500072006F007000
      7300520075006E004E006F000100520075006E004E006F000100010001000100
      520075006E004E006F000D000A006D007400500072006F007000730053007500
      700070006C0069006500720043006F0064006500010053007500700070006C00
      69006500720043006F0064006500010001000100010053007500700070006C00
      69006500720043006F00640065000D000A006D007400500072006F0070007300
      5600650072006B004E006F0001005600650072006B004E006F00010001000100
      01005600650072006B004E006F000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066004100640064005000
      6B00670054006F00520075006E0001004D0053002000530061006E0073002000
      5300650072006900660001000100010001004D0053002000530061006E007300
      2000530065007200690066000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006700720064004E006F006E004100
      73007300690067006E006500640050006B006700730044004200540061006200
      6C00650056006900650077003100500052004F00440055004B0054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      720074006900650073000100010001000D000A006700720064004E006F006E00
      410073007300690067006E006500640050006B00670073004400420054006100
      62006C0065005600690065007700310041004E0054005000450052004C004E00
      470044002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F0070006500720074006900650073000100010001000D000A0067007200
      64004E006F006E00410073007300690067006E006500640050006B0067007300
      440042005400610062006C00650056006900650077003100500041004B004500
      54004E0052002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F0070006500720074006900650073000100010001000D000A006700
      720064004E006F006E00410073007300690067006E006500640050006B006700
      7300440042005400610062006C006500560069006500770031004C0045005600
      4B004F0044002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F0070006500720074006900650073000100010001000D000A006700
      720064004E006F006E00410073007300690067006E006500640050006B006700
      7300440042005400610062006C0065005600690065007700310041004D003300
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      70006500720074006900650073000100010001000D000A006700720064004E00
      6F006E00410073007300690067006E006500640050006B006700730044004200
      5400610062006C006500560069006500770031004E004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      74006900650073000100010001000D000A006700720064004E006F006E004100
      73007300690067006E006500640050006B006700730044004200540061006200
      6C0065005600690065007700310053005400590043004B002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      6900650073000100010001000D000A006700720064004E006F006E0041007300
      7300690067006E006500640050006B0067007300440042005400610062006C00
      6500560069006500770031004D00460042004D002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      73000100010001000D000A006700720064004E006F006E004100730073006900
      67006E006500640050006B0067007300440042005400610062006C0065005600
      69006500770031005000610063006B0061006700650054007900700065004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F0070006500720074006900650073000100010001000D000A00670072006400
      4E006F006E00410073007300690067006E006500640050006B00670073004400
      42005400610062006C0065005600690065007700310041004D0031002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      720074006900650073000100010001000D000A006700720064004E006F006E00
      410073007300690067006E006500640050006B00670073004400420054006100
      62006C006500560069006500770031004D00410058004C0045004E0047005400
      48002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F0070006500720074006900650073000100010001000D000A00670072006400
      4E006F006E00410073007300690067006E006500640050006B00670073004400
      42005400610062006C0065005600690065007700310052006500670069007300
      7400720065007200610064002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      0D000A006700720064004E006F006E00410073007300690067006E0065006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      500072006F0064007500630074004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      0100010001000D000A0067007200640053006F007200740069006E0067004F00
      72006400650072007300440042005400610062006C0065005600690065007700
      310053006F007200740069006E0067004F0072006400650072004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      6500720074006900650073000100010001000D000A0067007200640053006F00
      7200740069006E0067004F007200640065007200730044004200540061006200
      6C0065005600690065007700310053006F007200740069006E0067004F007200
      64006500720052006F0077004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      010001000D000A0067007200640053006F007200740069006E0067004F007200
      6400650072007300440042005400610062006C00650056006900650077003100
      500072006F00640075006B0074002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A0067007200640053006F007200740069006E0067004F0072006400
      650072007300440042005400610062006C006500560069006500770031004B00
      760061006C0069007400650074002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A0067007200640053006F007200740069006E0067004F0072006400
      650072007300440042005400610062006C006500560069006500770031005400
      720073006C00610067002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000D00
      0A0067007200640053006F007200740069006E0067004F007200640065007200
      7300440042005400610062006C00650056006900650077003100550074006600
      720061006E00640065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000D00
      0A0067007200640053006F007200740069006E0067004F007200640065007200
      7300440042005400610062006C0065005600690065007700310049004D005000
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      70006500720074006900650073000100010001000D000A006700720064005300
      6F007200740069006E0067004F00720064006500720073004400420054006100
      62006C00650056006900650077003100410054002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      73000100010001000D000A0067007200640053006F007200740069006E006700
      4F0072006400650072007300440042005400610062006C006500560069006500
      77003100410042002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F0070006500720074006900650073000100010001000D000A00
      67007200640053006F007200740069006E0067004F0072006400650072007300
      440042005400610062006C006500560069006500770031004E0054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      720074006900650073000100010001000D000A0067007200640053006F007200
      740069006E0067004F0072006400650072007300440042005400610062006C00
      6500560069006500770031004E0042002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      010001000D000A0067007200640053006F007200740069006E0067004F007200
      6400650072007300440042005400610062006C00650056006900650077003100
      53007000650063006900650073004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      0100010001000D000A0067007200640053006F007200740069006E0067004F00
      72006400650072007300440042005400610062006C0065005600690065007700
      310053007500720066006100630069006E0067004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      6900650073000100010001000D000A0067007200640053006F00720074006900
      6E0067004F0072006400650072007300440042005400610062006C0065005600
      6900650077003100500072006F00640041004D0031002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      650073000100010001000D000A0067007200640053006F007200740069006E00
      67004F0072006400650072007300440042005400610062006C00650056006900
      650077003100500072006F00640041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      73000100010001000D000A0067007200640053006F007200740069006E006700
      4F0072006400650072007300440042005400610062006C006500560069006500
      77003100500072006F0064005000430053002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      0100010001000D000A0067007200640053006F007200740069006E0067004F00
      72006400650072007300440042005400610062006C0065005600690065007700
      3100500072006F00640050004B0054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      010001000D000A0067007200640053006F007200740069006E0067004F007200
      6400650072007300440042005400610062006C00650056006900650077003100
      500072006F0064004E004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A0067007200640053006F007200740069006E0067004F0072006400
      650072007300440042005400610062006C006500560069006500770031005000
      72006F0064007500630074004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      010001000D000A0063007800530070006C006900740074006500720031002E00
      48006F0074005A006F006E00650043006C006100730073004E0061006D006500
      01005400630078004D00650064006900610050006C0061007900650072003800
      5300740079006C0065000100010001000D000A006300640073005F0050007200
      6F00700073005600650072006B004E006F002E004F0072006900670069006E00
      01005600650072006B004E006F000100010001000D000A006300640073005F00
      500072006F00700073004F0077006E00650072004E006F002E004F0072006900
      670069006E0001004F0077006E00650072004E006F000100010001000D000A00
      6300640073005F00500072006F00700073005000490050004E006F002E004F00
      72006900670069006E0001005000490050004E006F000100010001000D000A00
      6300640073005F00500072006F00700073004C00490050004E006F002E004F00
      72006900670069006E0001004C00490050004E006F000100010001000D000A00
      6300640073005F00500072006F007000730049006E007000750074004F007000
      740069006F006E002E004F0072006900670069006E00010049006E0070007500
      74004F007000740069006F006E000100010001000D000A006300640073005F00
      500072006F007000730052006500670050006F0069006E0074004E006F002E00
      4F0072006900670069006E00010052006500670050006F0069006E0074004E00
      6F000100010001000D000A006300640073005F00500072006F00700073005200
      6500670044006100740065002E004F0072006900670069006E00010052006500
      670044006100740065000100010001000D000A006300640073005F0050007200
      6F007000730043006F00700079005000630073002E004F007200690067006900
      6E00010043006F00700079005000630073000100010001000D000A0063006400
      73005F00500072006F0070007300520075006E004E006F002E004F0072006900
      670069006E000100520075006E004E006F000100010001000D000A0063006400
      73005F00500072006F0070007300500072006F00640075006300650072004E00
      6F002E004F0072006900670069006E000100500072006F006400750063006500
      72004E006F000100010001000D000A006300640073005F00500072006F007000
      73004100750074006F0043006F006C00570069006400740068002E004F007200
      6900670069006E0001004100750074006F0043006F006C005700690064007400
      68000100010001000D000A006300640073005F00500072006F00700073005300
      7500700070006C0069006500720043006F00640065002E004F00720069006700
      69006E00010053007500700070006C0069006500720043006F00640065000100
      010001000D000A006300640073005F00500072006F00700073004C0065006E00
      6700740068004F007000740069006F006E002E004F0072006900670069006E00
      01004C0065006E006700740068004F007000740069006F006E00010001000100
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      6800470072006F00750070004E006F002E004F0072006900670069006E000100
      4C0065006E00670074006800470072006F00750070004E006F00010001000100
      0D000A006300640073005F00500072006F00700073004E006500770049007400
      65006D0052006F0077002E004F0072006900670069006E0001004E0065007700
      4900740065006D0052006F0077000100010001000D000A006300640073005F00
      500072006F0070007300530061006C006500730052006500670069006F006E00
      4E006F002E004F0072006900670069006E000100530061006C00650073005200
      6500670069006F006E004E006F000100010001000D000A006300640073005F00
      500072006F00700073004D00610072006B006500740052006500670069006F00
      6E004E006F002E004F0072006900670069006E0001004D00610072006B006500
      740052006500670069006F006E004E006F000100010001000D000A0063006400
      73005F00500072006F00700073004F0072006400650072005400790070006500
      4E006F002E004F0072006900670069006E0001004F0072006400650072005400
      7900700065004E006F000100010001000D000A006300640073005F0050007200
      6F00700073005300740061007400750073002E004F0072006900670069006E00
      01005300740061007400750073000100010001000D000A006300640073005F00
      500072006F0070007300460069006C007400650072004F007200640065007200
      44006100740065002E004F0072006900670069006E000100460069006C007400
      650072004F00720064006500720044006100740065000100010001000D000A00
      6300640073005F00500072006F00700073005300740061007200740050006500
      720069006F0064002E004F0072006900670069006E0001005300740061007200
      740050006500720069006F0064000100010001000D000A006300640073005F00
      500072006F007000730045006E00640050006500720069006F0064002E004F00
      72006900670069006E00010045006E00640050006500720069006F0064000100
      010001000D000A006300640073005F00500072006F007000730043006C006900
      65006E0074004E006F002E004F0072006900670069006E00010043006C006900
      65006E0074004E006F000100010001000D000A006300640073005F0050007200
      6F0070007300530061006C006500730050006500720073006F006E004E006F00
      2E004F0072006900670069006E000100530061006C0065007300500065007200
      73006F006E004E006F000100010001000D000A006300640073005F0050007200
      6F00700073005600650072006B0053007500700070006C006900650072004E00
      6F002E004F0072006900670069006E0001005600650072006B00530075007000
      70006C006900650072004E006F000100010001000D000A006300640073005F00
      500072006F00700073005600650072006B004B0075006E0064004E006F002E00
      4F0072006900670069006E0001005600650072006B004B0075006E0064004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004C00
      4F004F0062006A0065006300740054007900700065002E004F00720069006700
      69006E0001004C004F004F0062006A0065006300740054007900700065000100
      010001000D000A006300640073005F00500072006F0070007300420061007200
      43006F00640065004E006F002E004F0072006900670069006E00010042006100
      720043006F00640065004E006F000100010001000D000A006300640073005F00
      500072006F0070007300470072006100640065005300740061006D0070004E00
      6F002E004F0072006900670069006E0001004700720061006400650053007400
      61006D0070004E006F000100010001000D000A006300640073005F0050007200
      6F007000730056006F006C0075006D00650055006E00690074004E006F002E00
      4F0072006900670069006E00010056006F006C0075006D00650055006E006900
      74004E006F000100010001000D000A006300640073005F00500072006F007000
      73004C0065006E0067007400680046006F0072006D00610074004E006F002E00
      4F0072006900670069006E0001004C0065006E0067007400680046006F007200
      6D00610074004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680056006F006C0055006E0069007400
      4E006F002E004F0072006900670069006E0001004C0065006E00670074006800
      56006F006C0055006E00690074004E006F000100010001000D000A0063006400
      73005F00500072006F0070007300470072006F00750070004200790042006F00
      78002E004F0072006900670069006E000100470072006F007500700042007900
      42006F0078000100010001000D000A006300640073005F00500072006F007000
      7300470072006F0075007000530075006D006D006100720079002E004F007200
      6900670069006E000100470072006F0075007000530075006D006D0061007200
      79000100010001000D000A006300640073005F00500072006F00700073004100
      670065006E0074004E006F002E004F0072006900670069006E00010041006700
      65006E0074004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004C006F006100640069006E0067004C006F006300610074006900
      6F006E004E006F002E004F0072006900670069006E0001004C006F0061006400
      69006E0067004C006F0063006100740069006F006E004E006F00010001000100
      0D000A006300640073005F00500072006F007000730053006800690070007000
      650072004E006F002E004F0072006900670069006E0001005300680069007000
      7000650072004E006F000100010001000D000A006300640073005F0050007200
      6F007000730042006F006F006B0069006E00670054007900700065004E006F00
      2E004F0072006900670069006E00010042006F006F006B0069006E0067005400
      7900700065004E006F000100010001000D000A006300640073005F0050007200
      6F007000730043007500730074006F006D00650072004E006F002E004F007200
      6900670069006E00010043007500730074006F006D00650072004E006F000100
      010001000D000A006300640073005F00500072006F0070007300530068006F00
      7700500072006F0064007500630074002E004F0072006900670069006E000100
      530068006F007700500072006F0064007500630074000100010001000D000A00
      6300640073005F00500072006F00700073005500730065007200490044002E00
      4F0072006900670069006E000100550073006500720049004400010001000100
      0D000A006300640073005F00500072006F007000730046006F0072006D002E00
      4F0072006900670069006E00010046006F0072006D000100010001000D000A00
      6300640073005F00500072006F00700073004E0061006D0065002E004F007200
      6900670069006E0001004E0061006D0065000100010001000D000A006D007400
      500072006F00700073002E00560065007200730069006F006E00010037002E00
      360033002E003000300020005300740061006E00640061007200640020004500
      64006900740069006F006E000100010001000D000A006300640073005F005600
      650072006B0043006C00690065006E0074004E006F002E004F00720069006700
      69006E00010043006C00690065006E0074004E006F000100010001000D000A00
      6300640073005F005600650072006B0043006C00690065006E0074004E006100
      6D0065002E004F0072006900670069006E00010043006C00690065006E007400
      4E0061006D0065000100010001000D000A006300640073005F00560065007200
      6B005300650061007200630068004E0061006D0065002E004F00720069006700
      69006E0001005300650061007200630068004E0061006D006500010001000100
      0D000A006300640073005F00700072006F006400750063006500720043006C00
      690065006E0074004E006F002E004F0072006900670069006E00010043006C00
      690065006E0074004E006F000100010001000D000A006300640073005F007000
      72006F006400750063006500720043006C00690065006E0074004E0061006D00
      65002E004F0072006900670069006E00010043006C00690065006E0074004E00
      61006D0065000100010001000D000A006300640073005F00700072006F006400
      75006300650072005300650061007200630068004E0061006D0065002E004F00
      72006900670069006E0001005300650061007200630068004E0061006D006500
      0100010001000D000A006300640073005F0052006500670050006F0069006E00
      7400500072006F00640075006300740069006F006E0055006E00690074004E00
      61006D0065002E004F0072006900670069006E000100500072006F0064007500
      6300740069006F006E0055006E00690074004E0061006D006500010001000100
      0D000A006300640073005F0052006500670050006F0069006E00740052006500
      670069007300740072006100740069006F006E0050006F0069006E0074004E00
      6F002E004F0072006900670069006E0001005200650067006900730074007200
      6100740069006F006E0050006F0069006E0074004E006F000100010001000D00
      0A006300640073005F004C0065006E00670074006800470072006F0075007000
      470072006F00750070004E006F002E004F0072006900670069006E0001004700
      72006F00750070004E006F000100010001000D000A006300640073005F004C00
      65006E00670074006800470072006F0075007000470072006F00750070004E00
      61006D0065002E004F0072006900670069006E000100470072006F0075007000
      4E0061006D0065000100010001000D000A006300640073005F00550073006500
      640050006B0067007300500052004F00440055004B0054002E004F0072006900
      670069006E000100520065006700690073007400720065007200610064000100
      010001000D000A006300640073005F00550073006500640050006B0067007300
      41004E0054005000450052004C004E00470044002E004F007200690067006900
      6E0001005B0041004E0054005000450052004C00C4004E00470044005D000100
      010001000D000A006300640073005F00550073006500640050006B0067007300
      500041004B00450054004E0052002E004F0072006900670069006E0001005000
      41004B00450054004E0052000100010001000D000A006300640073005F005500
      73006500640050006B00670073004C00450056004B004F0044002E004F007200
      6900670069006E0001004C00450056004B004F0044000100010001000D000A00
      6300640073005F00550073006500640050006B006700730041004D0033002E00
      4F0072006900670069006E00010041004D0033000100010001000D000A006300
      640073005F00550073006500640050006B00670073004E004D0033002E004F00
      72006900670069006E0001004E004D0033000100010001000D000A0063006400
      73005F00550073006500640050006B006700730053005400590043004B002E00
      4F0072006900670069006E00010053005400590043004B000100010001000D00
      0A006300640073005F00550073006500640050006B00670073004D0046004200
      4D002E004F0072006900670069006E0001004D00460042004D00010001000100
      0D000A006300640073005F00550073006500640050006B006700730050006100
      63006B0061006700650054007900700065004E006F002E004F00720069006700
      69006E0001005000610063006B0061006700650054007900700065004E006F00
      0100010001000D000A006300640073005F00550073006500640050006B006700
      7300500072006F0064007500630074004E006F002E004F007200690067006900
      6E000100500072006F0064007500630074004E006F000100010001000D000A00
      6300640073005F00550073006500640050006B006700730041004D0031002E00
      4F0072006900670069006E00010041004D0031000100010001000D000A006300
      640073005F00550073006500640050006B00670073004D00410058004C004500
      4E004700540048002E004F0072006900670069006E0001004D00410058004C00
      45004E004700540048000100010001000D000A006300640073005F0055007300
      6500640050006B00670073005200650067006900730074007200650072006100
      64002E004F0072006900670069006E0001005200650067006900730074007200
      65007200610064000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770053006F007200740069006E0067004F0072006400
      650072004E006F002E004F0072006900670069006E00010053006F0072007400
      69006E0067004F0072006400650072004E006F000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F00770053006F0072007400
      69006E0067004F00720064006500720052006F0077004E006F002E004F007200
      6900670069006E00010053006F007200740069006E0067004F00720064006500
      720052006F0077004E006F000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F007700500072006F00640075006B0074002E00
      4F0072006900670069006E000100500072006F00640075006B00740001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4B00760061006C0069007400650074002E004F0072006900670069006E000100
      4B00760061006C0069007400650074000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077005400720073006C0061006700
      2E004F0072006900670069006E0001005B0054007200E40073006C0061006700
      5D000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700550074006600720061006E00640065002E004F00720069006700
      69006E0001005B00550074006600F600720061006E00640065005D0001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      49004D0050002E004F0072006900670069006E00010049004D00500001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      410054002E004F0072006900670069006E0001005B00410054005D0001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      410042002E004F0072006900670069006E000100410042000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F0077004E005400
      2E004F0072006900670069006E0001004E0054000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004E0042002E004F00
      72006900670069006E0001004E0042000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700530070006500630069006500
      73004E006F002E004F0072006900670069006E00010053007000650063006900
      650073004E006F000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770053007500720066006100630069006E0067004E00
      6F002E004F0072006900670069006E0001005300750072006600610063006900
      6E0067004E006F000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F00640041004D0031002E004F007200
      6900670069006E000100500072006F00640041004D0031000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6F00640041004D0033002E004F0072006900670069006E000100500072006F00
      640041004D0033000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F0064005000430053002E004F007200
      6900670069006E000100500072006F0064005000430053000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6F00640050004B0054002E004F0072006900670069006E000100500072006F00
      640050004B0054000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F0064004E004D0033002E004F007200
      6900670069006E000100500072006F0064004E004D0033000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F000100010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A005400660041006400640050006B006700
      54006F00520075006E000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
