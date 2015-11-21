object Position: TPosition
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 200
  Caption = 'Position'
  ClientHeight = 529
  ClientWidth = 1019
  Color = clBtnFace
  TransparentColorValue = clWindowText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl_Position: TPageControl
    Left = 536
    Top = 0
    Width = 483
    Height = 529
    ActivePage = TabSheet_Match
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object TabSheet_All: TTabSheet
      Caption = 'Alla Position'
      object cxGrid_AllPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 475
        Height = 498
        Align = alClient
        TabOrder = 0
        object cxGrid_AllPositionDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxGrid_AllPositionDBTableView1CellClick
          DataController.DataSource = DS_Position
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.DragHighlighting = False
          OptionsBehavior.DragOpening = False
          OptionsBehavior.DragScrolling = False
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGrid_AllPositionDBTableView1Vald: TcxGridDBColumn
            DataBinding.FieldName = 'Vald'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderHint = 'Vald'
            Width = 87
          end
          object cxGrid_AllPositionDBTableView1PositionName: TcxGridDBColumn
            DataBinding.FieldName = 'PositionName'
            Width = 298
          end
          object cxGrid_AllPositionDBTableView1PositionID: TcxGridDBColumn
            DataBinding.FieldName = 'PositionID'
            Visible = False
          end
        end
        object cxGrid_AllPositionLevel1: TcxGridLevel
          GridView = cxGrid_AllPositionDBTableView1
        end
      end
    end
    object TabSheet_Match: TTabSheet
      Caption = 'Matcha Product'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object cxGrid_MatchPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 475
        Height = 498
        Align = alClient
        TabOrder = 0
        Visible = False
        object cxGrid_MatchPositionDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxGrid_MatchPositionDBTableView1CellClick
          DataController.DataSource = ds_MatchaProduct
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.DragHighlighting = False
          OptionsBehavior.DragOpening = False
          OptionsBehavior.DragScrolling = False
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid_MatchPositionDBTableView1Vald: TcxGridDBColumn
            DataBinding.FieldName = 'Vald'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 32
          end
          object cxGrid_MatchPositionDBTableView1Fullt: TcxGridDBColumn
            Caption = 'Active'
            DataBinding.FieldName = 'Fullt'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 35
          end
          object cxGrid_MatchPositionDBTableView1PositionNamn: TcxGridDBColumn
            Caption = 'Position'
            DataBinding.FieldName = 'PositionNamn'
            Width = 48
          end
          object cxGrid_MatchPositionDBTableView1ProductNamn: TcxGridDBColumn
            Caption = 'Produkt'
            DataBinding.FieldName = 'ProductNamn'
            Width = 105
          end
          object cxGrid_MatchPositionDBTableView1NoOfPkgs1: TcxGridDBColumn
            Caption = 'Paket'
            DataBinding.FieldName = 'NoOfPkgs'
            Width = 49
          end
          object cxGrid_MatchPositionDBTableView1Reference: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
            Width = 76
          end
          object cxGrid_MatchPositionDBTableView1MaxLength: TcxGridDBColumn
            DataBinding.FieldName = 'MaxLength'
            Width = 58
          end
        end
        object cxGrid_MatchPositionLevel1: TcxGridLevel
          GridView = cxGrid_MatchPositionDBTableView1
        end
      end
    end
    object TabSheet_RefMatch: TTabSheet
      Caption = 'Matcha Referens'
      ImageIndex = 2
      object grid_Matcha_Ref: TcxGrid
        Left = 0
        Top = 0
        Width = 475
        Height = 498
        Align = alClient
        TabOrder = 0
        Visible = False
        object grid_Matcha_RefDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = grid_Matcha_RefDBTableView1CellClick
          DataController.DataSource = DS_MatchaRef
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.DragHighlighting = False
          OptionsBehavior.DragOpening = False
          OptionsBehavior.DragScrolling = False
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grid_Matcha_RefDBTableView1Vald: TcxGridDBColumn
            DataBinding.FieldName = 'Vald'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 32
          end
          object grid_Matcha_RefDBTableView1Fullt: TcxGridDBColumn
            Caption = 'Active'
            DataBinding.FieldName = 'Fullt'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 40
          end
          object grid_Matcha_RefDBTableView1PositionName: TcxGridDBColumn
            Caption = 'Position'
            DataBinding.FieldName = 'PositionName'
            Width = 60
          end
          object grid_Matcha_RefDBTableView1ProductDisplayName: TcxGridDBColumn
            Caption = 'Product'
            DataBinding.FieldName = 'ProductName'
            Width = 105
          end
          object grid_Matcha_RefDBTableView1NoOfPkgsByPosition: TcxGridDBColumn
            Caption = 'Paket'
            DataBinding.FieldName = 'NoOfPkgs'
            Width = 49
          end
          object grid_Matcha_RefDBTableView1REFERENCE: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
            Width = 55
          end
          object grid_Matcha_RefDBTableView1MaxLength: TcxGridDBColumn
            DataBinding.FieldName = 'MaxLength'
            Width = 65
          end
        end
        object grid_Matcha_RefLevel1: TcxGridLevel
          GridView = grid_Matcha_RefDBTableView1
        end
      end
    end
  end
  object PakagePanel: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 529
    Align = alLeft
    Caption = 'PakagePanel'
    TabOrder = 1
    Visible = False
    object grid_ProductList: TcxGrid
      Left = 1
      Top = 81
      Width = 528
      Height = 447
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2010Blue'
      object grid_ProductListDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Append.Visible = True
        OnCellClick = grid_ProductListDBTableView1CellClick
        DataController.DataSource = DS_ProductNo
        DataController.KeyFieldNames = 'PktSupplierCode;PaketNr'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grid_ProductListDBTableView1Vald: TcxGridDBColumn
          DataBinding.FieldName = 'Vald'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 37
        end
        object grid_ProductListDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Width = 62
        end
        object grid_ProductListDBTableView1PktSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'PktSupplierCode'
          Width = 47
        end
        object grid_ProductListDBTableView1ProductDisplayName1: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 146
        end
        object grid_ProductListDBTableView1PaketNr1: TcxGridDBColumn
          DataBinding.FieldName = 'PaketNr'
          Width = 71
        end
        object grid_ProductListDBTableView1MaxLength: TcxGridDBColumn
          DataBinding.FieldName = 'MaxLength'
          Width = 86
        end
        object grid_ProductListDBTableView1Reference: TcxGridDBColumn
          DataBinding.FieldName = 'Reference'
          Width = 77
        end
      end
      object grid_ProductListLevel1: TcxGridLevel
        GridView = grid_ProductListDBTableView1
      end
    end
    object btnStorePosition: TButton
      Left = 1
      Top = 0
      Width = 184
      Height = 49
      Caption = 'Store Position'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnStorePositionClick
    end
    object btDelete: TButton
      Left = 352
      Top = 0
      Width = 97
      Height = 49
      Caption = 'Remove'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btDeleteClick
    end
    object btChangeStyle: TButton
      Left = 231
      Top = 0
      Width = 82
      Height = 49
      Caption = 'Styles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btChangeStyleClick
    end
    object lbPkgCount: TcxLabel
      Left = 1
      Top = 50
      Caption = 'Paket Count : '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object Mem_MatchaProduct: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <
      item
        Name = 'Index_PosID'
        Fields = 'PositionID;ProductNo;MaxLength;Reference'
      end>
    Indexes = <
      item
        Active = True
        Name = 'Index_PosID'
        Fields = 'PositionID;ProductNo;MaxLength;Reference'
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 752
    Top = 166
    object Mem_MatchaProductVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_MatchaProductFullt: TIntegerField
      FieldName = 'Fullt'
    end
    object Mem_MatchaProductPositionNamn: TStringField
      FieldName = 'PositionNamn'
      Size = 25
    end
    object Mem_MatchaProductProductNamn: TStringField
      FieldName = 'ProductNamn'
      Size = 150
    end
    object Mem_MatchaProductNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object Mem_MatchaProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object Mem_MatchaProductPositionID: TIntegerField
      FieldName = 'PositionID'
    end
    object Mem_MatchaProductReference: TStringField
      FieldName = 'Reference'
    end
    object Mem_MatchaProductMaxLength: TIntegerField
      FieldName = 'MaxLength'
    end
    object Mem_MatchaProductStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
    end
  end
  object ds_MatchaProduct: TDataSource
    DataSet = Mem_MatchaProduct
    Left = 760
    Top = 222
  end
  object Mem_PackProdList: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Mem_packlistindex01'
        Fields = 'PaketNr;PktSupplierCode'
      end>
    IndexName = 'Mem_packlistindex01'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 64
    Top = 366
    object Mem_PackProdListVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_PackProdListPaketNr: TIntegerField
      FieldName = 'PaketNr'
    end
    object Mem_PackProdListPktSupplierCode: TStringField
      FieldName = 'PktSupplierCode'
      Size = 3
    end
    object Mem_PackProdListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 150
    end
    object Mem_PackProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object Mem_PackProdListMaxLength: TIntegerField
      FieldName = 'MaxLength'
    end
    object Mem_PackProdListReference: TStringField
      FieldName = 'Reference'
    end
    object Mem_PackProdListScanned: TIntegerField
      FieldName = 'Scanned'
    end
  end
  object DS_ProductNo: TDataSource
    DataSet = Mem_PackProdList
    Left = 136
    Top = 262
  end
  object FDQ_StorePosID: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Update dbo.PackageNumber Set PositionID = :PosID , StoredDate = ' +
        ':CurrentDate '
      'where SupplierCode = :Prefix AND PackageNo = :PkgNr')
    Left = 120
    Top = 134
    ParamData = <
      item
        Name = 'POSID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CURRENTDATE'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PKGNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQ_Position: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evUnidirectional]
    SQL.Strings = (
      'SELECT 0 as Vald, PositionName, PositionID FROM dbo.Position')
    Left = 520
    Top = 110
    object FDQ_PositionVald: TIntegerField
      FieldName = 'Vald'
      Origin = 'Vald'
    end
    object FDQ_PositionPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PositionPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
  end
  object DS_Position: TDataSource
    DataSet = Mem_AllPosition
    Left = 608
    Top = 246
  end
  object Mem_StorePosition: TFDMemTable
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'DateCreated'
        Fields = 'DateCreated'
      end>
    IndexName = 'DateCreated'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 384
    Top = 182
    object Mem_StorePositionPositionID: TIntegerField
      FieldName = 'PositionID'
    end
    object Mem_StorePositionPosStatus: TIntegerField
      FieldName = 'PosStatus'
    end
    object Mem_StorePositionPrefix: TStringField
      FieldName = 'Prefix'
    end
    object Mem_StorePositionPakageNr: TIntegerField
      FieldName = 'PakageNr'
    end
    object Mem_StorePositionScanned: TIntegerField
      FieldName = 'Scanned'
    end
    object Mem_StorePositionDateCreated: TDateTimeField
      FieldName = 'DateCreated'
    end
  end
  object DS_StorePosition: TDataSource
    DataSet = Mem_StorePosition
    Left = 376
    Top = 254
  end
  object FDQ_ProdRefLength1: TFDQuery
    Indexes = <
      item
        Name = 'ProdLenRef'
        Fields = 'ProductNo;MaxLength;REFERENCE'
      end>
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Po.PosStatus, po.PositionName, p.ProductNo, p.Pr' +
        'oductDisplayName,  po.PositionID, Max(pn.StoredDate) as StoredDa' +
        'te,'
      ''
      'pn.REFERENCE,'
      ' '
      '(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail PTD'#9#9
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = pn.PackageTypeNo) as MaxLength,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PackageNumber pn'
      'inner  join dbo.Position Po on Po.PositionID = pn.PositionID'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      ''
      'WHERE '
      'pt.ProductNo = :ProductNo'
      'and pn.[Status] = 1'
      
        'group by po.PositionName, p.ProductNo, p.ProductDisplayName,  po' +
        '.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus, pn.REFERENCE, pn.PackageTypeNo '
      'order by PosStatus, StoredDate')
    Left = 193
    Top = 238
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProdRefLength1PosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
    end
    object FDQ_ProdRefLength1PositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_ProdRefLength1ProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_ProdRefLength1ProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_ProdRefLength1PositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object FDQ_ProdRefLength1StoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_ProdRefLength1NoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_ProdRefLength1NoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
    object FDQ_ProdRefLength1REFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object FDQ_ProdRefLength1MaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
  end
  object ds_MatchPosition: TDataSource
    DataSet = FDQ_MatchPosition
    Left = 481
    Top = 246
  end
  object FDQ_MatchPosition: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 481
    Top = 190
    object FDQ_MatchPositionPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_MatchPositionProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_MatchPositionPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
  end
  object FDQ_ProductNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct p.ProductDisplayName, p.ProductNo, pn.REFERENCE,'
      ''
      '(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail PTD'#9#9
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = pn.PackageTypeNo) as MaxLength'
      ''
      'from dbo.PackageNumber pn'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.PackagetypeDetail ptd on ptd.packagetypeNo = pt.p' +
        'ackagetypeNo'
      
        'inner join dbo.ProductLength t1 on t1.productLengthNo = ptd.prod' +
        'uctLengthNo'
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'WHERE '
      'pn.PackageNo = :PaketNr'
      'and pn.SupplierCode = :SupplierCode')
    Left = 33
    Top = 198
    ParamData = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProductNoProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_ProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_ProductNoREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object FDQ_ProductNoMaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
  end
  object FDQ_PhyInvPtNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select PIP.PhysicalInventoryPointNo  FROM dbo.PhysicalInventoryP' +
        'oint PIP '
      'WHERE PIP.PhyInvPointNameNo = :PhyInvPointNameNo'
      'AND PIP.OwnerNo = :OWNERNo')
    Left = 433
    Top = 110
    ParamData = <
      item
        Name = 'PHYINVPOINTNAMENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_PhyInvPtNoPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object FDQ_UpdatePosStatus: TFDQuery
    Aggregates = <
      item
      end>
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'UPDATE [dbo].[Position] SET [PosStatus] = :PosStatus'
      '  WHERE [PositionID] = :PositionID')
    Left = 600
    Top = 130
    ParamData = <
      item
        Name = 'POSSTATUS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'POSITIONID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQ_ProductPkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct pn.PackageNo, pn.SupplierCode'
      'from dbo.PackageNumber pn'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.PackagetypeDetail ptd on ptd.packagetypeNo = pt.p' +
        'ackagetypeNo'
      
        'inner join dbo.ProductLength t1 on t1.productLengthNo = ptd.prod' +
        'uctLengthNo'
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'inner join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      'WHERE '
      'p.ProductNo = :ProductNo')
    Left = 32
    Top = 130
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProductPkgPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProductPkgSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object Mem_AllPosition: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Index_PosID'
        Fields = 'PositionID'
      end>
    IndexName = 'Index_PosID'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 603
    Top = 192
    object Mem_AllPositionVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_AllPositionPositionID: TIntegerField
      FieldName = 'PositionID'
    end
    object Mem_AllPositionPositionName: TStringField
      FieldName = 'PositionName'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 659
    Top = 40
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13160660
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14264494
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15521240
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11619930
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9211088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 7364768
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5855675
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11730944
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4671452
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 206
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clYellow
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8257535
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15658734
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14264494
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15521240
      TextColor = clBlack
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11619930
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle95: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10343916
      TextColor = clBlack
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13626101
      TextColor = clBlack
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet
      Caption = 'Lilac'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Inactive = cxStyle95
      Styles.Selection = cxStyle98
      Styles.Footer = cxStyle91
      Styles.Group = cxStyle92
      Styles.GroupByBox = cxStyle93
      Styles.Header = cxStyle94
      Styles.Indicator = cxStyle96
      Styles.Preview = cxStyle97
      BuiltIn = True
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle99
      Styles.ContentEven = cxStyle100
      Styles.ContentOdd = cxStyle101
      Styles.Inactive = cxStyle106
      Styles.Selection = cxStyle109
      Styles.Footer = cxStyle102
      Styles.Group = cxStyle103
      Styles.GroupByBox = cxStyle104
      Styles.Header = cxStyle105
      Styles.Indicator = cxStyle107
      Styles.Preview = cxStyle108
      BuiltIn = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid_MatchPosition
    PopupMenus = <>
    Left = 771
    Top = 299
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grid_ProductList
    PopupMenus = <>
    Left = 227
    Top = 275
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = cxGrid_AllPosition
    PopupMenus = <>
    Left = 683
    Top = 275
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid_AllPositionDBTableView1
        Properties.Strings = (
          'Styles.StyleSheet')
      end
      item
        Component = cxGrid_MatchPositionDBTableView1
        Properties.Strings = (
          'Styles.StyleSheet')
      end
      item
        Component = grid_ProductListDBTableView1
        Properties.Strings = (
          'Styles.StyleSheet')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stStream
    Left = 563
    Top = 43
  end
  object FDQ_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Po.PosStatus, po.PositionName, p.ProductNo, p.Pr' +
        'oductDisplayName,  po.PositionID, Max(pn.StoredDate) as StoredDa' +
        'te,'
      ' '
      '(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail PTD'#9#9
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = pn.PackageTypeNo) as MaxLength,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PackageNumber pn'
      'inner  join dbo.Position Po on Po.PositionID = pn.PositionID'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      ''
      'WHERE '
      'pt.ProductNo = :ProductNo'
      'and pn.[Status] = 1'
      
        'group by po.PositionName, p.ProductNo, p.ProductDisplayName,  po' +
        '.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus, pn.PackageTypeNo '
      'order by PosStatus, StoredDate')
    Left = 368
    Top = 112
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProdLengthPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
    object FDQ_ProdLengthPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_ProdLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_ProdLengthProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_ProdLengthPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object FDQ_ProdLengthStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_ProdLengthNoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_ProdLengthNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
    object FDQ_ProdLengthMaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
  end
  object FDQ_MatchProductNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Po.PosStatus, po.PositionName, p.ProductNo, p.Pr' +
        'oductDisplayName,  po.PositionID, Max(pn.StoredDate) as StoredDa' +
        'te,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PackageNumber pn'
      'inner  join dbo.Position Po on Po.PositionID = pn.PositionID'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      ''
      'WHERE '
      'pt.ProductNo = :ProductNo'
      'and pn.[Status] = 1'
      
        'group by po.PositionName, p.ProductNo, p.ProductDisplayName,  po' +
        '.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus'
      'order by PosStatus, StoredDate')
    Left = 299
    Top = 235
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_MatchProductNoPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
    end
    object FDQ_MatchProductNoPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_MatchProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_MatchProductNoProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_MatchProductNoPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object FDQ_MatchProductNoStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_MatchProductNoNoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_MatchProductNoNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
  end
  object FDQ_ProdRefLength: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_fdq_prodlength'
    Left = 200
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@LanguageCode'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQ_ProdRefLengthPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
      ReadOnly = True
    end
    object FDQ_ProdRefLengthPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      ReadOnly = True
      Size = 50
    end
    object FDQ_ProdRefLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ReadOnly = True
    end
    object FDQ_ProdRefLengthProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 150
    end
    object FDQ_ProdRefLengthPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      ReadOnly = True
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_ProdRefLengthREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ReadOnly = True
      Size = 30
    end
    object FDQ_ProdRefLengthMaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_ProdRefLengthNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
  end
  object FDQ_MatchaRef: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Po.PosStatus, po.PositionName, p.ProductNo, p.Pr' +
        'oductDisplayName,  po.PositionID, Max(pn.StoredDate) as StoredDa' +
        'te,'
      ''
      'pn.REFERENCE,'
      ' '
      '(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail PTD'#9#9
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = pn.PackageTypeNo) as MaxLength,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PackageNumber pn'
      'inner  join dbo.Position Po on Po.PositionID = pn.PositionID'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo'
      #9#9#9'AND pde.LanguageID = :LanguageCode'
      ''
      'WHERE '
      'pn.REFERENCE = :Reference'
      'and po.PIPNo = :PIPNo'
      'and pn.[Status] = 1'
      
        'group by po.PositionName, p.ProductNo, p.ProductDisplayName,  po' +
        '.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus, pn.REFERENCE, pn.PackageTypeNo '
      ''
      'UNION'
      
        #9'Select distinct Po.PosStatus, po.PositionName, pde.ProductNo, p' +
        'de.ProductDisplayName,  po.PositionID, Max(pn.StoredDate) as Sto' +
        'redDate,'
      ''
      'pn.REFERENCE,'
      ' '
      '(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail PTD'#9#9
      
        'INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = pn.PackageTypeNo) as MaxLength,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 0'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 0'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PkgInvStat pk'
      
        'inner join dbo.PackageNumber pn on pn.PackageNo = pk.packageno a' +
        'nd pn.SupplierCode = pk.Prefix'
      
        'inner  join dbo.Position Po on Po.PositionID = pn.PositionID and' +
        ' Po.PIPNo = pk.PIPNo'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'Left Join dbo.ProductDesc pde ON pde.ProductNo = pt.ProductNo'
      #9#9#9'AND pde.LanguageID = :LanguageCode '
      ''
      'WHERE '
      'pn.REFERENCE = :Reference'#9
      'and pk.InvStatus = 1'
      'and pn.[Status] = 0'
      'and pk.PIPNo = :PIPNo'
      
        'group by po.PositionName, pde.ProductNo, pde.ProductDisplayName,' +
        '  po.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus, pn.REFERENCE, pn.PackageTypeNo '
      ''
      'order by PosStatus, StoredDate')
    Left = 747
    Top = 59
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_MatchaRefPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
    end
    object FDQ_MatchaRefPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_MatchaRefProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_MatchaRefProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_MatchaRefPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object FDQ_MatchaRefStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_MatchaRefREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object FDQ_MatchaRefMaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
    object FDQ_MatchaRefNoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_MatchaRefNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
  end
  object DS_MatchaRef: TDataSource
    DataSet = Mem_MatchaRef
    Left = 675
    Top = 107
  end
  object Mem_MatchaRef: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Index_PosID'
        Fields = 'PositionID;ProductNo;MaxLength;Reference'
      end>
    IndexName = 'Index_PosID'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 755
    Top = 115
    object Mem_MatchaRefVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_MatchaRefPosStatus: TIntegerField
      FieldName = 'Fullt'
    end
    object Mem_MatchaRefPositionName: TStringField
      FieldName = 'PositionName'
      Size = 50
    end
    object Mem_MatchaRefProductDisplayName: TStringField
      FieldName = 'ProductName'
      Size = 150
    end
    object Mem_MatchaRefNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object Mem_MatchaRefProductNo: TIntegerField
      FieldName = 'ProductNo'
      Required = True
    end
    object Mem_MatchaRefPositionID: TIntegerField
      FieldName = 'PositionID'
    end
    object Mem_MatchaRefREFERENCE: TStringField
      FieldName = 'Reference'
      Size = 30
    end
    object Mem_MatchaRefMaxLength: TIntegerField
      FieldName = 'MaxLength'
    end
  end
  object sp_insPkgInvStat: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_insPkgInvStat'
    Left = 304
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
