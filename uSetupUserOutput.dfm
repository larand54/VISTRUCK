object fSetupUserOutput: TfSetupUserOutput
  Left = 0
  Top = 0
  Caption = 'Administrera uttag'
  ClientHeight = 665
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 624
    Width = 1046
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1046
    Height = 583
    Align = alClient
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 80
      Top = 56
      Caption = 'Anv'#228'ndare:'
    end
    object lcUser: TcxDBLookupComboBox
      Left = 156
      Top = 55
      DataBinding.DataField = 'UserName'
      DataBinding.DataSource = dmInventory.dsUserOutput
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      TabOrder = 1
      Width = 197
    end
    object Panel4: TPanel
      Left = 1
      Top = 157
      Width = 1044
      Height = 425
      Align = alBottom
      TabOrder = 2
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 1042
        Height = 72
        Align = alTop
        TabOrder = 0
      end
      object grdUsersOutputProdunits: TcxGrid
        Left = 1
        Top = 73
        Width = 1042
        Height = 351
        Align = alClient
        TabOrder = 1
        object grdUsersOutputProdunitsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmInventory.ds_UsersOutputProdunits
          DataController.KeyFieldNames = 'ProductionUnitNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdUsersOutputProdunitsDBTableView1Selected: TcxGridDBColumn
            DataBinding.FieldName = 'Selected'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnEditValueChanged = grdUsersOutputProdunitsDBTableView1SelectedPropertiesEditValueChanged
            Width = 53
          end
          object grdUsersOutputProdunitsDBTableView1ProductionUnitNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductionUnitNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 87
          end
          object grdUsersOutputProdunitsDBTableView1ClientNo: TcxGridDBColumn
            DataBinding.FieldName = 'ClientNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 90
          end
          object grdUsersOutputProdunitsDBTableView1LogicalInventoryPointNo: TcxGridDBColumn
            DataBinding.FieldName = 'LogicalInventoryPointNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 144
          end
          object grdUsersOutputProdunitsDBTableView1RegistrationPointNo: TcxGridDBColumn
            DataBinding.FieldName = 'RegistrationPointNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 43
          end
          object grdUsersOutputProdunitsDBTableView1PositionID: TcxGridDBColumn
            DataBinding.FieldName = 'PositionID'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 43
          end
          object grdUsersOutputProdunitsDBTableView1RegPointName: TcxGridDBColumn
            DataBinding.FieldName = 'RegPointName'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 124
          end
          object grdUsersOutputProdunitsDBTableView1PhysicalInventoryPointNo: TcxGridDBColumn
            DataBinding.FieldName = 'PhysicalInventoryPointNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 185
          end
          object grdUsersOutputProdunitsDBTableView1Position: TcxGridDBColumn
            DataBinding.FieldName = 'Position'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'PositionID'
            Properties.ListColumns = <
              item
                FieldName = 'Position'
              end>
            Width = 271
          end
        end
        object grdUsersOutputProdunitsLevel1: TcxGridLevel
          GridView = grdUsersOutputProdunitsDBTableView1
        end
      end
    end
  end
end
