object fPositionView: TfPositionView
  Left = 250
  Top = 76
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LAGERRAPPORT'
  ClientHeight = 633
  ClientWidth = 1259
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pmFormShortcuts
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcInventory: TcxPageControl
    Left = 0
    Top = 126
    Width = 1259
    Height = 507
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsProduktionProduktSummary
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 507
    ClientRectRight = 1259
    ClientRectTop = 0
    object tsProduktionProduktSummary: TcxTabSheet
      Caption = 'Produktion (produktsummering)'
      ImageIndex = 5
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdPosition: TcxGrid
        Left = 0
        Top = 0
        Width = 1259
        Height = 507
        Align = alClient
        TabOrder = 0
        object grdPositionDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditing = grdPositionDBTableView1Editing
          DataController.DataSource = dmFilterSQL.ds_PositionView
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              FieldName = 'AM3'
              Column = grdPositionDBTableView1AM3
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '########.##'
              Kind = skSum
              FieldName = 'AM3'
              Column = grdPositionDBTableView1AM3
            end
            item
              Format = '#######'
              Kind = skSum
              Column = grdPositionDBTableView1Paket
            end
            item
              Format = '########.##'
              Kind = skSum
              Column = grdPositionDBTableView1NM3
            end
            item
              Format = '########'
              Kind = skSum
              Column = grdPositionDBTableView1PCS
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = grdPositionDBTableView1LogicalInventoryName
                end
                item
                  Column = grdPositionDBTableView1AreaName
                end
                item
                  Column = grdPositionDBTableView1PositionName
                end
                item
                  Column = grdPositionDBTableView1Product
                end
                item
                  Column = grdPositionDBTableView1City
                end
                item
                  Column = grdPositionDBTableView1REFERENCE
                end>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AM3'
                  Column = grdPositionDBTableView1AM3
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          object grdPositionDBTableView1City: TcxGridDBColumn
            Caption = 'Lagerst'#228'lle'
            DataBinding.FieldName = 'City'
          end
          object grdPositionDBTableView1LogicalInventoryName: TcxGridDBColumn
            Caption = 'Lagergrupp'
            DataBinding.FieldName = 'LogicalInventoryName'
          end
          object grdPositionDBTableView1Paket: TcxGridDBColumn
            DataBinding.FieldName = 'Paket'
          end
          object grdPositionDBTableView1PCS: TcxGridDBColumn
            Caption = 'Styck'
            DataBinding.FieldName = 'PCS'
          end
          object grdPositionDBTableView1AM3: TcxGridDBColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '######.##'
            Properties.Precision = 15
            Properties.ReadOnly = False
          end
          object grdPositionDBTableView1NM3: TcxGridDBColumn
            DataBinding.FieldName = 'NM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '######.##'
            Properties.Precision = 15
            Properties.ReadOnly = False
          end
          object grdPositionDBTableView1AT: TcxGridDBColumn
            DataBinding.FieldName = 'AT'
          end
          object grdPositionDBTableView1AB: TcxGridDBColumn
            DataBinding.FieldName = 'AB'
          end
          object grdPositionDBTableView1NT: TcxGridDBColumn
            DataBinding.FieldName = 'NT'
          end
          object grdPositionDBTableView1NB: TcxGridDBColumn
            DataBinding.FieldName = 'NB'
          end
          object grdPositionDBTableView1AL: TcxGridDBColumn
            DataBinding.FieldName = 'AL'
          end
          object grdPositionDBTableView1dim: TcxGridDBColumn
            Caption = 'Dim'
            DataBinding.FieldName = 'dim'
          end
          object grdPositionDBTableView1TS: TcxGridDBColumn
            Caption = 'Tr'#228'slag'
            DataBinding.FieldName = 'TS'
          end
          object grdPositionDBTableView1PC: TcxGridDBColumn
            Caption = 'Impregnering'
            DataBinding.FieldName = 'PC'
          end
          object grdPositionDBTableView1KV: TcxGridDBColumn
            Caption = 'Kvalitet'
            DataBinding.FieldName = 'KV'
          end
          object grdPositionDBTableView1UT: TcxGridDBColumn
            Caption = 'Utf'#246'rande'
            DataBinding.FieldName = 'UT'
          end
          object grdPositionDBTableView1VarugruppNamn: TcxGridDBColumn
            Caption = 'Varugrupp'
            DataBinding.FieldName = 'VarugruppNamn'
          end
          object grdPositionDBTableView1REFERENCE: TcxGridDBColumn
            Caption = 'Referens'
            DataBinding.FieldName = 'REFERENCE'
          end
          object grdPositionDBTableView1BL_NO: TcxGridDBColumn
            Caption = 'Info1'
            DataBinding.FieldName = 'BL_NO'
          end
          object grdPositionDBTableView1Info2: TcxGridDBColumn
            DataBinding.FieldName = 'Info2'
          end
          object grdPositionDBTableView1AreaName: TcxGridDBColumn
            Caption = 'LagerArea'
            DataBinding.FieldName = 'AreaName'
          end
          object grdPositionDBTableView1PositionName: TcxGridDBColumn
            Caption = 'LagerPos'
            DataBinding.FieldName = 'PositionName'
          end
          object grdPositionDBTableView1StoredDate: TcxGridDBColumn
            Caption = 'Lagerdatum'
            DataBinding.FieldName = 'StoredDate'
          end
          object grdPositionDBTableView1Product: TcxGridDBColumn
            Caption = 'Produkt'
            DataBinding.FieldName = 'Product'
          end
          object grdPositionDBTableView1PackageNo: TcxGridDBColumn
            Caption = 'PaketNr'
            DataBinding.FieldName = 'PackageNo'
          end
          object grdPositionDBTableView1SupplierCode: TcxGridDBColumn
            Caption = 'Prefix'
            DataBinding.FieldName = 'SupplierCode'
          end
        end
        object grdPositionLevel1: TcxGridLevel
          GridView = grdPositionDBTableView1
        end
      end
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 0
    Top = 118
    Width = 1259
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = pgInventory
    Color = clMaroon
    ParentColor = False
    ExplicitWidth = 8
  end
  object pgInventory: TcxPageControl
    Left = 0
    Top = 0
    Width = 1259
    Height = 118
    Align = alTop
    TabOrder = 2
    Properties.ActivePage = tsLagret
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 114
    ClientRectLeft = 4
    ClientRectRight = 1255
    ClientRectTop = 4
    object tsLagret: TcxTabSheet
      Caption = 'Lager'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1251
        Height = 110
        Align = alClient
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object lcPIPNAME: TcxDBLookupComboBox
          Left = 1286
          Top = 74
          DataBinding.DataField = 'PIPNAME'
          DataBinding.DataSource = dsUserProp
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PIPNO'
          Properties.ListColumns = <
            item
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleController3
          TabOrder = 21
          Visible = False
          Width = 19
        end
        object cxLabel2: TcxLabel
          Left = 130
          Top = 7
          Caption = 'Verk:'
          Style.StyleController = cxEditStyleController1
        end
        object cxLabel1: TcxLabel
          Left = 1
          Top = 30
          AutoSize = False
          Caption = 'Tjocklek'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 24
          Width = 62
        end
        object cxLabel6: TcxLabel
          Left = 63
          Top = 30
          Caption = 'Bredd'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel7: TcxLabel
          Left = 236
          Top = 30
          Caption = 'L'#228'ngd'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel8: TcxLabel
          Left = 292
          Top = 30
          Caption = 'Tr'#228'slag'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel9: TcxLabel
          Left = 349
          Top = 30
          Caption = 'Kvalitet'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel10: TcxLabel
          Left = 405
          Top = 30
          Caption = 'Utf'#246'rande'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel11: TcxLabel
          Left = 470
          Top = 30
          Caption = 'Impregnering'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object ccbAT: TcxCheckComboBox
          Left = 4
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 10
          OnEnter = acOnEnterFilterCombosExecute
          Width = 57
        end
        object ccbAB: TcxCheckComboBox
          Left = 63
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 11
          OnEnter = acOnEnterFilterCombosExecute
          Width = 56
        end
        object ccbAL: TcxCheckComboBox
          Left = 236
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 12
          OnEnter = acOnEnterFilterCombosExecute
          Width = 53
        end
        object ccbTS2: TcxCheckComboBox
          Left = 292
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 5
          OnEnter = acOnEnterFilterCombosExecute
          Width = 54
        end
        object ccbKV2: TcxCheckComboBox
          Left = 349
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 6
          OnEnter = acOnEnterFilterCombosExecute
          Width = 54
        end
        object ccbSU2: TcxCheckComboBox
          Left = 405
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 7
          OnEnter = acOnEnterFilterCombosExecute
          Width = 63
        end
        object ccbIMP: TcxCheckComboBox
          Left = 470
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 8
          OnEnter = acOnEnterFilterCombosExecute
          Width = 86
        end
        object cbOwner: TcxCheckComboBox
          Left = 162
          Top = 6
          Properties.DropDownRows = 25
          Properties.DropDownWidth = 80
          Properties.EditValueFormat = cvfIndices
          Properties.Items = <>
          Properties.OnChange = acRequestFilterUpdateExecute
          Properties.OnCloseUp = cbOwnerPropertiesCloseUp
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Width = 48
        end
        object ccVarugrupp: TcxCheckComboBox
          Left = 558
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 9
          OnEnter = acOnEnterFilterCombosExecute
          Width = 67
        end
        object cxLabel29: TcxLabel
          Left = 558
          Top = 30
          Caption = 'Varugrupp'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel30: TcxLabel
          Left = 627
          Top = 30
          AutoSize = False
          Caption = 'Referens'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 15
          Width = 61
        end
        object cxLabel31: TcxLabel
          Left = 2
          Top = 69
          AutoSize = False
          Caption = 'Lager datum >='
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 17
          Width = 95
        end
        object cxLabel32: TcxLabel
          Left = 103
          Top = 69
          AutoSize = False
          Caption = 'Lager datum <='
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 17
          Width = 95
        end
        object ccbNT: TcxCheckComboBox
          Left = 122
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 26
          OnEnter = acOnEnterFilterCombosExecute
          Width = 57
        end
        object ccbNB: TcxCheckComboBox
          Left = 181
          Top = 46
          Properties.EmptySelectionText = 'Alla'
          Properties.ClearKey = 46
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <>
          Properties.OnClickCheck = ccbATPropertiesClickCheck
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 27
          OnEnter = acOnEnterFilterCombosExecute
          Width = 53
        end
        object cxLabel35: TcxLabel
          Left = 118
          Top = 30
          Caption = 'Tjkl, nom'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxLabel36: TcxLabel
          Left = 181
          Top = 30
          Caption = 'Br, nom'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
        end
        object cxbtnCloseForm: TcxButton
          Left = 937
          Top = 1
          Width = 60
          Height = 25
          Caption = 'St'#228'ng'
          TabOrder = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxbtnCloseFormClick
        end
        object cxbtnClearFilter: TcxButton
          Left = 860
          Top = 1
          Width = 70
          Height = 25
          Caption = 'Rensa filter'
          TabOrder = 31
          OnClick = cxbtnClearFilterClick
        end
        object cxLabel14: TcxLabel
          Left = 694
          Top = 30
          AutoSize = False
          Caption = 'Info1'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 16
          Width = 40
        end
        object cxLabel15: TcxLabel
          Left = 757
          Top = 30
          AutoSize = False
          Caption = 'Info2'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial Rounded MT Bold'
          Style.Font.Style = []
          Style.StyleController = cxEditStyleController2
          Style.TextColor = clMaroon
          Style.TextStyle = []
          Style.IsFontAssigned = True
          Height = 16
          Width = 41
        end
        object cxLabel3: TcxLabel
          Left = 4
          Top = 7
          Caption = 'F'#246'rs.region:'
          Style.StyleController = cxEditStyleController1
        end
        object cbSalesRegion: TcxCheckComboBox
          Left = 75
          Top = 6
          Properties.DropDownRows = 35
          Properties.EditValueFormat = cvfIndices
          Properties.Items = <>
          Properties.OnChange = acRequestFilterUpdateExecute
          Properties.OnCloseUp = cbSalesRegionPropertiesCloseUp
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Width = 49
        end
        object cbStorageArea: TcxCheckComboBox
          Left = 419
          Top = 6
          Properties.EmptySelectionText = 'Alla'
          Properties.DropDownRows = 35
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          Properties.OnChange = acRequestFilterUpdateExecute
          Properties.OnCloseUp = cbStorageAreaPropertiesCloseUp
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Width = 49
        end
        object cxLabel4: TcxLabel
          Left = 353
          Top = 7
          Caption = 'Lagerarea:'
          Style.StyleController = cxEditStyleController1
        end
        object cbStoragePos: TcxCheckComboBox
          Left = 537
          Top = 6
          Properties.EmptySelectionText = 'Alla'
          Properties.DropDownRows = 35
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          Properties.OnChange = acRequestFilterUpdateExecute
          Properties.OnCloseUp = cbStoragePosPropertiesCloseUp
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 4
          Width = 49
        end
        object cxLabel5: TcxLabel
          Left = 475
          Top = 7
          Caption = 'Lagerpos:'
          Style.StyleController = cxEditStyleController1
        end
        object cbStorageGroup: TcxCheckComboBox
          Left = 297
          Top = 6
          Properties.EmptySelectionText = 'Alla'
          Properties.DropDownRows = 35
          Properties.EditValueFormat = cvfIndices
          Properties.Items = <>
          Properties.OnChange = acRequestFilterUpdateExecute
          Properties.OnCloseUp = cbStorageGroupPropertiesCloseUp
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.StyleController = cxEditStyleController3
          Style.ButtonStyle = bts3D
          TabOrder = 2
          Width = 49
        end
        object cxLabel12: TcxLabel
          Left = 223
          Top = 7
          Caption = 'Lagergrupp:'
          Style.StyleController = cxEditStyleController1
        end
        object cbInklEjFakt: TcxComboBox
          Left = 630
          Top = 6
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Lager'
            'Lager + ej fakt'
            'Ej fakturerat')
          Properties.MaxLength = 0
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.ButtonStyle = bts3D
          TabOrder = 38
          Text = 'Lager'
          Width = 61
        end
        object ccbReference: TcxCheckComboBox
          Left = 627
          Top = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Properties.EmptySelectionText = 'Alla'
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.ButtonStyle = bts3D
          TabOrder = 39
          OnEnter = acOnEnterFilterCombosExecute
          Width = 64
        end
        object ccbInfo2: TcxCheckComboBox
          Left = 757
          Top = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Properties.EmptySelectionText = 'Alla'
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.ButtonStyle = bts3D
          TabOrder = 40
          OnEnter = acOnEnterFilterCombosExecute
          Width = 56
        end
        object ccbInfo1: TcxCheckComboBox
          Left = 694
          Top = 46
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Properties.EmptySelectionText = 'Alla'
          Properties.EditValueFormat = cvfCaptions
          Properties.Items = <>
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.ButtonStyle = bts3D
          TabOrder = 41
          OnEnter = acOnEnterFilterCombosExecute
          Width = 61
        end
        object cbInkTimeInDateFilter: TcxCheckBox
          Left = 202
          Top = 83
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Inkludera tid i datumfilter'
          Properties.OnChange = cbInkTimeInDateFilterPropertiesChange
          TabOrder = 42
        end
        object cxBtnUpdFilter: TcxButton
          Left = 774
          Top = 1
          Width = 79
          Height = 25
          Caption = 'Uppdatera filter'
          TabOrder = 43
          OnClick = UpdateDataFilterCombos
        end
        object deStartPeriod: TcxDateEdit
          Left = 3
          Top = 85
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 44
          OnEnter = acOnEnterFilterCombosExecute
          Width = 95
        end
        object deEndPeriod: TcxDateEdit
          Left = 102
          Top = 85
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 45
          OnEnter = acOnEnterFilterCombosExecute
          Width = 95
        end
        object cxLabel16: TcxLabel
          Left = 592
          Top = 7
          Caption = 'K'#228'lla:'
          Style.StyleController = cxEditStyleController1
        end
        object cbReportSelection: TcxComboBox
          Left = 346
          Top = 84
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 80
          Properties.Items.Strings = (
            'Area-Ref'
            'Area-Ref-Dim'
            'Area-Ref-Dim-L'#228'ngd'
            'D'#228'cklista'
            'PaketLista'
            'Tomma R'#228'ckor')
          Properties.Sorted = True
          Properties.OnChange = cbReportSelectionPropertiesChange
          TabOrder = 47
          Text = 'Area-Ref'
          Width = 86
        end
        object cxButton1: TcxButton
          Left = 436
          Top = 83
          Width = 89
          Height = 21
          Action = acExpandAllGridView
          TabOrder = 48
        end
        object cxButton2: TcxButton
          Left = 803
          Top = 83
          Width = 89
          Height = 21
          Action = acSaveTemplate
          TabOrder = 49
        end
        object cxbtnDeleteTemplate: TcxButton
          Left = 711
          Top = 83
          Width = 89
          Height = 21
          Action = acDeleteTemplate
          TabOrder = 50
        end
        object cxButton3: TcxButton
          Left = 619
          Top = 83
          Width = 90
          Height = 21
          Action = acNewTemplate
          TabOrder = 51
        end
        object cxButton4: TcxButton
          Left = 527
          Top = 83
          Width = 90
          Height = 21
          Action = acCollapseAllGridView
          TabOrder = 52
        end
        object cxButton5: TcxButton
          Left = 895
          Top = 73
          Width = 102
          Height = 31
          Action = acRefreshReport
          Caption = 'Uppdatera F10'
          TabOrder = 53
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 818
          Top = 27
          Width = 179
          Height = 42
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Exportera till EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 54
          object btnExportToExcel: TcxButton
            Left = 3
            Top = 18
            Width = 63
            Height = 21
            Action = acExportGridToExcel
            Caption = 'Exportera'
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object ckbSelectedLines: TCheckBox
            Left = 72
            Top = 22
            Width = 91
            Height = 14
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Valda rader'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object cxButton6: TcxButton
          Left = 696
          Top = 1
          Width = 74
          Height = 25
          Action = acPrintPositionView
          OptionsImage.Images = cxImageListPrinting
          TabOrder = 55
        end
        object cxBtnChgTreatmentInfo: TcxButton
          Left = 1003
          Top = 1
          Width = 129
          Height = 68
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = acChgRef_and_Info
          ParentShowHint = False
          ShowHint = True
          TabOrder = 56
          WordWrap = True
        end
      end
    end
  end
  object cxLabel13: TcxLabel
    Left = 349
    Top = 68
    Caption = 'V'#228'lj Mall'
    ParentColor = False
    ParentFont = False
    Style.Color = clSilver
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial Rounded MT Bold'
    Style.Font.Style = []
    Style.StyleController = cxEditStyleController2
    Style.TextColor = clMaroon
    Style.TextStyle = []
    Style.IsFontAssigned = True
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PkgTable'
      'PaketNr'
      'TorkSats'
      'PaketTabellMeny'
      'FilterComboBoxes')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 608
    Top = 497
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 273
      FloatTop = 178
      FloatClientWidth = 100
      FloatClientHeight = 280
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbPkgNoReport'
        end
        item
          Visible = True
          ItemName = 'lbPcsPerLengthReport'
        end
        item
          Visible = True
          ItemName = 'lbPkgTypeReport'
        end
        item
          Visible = True
          ItemName = 'lbInventoryCount'
        end
        item
          Visible = True
          ItemName = 'bbSummaryReport'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Paketnr'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 310
      FloatTop = 566
      FloatClientWidth = 130
      FloatClientHeight = 160
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
      OldName = 'Paketnr'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'TorkSats'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 313
      FloatTop = 626
      FloatClientWidth = 86
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      OldName = 'TorkSats'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'PaketTabellMeny'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 412
      FloatTop = 368
      FloatClientWidth = 179
      FloatClientHeight = 44
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'bbVisaAvAktiverade'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OldName = 'PaketTabellMeny'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Torksats2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAddPkgsToKilnCharge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
      OldName = 'Torksats2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Caption = '&Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbPkgNoReport: TdxBarLargeButton
      Caption = 'Paketnr F2'
      Category = 0
      Visible = ivAlways
      ShortCut = 113
      LargeImageIndex = 2
    end
    object lbPcsPerLengthReport: TdxBarLargeButton
      Caption = 'Ant/l'#228'ngd F3'
      Category = 0
      Visible = ivAlways
      ShortCut = 114
      LargeImageIndex = 5
    end
    object lbPkgTypeReport: TdxBarLargeButton
      Caption = 'Paketkod F4'
      Category = 0
      Visible = ivAlways
      ShortCut = 115
      LargeImageIndex = 4
    end
    object lbInventoryCount: TdxBarLargeButton
      Caption = 'PktNr lista F5'
      Category = 0
      Visible = ivAlways
      ShortCut = 116
      LargeImageIndex = 2
    end
    object lbHideFilterPanel: TdxBarLargeButton
      Caption = 'G'#246'm filter'
      Category = 0
      Hint = 'G'#246'm filter'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 6
    end
    object bbSummaryReport: TdxBarLargeButton
      Caption = 'Summering CR F6'
      Category = 0
      Visible = ivAlways
      ShortCut = 117
      LargeImageIndex = 7
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Tabell F8'
      Category = 0
      Visible = ivAlways
      ShortCut = 119
      LargeImageIndex = 8
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Summering F7'
      Category = 0
      Visible = ivAlways
      ShortCut = 118
      LargeImageIndex = 7
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Inst'#228'llningar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 12
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          UserDefine = [udPaintStyle]
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end>
    end
    object dxBarButton33: TdxBarButton
      Caption = 'Summering'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton40: TdxBarButton
      Caption = 'Spara layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton41: TdxBarButton
      Caption = #214'ppna layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Caption = 'Spara som excel'
      Category = 0
      Visible = ivAlways
      OnClick = acExportToExcelExecute
    end
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Expandera alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Kollapsa alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #196'ndra paket'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 1
      Enabled = False
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Paketlogg'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = 'V'#229'rda lager'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = #196'ndra pris p'#229' markerade paket'
      Category = 1
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF848484FF008484FF008484FF0084
        84FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF8484
        84FF008484FF008484FF008484FF848484FF008484FFC6FFFFFF84FFFFFF84FF
        FFFF008484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0084
        84FFC6FFFFFF84FFFFFF84FFFFFF008484FF848484FF008484FF008484FF0084
        84FF848484FF008484FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF8484
        84FF008484FF008484FF008484FF848484FFFF00FFFFFF00FFFF008484FFC6C6
        C6FFC6C6C6FFC6C6C6FF008484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008484FF00C6
        C6FF00C6C6FF00C6C6FF008484FFFF00FFFFFF00FFFFFF00FFFF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF008484FFC6C6
        C6FFC6C6C6FFC6C6C6FF008484FF005A00FF005A00FFFF00FFFF005A00FF0084
        00FF008400FF00C600FF00C600FF00C600FF00C600FF00C600FF008484FF00C6
        C6FF00C6C6FF00C6C6FF008484FF008400FF005A00FFFF00FFFF005A00FF0084
        00FF00C600FF84FF84FF84FF84FF84FF84FF424242FF424242FF008484FFFFFF
        FFFF84FFFFFF84FFFFFF008484FF008400FF005A00FFFF00FFFF005A00FF00C6
        00FFC6FFC6FFC6FFC6FF84FF84FF424242FFC6C6C6FFC6C6C6FF008484FF0084
        84FF008484FF008484FF84FF84FF00C600FF005A00FFFF00FFFF005A00FF00C6
        00FFC6FFC6FFC6FFC6FFC6FFC6FF424242FFC6FFFFFFC6C6C6FFC6C6C6FF4242
        42FF84FF84FF84FF84FF84FF84FF00C600FF005A00FFFF00FFFF005A00FF0084
        00FF00C600FFC6FFC6FFC6FFC6FFC6FFC6FF424242FF424242FF424242FF84FF
        84FF84FF84FF84FF84FF00C600FF008400FF005A00FFFF00FFFF005A00FF0084
        00FF008400FF00C600FFC6FFC6FFC6FFC6FFC6FFC6FFC6FFC6FF84FF84FF84FF
        84FF84FF84FF00C600FF008400FF008400FF005A00FFFF00FFFF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Registrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton9: TdxBarButton
      Caption = #196'ndra paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Avregistrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Skriv ut'
      Category = 2
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Emaila'
      Category = 2
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton14: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Paketinformation'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'Flytta paket internt'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Caption = 'Avregistrera mot inventering'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Caption = 'Ta bort paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = #196'ndra paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Ny torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Caption = '  Spara  '
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Caption = #197'ngra'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Ta bort torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Caption = #214'ppna'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Skriv ut'
      Category = 3
      Visible = ivAlways
    end
    object bbAddPkgsToKilnCharge: TdxBarButton
      Caption = 'L'#228'gg paket till torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'Ta bort rad'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = 'Flytta paket till lager efter tork'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = 'Notering'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Caption = 'Paketnr F8'
      Category = 4
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FF943131FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF9431
        31FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FFFF00
        FFFFFF00FFFFFF00FFFF5A5242FF5A5242FF5A5242FF5A5242FF5A5242FF5A52
        42FF5A5242FF5A5242FFB58484FFFF00FFFFFF00FFFF943131FF943131FF9431
        31FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FF943131FF9431
        31FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF9431
        31FFFF00FFFFFF00FFFF5A5242FF5A5242FF5A5242FF5A5242FF5A5242FF5A52
        42FF5A5242FF5A5242FFB58484FFFF00FFFFFF00FFFF943131FF943131FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FF943131FF9431
        31FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF943131FF943131FFFF00
        FFFFFF00FFFFFF00FFFF5A5242FF5A5242FF5A5242FF5A5242FF5A5242FF5A52
        42FF5A5242FF5A5242FFB58484FFFF00FFFFFF00FFFFFF00FFFF943131FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      ShortCut = 119
    end
    object dxBarButton22: TdxBarButton
      Caption = 'Sortiment F10'
      Category = 4
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF848484FF000000FF000000FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      ImageIndex = 7
      PaintStyle = psCaptionGlyph
      ShortCut = 121
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Skriv &ut'
      Category = 4
      Visible = ivAlways
      ImageIndex = 11
      ShortCut = 16503
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Automatisk kolumnbredd'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton25: TdxBarButton
      Caption = 'Emaila'
      Category = 4
      Visible = ivAlways
      ImageIndex = 6
      OnClick = acExportExecute
    end
    object dxBarButton26: TdxBarButton
      Caption = 'Gruppsummering'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton27: TdxBarButton
      Caption = 'Grupperingsruta'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object bbVisaAvAktiverade: TdxBarButton
      Caption = 'Visa avaktiverade'
      Category = 4
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'Alternativ dim.inmatning'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton39: TdxBarButton
      Caption = #197'terst'#228'll tabelllayout'
      Category = 4
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 312
    Top = 545
    object acClose: TAction
      Caption = 'X'
      ShortCut = 16467
      OnExecute = acCloseExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
    end
    object acNewTemplate: TAction
      Caption = 'L'#228'gg till ny mall'
      OnExecute = acNewTemplateExecute
    end
    object acSaveTemplate: TAction
      Caption = 'Spara mall'
      OnExecute = acSaveTemplateExecute
    end
    object acRefreshReport: TAction
      Caption = 'Uppdatera'
      ShortCut = 121
      OnExecute = acRefreshReportExecute
    end
    object acDeleteTemplate: TAction
      Caption = 'Ta bort mall'
      OnExecute = acDeleteTemplateExecute
    end
    object acCollapseAllGridView: TAction
      Caption = 'Minimera alla'
      OnExecute = acCollapseAllGridViewExecute
    end
    object acExpandAllGridView: TAction
      Caption = 'Maximera alla'
      OnExecute = acExpandAllGridViewExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
    object acUlrikaRapport: TAction
      Caption = 'Ulrika rapport'
    end
    object acRequestFilterUpdate: TAction
      Caption = 'acRequestFilterUpdate'
      OnExecute = acRequestFilterUpdateExecute
    end
    object acExportGridToExcel: TAction
      Caption = 'Exportera till EXCEL'
      OnExecute = acExportGridToExcelExecute
    end
    object acOnEnterFilterCombos: TAction
      Caption = 'acOnEnterFilterCombos'
      OnExecute = acOnEnterFilterCombosExecute
    end
    object acPrintPositionView: TAction
      Caption = 'Skriv &ut'
      ImageIndex = 0
      OnExecute = acPrintPositionViewExecute
    end
    object acChgRef_and_Info: TAction
      Caption = #196'ndra Ref o Info f'#246'r markerade'
      OnExecute = acChgRef_and_InfoExecute
      OnHint = acChgRef_and_InfoHint
    end
  end
  object pmFormShortcuts: TPopupMenu
    AutoPopup = False
    Left = 40
    Top = 320
    object Stng1: TMenuItem
      Action = acClose
    end
    object Skrivut1: TMenuItem
      Caption = 'Skriv &ut'
      ImageIndex = 11
      ShortCut = 16503
    end
    object AntlngdF91: TMenuItem
      Caption = 'Ant/l'#228'ngd F9'
      ImageIndex = 5
      ShortCut = 120
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 609
    Top = 353
  end
  object SaveDialog1: TSaveDialog
    Left = 609
    Top = 449
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 608
    Top = 305
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdPosition
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[User Name][Machine Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.PaperSource = 257
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42521.421175902760000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 553
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyleINAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsStrikeOut]
      TextColor = clRed
    end
    object cxStyleNormalAktivePkg: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtuserProp
    Left = 176
    Top = 344
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 456
    Top = 680
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.TextColor = clMaroon
    Style.TextStyle = [fsBold]
    Left = 312
    Top = 296
    PixelsPerInch = 96
  end
  object cxEditStyleController2: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clNavy
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 312
    Top = 336
    PixelsPerInch = 96
  end
  object cxEditStyleController3: TcxEditStyleController
    Style.BorderColor = cl3DLight
    Style.BorderStyle = ebsNone
    Style.Color = clWindow
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Left = 304
    Top = 392
    PixelsPerInch = 96
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 26280544
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000606060006060600060606000606060006060600060606000606060006466
          6800697175006061620061656700606C6F0061757800607E830064888F005D81
          88005F616200605858007E7774006A656100565350005E5D5C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005F5F61005B5D6A0056587400505581004B528C00434E98008F9CB800A4CC
          D6009CD5E400639CA80062A3B00063A4B20063A6B30062A3B00066A9B6005990
          9D0053889200587B82007A8687006C676500605858006C66630084807E000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000535679003845B9003844BA003444BA003644BC003644B8009AA9D000A6DE
          EC009AD8E80061A2AD0061A6B30062A4B00064A6B50063A3B00065A7B5005A90
          9B00518890005087900071969E006D888F00BAB3AF00D6CFC900857F7C007B76
          7400847F7C000000000000000000000000000000000000000000000000000000
          000052567A003644BC003745BA003544BA003744BC003744BA009BADCC009ED1
          DE006D9FAF005C96A5005F9AA8005E9BA8005E9BA8005E9CAA00619EAB005A95
          A10052869100508590006F959C006B8A9200DCD6D100EFE8E4007C7474007A73
          7100847E7A007974720079767500000000000000000000000000000000000000
          000052577B003645BC003646BD003544BA003944BA003544BA00A4C7D10070A4
          AF0061A3B10061A1AF0062A5B40062A4B10063A6B50062A4B00067A8B7005B91
          9D0052889100518790006F969C006B8C9400DAD3CE00EFE5E3007C7674006E68
          670079747100706B690084807B00000000000000000000000000000000000000
          000052577C003646BC003646BB003D52BD006E85C8009DB2CD0070A2B30061A1
          AE0063A5B20061A2AE0062A5B30061A2AF0061A1B00061A0AC0062A0AE005992
          9F0052899200538791006E949A006C8C9200D7D0CC00EFE6E100847E7C00756F
          6E007E797500696362007B747300000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052567F004A65C000A2BFC9008B8787008C96980087AEB60063A5B10060A2
          AE0062A6B20060A2AE0062A5B30062A3B00064A5B30062A3B00064A9B5005A91
          9D0053899300538793006E939B006C8D9500D4CDC800EAE2DF008B858400807A
          780088837F007873700086807D00000000000000000000000000000000000000
          0000644958009BD4EA00A6C7CD00726A69007684860062A5B20060A4AF0060A0
          AE0060A1B0005F9EA9005F9DAB00609EAB00609FAD005E9FAE005FA2B1005A95
          A30053889200518791006D9198006C8C9200CFC9C500E8E1DC0086807D007974
          720086817E007E7876008B848100000000000000000000000000000000000000
          000000000000A8CDD700ACB7BC00726A6800758384005E9EAC005F9EAE005E9F
          AC005E9FAF005FA2AF0062A5B30062A5B20063A5B50061A3B10065A8B6005991
          9D00548A9500538792006D939C006C8F9600CFC8C300E6DEDA007A7673006E69
          67007C787500756F6D0087827E00000000000000000000000000000000000000
          000000000000837F7C0076717000736C6B007687880063A6B10061A7B20062A2
          AF0062A5B20060A3AE0063A6B20064A4B20063A6B40062A4B20066A9B7005A91
          9D00538993005288910069929C006C8D9400CCC6C100E3DCD9007F787600716C
          6C0079747300686362007B767300000000000000000000000000000000000000
          0000000000007D787400706C6A00736C6A007782840061949C005D8992005983
          8A005D828C005A7980005C7C8200567277005E777D0052686F005B6F74004E5F
          63004D646A004F6B77006A898E006D8D9100CCC7C000E2DAD40085807C007973
          7000807A78006F6B69007E797500000000000000000000000000000000000000
          0000000000008D8883008A838300908988009D999400A59E9B009E989700A19D
          9A009C96940096918F009C9695009B959400BAB2B000A7A3A0009E9C98009F9D
          9A00ACABA700BFBAB800D3CECB007A767600817B7B009D969200888480007F79
          770087827F007975720086817D00000000000000000000000000000000000000
          00000000000089847F007D7774007D77740085807E0079746F00696560004F48
          45004F484400433F390048433D00433F37007E7873005F5A5800544E49005852
          4F004C48420054504C00928B87006469950063667E005E62750071707C007C77
          7300615F6500706D71007E777700000000000000000000000000000000000000
          0000000000007D787400726B6A00726C6A007E7B7700706B6800736E6D00514F
          4E005F5A5700494743005C5755005C5757009F9995009E9895006F6968007D78
          78008884810089878500B7B0AB007478A2005E648D00464B7B004B518300676C
          8A00666B8B006469860062678600000000000000000000000000000000000000
          0000000000007C777400726B6900736C69007C777500706B6900736E6C00524E
          4E004E4947004C4743004C484500514B4B009F989600857F7F00635B5A007873
          73007A76720088838100BDB5AF00464C940027308A002A328A00363F85003E45
          82003C448C003A4290003B439500000000000000000000000000000000000000
          0000000000007C777400726C6A00736C6B007E79760074706D0075717000524F
          4F004D484600494745004A4340004F4947009D969300686263006A6262006A63
          6200676262006A656400D9CFCC00464C940026308A0028328B002C3790002B33
          8E002D3692002E3694002F389800000000000000000000000000000000000000
          00000000000086827E007D7774007D77750087837F007F7B77008B8784006764
          6300665F5E00625D5B00615C5900655F5E00A7A19E00726A6A00706868008081
          8000B0A9A5007A727200D5CDCB00464D940028308A002A338B002C348D002935
          8C002D3692002C3894002D389500000000000000000000000000000000000000
          0000000000004D528E004A518D004E558E0051578F00515790009A949500575C
          96005C6099006C739E005B619800A9A8B900E0D8D40097919400575A75009294
          9F00D2CCC7009A989B00D0CAC7003D458A0027308A0029328B002B348E002833
          8D002C3590002D3896002C369300000000000000000000000000000000000000
          000000000000252D7F00232C7E00252D7F00262D7F00232B7F00817D7D002831
          8200252E820026308400242E84009C9AB500E2DBD9007D787D0020285000596C
          8300D0CBC7006D6B7500C9C5C200353D830027308B0028328B002A348F002834
          8C002B3491002E3796002C349300000000000000000000000000000000000000
          000000000000252C7E00252E7D00262E7F00272E7F00232C8100868181002830
          8200242E80002730830028307F009292AA00B1ADAA007C7A8200202850004E62
          7800CEC6C3004E4E5D00C0BBB900353E820027308C0028308A0029338E002A34
          8E002B3491002D3695002C349300000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          00000000000082483D0081564E007D5E59007A696700726969006C6768005651
          560057505500565054005250530054505300AEA9A5008881810054505300817F
          7E00CBC2BD00716B6B00938C8B003840860028308C0028308B00283290002B35
          8E002C3491002E37940030389700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000958F8C00844F
          4600805C57007D666300796E6E00706D6D007F7B7D0068626600545052007874
          7400B1ABA8005F595C0055505400343B84002830890028338A002D368B003A42
          87004C4D7E00594D6D0065444F00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000867570000000
          0000000000000000000000000000A8867B00D8D3CD009C918F00835951008C79
          7600969293007873740068656800464B7E004D4F7E0076789500713B36000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000816C66000000
          000000000000000000000000000000000000CCC3BC0084726C00000000000000
          0000CAC2BE00000000000000000000000000000000009F726700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFC00000FFC000007FC000001FC0000007C0000007C0000007C000
          0007C0000007C0000007C0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007FF000007FF78007FFF7CDEFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001E180F004E4A450078757300827F
          7D00342F2700342F270016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F1F1009D9B99009D9B99008C8987008C8987008C8987009390
          8E00E6E6E500E6E6E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          06001610060065625E008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600161006001610060016100600161006001610
          060026201700DFDFDE00F5F5F500F5F5F500413D3700161006000000FF000000
          FF000000FF000000FF00FF000000FF000000FF00000016100600161006001610
          06002B261E00827F7D008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F27001610060016100600FF0000000000FF000000FF000000
          FF000000FF00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600FF000000FF00
          00001610060016100600161006000000FF00161006001610060016100600FF00
          000038332B008C8987008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF00000039352F00625E5A00625E5A007A77
          7500817E7C00AAA8A700CAC9C800CAC9C800423E380016100600161006001610
          06001610060016100600161006000000FF00161006001610060016100600FF00
          0000322D2500878482008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F2700221D1500696562008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700817E7C0035312C00161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000004D4944008B8886008B8886008C8987008C8987008C8987008885
          83006B6866006B6866008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          060016100600161006001610060016100600161006000000FF000000FF001610
          060016100600FF0000005F5C59005F5C59008C8987008C8987008C8987008B88
          86008B8886008B8886008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          0600161006001610060016100600161006001610060016100600161006000000
          FF001610060016100600FF000000FF000000534F4B00868381008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          060046423C0046423C008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700716E6B0026211800262118001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600302B2300302B2300868381008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008481
          7F0088858300888583008C8987008C8987008C8987007A7774007A777400231E
          150026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600676461008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008A8785005552
          4D0086838100868381008C8987008C8987008C8987008C8987008C8987005F5C
          580026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600231E1500686462008B8886008B8886008C89
          87008C8987008C8987008C8987008C898700868381004E4A45000000FF002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008986
          84004A464000DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          060016100600161006001610060016100600161006002F2A23002F2A23004A46
          4000514D4700514C4600433F3900433F39000000FF000000FF00161006002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008A87
          85004C484200DFDFDE00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D370016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EE0096949200969492008C8987008C8987008C8987008C8987008C8987009A97
          9500F8F8F800FFFFFF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C898700827F
          7C008B8883008B88830086837E0086837E002C271F0016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008C8987008C898700726F6D00726F6D00211B
          1200161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          060016100600161006001610060016100600161006001610060016100600241E
          160064615F0064615F0057534E00342F28001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 608
    Top = 609
    Bitmap = {
      494C01010D001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B6B63005A4A
      4200524A42005A5252006B6B6B00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C522100A539
      0000843910006B311800523929004A42390052524A00636363007B7B7B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094522100B552
      1000D6946B00D6946B00BD6B39009C5221007B4221006339210052423900524A
      4200635A520073736B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C5A2100B552
      1800EFC6A500FFEFCE00FFDEB500EFC69C00E7A57300CE845200AD6331008C4A
      2100734221005A423100524A4200636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A55A2100B552
      1800EFC6A500FFE7CE00FFE7C600FFE7BD00FFE7BD00FFDEB500F7C69C00EFB5
      8400DE945A00BD6B39008C4A21005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7CEB500FFE7CE00FFE7C600F7DEBD00F7DEBD00F7DEB500FFDEB500FFD6
      A500FFCE8400F7B56B00B5633100634A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7D6BD00FFEFD600FFE7CE00DEDEC600A5C6C600C6CEBD00FFDEB500FFCE
      8C00FFBD6300F7B56B00B56B3100634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD63
      3100F7E7CE00FFEFDE00EFE7D6008CC6CE004AADCE009CC6C600FFDEB500F7BD
      7300EFBD6B00EFB57B00AD6B3900634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD6B
      3900F7E7DE00EFEFDE009CCECE004AADCE00009CCE007BBDCE00EFCEAD00B59C
      73009C947300CE9C6B00B56B31007B523100736B63009C949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD6B2900BD73
      4200F7F7E700B5D6DE0052B5D6009CCED600ADCED600009CCE00C6CEBD00A5A5
      94008C8C7300D6A57300E7AD7300C68C52009C734200846B4A0084736B009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900BD73
      4200F7F7EF00C6DEE700A5D6DE00EFEFDE00CEDED6004AADCE009CC6C600EFDE
      C600DEBD9400E7B58400EFC69400F7C69400EFB57B00CE945A00AD7B4200846B
      4A00736B6B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900C67B
      5200FFFFF700F7F7EF00F7F7E700FFEFDE00EFE7D6008CC6D6004AADCE00F7E7
      CE00FFE7C600E7B58400C67B4A00BD8C5A00E7B58400EFC69400E7AD7B00AD94
      7B005A5A840039427B006B6B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2900C684
      5A00FFFFFF00FFF7EF00FFF7EF00FFF7E700F7EFDE00B5D6DE0063BDCE00C6D6
      CE00FFEFD600EFC69C00A56331007B523100B59C7B00E7BD9C00D6AD8400ADA5
      A5004A63C6001842BD0063639400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE8C
      6B00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700D6E7DE006BBDD6008CC6
      CE00F7EFDE00EFC69C00A5633100523929000000000000000000E7BD9C00C6C6
      C6006373C6004A63C600ADADCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00F7F7E70094CEDE0063BD
      CE00CEDED600EFC6A500A5633100523929000000000000000000000000000000
      0000ADADCE00ADADCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00CEE7E70094CE
      D600CEE7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900BD73
      4200DEAD8C00E7C6B500EFDED600F7EFEF00F7F7F700FFFFF700F7F7F700EFF7
      EF00F7F7E700E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2100BD52
      0800BD5A1000C6632100C66B2900C67B4200CE946300D6A58400E7BDA500EFD6
      C600F7E7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA55200D66B
      1000CE630800C65A0000C65A0000C65A0800C65A0800BD5A1000C6631800C663
      2100C6733900C673310094522100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD9C7B00BDA5
      7300CEA56B00D69C5200DE8C3900DE8C3900DE842900D6731000CE6B0800CE63
      0000C65A0000C65A00005A4A39005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C7B00BDA573009C948400A5947B00AD9C7300BD9C6B00CE9C
      5A00D69C5200DE8C39009C6B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A50000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D60000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A00087310000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D60000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D60000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D60000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE7000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70000000000000000000000000000000000FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      6300636363006363630000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C0FFFF000000000000000000C00FFF000000000000000000
      C001FF000000000000000000C000FF000000000000000000C000FF0000000000
      00000000C000FF000000000000000000C000FF000000000000000000C000FF00
      0000000000000000C0003F000000000000000000C0000F000000000000000000
      C00003000000000000000000C00001000000000000000000C000010000000000
      00000000C000C1000000000000000000C000F3000000000000000000C000FF00
      0000000000000000C000FF000000000000000000C000FF000000000000000000
      C000FF000000000000000000C000FF000000000000000000F801FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0C1FFFFFFF807FFF807FFFFC0007F07FFF8003FF8003FFF00001
      E007FF80003F80001FE00003C0007F80000780001F8000038000078000038000
      0F80000380000180000380000F80000380000180000380000780000380000180
      0003800007800003800001800003800007800003800001800003800003C00003
      800001800003800003E00007800001800003800001F8000F8000018000038000
      00F8001F800001800003800000FC007FC00003800003800007FC00FFF8000780
      0003800007FC01FFFF800F800007800007FC01FFFFFC1FC03FFFC03F07FC01FF
      FFFFFFE07FFFE07E0FFC01FFFFFFFFFFFFFFFFE01FF803FFFFFFFFFFFFFFFFF0
      7FF803FFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFF0001FFFFFF
      8000018007FFFF0001FFFFFF8000018001FFFF0001FFFFFF8000018000FFFF00
      01F8003F80000180007FFF0001F87F3F800001C0001FFF0001F83FBF800001F0
      000FC00001FC1FFF800001FC0007C00001FE0FFF800001FE0003C00001FF07FF
      800001FF0001C00001FF83FF800001FF0000C00001FF83FF800001FF0000C000
      01FF07FF800001FF8000C00001FE0FFF800001C00000C00003FC1FFF800001C0
      0000C0007FF83FBFC00003C00000C0007FF87F3FFFFFFFC00000C0007FF8003F
      FFFFFFF00000C0007FFFFFFFFFFFFFFC0000C0007FFFFFFFFFFFFFFF0000E000
      FFFFFFFFFFFFFFFFC000FFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000FFFFFFF8000FF
      E00003E0000FF1FFCF80007FE00003C0000FF5802F80003FE00003C0000FF990
      0F80001FE00003C0000FFBDEDF80000FE00003C0000FF1FFFF800007E00003C0
      000FFFFFFF800003E00003C0000FF18FFF800001E00003C0000FF7C423800001
      E00003C0000FFB8003800001E00003C0000FF5D237800001E00003C0000FF1FF
      7F800001E00003C0000FFFFFFFC00001E00003C0000FF1FFFFE00001E00003C0
      000FFBA05FF00001E00003E0000FFB821FF80001E00007F8000FF3989FFC0001
      E0000FFE1FFFFBFBFFFE0001E0001FFFFFFFFFFFFFFF0001E0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo, C.PktNrLevKod'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6)'
      'OR (R.RoleType = 7))'
      ''
      'and C.IntVerk = 1'
      ''
      'Order by C.clientName'
      '')
    Left = 456
    Top = 624
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object sq_UserProfile: TFDQuery
    AfterInsert = sq_UserProfileAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      'AND ((Name = :Name) OR ('#39'ALL'#39' = :Name))')
    Left = 776
    Top = 320
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
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_UserProfileUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_UserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
    end
    object sq_UserProfileStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProfileEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object sq_UserProfileVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object sq_UserProfileOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_UserProfilePIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object sq_UserProfileLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object sq_UserProfileRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object sq_UserProfileRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
    end
    object sq_UserProfileCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
    end
    object sq_UserProfileRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
    end
    object sq_UserProfileProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object sq_UserProfileAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
    end
    object sq_UserProfileSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      Size = 3
    end
    object sq_UserProfileLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
    end
    object sq_UserProfileLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
    end
    object sq_UserProfileNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
    end
    object sq_UserProfileSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object sq_UserProfileMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
    object sq_UserProfileOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
    end
    object sq_UserProfileStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_UserProfileFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
    end
    object sq_UserProfileClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object sq_UserProfileSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
    end
    object sq_UserProfileVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
    end
    object sq_UserProfileVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
    end
    object sq_UserProfileLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
    object sq_UserProfileBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
    end
    object sq_UserProfileGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
    end
    object sq_UserProfileVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object sq_UserProfileLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
    end
    object sq_UserProfileLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
    end
    object sq_UserProfileGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
    end
    object sq_UserProfileGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
    end
    object sq_UserProfileAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object sq_UserProfileLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
    end
    object sq_UserProfileShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
    end
    object sq_UserProfileBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
    end
    object sq_UserProfileCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sq_UserProfileShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
    end
    object sq_UserProfileFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      Size = 50
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 312
    Top = 432
  end
  object pmPkgNos: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 608
    Top = 664
    PixelsPerInch = 96
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdPosition
    PopupMenus = <>
    Left = 312
    Top = 488
  end
  object frxDB_ST_Del_Stat: TfrxDBDataset
    UserName = 'frxDB_ST_Del_Stat'
    CloseDataSource = False
    DataSet = sq_ST_Del_Stat
    BCDToCurrency = True
    Left = 928
    Top = 480
  end
  object frxReport2: TfrxReport
    Version = '6.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41157.391882638900000000
    ReportOptions.LastChange = 41157.424006192100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 928
    Top = 408
    Datasets = <
      item
        DataSet = frxDB_ST_Del_Stat
        DataSetName = 'frxDB_ST_Del_Stat'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DBCross1: TfrxDBCrossView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 56.692950000000000000
        Width = 385.000000000000000000
        Height = 128.000000000000000000
        DownThenAcross = False
        PlainCells = True
        RowLevels = 3
        CellFields.Strings = (
          'Styck')
        ColumnFields.Strings = (
          'Utlastad')
        DataSet = frxDB_ST_Del_Stat
        DataSetName = 'frxDB_ST_Del_Stat'
        RowFields.Strings = (
          'ProductCode'
          'Produkt'
          'L'#228'ngd')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D223232352C37373935332220
          546F703D223132302C3639323935222057696474683D22363222204865696768
          743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
          7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222048416C69676E3D226861526967
          6874222056416C69676E3D22766143656E7465722220546578743D2230222F3E
          3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
          225472756522204C6566743D223230322220546F703D22363622205769647468
          3D22363222204865696768743D22323222205265737472696374696F6E733D22
          32342220416C6C6F7745787072657373696F6E733D2246616C73652220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D2268615269676874222056416C69676E3D22766143656E74657222
          20546578743D2230222F3E3C546672784D656D6F5669657720416C6C6F775665
          63746F724578706F72743D225472756522204C6566743D223131312220546F70
          3D223636222057696474683D22363222204865696768743D2232322220526573
          7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D2268615269676874222056416C69676E
          3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D223232352C37373935332220546F703D223134322C363932393522205769
          6474683D22363222204865696768743D22323222205265737472696374696F6E
          733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
          65722220546578743D2230222F3E3C546672784D656D6F5669657720416C6C6F
          77566563746F724578706F72743D225472756522204C6566743D223238372C37
          373935332220546F703D223132302C3639323935222057696474683D22383122
          204865696768743D22323222205265737472696374696F6E733D223234222041
          6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
          703D2231352220476170583D22332220476170593D2233222048416C69676E3D
          2268615269676874222056416C69676E3D22766143656E746572222054657874
          3D2230222F3E3C546672784D656D6F5669657720416C6C6F77566563746F7245
          78706F72743D225472756522204C6566743D223236342220546F703D22363622
          2057696474683D22383122204865696768743D22323222205265737472696374
          696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C73
          6522204672616D652E5479703D2231352220476170583D22332220476170593D
          2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
          656E7465722220546578743D2230222F3E3C546672784D656D6F566965772041
          6C6C6F77566563746F724578706F72743D225472756522204C6566743D223022
          20546F703D2230222057696474683D223022204865696768743D223022205265
          737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D2268615269676874222056416C69676E
          3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
          657720416C6C6F77566563746F724578706F72743D225472756522204C656674
          3D223238372C37373935332220546F703D223134322C36393239352220576964
          74683D22383122204865696768743D22323222205265737472696374696F6E73
          3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
          722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865
          616465726D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D22302220546F703D2230
          222057696474683D223022204865696768743D22302220526573747269637469
          6F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C736522
          204672616D652E5479703D2231352220476170583D22332220476170593D2233
          222056416C69676E3D22766143656E7465722220546578743D22537479636B22
          2F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
          743D225472756522204C6566743D22302220546F703D2230222057696474683D
          223022204865696768743D223022205265737472696374696F6E733D22382220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222056416C69676E
          3D22766143656E7465722220546578743D22537479636B222F3E3C546672784D
          656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
          204C6566743D22302220546F703D2230222057696474683D2230222048656967
          68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
          72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
          476170583D22332220476170593D2233222056416C69676E3D22766143656E74
          65722220546578743D22537479636B222F3E3C546672784D656D6F5669657720
          416C6C6F77566563746F724578706F72743D225472756522204C6566743D2230
          2220546F703D2230222057696474683D223022204865696768743D2230222052
          65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
          3D2246616C736522204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222056416C69676E3D22766143656E746572222054657874
          3D22537479636B222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C
          756D6E6D656D6F733E3C546672784D656D6F5669657720416C6C6F7756656374
          6F724578706F72743D225472756522204C6566743D223232352C373739353322
          20546F703D2239382C3639323935222057696474683D22363222204865696768
          743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
          7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222048416C69676E3D22686143656E
          746572222056416C69676E3D22766143656E7465722220546578743D22222F3E
          3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E
          3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
          225472756522204C6566743D223238372C37373935332220546F703D2239382C
          3639323935222057696474683D22383122204865696768743D22323222205265
          737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
          2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
          6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
          616D653D22417269616C2220466F6E742E5374796C653D223122204672616D65
          2E5479703D2231352220476170583D22332220476170593D2233222048416C69
          676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
          2056416C69676E3D22766143656E7465722220546578743D224772616E642054
          6F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65
          726D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F72
          4578706F72743D225472756522204C6566743D2232332C37373935332220546F
          703D2237362C3639323935222057696474683D2232303222204865696768743D
          22323222205265737472696374696F6E733D22382220416C6C6F774578707265
          7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
          70583D22332220476170593D2233222048416C69676E3D22686143656E746572
          222056416C69676E3D22766143656E7465722220546578743D22537479636B22
          2F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
          743D225472756522204C6566743D223232352C37373935332220546F703D2237
          362C3639323935222057696474683D2231343322204865696768743D22323222
          205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
          6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205641
          6C69676E3D22766143656E7465722220546578743D2255746C6173746164222F
          3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F7274
          3D225472756522204C6566743D22302220546F703D2230222057696474683D22
          3022204865696768743D223022205265737472696374696F6E733D2238222056
          697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E746572222056416C6967
          6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D2232332C37373935332220546F703D2239382C3639323935222057696474
          683D22393122204865696768743D22323222205265737472696374696F6E733D
          22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D22686143656E746572222056416C69676E3D22766143656E746572
          2220546578743D2250726F64756374436F6465222F3E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D223131342C37373935332220546F703D2239382C36393239352220576964
          74683D22363022204865696768743D22323222205265737472696374696F6E73
          3D22382220416C6C6F7745787072657373696F6E733D2246616C736522204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D22686143656E746572222056416C69676E3D22766143656E7465
          722220546578743D2250726F64756B74222F3E3C546672784D656D6F56696577
          20416C6C6F77566563746F724578706F72743D225472756522204C6566743D22
          3137342C37373935332220546F703D2239382C3639323935222057696474683D
          22353122204865696768743D22323222205265737472696374696F6E733D2238
          2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
          2E5479703D2231352220476170583D22332220476170593D2233222048416C69
          676E3D22686143656E746572222056416C69676E3D22766143656E7465722220
          546578743D224CC3A46E6764222F3E3C2F636F726E65726D656D6F733E3C726F
          776D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F72
          4578706F72743D225472756522204C6566743D2232332C37373935332220546F
          703D223132302C3639323935222057696474683D22393122204865696768743D
          22323222205265737472696374696F6E733D2232342220416C6C6F7745787072
          657373696F6E733D2246616C736522204672616D652E5479703D223135222047
          6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
          72222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
          6672784D656D6F5669657720416C6C6F77566563746F724578706F72743D2254
          72756522204C6566743D223131342C37373935332220546F703D223132302C36
          39323935222057696474683D22363022204865696768743D2232322220526573
          7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
          2246616C736522204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E746572222056416C6967
          6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D223137342C37373935332220546F703D223132302C363932393522205769
          6474683D22353122204865696768743D22323222205265737472696374696F6E
          733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
          7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74
          616C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D2232332C3737393533222054
          6F703D223134322C3639323935222057696474683D2232303222204865696768
          743D22323222205265737472696374696F6E733D22382220416C6C6F77457870
          72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
          2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
          332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
          223122204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
          743D2246616C7365222056416C69676E3D22766143656E746572222054657874
          3D224772616E6420546F74616C222F3E3C546672784D656D6F5669657720416C
          6C6F77566563746F724578706F72743D225472756522204C6566743D22363022
          20546F703D223636222057696474683D22353122204865696768743D22323222
          205265737472696374696F6E733D2238222056697369626C653D2246616C7365
          2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
          436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
          4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
          6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686143656E74657222
          20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
          6E7465722220546578743D22546F74616C222F3E3C546672784D656D6F566965
          7720416C6C6F77566563746F724578706F72743D225472756522204C6566743D
          223135312220546F703D223636222057696474683D2235312220486569676874
          3D22323222205265737472696374696F6E733D2238222056697369626C653D22
          46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
          466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
          466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
          616C2220466F6E742E5374796C653D223122204672616D652E5479703D223135
          2220476170583D22332220476170593D2233222048416C69676E3D2268614365
          6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
          22766143656E7465722220546578743D22546F74616C222F3E3C2F726F77746F
          74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F
          3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974
          656D20302F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C697465
          6D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C2F726F77736F7274
          3E3C2F63726F73733E}
      end
    end
  end
  object sq_ST_Del_Stat: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        #9'select pc.ProductCode, st.CustomerNo, st.ProductNo, st.Utlastad' +
        ', st.Produkt, st.L'#228'ngd, SUM(st.NoOfPcs) AS Styck  '
      #9'from  dbo.ST_Deliveries st'
      
        #9'Left join [dbo].[Product_code] pc on pc.ClientNo = st.CustomerN' +
        'o'
      #9'and pc.ProductNo = st.ProductNo'
      #9'and pc.ALMM = st.L'#228'ngd'
      #9'WHERE st.Utlastad >= '#39'2012-01-01'#39
      #9'and st.Utlastad <= '#39'2012-02-01'#39
      #9'and st.CustomerNo = 1'
      
        #9'Group By st.Utlastad, st.Produkt, st.L'#228'ngd, st.ProductNo, st.Cu' +
        'stomerNo, pc.ProductCode')
    Left = 928
    Top = 544
  end
  object mtuserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'UserID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Form'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'OrderTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'FilterOrderDate'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftTimeStamp
      end
      item
        Name = 'EndPeriod'
        DataType = ftTimeStamp
      end
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesPersonNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkSupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkKundNo'
        DataType = ftInteger
      end
      item
        Name = 'LOObjectType'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'BookingTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShowProduct'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Filter1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Filter2'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 176
    Top = 298
    object mtuserPropUserID: TIntegerField
      FieldName = 'UserID'
      Required = True
    end
    object mtuserPropForm: TStringField
      FieldName = 'Form'
      Required = True
      Size = 50
    end
    object mtuserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtuserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtuserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtuserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtuserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtuserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtuserPropRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
    end
    object mtuserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtuserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtuserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtuserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtuserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtuserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtuserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtuserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtuserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtuserPropMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtuserPropOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object mtuserPropStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtuserPropFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object mtuserPropStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
    end
    object mtuserPropEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
    end
    object mtuserPropClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtuserPropSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object mtuserPropVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object mtuserPropVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object mtuserPropLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object mtuserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtuserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtuserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtuserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtuserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtuserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtuserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtuserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtuserPropLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object mtuserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtuserPropBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
    end
    object mtuserPropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtuserPropShowProduct: TIntegerField
      FieldName = 'ShowProduct'
    end
    object mtuserPropName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object mtuserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtuserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
    object mtuserPropRoletype: TIntegerField
      FieldName = 'Roletype'
    end
  end
  object cds_SalesRegion: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct C.ClientNo,'
      '       C.ClientName'
      ''
      'FROM   dbo.Client c'
      'inner join dbo.ClientRole    R on R.ClientNo = C.ClientNo'
      ''
      ''
      'WHERE ((R.RoleType = 7)'
      'AND (C.OwnedBySalesRegionNo = :SalesRegionNo) '
      'AND (C.Act = 1))'
      'OR ((R.RoleType = 7) AND (C.Act = 1))'
      ''
      'Order By C.ClientName'
      '')
    Left = 40
    Top = 624
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 741
      end>
    object cds_SalesRegionClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_SalesRegionClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_StorageAreas: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select distinct area.AreaName, area.AreaID from PhysicalInventor' +
        'yPoint PIP'
      'join Area ON Area.PIPNo = PIP.PhysicalInventoryPointNo'
      'where PIP.OwnerNo = 741')
    Left = 152
    Top = 624
    object cds_StorageAreasAreaName: TStringField
      FieldName = 'AreaName'
      Origin = 'AreaName'
      Size = 50
    end
    object cds_StorageAreasAreaID: TIntegerField
      FieldName = 'AreaID'
      Origin = 'AreaID'
      Required = True
    end
  end
  object cds_StoragePos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select P.PositionName, PositionID, PosStatus from Position P whe' +
        're P.AreaID in (5)')
    Left = 256
    Top = 624
    object cds_StoragePosPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StoragePosPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
  end
  object cds_StorageGroups: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct RTRIM(CY.CityName)+'#39'/'#39'+RTRIM(LIP.LogicalInventor' +
        'yName)+'#39'/'#39'+RTRIM(C.ClientName)+ '#39'/'#39'+CAST(LIP.LogicalInventoryPoi' +
        'ntNo AS VARCHAR(6)) AS PLIP, '
      
        'LIP.LogicalInventoryPointNo AS LIPNo, PH.PhysicalInventoryPointN' +
        'o AS PIPNO, CY.CITYNAME,'
      'LIP.LogicalInventoryName, LIP.InvCode'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      
        'Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventor' +
        'yPointNo = PH.PhysicalInventoryPointNo'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo'
      'Inner Join dbo.Client C ON C.ClientNo = PH.OwnerNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND LIP.SequenceNo = 1'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  LIP.InvCode, LIP.LogicalInventoryName, CY.CITYNAME')
    Left = 360
    Top = 624
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cds_StorageGroupsPLIP: TStringField
      FieldName = 'PLIP'
      Origin = 'PLIP'
      ReadOnly = True
      Size = 56
    end
    object cds_StorageGroupsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_StorageGroupsPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
    object cds_StorageGroupsCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Origin = 'CITYNAME'
      Size = 50
    end
    object cds_StorageGroupsLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_StorageGroupsInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 5
    end
  end
  object fdTestConnection: TFDConnection
    ConnectionName = 'fdTestConnection'
    Params.Strings = (
      'Database=vis_vida'
      'User_Name=lars'
      'Password=woods2011'
      'OSAuthent=No'
      'Server=alvesql03'
      'DriverID=mSsQL')
    Left = 40
    Top = 552
  end
  object siLangLinked1: TsiLangLinked
    Version = '7.8.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 4
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
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
      'ListField')
    Left = 744
    Top = 465
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
  object sq_GridSets2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.GridSettings'
      'WHERE ViewName = :ViewName'
      'AND UserID = :UserID')
    Left = 440
    Top = 304
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
  object cxImageListPrinting: TcxImageList
    SourceDPI = 96
    Height = 24
    ImageType = itMask
    Width = 24
    FormatVersion = 1
    DesignInfo = 23135176
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000000C0000
          001200000014000000140000001500000015000000140000000D000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000009896256C2BD8A
          78FFBE8A78FFBD8A78FFBD8978FFBD8978FFBE8978FF876356C30000000B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000000E0000001500000021C08D7CFFF6EE
          E9FFF5EDE9FFF5EDE9FFF5ECE8FFF4ECE8FFF5ECE7FFBF8D7BFF000000260000
          00180000000F0000000400000000000000000000000000000000000000000000
          000000000000000000000000000C7B5042C5A76E5BFF9F6755FFC2917FFFF7F0
          ECFFE2B47DFFE2B37AFFE1B077FFE0AE72FFF6EEEAFFC2907FFF845545FF8958
          47FF613E32C70000000E00000000000000000000000000000000000000000000
          0000000000000000000000000011BB7E6BFFECD9CCFFE3CEBEFFC59483FFF9F2
          F0FFE4B984FFE3B781FFE3B47CFFE0B176FFF7F0EDFFC59483FFE0CBBCFFEBD8
          CBFFB67763FF0000001400000000000000000000000000000000000000000000
          0000000000000000000000000010BE8571FFF1E5DAFFECDBD0FF7A4835FF7A48
          35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FFEBDBCFFFF1E2
          D8FFB97C69FF0000001300000000000000000000000000000000000000000000
          000000000000000000000000000EC28B78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7
          DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5ED
          E6FFBC826EFF0000001200000000000000000000000000000000000000000000
          000000000000000000000000000CC7937FFFFAF4F1FFCDBEB8FF6F5448FF6143
          37FF614035FF5F3F34FF5E3F33FF5D3D32FF5D3D34FF6A4C44FFCABCB6FFF9F5
          F1FFC18875FF0000001000000000000000000000000000000000000000000000
          000000000000000000000000000ACC9986FFFDFAFAFF7D6054FF745043FF744F
          43FF744E43FF734E43FF734E42FF724D42FF724C41FF724C40FF73584DFFFDFA
          FAFFC58F7CFF0000000E00000000000000000000000000000000000000000000
          0000000000000000000000000008CF9F8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4
          F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5DEFFF6EFEBFF866253FF704F43FFFFFF
          FFFFCA9683FF0000000B00000000000000000000000000000000000000000000
          0000000000000000000000000005BE9584E9F5ECE8FF866656FF977262FFFAF6
          F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EA
          E6FFBA8E7DEA0000000800000000000000000000000000000000000000000000
          000000000000000000000000000234292545A78375CC947262FFA07B6AFFFCF9
          F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EAE3FFF9F5F3FF977263FF876658FFA680
          72CE342823480000000300000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000030000000AC89B89FFFDFB
          FAFFF5EDE8FFF4EDE8FFF5EDE7FFF5ECE7FFFBF7F6FFC59685FF000000110000
          0004000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005CA9E8DFFFEFC
          FCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EFEAFFFCFAF8FFC89A89FF000000090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003CDA291FFFEFE
          FDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFCFBFFFDFBFAFFCB9F8DFF000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000019A796DBFCFA4
          93FFCEA493FFCEA493FFCEA492FFCDA391FFCDA391FF98786BC1000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000003C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A0000000F0000
          00110000001100000011000000100000000B0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000090000000E000000168A6559C3BF8D7BFFBF8D
          7BFFC08D7BFFBF8D7BFFC08D7BFF8A6558C500000019000000100000000A0000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000007B5143C0A76E5BFFA06855FFC2917FFFF7F0ECFFF7EF
          ECFFF7F0EBFFF6EFEBFFF6EFEAFFC2917FFF875746FF8B5948FF623F33C20000
          000A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BB7E6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B9
          84FFE3B781FFE3B47CFFF8F1EDFFC49583FFE2CCBCFFE6D1C1FFB67764FF0000
          000E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BE8571FFF1E5DAFFEBDACFFF794734FF794734FF7847
          34FF784734FF784734FF784734FF784734FFECDACEFFEBDBCFFFBA7C69FF0000
          000D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C28B78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5
          DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7DEFFF2E7DDFFF2E5DEFFBD836FFF0000
          000C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C7937FFFFAF4F1FFCDBEB9FF72564AFF624338FF6140
          36FF604035FF5F3F34FF5E3E33FF414C3AFF315F45FF0D482AFF2F5538FF0621
          137A000100030000000000000000000000000000000000000000000000000000
          00000000000000000000CC9986FFFDFAFAFF806256FF745043FF744F43FF744E
          43FF734E42FF6F4D41FF265034FF13764BFF1AAC73FF52E1BAFF19AD73FF1376
          4BFF0C4026C90103020900000000000000000000000000000000000000000000
          00000000000000000000BB9080E9F5EBE6FF7D5C4DFF946E5EFFFAF6F3FFF0E6
          E0FFF0E5DFFF7D9D88FF218058FF28CD90FF27CD8FFF035A2AFF28CD90FF27CD
          8FFF22835AFF092F1C8400000000000000000000000000000000000000000000
          0000000000000000000034292444A68172CC886857FF9B7565FFFBF8F6FFF2E8
          E3FFF1E8E1FF317654FF30C18DFF32D49BFF33D49BFF57C4A0FF42D9A6FF33D4
          9BFF31C18DFF115837DE00000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000CC59685FFFCFAF9FFF3EB
          E6FFF4EAE5FF1C744CFF55DDB0FF3EDAA6FF3EDAA6FF02451DFF60C4A4FF3EDA
          A6FF56DDB1FF166E46F900000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008C89B89FFFDFCFBFFF5ED
          E8FFF4EDE8FF368B64FF8EDEC4FF4BE1B2FF79ECCBFF89F0D4FF013C18FF4BE1
          B2FF8BDDC3FF176B47DE00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000006CA9E8DFFFEFDFDFFFEFD
          FCFFFEFCFCFF91C4ADFF51A986FFACF5E0FF1D6341FF013413FF267250FFACF5
          E0FF57AE8BFF0E412B7B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000498786BC1CDA291FFCCA1
          8FFFCCA090FFCAA08EFF49946CFF50AF89FFA7E2CFFFCAF8ECFFA7E2CFFF50AE
          89FF176C49C00002010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000050000
          00050000000600000006000201090F432D741A7852CC219465FC1A7852CC0F43
          2E72000201030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0F0F4024242499353535E0353535E0242424990F0F
          0F40000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0F0F40303030CC3C3C3CFF00000000000000003C3C3CFF3030
          30CC0F0F0F400000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF00000000242424993C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF242424990000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF00000000353535E03C3C3CFF3C3C3CFF0000000000000000383838EF3C3C
          3CFF353535E00000000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000353535E03C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBF000000003C3C
          3CFF353535E00606061900000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000242424993C3C3CFF000000002D2D2DBF2D2D2DBF000000003C3C
          3CFF242424991414145400000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000F0F0F40303030CC383838EF0000000000000000383838EF3030
          30CC0F0F0F40262626A300000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFE1E1E1E7F0F0F0F4024242499353535E0353535E0242424990F0F
          0F401E1E1E7F3C3C3CFE00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFE262626A3141414540606061906060619141414542626
          26A3000000003C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A0000000F0000
          00110000001100000011000000100000000B0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000090000000E000000168A6559C3BF8D7BFFBF8D
          7BFFC08D7BFFBF8D7BFFC08D7BFF8A6558C500000019000000100000000A0000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000007B5143C0A76E5BFFA06855FFC2917FFFF7F0ECFFF7EF
          ECFFF7F0EBFFF6EFEBFFF6EFEAFFC2917FFF875746FF8B5948FF623F33C20000
          000A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BB7E6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B9
          84FFE3B781FFE3B47CFFF8F1EDFFC49583FFE2CCBCFFE6D1C1FFB67764FF0000
          000E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BE8571FFF1E5DAFFEBDACFFF794734FF794734FF7847
          34FF784734FF784734FF784734FF784734FFECDACEFFEBDBCFFFBA7C69FF0000
          000D000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C28B78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5
          DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7DEFFF2E7DDFFF2E5DEFFBD836FFF0000
          000C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C7937FFFFAF4F1FFCDBEB9FF72564AFF624338FF6140
          36FF604035FF5F3F34FF5F3E33FF6E4F47FFCCBDB6FFF7F0ECFFC18A76FF0000
          000A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000CC9986FFFDFAFAFF806256FF745043FF744F43FF744E
          43FF734E42FF724D42FF724C41FF724C40FF7A5C50FFFCF8F6FFC5917CFF0000
          0009000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BB9080E9F5EBE6FF7D5C4DFF564BADFF3737D1FF3334
          CDFF3131CBFF2F2FC9FF2B2BC5FF2929C4FF2626C2FF2425BFFF2222BCFF2020
          BBFF1E1EB8FF14147CAD00000000000000000000000000000000000000000000
          0000000000000000000034292444A68172CC886857FF3C3DD3FFFAF6F6FF3636
          D0FF3233CCFF3030CAFFF8F2F1FFF7F2EFFF6B69D1FF2526C2FFF6EEEBFF2121
          BCFF1F1FBBFF1D1EB9FF00000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000C3E3ED4FFFBF7F6FF3738
          D2FF3536D0FF3232CCFFF8F4F2FF2D2EC7FFF7F2EFFF2728C2FFF6F0ECFF2223
          BDFF2121BCFF1E1EB9FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000084040D7FFFBF8F7FFFBF7
          F6FF7574DCFF3435CDFFF9F5F2FF2F2FCAFFF8F3F0FF292AC4FFF6F1EEFFF6EF
          ECFF2222BDFF2020BBFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000064042D9FFFCF8F8FF3C3C
          D3FFFBF7F6FF3637D0FFFAF5F3FF3030CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526
          C2FF2323BFFF2121BCFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000044243D9FFFBFAF9FFFCF8
          F8FF7878DFFF3838D2FFFAF7F5FFFAF5F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2
          EFFFF6F0EDFF2222BDFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000012E2E94AE4242D8FF4040
          D7FF3D3ED4FF3A3AD3FF3737D0FF3435CDFF3132CBFF2F2FC9FF2B2CC7FF292A
          C4FF2727C2FF181982AD00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
