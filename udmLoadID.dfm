object dmLoadID: TdmLoadID
  Height = 136
  Width = 236
  PixelsPerInch = 96
  object qryPrelLoad: TFDQuery
    Connection = con1
    SQL.Strings = (
      
        'select * from dbo.loads where loadid like '#39'%21743%'#39' and SenderLo' +
        'adStatus='#39'2'#39)
    Left = 25
    Top = 16
  end
  object con1: TFDConnection
    Params.Strings = (
      'OSAuthent=No'
      'Server=visdevsql.vida.se'
      'User_Name=lars'
      'Password=woods2011'
      'Database=vis_vida'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 88
    Top = 16
  end
end
