object fCert: TfCert
  Left = 0
  Top = 0
  Caption = 'Certifiering'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 235
    Width = 635
    Height = 65
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 232
    ExplicitWidth = 233
    object cxButton1: TcxButton
      Left = 224
      Top = 14
      Width = 89
      Height = 41
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 319
      Top = 14
      Width = 89
      Height = 41
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 16
    ExplicitTop = 8
    ExplicitWidth = 617
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 635
    Height = 186
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 34
    ExplicitTop = 41
    ExplicitWidth = 199
    ExplicitHeight = 601
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dmsSystem.ds_Cert
      DataController.KeyFieldNames = 'CertNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1CertNo: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'CertNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1CertName: TcxGridDBColumn
        DataBinding.FieldName = 'Certifiering'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cxGrid1DBTableView1CertShortName: TcxGridDBColumn
        Caption = 'Kortnamn'
        DataBinding.FieldName = 'CertShortName'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
