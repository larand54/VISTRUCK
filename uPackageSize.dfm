object fPackageSize: TfPackageSize
  Left = 0
  Top = 0
  Caption = 'Paketstorlek'
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
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 635
    Height = 60
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 224
      Top = 6
      Width = 89
      Height = 41
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 319
      Top = 6
      Width = 89
      Height = 41
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 199
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 34
    ExplicitWidth = 199
    ExplicitHeight = 601
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dmsSystem.ds_PackageSize
      DataController.KeyFieldNames = 'PackageSizeNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1PackageSizeNo: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'PackageSizeNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1PackageSizeName: TcxGridDBColumn
        Caption = 'Paketstorlek'
        DataBinding.FieldName = 'PackageSizeName'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cxGrid1DBTableView1LanguageCode: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageCode'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1Act: TcxGridDBColumn
        DataBinding.FieldName = 'Act'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
