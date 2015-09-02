object PkgNrExceptionList: TPkgNrExceptionList
  Left = 0
  Top = 0
  Caption = 'Exception PkgNr List'
  ClientHeight = 249
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ExceptionPanel: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 249
    Align = alClient
    Caption = 'ExceptionPanel'
    TabOrder = 0
    ExplicitWidth = 234
    ExplicitHeight = 227
    object lbExceptionPkgNr: TListBox
      Left = 1
      Top = 48
      Width = 254
      Height = 200
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 1
      Top = 1
      Width = 254
      Height = 49
      Align = alTop
      Action = acClose
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 232
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 168
    object acClose: TAction
      Caption = 'Close'
      OnExecute = acCloseExecute
    end
  end
end
