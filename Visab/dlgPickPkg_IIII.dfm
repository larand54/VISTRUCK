object frmPackagePicker_IIII: TfrmPackagePicker_IIII
  Left = 218
  Top = 210
  ActiveControl = grdPickPackage
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 571
  ClientWidth = 1358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 16
  object pnlButtons: TPanel
    Left = 0
    Top = 519
    Width = 1358
    Height = 52
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 567
      Top = 9
      Width = 82
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 663
      Top = 9
      Width = 82
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 1358
    Height = 519
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    object grdPickPackage: TcxGrid
      Left = 1
      Top = 52
      Width = 1355
      Height = 466
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object grdPickPackageDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dm_Vis_Vida.ds_PksByInventoryPlaceIIII
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '########'
            Kind = skCount
            FieldName = 'PackageNo'
            Column = grdPickPackageDBTableView1PackageNo
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grdPickPackageDBTableView1PackageNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageNo'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 99
        end
        object grdPickPackageDBTableView1SupplierCode: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierCode'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 70
        end
        object grdPickPackageDBTableView1ProductDisplayName: TcxGridDBColumn
          DataBinding.FieldName = 'ProductDisplayName'
          PropertiesClassName = 'TcxLabelProperties'
          SortIndex = 0
          SortOrder = soAscending
          Width = 256
        end
        object grdPickPackageDBTableView1LengthDescription: TcxGridDBColumn
          DataBinding.FieldName = 'LengthDescription'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 295
        end
        object grdPickPackageDBTableView1Status: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Aktivt'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Ej AR'
              Value = 2
            end
            item
              Description = 'Ej aktivt'
              Value = 3
            end
            item
              Description = 'Ej eget lager'
              Value = 4
            end>
          Width = 108
        end
        object grdPickPackageDBTableView1Lager: TcxGridDBColumn
          DataBinding.FieldName = 'Lager'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 183
        end
        object grdPickPackageDBTableView1IncludedInRun: TcxGridDBColumn
          DataBinding.FieldName = 'IncludedInRun'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 96
        end
        object grdPickPackageDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 51
        end
        object grdPickPackageDBTableView1LIPNo: TcxGridDBColumn
          DataBinding.FieldName = 'LIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 49
        end
        object grdPickPackageDBTableView1SupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 47
        end
        object grdPickPackageDBTableView1InInventory: TcxGridDBColumn
          Caption = 'Aktivt'
          DataBinding.FieldName = 'InInventory'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          Width = 48
        end
      end
      object grdPickPackageLevel1: TcxGridLevel
        GridView = grdPickPackageDBTableView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1355
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cbProductInRun: TcxDBCheckBox
        Left = 20
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'S'#246'k endast paket med matchande produkt i k'#246'rorder'
        DataBinding.DataField = 'ProductInRun'
        DataBinding.DataSource = ds_Settings
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = cbProductInRunPropertiesChange
        TabOrder = 0
        Visible = False
        Width = 355
      end
      object cbOwnInventory: TcxDBCheckBox
        Left = 389
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'S'#246'k endast paket i egna lager'
        DataBinding.DataField = 'OwnInventory'
        DataBinding.DataSource = ds_Settings
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 1
        Visible = False
        Width = 356
      end
    end
  end
  object ds_Settings: TDataSource
    DataSet = dm_Vis_Vida.FDm_Settings
    Left = 296
    Top = 48
  end
end
