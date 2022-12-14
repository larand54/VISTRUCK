object dmsSystem: TdmsSystem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1042
  Width = 1199
  object dsrcBarCodes: TDataSource
    DataSet = cdsBarCodes
    Left = 128
    Top = 72
  end
  object dsrcGradeStamps: TDataSource
    DataSet = cdsGradeStamps
    Left = 216
    Top = 72
  end
  object dsrcPaperWraps: TDataSource
    DataSet = cdsPaperWraps
    Left = 304
    Top = 64
  end
  object dsrcPkgsByInvOwner: TDataSource
    DataSet = cdsPkgsByInvOwner
    Left = 416
    Top = 72
  end
  object dsrcPkgsByInvOwner_II: TDataSource
    DataSet = cdsPksByInvOwner_II
    Left = 232
    Top = 664
  end
  object ds_pkgLog: TDataSource
    DataSet = cds_pkgLog
    Left = 528
    Top = 72
  end
  object ds_PksByInventoryPlace: TDataSource
    DataSet = cds_PksByInventoryPlace
    Left = 640
    Top = 72
  end
  object ds_Grade_SV: TDataSource
    DataSet = cds_Grade_SV
    Left = 256
    Top = 184
  end
  object ds_Surfacing_SV: TDataSource
    DataSet = cds_Surfacing_SV
    Left = 432
    Top = 184
  end
  object ds_PkgsByInventering: TDataSource
    Left = 352
    Top = 664
  end
  object mtSelectedPkgNo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtSelectedPkgNoIndex1'
    IndexDefs = <
      item
        Name = 'mtSelectedPkgNoIndex1'
        Fields = 'PAKETNR'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    AfterInsert = mtSelectedPkgNoAfterInsert
    BeforePost = mtSelectedPkgNoBeforePost
    Left = 1120
    Top = 24
    object mtSelectedPkgNoPAKETNR: TIntegerField
      FieldName = 'PAKETNR'
    end
    object mtSelectedPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Size = 3
    end
    object mtSelectedPkgNoSTYCKPERLNGD: TStringField
      FieldName = 'STYCKPERL'#196'NGD'
      Size = 255
    end
    object mtSelectedPkgNoAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '###,###,###.000'
    end
    object mtSelectedPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField
      FieldName = 'REGISTRERAT'
    end
    object mtSelectedPkgNoNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
    end
    object mtSelectedPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSelectedPkgNoProdukt: TStringField
      DisplayLabel = 'PRODUKT'
      FieldName = 'Produkt'
      Size = 100
    end
    object mtSelectedPkgNoHTFStatus: TStringField
      FieldName = 'HTFStatus'
    end
    object mtSelectedPkgNoReferens: TStringField
      FieldName = 'Referens'
      Size = 50
    end
    object mtSelectedPkgNoInfo1: TStringField
      FieldName = 'Info1'
      Size = 50
    end
    object mtSelectedPkgNoInfo2: TStringField
      FieldName = 'Info2'
      Size = 50
    end
    object mtSelectedPkgNoPaketstorlek: TStringField
      FieldName = 'Paketstorlek'
      Size = 50
    end
    object mtSelectedPkgNoCertfiering: TStringField
      FieldName = 'Certfiering'
      Size = 5
    end
    object mtSelectedPkgNoMARKERAD: TIntegerField
      FieldName = 'MARKERAD'
    end
    object mtSelectedPkgNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtSelectedPkgNoLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtSelectedPkgNoMaxLangd: TFloatField
      FieldName = 'MaxLangd'
    end
  end
  object ds_LoadPlanDest: TDataSource
    DataSet = cds_LoadPlanDest
    Left = 40
    Top = 496
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 504
    Top = 496
  end
  object ds_PriceList: TDataSource
    DataSet = cds_PriceList
    Left = 424
    Top = 496
  end
  object mtLengthFormat: TkbmMemTable
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
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1120
    Top = 192
    object mtLengthFormatLengthFormatNo: TSmallintField
      FieldName = 'LengthFormatNo'
    end
    object mtLengthFormatLengthFormat: TStringField
      FieldName = 'LengthFormat'
    end
  end
  object mtSizeFormat: TkbmMemTable
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
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1120
    Top = 96
    object mtSizeFormatSizeFormatNo: TSmallintField
      FieldName = 'SizeFormatNo'
    end
    object mtSizeFormatSizeFormat: TStringField
      FieldName = 'SizeFormat'
      Size = 15
    end
  end
  object ds_SizeFormat: TDataSource
    DataSet = mtSizeFormat
    Left = 1120
    Top = 144
  end
  object ds_LengthFormat: TDataSource
    DataSet = mtLengthFormat
    Left = 1120
    Top = 240
  end
  object ds_PkgImp: TDataSource
    DataSet = cds_PkgImp
    Left = 768
    Top = 672
  end
  object ds_FtpParam: TDataSource
    DataSet = cds_FtpParam
    Left = 336
    Top = 496
  end
  object dsLenaRapporter: TDataSource
    Left = 672
    Top = 184
  end
  object dsClientPrefDocs: TDataSource
    DataSet = cdsClientPrefDocs
    Left = 1088
    Top = 496
  end
  object mtReportTypes: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ReportType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DocType'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1120
    Top = 288
    object mtReportTypesReportType: TStringField
      FieldName = 'ReportType'
    end
    object mtReportTypesDocType: TIntegerField
      FieldName = 'DocType'
    end
  end
  object dsRptNames: TDataSource
    DataSet = cdsRptNames
    Left = 744
    Top = 496
  end
  object spAccessRights: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_UserRights_V5'
    Left = 48
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 3
        Name = '@UserPswd'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@LanguageID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@Company'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@InvSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@IntOrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@ProdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@CliSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@OrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@BaseSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@fAvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@fARSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@fSkeppInstrSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@fKP_ListaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@fUtlastningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@fFakturaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@fAvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@fFrakt_AvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@fAdd_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@fAsk_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@fReport_AvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@EditLoadOrder'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 25
        Name = '@ShowPrice'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object cds_Grade_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Grade_SV G'
      'WHERE G.GradeNo Not in '
      '(Select GradeNo FROM dbo.GradeCode)'
      'Order by GradeName')
    Left = 256
    Top = 136
    object cds_Grade_SVGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_Grade_SVGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object cds_Surfacing_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Surfacing S'
      'WHERE S.LanguageCode = 1'
      'AND S.SurfacingNo Not in '
      '(Select SurfacingNo FROM dbo.SurfacingCode)'
      'Order by S.SurfacingName'
      '')
    Left = 432
    Top = 136
    object cds_Surfacing_SVSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Surfacing_SVSurfacingName: TStringField
      DisplayLabel = 'Utf'#246'rande'
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_Surfacing_SVLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Surfacing_SVSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Surfacing_SVCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Surfacing_SVModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Surfacing_SVDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Surfacing_SVAct: TIntegerField
      DisplayLabel = 'Aktiv'
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_Surfacing_SVSurfacingCode: TStringField
      DisplayLabel = 'Utf'#246'rande ID'
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object cds_Surfacing_SVDKCode: TStringField
      DisplayLabel = 'DK ID'
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
  end
  object ds_Species_SV: TDataSource
    DataSet = cds_Species_SV
    Left = 335
    Top = 184
  end
  object cds_Species_SV: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From  dbo.Species S'
      'WHERE S.LanguageCode = 1'
      'AND S.SpeciesNo Not in '
      '(Select SpeciesNo FROM dbo.SpeciesCode)'
      'Order by S.SpeciesName'
      '')
    Left = 336
    Top = 136
    object cds_Species_SVSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Species_SVSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_Species_SVLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Species_SVSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_Species_SVCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_Species_SVModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_Species_SVDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_Species_SVAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_Species_SVSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object cds_Species_SVSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      Size = 10
    end
    object cds_Species_SVDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
  end
  object ds_grade: TDataSource
    DataSet = cds_grade
    Left = 510
    Top = 184
  end
  object cds_grade: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select G.*,'
      ''
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeCodeName'
      ''
      'FROM dbo.Grade G'
      ''
      'Order By g.gradecode, G.GradeName'
      '')
    Left = 512
    Top = 136
    object cds_gradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_gradeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_gradeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_gradeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_gradeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_gradeMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
    end
    object cds_gradeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_gradeGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_gradeDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_gradeGradeCodeName: TStringField
      FieldName = 'GradeCodeName'
      Origin = 'GradeCodeName'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object cds_gradeSPRAK: TStringField
      FieldKind = fkLookup
      FieldName = 'SPRAK'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
  end
  object sp_OneLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_OneLoad'
    Left = 40
    Top = 616
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OneLoadLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object sp_OneLoadLoadID: TStringField
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object sp_OneLoadSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sp_OneLoadSenderLoadStatus: TIntegerField
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object sp_OneLoadLoadedDate: TSQLTimeStampField
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object sp_OneLoadPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object sp_OneLoadCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sp_OneLoadModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sp_OneLoadDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sp_OneLoadLocalDestinationNo: TIntegerField
      FieldName = 'LocalDestinationNo'
      Origin = 'LocalDestinationNo'
    end
    object sp_OneLoadLocalShippingCompanyNo: TIntegerField
      FieldName = 'LocalShippingCompanyNo'
      Origin = 'LocalShippingCompanyNo'
    end
    object sp_OneLoadLocalLoadingLocation: TIntegerField
      FieldName = 'LocalLoadingLocation'
      Origin = 'LocalLoadingLocation'
    end
    object sp_OneLoadFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object sp_OneLoadConfirmed: TIntegerField
      FieldName = 'Confirmed'
      Origin = 'Confirmed'
      ReadOnly = True
    end
    object sp_OneLoadInvoiced: TIntegerField
      FieldName = 'Invoiced'
      Origin = 'Invoiced'
      ReadOnly = True
    end
    object sp_OneLoadNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
  end
  object sp_Delete_Res_Pkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Del_Pkg_ResModul'
    Left = 40
    Top = 664
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object cdsBarCodes: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_BarCodes'
    Left = 128
    Top = 16
  end
  object sp_Pkg_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_Pkg_ResModul'
    Left = 40
    Top = 136
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
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@Asking_Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Asking_UserName'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@UserName'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end
      item
        Position = 8
        Name = '@Modul'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end>
  end
  object sp_DelUserResPkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Del_UserResPkgs'
    Left = 40
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CopyPOLoadToSales: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CopyPOLoadToSalesII'
    Left = 56
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SrcLoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NewLONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CreateUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@OriginalLoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@NewLoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@Insert_Confirmed_Load'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_lencolpcspkgtypeno: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_lencolpcspkgtypeno'
    Left = 152
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_lencolm3pkgtypeno: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_lencolm3pkgtypeno'
    Left = 152
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_GridSettings: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 768
    Top = 64
    ParamData = <
      item
        Name = 'VIEWNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GridSettingsViewName: TStringField
      FieldName = 'ViewName'
      Origin = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_GridSettingsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GridSettingsSets: TBlobField
      FieldName = 'Sets'
      Origin = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPkgsByInvOwner: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      
        'AND '#9'((PN.Status = 1) or ( (PN.Status = 0) and (LI.AvRegByPkg = ' +
        '1) ) )'
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)'
      ''
      '')
    Left = 416
    Top = 24
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProductLength: TFDQuery
    AfterInsert = cds_ProductLengthAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'ProductLength'
    SQL.Strings = (
      'Select * FROM dbo.ProductLength where ProductLengthNo = -1')
    Left = 1006
    Top = 24
    object cds_ProductLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ProductLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_ProductLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object cds_ProductLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetPkgPos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select C.ClientCode, C.PktNrLevKod, C.PaketNoPos, C.PaketNoLengt' +
        'h,'
      'C.SupplierCodePos, C.SupplierCodeLength'
      'FROM dbo.client C'
      ''
      'Where C.ClientNo = :ClientNo')
    Left = 992
    Top = 496
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPkgPosClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgPosPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_GetPkgPosPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_GetPkgPosPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_GetPkgPosSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_GetPkgPosSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
  end
  object sq_GetInventoryNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT PH.PhysicalInventoryPointNo'
      'FROM'
      'PHYSICALINVENTORYPOINT PH'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND PH.PhyInvPointNameNo = :PhyInvPointNameNo')
    Left = 992
    Top = 448
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PHYINVPOINTNAMENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetInventoryNoPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsGradeStamps: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_GradeStamps'
    Left = 216
    Top = 16
  end
  object cdsPaperWraps: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PaperWraps'
    Left = 304
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object cdsPksByInvOwner_II: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      ''
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      ''
      
        '       INNER        JOIN  dbo.LogicalInventoryPoint  LI ON  LI.L' +
        'ogicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      ''
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      ''
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      ''
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  LI.P' +
        'hysicalInventoryPointNo = PIP.PhysicalInventoryPointNo'
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      '')
    Left = 232
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_pkgLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vida_PkgLogII'
    Left = 528
    Top = 24
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
        Value = ''
      end>
    object cds_pkgLogOperationNo: TIntegerField
      FieldName = 'OperationNo'
      Origin = 'OperationNo'
    end
    object cds_pkgLogLIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
    end
    object cds_pkgLogDB_Bokfrd: TSQLTimeStampField
      FieldName = 'DB_Bokf'#246'rd'
      Origin = '[DB_Bokf'#246'rd]'
      Required = True
    end
    object cds_pkgLogOperation: TStringField
      FieldName = 'Operation'
      Origin = 'Operation'
      ReadOnly = True
      Size = 21
    end
    object cds_pkgLogMtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object cds_pkgLogAnvndare: TStringField
      FieldName = 'Anv'#228'ndare'
      Origin = '[Anv'#228'ndare]'
      Required = True
    end
    object cds_pkgLogLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_pkgLoggare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_pkgLogProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object cds_pkgLogAntalperlngd: TStringField
      FieldName = 'Antal per l'#228'ngd'
      Origin = '[Antal per l'#228'ngd]'
      Size = 255
    end
    object cds_pkgLogAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_pkgLogStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
    end
    object cds_pkgLogPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_pkgLogPktTypSkapad: TSQLTimeStampField
      FieldName = 'PktTypSkapad'
      Origin = 'PktTypSkapad'
    end
    object cds_pkgLogRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      Required = True
    end
  end
  object cds_PksByInventoryPlace: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      'SELECT PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      
        '       INNER        JOIN  dbo.LogicalInventoryPoint  LI ON  LI.L' +
        'ogicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  PIP.' +
        'PhysicalInventoryPointNo = LI.PhysicalInventoryPointNo'
      ''
      
        '       INNER       JOIN  dbo.Client                 Cl ON  Cl.Cl' +
        'ientNo = PN.SupplierNo'
      ''
      ''
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      'AND PN.Status = 1'
      'AND    PIP.OwnerNo   = :InvOwner'
      'AND PIP.PhysicalInventoryPointNo = :InventoryPlaceNo'
      ' '
      '')
    Left = 640
    Top = 24
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVENTORYPLACENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PksByInventoryPlacePackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PksByInventoryPlaceSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PksByInventoryPlaceSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PksByInventoryPlaceLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PksByInventoryPlaceProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PksByInventoryPlaceProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object sq_GetRPName: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from ReportNames'
      'WHERE ReportNo = :ReportNo')
    Left = 584
    Top = 136
    ParamData = <
      item
        Name = 'REPORTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetRPNameReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
    end
    object sq_GetRPNameDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
    end
    object sq_GetRPNameReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object sq_GetRPNameBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object cds_LastLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.LastUsedLoadNo'
      'WHERE UserID = :UserID')
    Left = 1064
    Top = 624
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LastLoadNoUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LastLoadNoLastLoadNo: TStringField
      FieldName = 'LastLoadNo'
      Origin = 'LastLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object sq_DelLastLoadUsed: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Delete FROM dbo.LastUsedLoadNo'
      'WHERE UserID = :UserID'
      '')
    Left = 1064
    Top = 672
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Article: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select a.ArticleNo, a.ArticleName FROM dbo.FS_Article a')
    Left = 856
    Top = 24
    object cds_ArticleArticleNo: TIntegerField
      FieldName = 'ArticleNo'
      Origin = 'ArticleNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ArticleArticleName: TStringField
      FieldName = 'ArticleName'
      Origin = 'ArticleName'
      Size = 50
    end
  end
  object cds_GridSets: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID'
      'AND Form = :Form')
    Left = 768
    Top = 16
    ParamData = <
      item
        Name = 'VIEWNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_GridSetsViewName: TStringField
      FieldName = 'ViewName'
      Origin = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_GridSetsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GridSetsSets: TBlobField
      FieldName = 'Sets'
      Origin = 'Sets'
    end
    object cds_GridSetsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_GridSetsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      Size = 50
    end
  end
  object cdsClientPrefDocs: TFDQuery
    AfterInsert = cdsClientPrefDocsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc'
      'WHERE ClientNo = :ClientNo'
      'AND RoleType = :RoleType')
    Left = 1088
    Top = 448
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientPrefDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocscollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClientPrefDocsReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientPrefDocsRapport: TStringField
      FieldKind = fkLookup
      FieldName = 'Rapport'
      LookupDataSet = cdsRptNames
      LookupKeyFields = 'ReportNo'
      LookupResultField = 'ReportName'
      KeyFields = 'ReportNo'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cdsClientPrefDocsTYPAVRAPPORT: TStringField
      FieldKind = fkLookup
      FieldName = 'TYP AV RAPPORT'
      LookupDataSet = mtReportTypes
      LookupKeyFields = 'DocType'
      LookupResultField = 'ReportType'
      KeyFields = 'DocType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object cds_PkgsByInventering: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM         dbo.PackageNumber          PN'
      
        #9'INNER JOIN dbo.InvControlrow ICR ON ICR.PackageNo = PN.PackageN' +
        'o'
      #9#9#9#9'AND ICR.SupplierCode = PN.SupplierCode'
      ''
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      ''
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      ''
      'WHERE  PN.PackageNo = :PkgNo'
      'AND PN.Status = 1'
      'AND ICR.IC_GrpNo = :IC_GrpNo'
      '')
    Left = 352
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IC_GRPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgsByInventeringPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgsByInventeringSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgsByInventeringSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgsByInventeringLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgsByInventeringProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PkgsByInventeringProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cds_LO_Lengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select PLG.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthM' +
        'M'
      'FROM'
      'dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      ''
      'WHERE PLG.GroupNo =:ProductLengthGroupNo'
      '')
    Left = 568
    Top = 616
    ParamData = <
      item
        Name = 'PRODUCTLENGTHGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LO_LengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LO_LengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_LO_LengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
  end
  object cdsLenaRapporter: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc cpd'
      'Inner Join dbo.ReportNames rn on rn.ReportNo = cpd.ReportNo'
      'WHERE cpd.ClientNo = :ClientNo'
      'AND ((cpd.DocType = :DocType) or (-1 = :DocType)) '
      '')
    Left = 672
    Top = 136
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLenaRapporterClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
    end
    object cdsLenaRapporterpromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
    end
    object cdsLenaRapportercollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
    end
    object cdsLenaRapporterPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
    end
    object cdsLenaRapporterReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLenaRapporterReportNo_1: TIntegerField
      FieldName = 'ReportNo_1'
      Origin = 'ReportNo'
    end
    object cdsLenaRapporterDocType_1: TIntegerField
      FieldName = 'DocType_1'
      Origin = 'DocType'
    end
    object cdsLenaRapporterReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object cdsLenaRapporterBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object sq_GetXRate: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select top 1 IsNull(EX.ExChangeRate, 0) as ExchangeRate'
      'FROM ExChangeRate EX, Currency C'
      'WHERE'
      'C.CurrencyNo = :CurrencyNo'
      'AND EX.CurrencyNo = C.CurrencyNo'
      'AND EX.ValidFrom <= GetDate()'
      'group by EX.ValidFrom, EX.ExChangeRate'
      'Order by EX.ValidFrom DESC')
    Left = 768
    Top = 136
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetXRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Origin = 'ExchangeRate'
      ReadOnly = True
      Required = True
    end
  end
  object sq_LastInvDate: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Top 1 icg.MaxDatum, '
      'icg.Inventeringsdatum, '
      'icg.IC_grpno,'
      'icg.Status'
      'FROM dbo.InvControlGrp icg'
      'Inner Join dbo.InvCtrlMetod icm on icm.IC_grpno = icg.IC_grpno'
      'Where icm.LogicalInventoryPointNo = :LIPNo'
      ''
      'Order By icg.MaxDatum desc'
      '')
    Left = 768
    Top = 184
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LastInvDateMaxDatum: TSQLTimeStampField
      FieldName = 'MaxDatum'
      Origin = 'MaxDatum'
    end
    object sq_LastInvDateInventeringsdatum: TSQLTimeStampField
      FieldName = 'Inventeringsdatum'
      Origin = 'Inventeringsdatum'
    end
    object sq_LastInvDateIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
      Origin = 'IC_grpno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_LastInvDateStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sp_LoadAR: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_LoadAR'
    Left = 840
    Top = 136
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LoadARLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
  end
  object cds_LoadPlanDest: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LPH.Status,'
      'LPH.LoadingNo,'
      'LPD.LoadPlanDestRowNo,'
      'C.ClientName AS F'#246'rs'#228'ljningsregion,'
      'CY.CITYNAME+'#39', '#39'+LIP.LogicalInventoryName AS LAGER_DEST,'
      'CY2.CITYNAME+'#39', '#39'+LIP2.LogicalInventoryName AS LAGER,'
      'LPD.SalesRegionNo,'
      'V.CarrierName AS B'#197'T,'
      'LPH.ETD'
      ''
      'FROM dbo.LoadPlanHdr LPH'
      'Inner Join dbo.LoadPlanDest LPD on LPD.LoadingNo = LPH.LoadingNo'
      'Inner Join dbo.Client C ON'#9'C.ClientNo = LPD.SalesRegionNo'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH ON PH.PhysicalInventory' +
        'PointNo = LPD.PIPNo'
      'Inner Join dbo.CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LPD.LIPNo'
      ''
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH2 ON PH2.PhysicalInvento' +
        'ryPointNo = LPH.PIPNo'
      'Inner Join dbo.CITY CY2 ON'#9'CY2.CITYNO = PH2.PhyInvPointNameNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP2 on LIP2.LogicalInvento' +
        'ryPointNo = LPH.LIPNo'
      'Left Outer Join dbo.Carrier v on v.CarrierNo = LPH.VesselNo'
      'WHERE LPH.Status = 1'
      '')
    Left = 40
    Top = 448
    object cds_LoadPlanDestStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_LoadPlanDestLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadPlanDestLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      Required = True
    end
    object cds_LoadPlanDestFrsljningsregion: TStringField
      FieldName = 'F'#246'rs'#228'ljningsregion'
      Origin = '[F'#246'rs'#228'ljningsregion]'
      Size = 80
    end
    object cds_LoadPlanDestLAGER_DEST: TStringField
      FieldName = 'LAGER_DEST'
      Origin = 'LAGER_DEST'
      ReadOnly = True
      Size = 102
    end
    object cds_LoadPlanDestLAGER: TStringField
      FieldName = 'LAGER'
      Origin = 'LAGER'
      ReadOnly = True
      Size = 102
    end
    object cds_LoadPlanDestSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_LoadPlanDestBT: TStringField
      FieldName = 'B'#197'T'
      Origin = '[B'#197'T]'
      FixedChar = True
      Size = 50
    end
    object cds_LoadPlanDestETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
  end
  object cds_LengthGroup: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    Left = 1008
    Top = 128
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
  object cds_Language: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Language')
    Left = 144
    Top = 448
    object cds_LanguageLanguageNo: TIntegerField
      FieldName = 'LanguageNo'
      Origin = 'LanguageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LanguageLanguageName: TStringField
      FieldName = 'LanguageName'
      Origin = 'LanguageName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cds_LanguageSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LanguageModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_Language: TDataSource
    DataSet = cds_Language
    Left = 144
    Top = 496
  end
  object cds_PkgImp: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1'
      '       PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      'AND '#9'  PN.Status = 1 '
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)'
      ''
      
        'AND Pr.ProductNo in (Select SSP.ProductNo FROM dbo.SupplierShipp' +
        'ingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :LONo'
      'AND SSP.ProductNo = Pr.ProductNo)'
      '')
    Left = 768
    Top = 616
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgImpPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgImpSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgImpSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object cds_PkgImpLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgImpProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_PkgImpProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object cds_FtpParam: TFDQuery
    AfterInsert = cds_FtpParamAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.FtpParam'
      'WHERE UserID = :UserID')
    Left = 336
    Top = 448
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_FtpParamConnectionName: TStringField
      DisplayLabel = 'Namn'
      FieldName = 'ConnectionName'
      Origin = 'ConnectionName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamConnectionNo: TIntegerField
      FieldName = 'ConnectionNo'
      Origin = 'ConnectionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_FtpParamHost: TStringField
      FieldName = 'Host'
      Origin = 'Host'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamPort: TIntegerField
      FieldName = 'Port'
      Origin = 'Port'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamUserName: TStringField
      DisplayLabel = 'User'
      FieldName = 'UserName'
      Origin = 'UserName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamPassword: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_FtpParamStartDir: TStringField
      DisplayLabel = 'Remote dir'
      FieldName = 'StartDir'
      Origin = 'StartDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_FtpParamPassiveMode: TIntegerField
      DisplayLabel = 'Passive mode'
      FieldName = 'PassiveMode'
      Origin = 'PassiveMode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamAsciiMode: TIntegerField
      DisplayLabel = 'Ascii mode'
      FieldName = 'AsciiMode'
      Origin = 'AsciiMode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamCompanyNo: TIntegerField
      FieldName = 'CompanyNo'
      Origin = 'CompanyNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_FtpParamLocalDir: TStringField
      DisplayLabel = 'Local dir'
      FieldName = 'LocalDir'
      Origin = 'LocalDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_FtpParamStartDirUpload: TStringField
      FieldName = 'StartDirUpload'
      Origin = 'StartDirUpload'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object cds_PriceList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select templateno, PriceListName FROM dbo.PriceTemplateHeader')
    Left = 424
    Top = 448
    object cds_PriceListtemplateno: TIntegerField
      FieldName = 'templateno'
      Origin = 'templateno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PriceListPriceListName: TStringField
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      Required = True
      Size = 30
    end
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userDir'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 504
    Top = 448
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_PropsImportDir: TStringField
      FieldName = 'ImportDir'
      Origin = 'ImportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsExportDir: TStringField
      FieldName = 'ExportDir'
      Origin = 'ExportDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsDeliveryMessageWood_XSD: TStringField
      FieldName = 'DeliveryMessageWood_XSD'
      Origin = 'DeliveryMessageWood_XSD'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsMyEmailAddress: TStringField
      FieldName = 'MyEmailAddress'
      Origin = 'MyEmailAddress'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_PropsUserDir: TStringField
      FieldName = 'UserDir'
      Origin = 'UserDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsExcelDir: TStringField
      FieldName = 'ExcelDir'
      Origin = 'ExcelDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsLODir: TStringField
      FieldName = 'LODir'
      Origin = 'LODir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsLastUsedLOTemplate: TStringField
      FieldName = 'LastUsedLOTemplate'
      Origin = 'LastUsedLOTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsLastUsedFragaAvropTemplate: TStringField
      FieldName = 'LastUsedFragaAvropTemplate'
      Origin = 'LastUsedFragaAvropTemplate'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsWoodXDir: TStringField
      FieldName = 'WoodXDir'
      Origin = 'WoodXDir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_PropsImportUSA_Faktura_Dir: TStringField
      FieldName = 'ImportUSA_Faktura_Dir'
      Origin = 'ImportUSA_Faktura_Dir'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object cds_PkgTypeLengths: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PTD.ProductLengthNo, PL.ActualLengthMM AS ALMM'
      'FROM'
      'dbo.PackageTypeDetail PTD'
      
        'Inner JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE'
      'PTD.PackageTypeNo = :PackageTypeNo '
      '')
    Left = 1008
    Top = 80
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgTypeLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgTypeLengthsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object qryExec: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 1120
    Top = 352
  end
  object sq_ConfirmedLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select IsNull(NewLoadNo, 0) AS NewLoadNo, NewShippingPlanNo'
      'From dbo.Confirmed_Load Where Confirmed_LoadNo = :LoadNo')
    Left = 128
    Top = 616
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ConfirmedLoadNewLoadNo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NewLoadNo'
      Origin = ' B{'#0#0#0#0#0#8364'x{'#0#12'w'#0#11'H8'#8225#1'Dw'#0#11'&'#0#0#0#1#0
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object sq_ConfirmedLoadNewShippingPlanNo: TIntegerField
      FieldName = 'NewShippingPlanNo'
    end
  end
  object sq_dbProps: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.dbProps')
    Left = 584
    Top = 448
    object sq_dbPropsHostName: TStringField
      FieldName = 'HostName'
      Origin = 'HostName'
      Size = 50
    end
    object sq_dbPropsDatabas: TStringField
      FieldName = 'Databas'
      Origin = 'Databas'
      Size = 50
    end
    object sq_dbPropsUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Size = 50
    end
    object sq_dbPropsPassword: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      Size = 50
    end
    object sq_dbPropsCRPath: TStringField
      FieldName = 'CRPath'
      Origin = 'CRPath'
      Size = 255
    end
    object sq_dbPropsLangPath: TStringField
      FieldName = 'LangPath'
      Origin = 'LangPath'
      Size = 255
    end
    object sq_dbPropsFastPath: TStringField
      FieldName = 'FastPath'
      Origin = 'FastPath'
      Size = 255
    end
    object sq_dbPropsServiceUrl: TStringField
      FieldName = 'ServiceUrl'
      Origin = 'ServiceUrl'
      Size = 255
    end
  end
  object sq_GetLoadPlanPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select LPR.LoadingNo, LPR.PackageTypeNo, LPR.NoOfPkgsLoaded, pvc' +
        '.PackageCodeNo, LPR.LoadPlanDestRowNo, LPH.LIPNo,'
      'CY.CITYNAME+'#39', '#39'+LIP.LogicalInventoryName AS LAGER'
      'FROM dbo.LoadPlanRow LPR'
      'Inner Join dbo.LoadPlanHdr LPH on LPH.LoadingNo = LPR.LoadingNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = LPH.LIPNo'
      
        'Inner Join dbo.PHYSICALINVENTORYPOINT PH ON PH.PhysicalInventory' +
        'PointNo = LPH.PIPNo'
      'Inner Join dbo.CITY CY ON'#9'CY.CITYNO = PH.PhyInvPointNameNo'
      
        'Inner Join dbo.PkgVarCode pvc on pvc.PkgCodePPNo = LPR.PackageTy' +
        'peNo'
      ''
      'WHERE pvc.MarketRegionNo = LPH.MarketRegionNo'
      'AND LPR.LoadPlanDestRowNo = :LoadPlanDestRowNo'
      'AND LPR.LoadingNo = :LoadingNo'
      'AND LPR.NoOfPkgsLoaded > 0'
      ' '
      '')
    Left = 464
    Top = 624
    ParamData = <
      item
        Name = 'LOADPLANDESTROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLoadPlanPkgsLoadingNo: TIntegerField
      FieldName = 'LoadingNo'
      Origin = 'LoadingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsNoOfPkgsLoaded: TIntegerField
      FieldName = 'NoOfPkgsLoaded'
      Origin = 'NoOfPkgsLoaded'
    end
    object sq_GetLoadPlanPkgsPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
      Origin = 'PackageCodeNo'
      Required = True
      Size = 40
    end
    object sq_GetLoadPlanPkgsLoadPlanDestRowNo: TIntegerField
      FieldName = 'LoadPlanDestRowNo'
      Origin = 'LoadPlanDestRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetLoadPlanPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object sq_GetLoadPlanPkgsLAGER: TStringField
      FieldName = 'LAGER'
      Origin = 'LAGER'
      ReadOnly = True
      Size = 102
    end
  end
  object cdsRptNames: TFDQuery
    AfterInsert = cdsRptNamesAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.ReportNames')
    Left = 744
    Top = 448
    object cdsRptNamesReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRptNamesDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRptNamesReportName: TStringField
      DisplayLabel = 'Crystal rapport'
      FieldName = 'ReportName'
      Origin = 'ReportName'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsRptNamesBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsRptNamesDocTypeName: TStringField
      DisplayLabel = 'Typ av rapport'
      FieldKind = fkLookup
      FieldName = 'DocTypeName'
      LookupDataSet = mtReportTypes
      LookupKeyFields = 'DocType'
      LookupResultField = 'ReportType'
      KeyFields = 'DocType'
      ProviderFlags = []
      Lookup = True
    end
  end
  object sq_DoLog: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.DoLog(ProgramName, CreatedDate, UserID, LogText)'
      'Select :ProgramName, GetDate(), :UserID, :LogText')
    Left = 584
    Top = 496
    ParamData = <
      item
        Name = 'PROGRAMNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGTEXT'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cds_PkgImpNoLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT TOP 1'
      '       PN.PackageNo,'
      '       PN.SupplierCode,'
      '       PN.SupplierNo,'
      
        '       dbo.vida_LengthDescription(PN.PackageTypeNo) AS LengthDes' +
        'cription,'
      '       Pr.ProductDisplayName, Pr.ProductNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  PN.Su' +
        'pplierNo               = Cl.ClientNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      'AND '#9'  PN.Status = 1 '
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)')
    Left = 656
    Top = 672
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProdLength: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct LRR.NomLength'
      'FROM dbo.LengthRuleRow LRR'
      
        'Inner Join dbo.LengthRuleGrp LRG ON LRG.LengthRuleNo = LRR.Lengt' +
        'hRuleNo'
      'WHERE'
      'LRG.ClientNo = 741'
      'AND LRG.MinNTmm <= :MinNTmm'
      'AND LRG.MaxNTmm >= :MaxNTmm'
      'AND ((LRG.SurfacingNo = :SurfacingNo)'
      'or ((LRG.SurfacingNo = 0)'
      
        'AND (:SurfacingNo not in (Select LRG2.SurfacingNo from dbo.Lengt' +
        'hRuleGrp LRG2'
      
        'Inner Join dbo.LengthRuleRow LRR2 ON LRR2.LengthRuleNo = LRG2.Le' +
        'ngthRuleNo'
      'WHERE'
      'LRG2.MinNTmm <= :MinNTmm'
      'AND LRG2.MaxNTmm >= :MaxNTmm )) ))'
      'AND LRR.MinActLength <= :ALMM'
      'AND LRR.MaxActLength >= :ALMM'
      '')
    Left = 1008
    Top = 184
    ParamData = <
      item
        Name = 'MINNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'MAXNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'MINNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'MAXNTMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ALMM'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object cds_ProdLengthNomLength: TFloatField
      FieldName = 'NomLength'
      Origin = 'NomLength'
    end
  end
  object cds_Currency: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.Currency')
    Left = 456
    Top = 248
    object cds_CurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
    object cds_CurrencyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_CurrencyCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_CurrencyModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_CurrencySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object dsPaymentTerm: TDataSource
    DataSet = cdsPaymentTerm
    Left = 256
    Top = 304
  end
  object ds_PaymentText: TDataSource
    DataSet = cds_PaymentText
    Left = 360
    Top = 304
  end
  object cdsPaymentTerm: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select pt.PaymentTermsNo,  pt.PaymentTermName, pt.Discount1, pt.' +
        'FreightInDiscount, '
      'pt.FreightInCommission, pt.CommissionPaidByCustomer,'
      'ptd.Description, ptd.LanguageCode'
      'from dbo.PaymentTerms pt, dbo.PaymentTermDesc ptd'
      'where'
      'pt.PaymentTermsNo = ptd.PaymentTermsNo '
      'AND ptd.LanguageCode = :LanguageCode'
      '')
    Left = 256
    Top = 248
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsPaymentTermPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPaymentTermPaymentTermName: TStringField
      FieldName = 'PaymentTermName'
      Origin = 'PaymentTermName'
      Size = 50
    end
    object cdsPaymentTermDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object cdsPaymentTermFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object cdsPaymentTermFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object cdsPaymentTermCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object cdsPaymentTermDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object cdsPaymentTermLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      Required = True
    end
  end
  object cds_PaymentText: TFDQuery
    AfterInsert = cds_PaymentTextAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from '
      'dbo.PaymentText'
      'where'
      'CurrencyNo = :CurrencyNo')
    Left = 360
    Top = 248
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PaymentTextCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PaymentTextPaymentText: TMemoField
      FieldName = 'PaymentText'
      Origin = 'PaymentText'
      BlobType = ftMemo
    end
    object cds_PaymentTextCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PaymentTextModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PaymentTextDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PaymentTextCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ds_Currency: TDataSource
    DataSet = cds_Currency
    OnDataChange = ds_CurrencyDataChange
    Left = 456
    Top = 304
  end
  object ds_ExchangeRate: TDataSource
    DataSet = cds_ExchangeRate
    Left = 560
    Top = 304
  end
  object cds_ExchangeRate: TFDQuery
    AfterInsert = cds_ExchangeRateAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * From DBO.ExchangeRate'
      'WHERE CurrencyNo = :CurrencyNo')
    Left = 560
    Top = 248
    ParamData = <
      item
        Name = 'CURRENCYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ExchangeRateCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRateNo: TIntegerField
      FieldName = 'ExchangeRateNo'
      Origin = 'ExchangeRateNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ExchangeRateExchangeRate: TFloatField
      FieldName = 'ExchangeRate'
      Origin = 'ExchangeRate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
      Origin = 'ValidFrom'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ExchangeRateDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsCarrier: TFDQuery
    AfterInsert = cdsCarrierAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'From dbo.Carrier'
      'Order By CarrierName')
    Left = 816
    Top = 448
    object cdsCarrierCarrierNo: TIntegerField
      FieldName = 'CarrierNo'
      Origin = 'CarrierNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCarrierCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object cdsCarrierSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCarrierDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsCarrier: TDataSource
    DataSet = cdsCarrier
    Left = 816
    Top = 496
  end
  object dsBookingType: TDataSource
    DataSet = cdsBookingType
    Left = 896
    Top = 496
  end
  object cdsBookingType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from BookingType')
    Left = 896
    Top = 448
    object cdsBookingTypeBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingTypeBookingType: TStringField
      FieldName = 'BookingType'
      Origin = 'BookingType'
      FixedChar = True
      Size = 30
    end
    object cdsBookingTypeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsBookingTypeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsBookingTypeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsBookingTypeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object sq_PkgType_InvoiceByCSD: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength)'
      ''
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo')
    Left = 1008
    Top = 256
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_DelPkgType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1')
    Left = 1008
    Top = 312
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_PkgType_InvoiceByLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgType_Invoice'
      'WHERE LoadNo = :LoadNo'
      'AND InternalInvoiceNo = -1'
      ''
      'Insert into dbo.PkgType_Invoice'
      '(PackageTypeNo,'
      'ProductLengthNo,'
      'InternalInvoiceNo,'
      'LoadNo,'
      'LoadDetailNo,'
      'NoOfPieces,'
      'm3Actual,'
      'm3Nominal,'
      'MFBMNominal,'
      'SQMofActualWidth,'
      'SQMofCoveringWidth,'
      'LinealMeterActualLength,'
      'm3ActualSizeNomLength,'
      'm3NomSizeActualLength,'
      'CreatedUser,'
      'ModifiedUser,'
      'DateCreated,'
      'LinealMeterNominalLength)'
      ''
      'SELECT DISTINCT'
      'LD.PackageTypeNo,'
      'PTD.ProductLengthNo,'
      '-1,'
      'LD.LoadNo,'
      'LD.LoadDetailNo,'
      'PTD.NoOfPieces ,'
      ''
      ''
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN 0 > 0.05'
      
        'THEN PL.ActualLengthMM ELSE PL.ActualLengthMM END) / (1000 * 100' +
        '0 * 1000)'
      ' As decimal(10,3)),3) AS M3Actual,'
      ''
      '-- M3NOMINAL *****************************************'
      'CASE '
      '-- Random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00))'
      ' As decimal(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      '--Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN '
      'ROUND(CAST(('
      'PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      'END'
      'AS M3NOMINAL,'
      ''
      
        'ROUND(CAST((       PTD.MFBMNominal )   As decimal(10,3)),3) AS M' +
        'FBMNominal,'
      
        'ROUND(CAST((       PTD.SQMofActualWidth )   As decimal(10,3)),3)' +
        ' AS SQMofActualWidth,'
      'PTD.SQMofCoveringWidth,'
      
        'ROUND(CAST((       PTD.LinealMeterActualLength )   As decimal(10' +
        ',3)),3) AS LinealMeterActualLength,'
      ''
      
        '-- m3ActualSizeNomLength ***************************************' +
        '******'
      'CASE'
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000 * 1000 * 10' +
        '00)) As decimal(10,3)),3) '
      ''
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      ''
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces * PG.ActualThicknessMM * PG.ActualWidthMM *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000 * 1' +
        '000 * 1000)'
      ' As decimal(10,3)),3) '
      'END AS m3ActualSizeNomLength,'
      ''
      
        '-- m3NomSizeActualLength ***************************************' +
        '******'
      'ROUND(CAST('
      '(PTD.NoOfPieces * OL.NominalThicknessMM * OL.NominalWidthMM *'
      'PL.ActualLengthMM) / (1000 * 1000 * 1000)'
      ' As decimal(10,3)),3) AS m3NomSizeActualLength,'
      ''
      'PTD.CreatedUser,'
      'PTD.ModifiedUser,'
      'PTD.DateCreated,'
      ''
      
        '-- NM1 *********************************************************' +
        '****'
      'CASE '
      '-- random length'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 0 THEN'
      'ROUND(CAST(('
      'PTD.NoOfPieces  *'
      '(Select NominalLengthMM FROM dbo.ProductLengthGroup sPLG'
      
        'Inner Join dbo.ProductLength sPL3 ON sPL3.ProductLengthNo = sPLG' +
        '.ProductLengthNo'
      #9#9#9#9#9'AND sPL3.ActualLengthMM = PL.ActualLengthMM'
      'WHERE '
      
        'sPLG.GroupNo = PL_CSD.ProductLengthGroupNo ) / (1000)) As decima' +
        'l(10,3)),3) '
      ''
      '-- Random length, orderraden till'#229'ter alla l'#228'ngder'
      'WHEN PL_CSD.ProductLengthGroupNo > 0 AND OL.OverrideRL = 1 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3)'
      ''
      '-- Fixed length'
      'WHEN PL_CSD.ProductLengthGroupNo = 0 THEN'
      'ROUND(CAST((PTD.NoOfPieces  *'
      'CASE WHEN OL.NominalLengthMM > 0.05'
      
        'THEN OL.NominalLengthMM ELSE PL.NominalLengthMM END) / (1000) As' +
        ' decimal(10,3)),3) '
      ''
      'END AS NM1'
      ''
      ''
      ''
      'FROM dbo.Loads LO'
      'INNER JOIN dbo.LoadShippingPlan LSP'#9#9'ON'#9'LSP.LoadNo = LO.LoadNo'
      'INNER JOIN dbo.LoadDetail LD'#9#9#9'ON'#9'LD.LoadNo = LSP.LoadNo'
      #9#9#9#9#9#9'AND '#9'LD.ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Inner Join dbo.PackageTypeDetail'#9'PTD '#9'ON PTD.PackageTypeNo = LD.' +
        'PackageTypeNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = LD.DefSspNo'
      ''
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD2 ON CSD2.CustShip' +
        'PlanDetailObjectNo = ssp.CustShipPlanDetailObjectNo'
      
        'INNER JOIN dbo.OrderLine OL ON OL.OrderLineNo = CSD2.OrderLineNo' +
        ' AND OL.OrderNo = CSD2.OrderNo'
      ''
      
        'Inner JOIN dbo.ProductLength PL_CSD ON PL_CSD.ProductLengthNo = ' +
        'CSD2.ProductLengthNo'
      ''
      ''
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      
        'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = OL.Product' +
        'GroupNo'
      ''
      'WHERE'
      'LO.LoadNo = :LoadNo')
    Left = 1008
    Top = 360
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetPackagetypeTotalPcs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pt.TotalNoOfPieces, pn.PackageTypeNo, pt.ProductNo,'
      '(Select Max(pl.ActualLengthMM) from dbo.PackageTypeDetail PTD'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE'
      'PTD.PackageTypeNo = PT.PackageTypeNo) AS ALMM'
      ''
      'From dbo.PackageNumber pn'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      ''
      'WHERE pn.PackageNo = :PackageNo'
      'and pn.SupplierCode = :SupplierCode ')
    Left = 896
    Top = 616
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPackagetypeTotalPcsTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_GetPackagetypeTotalPcsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetPackagetypeTotalPcsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sq_GetPackagetypeTotalPcsALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
  end
  object sq_InsTempPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.SortingOrderMarkedPkgs(UserID, PackageNo, Suppli' +
        'erCode)'
      'Select :UserID, :PackageNo, :SupplierCode')
    Left = 664
    Top = 328
    ParamData = <
      item
        Name = 'USERID'
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
      end>
  end
  object sp_NewCSDLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.Vis_newLoad_cds'
    Left = 664
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@LoadID'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = '@FS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sq_DelTempPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrderMarkedPkgs'
      'Where UserID = :UserID')
    Left = 664
    Top = 280
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsLoad_Imp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Insert into dbo.Load_Imp(TempLoadNo, DateCreated, CreatedUser,'
      'LoadNo, LONo, AntalPaket)'
      'Select :TempLoadNo, :DateCreated, :CreatedUser,'
      ':LoadNo, :LONo, :AntalPaket')
    Left = 760
    Top = 280
    ParamData = <
      item
        Name = 'TEMPLOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANTALPAKET'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Load_Imp: TFDQuery
    AfterInsert = cds_Load_ImpAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Load_Imp'
      'WHERE CreatedUser = :UserID')
    Left = 760
    Top = 328
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Load_ImpTempLoadNo: TIntegerField
      FieldName = 'TempLoadNo'
      Origin = 'TempLoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Load_ImpLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
    end
    object cds_Load_ImpLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_Load_ImpAntalPaket: TIntegerField
      FieldName = 'AntalPaket'
      Origin = 'AntalPaket'
    end
  end
  object ds_Load_Imp: TDataSource
    DataSet = cds_Load_Imp
    Left = 760
    Top = 376
  end
  object sq_GetProductNoByProductCode: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select p.ProductNo'
      'From dbo.Product p'
      'WHERE p.ProductCode = :ProductCode')
    Left = 896
    Top = 664
    ParamData = <
      item
        Name = 'PRODUCTCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetProductNoByProductCodeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_SetMallAsStd: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Update dbo.userprops'
      'Set LOObjectType = 0'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      ''
      ''
      'Update dbo.userprops'
      'Set LOObjectType = 1'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND Form = :Form')
    Left = 864
    Top = 224
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object sp_PopLengthSpecII: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vida_PopLengthSpecII'
    Left = 48
    Top = 736
  end
  object sp_DelLoad_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_DelLoad_Res'
    Left = 40
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ResUserName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object sp_Load_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Load_Res'
    Left = 40
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Asking_UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = '@ResUserName'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 50
      end>
  end
  object cds_LoadWeigth: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select LDW.LoadNo, LDW.Reference, LDW.LoadWeightKG'
      #9'FROM dbo.LoadWeight LDW '
      #9'WHERE LDW.LoadNo = :LoadNo')
    Left = 408
    Top = 720
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LoadWeigthLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadWeigthReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 80
    end
    object cds_LoadWeigthLoadWeightKG: TFloatField
      DisplayLabel = 'Vikt, kg'
      FieldName = 'LoadWeightKG'
      Origin = 'LoadWeightKG'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GenerateLoadWeight: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Insert into dbo.LoadWeight'
      ''
      'Select distinct L.LoadNo, Ship_ADR.AddressName, 0'
      'FROM dbo.Loads'#9'L'
      
        'Inner Join dbo.LoadShippingPlan              LS   ON    LS.LoadN' +
        'o          = L.LoadNo'
      
        'Inner Join dbo.LoadDetail                    LD   ON    LD.LoadN' +
        'o          = LS.LoadNo'
      
        'LEFT OUTER JOIN dbo.SupplierShippingPlan          SP   '#9'ON    SP' +
        '.SupplierShipPlanObjectNo  = LD.DefsspNo'
      
        'inner join dbo.CustomerShippingPlanDetails CSD on CSD.CustShipPl' +
        'anDetailObjectNo = SP.CustShipPlanDetailObjectNo'
      ''
      'LEFT OUTER JOIN dbo.ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address Ship_ADR ON Ship_ADR.AddressNo = ST.Addre' +
        'ssNo'
      'ON ST.ShippingPlanNo'#9'='#9'CSD.ShippingPlanNo '
      'AND ST.Reference'#9'='#9'CSD.Reference '#9#9
      #9
      'WHERE L.LoadNo = :LoadNo'
      ''
      'and Not exists (Select LW.LoadNo FROM dbo.LoadWeight LW'
      'WHERE '
      'LW.LoadNo = L.LoadNo'
      'and LW.Reference = Ship_ADR.AddressName)')
    Left = 584
    Top = 720
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_LoadWeigth: TDataSource
    DataSet = cds_LoadWeigth
    Left = 408
    Top = 768
  end
  object mtMarkedProd_OLD: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'Tab'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NT'
        DataType = ftFloat
      end
      item
        Name = 'NB'
        DataType = ftFloat
      end
      item
        Name = 'PRODUKTDESC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LengthDesc'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NL'
        DataType = ftFloat
      end
      item
        Name = 'RowNr'
        DataType = ftInteger
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AW'
        DataType = ftFloat
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'NIT'
        DataType = ftFloat
      end
      item
        Name = 'NIW'
        DataType = ftFloat
      end>
    IndexName = 'mtMarkedProdIndex1'
    IndexDefs = <
      item
        Name = 'mtMarkedProdIndex1'
        Fields = 'RowNr'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 864
    Top = 760
    object mtMarkedProd_OLDProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtMarkedProd_OLDProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtMarkedProd_OLDTab: TIntegerField
      FieldName = 'Tab'
    end
    object mtMarkedProd_OLDProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtMarkedProd_OLDNT: TFloatField
      FieldName = 'NT'
    end
    object mtMarkedProd_OLDNB: TFloatField
      FieldName = 'NB'
    end
    object mtMarkedProd_OLDPRODUKTDESC: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKTDESC'
      Size = 100
    end
    object mtMarkedProd_OLDLengthDesc: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthDesc'
      Size = 100
    end
    object mtMarkedProd_OLDNL: TFloatField
      FieldName = 'NL'
    end
    object mtMarkedProd_OLDRowNr: TIntegerField
      FieldName = 'RowNr'
    end
    object mtMarkedProd_OLDAT: TFloatField
      FieldName = 'AT'
    end
    object mtMarkedProd_OLDAW: TFloatField
      FieldName = 'AW'
    end
    object mtMarkedProd_OLDSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtMarkedProd_OLDNIT: TFloatField
      FieldName = 'NIT'
    end
    object mtMarkedProd_OLDNIW: TFloatField
      FieldName = 'NIW'
    end
  end
  object cds_PackageSize: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1000 [PackageSizeNo]'
      '      ,[PackageSizeName]'
      '      ,[LanguageCode]'
      '      ,[DateCreated]'
      '      ,[CreatedUser]'
      '      ,[Act]'
      '  FROM [vis_vida].[dbo].[PackageSize]'
      '  where [LanguageCode] = 1')
    Left = 232
    Top = 448
    object cds_PackageSizePackageSizeNo: TIntegerField
      FieldName = 'PackageSizeNo'
      Origin = 'PackageSizeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PackageSizePackageSizeName: TStringField
      FieldName = 'PackageSizeName'
      Origin = 'PackageSizeName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PackageSizeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PackageSizeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PackageSizeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PackageSizeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_PackageSize: TDataSource
    DataSet = cds_PackageSize
    Left = 232
    Top = 496
  end
  object cds_Cert: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.CertificationWood')
    Left = 232
    Top = 728
    object cds_CertCertNo: TIntegerField
      FieldName = 'CertNo'
      Required = True
    end
    object cds_CertCertName: TStringField
      FieldName = 'CertName'
      Origin = 'CertName'
      Size = 50
    end
    object cds_CertCertShortName: TStringField
      FieldName = 'CertShortName'
      Origin = 'CertShortName'
      Size = 5
    end
  end
  object ds_Cert: TDataSource
    DataSet = cds_Cert
    Left = 232
    Top = 776
  end
  object sp_vis_Del_OLD_Load_Res: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Del_OLD_Load_Res'
    Left = 160
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end>
  end
  object FDStoredProc1: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'Vida_PkgLog_IIII'
    Left = 360
    Top = 360
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = ''
      end>
  end
  object sp_SetInfo2Text: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SetInfo2Text'
    Left = 1128
    Top = 560
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
        Name = '@Info2'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object sp_LagerPos: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Position'
    Left = 1136
    Top = 640
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
      end>
    object sp_LagerPosPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object sp_LagerPosPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object sp_LagerPosPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object sp_LagerPosCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sp_LagerPosDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sp_LagerPosPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
    end
  end
  object sp_PksByLIPNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgsByLIPNo'
    Left = 864
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_PksByLIPNo: TDataSource
    DataSet = sp_PksByLIPNo
    Left = 864
    Top = 328
  end
  object sq_GridSets2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 664
    Top = 560
    ParamData = <
      item
        Name = 'ViewName'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GridSets2ViewName: TStringField
      FieldName = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object sq_GridSets2UserID: TIntegerField
      FieldName = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_GridSets2Sets: TBlobField
      FieldName = 'Sets'
      ProviderFlags = [pfInUpdate]
    end
    object sq_GridSets2Name: TStringField
      FieldName = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sq_GridSets2Form: TStringField
      FieldName = 'Form'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sp_Lang: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_Lang'
    Left = 984
    Top = 760
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UseriD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@LanguageNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDQ_StyleSettings: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.StyleSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 43
    Top = 75
    ParamData = <
      item
        Name = 'VIEWNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_StyleSettingsViewName: TStringField
      FieldName = 'ViewName'
      Origin = 'ViewName'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQ_StyleSettingsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_StyleSettingsSets: TBlobField
      FieldName = 'Sets'
      Origin = 'Sets'
    end
  end
  object sp_ParsePkgID: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_ParsePkgID'
    Left = 1128
    Top = 744
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@Paketnr'
        DataType = ftString
        ParamType = ptInput
        Size = 21
      end>
  end
  object sp_SetpkgPosition: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = '[dbo].[vis_SetPkgPosition]'
    Left = 1128
    Top = 808
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
        Name = '@PositionID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsMarkedCodes: TDataSource
    DataSet = mtMarkedCodes
    Left = 914
    Top = 168
  end
  object mtMarkedCodes: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PkgCodePPNo'
        DataType = ftInteger
      end
      item
        Name = 'Produktionsinstruktion'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'sspNo'
        DataType = ftInteger
      end
      item
        Name = 'NoOfUnits'
        DataType = ftFloat
      end
      item
        Name = 'VolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'MainProduct'
        DataType = ftInteger
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'KortaKoden'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PPP'
        DataType = ftInteger
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'ProdInstruNo'
        DataType = ftInteger
      end
      item
        Name = 'NT'
        DataType = ftFloat
      end
      item
        Name = 'NB'
        DataType = ftFloat
      end
      item
        Name = 'Reference'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NL'
        DataType = ftFloat
      end
      item
        Name = 'LengthDesc'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        DataType = ftFloat
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'PackageWidth'
        DataType = ftInteger
      end
      item
        Name = 'PackageHeight'
        DataType = ftInteger
      end
      item
        Name = 'Produkt'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NM3'
        DataType = ftFloat
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'StartWeek'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'EndWeek'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    AfterInsert = mtMarkedCodesAfterInsert
    Left = 914
    Top = 120
    object mtMarkedCodesPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
    end
    object mtMarkedCodesProduktionsinstruktion: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'Produktionsinstruktion'
      Size = 255
    end
    object mtMarkedCodesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtMarkedCodessspNo: TIntegerField
      FieldName = 'sspNo'
    end
    object mtMarkedCodesNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object mtMarkedCodesVolUnitNo: TIntegerField
      FieldName = 'VolUnitNo'
    end
    object mtMarkedCodesProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtMarkedCodesMainProduct: TIntegerField
      FieldName = 'MainProduct'
    end
    object mtMarkedCodesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtMarkedCodesProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtMarkedCodesProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtMarkedCodesKortaKoden: TStringField
      DisplayLabel = 'S'#246'knamn'
      FieldName = 'KortaKoden'
      Size = 40
    end
    object mtMarkedCodesPPP: TIntegerField
      FieldName = 'PPP'
    end
    object mtMarkedCodesMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtMarkedCodesProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
    end
    object mtMarkedCodesNT: TFloatField
      FieldName = 'NT'
    end
    object mtMarkedCodesNB: TFloatField
      FieldName = 'NB'
    end
    object mtMarkedCodesReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
    object mtMarkedCodesNL: TFloatField
      FieldName = 'NL'
    end
    object mtMarkedCodesLengthDesc: TStringField
      FieldName = 'LengthDesc'
      Size = 255
    end
    object mtMarkedCodesALMM: TFloatField
      FieldKind = fkLookup
      FieldName = 'ALMM'
      LookupKeyFields = 'ProductLengthNo'
      LookupResultField = 'ActualLengthMM'
      KeyFields = 'ProductLengthNo'
      Lookup = True
    end
    object mtMarkedCodesAT: TFloatField
      FieldName = 'AT'
    end
    object mtMarkedCodesAB: TFloatField
      FieldName = 'AB'
    end
    object mtMarkedCodesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtMarkedCodesPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
    end
    object mtMarkedCodesPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
    end
    object mtMarkedCodesProdukt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object mtMarkedCodesNM3: TFloatField
      FieldName = 'NM3'
    end
    object mtMarkedCodesAM3: TFloatField
      FieldName = 'AM3'
    end
    object mtMarkedCodesStartWeek: TStringField
      FieldName = 'StartWeek'
      Size = 4
    end
    object mtMarkedCodesEndWeek: TStringField
      FieldName = 'EndWeek'
      Size = 4
    end
    object mtMarkedCodesLO: TIntegerField
      FieldName = 'LO'
    end
    object mtMarkedCodesKund: TStringField
      FieldName = 'Kund'
      Size = 80
    end
    object mtMarkedCodesYearWeek: TStringField
      FieldName = 'YearWeek'
      Size = 4
    end
    object mtMarkedCodesLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtMarkedCodesOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtMarkedCodesUrsVecka: TStringField
      FieldName = 'UrsVecka'
      Size = 9
    end
    object mtMarkedCodesVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtMarkedCodesKeyField: TIntegerField
      FieldName = 'KeyField'
    end
    object mtMarkedCodesVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtMarkedCodesLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Size = 15
    end
    object mtMarkedCodesOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object mtMarkedCodesPriceNM3: TFloatField
      FieldName = 'PriceNM3'
    end
  end
  object sq_GetOrderPrice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pl.ActualLengthMM AS ALMM, ol.Price from dbo.OrderLine ol'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = OL.Produ' +
        'ctLengthNo'
      'WHERE ol.ProductNo = :ProductNo'
      'and OL.OrderNo = :OrderNo')
    Left = 736
    Top = 744
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetOrderPriceALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object sq_GetOrderPricePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
  end
  object cds_GetOrderPrice: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select ol.Price from dbo.OrderLine ol'
      'WHERE ol.ProductNo = :ProductNo'
      'and OL.OrderNo = :OrderNo')
    Left = 736
    Top = 800
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetOrderPricePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
  end
  object FD_LenGrpName: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select Distinct GroupName from dbo.ProductLength pl'
      
        'inner join productlengthgroupname plg on plg.groupNO = pl.produc' +
        'tlengthgroupno'
      'WHERE plg.SequenceNo = 1')
    Left = 728
    Top = 544
    object FD_LenGrpNameGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object sq_ClearRawTemp: TFDQuery
    ConnectionName = 'VIS_VIDA'
    SQL.Strings = (
      'Delete [dbo].[RawTemp]'
      'WHERE UserID = :UserID')
    Left = 992
    Top = 568
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsRawTemp: TFDQuery
    ConnectionName = 'VIS_VIDA'
    SQL.Strings = (
      'Insert into [dbo].[RawTemp](UserID, BookingNo, ID)'
      'VALUES(:UserID, :BookingNo, :ID)')
    Left = 992
    Top = 624
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_AvregPkgHist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'INSERT INTO [dbo].[AvRegHist]'
      '           ([PackageNo]'
      '           ,[Prefix]'
      '           ,[SortingOrderNo]'
      '           ,[DateCreated]'
      '           ,[AvRegStatus]'
      ',[ScannedString])'
      '     VALUES'
      '           (:PackageNo'
      '           ,:Prefix'
      '           ,:SortingOrderNo'
      '           ,:DateCreated'
      '           ,:AvRegStatus'
      ',:ScannedString)'
      '')
    Left = 624
    Top = 784
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'AVREGSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SCANNEDSTRING'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cds_AvregHist: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select avr.*,'
      'Case '
      'WHEN avr.AvRegStatus = 0 THEN '#39'ABANDON'#39
      'WHEN avr.AvRegStatus = 1 THEN '#39'REJECT'#39
      'WHEN avr.AvRegStatus = 2 THEN '#39'ACCEPT'#39
      'WHEN avr.AvRegStatus = 3 THEN '#39'Reserved'#39
      'WHEN avr.AvRegStatus = 4 THEN '#39'Duplicate'#39
      'WHEN avr.AvRegStatus = 5 THEN '#39'AlreadyAvReg'#39
      'WHEN avr.AvRegStatus = 6 THEN '#39'UserCancel'#39
      'END AS AvregStatusName'
      ' from dbo.[AvRegHist] avr'
      'WHERE ((SortingOrderNo = :ID) OR  (0 = :ID))')
    Left = 624
    Top = 840
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AvregHistPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
    end
    object cds_AvregHistPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Size = 3
    end
    object cds_AvregHistSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
    end
    object cds_AvregHistDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AvregHistAvRegStatus: TIntegerField
      FieldName = 'AvRegStatus'
      Origin = 'AvRegStatus'
    end
    object cds_AvregHistScannedString: TStringField
      FieldName = 'ScannedString'
      Origin = 'ScannedString'
      Size = 100
    end
    object cds_AvregHistAvregStatusName: TStringField
      FieldName = 'AvregStatusName'
      Origin = 'AvregStatusName'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
  end
  object sq_DeleteAvregHistory: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'DELETE dbo.[AvRegHist]')
    Left = 624
    Top = 912
    object IntegerField16: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
    end
    object StringField15: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Size = 3
    end
    object IntegerField17: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object IntegerField18: TIntegerField
      FieldName = 'AvRegStatus'
      Origin = 'AvRegStatus'
    end
    object StringField16: TStringField
      FieldName = 'ScannedString'
      Origin = 'ScannedString'
      Size = 100
    end
  end
  object sq_GetVerkNoOfSortingOrderServer: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT VerkNo FROM dbo.cxSchedulerTable'
      'where ID = :ID ')
    Left = 408
    Top = 824
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetVerkNoOfSortingOrderServerVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
  end
  object ds_ProdCatg: TDataSource
    DataSet = cds_ProdCatg
    Left = 230
    Top = 904
  end
  object cds_ProdCatg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pc.ProductCategoryNo,'
      'pc.ProductCategoryName,'
      ''
      
        'IsNull(pc.ImpCode,'#39#39') + '#39' - '#39' + IsNull(pc.ProductCategoryName,'#39#39 +
        ')'
      'AS ImpCodeName'
      ''
      'FROM dbo.ProductCategory pc'
      'WHERE pc.LanguageCode = 1'
      'and pc.Act = 1'
      'Order By pc.ImpCode, pc.ProductCategoryName')
    Left = 232
    Top = 856
    object cds_ProdCatgProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgImpCodeName: TStringField
      FieldName = 'ImpCodeName'
      Origin = 'ImpCodeName'
      ReadOnly = True
      Required = True
      Size = 28
    end
    object cds_ProdCatgProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Required = True
    end
  end
  object cds_PkgLayouts: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.PackageLogLayout')
    Left = 856
    Top = 848
    object cds_PkgLayoutsPackageLogLayoutNo: TIntegerField
      FieldName = 'PackageLogLayoutNo'
      Origin = 'PackageLogLayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgLayoutsPackageLogLayoutName: TStringField
      FieldName = 'PackageLogLayoutName'
      Origin = 'PackageLogLayoutName'
      FixedChar = True
    end
    object cds_PkgLayoutsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PkgLayoutsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PkgLayoutsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PkgLayoutsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PkgLayoutsPrintFileName: TStringField
      FieldName = 'PrintFileName'
      Origin = 'PrintFileName'
      Size = 12
    end
  end
  object ds_PkgLayouts: TDataSource
    DataSet = cds_PkgLayouts
    Left = 856
    Top = 896
  end
  object sp_UserPerm: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_UsPerm'
    Left = 39
    Top = 874
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_Package_Size: TDataSource
    DataSet = cds_Package_Size
    Left = 1000
    Top = 952
  end
  object cds_Package_Size: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.PackageSize'
      'WHERE LanguageCode = :LanguageCode'
      'AND Act = 1')
    Left = 1000
    Top = 896
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Package_SizePackageSizeNo: TIntegerField
      FieldName = 'PackageSizeNo'
      Origin = 'PackageSizeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Package_SizePackageSizeName: TStringField
      FieldName = 'PackageSizeName'
      Origin = 'PackageSizeName'
      Size = 50
    end
  end
  object sq_dbProps_v2: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.dbProps_v2')
    Left = 584
    Top = 400
    object sq_dbProps_v2HostName: TStringField
      FieldName = 'HostName'
      Origin = 'HostName'
      Size = 50
    end
    object sq_dbProps_v2Databas: TStringField
      FieldName = 'Databas'
      Origin = 'Databas'
      Size = 50
    end
    object sq_dbProps_v2UserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Size = 50
    end
    object sq_dbProps_v2Password: TStringField
      FieldName = 'Password'
      Origin = 'Password'
      Size = 50
    end
    object sq_dbProps_v2CRPath: TStringField
      FieldName = 'CRPath'
      Origin = 'CRPath'
      Size = 255
    end
    object sq_dbProps_v2intsec: TIntegerField
      FieldName = 'intsec'
      Origin = 'intsec'
    end
    object sq_dbProps_v2LangPath: TStringField
      FieldName = 'LangPath'
      Origin = 'LangPath'
      Size = 255
    end
    object sq_dbProps_v2LangPathUtv: TStringField
      FieldName = 'LangPathUtv'
      Origin = 'LangPathUtv'
      Size = 255
    end
  end
  object sq_useMapi: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT useMAPI FROM dbo.Users WHERE UserID = :UserID')
    Left = 1120
    Top = 904
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 258
      end>
    object sq_useMapiuseMAPI: TIntegerField
      FieldName = 'useMAPI'
      Origin = 'useMAPI'
    end
  end
  object sqBarCode: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select bc.*,'
      'CASE WHEN bc.BarCodeID is null then'
      'bc.Barcode'
      'ELSE'
      'bc.BarCodeID+'#39' - '#39'+bc.BarCode'
      'END AS BarcodeCodeName'
      'FROM dbo.BarCode bc')
    Left = 840
    Top = 968
    object sqBarCodeBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqBarCodeBarCode: TStringField
      DisplayLabel = 'BARCODE'
      FieldName = 'BarCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object sqBarCodeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeBarCodeID: TStringField
      FieldName = 'BarCodeID'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqBarCodeAct: TIntegerField
      DisplayLabel = 'AKTIV'
      FieldName = 'Act'
      ProviderFlags = [pfInUpdate]
    end
    object sqBarCodeBarcodeCodeName: TStringField
      FieldName = 'BarcodeCodeName'
      ProviderFlags = []
      FixedChar = True
      Size = 25
    end
  end
  object mtMarkedProd: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtMarkedProdIndex1'
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 496
    Top = 560
    object mtMarkedProdProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtMarkedProdProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtMarkedProdTab: TIntegerField
      FieldName = 'Tab'
    end
    object mtMarkedProdProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtMarkedProdNT: TFloatField
      FieldName = 'NT'
    end
    object mtMarkedProdNB: TFloatField
      FieldName = 'NB'
    end
    object mtMarkedProdPRODUKTDESC: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKTDESC'
      Size = 100
    end
    object mtMarkedProdLengthDesc: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthDesc'
      Size = 100
    end
    object mtMarkedProdNL: TFloatField
      FieldName = 'NL'
    end
    object mtMarkedProdRowNr: TIntegerField
      FieldName = 'RowNr'
    end
    object mtMarkedProdAT: TFloatField
      FieldName = 'AT'
    end
    object mtMarkedProdAW: TFloatField
      FieldName = 'AW'
    end
    object mtMarkedProdSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtMarkedProdNIT: TFloatField
      FieldName = 'NIT'
    end
    object mtMarkedProdNIW: TFloatField
      FieldName = 'NIW'
    end
    object mtMarkedProdSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
    end
    object mtMarkedProdALMM: TFloatField
      FieldName = 'ALMM'
    end
    object mtMarkedProdVaruSlagNo: TIntegerField
      FieldName = 'VaruSlagNo'
    end
  end
  object cds_ShiftLag: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.ShiftTeam')
    Left = 1120
    Top = 960
    object cds_ShiftLagShiftTeamNo: TIntegerField
      FieldName = 'ShiftTeamNo'
      Origin = 'ShiftTeamNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ShiftLagShiftTeamName: TStringField
      FieldName = 'ShiftTeamName'
      Origin = 'ShiftTeamName'
      Size = 35
    end
    object cds_ShiftLagDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_ShiftLagModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ShiftLagClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
  end
  object sp_GetFtpTarget: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_FtpTargetExists'
    Left = 456
    Top = 992
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CityNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_FtpLoadLogg: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.visFtpLoadLogg'
    Left = 344
    Top = 992
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@StartDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object sp_getFtpLoadLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.getFtpLoadLog'
    Left = 568
    Top = 992
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Info'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 200
      end>
  end
  object sp_visInsertFtpLoadLog: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.visInsertFtpLoadLog'
    Left = 680
    Top = 992
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GetOrderData: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_GetOrderData'
    Left = 744
    Top = 872
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
