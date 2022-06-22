object dtmConexao: TdtmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 273
  Width = 425
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=crud'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
end
