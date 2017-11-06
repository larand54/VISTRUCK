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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid_AllPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 477
        Height = 502
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid_Matcha_Ref: TcxGrid
        Left = 0
        Top = 0
        Width = 477
        Height = 502
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
      Top = 83
      Width = 528
      Height = 445
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
    Left = 896
    Top = 214
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
    Left = 896
    Top = 270
  end
  object Mem_PackProdList: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Name = 'Mem_packlistindex01'
        Fields = 'PaketNr;PktSupplierCode'
      end
      item
        Active = True
        Name = 'DateCreated'
        Fields = 'DateCreated:D'
      end>
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
    object Mem_PackProdListDateCreated: TDateTimeField
      FieldName = 'DateCreated'
    end
  end
  object DS_ProductNo: TDataSource
    DataSet = Mem_PackProdList
    Left = 64
    Top = 422
  end
  object FDQ_StorePosID: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Update dbo.PackageNumber Set PositionID = :PosID , StoredDate = ' +
        ':CurrentDate '
      'where SupplierCode = :Prefix AND PackageNo = :PkgNr')
    Left = 352
    Top = 110
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
      'SELECT 0 as Vald, PositionName, PositionID FROM dbo.Position po'
      'Inner Join [dbo].[Area] ar on ar.AreaID = po.AreaID'
      'WHERE'
      'ar.PIPNo = :PIPNo')
    Left = 344
    Top = 286
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
        Fields = 'DateCreated:D'
      end>
    IndexName = 'DateCreated'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 424
    Top = 342
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
    Left = 424
    Top = 398
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
    Left = 49
    Top = 190
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
    Left = 353
    Top = 230
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
    Left = 48
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
    Left = 771
    Top = 416
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15521240
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15521240
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
    Left = 563
    Top = 475
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = cxGrid_AllPosition
    PopupMenus = <>
    Left = 771
    Top = 355
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
    Left = 771
    Top = 467
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
    Left = 352
    Top = 176
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
    Left = 187
    Top = 363
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
    Left = 899
    Top = 171
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
    Left = 899
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
    Left = 192
    Top = 304
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
  object sp_MatchRef: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MatchRef'
    Left = 748
    Top = 123
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
        Name = '@Reference'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 3
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@LanguageCode'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_MatchRefPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
      ReadOnly = True
    end
    object sp_MatchRefPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      ReadOnly = True
      Size = 50
    end
    object sp_MatchRefProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ReadOnly = True
    end
    object sp_MatchRefProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 150
    end
    object sp_MatchRefPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      ReadOnly = True
      Required = True
    end
    object sp_MatchRefStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object sp_MatchRefREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      ReadOnly = True
      Size = 30
    end
    object sp_MatchRefMaxLength: TFloatField
      FieldName = 'MaxLength'
      Origin = 'MaxLength'
      ReadOnly = True
    end
    object sp_MatchRefNoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object sp_MatchRefNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
  end
  object siLangLinked_frmLoadArrivals: TsiLangLinked
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 560
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540050006F0073006900740069006F006E00010050006F00
      73006900740069006F006E0001000100010001000D000A006200740043006800
      61006E00670065005300740079006C00650001005300740079006C0065007300
      01000100010001000D000A0047007200690064005400610062006C0065005600
      6900650077005300740079006C006500530068006500650074004C0069006C00
      6100630001004C0069006C006100630001000100010001000D000A0047007200
      690064005400610062006C00650056006900650077005300740079006C006500
      530068006500650074005200650064005700680069007400650061006E006400
      42006C007500650056004700410001005200650064002C002000570068006900
      740065002C00200061006E006400200042006C00750065002000280056004700
      4100290001000100010001000D000A0047007200690064005400610062006C00
      650056006900650077005300740079006C006500530068006500650074005000
      75006D0070006B0069006E006C0061007200670065000100500075006D007000
      6B0069006E00200028006C006100720067006500290001000100010001000D00
      0A00540061006200530068006500650074005F0041006C006C00010041006C00
      6C006100200050006F0073006900740069006F006E0001000100010001000D00
      0A006300780047007200690064005F0041006C006C0050006F00730069007400
      69006F006E00440042005400610062006C006500560069006500770031005600
      61006C0064000100560061006C00640001000100430068006F00730065006E00
      010001000D000A006300780047007200690064005F0041006C006C0050006F00
      73006900740069006F006E00440042005400610062006C006500560069006500
      7700310050006F0073006900740069006F006E004E0061006D00650001005000
      6F0073006900740069006F006E004E0061006D00650001000100010001000D00
      0A006300780047007200690064005F0041006C006C0050006F00730069007400
      69006F006E00440042005400610062006C006500560069006500770031005000
      6F0073006900740069006F006E0049004400010050006F007300690074006900
      6F006E004900440001000100010001000D000A00540061006200530068006500
      650074005F004D00610074006300680001004D00610074006300680061002000
      500072006F00640075006300740001000100010001000D000A00630078004700
      7200690064005F004D00610074006300680050006F0073006900740069006F00
      6E00440042005400610062006C00650056006900650077003100560061006C00
      64000100560061006C00640001000100430068006F00730065006E0001000100
      0D000A006300780047007200690064005F004D00610074006300680050006F00
      73006900740069006F006E00440042005400610062006C006500560069006500
      77003100460075006C006C007400010041006300740069007600650001000100
      010001000D000A006300780047007200690064005F004D006100740063006800
      50006F0073006900740069006F006E00440042005400610062006C0065005600
      690065007700310050006F0073006900740069006F006E004E0061006D006E00
      010050006F0073006900740069006F006E0001000100010001000D000A006300
      780047007200690064005F004D00610074006300680050006F00730069007400
      69006F006E00440042005400610062006C006500560069006500770031005000
      72006F0064007500630074004E0061006D006E000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006300
      780047007200690064005F004D00610074006300680050006F00730069007400
      69006F006E00440042005400610062006C006500560069006500770031004E00
      6F004F00660050006B006700730031000100500061006B006500740001000100
      50006B0067000100500061006C006C006100720001000D000A00630078004700
      7200690064005F004D00610074006300680050006F0073006900740069006F00
      6E00440042005400610062006C00650056006900650077003100520065006600
      6500720065006E006300650001005200650066006500720065006E0063006500
      01000100010001000D000A006300780047007200690064005F004D0061007400
      6300680050006F0073006900740069006F006E00440042005400610062006C00
      6500560069006500770031004D00610078004C0065006E006700740068000100
      4D00610078004C0065006E0067007400680001000100010001000D000A005400
      61006200530068006500650074005F005200650066004D006100740063006800
      01004D006100740063006800610020005200650066006500720065006E007300
      01000100010001000D000A0067007200690064005F004D006100740063006800
      61005F00520065006600440042005400610062006C0065005600690065007700
      3100560061006C0064000100560061006C00640001000100430068006F007300
      65006E00010001000D000A0067007200690064005F004D006100740063006800
      61005F00520065006600440042005400610062006C0065005600690065007700
      3100460075006C006C0074000100410063007400690076006500010001000100
      01000D000A0067007200690064005F004D00610074006300680061005F005200
      65006600440042005400610062006C0065005600690065007700310050006F00
      73006900740069006F006E004E0061006D006500010050006F00730069007400
      69006F006E0001000100010001000D000A0067007200690064005F004D006100
      74006300680061005F00520065006600440042005400610062006C0065005600
      6900650077003100500072006F00640075006300740044006900730070006C00
      610079004E0061006D0065000100500072006F00640075006300740001000100
      010001000D000A0067007200690064005F004D00610074006300680061005F00
      520065006600440042005400610062006C006500560069006500770031004E00
      6F004F00660050006B00670073004200790050006F0073006900740069006F00
      6E000100500061006B00650074000100010050006B0067000100500061006C00
      6C006100720001000D000A0067007200690064005F004D006100740063006800
      61005F00520065006600440042005400610062006C0065005600690065007700
      31005200450046004500520045004E0043004500010052006500660065007200
      65006E006300650001000100010001000D000A0067007200690064005F004D00
      610074006300680061005F00520065006600440042005400610062006C006500
      560069006500770031004D00610078004C0065006E0067007400680001004D00
      610078004C0065006E0067007400680001000100010001000D000A0050006100
      6B00610067006500500061006E0065006C000100500061006B00610067006500
      500061006E0065006C0001000100010001000D000A0067007200690064005F00
      500072006F0064007500630074004C0069007300740044004200540061006200
      6C00650056006900650077003100560061006C0064000100560061006C006400
      01000100430068006F00730065006E00010001000D000A006700720069006400
      5F00500072006F0064007500630074004C006900730074004400420054006100
      62006C00650056006900650077003100500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F0001000100010001000D00
      0A0067007200690064005F00500072006F0064007500630074004C0069007300
      7400440042005400610062006C0065005600690065007700310050006B007400
      53007500700070006C0069006500720043006F00640065000100500072006500
      66006900780001000100500072006500660069007800010001000D000A006700
      7200690064005F00500072006F0064007500630074004C006900730074004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500310001005000
      72006F00640075006B00740001000100500072006F0064007500630074000100
      01000D000A0067007200690064005F00500072006F0064007500630074004C00
      690073007400440042005400610062006C006500560069006500770031005000
      61006B00650074004E00720031000100500061006B00650074004E0072000100
      010050006B0067004E006F000100500061006C006C006E00720001000D000A00
      67007200690064005F00500072006F0064007500630074004C00690073007400
      440042005400610062006C006500560069006500770031004D00610078004C00
      65006E0067007400680001004D00610078004C0065006E006700740068000100
      0100010001000D000A0067007200690064005F00500072006F00640075006300
      74004C00690073007400440042005400610062006C0065005600690065007700
      31005200650066006500720065006E0063006500010052006500660065007200
      65006E006300650001000100010001000D000A00620074006E00530074006F00
      7200650050006F0073006900740069006F006E000100530074006F0072006500
      200050006F0073006900740069006F006E0001000100010001000D000A006200
      7400440065006C006500740065000100520065006D006F007600650001005400
      6100200062006F00720074000100440065006C00650074006500010054006100
      200062006F007200740001000D000A006C00620050006B00670043006F007500
      6E0074000100500061006B0065007400200043006F0075006E00740020003A00
      200001000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A004600440051005F0050006F0073006900740069006F006E0050006F007300
      6900740069006F006E004E0061006D006500010050006F007300690074006900
      6F006E004E0061006D00650001000100010001000D000A004600440051005F00
      50006F0073006900740069006F006E0050006F0073006900740069006F006E00
      49004400010050006F0073006900740069006F006E0049004400010001000100
      01000D000A004D0065006D005F004D0061007400630068006100500072006F00
      6400750063007400560061006C0064000100560061006C006400010001004300
      68006F00730065006E00010001000D000A004D0065006D005F004D0061007400
      630068006100500072006F006400750063007400460075006C006C0074000100
      460075006C006C00740001000100010001000D000A004D0065006D005F004D00
      61007400630068006100500072006F00640075006300740050006F0073006900
      740069006F006E004E0061006D006E00010050006F0073006900740069006F00
      6E004E0061006D006E0001000100010001000D000A004D0065006D005F004D00
      61007400630068006100500072006F006400750063007400500072006F006400
      7500630074004E0061006D006E000100500072006F0064007500630074004E00
      61006D006E0001000100010001000D000A004D0065006D005F004D0061007400
      630068006100500072006F0064007500630074004E006F004F00660050006B00
      6700730001004E006F004F00660050006B006700730001000100010001000D00
      0A004D0065006D005F004D0061007400630068006100500072006F0064007500
      63007400500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A004D0065006D005F004D00
      61007400630068006100500072006F00640075006300740050006F0073006900
      740069006F006E0049004400010050006F0073006900740069006F006E004900
      440001000100010001000D000A004600440051005F004D006100740063006800
      50006F0073006900740069006F006E0050006F0073006900740069006F006E00
      4E0061006D006500010050006F0073006900740069006F006E004E0061006D00
      650001000100010001000D000A004600440051005F004D006100740063006800
      50006F0073006900740069006F006E00500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000100
      01000D000A004600440051005F004D00610074006300680050006F0073006900
      740069006F006E0050006F0073006900740069006F006E004900440001005000
      6F0073006900740069006F006E004900440001000100010001000D000A004600
      440051005F00500072006F0064007500630074004E006F00500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      650001000100010001000D000A004600440051005F00500072006F0064007500
      630074004E006F00500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F0001000100010001000D000A004D0065006D00
      5F005000610063006B00500072006F0064004C00690073007400560061006C00
      64000100560061006C00640001000100430068006F00730065006E0001000100
      0D000A004D0065006D005F005000610063006B00500072006F0064004C006900
      73007400500061006B00650074004E0072000100500061006B00650074004E00
      72000100010050006B0067004E006F000100500061006C006C006E0072000100
      0D000A004D0065006D005F005000610063006B00500072006F0064004C006900
      7300740050006B00740053007500700070006C0069006500720043006F006400
      6500010050006B00740053007500700070006C0069006500720043006F006400
      650001000100010001000D000A004D0065006D005F005000610063006B005000
      72006F0064004C00690073007400500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A004D0065006D005F005000610063006B00500072006F0064004C006900
      73007400500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A004600440051005F005000
      6800790049006E007600500074004E006F005000680079007300690063006100
      6C0049006E00760065006E0074006F007200790050006F0069006E0074004E00
      6F00010050006800790073006900630061006C0049006E00760065006E007400
      6F007200790050006F0069006E0074004E006F0001000100010001000D000A00
      4D0065006D005F00530074006F007200650050006F0073006900740069006F00
      6E0050006F0073006900740069006F006E0049004400010050006F0073006900
      740069006F006E004900440001000100010001000D000A004D0065006D005F00
      530074006F007200650050006F0073006900740069006F006E00500072006500
      6600690078000100500072006500660069007800010001005000720065006600
      69007800010001000D000A004D0065006D005F00530074006F00720065005000
      6F0073006900740069006F006E00500061006B006100670065004E0072000100
      500061006B006100670065004E00720001000100010001000D000A0046004400
      51005F00500072006F00640075006300740050006B0067005000610063006B00
      6100670065004E006F0001005000610063006B006100670065004E006F000100
      0100010001000D000A004600440051005F00500072006F006400750063007400
      50006B00670053007500700070006C0069006500720043006F00640065000100
      53007500700070006C0069006500720043006F006400650001004C0065007600
      6500720061006E007400F600720073006B006F00640001005300750070007000
      6C0069006500720063006F006400650001004C00650076006500720061006E00
      7400F600720073006B006F00640001000D000A004D0065006D005F004D006100
      7400630068006100500072006F00640075006300740052006500660065007200
      65006E006300650001005200650066006500720065006E006300650001000100
      010001000D000A004D0065006D005F004D006100740063006800610050007200
      6F0064007500630074004D00610078004C0065006E0067007400680001004D00
      610078004C0065006E0067007400680001000100010001000D000A004D006500
      6D005F004D0061007400630068006100500072006F0064007500630074005300
      74006F0072006500640044006100740065000100530074006F00720065006400
      440061007400650001000100010001000D000A004D0065006D005F0050006100
      63006B00500072006F0064004C006900730074004D00610078004C0065006E00
      67007400680001004D00610078004C0065006E00670074006800010001000100
      01000D000A004D0065006D005F005000610063006B00500072006F0064004C00
      6900730074005200650066006500720065006E00630065000100520065006600
      6500720065006E006300650001000100010001000D000A004D0065006D005F00
      5000610063006B00500072006F0064004C006900730074005300630061006E00
      6E006500640001005300630061006E006E006500640001000100010001000D00
      0A004D0065006D005F005000610063006B00500072006F0064004C0069007300
      7400440061007400650043007200650061007400650064000100440061007400
      6500430072006500610074006500640001000100010001000D000A0046004400
      51005F0050006F0073006900740069006F006E00560061006C00640001005600
      61006C00640001000100430068006F00730065006E00010001000D000A004D00
      65006D005F00530074006F007200650050006F0073006900740069006F006E00
      50006F007300530074006100740075007300010050006F007300530074006100
      74007500730001000100010001000D000A004D0065006D005F00530074006F00
      7200650050006F0073006900740069006F006E005300630061006E006E006500
      640001005300630061006E006E006500640001000100010001000D000A004D00
      65006D005F00530074006F007200650050006F0073006900740069006F006E00
      4400610074006500430072006500610074006500640001004400610074006500
      430072006500610074006500640001000100010001000D000A00460044005100
      5F00500072006F0064005200650066004C0065006E0067007400680031005000
      6F007300530074006100740075007300010050006F0073005300740061007400
      7500730001000100010001000D000A004600440051005F00500072006F006400
      5200650066004C0065006E00670074006800310050006F007300690074006900
      6F006E004E0061006D006500010050006F0073006900740069006F006E004E00
      61006D00650001000100010001000D000A004600440051005F00500072006F00
      64005200650066004C0065006E006700740068003100500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      010001000D000A004600440051005F00500072006F0064005200650066004C00
      65006E006700740068003100500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065000100500072006F006400750063007400
      44006900730070006C00610079004E0061006D00650001000100010001000D00
      0A004600440051005F00500072006F0064005200650066004C0065006E006700
      74006800310050006F0073006900740069006F006E0049004400010050006F00
      73006900740069006F006E004900440001000100010001000D000A0046004400
      51005F00500072006F0064005200650066004C0065006E006700740068003100
      530074006F0072006500640044006100740065000100530074006F0072006500
      6400440061007400650001000100010001000D000A004600440051005F005000
      72006F0064005200650066004C0065006E0067007400680031004E006F004F00
      660050006B006700730042007900500072006F00640075006300740001004E00
      6F004F00660050006B006700730042007900500072006F006400750063007400
      01000100010001000D000A004600440051005F00500072006F00640052006500
      66004C0065006E0067007400680031004E006F004F00660050006B0067007300
      4200790050006F0073006900740069006F006E0001004E006F004F0066005000
      6B00670073004200790050006F0073006900740069006F006E00010001000100
      01000D000A004600440051005F00500072006F0064005200650066004C006500
      6E0067007400680031005200450046004500520045004E004300450001005200
      450046004500520045004E004300450001000100010001000D000A0046004400
      51005F00500072006F0064005200650066004C0065006E006700740068003100
      4D00610078004C0065006E0067007400680001004D00610078004C0065006E00
      67007400680001000100010001000D000A004600440051005F00500072006F00
      64007500630074004E006F005200450046004500520045004E00430045000100
      5200450046004500520045004E004300450001000100010001000D000A004600
      440051005F00500072006F0064007500630074004E006F004D00610078004C00
      65006E0067007400680001004D00610078004C0065006E006700740068000100
      0100010001000D000A004D0065006D005F0041006C006C0050006F0073006900
      740069006F006E00560061006C0064000100560061006C006400010001004300
      68006F00730065006E00010001000D000A004D0065006D005F0041006C006C00
      50006F0073006900740069006F006E0050006F0073006900740069006F006E00
      49004400010050006F0073006900740069006F006E0049004400010001000100
      01000D000A004D0065006D005F0041006C006C0050006F007300690074006900
      6F006E0050006F0073006900740069006F006E004E0061006D00650001005000
      6F0073006900740069006F006E004E0061006D00650001000100010001000D00
      0A004600440051005F00500072006F0064004C0065006E006700740068005000
      6F007300530074006100740075007300010050006F0073005300740061007400
      7500730001000100010001000D000A004600440051005F00500072006F006400
      4C0065006E0067007400680050006F0073006900740069006F006E004E006100
      6D006500010050006F0073006900740069006F006E004E0061006D0065000100
      0100010001000D000A004600440051005F00500072006F0064004C0065006E00
      670074006800500072006F0064007500630074004E006F000100500072006F00
      64007500630074004E006F0001000100010001000D000A004600440051005F00
      500072006F0064004C0065006E00670074006800500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      0100010001000D000A004600440051005F00500072006F0064004C0065006E00
      67007400680050006F0073006900740069006F006E0049004400010050006F00
      73006900740069006F006E004900440001000100010001000D000A0046004400
      51005F00500072006F0064004C0065006E00670074006800530074006F007200
      6500640044006100740065000100530074006F00720065006400440061007400
      650001000100010001000D000A004600440051005F00500072006F0064004C00
      65006E006700740068004E006F004F00660050006B0067007300420079005000
      72006F00640075006300740001004E006F004F00660050006B00670073004200
      7900500072006F00640075006300740001000100010001000D000A0046004400
      51005F00500072006F0064004C0065006E006700740068004E006F004F006600
      50006B00670073004200790050006F0073006900740069006F006E0001004E00
      6F004F00660050006B00670073004200790050006F0073006900740069006F00
      6E0001000100010001000D000A004600440051005F00500072006F0064004C00
      65006E006700740068004D00610078004C0065006E0067007400680001004D00
      610078004C0065006E0067007400680001000100010001000D000A0046004400
      51005F004D006100740063006800500072006F0064007500630074004E006F00
      50006F007300530074006100740075007300010050006F007300530074006100
      74007500730001000100010001000D000A004600440051005F004D0061007400
      63006800500072006F0064007500630074004E006F0050006F00730069007400
      69006F006E004E0061006D006500010050006F0073006900740069006F006E00
      4E0061006D00650001000100010001000D000A004600440051005F004D006100
      740063006800500072006F0064007500630074004E006F00500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A004600440051005F004D00610074006300680050007200
      6F0064007500630074004E006F00500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A004600440051005F004D006100740063006800500072006F0064007500
      630074004E006F0050006F0073006900740069006F006E004900440001005000
      6F0073006900740069006F006E004900440001000100010001000D000A004600
      440051005F004D006100740063006800500072006F0064007500630074004E00
      6F00530074006F0072006500640044006100740065000100530074006F007200
      65006400440061007400650001000100010001000D000A004600440051005F00
      4D006100740063006800500072006F0064007500630074004E006F004E006F00
      4F00660050006B006700730042007900500072006F0064007500630074000100
      4E006F004F00660050006B006700730042007900500072006F00640075006300
      740001000100010001000D000A004600440051005F004D006100740063006800
      500072006F0064007500630074004E006F004E006F004F00660050006B006700
      73004200790050006F0073006900740069006F006E0001004E006F004F006600
      50006B00670073004200790050006F0073006900740069006F006E0001000100
      010001000D000A004600440051005F00500072006F0064005200650066004C00
      65006E0067007400680050006F00730053007400610074007500730001005000
      6F00730053007400610074007500730001000100010001000D000A0046004400
      51005F00500072006F0064005200650066004C0065006E006700740068005000
      6F0073006900740069006F006E004E0061006D006500010050006F0073006900
      740069006F006E004E0061006D00650001000100010001000D000A0046004400
      51005F00500072006F0064005200650066004C0065006E006700740068005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F0001000100010001000D000A004600440051005F00500072006F006400
      5200650066004C0065006E00670074006800500072006F006400750063007400
      44006900730070006C00610079004E0061006D0065000100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001000100
      010001000D000A004600440051005F00500072006F0064005200650066004C00
      65006E0067007400680050006F0073006900740069006F006E00490044000100
      50006F0073006900740069006F006E004900440001000100010001000D000A00
      530051004C00540069006D0065005300740061006D0070004600690065006C00
      640031000100530074006F007200650064004400610074006500010001000100
      01000D000A004600440051005F00500072006F0064005200650066004C006500
      6E006700740068005200450046004500520045004E0043004500010052004500
      46004500520045004E004300450001000100010001000D000A00460044005100
      5F00500072006F0064005200650066004C0065006E006700740068004D006100
      78004C0065006E0067007400680001004D00610078004C0065006E0067007400
      680001000100010001000D000A0049006E007400650067006500720046006900
      65006C006400340001004E006F004F00660050006B0067007300420079005000
      72006F00640075006300740001000100010001000D000A004600440051005F00
      500072006F0064005200650066004C0065006E006700740068004E006F004F00
      660050006B00670073004200790050006F0073006900740069006F006E000100
      4E006F004F00660050006B00670073004200790050006F007300690074006900
      6F006E0001000100010001000D000A004600440051005F004D00610074006300
      6800610052006500660050006F00730053007400610074007500730001005000
      6F00730053007400610074007500730001000100010001000D000A0046004400
      51005F004D006100740063006800610052006500660050006F00730069007400
      69006F006E004E0061006D006500010050006F0073006900740069006F006E00
      4E0061006D00650001000100010001000D000A004600440051005F004D006100
      7400630068006100520065006600500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A004600440051005F004D00610074006300680061005200650066005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F0001000100010001000D000A004600440051005F004D00610074006300
      6800610052006500660050006F0073006900740069006F006E00490044000100
      50006F0073006900740069006F006E004900440001000100010001000D000A00
      4600440051005F004D0061007400630068006100520065006600530074006F00
      72006500640044006100740065000100530074006F0072006500640044006100
      7400650001000100010001000D000A004600440051005F004D00610074006300
      680061005200650066005200450046004500520045004E004300450001005200
      450046004500520045004E004300450001000100010001000D000A0046004400
      51005F004D00610074006300680061005200650066004D00610078004C006500
      6E0067007400680001004D00610078004C0065006E0067007400680001000100
      010001000D000A004600440051005F004D006100740063006800610052006500
      66004E006F004F00660050006B006700730042007900500072006F0064007500
      6300740001004E006F004F00660050006B006700730042007900500072006F00
      640075006300740001000100010001000D000A004600440051005F004D006100
      74006300680061005200650066004E006F004F00660050006B00670073004200
      790050006F0073006900740069006F006E0001004E006F004F00660050006B00
      670073004200790050006F0073006900740069006F006E000100010001000100
      0D000A004D0065006D005F004D00610074006300680061005200650066005600
      61006C0064000100560061006C00640001000100430068006F00730065006E00
      010001000D000A004D0065006D005F004D006100740063006800610052006500
      660050006F0073005300740061007400750073000100460075006C006C007400
      01000100010001000D000A004D0065006D005F004D0061007400630068006100
      52006500660050006F0073006900740069006F006E004E0061006D0065000100
      50006F0073006900740069006F006E004E0061006D0065000100010001000100
      0D000A004D0065006D005F004D00610074006300680061005200650066005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F0064007500630074004E0061006D006500010001000100
      01000D000A004D0065006D005F004D0061007400630068006100520065006600
      4E006F004F00660050006B006700730001004E006F004F00660050006B006700
      730001000100010001000D000A004D0065006D005F004D006100740063006800
      6100520065006600500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F0001000100010001000D000A004D0065006D00
      5F004D006100740063006800610052006500660050006F007300690074006900
      6F006E0049004400010050006F0073006900740069006F006E00490044000100
      0100010001000D000A004D0065006D005F004D00610074006300680061005200
      650066005200450046004500520045004E004300450001005200650066006500
      720065006E006300650001000100010001000D000A004D0065006D005F004D00
      610074006300680061005200650066004D00610078004C0065006E0067007400
      680001004D00610078004C0065006E0067007400680001000100010001000D00
      0A00730070005F004D00610074006300680052006500660050006F0073005300
      74006100740075007300010050006F0073005300740061007400750073000100
      0100010001000D000A00730070005F004D006100740063006800520065006600
      50006F0073006900740069006F006E004E0061006D006500010050006F007300
      6900740069006F006E004E0061006D00650001000100010001000D000A007300
      70005F004D006100740063006800520065006600500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A00730070005F004D00610074006300680052006500660050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100500072006F00640075006300740044006900730070006C00610079004E00
      61006D00650001000100010001000D000A00730070005F004D00610074006300
      680052006500660050006F0073006900740069006F006E004900440001005000
      6F0073006900740069006F006E004900440001000100010001000D000A007300
      70005F004D006100740063006800520065006600530074006F00720065006400
      44006100740065000100530074006F0072006500640044006100740065000100
      0100010001000D000A00730070005F004D006100740063006800520065006600
      5200450046004500520045004E00430045000100520045004600450052004500
      4E004300450001000100010001000D000A00730070005F004D00610074006300
      68005200650066004D00610078004C0065006E0067007400680001004D006100
      78004C0065006E0067007400680001000100010001000D000A00730070005F00
      4D0061007400630068005200650066004E006F004F00660050006B0067007300
      42007900500072006F00640075006300740001004E006F004F00660050006B00
      6700730042007900500072006F00640075006300740001000100010001000D00
      0A00730070005F004D0061007400630068005200650066004E006F004F006600
      50006B00670073004200790050006F0073006900740069006F006E0001004E00
      6F004F00660050006B00670073004200790050006F0073006900740069006F00
      6E0001000100010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540050006F0073006900740069006F00
      6E0001005400610068006F006D00610001000100010001000D000A0062007400
      4300680061006E00670065005300740079006C00650001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C006500310001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      320001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650033000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C006500340001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      6500350001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003600010054006100
      68006F006D006100010001005400610068006F006D006100010001000D000A00
      630078005300740079006C006500370001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500380001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500390001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003100300001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003100310001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      31003200010047006100720061006D006F006E00640001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031003300
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500310034000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003100350001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003100360001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031003700
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500310038000100470061007200
      61006D006F006E006400010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003100390001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003200300001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3200310001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003200320001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003200330001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C00650032003400010041007200690061006C000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003200
      3500010041007200690061006C00010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500320036000100410072006900
      61006C00010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C00650032003700010041007200690061006C00010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      32003800010041007200690061006C00010001005400610068006F006D006100
      010001000D000A00630078005300740079006C0065003200390001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C00650033003000010041007200690061006C00010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      330031000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003300320001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003300
      3300010041007200690061006C00010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500330034000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003300350001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3300360001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003300370001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003300380001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650033003900
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003400300001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003400310001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003400320001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003400330001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3400340001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500340035000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003400360001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003400370001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650034003800
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500340039000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003500300001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003500310001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650035003200
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500350033000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003500340001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003500350001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650035003600
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500350037000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003500380001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003500390001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003000
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500360031000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003600320001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003600330001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003400
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500360035000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003600360001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003600370001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003800
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500360039000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003700300001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003700310001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650037003200
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500370033000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003700340001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003700350001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650037003600
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500370037000100470061007200
      61006D006F006E006400010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003700380001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003700390001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3800300001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003800310001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003800320001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C00650038003300010047006100720061006D006F006E0064000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003800340001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650038003500
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500380036000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003800370001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500380038000100540069006D006500730020004E006500770020005200
      6F006D0061006E00010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003800390001005400610068006F006D006100
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003900300001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003900
      31000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D006100010001000D000A00630078005300
      740079006C006500390032000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C006500390033000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650039003400
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C006500390035000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500390036000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500390037000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500390038000100540069006D006500730020004E006500770020005200
      6F006D0061006E00010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003900390001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      650031003000300001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031003000
      310001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650031003000320001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650031003000330001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      650031003000340001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003100300035000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D006100010001000D000A00
      630078005300740079006C00650031003000360001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C00650031003000370001004D006900630072006F0073006F00660074002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500310030003800
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C00650031003000390001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A005000610067006500
      43006F006E00740072006F006C005F0050006F0073006900740069006F006E00
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00540061006200530068006500650074005F004D00610074006300
      680001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A0067007200690064005F00500072006F006400750063007400
      4C0069007300740001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00620074006E00530074006F00720065005000
      6F0073006900740069006F006E0001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A0062007400440065006C006500
      7400650001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0049004400
      53005F00300001004B0061006E00200069006E00740065002000410052002000
      6C0061007300740065006E002E002000500072006F0062006C0065006D002000
      6D006500640020004C004F002300200001000100430061006E006E006F007400
      20004100520020006C006F00610064002E002000500072006F0062006C006500
      6D002000770069007400680020004C004F0023002000010001000D000A004900
      440053005F0031003000010041006E0067006500200065007400740020005400
      4F004D00200064006100740075006D000100010045006E007400650072002000
      6100200054004F0020006400610074006500010001000D000A00490044005300
      5F00310031000100560069006C006C002000640075002000E5006E0067007200
      6100200061006E006B006F006D00730074007200650067006900730074007200
      6500720069006E00670065006E0020007000E50020006D00610072006B006500
      720061006400650020006C00610073007400650072003F000100010044006F00
      200079006F0075002000770061006E007400200074006F00200075006E006400
      6F0020006100720072006900760061006C002000720065006700690073007200
      6100740069006F006E0020006F006E002000730065006C006500630074006500
      640020006C006F006100640073003F00010001000D000A004900440053005F00
      310032000100560069006C006C00200064007500200061006E006B006F006D00
      73007400720065006700690073007400720065007200610020006D0061007200
      6B006500720061006400650020006C00610073007400650072003F0001000100
      44006F00200079006F0075002000770061006E007400200074006F0020006100
      720072006900760061006C002000720065006700690073007400650072002000
      730065006C006500630074006500640020006C006F006100640073003F000100
      01000D000A004900440053005F003100330001004C006F006100640020006900
      730020006E006F0074002000760061006C00690064002E000100010001000100
      0D000A004900440053005F003100340001004C006100730074006E0072002000
      010001004C006F00610064004E006F00010001000D000A004900440053005F00
      31003500010020006B0075006E0064006500200069006E007400650020006100
      6E006B006F006D00730074007200650067006900730074007200650072006100
      7300200070006700610020006100740074002000730074006100740075007300
      2000E4006E00640072006100740073002000740069006C006C00200070007200
      65006C0069006D0069006E00E400720001000100200063006F0075006C006400
      20006E006F00740020006200650020006100720072006900760061006C002000
      7200650067006900730074006500720065006400200062006500630061007500
      7300650020007300740061007400750073002000680061007300200062006500
      65006E0020006300680061006E00670065006400200074006F00200050007200
      65006C0069006D0069006E00610072007900010001000D000A00490044005300
      5F003100360001004C0061007300740073007400610074007500730020006900
      6E00640069006B0065007200610072002000700072006F0062006C0065006D00
      20006D006500640020006C0061007300740065006E002C0020006B0061006E00
      200069006E0074006500200061006E006B006F006D0073007400720065006700
      690073007400720065007200610073002E00010001004C006F00610064007300
      740061007400750073002000690073002000730068006F00770069006E006700
      2000700072006F0062006C0065006D0020006C006F00610064002C0020006300
      61006E006E006F007400200062006500200041005200010001000D000A004900
      440053005F003100370001004C0061007300740065006E002000E40072002000
      72006500640061006E00200061006E006B006F006D0073007400720065006700
      6900730074007200650072006100640020006100760020000100010054006800
      650020006C006F0061006400200069007300200061006C007200650061006400
      79002000410052002000010001000D000A004900440053005F00310038000100
      2000640065006E00200001000100200074006800610074002000010001000D00
      0A004900440053005F0031003900010041006E006B006F006D00730074007200
      6500670069007300740072006500720069006E00670020006D00690073007300
      6C00790063006B0061006400650073002C0020006B006F006C006C0061002000
      6F006D0020006C0061007300740065006E0020006800610072002000E4006E00
      6400720061007400200073007400610074007500730001000100410072007200
      6900760061006C00200072006500670069007300740072006100740069006F00
      6E0020006600610069006C00650064002C00200063006800650063006B002000
      6900660020006C006F0061006400200068006100730020006300680061006E00
      6700650064002000730074006100740075007300010001000D000A0049004400
      53005F00320001005400680069007300200043006F006E006600690072006D00
      6100740069006F006E00200064006F006500730020006F006E006C0079002000
      69006E0073006500720074002000610020007200650063006F00720064002000
      69006E002000740068006500200043006F006E006600690072006D0065006400
      5F004C006F006100640020007400610062006C0065002C00200043006F006E00
      740069006E00750065003F0001000100010001000D000A004900440053005F00
      3200310001004400750020006D00E50073007400650020007600E4006C006A00
      6100200065007400740020006C00610067006500720021000100010059006F00
      750020006E00650065006400200074006F002000730065006C00650063007400
      200061002000730074006F0063006B00200070006C0061006300650001000100
      0D000A004900440053005F00320033000100560069006C006C00200064007500
      2000E4006E0064007200610020006B00760061006C0069007400650074002000
      740069006C006C0020006B00760061006C00690074006500740020002B002000
      69006D0070007200650067006E00650072006100740020007000E50020006100
      6C006C0061002000700072006F00640075006B00740065007200200069002000
      6C006100730074006E00720020000100010044006F00200079006F0075002000
      770061006E007400200074006F0020006300680061006E006700650020006700
      720061006400650020002B002000740072006500610074006D0065006E007400
      20006F006E00200061006C006C002000700072006F0064007500630074007300
      200069006E0020006C006F006100640020006E006F002000010001000D000A00
      4900440053005F003200340001003F00200028006900200061006E006E006100
      74002000660061006C006C0020006700E500720020007600610072006F007200
      6E0061002000740069006C006C0020006C006100670072006500740020007300
      6F006D002000640065002000E4007200290001000100010001000D000A004900
      440053005F003300010049006E006D00610074006E0069006E00670020006100
      7600200070006F007300740020006D006900730073006C00790063006B006100
      6400650073002C0020006B006F006E00740061006B0074006100200073007500
      700070006F007200740020006D006500640020004C004F0020006F0063006800
      20004C006100730074004E0072002E000100010045006E007400650072006900
      6E00670020006F006600200070006F007300740020006600610069006C006500
      64002C00200063006F006E007400610063007400200073007500700070006F00
      720074002000770069007400680020004C004F00200061006E00640020004C00
      6F00610064004E006F00010001000D000A004900440053005F00340001004E00
      6F0020006C00750063006B000100460069006E006E007300200069006E007400
      65000100430061006E006E006F0074002000660069006E006400010046006900
      6E006E007300200069006E007400650001000D000A004900440053005F003400
      31000100560069006C006C00200064007500200061006E006B006F006D007300
      7400720065006700690073007400720065007200610020006D00610072006B00
      650072006100640065002000740072006100640069006E00670020006C006100
      73007400650072003F000100010044006F00200079006F007500200077006100
      6E007400200074006F0020006100720072006900760061006C00200072006500
      6700690073007400650072002000730065006C00650063007400650064002000
      740072006100640069006E00670020006C006F006100640073003F0001000100
      0D000A004900440053005F003400330001004100760062007200790074006500
      72002E0001000100430061006E00630065006C006C0069006E00670001000100
      0D000A004900440053005F003400340001004100760062007200790074002000
      6B0061006E00200065006A00200066006F00720074007300E400740074006100
      200074006100200062006F00720074002000740072006100640069006E006700
      6B006F00700070006C0069006E00670020006F006300680020006600F6007200
      7300F6006B0020006900670065006E002E0001000100430061006E0063006500
      6C002C002000630061006E006E006F007400200063006F006E00740069006E00
      75006500200074006F002000720065006D006F00760065002000740072006100
      640069006E00670020006C0069006E006B002C00200074007200790020006100
      6700610069006E00010001000D000A004900440053005F00360001004D00E500
      73007400650020007600E4006C006A006100200065006E0020006C0061007300
      7400010001004800610076006500200074006F002000730065006C0065006300
      74002000610020006C006F0061006400010001000D000A004900440053005F00
      37000100560069006C006C0020006400750020006500780070006F0072007400
      6500720061002000740069006C006C00200065007800630065006C003F000100
      010044006F00200079006F0075002000770061006E007400200074006F002000
      6500780070006F0072007400200074006F00200065007800630065006C003F00
      010001000D000A004900440053005F003800010054006100620065006C006C00
      20006500780070006F007200740065007200610064002000740069006C006C00
      200045007800630065006C00660069006C002000010054006100620065006C00
      6C0020006500780070006F007200740065007200610064002000740069006C00
      6C00200045007800630065006C002000660069006C0020000100540061006200
      6C00650020006500780070006F007200740065006400200074006F0020004500
      7800630065006C002000660069006C0065002000010054006100620065006C00
      6C0020006500780070006F007200740065007200610064002000740069006C00
      6C00200045007800630065006C002000660069006C00200001000D000A004900
      440053005F003900010041006E00670065002000650074007400200046004F00
      4D00200064006100740075006D00010041006E00670065002000650074007400
      2000460052004F004D00200064006100740075006D00010045006E0074006500
      7200200061002000460052004F004D0020006400610074006500010041006E00
      6700650020006500740074002000460052004F004D0020006400610074007500
      6D0001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006300780050007200
      6F007000650072007400690065007300530074006F007200650031002E005300
      74006F0072006100670065004E0061006D006500010063007800500072006F00
      7000650072007400690065007300530074006F00720065003100010001000100
      01000D000A006300780047007200690064005F0041006C006C0050006F007300
      6900740069006F006E00440042005400610062006C0065005600690065007700
      3100560061006C0064002E00480065006100640065007200480069006E007400
      0100560061006C00640001000100430068006F00730065006E00010001000D00
      0A004600440051005F00500072006F0064005200650066004C0065006E006700
      740068002E00530074006F00720065006400500072006F0063004E0061006D00
      65000100640062006F002E007600690073005F006600640071005F0070007200
      6F0064006C0065006E0067007400680001000100010001000D000A0073007000
      5F0069006E00730050006B00670049006E00760053007400610074002E005300
      74006F00720065006400500072006F0063004E0061006D006500010064006200
      6F002E007600690073005F0069006E00730050006B00670049006E0076005300
      74006100740001000100010001000D000A00730070005F004D00610074006300
      68005200650066002E00530074006F00720065006400500072006F0063004E00
      61006D0065000100640062006F002E007600690073005F004D00610074006300
      680052006500660001000100010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A004D0065006D005F005000610063006B00500072006F0064004C0069007300
      74002E0049006E00640065007800650073005B0030005D002E00460069006500
      6C00640073000100500061006B00650074004E0072003B0050006B0074005300
      7500700070006C0069006500720043006F006400650001000100010001000D00
      0A0063007800500072006F007000650072007400690065007300530074006F00
      7200650031002E0043006F006D0070006F006E0065006E00740073005B003000
      5D002E00500072006F0070006500720074006900650073000100530074007900
      6C00650073002E005300740079006C0065005300680065006500740019001A00
      01000100010001000D000A0063007800500072006F0070006500720074006900
      65007300530074006F007200650031002E0043006F006D0070006F006E006500
      6E00740073005B0031005D002E00500072006F00700065007200740069006500
      730001005300740079006C00650073002E005300740079006C00650053006800
      65006500740019001A0001000100010001000D000A004D0065006D005F004D00
      61007400630068006100500072006F0064007500630074002E0049006E006400
      6500780044006500660073005B0030005D002E004600690065006C0064007300
      010050006F0073006900740069006F006E00490044003B00500072006F006400
      7500630074004E006F003B004D00610078004C0065006E006700740068003B00
      5200650066006500720065006E006300650001000100010001000D000A004D00
      65006D005F004D0061007400630068006100500072006F006400750063007400
      2E0049006E00640065007800650073005B0030005D002E004600690065006C00
      64007300010050006F0073006900740069006F006E00490044003B0050007200
      6F0064007500630074004E006F003B004D00610078004C0065006E0067007400
      68003B005200650066006500720065006E006300650001000100010001000D00
      0A004D0065006D005F005000610063006B00500072006F0064004C0069007300
      74002E0049006E00640065007800650073005B0031005D002E00460069006500
      6C00640073000100440061007400650043007200650061007400650064003A00
      440001000100010001000D000A004D0065006D005F00530074006F0072006500
      50006F0073006900740069006F006E002E0049006E0064006500780065007300
      5B0030005D002E004600690065006C0064007300010044006100740065004300
      7200650061007400650064003A00440001000100010001000D000A0046004400
      51005F00500072006F0064005200650066004C0065006E006700740068003100
      2E0049006E00640065007800650073005B0030005D002E004600690065006C00
      640073000100500072006F0064007500630074004E006F003B004D0061007800
      4C0065006E006700740068003B005200450046004500520045004E0043004500
      01000100010001000D000A004D0065006D005F0041006C006C0050006F007300
      6900740069006F006E002E0049006E00640065007800650073005B0030005D00
      2E004600690065006C0064007300010050006F0073006900740069006F006E00
      4900440001000100010001000D000A0063007800500072006F00700065007200
      7400690065007300530074006F007200650031002E0043006F006D0070006F00
      6E0065006E00740073005B0032005D002E00500072006F007000650072007400
      69006500730001005300740079006C00650073002E005300740079006C006500
      5300680065006500740019001A0001000100010001000D000A004D0065006D00
      5F004D00610074006300680061005200650066002E0049006E00640065007800
      650073005B0030005D002E004600690065006C0064007300010050006F007300
      6900740069006F006E00490044003B00500072006F0064007500630074004E00
      6F003B004D00610078004C0065006E006700740068003B005200650066006500
      720065006E006300650001000100010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      50006F0073006900740069006F006E000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0062007400
      4300680061006E00670065005300740079006C00650001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C00650031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      32000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C00650034000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      650035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C00650037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C00650038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500310031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      310032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500310035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      310036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500310039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      320030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003200310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500320033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      320034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003200350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500320037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      320038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003200390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650033003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500330031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      330032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003300330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650033003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500330035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      330036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003300370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650033003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500330039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      340030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650034003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500340033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      340034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650034003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500340037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      340038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650035003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500350031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      350032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003500330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650035003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500350035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      350036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003500370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650035003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500350039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      360030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650036003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500360033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      360034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650036003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500360037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      360038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650037003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500370031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      370032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650037003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500370035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      370036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650037003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500370039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      380030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650038003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500380033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      380034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650038003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500380037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      380038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650039003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500390031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      390032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003900330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650039003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500390035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      390036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003900370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650039003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500390039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      3100300030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500310030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C006500310030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C0065003100300034000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      65003100300035000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003000
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650031003000370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003000380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C0065003100300039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0050006100670065004300
      6F006E00740072006F006C005F0050006F0073006900740069006F006E000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00540061006200530068006500650074005F004D006100740063006800
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A0067007200690064005F00500072006F0064007500630074004C00
      6900730074000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00620074006E00530074006F007200650050006F00
      73006900740069006F006E000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A0062007400440065006C0065007400
      65000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00}
  end
end
