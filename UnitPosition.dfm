object Position: TPosition
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 200
  Caption = 'Position'
  ClientHeight = 692
  ClientWidth = 1333
  Color = clBtnFace
  TransparentColorValue = clWindowText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object PageControl_Position: TPageControl
    Left = 701
    Top = 0
    Width = 632
    Height = 692
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet_RefMatch
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object TabSheet_All: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Alla Position'
      object cxGrid_AllPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 656
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Matcha Product'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object cxGrid_MatchPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 656
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Matcha Referens'
      ImageIndex = 2
      object grid_Matcha_Ref: TcxGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 656
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
    Width = 693
    Height = 692
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alLeft
    Caption = 'PakagePanel'
    TabOrder = 1
    Visible = False
    object grid_ProductList: TcxGrid
      Left = 1
      Top = 107
      Width = 691
      Height = 584
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Width = 241
      Height = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Store Position'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnStorePositionClick
    end
    object btDelete: TButton
      Left = 460
      Top = 0
      Width = 127
      Height = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Remove'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btDeleteClick
    end
    object btChangeStyle: TButton
      Left = 302
      Top = 0
      Width = 107
      Height = 64
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Styles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btChangeStyleClick
    end
    object lbPkgCount: TcxLabel
      Left = 1
      Top = 65
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Paket Count : '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 27
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
    PixelsPerInch = 120
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
    Left = 539
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
      640065000D000A005400660072006D004C006F00610064004100720072006900
      760061006C0073000100660072006D004C006F00610064004100720072006900
      760061006C0073000100010001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004C004F000100
      4C004F000100010001000D000A006700720064004C006F006100640073004400
      42005400610062006C006500560069006500770031004C004F00410044004E00
      4F0001004C006100730074006E0072000100010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      31004C004F00410044004500440044004100540045000100550074006C006100
      73007400610064000100010001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004C004F004100
      44005F0053005400410054005500530001005300740061007400750073000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C0065005600690065007700310046005300010046005300010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      6500560069006500770031004C004F00410044005F004900440001004C006100
      730074002000490044000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310041005600
      52004F0050005F0043005500530054004F004D004500520001004B0075006E00
      64002800650078007400650072006E0029000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      7700310053005500500050004C0049004500520001004C006500760065007200
      61006E007400F60072000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310044004500
      5300540049004E004100540049004F004E000100440065007300740069006E00
      6100740069006F006E000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310049004E00
      560050004F0049004E0054004E0041004D00450001004C006500760065007200
      6500720061002000740069006C006C000100010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      3100530055005000500043004F00440045000100500072006500660069007800
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C0065005600690065007700310043005500530054004F004D004500
      520001004B0075006E006400280069006E007400650072006E00290001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C0065005600690065007700310049004E0049005400490041004C0053000100
      410052002000610076000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310043006F00
      75006E0074007200790043006F006400650001004C0061006E0064006B006F00
      64000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C006500560069006500770031004C004F0049004E0049000100
      4C004F0020007200650067002E00610076000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C00410053005400530054004C004C00450001004C00610073007400
      73007400E4006C006C0065000100010001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004F00
      52004400450052005F004E004F0001004F0072006400650072006E0072000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004F0042004A0045004300540054005900
      5000450001004F0042004A004500430054005400590050004500010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310043005500530054004F004D00450052004E004F00
      010043005500530054004F004D00450052004E004F000100010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      69006500770031004100560052004F0050005F0043005500530054004F004D00
      450052004E004F0001004100560052004F0050005F0043005500530054004F00
      4D00450052004E004F000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C006500560069006500770031004F007200
      640065007200540079007000650001004F007200640065007200740079007000
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C0065005600690065007700310053005500500050004C0049004500
      52004E004F00010053005500500050004C004900450052004E004F0001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C006500560069006500770031004C00690070004E006F0001004C0069007000
      4E006F000100010001000D000A006700720064004C006F006100640073004400
      42005400610062006C0065005600690065007700310049004E00560050004F00
      49004E0054004E004F00010049004E00560050004F0049004E0054004E004F00
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C006500560069006500770031005400590050000100540079007000
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C006500560069006500770031004C004F0054005900500001004C00
      4F000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C00650056006900650077003100540072006100640069006E00
      67000100540072006100640069006E0067000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C006F0061006400410052000100410052000100010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      690065007700310041005200740069006C006C004C0061006700650072000100
      410052002000740069006C006C0020006C006100670065007200010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310049006D0070005600650072006B00010049006D00
      70002E006F00720074000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310045004700
      45004E0001004500470045004E000100010001000D000A00630078004C006100
      620065006C003200010056006900730061003A000100010001000D000A006300
      78004C006100620065006C00330001004C004F003A000100010001000D000A00
      630078004C006100620065006C00340001004C006100730074006E0072003A00
      0100010001000D000A00630078004C006100620065006C003500010050006500
      720069006F0064003A000100010001000D000A006300620041006C006C006100
      5600650072006B00010041006C006C00610020007600650072006B0001000100
      01000D000A0067007200640050006B0067007300440042005400610062006C00
      6500560069006500770031005000410043004B004100470045005F004E004F00
      0100500061006B00650074006E0072000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      53005500500050004C0049004500520043004F00440045000100500072006500
      6600690078000100010001000D000A0067007200640050006B00670073004400
      42005400610062006C00650056006900650077003100500052004F0044005500
      430054005F004400450053004300520049005000540049004F004E0001005000
      72006F00640075006B0074000100010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310047005300
      01004B00760061006C006900740065007400730073007400E4006D0070006500
      6C000100010001000D000A0067007200640050006B0067007300440042005400
      610062006C006500560069006500770031004200430001005300740072006500
      63006B006B006F0064000100010001000D000A0067007200640050006B006700
      7300440042005400610062006C006500560069006500770031004D0033005F00
      4E0045005400010041004D0033000100010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      43005300010053007400790063006B000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      4D0033005F004E004F004D0001004E004D0033000100010001000D000A006700
      7200640050006B0067007300440042005400610062006C006500560069006500
      770031004D00460042004D0001004D00460042004D000100010001000D000A00
      67007200640050006B0067007300440042005400610062006C00650056006900
      6500770031004C006F00610064004E006F0001004C006F00610064004E006F00
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C006500560069006500770031004C004F0001004C004F00010001000100
      0D000A0067007200640050006B0067007300440042005400610062006C006500
      560069006500770031004C004F00410044005F00440045005400410049004C00
      4E004F0001005200610064006E0072000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      5000410043004B004100470045004F004B000100530074006100740075007300
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C006500560069006500770031005000410043004B004100470045005F00
      4C004F00470001004C006F00670067000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      530075006200530075006D0001005600E4007200640065000100010001000D00
      0A0067007200640050006B0067007300440042005400610062006C0065005600
      6900650077003100500052004900430045000100500072006900730001000100
      01000D000A0067007200640050006B0067007300440042005400610062006C00
      6500560069006500770031004E004C004D004D0001004E004C004D004D000100
      010001000D000A0067007200640050006B006700730044004200540061006200
      6C0065005600690065007700310041004C004D004D00010041004C004D004D00
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C00650056006900650077003100550073006500640001004600F6007200
      6200720075006B00610064000100010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310049006E00
      66006F003200010049006E0066006F0032002000280070006F00730069007400
      69006F006E0029000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D00200032000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      200031000100010001000D000A00640078004200610072005300750062004900
      740065006D00310001004600F6006C006A00650073006500640065006C000100
      010001000D000A00640078004200610072005300750062004900740065006D00
      320001004600F6006C006A00650073006500640065006C002000550053004100
      0100010001000D000A00610063004600530001004600F6007200680061006E00
      640073006700720061006E0073006B0061000100010001000D000A0061006300
      460053005F0044004B0001004600F6006C006A00650073006500640065006C00
      2000280044004B0029000100010001000D000A00610063005000720069006E00
      7400530061006D004C006100730074000100530061006D006C0069006E006700
      73006600F6006C006A00650073006500640065006C000100010001000D000A00
      610063005000720069006E007400530061006D004C006100730074004D006500
      640050006B0074004E0072000100530061006D006C0069006E00670073006600
      F6006C006A00650073006500640065006C0020006D0065006400200070006B00
      74006E0072000100010001000D000A006100630050006B00670049006E006600
      6F000100500061006B006500740069006E0066006F0072006D00610074006900
      6F006E000100010001000D000A00610063004300680061006E00670065004C00
      6F00610064004C00610079006F00750074000100C4006E006400720061002000
      6C00610079006F00750074000100010001000D000A0061006300430068006100
      6E006700650050006B0067004C00610079006F00750074000100C4006E006400
      7200610020006C00610079006F00750074000100010001000D000A0061006300
      5300650074004C006F006100640054006F0043006F006E006600690072006D00
      65006400010053006500740020004C006F0061006400200074006F0020004300
      6F006E006600690072006D00650064000100010001000D000A00610063004300
      6F006E006600690072006D00650064004C006F0061006400010041006E006B00
      6F006D002E0020004600310030000100010001000D000A006100630043006C00
      6F0073006500010053007400E4006E0067002000460031003200010001000100
      0D000A00610063004500780070006F00720074004C006F006100640073005400
      6F0045007800630065006C0001004500780070002E0078006C00730020004600
      310031000100010001000D000A00610063005200650066007200650073006800
      01005500700070006400610074002E002000460036000100010001000D000A00
      6100630055006E0064006F00410052000100C5006E0067007200610020004600
      34000100010001000D000A0061006300530068006F007700470072006F007500
      700042006F0078000100470072007500700070006500720069006E0067007300
      72007500740061006E000100010001000D000A00610063004500780070006100
      6E00640041006C006C00010045007800700061006E0064006500720061002000
      61006C006C006100200067007200750070007000650072000100010001000D00
      0A006100630043006F006C006C00610070007300650041006C006C0001004B00
      6F006C006C006100700073006100200061006C006C0061002000670072007500
      70007000650072000100010001000D000A00610063005000720069006E007400
      540061006C006C007900550053004E006F007400650001004600F60072006800
      61006E00640073006700720061006E0073006B0061000100010001000D000A00
      6100630043006F006E006600690072006D004F006E0065004C006F0061006400
      010041006E006B006F006D007300740072006500670069007300740072006500
      720061000100010001000D000A00610063005000720069006E00740044006900
      720065006300740046005300010053006B007200690076002000750074002000
      6D00610072006B006500720061006400650020006C0061007300740065007200
      0100010001000D000A00610063005000720069006E0074004400690072006500
      63007400460053005F00550053004100010053006B0072006900760020007500
      740020006D00610072006B006500720061006400650020006C00610073007400
      650072000100010001000D000A0061006300530061006D006C0069006E006700
      7300460053005F005500530041000100530061006D006C0069006E0067007300
      6600F6006C006A00650073006500640065006C00200055005300410001000100
      01000D000A006100630047006500740049006E00740050007200690063006500
      730001005500700064002E002000700072006900730065007200200073002D00
      460036000100010001000D000A00610063005000720069006E00740001005300
      6B007200690076002000750074002000460038000100010001000D000A006100
      6300530065006E0064004C006F006100640054006F00480061006D0070006500
      6E0001005300E4006E006400200069006E006C00650076002000740069006C00
      6C0020004800540046000100010001000D000A00610063005300650074004900
      6E0066006F00320054006500780074000100C4006E0064007200610020007000
      6F0073006900740069006F006E0020007000E50020006D00610072006B006500
      72006100640065002000700061006B00650074000100010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      6500770031004E006F004F0066005000610063006B0061006700650073000100
      41006E00740061006C002000700061006B00650074000100010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      69006500770031005000610063006B00610067006500730043006F006E006600
      690072006D00650064000100500061006B00650074002000620065006B007200
      E400660074006100640065000100010001000D000A00630078004C0061006200
      65006C0031003000010041006E00670065002000700061006B00650074006E00
      72003A000100010001000D000A0067007200640050006B006700730044004200
      5400610062006C006500560069006500770031005000610063006B0061006700
      65004E006F0001005000610063006B006100670065004E006F00010001000100
      0D000A0067007200640050006B0067007300440042005400610062006C006500
      5600690065007700310043007200650061007400650064005500730065007200
      0100430072006500610074006500640055007300650072000100010001000D00
      0A0067007200640050006B0067007300440042005400610062006C0065005600
      6900650077003100440061007400650043007200650061007400650064000100
      440061007400650043007200650061007400650064000100010001000D000A00
      630078004C006100620065006C00310001004D006F0074007400610067006100
      720065003A000100010001000D000A00630078004C006100620065006C003800
      01004C0065007600650072006500720061002000740069006C006C003A000100
      010001000D000A00630078004C006100620065006C00360001004C0065007600
      6500720061006E007400F60072003A000100010001000D000A00630078004C00
      6100620065006C00370001004C0061007300740073007400E4006C006C006500
      3A000100010001000D000A00630078004C006100620065006C00390001004B00
      75006E0064002000650078007400650072006E003A000100010001000D000A00
      63006200530068006F0077004F006E006C007900560057004C006F0061006400
      730001005600690073006100200065006E006400610073007400200056005700
      20006C00650076006500720061006E007300650072000100010001000D000A00
      620074004300680061006E00670065005300740079006C006500010053007400
      79006C00650073000100010001000D000A0067007200640050006B0067007300
      440042005400610062006C0065005600690065007700310050006F0073006900
      740069006F006E00010050006F0073006900740069006F006E00010001000100
      0D000A0067007200640050006B0067007300440042005400610062006C006500
      560069006500770031005000610063006B006100670065005F00530069007A00
      6500010050006B007400730074006F0072006C0065006B002000690064000100
      010001000D000A0067007200640050006B006700730044004200540061006200
      6C006500560069006500770031005000610063006B0061006700650053006900
      7A0065004E0061006D0065000100500061006B0065007400730074006F007200
      6C0065006B000100010001000D000A006100630053006500740050006B007400
      530074006F0072006C0065006B000100C4006E00640072006100200070006100
      6B0065007400730074006F0072006C0065006B0020007000E50020006D006100
      72006B00650072006100640065002000700061006B0065007400010001000100
      0D000A0047007200690064005400610062006C00650056006900650077005300
      740079006C006500530068006500650074004C0069006C006100630001004C00
      69006C00610063000100010001000D000A004700720069006400540061006200
      6C00650056006900650077005300740079006C00650053006800650065007400
      5200650064005700680069007400650061006E00640042006C00750065005600
      4700410001005200650064002C002000570068006900740065002C0020006100
      6E006400200042006C0075006500200028005600470041002900010001000100
      0D000A0047007200690064005400610062006C00650056006900650077005300
      740079006C00650053006800650065007400500075006D0070006B0069006E00
      6C0061007200670065000100500075006D0070006B0069006E00200028006C00
      610072006700650029000100010001000D000A00610063005000720065007000
      6100720065005300630061006E00010050007200650070006100720065002000
      5300630061006E000100010001000D000A00610063005300630061006E006E00
      650064004500720072006F00720073000100460065006C006C00690073007400
      61000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C006500560069006500770031004F0072006900670069006E00
      61006C004C004F0001004F0072006900670069006E0061006C004C004F000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004F0072006900670069006E0061006C00
      4C006F00610064004E006F0001004F0072006900670069006E0061006C004C00
      6F00610064004E006F000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073004C006F00610064004E006F0001004C006F00610064004E006F00
      0100010001000D000A006D007400530065006C00650063007400650064004C00
      6F006100640073004C004F004E006F0001004C004F004E006F00010001000100
      0D000A006D007400530065006C00650063007400650064004C006F0061006400
      73004C00490050004E006F0001004C00490050004E006F000100010001000D00
      0A006D007400530065006C00650063007400650064004C006F00610064007300
      43007500730074006F006D00650072004E006F00010043007500730074006F00
      6D00650072004E006F000100010001000D000A006D007400530065006C006500
      63007400650064004C006F006100640073005300740061007400750073000100
      5300740061007400750073000100010001000D000A006D007400530065006C00
      650063007400650064004C006F006100640073004F0042004A00450043005400
      540059005000450001004F0042004A0045004300540054005900500045000100
      010001000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073004F007200640065007200540079007000650001004F0072006400
      6500720054007900700065000100010001000D000A006D007400530065006C00
      650063007400650064004C006F006100640073004C006F006100640041005200
      01004C006F0061006400410052000100010001000D000A006D00740053006500
      6C00650063007400650064004C006F0061006400730049006D0070004F007200
      7400010049006D0070004F00720074000100010001000D000A006D0074005300
      65006C00650063007400650064004C006F006100640073004500470045004E00
      01004500470045004E000100010001000D000A006D007400530065006C006500
      63007400650064004C006F006100640073004100760072006F00700043007500
      730074006F006D00650072004E006F0001004100760072006F00700043007500
      730074006F006D00650072004E006F000100010001000D000A00630064007300
      5F00500072006F00700073005500730065007200490044000100550073006500
      7200490044000100010001000D000A006300640073005F00500072006F007000
      730046006F0072006D00010046006F0072006D000100010001000D000A006300
      640073005F00500072006F00700073005600650072006B004E006F0001005600
      650072006B004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      5000490050004E006F0001005000490050004E006F000100010001000D000A00
      6300640073005F00500072006F00700073004C00490050004E006F0001004C00
      490050004E006F000100010001000D000A006300640073005F00500072006F00
      7000730049006E007000750074004F007000740069006F006E00010049006E00
      7000750074004F007000740069006F006E000100010001000D000A0063006400
      73005F00500072006F007000730052006500670050006F0069006E0074004E00
      6F00010052006500670050006F0069006E0074004E006F000100010001000D00
      0A006300640073005F00500072006F0070007300520065006700440061007400
      6500010052006500670044006100740065000100010001000D000A0063006400
      73005F00500072006F007000730043006F007000790050006300730001004300
      6F00700079005000630073000100010001000D000A006300640073005F005000
      72006F0070007300520075006E004E006F000100520075006E004E006F000100
      010001000D000A006300640073005F00500072006F0070007300500072006F00
      640075006300650072004E006F000100500072006F0064007500630065007200
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      4100750074006F0043006F006C00570069006400740068000100410075007400
      6F0043006F006C00570069006400740068000100010001000D000A0063006400
      73005F00500072006F007000730053007500700070006C006900650072004300
      6F0064006500010053007500700070006C0069006500720043006F0064006500
      0100010001000D000A006300640073005F00500072006F00700073004C006500
      6E006700740068004F007000740069006F006E0001004C0065006E0067007400
      68004F007000740069006F006E000100010001000D000A006300640073005F00
      500072006F00700073004C0065006E00670074006800470072006F0075007000
      4E006F0001004C0065006E00670074006800470072006F00750070004E006F00
      0100010001000D000A006300640073005F00500072006F00700073004E006500
      77004900740065006D0052006F00770001004E00650077004900740065006D00
      52006F0077000100010001000D000A006300640073005F00500072006F007000
      7300530061006C006500730052006500670069006F006E004E006F0001005300
      61006C006500730052006500670069006F006E004E006F000100010001000D00
      0A006300640073005F00500072006F00700073004D00610072006B0065007400
      52006500670069006F006E004E006F0001004D00610072006B00650074005200
      6500670069006F006E004E006F000100010001000D000A006300640073005F00
      500072006F00700073004F00720064006500720054007900700065004E006F00
      01004F00720064006500720054007900700065004E006F000100010001000D00
      0A006300640073005F00500072006F0070007300530074006100740075007300
      01005300740061007400750073000100010001000D000A006300640073005F00
      500072006F0070007300460069006C007400650072004F007200640065007200
      44006100740065000100460069006C007400650072004F007200640065007200
      44006100740065000100010001000D000A006300640073005F00500072006F00
      700073005300740061007200740050006500720069006F006400010053007400
      61007200740050006500720069006F0064000100010001000D000A0063006400
      73005F00500072006F007000730045006E00640050006500720069006F006400
      010045006E00640050006500720069006F0064000100010001000D000A006300
      640073005F00500072006F007000730043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F000100010001000D000A0063006400
      73005F00500072006F0070007300530061006C00650073005000650072007300
      6F006E004E006F000100530061006C006500730050006500720073006F006E00
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      5600650072006B0053007500700070006C006900650072004E006F0001005600
      650072006B0053007500700070006C006900650072004E006F00010001000100
      0D000A006300640073005F00500072006F00700073005600650072006B004B00
      75006E0064004E006F0001005600650072006B004B0075006E0064004E006F00
      0100010001000D000A006300640073005F00500072006F00700073004C004F00
      4F0062006A00650063007400540079007000650001004C004F004F0062006A00
      65006300740054007900700065000100010001000D000A006300640073005F00
      500072006F007000730042006100720043006F00640065004E006F0001004200
      6100720043006F00640065004E006F000100010001000D000A00630064007300
      5F00500072006F0070007300470072006100640065005300740061006D007000
      4E006F000100470072006100640065005300740061006D0070004E006F000100
      010001000D000A006300640073005F00500072006F007000730056006F006C00
      75006D00650055006E00690074004E006F00010056006F006C0075006D006500
      55006E00690074004E006F000100010001000D000A006300640073005F005000
      72006F00700073004C0065006E0067007400680046006F0072006D0061007400
      4E006F0001004C0065006E0067007400680046006F0072006D00610074004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004C00
      65006E0067007400680056006F006C0055006E00690074004E006F0001004C00
      65006E0067007400680056006F006C0055006E00690074004E006F0001000100
      01000D000A006300640073005F00500072006F0070007300470072006F007500
      70004200790042006F0078000100470072006F00750070004200790042006F00
      78000100010001000D000A006300640073005F00500072006F00700073004700
      72006F0075007000530075006D006D006100720079000100470072006F007500
      7000530075006D006D006100720079000100010001000D000A00630064007300
      5F00500072006F00700073004100670065006E0074004E006F00010041006700
      65006E0074004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004C006F006100640069006E0067004C006F006300610074006900
      6F006E004E006F0001004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F000100010001000D000A006300640073005F005000
      72006F007000730053006800690070007000650072004E006F00010053006800
      690070007000650072004E006F000100010001000D000A006300640073005F00
      500072006F007000730042006F006F006B0069006E0067005400790070006500
      4E006F00010042006F006F006B0069006E00670054007900700065004E006F00
      0100010001000D000A006300640073005F00500072006F007000730043007500
      730074006F006D00650072004E006F00010043007500730074006F006D006500
      72004E006F000100010001000D000A006300640073005F00500072006F007000
      7300530068006F007700500072006F0064007500630074000100530068006F00
      7700500072006F0064007500630074000100010001000D000A00630064007300
      5F00500072006F00700073004D00610072006B006E006100640001004D006100
      72006B006E00610064000100010001000D000A006300640073005F0050007200
      6F00700073004B0075006E00640001004B0075006E0064000100010001000D00
      0A006300640073005F00500072006F0070007300530052000100530052000100
      010001000D000A006300640073005F00500072006F0070007300530061006C00
      6A00670072007500700070000100530061006C006A0067007200750070007000
      0100010001000D000A006300640073005F00500072006F007000730056006500
      72006B0001005600650072006B000100010001000D000A006300640073005F00
      500072006F00700073004C00610073007400730074006C006C00650001004C00
      61007300740073007400E4006C006C0065000100010001000D000A0063006400
      73005F00500072006F0070007300440065007300740069006E00610074006900
      6F006E000100440065007300740069006E006100740069006F006E0001000100
      01000D000A006300640073005F00500072006F007000730053006C0075007400
      6B0075006E006400010053006C00750074006B0075006E006400010001000100
      0D000A00730071005F0043006900740079004F007200740001004F0072007400
      0100010001000D000A00730071005F0043006900740079004300690074007900
      4E006F00010043006900740079004E006F000100010001000D000A0073007100
      5F0044006500730074004F007200740001004F00720074000100010001000D00
      0A00730071005F00440065007300740043006900740079004E006F0001004300
      6900740079004E006F000100010001000D000A004600440051005F0050006F00
      73006900740069006F006E0050006F0073006900740069006F006E004E006100
      6D006500010050006F0073006900740069006F006E004E0061006D0065000100
      010001000D000A004600440051005F0050006F0073006900740069006F006E00
      50006F0073006900740069006F006E0049004400010050006F00730069007400
      69006F006E00490044000100010001000D000A004D0065006D005F004D006100
      7400630068006100500072006F006400750063007400560061006C0064000100
      560061006C0064000100010001000D000A004D0065006D005F004D0061007400
      630068006100500072006F006400750063007400460075006C006C0074000100
      460075006C006C0074000100010001000D000A004D0065006D005F004D006100
      7400630068006100500072006F00640075006300740050006F00730069007400
      69006F006E004E0061006D006E00010050006F0073006900740069006F006E00
      4E0061006D006E000100010001000D000A004D0065006D005F004D0061007400
      630068006100500072006F006400750063007400500072006F00640075006300
      74004E0061006D006E000100500072006F0064007500630074004E0061006D00
      6E000100010001000D000A004D0065006D005F004D0061007400630068006100
      500072006F0064007500630074004E006F004F00660050006B00670073000100
      4E006F004F00660050006B00670073000100010001000D000A004D0065006D00
      5F004D0061007400630068006100500072006F00640075006300740050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F000100010001000D000A004D0065006D005F004D0061007400630068006100
      500072006F00640075006300740050006F0073006900740069006F006E004900
      4400010050006F0073006900740069006F006E00490044000100010001000D00
      0A004600440051005F004D00610074006300680050006F007300690074006900
      6F006E0050006F0073006900740069006F006E004E0061006D00650001005000
      6F0073006900740069006F006E004E0061006D0065000100010001000D000A00
      4600440051005F004D00610074006300680050006F0073006900740069006F00
      6E00500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100500072006F00640075006300740044006900730070006C00
      610079004E0061006D0065000100010001000D000A004600440051005F004D00
      610074006300680050006F0073006900740069006F006E0050006F0073006900
      740069006F006E0049004400010050006F0073006900740069006F006E004900
      44000100010001000D000A004600440051005F00500072006F00640075006300
      74004E006F00500072006F00640075006300740044006900730070006C006100
      79004E0061006D0065000100500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065000100010001000D000A00460044005100
      5F00500072006F0064007500630074004E006F00500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      0D000A004D0065006D005F005000610063006B00500072006F0064004C006900
      73007400560061006C0064000100560061006C0064000100010001000D000A00
      4D0065006D005F005000610063006B00500072006F0064004C00690073007400
      500061006B00650074004E0072000100500061006B00650074004E0072000100
      010001000D000A004D0065006D005F005000610063006B00500072006F006400
      4C0069007300740050006B00740053007500700070006C006900650072004300
      6F0064006500010050006B00740053007500700070006C006900650072004300
      6F00640065000100010001000D000A004D0065006D005F005000610063006B00
      500072006F0064004C00690073007400500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000100
      0D000A004D0065006D005F005000610063006B00500072006F0064004C006900
      73007400500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F000100010001000D000A004600440051005F0050006800
      790049006E007600500074004E006F0050006800790073006900630061006C00
      49006E00760065006E0074006F007200790050006F0069006E0074004E006F00
      010050006800790073006900630061006C0049006E00760065006E0074006F00
      7200790050006F0069006E0074004E006F000100010001000D000A0046004400
      51005F0049006E0069007400690061006C004D00610074006300680050006F00
      730050006F007300530074006100740075007300010050006F00730053007400
      61007400750073000100010001000D000A004600440051005F0049006E006900
      7400690061006C004D00610074006300680050006F00730050006F0073006900
      740069006F006E004E0061006D006500010050006F0073006900740069006F00
      6E004E0061006D0065000100010001000D000A004600440051005F0049006E00
      69007400690061006C004D00610074006300680050006F007300500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      0100010001000D000A004600440051005F0049006E0069007400690061006C00
      4D00610074006300680050006F007300500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000100
      0D000A004600440051005F0049006E0069007400690061006C004D0061007400
      6300680050006F00730050006F0073006900740069006F006E00490044000100
      50006F0073006900740069006F006E00490044000100010001000D000A004600
      440051005F0049006E0069007400690061006C004D0061007400630068005000
      6F007300530074006F0072006500640044006100740065000100530074006F00
      72006500640044006100740065000100010001000D000A004600440051005F00
      49006E0069007400690061006C004D00610074006300680050006F0073004E00
      6F004F00660050006B006700730042007900500072006F006400750063007400
      01004E006F004F00660050006B006700730042007900500072006F0064007500
      630074000100010001000D000A004600440051005F0049006E00690074006900
      61006C004D00610074006300680050006F0073004E006F004F00660050006B00
      670073004200790050006F0073006900740069006F006E0001004E006F004F00
      660050006B00670073004200790050006F0073006900740069006F006E000100
      010001000D000A004D0065006D005F00530074006F007200650050006F007300
      6900740069006F006E0050006F0073006900740069006F006E00490044000100
      50006F0073006900740069006F006E00490044000100010001000D000A004D00
      65006D005F00530074006F007200650050006F0073006900740069006F006E00
      5000720065006600690078000100500072006500660069007800010001000100
      0D000A004D0065006D005F00530074006F007200650050006F00730069007400
      69006F006E00500061006B006100670065004E0072000100500061006B006100
      670065004E0072000100010001000D000A004600440051005F00500072006F00
      640075006300740050006B0067005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F000100010001000D000A004600
      440051005F00500072006F00640075006300740050006B006700530075007000
      70006C0069006500720043006F0064006500010053007500700070006C006900
      6500720043006F00640065000100010001000D000A006D00740050006B006700
      4E006F0073005000610063006B006100670065004E006F000100500061006300
      6B006100670065004E006F000100010001000D000A006D00740050006B006700
      4E006F00730053007500700070005F0043006F00640065000100530075007000
      70005F0043006F00640065000100010001000D000A006D00740050006B006700
      4E006F0073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F000100010001000D000A006D00740050006B0067004E006F0073004C00
      490050004E006F0001004C00490050004E006F000100010001000D000A006D00
      740050006B0067004E006F0073005000490050004E006F000100500049005000
      4E006F000100010001000D000A006D00740050006B0067004E006F0073005300
      7400610074007500730001005300740061007400750073000100010001000D00
      0A006D00740050006B0067004E006F0073005000610063006B00610067006500
      5F00530069007A00650001005000610063006B006100670065005F0053006900
      7A0065000100010001000D000A006D00740050006B0067004E006F0073004300
      6500720074004E006F00010043006500720074004E006F000100010001000D00
      0A006D007400530065006C00650063007400650064004C006F00610064007300
      4C004F0054005900500001004C004F005400590050000100010001000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660072006D004C006F00610064004100720072006900760061006C00
      730001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D00610001000D000A00640078004200610072004D00
      61006E006100670065007200310001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00640078004200610072004D006100
      6E0061006700650072003100420061007200310001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A007000
      6D005000720069006E00740001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A0070006D0050006B006700730001005400
      610068006F006D006100010001005400610068006F006D00610001000D000A00
      70006D004C006F0061006400730001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      5F00310001005400610068006F006D006100010001005400610068006F006D00
      610001000D000A00630078005300740079006C0065005F003000010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065005F00340001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65005F0046006F0063007500730001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      4C006F00610064004100520001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065004100
      7600720061006B006E006100640001004D0053002000530061006E0073002000
      53006500720069006600010001005400610068006F006D00610001000D000A00
      630078005300740079006C00650047007200650065006E000100540061006800
      6F006D006100010001005400610068006F006D00610001000D000A0062007400
      4300680061006E00670065005300740079006C00650001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      610001000D000A004500640069007400310001004D0053002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      0D000A004500640069007400320001004D0053002000530061006E0073002000
      53006500720069006600010001005400610068006F006D00610001000D000A00
      6200740050007200650070006100720065005300630061006E0001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D00610001000D000A006300780042007500740074006F006E0031000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D00610001000D000A006300780042007500740074006F006E00
      320001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      6500310001005400610068006F006D006100010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650032000100540061006800
      6F006D006100010001005400610068006F006D00610001000D000A0063007800
      5300740079006C006500330001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065003400
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00630078005300740079006C006500350001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006300780053007400
      79006C006500360001005400610068006F006D00610001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500370001005400
      610068006F006D006100010001005400610068006F006D00610001000D000A00
      630078005300740079006C006500380001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      6500390001005400610068006F006D006100010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650031003000010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003100310001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      650031003200010047006100720061006D006F006E0064000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650031003300
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00630078005300740079006C0065003100340001005400610068006F00
      6D006100010001005400610068006F006D00610001000D000A00630078005300
      740079006C0065003100350001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065003100
      360001005400610068006F006D006100010001005400610068006F006D006100
      01000D000A00630078005300740079006C006500310037000100540061006800
      6F006D006100010001005400610068006F006D00610001000D000A0063007800
      5300740079006C00650031003800010047006100720061006D006F006E006400
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003100390001005400610068006F006D00610001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500320030000100
      5400610068006F006D006100010001005400610068006F006D00610001000D00
      0A00630078005300740079006C0065003200310001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006300780053007400
      79006C0065003200320001005400610068006F006D0061000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650032003300
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00630078005300740079006C0065003200340001004100720069006100
      6C00010001005400610068006F006D00610001000D000A006300780053007400
      79006C00650032003500010041007200690061006C0001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500320036000100
      41007200690061006C00010001005400610068006F006D00610001000D000A00
      630078005300740079006C00650032003700010041007200690061006C000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      650032003800010041007200690061006C00010001005400610068006F006D00
      610001000D000A00630078005300740079006C0065003200390001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D00610001000D000A00630078005300
      740079006C00650033003000010041007200690061006C000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650033003100
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003300320001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650033003300010041007200
      690061006C00010001005400610068006F006D00610001000D000A0063007800
      5300740079006C0065003300340001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      3300350001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      0D000A00630078005300740079006C0065003300360001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003300370001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      610001000D000A00630078005300740079006C0065003300380001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D00610001000D000A00630078005300
      740079006C0065003300390001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500340030000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003400310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065003400
      320001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000D00
      0A00630078005300740079006C0065003400330001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65003400340001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      01000D000A00630078005300740079006C006500340035000100540061006800
      6F006D006100010001005400610068006F006D00610001000D000A0063007800
      5300740079006C0065003400360001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      3400370001005400610068006F006D006100010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650034003800010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003400390001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65003500300001005400610068006F006D006100010001005400610068006F00
      6D00610001000D000A00630078005300740079006C0065003500310001005400
      610068006F006D006100010001005400610068006F006D00610001000D000A00
      630078005300740079006C0065003500320001005400610068006F006D006100
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003500330001005400610068006F006D00610001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500350034000100
      5400610068006F006D006100010001005400610068006F006D00610001000D00
      0A00630078005300740079006C0065003500350001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006300780053007400
      79006C0065003500360001005400610068006F006D0061000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650035003700
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00630078005300740079006C0065003500380001005400610068006F00
      6D006100010001005400610068006F006D00610001000D000A00630078005300
      740079006C0065003500390001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065003600
      300001005400610068006F006D006100010001005400610068006F006D006100
      01000D000A00630078005300740079006C006500360031000100540061006800
      6F006D006100010001005400610068006F006D00610001000D000A0063007800
      5300740079006C0065003600320001005400610068006F006D00610001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      3600330001005400610068006F006D006100010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650036003400010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003600350001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65003600360001005400610068006F006D006100010001005400610068006F00
      6D00610001000D000A00630078005300740079006C0065003600370001005400
      610068006F006D006100010001005400610068006F006D00610001000D000A00
      630078005300740079006C0065003600380001005400610068006F006D006100
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003600390001005400610068006F006D00610001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500370030000100
      5400610068006F006D006100010001005400610068006F006D00610001000D00
      0A00630078005300740079006C0065003700310001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006300780053007400
      79006C0065003700320001005400610068006F006D0061000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650037003300
      01005400610068006F006D006100010001005400610068006F006D0061000100
      0D000A00630078005300740079006C0065003700340001005400610068006F00
      6D006100010001005400610068006F006D00610001000D000A00630078005300
      740079006C0065003700350001005400610068006F006D006100010001005400
      610068006F006D00610001000D000A00630078005300740079006C0065003700
      360001005400610068006F006D006100010001005400610068006F006D006100
      01000D000A00630078005300740079006C006500370037000100470061007200
      61006D006F006E006400010001005400610068006F006D00610001000D000A00
      630078005300740079006C0065003700380001005400610068006F006D006100
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C0065003700390001005400610068006F006D00610001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500380030000100
      5400610068006F006D006100010001005400610068006F006D00610001000D00
      0A00630078005300740079006C0065003800310001005400610068006F006D00
      6100010001005400610068006F006D00610001000D000A006300780053007400
      79006C0065003800320001005400610068006F006D0061000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650038003300
      010047006100720061006D006F006E006400010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650038003400010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003800350001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65003800360001005400610068006F006D006100010001005400610068006F00
      6D00610001000D000A00630078005300740079006C0065003800370001005400
      610068006F006D006100010001005400610068006F006D00610001000D000A00
      630078005300740079006C006500380038000100540069006D00650073002000
      4E0065007700200052006F006D0061006E00010001005400610068006F006D00
      610001000D000A00630078005300740079006C00650038003900010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C0065003900300001005400610068006F006D0061000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      6500390031000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001005400610068006F006D00610001000D000A0063007800
      5300740079006C006500390032000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000100
      0D000A00630078005300740079006C006500390033000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500390034000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      6500390035000100540069006D006500730020004E0065007700200052006F00
      6D0061006E00010001005400610068006F006D00610001000D000A0063007800
      5300740079006C006500390036000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000100
      0D000A00630078005300740079006C006500390037000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100540061006800
      6F006D00610001000D000A00630078005300740079006C006500390038000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D00610001000D000A00630078005300740079006C00
      65003900390001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      01000D000A00630078005300740079006C006500310030003000010054006100
      68006F006D006100010001005400610068006F006D00610001000D000A006300
      78005300740079006C00650031003000310001005400610068006F006D006100
      010001005400610068006F006D00610001000D000A0063007800530074007900
      6C00650031003000320001004D006900630072006F0073006F00660074002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D00610001000D000A00630078005300740079006C0065003100300033000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D00610001000D000A006300
      78005300740079006C00650031003000340001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D00610001000D000A00630078005300740079006C006500
      31003000350001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      01000D000A00630078005300740079006C00650031003000360001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D00610001000D000A00630078005300
      740079006C00650031003000370001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D00610001000D000A00630078005300740079006C00650031003000
      380001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000D00
      0A00630078005300740079006C00650031003000390001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D00610001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004D0061006E00610067006500720031002E004300
      61007400650067006F0072006900650073000100440065006600610075006C00
      74002C0050006B00670073002C004C006F006100640048006500610064002C00
      5000720069006E00740050006F007000550070000100010001000D000A006200
      630043006F006E006600690072006D00650064002E00500072006F0070006500
      720074006900650073002E004900740065006D007300010022004E0065007700
      20006100720072006900760061006C00730022002C0041007200720069007600
      650064002C0022004D0079002000720065006700690073007400650072006500
      640020006100720072006900760061006C00730022000100010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A004900440053005F00300001004B0061006E00200069006E007400
      650020004100520020006C0061007300740065006E002E002000500072006F00
      62006C0065006D0020006D006500640020004C004F0023002000010001000100
      0D000A004900440053005F0031003000010041006E0067006500200065007400
      7400200054004F004D00200064006100740075006D000100010001000D000A00
      4900440053005F00310031000100560069006C006C002000640075002000E500
      6E00670072006100200061006E006B006F006D00730074007200650067006900
      7300740072006500720069006E00670065006E0020007000E50020006D006100
      72006B006500720061006400650020006C00610073007400650072003F000100
      010001000D000A004900440053005F00310032000100560069006C006C002000
      64007500200061006E006B006F006D0073007400720065006700690073007400
      720065007200610020006D00610072006B006500720061006400650020006C00
      610073007400650072003F000100010001000D000A004900440053005F003100
      330001004C006F006100640020006900730020006E006F007400200076006100
      6C00690064002E000100010001000D000A004900440053005F00310034000100
      4C006100730074006E00720020000100010001000D000A004900440053005F00
      31003500010020006B0075006E0064006500200069006E007400650020006100
      6E006B006F006D00730074007200650067006900730074007200650072006100
      7300200070006700610020006100740074002000730074006100740075007300
      2000E4006E00640072006100740073002000740069006C006C00200070007200
      65006C0069006D0069006E00E40072000100010001000D000A00490044005300
      5F003100360001004C0061007300740073007400610074007500730020006900
      6E00640069006B0065007200610072002000700072006F0062006C0065006D00
      20006D006500640020006C0061007300740065006E002C0020006B0061006E00
      200069006E0074006500200061006E006B006F006D0073007400720065006700
      690073007400720065007200610073002E000100010001000D000A0049004400
      53005F003100370001004C0061007300740065006E002000E400720020007200
      6500640061006E00200061006E006B006F006D00730074007200650067006900
      730074007200650072006100640020006100760020000100010001000D000A00
      4900440053005F003100380001002000640065006E0020000100010001000D00
      0A004900440053005F0031003900010041006E006B006F006D00730074007200
      6500670069007300740072006500720069006E00670020006D00690073007300
      6C00790063006B0061006400650073002C0020006B006F006C006C0061002000
      6F006D0020006C0061007300740065006E0020006800610072002000E4006E00
      640072006100740020007300740061007400750073000100010001000D000A00
      4900440053005F00320001005400680069007300200043006F006E0066006900
      72006D006100740069006F006E00200064006F006500730020006F006E006C00
      7900200069006E0073006500720074002000610020007200650063006F007200
      6400200069006E002000740068006500200043006F006E006600690072006D00
      650064005F004C006F006100640020007400610062006C0065002C0020004300
      6F006E00740069006E00750065003F000100010001000D000A00490044005300
      5F003200310001004400750020006D00E50073007400650020007600E4006C00
      6A006100200065007400740020006C0061006700650072002100010001000100
      0D000A004900440053005F00320033000100560069006C006C00200064007500
      2000E4006E0064007200610020006B00760061006C0069007400650074002000
      740069006C006C0020006B00760061006C00690074006500740020002B002000
      69006D0070007200650067006E00650072006100740020007000E50020006100
      6C006C0061002000700072006F00640075006B00740065007200200069002000
      6C006100730074006E00720020000100010001000D000A004900440053005F00
      3200340001003F00200028006900200061006E006E0061007400200066006100
      6C006C0020006700E500720020007600610072006F0072006E00610020007400
      69006C006C0020006C0061006700720065007400200073006F006D0020006400
      65002000E400720029000100010001000D000A004900440053005F0033000100
      49006E006D00610074006E0069006E006700200061007600200070006F007300
      740020006D006900730073006C00790063006B0061006400650073002C002000
      6B006F006E00740061006B0074006100200073007500700070006F0072007400
      20006D006500640020004C004F0020006F006300680020004C00610073007400
      4E0072002E000100010001000D000A004900440053005F00340001004E006F00
      20006C00750063006B000100010001000D000A004900440053005F0034003100
      0100560069006C006C00200064007500200061006E006B006F006D0073007400
      720065006700690073007400720065007200610020006D00610072006B006500
      72006100640065002000740072006100640069006E00670020006C0061007300
      7400650072003F000100010001000D000A004900440053005F00340033000100
      410076006200720079007400650072002E000100010001000D000A0049004400
      53005F0034003400010041007600620072007900740020006B0061006E002000
      65006A00200066006F00720074007300E4007400740061002000740061002000
      62006F00720074002000740072006100640069006E0067006B006F0070007000
      6C0069006E00670020006F006300680020006600F60072007300F6006B002000
      6900670065006E002E000100010001000D000A004900440053005F0036000100
      4D00E50073007400650020007600E4006C006A006100200065006E0020006C00
      6100730074000100010001000D000A004900440053005F003700010056006900
      6C006C0020006400750020006500780070006F00720074006500720061002000
      740069006C006C00200065007800630065006C003F000100010001000D000A00
      4900440053005F003800010054006100620065006C006C002000650078007000
      6F007200740065007200610064002000740069006C006C002000450078006300
      65006C00660069006C0020000100010001000D000A004900440053005F003900
      010041006E00670065002000650074007400200046004F004D00200064006100
      740075006D000100010001000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6D007400530065006C00650063007400650064004C006F006100640073002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      0100010001000D000A0063007800500072006F00700065007200740069006500
      7300530074006F007200650031002E00530074006F0072006100670065004E00
      61006D006500010063007800500072006F007000650072007400690065007300
      530074006F007200650031000100010001000D000A006D00740050006B006700
      4E006F0073002E00560065007200730069006F006E00010037002E0036003300
      2E003000300020005300740061006E0064006100720064002000450064006900
      740069006F006E000100010001000D000A006200630043006F006E0066006900
      72006D00650064002E00540065007800740001004E0065007700200061007200
      72006900760061006C0073000100010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      6500560069006500770031004C004F00410044005F0053005400410054005500
      53002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E0001005000720065006C0069006D0069006E00E40072000100010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      560069006500770031004C004F00410044005F00530054004100540055005300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0031005D002E004400650073006300720069007000740069006F006E00
      0100500072006F0062006C0065006D000100010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      31004C004F00410044005F005300540041005400550053002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0032005D00
      2E004400650073006300720069007000740069006F006E000100410076007300
      6C0075007400610064000100010001000D000A006C0063004400650073007400
      69006E006100740069006F006E002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E0001004F0072007400010001000100
      0D000A006C0063004C00610073007400730074006C006C0065002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4F00720074000100010001000D000A004D0065006D005F005000610063006B00
      500072006F0064004C006900730074002E0049006E0064006500780065007300
      5B0030005D002E004600690065006C00640073000100500061006B0065007400
      4E0072003B0050006B00740053007500700070006C0069006500720043006F00
      640065000100010001000D000A0063007800500072006F007000650072007400
      690065007300530074006F007200650031002E0043006F006D0070006F006E00
      65006E00740073005B0030005D002E00500072006F0070006500720074006900
      6500730001005300740079006C00650073002E005300740079006C0065005300
      680065006500740019001A000100010001000D000A0063007800500072006F00
      7000650072007400690065007300530074006F007200650031002E0043006F00
      6D0070006F006E0065006E00740073005B0031005D002E00500072006F007000
      65007200740069006500730001005300740079006C00650073002E0053007400
      79006C0065005300680065006500740019001A000100010001000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660072006D004C006F006100640041007200720069007600
      61006C0073000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0070006D00
      5000720069006E0074000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070006D0050006B006700730001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0070006D004C006F006100640073000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C0065005F0031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C0065005F003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C0065005F0034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C0065005F0046006F006300750073000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C0065004C006F0061006400410052000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C00650041007600720061006B006E006100640001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650047007200650065006E00010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      620074004300680061006E00670065005300740079006C006500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      450064006900740031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0045006400690074003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6200740050007200650070006100720065005300630061006E00010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6300780042007500740074006F006E0031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780042007500
      740074006F006E0032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00630078005300740079006C0065003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C00650033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C00650036000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      650037000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C00650039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500310030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500310033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500310034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500310037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500310038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500320031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500320032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650032003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500320035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500320036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650032003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500320039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500330030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650033003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500330032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500330033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500330034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650033003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500330036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500330037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500330038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650033003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500340030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500340031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500340032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650034003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500340034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500340035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500340036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650034003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500340038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500340039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500350030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650035003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500350032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500350033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500350034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650035003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500350036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500350037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500350038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650035003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500360030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500360031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500360032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650036003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500360034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500360035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500360036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650036003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500360038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500360039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500370030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650037003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500370032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500370033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500370034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650037003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500370036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500370037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500370038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650037003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500380030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500380031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500380032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650038003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500380034000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500380035000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500380036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650038003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500380038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500380039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500390030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650039003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500390032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500390033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500390034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650039003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500390036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500390037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500390038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650039003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310030003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C006500310030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C0065003100300032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      65003100300033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003000
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650031003000350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003000360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C0065003100300037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C0065003100300038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00630078005300740079006C0065003100
      300039000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00}
  end
end
