object dmFilterSQL: TdmFilterSQL
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 213
  Width = 588
  object FDConnectionForTest: TFDConnection
    Params.Strings = (
      'Server=alvesql03'
      'Database=Vis_Vida'
      'OSAuthent=no'
      'MetaDefCatalog=vis_vida'
      'MetaDefSchema=dbo'
      'User_Name=lars'
      'Password=woods2011'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 8
  end
  object sqFilterData: TFDQuery
    Connection = FDConnectionForTest
    SQL.Strings = (
      
        'SELECT DISTINCT PN.PositionID, PG.ActualThicknessMM, PG.ActualWi' +
        'dthMM, '
      'PG.NominalThicknessMM, PG.NominalWidthMM'
      
        ',G.GradeName, G.GradeCode, S.SurfacingName, S.SurfacingCode, SP.' +
        'SpeciesName, SP.SpeciesCode, VG.VarugruppNamn, VG.VarugruppNo'
      
        ',IMP.ProductCategoryName AS PC, LS.LengthDesc, PN.REFERENCE, PN.' +
        'BL_NO AS Info1'
      ',PN.Info2 '
      'FROM dbo.PackageNumber PN'
      'JOIN dbo.PackageType PT ON PT.PackageTypeNo = PN.PackageTypeNo'
      'JOIN dbo.Product P ON P.ProductNo = PT.ProductNo'
      'JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = P.ProductGroupNo'
      'JOIN dbo.LengthSpec LS ON LS.LengthSpecNo = PT.LengthSpecNo'
      
        'JOIN dbo.Grade G ON G.GradeNo = P.GradeNo AND G.LanguageCode=:La' +
        'nguageCode'
      
        'JOIN dbo.Surfacing S ON S.SurfacingNo = PG.SurfacingNo AND S.Lan' +
        'guageCode=:LanguageCode'
      
        'JOIN dbo.Species SP ON SP.SpeciesNo = PG.SpeciesNo AND SP.Langua' +
        'geCode=:LanguageCode'
      
        'LEFT OUTER JOIN dbo.VaruGrupp VG ON VG.VarugruppNo = P.Varugrupp' +
        'No AND VG.LanguageCode=:LanguageCode'
      
        'JOIN dbo.ProductCategory IMP ON IMP.ProductCategoryNo = PG.Produ' +
        'ctCategoryNo AND IMP.LanguageCode=:LanguageCode'
      'WHERE PN.PositionID IN (145,146)')
    Left = 152
    Top = 8
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object mtFilterData: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
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
    Left = 48
    Top = 64
  end
  object dscFilteredData: TDataSource
    DataSet = mtFilterData
    Left = 48
    Top = 120
  end
end
