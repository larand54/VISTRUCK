object frmSortOrder: TfrmSortOrder
  Tag = 1
  Left = 193
  Top = 40
  Align = alClient
  Caption = 'Arbetsorders'
  ClientHeight = 860
  ClientWidth = 1157
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelAOMain: TPanel
    Left = 0
    Top = 0
    Width = 1157
    Height = 860
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pgMain: TcxPageControl
      Left = 0
      Top = 168
      Width = 1157
      Height = 652
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsAnalys
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      Properties.Images = ImageList1
      ClientRectBottom = 648
      ClientRectLeft = 4
      ClientRectRight = 1153
      ClientRectTop = 4
      object tsVeckoVy: TcxTabSheet
        Caption = 'tsVeckoVy'
        ImageIndex = 0
        object grdWorkOrder: TcxGrid
          Left = 0
          Top = 64
          Width = 1149
          Height = 561
          Align = alClient
          PopupMenu = pmAO
          TabOrder = 0
          object grdWorkOrderDBTableView1: TcxGridDBTableView
            OnDblClick = grdWorkOrderDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnInitEdit = grdWorkOrderDBTableView1InitEdit
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = ds_SortOrderList
            DataController.KeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '###,###,###.0'
                Kind = skSum
                FieldName = 'BookedAM1'
                Column = grdWorkOrderDBTableView1BookedAM1
              end
              item
                Format = '###,###,###.0'
                Kind = skSum
                FieldName = 'BookedNM3'
                Column = grdWorkOrderDBTableView1BookedNM3
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = grdWorkOrderDBTableView1StylesGetContentStyle
            object grdWorkOrderDBTableView1PRODUCENT: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUCENT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              Width = 64
            end
            object grdWorkOrderDBTableView1AGARE: TcxGridDBColumn
              Caption = #196'gare'
              DataBinding.FieldName = #196'GARE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              Width = 27
            end
            object grdWorkOrderDBTableView1SortingOrderNo: TcxGridDBColumn
              Caption = 'K'#246'rnr'
              DataBinding.FieldName = 'ID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Options.Filtering = False
              Width = 56
            end
            object grdWorkOrderDBTableView1Status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'TaskStatusField'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = dmsConnector.ilStatus
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                  Description = 'Prelimin'#228'r'
                  ImageIndex = 4
                  Value = 0
                end
                item
                  Description = 'Klar att k'#246'ra'
                  ImageIndex = 6
                  Value = 1
                end
                item
                  Description = 'P'#229'g'#229'ende'
                  ImageIndex = 1
                  Value = 2
                end
                item
                  Description = 'Avslutad'
                  ImageIndex = 2
                  Value = 3
                end
                item
                  Description = 'Godk'#228'nd'
                  ImageIndex = 7
                  Value = 4
                end
                item
                  Description = 'Outredd'
                  ImageIndex = 5
                  Value = 5
                end
                item
                  Description = 'Pause'
                  ImageIndex = 3
                  Value = 6
                end
                item
                  Description = 'Bokad'
                  Value = 7
                end
                item
                  Description = 'Sammanfogad'
                  ImageIndex = 8
                  Value = 8
                end>
              Properties.ReadOnly = True
              Width = 64
            end
            object grdWorkOrderDBTableView1OrgYearWeek: TcxGridDBColumn
              DataBinding.FieldName = 'OrgYearWeek'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 103
            end
            object grdWorkOrderDBTableView1YearWeek: TcxGridDBColumn
              DataBinding.FieldName = 'YearWeek'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 49
            end
            object grdWorkOrderDBTableView1Kund: TcxGridDBColumn
              DataBinding.FieldName = 'Kund'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 83
            end
            object grdWorkOrderDBTableView1LONR: TcxGridDBColumn
              DataBinding.FieldName = 'LONR'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
              Width = 77
            end
            object grdWorkOrderDBTableView1ProgramNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProgramNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdWorkOrderDBTableView1PlannedProductionTime: TcxGridDBColumn
              Caption = 'Planerad k'#246'rtid'
              DataBinding.FieldName = 'Duration'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Filtering = False
              Width = 99
            end
            object grdWorkOrderDBTableView1Frdigvara: TcxGridDBColumn
              DataBinding.FieldName = 'F'#228'rdigvara'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 147
            end
            object grdWorkOrderDBTableView1NM3PlanFardig: TcxGridDBColumn
              DataBinding.FieldName = 'NM3PlanFardig'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 93
            end
            object grdWorkOrderDBTableView1Utfall: TcxGridDBColumn
              DataBinding.FieldName = 'Utfall'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 67
            end
            object grdWorkOrderDBTableView1BookedNM3: TcxGridDBColumn
              Caption = 'Bokad NM3'
              DataBinding.FieldName = 'BookedNM3'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 75
            end
            object grdWorkOrderDBTableView1LAGERSTLLE: TcxGridDBColumn
              DataBinding.FieldName = 'LAGERST'#196'LLE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              VisibleForCustomization = False
              Width = 97
            end
            object grdWorkOrderDBTableView1LAGERGRUPP: TcxGridDBColumn
              DataBinding.FieldName = 'LAGERGRUPP'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              VisibleForCustomization = False
              Width = 65
            end
            object grdWorkOrderDBTableView1PRODENHET: TcxGridDBColumn
              Caption = 'M'#228'tpunkt'
              DataBinding.FieldName = 'PRODENHET'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              Width = 38
            end
            object grdWorkOrderDBTableView1RealProductionTime: TcxGridDBColumn
              Caption = 'Verklig k'#246'rtid'
              DataBinding.FieldName = 'RealStartTime'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Options.Filtering = False
              Width = 67
            end
            object grdWorkOrderDBTableView1StopTime: TcxGridDBColumn
              DataBinding.FieldName = 'StopTime'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Options.Filtering = False
              Width = 66
            end
            object grdWorkOrderDBTableView1StartTime: TcxGridDBColumn
              DataBinding.FieldName = 'Start'
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
              Options.Filtering = False
              Width = 81
            end
            object grdWorkOrderDBTableView1WeekNo: TcxGridDBColumn
              Caption = 'VECKA'
              DataBinding.FieldName = 'WeekNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdWorkOrderDBTableView1Rvara: TcxGridDBColumn
              DataBinding.FieldName = 'R'#229'vara'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 253
            end
            object grdWorkOrderDBTableView1TemplateName: TcxGridDBColumn
              Caption = 'Mallnamn'
              DataBinding.FieldName = 'TemplateName'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdWorkOrderDBTableView1EndTime: TcxGridDBColumn
              DataBinding.FieldName = 'Finish'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 40
            end
            object grdWorkOrderDBTableView1SurfacingBkgColor: TcxGridDBColumn
              DataBinding.FieldName = 'SurfacingBkgColor'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 22
            end
            object grdWorkOrderDBTableView1SurfacingTextColor: TcxGridDBColumn
              DataBinding.FieldName = 'SurfacingTextColor'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 22
            end
            object grdWorkOrderDBTableView1BookingNo: TcxGridDBColumn
              Caption = 'BokningID'
              DataBinding.FieldName = 'BookingNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 50
            end
            object grdWorkOrderDBTableView1BookedAM1: TcxGridDBColumn
              Caption = 'Bokad AM1'
              DataBinding.FieldName = 'BookedAM1'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 162
            end
            object grdWorkOrderDBTableView1LOS: TcxGridDBColumn
              Caption = 'LO'#39's'
              DataBinding.FieldName = 'LOS'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 151
            end
          end
          object grdWorkOrderLevel1: TcxGridLevel
            GridView = grdWorkOrderDBTableView1
          end
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 625
          Width = 1149
          Height = 19
          Panels = <>
          SimplePanel = True
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1149
          Height = 64
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel3: TPanel
            Left = 297
            Top = 0
            Width = 852
            Height = 64
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 852
              Height = 64
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 766
                Height = 64
                Align = alClient
                TabOrder = 0
                object dxBarDockControl3: TdxBarDockControl
                  Left = 1
                  Top = 1
                  Width = 764
                  Height = 41
                  Align = dalTop
                  BarManager = dxBarManager1
                end
              end
              object Panel8: TPanel
                Left = 787
                Top = 0
                Width = 65
                Height = 64
                Align = alRight
                TabOrder = 1
              end
              object Panel9: TPanel
                Left = 766
                Top = 0
                Width = 21
                Height = 64
                Align = alRight
                TabOrder = 2
              end
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 297
            Height = 64
            Align = alLeft
            Constraints.MaxWidth = 366
            Constraints.MinWidth = 297
            TabOrder = 1
            object cbShowAll: TcxCheckBox
              Left = 51
              Top = 34
              Caption = 'Visa alla'
              Properties.ImmediatePost = True
              Properties.OnChange = cbShowAllPropertiesChange
              TabOrder = 1
            end
            object seWeekNo: TcxSpinEdit
              Left = 54
              Top = 3
              ParentFont = False
              Properties.OnChange = seWeekNoPropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Value = 42
              Width = 69
            end
            object teAONr: TcxTextEdit
              Left = 219
              Top = 5
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyDown = teAONrKeyDown
              Width = 72
            end
            object cxLabel5: TcxLabel
              Left = 126
              Top = 11
              Caption = 'S'#246'k k'#246'rorder:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object cnShowTemplates: TcxCheckBox
              Left = 211
              Top = 32
              Caption = 'Visa mallar'
              Properties.ImmediatePost = True
              Properties.OnChange = cnShowTemplatesPropertiesChange
              TabOrder = 3
            end
            object cxLabel41: TcxLabel
              Left = 6
              Top = 11
              Caption = 'Vecka:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
          end
        end
      end
      object tsEditKorOrder: TcxTabSheet
        Caption = 'tsEditKorOrder'
        ImageIndex = 2
        object pgEditKorOrder: TcxPageControl
          Left = 0
          Top = 24
          Width = 1149
          Height = 620
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tsInstruktioner
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 616
          ClientRectLeft = 4
          ClientRectRight = 1145
          ClientRectTop = 24
          object tsInstruktioner: TcxTabSheet
            Caption = 'tsInstruktioner'
            ImageIndex = 1
            object cxPageControl2: TcxPageControl
              Left = 0
              Top = 0
              Width = 1141
              Height = 592
              Align = alClient
              TabOrder = 0
              Properties.ActivePage = tsHuvudinstruktioner
              Properties.CustomButtons.Buttons = <>
              Properties.Images = ImageList1
              ClientRectBottom = 588
              ClientRectLeft = 4
              ClientRectRight = 1137
              ClientRectTop = 25
              object tsHuvudinstruktioner: TcxTabSheet
                Caption = 'Huvudinstruktioner'
                ImageIndex = 0
                object PanelInstruktioner: TPanel
                  Left = 0
                  Top = 0
                  Width = 1133
                  Height = 563
                  Align = alClient
                  TabOrder = 0
                  DesignSize = (
                    1133
                    563)
                  object Label32: TLabel
                    Left = 344
                    Top = 310
                    Width = 126
                    Height = 13
                    Caption = 'Bunt storlek (bredd x h'#246'jd):'
                    Visible = False
                  end
                  object Label33: TLabel
                    Left = 56
                    Top = 56
                    Width = 129
                    Height = 13
                    Caption = 'Paketstorlek (bredd x h'#246'jd):'
                  end
                  object Label34: TLabel
                    Left = 376
                    Top = 48
                    Width = 67
                    Height = 13
                    Caption = 'Antal bindstr'#246':'
                  end
                  object Label36: TLabel
                    Left = 56
                    Top = 79
                    Width = 116
                    Height = 13
                    Caption = 'Antal band&&typ av band:'
                  end
                  object Label82: TLabel
                    Left = 376
                    Top = 103
                    Width = 89
                    Height = 13
                    Caption = 'Stycketal per bunt:'
                  end
                  object Label88: TLabel
                    Left = 56
                    Top = 284
                    Width = 62
                    Height = 13
                    Caption = 'Paketstorlek:'
                  end
                  object Label44: TLabel
                    Left = 56
                    Top = 238
                    Width = 45
                    Height = 13
                    Caption = 'Pakettyp:'
                  end
                  object Label89: TLabel
                    Left = 56
                    Top = 259
                    Width = 48
                    Height = 13
                    Caption = 'Truckstr'#246':'
                  end
                  object Label31: TLabel
                    Left = 376
                    Top = 261
                    Width = 32
                    Height = 13
                    Caption = 'FOHC:'
                  end
                  object Label37: TLabel
                    Left = 376
                    Top = 149
                    Width = 54
                    Height = 13
                    Caption = 'H'#246'rnskydd:'
                  end
                  object Label38: TLabel
                    Left = 57
                    Top = 125
                    Width = 60
                    Height = 13
                    Caption = 'Gradestamp:'
                  end
                  object Label43: TLabel
                    Left = 57
                    Top = 148
                    Width = 52
                    Height = 13
                    Caption = 'Streckkod:'
                  end
                  object Label45: TLabel
                    Left = 57
                    Top = 102
                    Width = 48
                    Height = 13
                    Caption = 'T'#228'ckning:'
                  end
                  object Label46: TLabel
                    Left = 376
                    Top = 172
                    Width = 59
                    Height = 13
                    Caption = 'Impregnerat:'
                  end
                  object Label47: TLabel
                    Left = 376
                    Top = 238
                    Width = 64
                    Height = 13
                    Caption = 'PET tolerans:'
                  end
                  object Label48: TLabel
                    Left = 666
                    Top = 8
                    Width = 68
                    Height = 13
                    Caption = 'Intern notering'
                  end
                  object Label87: TLabel
                    Left = 666
                    Top = 102
                    Width = 71
                    Height = 13
                    Caption = 'Extern notering'
                  end
                  object cbMiniBundle: TcxDBCheckBox
                    Left = 373
                    Top = 72
                    AutoSize = False
                    Caption = 'Buntat'
                    DataBinding.DataField = 'MiniBundle'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                    TabOrder = 14
                    Height = 21
                    Width = 164
                  end
                  object seMiniHeight: TcxDBSpinEdit
                    Left = 577
                    Top = 302
                    DataBinding.DataField = 'MiniBundleHeight'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    TabOrder = 28
                    Visible = False
                    Width = 49
                  end
                  object seMiniWidth: TcxDBSpinEdit
                    Left = 513
                    Top = 302
                    DataBinding.DataField = 'MiniBundleWidth'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    TabOrder = 29
                    Visible = False
                    Width = 49
                  end
                  object sePackageWidth: TcxDBSpinEdit
                    Left = 193
                    Top = 48
                    DataBinding.DataField = 'PackageWidth'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.OnChange = sePackageWidthPropertiesChange
                    Properties.OnValidate = sePackageWidthPropertiesValidate
                    TabOrder = 0
                    Width = 49
                  end
                  object sePackageHeight: TcxDBSpinEdit
                    Left = 257
                    Top = 48
                    DataBinding.DataField = 'PackageHeight'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.OnChange = sePackageHeightPropertiesChange
                    TabOrder = 1
                    Width = 49
                  end
                  object eNoOfSticks: TcxDBSpinEdit
                    Left = 489
                    Top = 40
                    DataBinding.DataField = 'MinNoOfSticks'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    TabOrder = 13
                    Width = 49
                  end
                  object seNoOfStraps: TcxDBSpinEdit
                    Left = 193
                    Top = 71
                    DataBinding.DataField = 'NoOfStraps'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    TabOrder = 3
                    Width = 49
                  end
                  object cbShrinkWrap: TcxDBCheckBox
                    Left = 373
                    Top = 118
                    AutoSize = False
                    Caption = 'Folierat'
                    DataBinding.DataField = 'ShrinkWrap'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                    TabOrder = 16
                    Height = 21
                    Width = 164
                  end
                  object spPcsPerMinitie: TcxDBSpinEdit
                    Left = 489
                    Top = 95
                    DataBinding.DataField = 'PiecesPerMiniBundle'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    TabOrder = 15
                    Width = 49
                  end
                  object lcPkgSize: TcxDBLookupComboBox
                    Left = 193
                    Top = 276
                    DataBinding.DataField = 'PkgSize'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'PackageSizeNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'PackageSizeName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 12
                    Width = 168
                  end
                  object lcPackageTypeName: TcxDBLookupComboBox
                    Left = 193
                    Top = 230
                    DataBinding.DataField = 'PackageTypeName'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'PackageTypeNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'PackageTypeName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 10
                    Width = 168
                  end
                  object lcTruckStro: TcxDBLookupComboBox
                    Left = 193
                    Top = 253
                    DataBinding.DataField = 'TruckStro'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ClearKey = 46
                    Properties.DropDownWidth = 250
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'TruckSticksNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'TruckSticks'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 11
                    Width = 168
                  end
                  object icStrapTypeNo: TcxDBImageComboBox
                    Left = 256
                    Top = 71
                    DataBinding.DataField = 'StrapTypeNo'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ClearKey = 46
                    Properties.ImmediatePost = True
                    Properties.Items = <
                      item
                        Description = 'St'#229'l'
                        Value = 1
                      end
                      item
                        Description = 'Plast'
                        ImageIndex = 0
                        Value = 0
                      end>
                    TabOrder = 4
                    Width = 105
                  end
                  object lcGradeStamp: TcxDBLookupComboBox
                    Left = 192
                    Top = 117
                    DataBinding.DataField = 'GradeStamp'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'GradeStampNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'GradeStamp'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 6
                    Width = 169
                  end
                  object lcBarCode: TcxDBLookupComboBox
                    Left = 192
                    Top = 140
                    DataBinding.DataField = 'BarCode'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'BarCodeNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'BarCode'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 7
                    Width = 169
                  end
                  object cbKD: TcxDBCheckBox
                    Left = 53
                    Top = 165
                    Caption = 'KD'
                    DataBinding.DataField = 'PET'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                    TabOrder = 8
                  end
                  object cbFJ: TcxDBCheckBox
                    Left = 373
                    Top = 189
                    Caption = 'Ska fingerskarvas'
                    DataBinding.DataField = 'FingerJoint'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                    TabOrder = 19
                  end
                  object cbPackageCut: TcxDBCheckBox
                    Left = 373
                    Top = 210
                    Caption = 'Paketkap till'#229'ten'
                    DataBinding.DataField = 'PackageCut'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = '1'
                    Properties.ValueUnchecked = '0'
                    TabOrder = 20
                  end
                  object ePETTolerance: TcxDBTextEdit
                    Left = 488
                    Top = 230
                    DataBinding.DataField = 'PET_Tolerance'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.LookupItems.Strings = (
                      'Hello'
                      'Now')
                    TabOrder = 21
                    Width = 142
                  end
                  object meFOHC: TcxDBMaskEdit
                    Left = 488
                    Top = 253
                    DataBinding.DataField = 'FOHCpercent'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.MaskKind = emkRegExprEx
                    Properties.EditMask = '\d+'
                    Properties.MaxLength = 0
                    TabOrder = 22
                    Width = 142
                  end
                  object lcPaperWrap: TcxDBLookupComboBox
                    Left = 192
                    Top = 94
                    DataBinding.DataField = 'PaperWrap'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'WrapTypeNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'WrapType'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 5
                    Width = 169
                  end
                  object lcCornProt: TcxDBLookupComboBox
                    Left = 488
                    Top = 141
                    DataBinding.DataField = 'CornProt'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'CornerProtectionNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'CornerProtection'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 17
                    Width = 145
                  end
                  object lcIMP: TcxDBLookupComboBox
                    Left = 488
                    Top = 164
                    DataBinding.DataField = 'IMP'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'ProductCategoryNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'ProductCategoryName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 18
                    Width = 145
                  end
                  object mNote: TcxDBMemo
                    Left = 664
                    Top = 24
                    Anchors = [akLeft, akTop, akRight]
                    DataBinding.DataField = 'Note'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    TabOrder = 23
                    Height = 72
                    Width = 477
                  end
                  object cxDBImage1: TcxDBImage
                    Left = 664
                    Top = 186
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    DataBinding.DataField = 'BILD'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Caption = 'Ingen bild'
                    Properties.FitMode = ifmProportionalStretch
                    Properties.GraphicClassName = 'TdxSmartImage'
                    TabOrder = 25
                    Height = 391
                    Width = 477
                  end
                  object mExternalNote: TcxDBMemo
                    Left = 664
                    Top = 116
                    Anchors = [akLeft, akTop, akRight]
                    DataBinding.DataField = 'ExternalNote'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    TabOrder = 24
                    Height = 63
                    Width = 477
                  end
                  object cxButton5: TcxButton
                    Left = 8
                    Top = 11
                    Width = 81
                    Height = 30
                    Action = acAddPI
                    OptionsImage.Glyph.SourceDPI = 96
                    OptionsImage.Glyph.Data = {
                      424D360400000000000036000000280000001000000010000000010020000000
                      000000000000C40E0000C40E00000000000000000000FF00FF00FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFF6B73FFFF3131
                      B5FF3131BDFF3131BDFF3131BDFF3131C6FF3131C6FF3131BDFF3131BDFF3131
                      B5FF3131B5FF3131ADFF3131A5FF6363FFFFFFFFFFFFFFFFFFFF3131C6FF3131
                      DEFF3131EFFF3131F7FF3131F7FF3131EFFF3131F7FF3131EFFF3131EFFF3131
                      EFFF3131E7FF3131DEFF3131C6FF31319CFFFFFFFFFFFFFFFFFF3131D6FF3131
                      EFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139
                      FFFF3139FFFF3131E7FF3131CEFF3131ADFFFFFFFFFFFFFFFFFF3131E7FF3139
                      FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3139FFFF3131F7FF3131DEFF3131B5FFFFFFFFFFFFFFFFFF3131EFFF3139
                      FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3139FFFF3139FFFF3131E7FF3131BDFFFFFFFFFFFFFFFFFF3139FFFF3139
                      FFFF3139FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3139FFFF3139FFFF3131EFFF3131C6FFFFFFFFFFFFFFFFFF3139FFFF3139
                      FFFF848CFFFF848CFFFF848CFFFF848CFFFFFFFFFFFF848CFFFF848CFFFF848C
                      FFFF848CFFFF3131F7FF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF3139
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF3942
                      FFFF3942FFFF3139FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3131F7FF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3139FFFF5252
                      FFFF5252FFFF3942FFFF3139FFFF3139FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3131F7FF3131EFFF3131EFFF3131CEFFFFFFFFFFFFFFFFFF3942FFFF6B6B
                      FFFF6363FFFF424AFFFF3942FFFF3942FFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3139FFFF3131F7FF3131F7FF3131CEFFFFFFFFFFFFFFFFFF5252FFFF848C
                      FFFF6B6BFFFF5252FFFF4A4AFFFF424AFFFFFFFFFFFF848CFFFF3139FFFF3139
                      FFFF3139FFFF3139FFFF3131F7FF3131CEFFFFFFFFFFFFFFFFFF6363FFFF9C9C
                      FFFF848CFFFF6B6BFFFF6363FFFF5252FFFF4A4AFFFF424AFFFF3942FFFF3139
                      FFFF3139FFFF3139FFFF3131F7FF3131BDFFFFFFFFFFFFFFFFFFC6CEFFFF6363
                      FFFF4A4AFFFF3942FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139FFFF3139
                      FFFF3139FFFF3131F7FF3131DEFF7B84FFFFFFFFFFFFFF00FF00FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00}
                    TabOrder = 26
                  end
                  object bCopyPI: TcxButton
                    Left = 89
                    Top = 11
                    Width = 156
                    Height = 30
                    Action = acCopyPItoMarkedRows
                    OptionsImage.Glyph.SourceDPI = 96
                    OptionsImage.Glyph.Data = {
                      424D360400000000000036000000280000001000000010000000010020000000
                      000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00B58C8CFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A
                      5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFF7EFDEFFF7EFDEFFF7EFDEFFF7EF
                      DEFFF7EFDEFFF7EFDEFFF7E7CEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00B58C8CFFF7EFDEFFF7DECEFFF7DEC6FFF7DEC6FFF7DE
                      C6FFF7DEC6FFEFDECEFFEFDECEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                      A5FFFFD6A5FFFFD6A5FFEFDECEFF8C5A5AFFFF00FF00FF00FF00B58C8CFF8C5A
                      5AFF8C5A5AFF8C5A5AFFB58C8CFFFFF7EFFFF7DEC6FFF7DEC6FFF7DEC6FFF7DE
                      C6FFF7DEBDFFF7E7CEFFEFDECEFF9C6B63FFFF00FF00FF00FF00B58C8CFFFFF7
                      E7FFF7EFDEFFF7EFDEFFB58C8CFFFFF7EFFFF7E7CEFFF7DEC6FFF7DEC6FFF7DE
                      C6FFF7DEC6FFF7E7D6FFEFDECEFF9C6B6BFFFF00FF00FF00FF00B58C8CFFF7EF
                      DEFFF7DECEFFF7DEC6FFB58C8CFFFFFFF7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                      A5FFFFD6A5FFFFD6A5FFEFE7D6FFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                      E7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFF7FFFFE7D6FFFFE7D6FFF7E7D6FFF7E7
                      CEFFFFE7D6FFFFF7E7FFEFDEDEFFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                      EFFFF7DEC6FFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                      F7FFEFDEDEFFD6C6C6FFBDADADFFB58473FFFF00FF00FF00FF00B58C8CFFFFF7
                      EFFFF7E7CEFFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                      F7FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFFF00FF00FF00FF00B58C8CFFFFFF
                      F7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFB58C8CFFEFB56BFFC68C7BFFFF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                      F7FFFFE7D6FFFFE7D6FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C
                      8CFFB58C8CFFBD8484FFFF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFEFDEDEFFD6C6C6FFBDADADFFB584
                      73FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFB58C8CFFB58C8CFFB58C8CFFB58C
                      8CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB58C8CFFEFB56BFFC68C7BFFFF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFB58C
                      8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFBD8484FFFF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                    TabOrder = 27
                  end
                  object cxLabel33: TcxLabel
                    Left = 312
                    Top = 28
                    Caption = 'St/Pkt'
                  end
                  object sePPP2: TcxDBSpinEdit
                    Left = 312
                    Top = 48
                    DataBinding.DataField = 'PPP'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 2
                    Width = 49
                  end
                  object rgCertifierad: TcxDBRadioGroup
                    Left = 56
                    Top = 188
                    Caption = 'Certifierad'
                    DataBinding.DataField = 'StressGrade'
                    DataBinding.DataSource = dmsSortOrder.ds_ProdInstruct
                    Properties.Columns = 4
                    Properties.ImmediatePost = True
                    Properties.Items = <
                      item
                        Caption = 'Nej'
                        Value = 0
                      end
                      item
                        Caption = 'PEFC'
                        Value = 1
                      end
                      item
                        Caption = 'FSC'
                        Value = 2
                      end
                      item
                        Caption = 'JAS'
                        Value = 3
                      end>
                    TabOrder = 9
                    Height = 39
                    Width = 303
                  end
                end
              end
              object tsTexter: TcxTabSheet
                Caption = 'Texter'
                ImageIndex = 3
                object PanelRowInfo: TPanel
                  Left = 0
                  Top = 0
                  Width = 1133
                  Height = 563
                  Align = alClient
                  Caption = 'PanelRowInfo'
                  TabOrder = 0
                  object PanelKorOrderInfo: TPanel
                    Left = 1
                    Top = 1
                    Width = 1131
                    Height = 561
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'PanelKorOrderInfo'
                    TabOrder = 0
                    object Panel11: TPanel
                      Left = 0
                      Top = 0
                      Width = 561
                      Height = 561
                      Align = alLeft
                      BevelOuter = bvNone
                      Caption = 'Panel11'
                      TabOrder = 0
                      object Panel17: TPanel
                        Left = 0
                        Top = 0
                        Width = 561
                        Height = 33
                        Align = alTop
                        BevelOuter = bvNone
                        Color = clOlive
                        TabOrder = 0
                        object cxButton35: TcxButton
                          Left = 8
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetBoldRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 0
                        end
                        object cxButton36: TcxButton
                          Left = 194
                          Top = 3
                          Width = 65
                          Height = 25
                          Action = acSetNormalTextRavara
                          TabOrder = 7
                        end
                        object cxButton37: TcxButton
                          Left = 34
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetKursivRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF8484
                            84FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 1
                        end
                        object cxButton38: TcxButton
                          Left = 60
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetUnderlineRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00848484FF000000FF000000FF000000FF000000FF000000FF8484
                            84FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF848484FFFF00FF00848484FF000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 2
                        end
                        object cxButton39: TcxButton
                          Left = 86
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetColorRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00C600FF00C600FFCE6363FFFFFF00FFC6C600FFC6C600FFCE63
                            63FFFF42FFFFC600C6FFC600C6FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00FF00FF00C600FFCE6363FFFFFF00FFFFFF00FFC6C600FFCE63
                            63FFFF42FFFFFF42FFFFC600C6FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00FF00FF00FF00FFCE6363FFFFFF00FFFFFF00FFFFFF00FFCE63
                            63FFFF42FFFFFF42FFFFFF42FFFFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF848484FF848484FFCE6363FFFFFFFFFFC6C6C6FFC6C6C6FFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF9CADADFF848484FFCE6363FFFFFFFFFFFFFFFFFFC6C6C6FFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF9CADADFF9CADADFFCE6363FFFFFFFFFFFFFFFFFFFFFFFFFFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000C6FF0000C6FFCE6363FF00FFFFFF00C6C6FF00C6C6FFCE63
                            63FFFF0000FFC60000FFC60000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000FFFF0000C6FFCE6363FF00FFFFFF00FFFFFF00C6C6FFCE63
                            63FFFF0000FFFF0000FFC60000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000FFFF0000FFFFCE6363FF00FFFFFF00FFFFFF00FFFFFFCE63
                            63FFFF0000FFFF0000FFFF0000FFAD5A5AFFFF00FF00FF00FF00FF00FF00CE63
                            63FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFCE6363FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 3
                        end
                        object cxButton40: TcxButton
                          Left = 112
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetFontRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFA54210FFA54210FFA542
                            10FFA54210FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFBD6B29FFFF00FF00FF00
                            FF00FF00FF00FF00FF00A54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFBD6B29FFFF00
                            FF00FF00FF00FF00FF00A54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFA542
                            10FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA542
                            10FFBD6B29FFFF00FF00A54210FFA54210FFFF00FF00FF00FF00000000FFFF00
                            FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF00BD6B29FFA542
                            10FFA54210FFBD6B29FFA54210FFA54210FFFF00FF00FF00FF00000000FF8484
                            84FFFF00FF00848484FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00BD6B
                            29FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00848484FF0000
                            00FF000000FF000000FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00BD6B29FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00FF000000
                            00FFFF00FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00BD6B29FFA54210FFA54210FFFF00FF00FF00FF00FF00FF000000
                            00FFFF00FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
                            84FF000000FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 4
                        end
                        object cxButton47: TcxButton
                          Left = 164
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acPasteTextRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00299CDEFF299CDEFFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B
                            73FFA57B73FFA57B73FFA57B73FFA57B73FFFF00FF00FF00FF00FF00FF00299C
                            DEFF8CD6EFFF84D6F7FFCEC6BDFFFFEFDEFFF7EFE7FFF7EFDEFFF7EFDEFFF7EF
                            DEFFF7EFDEFFF7EFDEFFF7EFDEFFA57B73FFFF00FF00FF00FF00299CDEFFA5E7
                            FFFF94EFFFFF8CF7FFFFCEC6BDFFF7E7D6FFF7E7D6FFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFA5E7
                            FFFF94EFFFFF84EFFFFFCEC6BDFFF7E7DEFFFFE7CEFFF7DEBDFFF7DEBDFFF7DE
                            BDFFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFADEF
                            FFFFA5EFFFFF94EFFFFFCEC6BDFFF7E7E7FFF7E7D6FFF7DEC6FFF7DEC6FFF7DE
                            BDFFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFB5EF
                            FFFFADEFFFFFA5EFFFFFCEC6BDFFF7EFE7FFF7EFDEFFFFE7CEFFFFE7CEFFFFE7
                            CEFFF7DEC6FFF7E7D6FFEFE7DEFFA57B73FFFF00FF00FF00FF00299CDEFFBDEF
                            FFFFBDF7FFFFADF7FFFFCEC6BDFFFFF7EFFFFFE7CEFFFFDEBDFFF7DEBDFFF7DE
                            BDFFFFDEB5FFF7DEC6FFF7EFE7FFA57B73FFFF00FF00FF00FF00299CDEFFC6EF
                            FFFFCEF7FFFFBDF7FFFFCEC6BDFFFFF7F7FFFFF7EFFFF7EFE7FFF7EFE7FFF7EF
                            DEFFF7EFDEFFF7EFE7FFEFE7DEFFA57B73FFFF00FF00FF00FF00299CDEFFCEEF
                            FFFFDEF7FFFFCEF7FFFFCEC6BDFFFFF7F7FFFFFFFFFFFFFFFFFFFFF7F7FFF7F7
                            F7FFEFE7DEFFD6BDB5FFC6ADA5FFA57B73FFFF00FF00FF00FF00299CDEFFCEEF
                            FFFFE7FFFFFFDEF7FFFFCEC6BDFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFDECEC6FFE7AD73FFC6AD8CFFFF00FF00FF00FF00FF00FF00299CDEFFD6F7
                            FFFFF7FFFFFFE7FFFFFFCEC6BDFFFFEFE7FFFFF7EFFFFFF7EFFFFFEFEFFFFFF7
                            EFFFE7C6BDFFC6AD8CFF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFFFFFFFFFF7FFFFFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6
                            BDFFCEC6BDFF84C6DEFF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFF7F7F7FFADC6CEFFA5C6CEFFA5C6CEFFA5C6CEFFA5C6CEFFA5C6CEFFB5D6
                            D6FFDEFFFFFF84D6F7FF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFDECEC6FFBDA59CFFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFBD9C
                            94FFE7EFE7FF94DEF7FF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00299C
                            DEFFB5D6E7FF949C9CFFE7DED6FFF7E7D6FFF7E7D6FFF7E7D6FFCEC6BDFF849C
                            A5FF8CCEE7FF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00299CDEFF299CDEFF9C948CFF9C948CFF9C948CFF9C948CFF9C948CFF299C
                            DEFF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 6
                        end
                        object cxButton49: TcxButton
                          Left = 138
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acCopyTextRavara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A
                            5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFF7EFDEFFF7EFDEFFF7EFDEFFF7EF
                            DEFFF7EFDEFFF7EFDEFFF7E7CEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFF7EFDEFFF7DECEFFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEC6FFEFDECEFFEFDECEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                            A5FFFFD6A5FFFFD6A5FFEFDECEFF8C5A5AFFFF00FF00FF00FF00B58C8CFF8C5A
                            5AFF8C5A5AFF8C5A5AFFB58C8CFFFFF7EFFFF7DEC6FFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEBDFFF7E7CEFFEFDECEFF9C6B63FFFF00FF00FF00FF00B58C8CFFFFF7
                            E7FFF7EFDEFFF7EFDEFFB58C8CFFFFF7EFFFF7E7CEFFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEC6FFF7E7D6FFEFDECEFF9C6B6BFFFF00FF00FF00FF00B58C8CFFF7EF
                            DEFFF7DECEFFF7DEC6FFB58C8CFFFFFFF7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                            A5FFFFD6A5FFFFD6A5FFEFE7D6FFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                            E7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFF7FFFFE7D6FFFFE7D6FFF7E7D6FFF7E7
                            CEFFFFE7D6FFFFF7E7FFEFDEDEFFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                            EFFFF7DEC6FFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                            F7FFEFDEDEFFD6C6C6FFBDADADFFB58473FFFF00FF00FF00FF00B58C8CFFFFF7
                            EFFFF7E7CEFFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                            F7FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFFF00FF00FF00FF00B58C8CFFFFFF
                            F7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFB58C8CFFEFB56BFFC68C7BFFFF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            F7FFFFE7D6FFFFE7D6FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C
                            8CFFB58C8CFFBD8484FFFF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFEFDEDEFFD6C6C6FFBDADADFFB584
                            73FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFB58C8CFFB58C8CFFB58C8CFFB58C
                            8CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB58C8CFFEFB56BFFC68C7BFFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFB58C
                            8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFBD8484FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 5
                        end
                      end
                      object cxDBRichEdit_Comments: TcxDBRichEdit
                        Left = 0
                        Top = 33
                        Align = alClient
                        DataBinding.DataField = 'Comments'
                        DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                        ParentFont = False
                        Properties.ScrollBars = ssBoth
                        Style.Font.Charset = DEFAULT_CHARSET
                        Style.Font.Color = clWindowText
                        Style.Font.Height = -16
                        Style.Font.Name = 'MS Sans Serif'
                        Style.Font.Style = []
                        Style.IsFontAssigned = True
                        TabOrder = 1
                        Height = 528
                        Width = 561
                      end
                    end
                    object Panel13: TPanel
                      Left = 561
                      Top = 0
                      Width = 570
                      Height = 561
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'Panel13'
                      TabOrder = 1
                      object Panel28: TPanel
                        Left = 0
                        Top = 0
                        Width = 570
                        Height = 33
                        Align = alTop
                        BevelOuter = bvNone
                        Color = 57825
                        TabOrder = 0
                        object cxButton41: TcxButton
                          Left = 8
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetBoldFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00FF00FF00000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF000000FFFF00FF00848484FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 0
                        end
                        object cxButton42: TcxButton
                          Left = 34
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetKursivFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF848484FFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00848484FF000000FF000000FFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF8484
                            84FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FF000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 1
                        end
                        object cxButton43: TcxButton
                          Left = 60
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetUnderlineFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00848484FF000000FF000000FF000000FF000000FF000000FF8484
                            84FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FF848484FFFF00FF00848484FF000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00000000FF000000FFFF00FF00FF00FF00FF00FF00000000FF0000
                            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FF000000FF000000FF000000FFFF00FF00000000FF000000FF0000
                            00FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 2
                        end
                        object cxButton44: TcxButton
                          Left = 86
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetColorFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00C600FF00C600FFCE6363FFFFFF00FFC6C600FFC6C600FFCE63
                            63FFFF42FFFFC600C6FFC600C6FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00FF00FF00C600FFCE6363FFFFFF00FFFFFF00FFC6C600FFCE63
                            63FFFF42FFFFFF42FFFFC600C6FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF00FF00FF00FF00FF00FF00FFCE6363FFFFFF00FFFFFF00FFFFFF00FFCE63
                            63FFFF42FFFFFF42FFFFFF42FFFFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF848484FF848484FFCE6363FFFFFFFFFFC6C6C6FFC6C6C6FFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF9CADADFF848484FFCE6363FFFFFFFFFFFFFFFFFFC6C6C6FFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF9CADADFF9CADADFF9CADADFFCE6363FFFFFFFFFFFFFFFFFFFFFFFFFFCE63
                            63FF000000FF000000FF000000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000C6FF0000C6FFCE6363FF00FFFFFF00C6C6FF00C6C6FFCE63
                            63FFFF0000FFC60000FFC60000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000FFFF0000C6FFCE6363FF00FFFFFF00FFFFFF00C6C6FFCE63
                            63FFFF0000FFFF0000FFC60000FFAD5A5AFFFF00FF00FF00FF00FF00FF00BD7B
                            73FF0000FFFF0000FFFF0000FFFFCE6363FF00FFFFFF00FFFFFF00FFFFFFCE63
                            63FFFF0000FFFF0000FFFF0000FFAD5A5AFFFF00FF00FF00FF00FF00FF00CE63
                            63FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE6363FFCE63
                            63FFCE6363FFCE6363FFCE6363FFCE6363FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 3
                        end
                        object cxButton45: TcxButton
                          Left = 112
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acSetFontFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFA54210FFA54210FFA542
                            10FFA54210FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00
                            FF00FF00FF00A54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFBD6B29FFFF00FF00FF00
                            FF00FF00FF00FF00FF00A54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFBD6B29FFFF00
                            FF00FF00FF00FF00FF00A54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA54210FFA542
                            10FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD6B29FFA54210FFA542
                            10FFBD6B29FFFF00FF00A54210FFA54210FFFF00FF00FF00FF00000000FFFF00
                            FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00FF00BD6B29FFA542
                            10FFA54210FFBD6B29FFA54210FFA54210FFFF00FF00FF00FF00000000FF8484
                            84FFFF00FF00848484FF000000FFFF00FF00FF00FF00FF00FF00FF00FF00BD6B
                            29FFA54210FFA54210FFA54210FFA54210FFFF00FF00FF00FF00848484FF0000
                            00FF000000FF000000FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00BD6B29FFA54210FFA54210FFA54210FFFF00FF00FF00FF00FF00FF000000
                            00FFFF00FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00BD6B29FFA54210FFA54210FFFF00FF00FF00FF00FF00FF000000
                            00FFFF00FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
                            84FF000000FF848484FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 4
                        end
                        object cxButton46: TcxButton
                          Left = 194
                          Top = 3
                          Width = 65
                          Height = 25
                          Action = acSetNormalTextFardigvara
                          TabOrder = 7
                        end
                        object cxButton48: TcxButton
                          Left = 164
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acPasteTextFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00299CDEFF299CDEFFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B
                            73FFA57B73FFA57B73FFA57B73FFA57B73FFFF00FF00FF00FF00FF00FF00299C
                            DEFF8CD6EFFF84D6F7FFCEC6BDFFFFEFDEFFF7EFE7FFF7EFDEFFF7EFDEFFF7EF
                            DEFFF7EFDEFFF7EFDEFFF7EFDEFFA57B73FFFF00FF00FF00FF00299CDEFFA5E7
                            FFFF94EFFFFF8CF7FFFFCEC6BDFFF7E7D6FFF7E7D6FFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFA5E7
                            FFFF94EFFFFF84EFFFFFCEC6BDFFF7E7DEFFFFE7CEFFF7DEBDFFF7DEBDFFF7DE
                            BDFFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFADEF
                            FFFFA5EFFFFF94EFFFFFCEC6BDFFF7E7E7FFF7E7D6FFF7DEC6FFF7DEC6FFF7DE
                            BDFFF7DEBDFFF7DEC6FFF7E7D6FFA57B73FFFF00FF00FF00FF00299CDEFFB5EF
                            FFFFADEFFFFFA5EFFFFFCEC6BDFFF7EFE7FFF7EFDEFFFFE7CEFFFFE7CEFFFFE7
                            CEFFF7DEC6FFF7E7D6FFEFE7DEFFA57B73FFFF00FF00FF00FF00299CDEFFBDEF
                            FFFFBDF7FFFFADF7FFFFCEC6BDFFFFF7EFFFFFE7CEFFFFDEBDFFF7DEBDFFF7DE
                            BDFFFFDEB5FFF7DEC6FFF7EFE7FFA57B73FFFF00FF00FF00FF00299CDEFFC6EF
                            FFFFCEF7FFFFBDF7FFFFCEC6BDFFFFF7F7FFFFF7EFFFF7EFE7FFF7EFE7FFF7EF
                            DEFFF7EFDEFFF7EFE7FFEFE7DEFFA57B73FFFF00FF00FF00FF00299CDEFFCEEF
                            FFFFDEF7FFFFCEF7FFFFCEC6BDFFFFF7F7FFFFFFFFFFFFFFFFFFFFF7F7FFF7F7
                            F7FFEFE7DEFFD6BDB5FFC6ADA5FFA57B73FFFF00FF00FF00FF00299CDEFFCEEF
                            FFFFE7FFFFFFDEF7FFFFCEC6BDFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFDECEC6FFE7AD73FFC6AD8CFFFF00FF00FF00FF00FF00FF00299CDEFFD6F7
                            FFFFF7FFFFFFE7FFFFFFCEC6BDFFFFEFE7FFFFF7EFFFFFF7EFFFFFEFEFFFFFF7
                            EFFFE7C6BDFFC6AD8CFF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFFFFFFFFFF7FFFFFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6BDFFCEC6
                            BDFFCEC6BDFF84C6DEFF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFF7F7F7FFADC6CEFFA5C6CEFFA5C6CEFFA5C6CEFFA5C6CEFFA5C6CEFFB5D6
                            D6FFDEFFFFFF84D6F7FF299CDEFFFF00FF00FF00FF00FF00FF00299CDEFFDEF7
                            FFFFDECEC6FFBDA59CFFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFBD9C
                            94FFE7EFE7FF94DEF7FF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00299C
                            DEFFB5D6E7FF949C9CFFE7DED6FFF7E7D6FFF7E7D6FFF7E7D6FFCEC6BDFF849C
                            A5FF8CCEE7FF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                            FF00299CDEFF299CDEFF9C948CFF9C948CFF9C948CFF9C948CFF9C948CFF299C
                            DEFF299CDEFFFF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 6
                        end
                        object cxButton50: TcxButton
                          Left = 138
                          Top = 3
                          Width = 26
                          Height = 25
                          Action = acCopyTextFardigvara
                          OptionsImage.Glyph.SourceDPI = 96
                          OptionsImage.Glyph.Data = {
                            424D360400000000000036000000280000001000000010000000010020000000
                            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A
                            5AFF8C5A5AFF8C5A5AFF8C5A5AFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFF7EFDEFFF7EFDEFFF7EFDEFFF7EF
                            DEFFF7EFDEFFF7EFDEFFF7E7CEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFF7EFDEFFF7DECEFFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEC6FFEFDECEFFEFDECEFF8C5A5AFFFF00FF00FF00FF00FF00FF00FF00
                            FF00FF00FF00FF00FF00B58C8CFFFFF7E7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                            A5FFFFD6A5FFFFD6A5FFEFDECEFF8C5A5AFFFF00FF00FF00FF00B58C8CFF8C5A
                            5AFF8C5A5AFF8C5A5AFFB58C8CFFFFF7EFFFF7DEC6FFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEBDFFF7E7CEFFEFDECEFF9C6B63FFFF00FF00FF00FF00B58C8CFFFFF7
                            E7FFF7EFDEFFF7EFDEFFB58C8CFFFFF7EFFFF7E7CEFFF7DEC6FFF7DEC6FFF7DE
                            C6FFF7DEC6FFF7E7D6FFEFDECEFF9C6B6BFFFF00FF00FF00FF00B58C8CFFF7EF
                            DEFFF7DECEFFF7DEC6FFB58C8CFFFFFFF7FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
                            A5FFFFD6A5FFFFD6A5FFEFE7D6FFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                            E7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFF7FFFFE7D6FFFFE7D6FFF7E7D6FFF7E7
                            CEFFFFE7D6FFFFF7E7FFEFDEDEFFA57B73FFFF00FF00FF00FF00B58C8CFFFFF7
                            EFFFF7DEC6FFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                            F7FFEFDEDEFFD6C6C6FFBDADADFFB58473FFFF00FF00FF00FF00B58C8CFFFFF7
                            EFFFF7E7CEFFF7DEC6FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF
                            F7FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFFF00FF00FF00FF00B58C8CFFFFFF
                            F7FFFFD6A5FFFFD6A5FFB58C8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                            FFFFB58C8CFFEFB56BFFC68C7BFFFF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            F7FFFFE7D6FFFFE7D6FFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C
                            8CFFB58C8CFFBD8484FFFF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFEFDEDEFFD6C6C6FFBDADADFFB584
                            73FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF7FFB58C8CFFB58C8CFFB58C8CFFB58C
                            8CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFFFFF
                            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB58C8CFFEFB56BFFC68C7BFFFF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8CFFB58C
                            8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFB58C8CFFBD8484FFFF00FF00FF00
                            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                          TabOrder = 5
                        end
                        object cxButton54: TcxButton
                          Left = 266
                          Top = 3
                          Width = 119
                          Height = 25
                          Action = acCopyLOInternalNoteToHyvelInfo
                          TabOrder = 8
                        end
                      end
                      object reHyvelInfo: TcxDBRichEdit
                        Left = 0
                        Top = 33
                        Align = alClient
                        DataBinding.DataField = 'HyvelInfo'
                        DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                        ParentFont = False
                        Properties.ScrollBars = ssBoth
                        Style.Font.Charset = DEFAULT_CHARSET
                        Style.Font.Color = clWindowText
                        Style.Font.Height = -16
                        Style.Font.Name = 'MS Sans Serif'
                        Style.Font.Style = []
                        Style.IsFontAssigned = True
                        TabOrder = 1
                        Height = 528
                        Width = 570
                      end
                    end
                  end
                end
              end
              object tsProduktrad: TcxTabSheet
                Caption = 'Produktrad'
                ImageIndex = 1
                object Panel12: TPanel
                  Left = 0
                  Top = 0
                  Width = 1133
                  Height = 563
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label78: TLabel
                    Left = 589
                    Top = 184
                    Width = 31
                    Height = 13
                    Caption = 'Spr'#229'k:'
                  end
                  object Label27: TLabel
                    Left = 599
                    Top = 208
                    Width = 21
                    Height = 13
                    Caption = 'Dim:'
                  end
                  object Label76: TLabel
                    Left = 587
                    Top = 232
                    Width = 33
                    Height = 13
                    Caption = 'L'#228'ngd:'
                  end
                  object Label77: TLabel
                    Left = 589
                    Top = 256
                    Width = 31
                    Height = 13
                    Caption = 'Volym:'
                  end
                  object cxLabel8: TcxLabel
                    Left = 8
                    Top = 236
                    Caption = 'Produkt:'
                  end
                  object lcLggare: TcxDBLookupComboBox
                    Left = 80
                    Top = 8
                    DataBinding.DataField = 'L'#228'ggare'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'StackerNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'StackerName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    TabOrder = 0
                    OnEnter = lcLggareEnter
                    OnExit = lcLggareExit
                    Width = 145
                  end
                  object cxLabel9: TcxLabel
                    Left = 8
                    Top = 12
                    Caption = 'L'#228'ggare:'
                  end
                  object sePPP: TcxDBSpinEdit
                    Left = 80
                    Top = 80
                    DataBinding.DataField = 'PPP'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 3
                    OnExit = sePPPExit
                    Width = 121
                  end
                  object cxLabel10: TcxLabel
                    Left = 8
                    Top = 84
                    Caption = 'St/Pkt:'
                  end
                  object cbUrlagg: TcxDBCheckBox
                    Left = 80
                    Top = 104
                    Caption = 'Url'#228'gg'
                    DataBinding.DataField = 'Urlagg'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    TabOrder = 4
                    OnExit = cbUrlaggExit
                  end
                  object cbEndPkgAllowed: TcxDBCheckBox
                    Left = 152
                    Top = 104
                    Caption = 'Slutpaket'
                    DataBinding.DataField = 'EndPkgAllowed'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    TabOrder = 5
                    OnExit = cbEndPkgAllowedExit
                  end
                  object sePrio: TcxDBSpinEdit
                    Left = 80
                    Top = 176
                    DataBinding.DataField = 'Prio'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 9
                    Width = 121
                  end
                  object cxLabel17: TcxLabel
                    Left = 8
                    Top = 180
                    Caption = 'Prio:'
                  end
                  object teNotering: TcxDBTextEdit
                    Left = 80
                    Top = 128
                    DataBinding.DataField = 'Notering'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 7
                    OnExit = teNoteringExit
                    Width = 257
                  end
                  object cxLabel22: TcxLabel
                    Left = 8
                    Top = 132
                    Caption = 'Notering:'
                  end
                  object teStickRecipe: TcxDBTextEdit
                    Left = 80
                    Top = 152
                    DataBinding.DataField = 'StickRecipe'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 8
                    OnExit = teStickRecipeExit
                    Width = 257
                  end
                  object cxLabel23: TcxLabel
                    Left = 8
                    Top = 156
                    Caption = 'Str'#246'recept:'
                  end
                  object cxLabel25: TcxLabel
                    Left = 8
                    Top = 36
                    Caption = 'L'#228'ngd:'
                  end
                  object cxLabel26: TcxLabel
                    Left = 8
                    Top = 60
                    Caption = 'L'#228'ngdbesk:'
                  end
                  object teLengthDescription: TcxDBTextEdit
                    Left = 80
                    Top = 56
                    DataBinding.DataField = 'LengthDescription'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ReadOnly = False
                    TabOrder = 2
                    Width = 257
                  end
                  object LabelProdukt: TcxDBLabel
                    Left = 78
                    Top = 232
                    DataBinding.DataField = 'Produkt'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    ParentColor = False
                    Style.Color = clWhite
                    Height = 23
                    Width = 443
                  end
                  object cbMCClassNo: TcxDBCheckBox
                    Left = 240
                    Top = 104
                    Caption = 'Hyvlas ej'
                    DataBinding.DataField = 'MCClassNo'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    TabOrder = 6
                    OnExit = cbMCClassNoExit
                  end
                  object tePlannedAM3: TcxDBTextEdit
                    Left = 400
                    Top = 160
                    DataBinding.DataField = 'PlannedAM3'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 16
                    OnExit = tePlannedAM3Exit
                    Width = 121
                  end
                  object cxLabel11: TcxLabel
                    Left = 344
                    Top = 164
                    Caption = 'Plan.AM3:'
                  end
                  object tePkgPrefix: TcxDBTextEdit
                    Left = 400
                    Top = 112
                    DataBinding.DataField = 'PkgPrefix'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.MaxLength = 5
                    TabOrder = 14
                    OnExit = tePkgPrefixExit
                    Width = 121
                  end
                  object cxLabel12: TcxLabel
                    Left = 344
                    Top = 116
                    Caption = 'Prefix:'
                  end
                  object teNoOfUnits: TcxDBTextEdit
                    Left = 400
                    Top = 136
                    DataBinding.DataField = 'NoOfUnits'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.MaxLength = 5
                    TabOrder = 15
                    OnExit = teNoOfUnitsExit
                    Width = 121
                  end
                  object cxLabel13: TcxLabel
                    Left = 344
                    Top = 140
                    Caption = 'Paket:'
                  end
                  object tePrice: TcxDBTextEdit
                    Left = 400
                    Top = 8
                    DataBinding.DataField = 'Price'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.MaxLength = 5
                    TabOrder = 11
                    OnExit = tePriceExit
                    Width = 121
                  end
                  object cxLabel14: TcxLabel
                    Left = 344
                    Top = 12
                    Caption = 'Pris:'
                  end
                  object lcPrisenhet: TcxDBLookupComboBox
                    Left = 400
                    Top = 32
                    DataBinding.DataField = 'Prisenhet'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'TemplateUnitNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'TemplateUnitName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    TabOrder = 12
                    OnExit = lcPrisenhetExit
                    Width = 123
                  end
                  object cxLabel15: TcxLabel
                    Left = 344
                    Top = 36
                    Caption = 'Prisenhet:'
                  end
                  object lcPrislista: TcxDBLookupComboBox
                    Left = 400
                    Top = 56
                    DataBinding.DataField = 'Prislista'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'TemplateNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'PriceListName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    TabOrder = 13
                    Visible = False
                    OnExit = lcPrislistaExit
                    Width = 123
                  end
                  object cxLabel16: TcxLabel
                    Left = 344
                    Top = 60
                    Caption = 'Prislista:'
                    Visible = False
                  end
                  object LabelSortingOrderRowNo: TcxDBLabel
                    Left = 78
                    Top = 208
                    DataBinding.DataField = 'SortingOrderRowNo'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    ParentColor = False
                    Style.Color = clWhite
                    Height = 23
                    Width = 125
                  end
                  object cxLabel27: TcxLabel
                    Left = 8
                    Top = 212
                    Caption = 'Radnr:'
                  end
                  object tePlannedNM3: TcxDBTextEdit
                    Left = 400
                    Top = 184
                    DataBinding.DataField = 'PlannedNM3'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 17
                    OnExit = tePlannedNM3Exit
                    Width = 121
                  end
                  object cxLabel30: TcxLabel
                    Left = 344
                    Top = 188
                    Caption = 'Plan.NM3:'
                  end
                  object cxLabel31: TcxLabel
                    Left = 344
                    Top = 96
                    Caption = 'Planerad volym'
                    Style.TextStyle = [fsBold]
                  end
                  object teLONR: TcxDBTextEdit
                    Left = 627
                    Top = 8
                    DataBinding.DataField = 'LONR'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ReadOnly = False
                    TabOrder = 18
                    OnExit = teLONRExit
                    Width = 121
                  end
                  object cxLabel18: TcxLabel
                    Left = 583
                    Top = 12
                    Caption = 'LONR:'
                  end
                  object cxLabel19: TcxLabel
                    Left = 588
                    Top = 36
                    Caption = 'Kund:'
                  end
                  object teCustomer: TcxDBTextEdit
                    Left = 627
                    Top = 32
                    DataBinding.DataField = 'Customer'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 19
                    OnExit = teCustomerExit
                    Width = 326
                  end
                  object teMark: TcxDBTextEdit
                    Left = 627
                    Top = 56
                    DataBinding.DataField = 'Mark'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 20
                    OnExit = teMarkExit
                    Width = 121
                  end
                  object cxLabel20: TcxLabel
                    Left = 569
                    Top = 60
                    Caption = 'M'#228'rkning:'
                  end
                  object lcLagergrupp: TcxDBLookupComboBox
                    Left = 627
                    Top = 104
                    DataBinding.DataField = 'Lagergrupp'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'LIPNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'LAGERGRUPP'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    TabOrder = 22
                    OnEnter = lcLagergruppEnter
                    OnExit = lcLagergruppExit
                    Width = 121
                  end
                  object cxLabel21: TcxLabel
                    Left = 559
                    Top = 108
                    Caption = 'Lagergrupp:'
                  end
                  object seRefCopies: TcxDBSpinEdit
                    Left = 627
                    Top = 80
                    DataBinding.DataField = 'RefCopies'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 21
                    OnExit = seRefCopiesExit
                    Width = 121
                  end
                  object cxLabel24: TcxLabel
                    Left = 541
                    Top = 84
                    Caption = 'Referenskopior:'
                  end
                  object lcLanguagecode: TcxDBLookupComboBox
                    Left = 624
                    Top = 176
                    DataBinding.DataField = 'Languagecode'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'LanguageNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'LanguageName'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.MaxLength = 0
                    TabOrder = 24
                    OnExit = lcLanguagecodeExit
                    Width = 124
                  end
                  object lcSizeFormat: TcxDBLookupComboBox
                    Left = 624
                    Top = 200
                    DataBinding.DataField = 'SizeFormat'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'SizeFormatNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'SizeFormat'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ListSource = dmsSortOrder.dsSizeFormat
                    Properties.MaxLength = 0
                    TabOrder = 25
                    OnExit = lcSizeFormatExit
                    Width = 124
                  end
                  object lcLengthFormat: TcxDBLookupComboBox
                    Left = 624
                    Top = 224
                    DataBinding.DataField = 'LengthFormat'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'LengthFormatNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'LengthFormat'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ListSource = dmsSortOrder.dsLengthFormat
                    Properties.MaxLength = 0
                    TabOrder = 26
                    OnExit = lcLengthFormatExit
                    Width = 124
                  end
                  object lcVolumeFormat: TcxDBLookupComboBox
                    Left = 624
                    Top = 248
                    DataBinding.DataField = 'VolumeFormat'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'VolumeFormatNo'
                    Properties.ListColumns = <
                      item
                        FieldName = 'VolumeFormat'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ListSource = dmsSortOrder.dsVolumeFormat
                    Properties.MaxLength = 0
                    TabOrder = 27
                    OnExit = lcVolumeFormatExit
                    Width = 124
                  end
                  object cxLabel29: TcxLabel
                    Left = 605
                    Top = 160
                    Caption = 'Inst'#228'llningar paketlappar'
                    Style.TextStyle = [fsBold]
                  end
                  object teArtikelKod: TcxDBTextEdit
                    Left = 627
                    Top = 128
                    DataBinding.DataField = 'ArtikelKod'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ReadOnly = True
                    TabOrder = 23
                    OnExit = teArtikelKodExit
                    Width = 121
                  end
                  object cxLabel32: TcxLabel
                    Left = 566
                    Top = 132
                    Caption = 'Artikelkod:'
                  end
                  object cbLengthSpec: TcxDBComboBox
                    Left = 80
                    Top = 32
                    DataBinding.DataField = 'LengthSpec'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    TabOrder = 1
                    OnExit = cbLengthSpecExit
                    Width = 113
                  end
                  object cxLabel34: TcxLabel
                    Left = 200
                    Top = 36
                    Caption = 'ALMM:'
                  end
                  object cbTargetProduct: TcxDBCheckBox
                    Left = 80
                    Top = 256
                    Caption = 'Huvudvara'
                    DataBinding.DataField = 'TargetProduct'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    TabOrder = 10
                    OnExit = cbTargetProductExit
                  end
                  object LabelALMM: TcxDBLabel
                    Left = 240
                    Top = 32
                    DataBinding.DataField = 'ALMM'
                    DataBinding.DataSource = dmsSortOrder.ds_SorOrdRow
                    ParentColor = False
                    Style.Color = clWhite
                    Height = 21
                    Width = 73
                  end
                end
              end
              object tsPaketspec: TcxTabSheet
                Caption = 'Paketspec'
                ImageIndex = 2
                object PanelPaketSpec: TPanel
                  Left = 0
                  Top = 0
                  Width = 1133
                  Height = 217
                  Align = alTop
                  TabOrder = 0
                  object Panel18: TPanel
                    Left = 1
                    Top = 1
                    Width = 1131
                    Height = 25
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 0
                    object cxButton2: TcxButton
                      Left = 3
                      Top = 1
                      Width = 75
                      Height = 23
                      Action = acAddLayoutRow
                      TabOrder = 0
                    end
                    object cxButton4: TcxButton
                      Left = 78
                      Top = 1
                      Width = 75
                      Height = 23
                      Action = acDeleteLayout
                      TabOrder = 1
                    end
                    object cxButton6: TcxButton
                      Left = 153
                      Top = 1
                      Width = 120
                      Height = 23
                      Action = acAddStdSpecLayout
                      TabOrder = 2
                    end
                  end
                  object grdSpecLayout: TcxGrid
                    Left = 1
                    Top = 26
                    Width = 1131
                    Height = 190
                    Align = alClient
                    TabOrder = 1
                    object grdSpecLayoutDBTableView1: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      ScrollbarAnnotations.CustomAnnotations = <>
                      DataController.DataSource = dmsSortOrder.ds_SOLayout
                      DataController.KeyFieldNames = 'LayoutNo;SortingOrderNo;SortingOrderRowNo'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsBehavior.ImmediateEditor = False
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.GroupByBox = False
                      object grdSpecLayoutDBTableView1LayoutNo: TcxGridDBColumn
                        DataBinding.FieldName = 'LayoutNo'
                        Visible = False
                      end
                      object grdSpecLayoutDBTableView1AntalKopior: TcxGridDBColumn
                        DataBinding.FieldName = 'AntalKopior'
                        PropertiesClassName = 'TcxSpinEditProperties'
                      end
                      object grdSpecLayoutDBTableView1PackageLogLayoutName: TcxGridDBColumn
                        DataBinding.FieldName = 'Layout'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.KeyFieldNames = 'PackageLogLayoutNo'
                        Properties.ListColumns = <
                          item
                            FieldName = 'PackageLogLayoutName'
                          end>
                        Properties.ListOptions.ShowHeader = False
                      end
                      object grdSpecLayoutDBTableView1SortingOrderNo: TcxGridDBColumn
                        DataBinding.FieldName = 'SortingOrderNo'
                        Visible = False
                      end
                      object grdSpecLayoutDBTableView1SortingOrderRowNo: TcxGridDBColumn
                        DataBinding.FieldName = 'SortingOrderRowNo'
                        Visible = False
                      end
                    end
                    object grdSpecLayoutLevel1: TcxGridLevel
                      GridView = grdSpecLayoutDBTableView1
                    end
                  end
                end
              end
            end
          end
          object tsKopplaRavara: TcxTabSheet
            Caption = 'tsKopplaRavara'
            ImageIndex = 0
            object PanelKopplaRavara: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 592
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 1141
                Height = 25
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Koppla r'#229'vara'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object grdRawMtrl: TcxGrid
                Left = 0
                Top = 81
                Width = 1141
                Height = 511
                Align = alClient
                PopupMenu = pmRawMtrl
                TabOrder = 1
                LookAndFeel.Kind = lfFlat
                object grdRawMtrlDBBandedTableView1: TcxGridDBBandedTableView
                  OnDblClick = grdRawMtrlDBBandedTableView1DblClick
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  OnEditKeyDown = grdRawMtrlDBBandedTableView1EditKeyDown
                  DataController.DataSource = dmsSortOrder.ds_SORaw
                  DataController.KeyFieldNames = 'ID;BookedProductNo;BookedProductLengthNo;ProductNo'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'KassationAM3'
                    end
                    item
                      Format = '###########'
                      Kind = skSum
                      FieldName = 'KassationStyck'
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'KassationAM1'
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'AM1'
                      Column = grdRawMtrlDBBandedTableView1AM1
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'AM3'
                      Column = grdRawMtrlDBBandedTableView1AM3
                    end
                    item
                      Format = '########'
                      Kind = skSum
                      FieldName = 'PCS'
                      Column = grdRawMtrlDBBandedTableView1PCS
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'PlannedAM1'
                      Column = grdRawMtrlDBBandedTableView1PlannedAM1
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'BookedNM3'
                      Column = grdRawMtrlDBBandedTableView1PlannedAM3
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsBehavior.ImmediateEditor = False
                  OptionsBehavior.PullFocusing = True
                  OptionsData.Deleting = False
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  Styles.OnGetContentStyle = grdRawMtrlDBBandedTableView1StylesGetContentStyle
                  Styles.Inactive = cxStyle1Yellow
                  Styles.Selection = cxStyle1Yellow
                  Bands = <
                    item
                      Caption = 'Produkt'
                      Options.HoldOwnColumnsOnly = True
                      Styles.Header = cxStyleOlive
                      Width = 664
                    end
                    item
                      Caption = 'Planerad volym'
                      Styles.Header = cxStyleOlive
                      Width = 214
                    end
                    item
                      Caption = 'F'#246'rbrukad volym'
                      Options.HoldOwnColumnsOnly = True
                      Styles.Header = cxStyleOlive
                      Width = 172
                    end
                    item
                      Caption = 'OTHER'
                      Visible = False
                      VisibleForCustomization = False
                    end>
                  object grdRawMtrlDBBandedTableView1PRODUKT: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PRODUKT'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Options.Filtering = False
                    Width = 121
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1LengthDescription: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'LengthDescription'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Filtering = False
                    Width = 128
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1MainRawMtrl: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MainRawMtrl'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.Alignment = taRightJustify
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    Options.Filtering = False
                    Width = 68
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1ALMM: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ALMM'
                    PropertiesClassName = 'TcxLabelProperties'
                    Options.Filtering = False
                    Width = 43
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1AntalKapSnitt: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AntalKapSnitt'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Visible = False
                    VisibleForCustomization = False
                    Width = 26
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1AntalLamellerUt: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AntalLamellerUt'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Width = 52
                    Position.BandIndex = 0
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn
                    Caption = 'NM3'
                    DataBinding.FieldName = 'BookedNM3'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Width = 61
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1PlannedAM1: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PlannedAM1'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Width = 68
                    Position.BandIndex = 1
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1UrlaggsProcent: TcxGridDBBandedColumn
                    Caption = 'Utfall %'
                    DataBinding.FieldName = 'Utfall'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Position.BandIndex = 1
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1RealLPM: TcxGridDBBandedColumn
                    Caption = 'AM1'
                    DataBinding.FieldName = 'RealLPM'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    VisibleForCustomization = False
                    Width = 39
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1PCS: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PCS'
                    PropertiesClassName = 'TcxLabelProperties'
                    Options.Filtering = False
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1AM3: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AM3'
                    PropertiesClassName = 'TcxLabelProperties'
                    Options.Filtering = False
                    Position.BandIndex = 2
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1AM1: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AM1'
                    PropertiesClassName = 'TcxLabelProperties'
                    Options.Filtering = False
                    Position.BandIndex = 2
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ID'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Options.Filtering = False
                    VisibleForCustomization = False
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1ProductNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ProductNo'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Options.Filtering = False
                    VisibleForCustomization = False
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1MCClassNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MCClassNo'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.Alignment = taRightJustify
                    Properties.ImmediatePost = True
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    Width = 68
                    Position.BandIndex = 0
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PricePerNM3'
                    PropertiesClassName = 'TcxCalcEditProperties'
                    Width = 87
                    Position.BandIndex = 0
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1LengthSpec: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'LengthSpec'
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Width = 64
                    Position.BandIndex = 0
                    Position.ColIndex = 8
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1ExcludeFromTotal: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ExcludeFromTotal'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.Alignment = taRightJustify
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = 0
                    Position.BandIndex = 2
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1OrderNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OrderNo'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 9
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1OrderName: TcxGridDBBandedColumn
                    Caption = 'R'#229'varukontrakt'
                    DataBinding.FieldName = 'OrderName'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.ImmediatePost = True
                    Properties.KeyFieldNames = 'OrderNo'
                    Properties.ListColumns = <
                      item
                        Caption = 'Kontrakt'
                        SortOrder = soAscending
                        FieldName = 'OrderNoText'
                      end>
                    Width = 108
                    Position.BandIndex = 0
                    Position.ColIndex = 10
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1BookedProductNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'BookedProductNo'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 11
                    Position.RowIndex = 0
                  end
                  object grdRawMtrlDBBandedTableView1BookedProductLengthNo: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'BookedProductLengthNo'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 12
                    Position.RowIndex = 0
                  end
                end
                object grdRawMtrlLevel1: TcxGridLevel
                  GridView = grdRawMtrlDBBandedTableView1
                end
              end
              object Panel16: TPanel
                Left = 0
                Top = 25
                Width = 1141
                Height = 56
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object Label72: TLabel
                  Left = 544
                  Top = 10
                  Width = 54
                  Height = 13
                  Caption = 'Lagerst'#228'lle:'
                end
                object Label73: TLabel
                  Left = 760
                  Top = 10
                  Width = 57
                  Height = 13
                  Caption = 'Lagergrupp:'
                end
                object cxButton20: TcxButton
                  Left = 8
                  Top = 3
                  Width = 129
                  Height = 46
                  Action = acAddRawMtrl
                  TabOrder = 0
                end
                object cxButton21: TcxButton
                  Left = 137
                  Top = 3
                  Width = 89
                  Height = 46
                  Action = acDeleteRawMtrl
                  TabOrder = 1
                end
                object lcRawPIPNAME: TcxDBLookupComboBox
                  Left = 600
                  Top = 2
                  DataBinding.DataField = 'RawPIPNAME'
                  DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                  Properties.DropDownListStyle = lsFixedList
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'PIPNo'
                  Properties.ListColumns = <
                    item
                      FieldName = 'ORT'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Properties.MaxLength = 0
                  Style.Color = clWindow
                  Style.LookAndFeel.Kind = lfFlat
                  StyleDisabled.LookAndFeel.Kind = lfFlat
                  StyleFocused.LookAndFeel.Kind = lfFlat
                  StyleHot.LookAndFeel.Kind = lfFlat
                  TabOrder = 2
                  OnEnter = lcRawPIPNAMEEnter
                  OnExit = lcRawPIPNAMEExit
                  Width = 145
                end
                object lcRawLIPName: TcxDBLookupComboBox
                  Left = 820
                  Top = 2
                  DataBinding.DataField = 'RawLIPNAME'
                  DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                  Properties.DropDownListStyle = lsFixedList
                  Properties.ImmediatePost = True
                  Properties.KeyFieldNames = 'LIPNo'
                  Properties.ListColumns = <
                    item
                      FieldName = 'LAGERGRUPP'
                    end>
                  Properties.ListOptions.ShowHeader = False
                  Properties.MaxLength = 0
                  Style.Color = clWindow
                  Style.LookAndFeel.Kind = lfFlat
                  StyleDisabled.LookAndFeel.Kind = lfFlat
                  StyleFocused.LookAndFeel.Kind = lfFlat
                  StyleHot.LookAndFeel.Kind = lfFlat
                  TabOrder = 3
                  OnEnter = lcRawLIPNameEnter
                  OnExit = lcRawLIPNameExit
                  Width = 145
                end
                object cxButton33: TcxButton
                  Left = 228
                  Top = 3
                  Width = 108
                  Height = 46
                  Action = acShowRawMtrilProductInInventoryList
                  TabOrder = 4
                  Visible = False
                end
                object cbPrintRawMtrlPart: TcxDBCheckBox
                  Left = 379
                  Top = 2
                  Caption = 'Inkludera i k'#246'rorderrapport'
                  DataBinding.DataField = 'PrintRawMtrlPart'
                  DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = 0
                  TabOrder = 5
                end
                object cxButton57: TcxButton
                  Left = 488
                  Top = 25
                  Width = 105
                  Height = 24
                  Action = acAddRawMtrlUsedPreviously
                  OptionsImage.Glyph.SourceDPI = 96
                  OptionsImage.Glyph.Data = {
                    424D360400000000000036000000280000001000000010000000010020000000
                    000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000FF840000FF8400
                    00FF840000FF840000FF840000FF840000FF840000FF840000FF840000FF8400
                    00FF840000FF840000FF840000FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FF8C29
                    00FF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FFFFFFFFFF8C29
                    00FF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FFFFFFFFFFFFFF
                    FFFF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FFFFFFFFFFFFFF
                    FFFF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FFFFFFFFFF8C29
                    00FF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00840000FFFFFFFFFFFFFF
                    FFFFBD4A00FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FF8C2900FF8C29
                    00FF8C2900FF8C2900FF8C2900FFBD4A00FFFF00FF00BD4A00FFBD4A00FFBD4A
                    00FFBD4A00FFBD4A00FFBD4A00FFBD4A00FFBD4A00FFBD4A00FFBD4A00FFBD4A
                    00FFBD4A00FFBD4A00FFBD4A00FFBD4A00FFFF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  OptionsImage.Layout = blGlyphRight
                  TabOrder = 6
                end
                object lcRawProdukt: TcxDBLookupComboBox
                  Left = 600
                  Top = 25
                  DataBinding.DataField = 'RawProdukt'
                  DataBinding.DataSource = dsRawProdukt
                  Properties.DropDownListStyle = lsFixedList
                  Properties.ListColumns = <>
                  Properties.ListOptions.ShowHeader = False
                  TabOrder = 7
                  Width = 425
                end
              end
            end
          end
          object tsForKalkyl: TcxTabSheet
            Caption = 'tsForKalkyl'
            ImageIndex = 2
            object Panel23: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 113
              Align = alTop
              TabOrder = 0
              object Label10: TLabel
                Left = 70
                Top = 34
                Width = 109
                Height = 13
                Caption = 'Max matning (lpm/min):'
              end
              object Label8: TLabel
                Left = 70
                Top = 58
                Width = 106
                Height = 13
                Caption = 'Ber'#228'knad k'#246'r.tid (min):'
              end
              object Label22: TLabel
                Left = 280
                Top = 12
                Width = 53
                Height = 13
                Caption = 'Operat'#246'rer:'
              end
              object Label2: TLabel
                Left = 488
                Top = 12
                Width = 70
                Height = 13
                Caption = 'Verklig prodtid:'
              end
              object Label49: TLabel
                Left = 70
                Top = 10
                Width = 130
                Height = 13
                Caption = 'Ber'#228'knad verkningsgrad %:'
              end
              object eFeedSpeed: TcxDBTextEdit
                Left = 205
                Top = 28
                DataBinding.DataField = 'FeedSpeed'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 0
                Width = 52
              end
              object ePlannedProductionTimes: TcxDBTextEdit
                Left = 205
                Top = 50
                DataBinding.DataField = 'PlannedProductionTime'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                TabOrder = 1
                Width = 52
              end
              object eNoOfWorkers: TcxDBTextEdit
                Left = 338
                Top = 4
                DataBinding.DataField = 'NoOfWorkers'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 2
                Width = 73
              end
              object cbSplitBeforeHyvling: TcxDBCheckBox
                Left = 280
                Top = 40
                Caption = 'Delas f'#246're hyvling'
                DataBinding.DataField = 'MCClassNo'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ImmediatePost = True
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                TabOrder = 3
              end
              object teRealProductionTime: TcxDBTextEdit
                Left = 562
                Top = 4
                DataBinding.DataField = 'RealProductionTime'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 4
                Width = 73
              end
              object mePreCalcEfficiencyFactor: TcxDBMaskEdit
                Left = 205
                Top = 4
                DataBinding.DataField = 'PreCalcEfficiencyFactor'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                TabOrder = 5
                Width = 52
              end
              object cxButton25: TcxButton
                Left = 680
                Top = 8
                Width = 89
                Height = 33
                Action = acPreCalc
                TabOrder = 6
              end
            end
          end
          object tsHuvud: TcxTabSheet
            Caption = #214'vrigt'
            ImageIndex = 3
            object Panel25: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 121
              Align = alTop
              TabOrder = 0
              object GroupBox2: TGroupBox
                Left = 24
                Top = 27
                Width = 153
                Height = 70
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object cbVisaMeddelande: TcxCheckBox
                  Left = 8
                  Top = 16
                  Caption = 'Visa meddelande'
                  Properties.OnChange = cbVisaMeddelandePropertiesChange
                  TabOrder = 0
                  Visible = False
                end
                object teUserID: TcxTextEdit
                  Left = 8
                  Top = 37
                  TabOrder = 1
                  OnKeyDown = teUserIDKeyDown
                  Width = 73
                end
              end
            end
          end
        end
        object tcEditKorOrder: TcxTabControl
          Left = 0
          Top = 0
          Width = 1149
          Height = 24
          Align = alTop
          TabOrder = 1
          Properties.CustomButtons.Buttons = <>
          Properties.Images = ImageList1
          Properties.TabIndex = 0
          Properties.Tabs.Strings = (
            'Instruktioner'
            'Koppla r'#229'vara'
            'F'#246'rkalkyl'
            #214'vrigt')
          OnChange = tcEditKorOrderChange
          ClientRectBottom = 25
          ClientRectLeft = 4
          ClientRectRight = 1145
          ClientRectTop = 25
        end
      end
      object tsAnalys: TcxTabSheet
        Caption = 'tsAnalys'
        ImageIndex = 3
        object pgSubAttest: TcxPageControl
          Left = 0
          Top = 0
          Width = 1149
          Height = 644
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = tsAttest
          Properties.CustomButtons.Buttons = <>
          Properties.Images = ImageList1
          ClientRectBottom = 640
          ClientRectLeft = 4
          ClientRectRight = 1145
          ClientRectTop = 27
          object tsAvstamningRavara: TcxTabSheet
            Caption = 'Paketista'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            object Panel20: TPanel
              Left = 0
              Top = 4
              Width = 1141
              Height = 609
              Align = alClient
              TabOrder = 0
              object Panel21: TPanel
                Left = 1
                Top = 1
                Width = 543
                Height = 607
                Align = alLeft
                TabOrder = 0
                object grdNewPkgs: TcxGrid
                  Left = 1
                  Top = 65
                  Width = 541
                  Height = 541
                  Align = alClient
                  TabOrder = 0
                  LookAndFeel.Kind = lfFlat
                  object grdNewPkgsDBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dm_PkgWorkOrder.ds_NewPkgs
                    DataController.KeyFieldNames = 'PackageNo;SUPPLIERCODE'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM3'
                        Column = grdNewPkgsDBTableView1AM3
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'STYCK'
                        Column = grdNewPkgsDBTableView1STYCK
                      end
                      item
                        Format = '#####'
                        Kind = skCount
                        FieldName = 'PAKETNR'
                        Column = grdNewPkgsDBTableView1PAKETNR
                      end
                      item
                        Format = '#,###,###,###.0'
                        Kind = skSum
                        FieldName = 'AM1'
                        Column = grdNewPkgsDBTableView1AM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'NM3'
                        Column = grdNewPkgsDBTableView1NM3
                      end>
                    DataController.Summary.SummaryGroups = <>
                    DataController.Summary.Options = [soMultipleSelectedRecords]
                    OptionsBehavior.PullFocusing = True
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    Styles.OnGetContentStyle = grdNewPkgsDBTableView1StylesGetContentStyle
                    object grdNewPkgsDBTableView1PAKETNR: TcxGridDBColumn
                      DataBinding.FieldName = 'PackageNo'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 86
                    end
                    object grdNewPkgsDBTableView1LEVKOD: TcxGridDBColumn
                      DataBinding.FieldName = 'SUPPLIERCODE'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 73
                    end
                    object grdNewPkgsDBTableView1PRODUKT: TcxGridDBColumn
                      DataBinding.FieldName = 'PRODUKT'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 252
                    end
                    object grdNewPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn
                      DataBinding.FieldName = 'ANTPERL'#196'NGD'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 115
                    end
                    object grdNewPkgsDBTableView1AM3: TcxGridDBColumn
                      DataBinding.FieldName = 'AM3'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 56
                    end
                    object grdNewPkgsDBTableView1NM3: TcxGridDBColumn
                      DataBinding.FieldName = 'NM3'
                      PropertiesClassName = 'TcxTextEditProperties'
                    end
                    object grdNewPkgsDBTableView1STYCK: TcxGridDBColumn
                      DataBinding.FieldName = 'STYCK'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Options.Filtering = False
                      Width = 82
                    end
                    object grdNewPkgsDBTableView1MFBM: TcxGridDBColumn
                      DataBinding.FieldName = 'MFBM'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Visible = False
                    end
                    object grdNewPkgsDBTableView1AM1: TcxGridDBColumn
                      DataBinding.FieldName = 'AM1'
                      PropertiesClassName = 'TcxTextEditProperties'
                      Width = 229
                    end
                    object grdNewPkgsDBTableView1PkgStatus: TcxGridDBColumn
                      DataBinding.FieldName = 'PkgStatus'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                    end
                    object grdNewPkgsDBTableView1Registrerad: TcxGridDBColumn
                      DataBinding.FieldName = 'Registrerad'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 134
                    end
                  end
                  object grdNewPkgsLevel1: TcxGridLevel
                    GridView = grdNewPkgsDBTableView1
                  end
                end
                object PanelPaRegHeader: TPanel
                  Left = 1
                  Top = 1
                  Width = 541
                  Height = 23
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'P'#229'registrerade paket'
                  Color = 57825
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                end
                object Panel26: TPanel
                  Left = 1
                  Top = 24
                  Width = 541
                  Height = 41
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 57825
                  TabOrder = 2
                  object cxButton7: TcxButton
                    Left = 410
                    Top = 6
                    Width = 73
                    Height = 29
                    Action = acRegisterMultiplePkgs
                    TabOrder = 0
                    Visible = False
                  end
                  object cxButton10: TcxButton
                    Left = 11
                    Top = 6
                    Width = 70
                    Height = 29
                    Action = acRemovePkgFromSystem
                    TabOrder = 1
                  end
                  object cxButton11: TcxButton
                    Left = 88
                    Top = 6
                    Width = 64
                    Height = 29
                    Action = acRefreshPaRegPkg
                    TabOrder = 2
                  end
                  object cxButton13: TcxButton
                    Left = 454
                    Top = 6
                    Width = 83
                    Height = 29
                    Action = acPrintPaReg
                    TabOrder = 5
                    Visible = False
                  end
                  object cxButton31: TcxButton
                    Left = 196
                    Top = 6
                    Width = 58
                    Height = 29
                    Action = acLoadSelectedPkgs
                    TabOrder = 3
                    Visible = False
                  end
                  object cxButton51: TcxButton
                    Left = 254
                    Top = 6
                    Width = 70
                    Height = 29
                    Action = acPickPkgToAddAsNewRegs
                    TabOrder = 4
                    Visible = False
                  end
                  object cxButton60: TcxButton
                    Left = 324
                    Top = 6
                    Width = 66
                    Height = 29
                    Caption = #196'ndra paket'
                    TabOrder = 6
                    Visible = False
                  end
                end
              end
              object Panel22: TPanel
                Left = 552
                Top = 1
                Width = 588
                Height = 607
                Align = alClient
                TabOrder = 1
                object PanelAvRegHeader: TPanel
                  Left = 1
                  Top = 1
                  Width = 586
                  Height = 23
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'Avregistrerade paket'
                  Color = clOlive
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
                object grdUsedPkgs: TcxGrid
                  Left = 1
                  Top = 65
                  Width = 586
                  Height = 541
                  Align = alClient
                  PopupMenu = pmUsedPkgs
                  TabOrder = 1
                  LookAndFeel.Kind = lfFlat
                  object grdUsedPkgsDBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dm_PkgWorkOrder.ds_UsedPkgs
                    DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM3'
                        Column = grdUsedPkgsDBTableView1AM3
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'STYCK'
                        Column = grdUsedPkgsDBTableView1STYCK
                      end
                      item
                        Format = '#####'
                        Kind = skCount
                        FieldName = 'PAKETNR'
                        Column = grdUsedPkgsDBTableView1PAKETNR
                      end
                      item
                        Format = '#,###,###,###.0'
                        Kind = skSum
                        FieldName = 'AM1'
                        Column = grdUsedPkgsDBTableView1AM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'NM3'
                        Column = grdUsedPkgsDBTableView1NM3
                      end>
                    DataController.Summary.SummaryGroups = <>
                    DataController.Summary.Options = [soMultipleSelectedRecords]
                    OptionsBehavior.PullFocusing = True
                    OptionsSelection.CellSelect = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    object grdUsedPkgsDBTableView1PAKETNR: TcxGridDBColumn
                      DataBinding.FieldName = 'PAKETNR'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 76
                    end
                    object grdUsedPkgsDBTableView1LEVKOD: TcxGridDBColumn
                      DataBinding.FieldName = 'LEVKOD'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 66
                    end
                    object grdUsedPkgsDBTableView1PRODUKT: TcxGridDBColumn
                      DataBinding.FieldName = 'PRODUKT'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 234
                    end
                    object grdUsedPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn
                      DataBinding.FieldName = 'ANTPERL'#196'NGD'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 115
                    end
                    object grdUsedPkgsDBTableView1AM3: TcxGridDBColumn
                      DataBinding.FieldName = 'AM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 57
                    end
                    object grdUsedPkgsDBTableView1NM3: TcxGridDBColumn
                      DataBinding.FieldName = 'NM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 58
                    end
                    object grdUsedPkgsDBTableView1STYCK: TcxGridDBColumn
                      DataBinding.FieldName = 'STYCK'
                      PropertiesClassName = 'TcxLabelProperties'
                      Options.Filtering = False
                      Width = 93
                    end
                    object grdUsedPkgsDBTableView1MFBM: TcxGridDBColumn
                      DataBinding.FieldName = 'MFBM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                    end
                    object grdUsedPkgsDBTableView1AM1: TcxGridDBColumn
                      DataBinding.FieldName = 'AM1'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 224
                    end
                    object grdUsedPkgsDBTableView1Registrerad: TcxGridDBColumn
                      DataBinding.FieldName = 'Registrerad'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 127
                    end
                  end
                  object grdUsedPkgsLevel1: TcxGridLevel
                    GridView = grdUsedPkgsDBTableView1
                  end
                end
                object Panel27: TPanel
                  Left = 1
                  Top = 24
                  Width = 586
                  Height = 41
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clOlive
                  TabOrder = 2
                  object cxButton8: TcxButton
                    Left = 8
                    Top = 6
                    Width = 65
                    Height = 29
                    Action = acAvregistreraPaket
                    TabOrder = 0
                    Visible = False
                  end
                  object cxButton9: TcxButton
                    Left = 73
                    Top = 6
                    Width = 38
                    Height = 29
                    Action = acCancelDeregistration
                    TabOrder = 1
                    Visible = False
                  end
                  object cxButton12: TcxButton
                    Left = 548
                    Top = 6
                    Width = 81
                    Height = 29
                    Action = acPrintAvReg
                    TabOrder = 6
                    Visible = False
                  end
                  object cxButton14: TcxButton
                    Left = 111
                    Top = 6
                    Width = 59
                    Height = 29
                    Action = acRefreshAvReg
                    TabOrder = 2
                  end
                  object cxButton30: TcxButton
                    Left = 170
                    Top = 6
                    Width = 147
                    Height = 29
                    Caption = 'H'#228'mta paket fr'#229'n LO/Add LO'
                    TabOrder = 3
                    Visible = False
                    OnClick = acRefreshAvRegExecute
                  end
                  object cxButton32: TcxButton
                    Left = 317
                    Top = 6
                    Width = 41
                    Height = 29
                    Action = acSplitPkg
                    TabOrder = 4
                    Visible = False
                  end
                  object cxButton52: TcxButton
                    Left = 358
                    Top = 6
                    Width = 61
                    Height = 29
                    Action = acDeleteUsedPkgRow
                    TabOrder = 5
                    Visible = False
                  end
                  object cxButton53: TcxButton
                    Left = 419
                    Top = 6
                    Width = 73
                    Height = 29
                    Caption = 'Probleml'#246'sare'
                    DropDownMenu = PopupMenu3
                    Kind = cxbkDropDown
                    TabOrder = 7
                    Visible = False
                  end
                end
              end
              object cxSplitter1: TcxSplitter
                Left = 544
                Top = 1
                Width = 8
                Height = 607
                HotZoneClassName = 'TcxMediaPlayer8Style'
                Control = Panel21
                Color = clGreen
                ParentColor = False
              end
            end
            object Panel19: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 4
              Align = alTop
              TabOrder = 1
            end
          end
          object tsAvstamningTid: TcxTabSheet
            Caption = 'Avst'#228'mning tid'
            ImageIndex = 3
            TabVisible = False
            object PanelAOHeadData: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 67
              Align = alTop
              TabOrder = 0
              object Label9: TLabel
                Left = 649
                Top = 20
                Width = 101
                Height = 16
                Caption = 'Stopptid (min):'
              end
              object Label24: TLabel
                Left = 649
                Top = 42
                Width = 108
                Height = 16
                Caption = 'Stopptid ej inkl:'
              end
              object Label23: TLabel
                Left = 825
                Top = 20
                Width = 124
                Height = 16
                Caption = 'Postningstid(min):'
              end
              object Label19: TLabel
                Left = 365
                Top = 43
                Width = 134
                Height = 16
                Caption = 'Produktionstid(tim):'
              end
              object eStopTime: TcxDBTextEdit
                Left = 734
                Top = 13
                DataBinding.DataField = 'StopTime'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 5
                Width = 73
              end
              object eStopTimeNotIncl: TcxDBTextEdit
                Left = 734
                Top = 35
                DataBinding.DataField = 'StopTimeNotIncl'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 6
                Width = 73
              end
              object ePostningstid: TcxDBTextEdit
                Left = 910
                Top = 12
                DataBinding.DataField = 'Postningstid'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 7
                Width = 73
              end
              object teRealProdTid: TcxDBTextEdit
                Left = 464
                Top = 35
                DataBinding.DataField = 'ProdTimeHour'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Style.Color = clWindow
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 3
                OnEnter = teRealProdTidEnter
                OnExit = teRealProdTidExit
                Width = 62
              end
              object cxButton55: TcxButton
                Left = 7
                Top = 8
                Width = 97
                Height = 39
                Action = acCalcStartSlutochProdTid
                TabOrder = 0
                WordWrap = True
              end
              object cxButton34: TcxButton
                Left = 7
                Top = 49
                Width = 97
                Height = 15
                Action = acCalculateProductionsTime
                TabOrder = 1
              end
              object bbShowProdTimeSegments: TcxButton
                Left = 536
                Top = 23
                Width = 96
                Height = 34
                Action = acShowProdTimeSegments
                TabOrder = 4
              end
              object cbManualProdTime: TcxDBCheckBox
                Left = 362
                Top = 12
                Caption = 'Manuell tid'
                DataBinding.DataField = 'ManualProdTime'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ImmediatePost = True
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                TabOrder = 2
                OnEnter = cbManualProdTimeEnter
                OnExit = cbManualProdTimeExit
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 109
              Width = 1141
              Height = 504
              Align = alClient
              TabOrder = 1
            end
            object Panel35: TPanel
              Left = 0
              Top = 67
              Width = 1141
              Height = 42
              Align = alTop
              TabOrder = 2
              object cxButton58: TcxButton
                Left = 680
                Top = 5
                Width = 169
                Height = 32
                Action = acStoppTidPerOrsak
                TabOrder = 3
              end
              object cxButton59: TcxButton
                Left = 856
                Top = 5
                Width = 169
                Height = 32
                Action = acAntalStoppPerOrsak
                TabOrder = 4
              end
              object cxLabel36: TcxLabel
                Left = 32
                Top = 12
                Caption = 'Tidsenhet:'
                ParentFont = False
              end
              object icTidsEnhet: TcxDBImageComboBox
                Left = 88
                Top = 8
                DataBinding.DataField = 'TimeUnit'
                DataBinding.DataSource = dmsSortOrder.dsProps
                ParentFont = False
                Properties.ImmediatePost = True
                Properties.Items = <
                  item
                    Description = 'Minuter'
                    ImageIndex = 0
                    Value = 0
                  end
                  item
                    Description = 'Timmar'
                    Value = 1
                  end>
                Properties.OnChange = icTidsEnhetPropertiesChange
                TabOrder = 0
                Width = 81
              end
              object seNoOfTop: TcxDBSpinEdit
                Left = 256
                Top = 8
                DataBinding.DataField = 'NoOfTop'
                DataBinding.DataSource = dmsSortOrder.dsProps
                ParentFont = False
                Properties.ImmediatePost = True
                Properties.OnChange = seNoOfTopPropertiesChange
                TabOrder = 1
                Width = 81
              end
              object cxLabel37: TcxLabel
                Left = 203
                Top = 12
                Caption = 'Visa topp:'
                ParentFont = False
              end
              object cbVisaKortStopp: TcxDBCheckBox
                Left = 384
                Top = 10
                Caption = 'Exkludera kortstopp'
                DataBinding.DataField = 'VisaKortStopp'
                DataBinding.DataSource = dmsSortOrder.dsProps
                ParentFont = False
                Properties.ImmediatePost = True
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Properties.OnChange = cbVisaKortStoppPropertiesChange
                TabOrder = 2
              end
            end
          end
          object tsAttest: TcxTabSheet
            Caption = 'Avst'#228'mning r'#229'vara'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            object Panel24: TPanel
              Left = 0
              Top = 270
              Width = 1141
              Height = 343
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object Shape1: TShape
                Left = 8
                Top = 161
                Width = 449
                Height = 2
              end
              object Label40: TLabel
                Left = 13
                Top = 86
                Width = 39
                Height = 13
                Caption = 'Prod.tid:'
              end
              object Label41: TLabel
                Left = 13
                Top = 111
                Width = 53
                Height = 13
                Caption = 'Operat'#246'rer:'
              end
              object Label42: TLabel
                Left = 8
                Top = 146
                Width = 235
                Height = 13
                Caption = 'Sammanst'#228'llning f'#228'rdigvara && biprodukter'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label51: TLabel
                Left = 198
                Top = 258
                Width = 22
                Height = 13
                Caption = 'AM3'
                Visible = False
              end
              object Label52: TLabel
                Left = 254
                Top = 258
                Width = 22
                Height = 13
                Caption = 'AM1'
                Visible = False
              end
              object Label53: TLabel
                Left = 297
                Top = 258
                Width = 27
                Height = 13
                Caption = 'Styck'
                Visible = False
              end
              object Label54: TLabel
                Left = 354
                Top = 258
                Width = 39
                Height = 13
                Caption = 'Kostnad'
                Visible = False
              end
              object Label56: TLabel
                Left = 24
                Top = 372
                Width = 145
                Height = 13
                Caption = 'Total produktionskostnad'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label58: TLabel
                Left = 328
                Top = 407
                Width = 64
                Height = 13
                Caption = '- R'#229'varukost.'
                Visible = False
              end
              object Label59: TLabel
                Left = 24
                Top = 391
                Width = 94
                Height = 13
                Caption = 'Resultat k'#246'rning'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Shape4: TShape
                Left = 22
                Top = 406
                Width = 147
                Height = 2
                Visible = False
              end
              object Label61: TLabel
                Left = 328
                Top = 431
                Width = 59
                Height = 13
                Caption = '= Resultat'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label16: TLabel
                Left = 232
                Top = 62
                Width = 56
                Height = 13
                Caption = 'LPM hyvlat:'
              end
              object Label17: TLabel
                Left = 384
                Top = 383
                Width = 82
                Height = 13
                Caption = 'Kost/NM3 r'#229'vara'
                Visible = False
              end
              object Label7: TLabel
                Left = 13
                Top = 11
                Width = 33
                Height = 13
                Caption = 'Status:'
              end
              object Label13: TLabel
                Left = 13
                Top = 36
                Width = 36
                Height = 13
                Caption = 'Starttid:'
              end
              object Label11: TLabel
                Left = 13
                Top = 60
                Width = 32
                Height = 13
                Caption = 'Sluttid:'
              end
              object Label1: TLabel
                Left = 232
                Top = 102
                Width = 80
                Height = 13
                Caption = 'Kassation, styck:'
              end
              object Label15: TLabel
                Left = 133
                Top = 86
                Width = 30
                Height = 13
                Caption = 'timmar'
              end
              object eRealProductionTime: TcxDBTextEdit
                Left = 71
                Top = 79
                DataBinding.DataField = 'ProdTimeHour'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = False
                TabOrder = 0
                Width = 59
              end
              object teNoOfWorkers: TcxDBTextEdit
                Left = 71
                Top = 104
                DataBinding.DataField = 'NoOfWorkers'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = False
                TabOrder = 1
                Width = 59
              end
              object eTotalSalaryCost: TcxDBTextEdit
                Left = 299
                Top = 349
                DataBinding.DataField = 'TotalSalaryCost'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 2
                Visible = False
                Width = 83
              end
              object eRealProductionTimeII: TcxDBTextEdit
                Left = 163
                Top = 349
                DataBinding.DataField = 'ProdTimeHour'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 3
                Visible = False
                Width = 59
              end
              object eTotalCost: TcxDBTextEdit
                Left = 158
                Top = 380
                DataBinding.DataField = 'TotalCost'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                ParentFont = False
                Properties.ReadOnly = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -12
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                TabOrder = 4
                Visible = False
                Width = 67
              end
              object eRawMtrlCostII: TcxDBTextEdit
                Left = 390
                Top = 399
                DataBinding.DataField = 'RawMtrlCost'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 5
                Visible = False
                Width = 67
              end
              object eResultAO: TcxDBTextEdit
                Left = 390
                Top = 423
                DataBinding.DataField = 'ResultAO'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 6
                Visible = False
                Width = 67
              end
              object teProductionAM1: TcxDBTextEdit
                Left = 318
                Top = 54
                DataBinding.DataField = 'ProductionAM1'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 7
                Width = 65
              end
              object teKostPerNM3Raw: TcxDBTextEdit
                Left = 270
                Top = 407
                DataBinding.DataField = 'ChipsM3Solid'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                Properties.ReadOnly = True
                TabOrder = 8
                Visible = False
                Width = 65
              end
              object grdOutputSummary: TcxGrid
                Left = 8
                Top = 168
                Width = 449
                Height = 265
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                TabOrder = 9
                object grdOutputSummaryDBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = dmsSortOrder.ds_SOoutput
                  DataController.KeyFieldNames = 'ProductNo'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'AM1'
                      Column = grdOutputSummaryDBTableView1AM1
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'AM3'
                      Column = grdOutputSummaryDBTableView1AM3
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'Prisutfall'
                      Column = grdOutputSummaryDBTableView1Medelpris_1
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'ProduktV'#228'rde'
                      Column = grdOutputSummaryDBTableView1ProduktVrde
                    end
                    item
                      Format = '#########'
                      Kind = skSum
                      FieldName = 'STYCK'
                      Column = grdOutputSummaryDBTableView1STYCK
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'Utfall'
                      Column = grdOutputSummaryDBTableView1Utfall
                    end
                    item
                      Format = '#,###,###.0'
                      Kind = skSum
                      FieldName = 'NM3'
                      Column = grdOutputSummaryDBTableView1NM3
                    end>
                  DataController.Summary.SummaryGroups = <>
                  DataController.Summary.Options = [soMultipleSelectedRecords]
                  OptionsBehavior.PullFocusing = True
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  Styles.OnGetContentStyle = grdOutputSummaryDBTableView1StylesGetContentStyle
                  object grdOutputSummaryDBTableView1ProductDisplayName: TcxGridDBColumn
                    DataBinding.FieldName = 'ProductDisplayName'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 95
                  end
                  object grdOutputSummaryDBTableView1AM3: TcxGridDBColumn
                    DataBinding.FieldName = 'AM3'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 51
                  end
                  object grdOutputSummaryDBTableView1AM1: TcxGridDBColumn
                    DataBinding.FieldName = 'AM1'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 50
                  end
                  object grdOutputSummaryDBTableView1NM3: TcxGridDBColumn
                    DataBinding.FieldName = 'NM3'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 51
                  end
                  object grdOutputSummaryDBTableView1STYCK: TcxGridDBColumn
                    Caption = 'Styck'
                    DataBinding.FieldName = 'STYCK'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 55
                  end
                  object grdOutputSummaryDBTableView1Utfall: TcxGridDBColumn
                    DataBinding.FieldName = 'Utfall'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 72
                  end
                  object grdOutputSummaryDBTableView1ProduktVrde: TcxGridDBColumn
                    DataBinding.FieldName = 'ProduktV'#228'rde'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    Width = 50
                  end
                  object grdOutputSummaryDBTableView1medelpris: TcxGridDBColumn
                    Caption = 'Medelpris'
                    DataBinding.FieldName = 'medelpris'
                    PropertiesClassName = 'TcxLabelProperties'
                    Visible = False
                    VisibleForCustomization = False
                    Width = 51
                  end
                  object grdOutputSummaryDBTableView1Medelpris_1: TcxGridDBColumn
                    DataBinding.FieldName = 'Prisutfall'
                    PropertiesClassName = 'TcxLabelProperties'
                    Width = 62
                  end
                end
                object grdOutputSummaryLevel1: TcxGridLevel
                  Caption = 'Tabell'
                  GridView = grdOutputSummaryDBTableView1
                end
              end
              object cxLabel6: TcxLabel
                Left = 232
                Top = 7
                Caption = 'Lpm/minut:'
              end
              object cxLabel28: TcxLabel
                Left = 232
                Top = 33
                Caption = 'Verk.grad(%):'
              end
              object efficiencyFactor: TcxDBTextEdit
                Left = 318
                Top = 29
                DataBinding.DataField = 'EfficiencyFactor'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                TabOrder = 12
                Width = 65
              end
              object eRealLpmMinute: TcxDBTextEdit
                Left = 318
                Top = 3
                DataBinding.DataField = 'RealLpmMinute'
                DataBinding.DataSource = dmsSortOrder.ds_SortOrder
                TabOrder = 13
                Width = 65
              end
              object PanelMainAvRegPkgs: TPanel
                Left = 468
                Top = 0
                Width = 673
                Height = 343
                Align = alRight
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 14
                object Panel36: TPanel
                  Left = 1
                  Top = 1
                  Width = 671
                  Height = 43
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clOlive
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object SpeedButton1: TSpeedButton
                    Left = 272
                    Top = 9
                    Width = 193
                    Height = 32
                    Action = acStart
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object cxLabel42: TcxLabel
                    Left = 7
                    Top = 16
                    Caption = 'Paketnr:'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWhite
                    Style.Font.Height = -16
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
                  end
                  object Edit1: TEdit
                    Left = 80
                    Top = 9
                    Width = 186
                    Height = 28
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnKeyPress = Edit1KeyPress
                  end
                  object cxLabel1: TcxLabel
                    Left = 490
                    Top = 12
                    Caption = 'Preset digits:'
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -17
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                  end
                  object cxDBMaskEdit1: TcxDBMaskEdit
                    Left = 598
                    Top = 8
                    DataBinding.DataField = 'MarketRegionNo'
                    DataBinding.DataSource = dmSotOrderList.ds_Props
                    ParentFont = False
                    Properties.MaskKind = emkRegExpr
                    Properties.EditMask = '[0-9]+'
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -17
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Width = 59
                  end
                end
                object PanelPaketBuffert: TPanel
                  Left = 1
                  Top = 169
                  Width = 671
                  Height = 173
                  Align = alBottom
                  BevelOuter = bvNone
                  TabOrder = 1
                  Visible = False
                  object cxGrid2: TcxGrid
                    Left = 0
                    Top = 72
                    Width = 671
                    Height = 101
                    Align = alClient
                    BevelOuter = bvNone
                    TabOrder = 0
                    LookAndFeel.Kind = lfFlat
                    object cxGridDBTableView4: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      ScrollbarAnnotations.CustomAnnotations = <>
                      DataController.DataSource = ds_AvRegPkgs
                      DataController.KeyFieldNames = 'PaketNr;Prefix'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = '#,###,###.0'
                          Kind = skSum
                          FieldName = 'AM3'
                          Column = cxGridDBColumn12
                        end
                        item
                          Format = '#,###,###'
                          Kind = skSum
                          FieldName = 'TotaltStyck'
                          Column = cxGridDBTableView2TotaltStyck
                        end
                        item
                          Format = '#####'
                          Kind = skCount
                          FieldName = 'PaketNr'
                          Column = cxGridDBTableView2PaketNr
                        end
                        item
                          Format = '#,###,###'
                          Kind = skSum
                          FieldName = 'AM1'
                          Column = cxGridDBColumn11
                        end>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.ColumnFiltering = False
                      OptionsSelection.CellSelect = False
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.Indicator = True
                      object cxGridDBTableView2PaketNr: TcxGridDBColumn
                        DataBinding.FieldName = 'PaketNr'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 53
                      end
                      object cxGridDBTableView2Prefix: TcxGridDBColumn
                        DataBinding.FieldName = 'Prefix'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 31
                      end
                      object cxGridDBTableView2Produkt: TcxGridDBColumn
                        DataBinding.FieldName = 'Produkt'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 138
                      end
                      object cxGridDBTableView2StyckPerLangd: TcxGridDBColumn
                        DataBinding.FieldName = 'StyckPerLangd'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 79
                      end
                      object cxGridDBColumn11: TcxGridDBColumn
                        DataBinding.FieldName = 'AM1'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 39
                      end
                      object cxGridDBColumn12: TcxGridDBColumn
                        DataBinding.FieldName = 'AM3'
                        PropertiesClassName = 'TcxLabelProperties'
                        Visible = False
                        Width = 42
                      end
                      object cxGridDBTableView2TotaltStyck: TcxGridDBColumn
                        DataBinding.FieldName = 'TotaltStyck'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 53
                      end
                      object cxGridDBColumn13: TcxGridDBColumn
                        DataBinding.FieldName = 'NM3'
                        PropertiesClassName = 'TcxLabelProperties'
                        Visible = False
                        Width = 20
                      end
                      object cxGridDBTableView2OperationStatus: TcxGridDBColumn
                        DataBinding.FieldName = 'OperationStatus'
                        PropertiesClassName = 'TcxLabelProperties'
                        Visible = False
                        Width = 79
                      end
                      object cxGridDBTableView2Status: TcxGridDBColumn
                        DataBinding.FieldName = 'Status'
                        PropertiesClassName = 'TcxLabelProperties'
                        Visible = False
                        Width = 112
                      end
                      object cxGridDBTableView2Lager: TcxGridDBColumn
                        DataBinding.FieldName = 'Lager'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 92
                      end
                      object cxGridDBTableView2Registrerad: TcxGridDBColumn
                        DataBinding.FieldName = 'Registrerad'
                        PropertiesClassName = 'TcxTimeEditProperties'
                        Properties.ReadOnly = True
                        SortIndex = 0
                        SortOrder = soDescending
                        Width = 68
                      end
                    end
                    object cxGridLevel4: TcxGridLevel
                      GridView = cxGridDBTableView4
                    end
                  end
                  object Panel39: TPanel
                    Left = 0
                    Top = 0
                    Width = 671
                    Height = 72
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 1
                    object SpeedButton7: TSpeedButton
                      Left = 16
                      Top = 24
                      Width = 177
                      Height = 42
                      Action = acAvRegistreraPaketIBufferten
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton8: TSpeedButton
                      Left = 200
                      Top = 23
                      Width = 169
                      Height = 42
                      Action = acCancelPkgsInBuffert
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Panel30: TPanel
                      Left = 0
                      Top = 0
                      Width = 671
                      Height = 17
                      Align = alTop
                      BevelOuter = bvNone
                      Caption = 'Inl'#228'sta paket'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                    end
                  end
                end
                object PanelAvregPkgs: TPanel
                  Left = 1
                  Top = 44
                  Width = 671
                  Height = 125
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 2
                  object cxGrid1: TcxGrid
                    Left = 0
                    Top = 67
                    Width = 671
                    Height = 58
                    Align = alClient
                    PopupMenu = pmUsedPkgs
                    TabOrder = 0
                    LookAndFeel.Kind = lfFlat
                    object cxGridDBTableView3: TcxGridDBTableView
                      Navigator.Buttons.CustomButtons = <>
                      ScrollbarAnnotations.CustomAnnotations = <>
                      DataController.DataSource = dm_PkgWorkOrder.ds_UsedPkgs
                      DataController.KeyFieldNames = 'PAKETNR;LEVKOD'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = '#,###,###.0'
                          Kind = skSum
                          FieldName = 'AM3'
                          Column = cxGridDBColumn5
                        end
                        item
                          Format = '#,###,###'
                          Kind = skSum
                          FieldName = 'STYCK'
                          Column = cxGridDBColumn7
                        end
                        item
                          Format = '#####'
                          Kind = skCount
                          FieldName = 'PAKETNR'
                          Column = cxGridDBColumn1
                        end
                        item
                          Format = '#,###,###,###.0'
                          Kind = skSum
                          FieldName = 'AM1'
                          Column = cxGridDBColumn9
                        end
                        item
                          Format = '#,###,###.0'
                          Kind = skSum
                          FieldName = 'NM3'
                          Column = cxGridDBColumn6
                        end>
                      DataController.Summary.SummaryGroups = <>
                      DataController.Summary.Options = [soMultipleSelectedRecords]
                      OptionsBehavior.PullFocusing = True
                      OptionsSelection.CellSelect = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.Indicator = True
                      object cxGridDBColumn1: TcxGridDBColumn
                        DataBinding.FieldName = 'PAKETNR'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 76
                      end
                      object cxGridDBColumn2: TcxGridDBColumn
                        DataBinding.FieldName = 'LEVKOD'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 66
                      end
                      object cxGridDBColumn3: TcxGridDBColumn
                        DataBinding.FieldName = 'PRODUKT'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 234
                      end
                      object cxGridDBColumn4: TcxGridDBColumn
                        DataBinding.FieldName = 'ANTPERL'#196'NGD'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 115
                      end
                      object cxGridDBColumn5: TcxGridDBColumn
                        DataBinding.FieldName = 'AM3'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 57
                      end
                      object cxGridDBColumn6: TcxGridDBColumn
                        DataBinding.FieldName = 'NM3'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 58
                      end
                      object cxGridDBColumn7: TcxGridDBColumn
                        DataBinding.FieldName = 'STYCK'
                        PropertiesClassName = 'TcxLabelProperties'
                        Options.Filtering = False
                        Width = 93
                      end
                      object cxGridDBColumn8: TcxGridDBColumn
                        DataBinding.FieldName = 'MFBM'
                        PropertiesClassName = 'TcxLabelProperties'
                        Visible = False
                      end
                      object cxGridDBColumn9: TcxGridDBColumn
                        DataBinding.FieldName = 'AM1'
                        PropertiesClassName = 'TcxLabelProperties'
                        Width = 224
                      end
                      object cxGridDBColumn10: TcxGridDBColumn
                        DataBinding.FieldName = 'Registrerad'
                        PropertiesClassName = 'TcxLabelProperties'
                        SortIndex = 0
                        SortOrder = soDescending
                        Width = 127
                      end
                    end
                    object cxGridLevel3: TcxGridLevel
                      GridView = cxGridDBTableView3
                    end
                  end
                  object Panel37: TPanel
                    Left = 0
                    Top = 0
                    Width = 671
                    Height = 67
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 1
                    DesignSize = (
                      671
                      67)
                    object SpeedButton2: TSpeedButton
                      Left = 8
                      Top = 26
                      Width = 89
                      Height = 39
                      Action = acCancelDeregistration
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton3: TSpeedButton
                      Left = 96
                      Top = 26
                      Width = 89
                      Height = 39
                      Action = acSplitPkg
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton4: TSpeedButton
                      Left = 184
                      Top = 26
                      Width = 91
                      Height = 39
                      Action = acSearchForPackageToUnReg
                      Caption = 'S'#246'k paket'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton5: TSpeedButton
                      Left = 274
                      Top = 26
                      Width = 89
                      Height = 39
                      Action = acCreateNewPackageForMissingPkgNo
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton6: TSpeedButton
                      Left = 579
                      Top = 26
                      Width = 89
                      Height = 39
                      Action = acRefreshAvReg
                      Anchors = [akTop, akRight]
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitLeft = 592
                    end
                    object Panel38: TPanel
                      Left = 0
                      Top = 0
                      Width = 671
                      Height = 23
                      Align = alTop
                      BevelOuter = bvNone
                      Caption = 'Avregistrerade paket'
                      Color = clOlive
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                    end
                  end
                end
              end
              object cbStatus: TcxDBImageComboBox
                Left = 71
                Top = 3
                DataBinding.DataField = 'TaskStatusField'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Properties.Images = dmsConnector.ilStatus
                Properties.Items = <
                  item
                    Description = 'Prelimin'#228'r'
                    ImageIndex = 4
                    Value = 0
                  end
                  item
                    Description = 'Klar att k'#246'ra'
                    ImageIndex = 6
                    Value = 1
                  end
                  item
                    Description = 'P'#229'g'#229'ende'
                    ImageIndex = 1
                    Value = 2
                  end
                  item
                    Description = 'Avslutad'
                    ImageIndex = 2
                    Value = 3
                  end
                  item
                    Description = 'Godk'#228'nd'
                    ImageIndex = 7
                    Value = 4
                  end
                  item
                    Description = 'Outredd'
                    ImageIndex = 5
                    Value = 5
                  end
                  item
                    Description = 'Pause'
                    ImageIndex = 6
                    Value = 6
                  end
                  item
                    Description = 'Bokad'
                    ImageIndex = 7
                    Value = 7
                  end
                  item
                    Description = 'Produktion klar'
                    ImageIndex = 2
                    Value = 8
                  end>
                Properties.ReadOnly = True
                Style.Color = clWindow
                Style.LookAndFeel.Kind = lfFlat
                Style.ButtonTransparency = ebtHideInactive
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 15
                Width = 145
              end
              object eRealStartTimes: TcxDBDateEdit
                Left = 71
                Top = 29
                DataBinding.DataField = 'Start'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Properties.DateButtons = [btnClear, btnNow, btnToday]
                Properties.ImmediatePost = True
                Properties.Kind = ckDateTime
                Style.Color = clWindow
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 16
                OnEnter = eRealStartTimesEnter
                Width = 145
              end
              object eRealEndTime: TcxDBDateEdit
                Left = 71
                Top = 54
                DataBinding.DataField = 'Finish'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Properties.Kind = ckDateTime
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 17
                Width = 145
              end
              object trKassationStyck: TcxDBTextEdit
                Left = 318
                Top = 94
                DataBinding.DataField = 'KassationStyck'
                ParentFont = False
                Properties.ReadOnly = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -15
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 18
                Width = 65
              end
            end
            object Panel29: TPanel
              Left = 0
              Top = 65
              Width = 1141
              Height = 205
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object PanelFardigVaraSamman: TPanel
                Left = 0
                Top = 0
                Width = 465
                Height = 205
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object grdOutputPkgs: TcxGrid
                  Left = 0
                  Top = 24
                  Width = 465
                  Height = 181
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  LookAndFeel.Kind = lfFlat
                  object cxGridDBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = ds_NewPkgSum
                    DataController.KeyFieldNames = 'ProductNo;ALMM;SortingOrderRowNo'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM3'
                        Column = cxGridDBTableView1AM3
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'Pieces'
                        Column = cxGridDBTableView1STYCK
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM1'
                        Column = cxGridDBTableView1AM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'NM3'
                        Column = cxGridDBTableView1NM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'ProductValue'
                        Column = cxGridDBTableView1Vrde
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'AvrUrlaggPcs'
                        Column = cxGridDBTableView1AvrUrlaggPcs
                      end>
                    DataController.Summary.SummaryGroups = <>
                    DataController.Summary.Options = [soMultipleSelectedRecords]
                    OptionsBehavior.PullFocusing = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    Styles.Header = cxStyle3FardigVara
                    object cxGridDBTableView1SortingOrderNo: TcxGridDBColumn
                      DataBinding.FieldName = 'SortingOrderNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1Produkt: TcxGridDBColumn
                      DataBinding.FieldName = 'Produkt'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 228
                    end
                    object cxGridDBTableView1ActualLengthMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ALMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 68
                    end
                    object cxGridDBTableView1ActualThicknessMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ATMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1ActualWidthMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ABMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1AM3: TcxGridDBColumn
                      DataBinding.FieldName = 'AM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 70
                    end
                    object cxGridDBTableView1NM3: TcxGridDBColumn
                      DataBinding.FieldName = 'NM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 70
                    end
                    object cxGridDBTableView1STYCK: TcxGridDBColumn
                      DataBinding.FieldName = 'Pieces'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 70
                    end
                    object cxGridDBTableView1AM1: TcxGridDBColumn
                      DataBinding.FieldName = 'AM1'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 70
                    end
                    object cxGridDBTableView1SurfacingNo: TcxGridDBColumn
                      DataBinding.FieldName = 'SurfacingNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1ProductNo: TcxGridDBColumn
                      DataBinding.FieldName = 'ProductNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1Pris: TcxGridDBColumn
                      DataBinding.FieldName = 'PricePerNM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      Styles.OnGetContentStyle = cxGridDBTableView1PrisStylesGetContentStyle
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1Vrde: TcxGridDBColumn
                      DataBinding.FieldName = 'ProductValue'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1SortingOrderRowNo: TcxGridDBColumn
                      Caption = 'Radnr'
                      DataBinding.FieldName = 'SortingOrderRowNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1NTMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NTMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1NBMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NBMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1NLMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NLMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1AvrUrlaggPcs: TcxGridDBColumn
                      DataBinding.FieldName = 'AvrUrlaggPcs'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                    end
                    object cxGridDBTableView1Urlagg: TcxGridDBColumn
                      Caption = 'Url'#228'gg'
                      DataBinding.FieldName = 'Urlagg'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taRightJustify
                      Properties.ValueChecked = 1
                      Properties.ValueUnchecked = 0
                      Visible = False
                    end
                    object cxGridDBTableView1PcsAttAvrakna: TcxGridDBColumn
                      DataBinding.FieldName = 'PcsAttAvrakna'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      Styles.OnGetContentStyle = cxGridDBTableView1PcsAttAvraknaStylesGetContentStyle
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridDBTableView1
                  end
                end
                object Panel31: TPanel
                  Left = 0
                  Top = 0
                  Width = 465
                  Height = 24
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'F'#228'rdigvarusammanst'#228'llning'
                  Color = 57825
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object PanelRaVaruSamman: TPanel
                Left = 473
                Top = 0
                Width = 668
                Height = 205
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object grdInputPkgs: TcxGrid
                  Left = 0
                  Top = 24
                  Width = 668
                  Height = 181
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  LookAndFeel.Kind = lfFlat
                  object cxGridDBTableView2: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = ds_RawSum
                    DataController.KeyFieldNames = 'SortingOrderNo;ProductNo;ALMM'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM3'
                        Column = cxGridDBTableView2AM3
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'STYCK'
                        Column = cxGridDBTableView2STYCK
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'NM3'
                        Column = cxGridDBTableView2NM3
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'AM1'
                        Column = cxGridDBTableView2AM1
                      end
                      item
                        Format = '###,###'
                        Kind = skSum
                        FieldName = 'FDjustedPieces'
                        Column = cxGridDBTableView2AdjustedPieces
                      end
                      item
                        Format = '###,###'
                        Kind = skSum
                        FieldName = 'ExpectedPcsOut'
                        Column = cxGridDBTableView2ExpectedPcsOut
                      end
                      item
                        Format = '###,###'
                        Kind = skSum
                        FieldName = 'UrlaggPcs'
                        Column = cxGridDBTableView2UrlaggPcs
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object cxGridDBTableView2ProductDisplayName: TcxGridDBColumn
                      DataBinding.FieldName = 'ProductDisplayName'
                      Width = 216
                    end
                    object cxGridDBTableView2SortingOrderNo: TcxGridDBColumn
                      DataBinding.FieldName = 'SortingOrderNo'
                      Visible = False
                    end
                    object cxGridDBTableView2ProductNo: TcxGridDBColumn
                      DataBinding.FieldName = 'ProductNo'
                      Visible = False
                    end
                    object cxGridDBTableView2RawMtrlNo: TcxGridDBColumn
                      DataBinding.FieldName = 'RawMtrlNo'
                      Visible = False
                    end
                    object cxGridDBTableView2ALMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ALMM'
                    end
                    object cxGridDBTableView2STYCK: TcxGridDBColumn
                      DataBinding.FieldName = 'STYCK'
                      Width = 28
                    end
                    object cxGridDBTableView2AM3: TcxGridDBColumn
                      DataBinding.FieldName = 'AM3'
                      Width = 29
                    end
                    object cxGridDBTableView2NM3: TcxGridDBColumn
                      DataBinding.FieldName = 'NM3'
                      Width = 29
                    end
                    object cxGridDBTableView2AM1: TcxGridDBColumn
                      DataBinding.FieldName = 'AM1'
                      Width = 28
                    end
                    object cxGridDBTableView2UrlaggPcs: TcxGridDBColumn
                      DataBinding.FieldName = 'UrlaggPcs'
                      Width = 29
                    end
                    object cxGridDBTableView2AdjustedPieces: TcxGridDBColumn
                      DataBinding.FieldName = 'FDjustedPieces'
                      Width = 29
                    end
                    object cxGridDBTableView2AdjustedAM3: TcxGridDBColumn
                      DataBinding.FieldName = 'FDjustedAM3'
                      Visible = False
                    end
                    object cxGridDBTableView2AdjustedNM3: TcxGridDBColumn
                      DataBinding.FieldName = 'FDjustedNM3'
                      Visible = False
                    end
                    object cxGridDBTableView2AdjustedAM1: TcxGridDBColumn
                      DataBinding.FieldName = 'FDjustedAM1'
                      Visible = False
                    end
                    object cxGridDBTableView2Lameller: TcxGridDBColumn
                      DataBinding.FieldName = 'Lameller'
                      Width = 29
                    end
                    object cxGridDBTableView2KapSnitt: TcxGridDBColumn
                      DataBinding.FieldName = 'KapSnitt'
                      Width = 28
                    end
                    object cxGridDBTableView2ExpectedPcsOut: TcxGridDBColumn
                      DataBinding.FieldName = 'ExpectedPcsOut'
                      Width = 29
                    end
                    object cxGridDBTableView2ATMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ATMM'
                      Visible = False
                    end
                    object cxGridDBTableView2ABMM: TcxGridDBColumn
                      DataBinding.FieldName = 'ABMM'
                      Visible = False
                    end
                    object cxGridDBTableView2NTMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NTMM'
                      Visible = False
                    end
                    object cxGridDBTableView2NBMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NBMM'
                      Visible = False
                    end
                    object cxGridDBTableView2NLMM: TcxGridDBColumn
                      DataBinding.FieldName = 'NLMM'
                      Visible = False
                    end
                    object cxGridDBTableView2SizePercentOfTotal: TcxGridDBColumn
                      DataBinding.FieldName = 'SizePercentOfTotal'
                      Visible = False
                    end
                    object cxGridDBTableView2PercentAdjPcs: TcxGridDBColumn
                      DataBinding.FieldName = 'PercentAdjPcs'
                    end
                    object cxGridDBTableView2KassPcs: TcxGridDBColumn
                      DataBinding.FieldName = 'KassPcs'
                    end
                    object cxGridDBTableView2KassAM3: TcxGridDBColumn
                      DataBinding.FieldName = 'KassAM3'
                    end
                    object cxGridDBTableView2KassAM1: TcxGridDBColumn
                      DataBinding.FieldName = 'KassAM1'
                    end
                    object cxGridDBTableView2PricePerNM3: TcxGridDBColumn
                      DataBinding.FieldName = 'PricePerNM3'
                    end
                    object cxGridDBTableView2ProductValue: TcxGridDBColumn
                      DataBinding.FieldName = 'ProductValue'
                    end
                  end
                  object grdInputPkgsDBBandedTableView1: TcxGridDBBandedTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = ds_RawSum
                    DataController.KeyFieldNames = 'SortingOrderNo;ProductNo;ALMM'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'FDjustedAM1'
                        Column = grdInputPkgsDBBandedTableView1AdjustedAM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'FDjustedAM3'
                        Column = grdInputPkgsDBBandedTableView1AdjustedAM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'FDjustedNM3'
                        Column = grdInputPkgsDBBandedTableView1AdjustedNM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM1'
                        Column = grdInputPkgsDBBandedTableView1AM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'AM3'
                        Column = grdInputPkgsDBBandedTableView1AM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'ExpectedPcsOut'
                        Column = grdInputPkgsDBBandedTableView1ExpectedPcsOut
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'KassAM1'
                        Column = grdInputPkgsDBBandedTableView1KassAM1
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'KassAM3'
                        Column = grdInputPkgsDBBandedTableView1KassAM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'KassPcs'
                        Column = grdInputPkgsDBBandedTableView1KassPcs
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'NM3'
                        Column = grdInputPkgsDBBandedTableView1NM3
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'PercentAdjPcs'
                        Column = grdInputPkgsDBBandedTableView1PercentAdjPcs
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'ProductValue'
                        Column = grdInputPkgsDBBandedTableView1ProductValue
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'SizePercentOfTotal'
                        Column = grdInputPkgsDBBandedTableView1SizePercentOfTotal
                      end
                      item
                        Format = '#,###,###'
                        Kind = skSum
                        FieldName = 'STYCK'
                        Column = grdInputPkgsDBBandedTableView1STYCK
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'UrlaggPcs'
                        Column = grdInputPkgsDBBandedTableView1UrlaggPcs
                      end
                      item
                        Format = '#,###,###.0'
                        Kind = skSum
                        FieldName = 'FDjustedPieces'
                        Column = grdInputPkgsDBBandedTableView1AdjustedPieces
                      end>
                    DataController.Summary.SummaryGroups = <>
                    DataController.Summary.Options = [soMultipleSelectedRecords]
                    OptionsBehavior.PullFocusing = True
                    OptionsCustomize.ColumnFiltering = False
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    Styles.BandHeader = cxStyleOlive
                    Bands = <
                      item
                        Caption = 'Produkt'
                        Options.HoldOwnColumnsOnly = True
                      end
                      item
                        Caption = 'Avregistrerat'
                      end
                      item
                        Caption = 'Kassation'
                        Options.HoldOwnColumnsOnly = True
                      end
                      item
                        Caption = 'Bearbetat'
                        Options.HoldOwnColumnsOnly = True
                      end
                      item
                        Caption = 'V'#228'rde'
                        Options.HoldOwnColumnsOnly = True
                        Visible = False
                        VisibleForCustomization = False
                      end
                      item
                        Caption = 'Url'#228'gg'
                        Options.HoldOwnColumnsOnly = True
                      end>
                    object grdInputPkgsDBBandedTableView1ProductDisplayName: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ProductDisplayName'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 165
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'SortingOrderNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ProductNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1RawMtrlNo: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'RawMtrlNo'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1STYCK: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'STYCK'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 1
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AM3: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'AM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 1
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1NM3: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 1
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AM1: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'AM1'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 1
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1UrlaggPcs: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'UrlaggPcs'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 5
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AdjustedPieces: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'FDjustedPieces'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 3
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AdjustedAM3: TcxGridDBBandedColumn
                      Caption = 'AM3'
                      DataBinding.FieldName = 'FDjustedAM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 3
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AdjustedNM3: TcxGridDBBandedColumn
                      Caption = 'NM3'
                      DataBinding.FieldName = 'FDjustedNM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 3
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1AdjustedAM1: TcxGridDBBandedColumn
                      Caption = 'AM1'
                      DataBinding.FieldName = 'FDjustedAM1'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 3
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1Lameller: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'Lameller'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 0
                      Position.ColIndex = 4
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1KapSnitt: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'KapSnitt'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 0
                      Position.ColIndex = 5
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ExpectedPcsOut: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ExpectedPcsOut'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 0
                      Position.ColIndex = 6
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ATMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ATMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 7
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ABMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ABMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 8
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ALMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 0
                      Position.ColIndex = 9
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1NTMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NTMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 10
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1NBMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NBMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 11
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1NLMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NLMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 12
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1SizePercentOfTotal: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'SizePercentOfTotal'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 13
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1PercentAdjPcs: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'PercentAdjPcs'
                      PropertiesClassName = 'TcxLabelProperties'
                      Visible = False
                      VisibleForCustomization = False
                      Position.BandIndex = 0
                      Position.ColIndex = 14
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1KassPcs: TcxGridDBBandedColumn
                      Caption = 'Styck'
                      DataBinding.FieldName = 'KassPcs'
                      PropertiesClassName = 'TcxLabelProperties'
                      Styles.OnGetContentStyle = grdInputPkgsDBBandedTableView1KassPcsStylesGetContentStyle
                      Position.BandIndex = 2
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1KassAM3: TcxGridDBBandedColumn
                      Caption = 'AM3'
                      DataBinding.FieldName = 'KassAM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 2
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1KassAM1: TcxGridDBBandedColumn
                      Caption = 'AM1'
                      DataBinding.FieldName = 'KassAM1'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 2
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'PricePerNM3'
                      PropertiesClassName = 'TcxLabelProperties'
                      Styles.OnGetContentStyle = grdInputPkgsDBBandedTableView1PricePerNM3StylesGetContentStyle
                      Position.BandIndex = 4
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdInputPkgsDBBandedTableView1ProductValue: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ProductValue'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BandIndex = 4
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                  end
                  object cxGridLevel2: TcxGridLevel
                    GridView = grdInputPkgsDBBandedTableView1
                  end
                end
                object Panel33: TPanel
                  Left = 0
                  Top = 0
                  Width = 668
                  Height = 24
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'R'#229'varusammanst'#228'llning'
                  Color = clOlive
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object cxSplitter2: TcxSplitter
                Left = 465
                Top = 0
                Width = 8
                Height = 205
                HotZoneClassName = 'TcxMediaPlayer8Style'
                Control = PanelFardigVaraSamman
                Color = clGreen
                ParentColor = False
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 1141
              Height = 65
              Align = alTop
              TabOrder = 2
              DesignSize = (
                1141
                65)
              object SpeedButton10: TSpeedButton
                Left = 996
                Top = 4
                Width = 140
                Height = 57
                Action = ac_Exit
                Anchors = [akTop, akRight]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FB00FB04F200F20DE900E916E700E718E600E619E600E619E600
                  E619E600E619E600E619E600E619E600E619E600E619E600E619E600E619E600
                  E619E600E619E600E619E600E619E600E619E600E619E600E619E600E619E700
                  E718ED00ED12F700F708FE00FE01FF00FF00FF00FF00FF00FF00FF00FF00FE00
                  FE01F400F40BD800DA27B103C2509C08B96A970AB770970BB571970BB671970B
                  B671970BB671970BB671970BB671970BB671960AB671960AB6719609B6719508
                  B6719508B6719407B6719306B6719305B6719204B6719204B5719204B4719404
                  B46FA102B860C300C93CE900E916FB00FB04FF00FF00FF00FF00FF00FF00F400
                  F40BC301D03D7C11C192592ECCD1513ED3E85042D4EC5143D5EC5244D7EC5244
                  D8EC5244DAEC5244DBEC5244DCEC5143DDEC5142DFEC5040E0EC4F3FE1EC4F3F
                  E1EC4F3FE2EC4F3FE2EC4F3FE2EC4F3FE3EC4F40E3EC5041E1EC5243E0EC5343
                  DEEB5539D3E0621DBDB89E04BD65E100E31EFD00FD02FF00FF00FB00FB04D400
                  DE2B7213CB9F4334D3EF2E2FCAFF2121C4FF1E1EC6FF1E1ECAFF1E1ECDFF1E1E
                  D0FF1E1ED3FF1E1ED7FF1E1EDAFF1E1EDDFF1E1EE0FF1E1EE3FF1E1EE6FF2021
                  E8FF2427E9FF282BEAFF2C31EBFF2F35ECFF333BEDFF3640EDFF3A45EEFF3E4A
                  EFFF4753F0FF4F56E9FC592FCBD1A405C560F100F10EFF00FF00F200F30D9A06
                  D76B3724D1EB1717BDFF0302B6FF0000B9FF0000BDFF0000C1FF0000C4FF0000
                  C8FF0000CCFF0000D0FF0000D3FF0000D7FF0000DBFF0000DEFF0000E2FF0002
                  E4FF0608E5FF0B0FE6FF1016E7FF141CE8FF1822E9FF1D28EAFF212EEBFF2533
                  ECFF2A39EDFF3646EFFF4751E9FD6520C7B7D401DE2CFD00FD02E300ED1C6A0D
                  D8A21513BFFD0101B2FF0000B6FF0000BAFF0000BEFF0000C1FF0000C5FF0000
                  C8FF0000CCFF0202D0FF1111D6FF2A2ADEFF4343E4FF4F4FE8FF4B4BEBFF3A3B
                  EAFF2326E8FF1318E7FF1016E7FF141CE8FF1A24E9FF1E29EBFF232FEBFF2734
                  ECFF2B3AEDFF2F3FEFFF394AEFFF4838D6E6B305D650FB00FB04DB00EF244F08
                  D2B80404B3FF0000B2FF0000B6FF0000B9FF0000BDFF0000C0FF0000C5FF0202
                  C9FF2222D2FF6464E2FFA9A9F0FFD4D4F8FFE8E8FCFFEEEEFDFFECECFDFFE1E1
                  FCFFC4C4F9FF9092F4FF4C51EDFF2027E9FF1923E9FF1E29EAFF232FEBFF2835
                  EDFF2C3BEDFF3040EFFF3447F0FF3A3ADEF2A207D563FB00FB04DA00EF254701
                  CBB90000B0FF0000B1FF0000B5FF0000B9FF0000BCFF0000C0FF0808C6FF4B4B
                  D7FFB6B6F0FFEFEFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFBFBFFFFDBDDFCFF8E92F4FF353DECFF1D28EAFF222EEBFF2734
                  ECFF2B3AEDFF2F40EFFF3446F0FF3435DDF39F07D465FA00FA05DA00EE254600
                  C6B90000AFFF0000B0FF0000B4FF0000B8FF0000BBFF0808C1FF6363DAFFD9D9
                  F6FFFFFFFFFFFFFFFFFFFBFBFEFFE4E4F8FFC5C5F1FFB3B3EEFFBABAF0FFD4D4
                  F5FFF2F2FCFFFFFFFFFFFFFFFFFFF7F7FEFFAEB1F7FF4049EDFF212CEBFF2633
                  ECFF2A39EDFF2E3FEEFF3345F0FF3234D9F39E06D265FA00FA05DA00ED254600
                  C2B90000ACFF0000AFFF0000B3FF0000B7FF0303BBFF5050D2FFDBDBF6FFFFFF
                  FFFFFFFFFFFFE8E8F8FF9898E5FF4C4CD9FF2424D6FF1919D9FF1C1CDDFF3333
                  E0FF7071E6FFC7C7F3FFFBFBFEFFFFFFFFFFF8F9FEFFA9ADF7FF353FECFF2431
                  ECFF2938EDFF2D3EEEFF3244EFFF3233D6F39E06CF65FA00FA05DA00EC254600
                  BEB90303ABFF0505B0FF0606B3FF0404B7FF2C2CC5FFBDBDEEFFFFFFFFFFFFFF
                  FFFFDCDCF4FF6565D9FF0F0FCEFF0000D2FF0000D7FF0000DBFF0000DFFF0000
                  E1FF0607E1FF3335E2FFAAACEFFFF8F8FDFFFFFFFFFFF3F3FEFF7F86F3FF2834
                  ECFF2735ECFF2C3BEEFF3142EEFF3032D2F39E06CE65FA00FA05DA00EB254701
                  BBB90808AAFF0F0FB2FF1010B5FF1313BAFF7878D9FFF3F3FCFFFFFFFFFFF0F0
                  FAFF7979DBFF1717CCFF0909D0FF0505D3FF0202D6FF0000D9FF0000DEFF0000
                  E1FF0203E4FF0407E4FF3337E3FFBDBFF3FFFEFEFFFFFFFFFFFFC8CBFAFF414C
                  EEFF2431ECFF2A39EDFF2F3FEDFF2E2FCFF39E05CC65FA00FA05DA00EA254701
                  B6B90C0CA8FF1717B3FF1717B7FF2A2AC0FFB8B8EBFFFFFFFFFFFEFEFFFFB9B9
                  EAFF3434CEFF2020D0FF2121D3FF1F1FD6FF1818D8FF0F0FDAFF0707DCFF0101
                  DFFF0101E3FF0406E4FF090CE4FF5F62E8FFEDEDFBFFFFFFFFFFEEEFFDFF6C74
                  F2FF222EECFF2835EDFF2C3BEBFF2C2CCDF39E05CC65FA00FA05DA00E9254701
                  B3B91010A7FF1E1EB3FF1E1EB7FF4545C6FFDBDBF4FFFFFFFFFFF6F6FCFF8484
                  DDFF2828CDFF2929D0FF2B2BD4FF2D2DD7FF2D2DDBFF2C2CDDFF2626DFFF1919
                  E0FF0A0BE2FF0404E4FF0407E4FF292CE6FFC9CAF7FFFFFFFFFFFBFBFFFF8F94
                  F4FF232FEBFF2431ECFF2837EAFF2A28CCF39E04CC65FA00FA05DA00E8254701
                  AEB91515A5FF2525B4FF2525B8FF5C5CCBFFE9E9F8FFFFFFFFFFECECFAFF6D6D
                  D9FF2D2DCCFF3131D0FF3232D3FF3434D6FF3535DAFF3636DDFF3838E0FF3838
                  E3FF3131E5FF2021E5FF0E0FE5FF1517E6FFABACF5FFFFFFFFFFFFFFFFFFA4A8
                  F6FF252FEBFF202CEBFF2432E8FF2725CAF39D04CB65FA00FA05DA00E7254701
                  ABB91919A3FF2C2CB4FF2C2CB8FF6363CCFFEBEBF8FFFFFFFFFFECECFAFF7070
                  D9FF3434CCFF3838D0FF3939D3FF3A3AD6FF3B3BD9FF3F3FDCFF3F3FDFFF4040
                  E2FF4242E5FF4242E8FF3637E8FF2C2DE8FFACADF6FFFFFFFFFFFFFFFFFFA5A8
                  F5FF222AEAFF1C26EAFF202CE7FF2420C8F39D04CB65FA00FA05DA00E7254802
                  A7B91D1DA2FF3434B5FF3434B9FF5C5CC7FFE3E3F5FFFFFFFFFFF4F4FCFF8888
                  DFFF3E3ECDFF4040D0FF4141D3FF4545D6FF7171E2FF9E9EEDFF8383E9FF5151
                  E2FF4949E3FF4B4BE6FF4C4CE9FF5C5CECFFCECEFAFFFFFFFFFFFDFDFEFF9093
                  F1FF191FE8FF1720E9FF1B24E5FF201CC6F39C03CA65FA00FA05DA00E6254802
                  A4B92121A1FF3B3BB6FF3C3CBAFF5050C1FFCCCCEBFFFFFFFFFFFDFDFFFFB7B7
                  EBFF4F4FCFFF4646CFFF4747D2FF5C5CD9FFCDCDF4FFFCFCFEFFE3E3FAFF7C7C
                  E9FF4F4FE3FF5252E5FF5252E7FF8282EFFFEDEDFDFFFFFFFFFFF2F2FCFF6B6D
                  ECFF0E13E6FF1218E8FF151DE3FF1C16C4F39C03CA65FA00FA05DA00E6254802
                  A1B926269FFF4343B7FF4444BBFF4949BEFFA2A2DAFFFAFAFCFFFFFFFFFFEBEB
                  F9FF8484DDFF4F4FD0FF4E4ED1FF6C6CDBFFE4E4F9FFFFFFFFFFF5F5FDFF9494
                  EBFF5757E1FF5858E4FF6A6AE8FFC2C2F6FFFDFDFFFFFFFFFFFFDDDDF7FF4F51
                  E7FF0A0DE5FF0B0FE6FF0F14E1FF170FC2F39B02CA65FA00FA05DA00E5254802
                  A0B92A2A9FFF4A4AB7FF4C4CBCFF4C4CBEFF7373C8FFDFDFF0FFFFFFFFFFFEFE
                  FFFFD6D6F4FF8080DBFF5757D2FF7272DAFFE5E5F8FFFFFFFFFFF5F5FDFF9999
                  EAFF5E5EE0FF6D6DE5FFB1B1F2FFF4F4FDFFFFFFFFFFFCFCFDFFB7B7EEFF6262
                  E9FF2A2BE8FF080AE4FF0709DFFF1309C0F39B01CA65FA00FA05DA00E5254903
                  9FB92E2E9FFF5252B8FF5454BCFF5454BFFF5A5AC0FF9F9FD5FFF4F4F9FFFFFF
                  FFFFFEFEFFFFDEDEF5FF8383DCFF7878DAFFE6E6F8FFFFFFFFFFF5F5FDFF9D9D
                  EAFF7B7BE3FFC2C2F3FFF6F6FDFFFFFFFFFFFEFEFEFFDADAF2FF8585E5FF7070
                  EBFF6262EBFF2828E5FF0303DDFF0D02BEF39A00C965FA00FA05DA00E6254903
                  9EB933339FFF5959B9FF5B5BBDFF5C5CBFFF5D5DC2FF6A6AC3FFB8B8DDFFF7F7
                  FAFFFFFFFFFFFCFCFEFFA8A8E4FF7F7FDAFFE7E7F8FFFFFFFFFFF6F6FDFFA2A2
                  E9FFABABEBFFF9F9FEFFFFFFFFFFFFFFFFFFE2E2F3FF9999E1FF7676E5FF7777
                  E9FF7979EAFF6262E8FF1B1BDBFF0C00B9F39A00C965FA00FA05DA00E5254A04
                  9CB93A3AA0FF6161BBFF6262BDFF6464C0FF6565C3FF6565C4FF7474C5FFB0B0
                  D8FFE2E2EEFFD4D4E9FF8B8BD4FF8484D9FFE8E8F8FFFFFFFFFFF6F6FDFFA6A6
                  E8FFA4A4E3FFEEEEF6FFF6F6FAFFD7D7EDFF9999DDFF7C7CE1FF7D7DE6FF7F7F
                  E7FF8181E8FF8282E9FF5656DFFF1A0EB7F39A00C865FA00FA05DA00E5254C06
                  9CB94444A3FF6969BCFF6969BEFF6A6AC0FF6C6CC3FF6E6EC5FF6E6EC7FF7474
                  C5FF8585C8FF8181C9FF7474CDFF8A8AD9FFE9E9F8FFFFFFFFFFF7F7FCFFABAB
                  E7FF8282D7FFA0A0D8FFA9A9D9FF8F8FD7FF8181DEFF8383E2FF8585E3FF8686
                  E4FF8888E5FF8A8AE6FF7D7DE2FF362AB8F39A00C665FA00FA05DA00E5254F09
                  9EB95050A8FF7070BDFF7171BFFF7272C1FF7373C3FF7474C5FF7676C8FF7676
                  C9FF7777CAFF7878CDFF7A7ACFFF9191D8FFEBEBF8FFFFFFFFFFF7F7FDFFB0B0
                  E7FF8282DAFF8383D8FF8484D9FF8787DDFF8A8AE0FF8B8BE0FF8D8DE1FF8E8E
                  E2FF8F8FE3FF9191E4FF8C8CE1FF483CB8F39B01C665FB00FB04DB00E6245711
                  A1B96060AFFF7777BEFF7878BFFF7979C2FF7A7AC4FF7B7BC6FF7D7DC8FF7E7E
                  CAFF8080CCFF8181CEFF8282CFFF9696D8FFEBEBF8FFFFFFFFFFF7F7FCFFB2B2
                  E5FF8A8AD9FF8C8CDBFF8E8EDCFF8F8FDDFF9191DEFF9292DFFF9494E0FF9595
                  E1FF9696E1FF9898E1FF9696E0FF5A4EBCF3A106C964FB00FB04E000EA1F6E23
                  AFB47272B6FF7E7EBFFF7F7FC1FF8080C3FF8282C5FF8383C7FF8585C9FF8686
                  CBFF8888CDFF8989CEFF8A8AD0FF9393D2FFCDCDE5FFF0F0F5FFDCDCECFFA3A3
                  DAFF9292D9FF9494DAFF9696DBFF9797DCFF9999DDFF9A9ADEFF9C9CDFFF9D9D
                  DFFF9E9EDFFF9F9FDFFFA1A1DFFF7E70C8F1B10FD25DFD00FD02F000F50F9228
                  C495807EBDFD8686C0FF8686C2FF8787C4FF8989C6FF8A8AC8FF8C8CCAFF8D8D
                  CBFF8F8FCDFF9090CFFF9292D0FF9292D1FF9B9BCEFFA9A9D0FFA1A1D1FF9898
                  D5FF9A9AD8FF9B9BDAFF9D9DDBFF9E9EDBFFA0A0DCFFA1A1DDFFA3A3DDFFA4A4
                  DDFFA5A5DEFFA6A6DDFFAEAEE0FFA284D4E1CF0FE33FFF00FF00FE00FE01C511
                  DF4B8D6EC4E09797C7FF9191C5FF8F8FC5FF9090C7FF9292C9FF9393CAFF9595
                  CCFF9696CEFF9898CFFF9999D1FF9A9AD2FF9B9BD3FF9A9AD3FF9D9DD5FFA0A0
                  D7FFA1A1D8FFA3A3D9FFA4A4DAFFA6A6DBFFA7A7DCFFA9A9DCFFAAAADCFFABAB
                  DCFFADADDDFFB8B8E1FFC1BDE3FBB757DA9FEF03F513FF00FF00FF00FF00F301
                  F80DB32DD8799F86CDE6ABABD2FFABABD2FFABABD3FFADADD5FFAEAED6FFB0B0
                  D8FFB2B2D9FFB4B4DBFFB5B5DCFFB7B7DDFFB9B9DFFFBABAE0FFBCBCE1FFBDBD
                  E2FFBFBFE3FFC1C1E4FFC2C2E5FFC4C4E5FFC5C5E6FFC6C6E6FFC8C8E6FFC9C9
                  E7FFCFCFE9FFD1CCE9FAC07BDFBADC14EC37FE00FE01FF00FF00FF00FF00FF00
                  FF00F302F80EC71FE357B35DD9A9B885DBCCBD90DED2BF92DFD2C093E0D2C295
                  E1D2C497E2D2C598E3D2C79AE4D2C99CE5D2CA9DE5D2CC9FE6D2CDA0E7D2CEA1
                  E8D2D0A3E9D2D2A5EAD2D3A6EAD2D3A6EAD2D4A7EBD2D5A8EBD2D6A9EBD2D4A7
                  EFD2CE8FE7C0C950E486E30FF02BFD00FD02FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FE02EC05F518E210F12DE316F032E316F032E316F132E417
                  F132E417F132E518F132E518F132E518F232E518F232E619F232E619F232E619
                  F232E71AF232E71AF232E71AF332E71AF332E71AF332E71AF332E71AF332E719
                  F231E80EF325F501FA0BFF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
                ExplicitLeft = 1009
              end
              object SpeedButton11: TSpeedButton
                Left = 137
                Top = 4
                Width = 144
                Height = 57
                Action = acAvsluta
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FC00FC03E903EA16ED02EE12FE00FE01FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FB00FB04CC11D4336E5192917F439D80DD08E122FD00FD02FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F900
                  F906BF18C940506C7FB124BA6CF72AB06FEF69568E97D30ED92CFC00FC03FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F600F609B81B
                  C347457476BC33BF74F983E6B1FF87E5B3FF3CB677F25D5E85A3CD10D332FB00
                  FB04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F201F20DA823B6573B7A
                  6CC731C170FD71E4A5FF85F2B7FF9EF7C9FF98EABFFF41BC78F8516679B1BF16
                  C840F900F906FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00EE02EF119F28AE60327F63D12BBE
                  6AFD5BE094FF62EB9BFF70EFA7FF88F5BCFFA8F9D2FF9CEBC2FF41BB75F9476C
                  70BCB719C148F600F609FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FE00FE01E904EA168E31A07129845ADA24BF64FF40DB
                  7FFF3EE27EFF4CE689FF64EC9EFF79F1B0FF8BF5BFFF9CF8CAFF8EE9B8FF3FBE
                  73FD3C7365C8A821B457F201F20DFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00E305E51C8435967B218751E21CBB5CFF25D66AFF1ADA
                  5FFF29DE6CFF40E37FFF54E891FF66ECA0FF74F0ABFF7AF2B1FF81F1B4FF78E5
                  A8FF39BB6DFD33785CD29E25AB61EE02EF11FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FD00FD02DB07DD24733D878C1A8948E915B956FF18D05CFF05D24AFF07D5
                  4EFF1ADA5FFF2EDF70FF40E380FF4FE78CFF5BEA95FF60EB9AFF5EEB99FF5EEA
                  98FF5CE092FF31BC66FF2A7D52DB8E2D9C71E903EA16FE00FE01FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00
                  FD02D30AD62C69417C96128A40EF0DB44DFF0EC951FF03CA43FF00CD43FF01D2
                  48FF0AD652FF1BDA60FF2BDE6EFF38E278FF41E480FF46E584FF45E583FF3FE3
                  7FFF3AE27AFF3CDA7AFF26B85DFF237F4AE28431927BE305E41CFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F900F906CA0D
                  CE3558496CA70C8938F305B245FF06C346FF01C33BFF00C63DFF00CA41FF00CE
                  44FF01D248FF08D54FFF14D95AFF1FDC63FF27DD6AFF2ADE6DFF29DE6CFF24DD
                  68FF1CDB60FF14D95AFF1ED461FF1CB654FF1C8141E97339828CDB07DD24FD00
                  FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C411C83B524B
                  64AD088930F700AC3CFF01BB3CFF00BB34FF00BF36FF01C33BFF06C842FF0ECE
                  4BFF15D254FF1CD65BFF23D962FF2ADC68FF2FDD6CFF2FDD6CFF29DC68FF1FDA
                  61FF11D756FF06D44CFF03D148FF10CE53FF13B24CFF158138EF693C7796D309
                  D52CFD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00793986860C82
                  2EF300A634FF00B332FF00B42DFF05B934FF15C145FF29C957FF3AD167FF45D6
                  72FF4BD978FF44DA75FF29D662FF31D969FF4CDE7DFF4FE080FF4DDF7EFF49DE
                  7BFF41DC75FF34D86AFF21D25AFF0FCD4BFF0BC84AFF0CB044FF0F8130F35843
                  66A7CA0CCC35F900F906FF00FF00FF00FF00FF00FF00FF00FF006C497E93069A
                  30F900AA29FF03AD2AFF1AB840FF3BC65EFF53CF74FF5DD47EFF60D782FF60D9
                  84FF52D87BFF2ACE5EFC33A666D135AB69D537D66BFE59DE85FF60DF89FF5FDF
                  89FF60DE88FF5FDD87FF5ADA82FF4CD676FF2DCD5CFF0EC247FF03AB3BFF0880
                  29F74F445BB0BF0FC140F900F906FF00FF00FF00FF00FF00FF008347937C0E98
                  2CF10DA92BFF39BC55FF62CC7AFF6FD387FF71D58AFF70D78BFF70D98CFF5CD5
                  7EFF2BC55AF94F8A77B4C62BD339BD32CC424A9775BF3BD06AFB67DE8BFF70DF
                  93FF70DF92FF70DE91FF70DD91FF71DC90FF6AD889FF45CD6AFF11BD43FF00A7
                  33FF057D20FA404A4ABFB412B64BF500F50AFF00FF00FF00FF00D618DA296260
                  729D25A43EF564C878FF81D593FF80D693FF80D895FF7FD996FF63D381FF2EBE
                  56F75C7A7DA6D122DA2EFF00FF00FD01FD02C829D43756887CB13ECC69FA71DD
                  91FF81E09CFF7FDF9BFF7FDE9AFF7FDD99FF80DC98FF7CD994FF55CC72FF19B9
                  43FF00A02BFF037B1AFC38493EC7A915AA56F300F30CFF00FF00FF00FF00E310
                  E61C735A82903CA551EE71CD83FF8FD99FFF8EDA9FFF69D081FF2FB253F16B6A
                  8596DF16E520FF00FF00FF00FF00FF00FF00FF00FF00D71DDF28627982A33FC2
                  66F57ADC95FF90E1A6FF90E0A5FF90DFA4FF90DEA3FF90DDA3FF8EDBA0FF6CCF
                  82FF26B647FF039B26FF017712FE2B4D2ED49C199C63EC02EC13FF00FF00FF00
                  FF00E70EE91881508D813DA353EB74CD85FF6BCC7FFF33A950ED795B8D87E412
                  E81BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DD18E322716A
                  8B9341BB64F281DA98FFA1E3B1FFA0E2B0FFA0E1AFFFA0E0AEFFA0DFAEFF9FDE
                  ACFF7ED18EFF30B349FF02941DFF01730CFE2A4C2BD5A11AA15EFF00FF00FF00
                  FF00FF00FF00EF09F0108E469A7238954FDF31984AE2884D9877ED0BEF12FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E810
                  EB177E5C938444AE62E986D899FFAFE5BBFFB1E5BCFFB0E4BBFFB0E3BAFFB0E3
                  BAFFB0E2B9FF92D59DFF3BB14CFF069019FF076E10F86E336F91FF00FF00FF00
                  FF00FF00FF00FF00FF00F207F30DAF31B750AC33B453F109F30EFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00EC0CEF138D4D9D7445A65FE588D699FFBFE8C7FFC2E9C9FFC1E8C8FFC1E7
                  C7FFC1E7C7FFC1E6C7FFA5D9ABFF4AB256FF0C8719F96E407391FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F407F50B9B40A8644A965FD889D395FFCAEBD0FFD2EED7FFD1ED
                  D5FFD1ECD5FFD2ECD6FFCAE8CDFF72C078FF2B7C34DE9E31A161FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00F605F709AA34B2554C8C5ED286CD91FED8EFDCFFE3F3
                  E5FFE4F3E5FFD6EDD8FF7FC484FF3E8444DE98369B67EF08EF10FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FB02FB04B829BD47547B60C383C88BFCE1F2
                  E3FFDEF0DFFF7BC17FFE437848D0A72EA858F803F807FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FC02FC03C420C63B5A7062BA73BB
                  78FB6BB86FFE49724EC8B526B64AF903F906FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CF19D0306457
                  68A1585C5CACC21FC23DFD01FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01E80C
                  E817E50DE51AFD01FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
              end
              object SpeedButton9: TSpeedButton
                Left = 8
                Top = 4
                Width = 121
                Height = 57
                Action = acCalcKassation
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FC00FC03F700F708F000F00FEC01EC14E901E917E901E917EC01
                  EC14F000F00FF700F708FC00FC03FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01F700F708E703
                  E71BD60ED637C31BC357B228B275A32FA38B9732979A8D308DA28D308DA29833
                  989AA632A68BB52BB575C41CC457D60ED637E803E81AF700F708FE00FE01FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00F400F40BDD0BDD2DC32AC366B050
                  B09FA26DA2CA967A96E3897B89F17E767EF7706C70FB636163FD636163FD7470
                  74FB857D85F7918391F19D819DE3A872A8C9B453B49EC42AC465DE0BDE2CF400
                  F40BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FA00FA05E20AE227C539C573B674B6BDAF9CAFECA9A6
                  A9FCA2A2A2FF9C9C9CFF989898FF949494FF909090FF8B8B8BFF8B8B8BFF9393
                  93FF9A9A9AFF9F9F9FFFA4A4A4FFAAAAAAFFB0ADB0FCB4A0B4EBB875B8BCC637
                  C670E30AE326FA00FA05FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F500F50AD61ED647C26BC2A8BFABBFEBBCBBBCFEB8B8B8FFB9B9
                  B9FFC1C1C1FFCACACAFFD2D2D2FFD9D9D9FFDDDDDDFFDEDEDEFFDEDEDEFFDDDD
                  DEFFDADADAFFD4D4D4FFCDCDCDFFC5C5C5FFBFBFBFFFBDBDBDFFBFBEBFFEBFAB
                  BFEBC168C1A6D61BD644F600F609FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00F402F40DD42ED459C895C8CCCAC6CAFBC5C5C5FFC5C5C5FFD0D0D0FFDDDD
                  DDFFE9E9E9FFF2F2F3FFF8F8F9FFFBFBFCFFFDFDFCFFFDFDFBFFFDFDFBFFFDFD
                  FCFFFBFBFCFFF7F7F9FFF1F1F2FFE9E9E9FFDDDDDDFFD1D1D1FFC6C6C6FFC5C5
                  C5FFC7C2C7FAC48EC4C9D32AD356F502F50CFF00FF00FF00FF00FF00FF00FA00
                  FA05DA2CDA51CF9ECFCECFCECFFEC4C4C4FFC7C7C7FFD8D8D8FFE9E9EAFFF3F3
                  F4FFF9F8F3FFFCF9E4FFFEF8CDFFFFF9B7FFFFFBAAFFFFFDB1FFFFFEB2FFFFFE
                  B5FFFFFDC4FFFEFDD5FFFCFCE8FFF9F9F3FFF2F2F3FFE7E8E9FFD7D7D7FFC6C6
                  C6FFC2C2C2FFC9C7C9FDC894C8CBD927D94DFA00FA05FF00FF00FE00FE01E718
                  E730D493D4BECFCDCFFDBABABAFFC3C3C3FFDDDDDDFFEBEBECFFF3EEE1FFF8EA
                  B9FFFCE786FFFEE861FFFFEE4DFFFFF546FFFFFA4CFFFFFC82FFFFFD80FFFFFC
                  6EFFFFFC73FFFFFC77FFFEFB82FFFCFA9AFFF7F6C1FFF1F1E2FFEAEAEAFFDBDB
                  DBFFC1C1C1FFB7B7B7FFC7C5C7FDCC87CCBAE614E62DFE00FE01F605F60EDC5D
                  DC80CFC6CFF6ACACACFFBBBBBBFFDADADBFFE7E5E1FFF0DFB7FFF9D66FFFFED5
                  42FFFFDD34FFFFE736FFFFF23BFFFFF946FFFFFC5BFFFFFD84FFFFFD8DFFFFFD
                  89FFFFFD8AFFFFFD82FFFFFC73FFFFFC62FFFDFA5EFFF8F37DFFEEEBBCFFE5E5
                  E0FFD8D8D9FFB9B9B9FFA8A8A8FFC6BBC6F4D753D77BF603F60CEB1FEB33D79E
                  D7C6ACACACFFADADADFFD3D4D4FFDFDBD3FFEDCE8EFFFBC442FFFFCA2BFFFFD5
                  2FFFFFE235FFFFED39FFFFF840FFFFFC55FFFEFC71FFFCFA88FFFBFA9AFFFEFD
                  A8FFFFFEABFFFFFEA2FFFFFD8FFFFFFC77FFFFFC5BFFFFF945FFFAEF54FFECE3
                  99FFDEDCD4FFD1D1D2FFAAAAAAFFA6A6A6FFCD90CDC2EA1AEA2FE545E55FBDA4
                  BDE6A1A1A1FFC6C7C7FFD5D3CEFFE6C387FFFBB832FFFFC027FFFFCD2CFFFFD9
                  30FFFFE536FFFAEC42FFF3EE62FFEEEC8CFFE1DFA0FFC6C495FFB3B28CFFC1C0
                  9CFFC5C497FFDCDB9BFFF8F69CFFFFFD87FFFFFC6AFFFFFB4EFFFFF43CFFFBE7
                  47FFE6D993FFD4D3CEFFC4C4C4FF9D9D9DFFB59AB5E4E13CE15AD859D880A397
                  A3F3B3B3B3FFCBCCCCFFD7BE9BFFF4AC38FFFFBA30FFFFC73BFFFFD139FFFCDA
                  3CFFE3D158FFC9C384FFBCBBA5FF9E9B96FF969493FF9E9C9DFF888788FF8383
                  83FF82827EFF909080FFB4B185FFE2DD83FFFDF970FFFFFC53FFFFF63FFFFFEA
                  37FFF6DB4AFFD8CEA3FFC9C9CAFFB0B0B0FF9E909EF1D44FD47AC454C48F9D95
                  9DF7BEBEBFFFC9C4C0FFDDA45DFFFAAB30FFFFC44EFFFFCF55FFF5CF55FFCEBA
                  6BFFBCB8A4FFB9B8B8FFA3A3A4FF5B5B5BFF63605AFFA7A69AFFA8A89DFF9897
                  92FF9B9B9CFF9B9B9CFF9E9D9BFFAFAB93FFD0C768FFF8F24FFFFFF73FFFFFEB
                  38FFFEDE34FFE4CD6CFFC8C7C0FFBBBCBCFF9A8F9AF4C248C285B346B392A19A
                  A1F8C0C1C2FFC6B7A9FFE2963DFFFBB348FFFFC95FFFFED162FFC4A95EFF8581
                  76FFBFBFC0FFCFCECEFFC4C1BFFFB19E83FFC9B458FFE4DF75FFE7E595FFD3CA
                  7CFFBCAF8FFFB9B5B4FFC4C4C5FFA7A6A8FF7B745AFFD2C442FFFFF53DFFFFEA
                  37FFFFDD31FFEFCD4AFFC8C2AEFFBEBFBFFF9E939EF4B43AB485AE3DAE8EA49C
                  A4F7C1C1C2FFC3AF9DFFE49949FFFBC06CFFFFCD6EFFF7CB6CFFA18F6BFF8181
                  82FFB7B7B7FFC8C7C7FFD4C3B7FFDFB778FFE4CD67FFD8D483FFDEDDA7FFF9F3
                  7DFFE8D055FFD1C3A9FFD5D3D4FFC7C6C6FFA7A4A2FFC8B463FFFCEA3BFFFFE8
                  3FFFFFDE46FFF3CD48FFC7BEA2FFBEBFC0FFA095A0F4AE34AE85B432B47DA497
                  A4F2C0C1C2FFC0AE9FFFE09E5EFFFAC987FFFFD17CFFF3C976FFB1A089FFA9A8
                  A9FFC1BFBFFFBDBBBBFFC9BBB2FFD7C2A6FFDDD5BEFFD2D1CCFFCDCCC1FFE6E0
                  7FFFECD544FFA99B70FFBDBBBDFFD7D4D4FFCBC8C8FFCFB575FFFAE037FFFFE5
                  45FFFFDE59FFF0CA53FFC4BCA4FFBEBFC0FFA193A1F1B62EB677C823C85AA38A
                  A3E6C1C1C2FFBEB6AEFFD3945AFFF5B86FFFFED081FFF5CF89FFD2C4B1FFD9D7
                  D8FFE4E3E3FFE6E5E5FFECEAEAFFEAE7E4FFEDE7D7FFEAE7D9FFE6E5E0FFDED8
                  B0FFBBAC71FF757061FF868687FF8D8C8DFF9B918BFFD8B357FFFDE033FFFFDC
                  32FFFFD12FFFE2BF57FFC0BCB3FFC0C0C1FFA287A2E4CA20CA55E30EE32AA669
                  A6C2BFBFBFFFC3C2C2FFC19D7DFFE9AB69FFFDCF8AFFFADA9EFFF1E7D3FFEAE3
                  DBFFD8D6D6FFDADADAFFE2E2E1FFD3D1CFFFDFD9C9FFE5E0CBFFE6E4E0FFEAE9
                  E7FFC2C0BEFF999798FF919091FF888584FFA6906FFFEDCE5DFFFFE44FFFFFD9
                  3EFFF6C838FFCAB77FFFC3C3C3FFBEBEBEFFA766A7BEE50DE527F902F908BE37
                  BE78B2A9B2F6CDCDCEFFBDB4ACFFCC9E6FFFF4C283FFFED99BFFFADEA7FFEFD5
                  A4FFCFBDA6FFC5BEB9FFCECBCBFFCFCECEFFC9C9C9FFD5D4D4FFD8D7D7FFD6D6
                  D6FFE4E4E5FFC8C7C8FFADA7A2FFCABA9EFFF1DE9EFFFEEE9CFFFFEB95FFFBDD
                  77FFD6BA6BFFC0BBAFFFCDCDCEFFB1A7B1F5BF34BF74FA02FA07FF00FF00E90C
                  E922B065B0B4C6C3C6FCCFD0D0FFB9ADA2FFCEA577FFF4C98DFFFFDEA3FFFFE3
                  A6FFF9DEA7FFE9D2A9FFDACAB0FFCFC4B4FFBDB5AAFFC4BDB5FFCFC8BFFFCCC4
                  B8FFE1D9CDFFEBE9E6FFDED7CCFFE6D8ADFFFBEDABFFFFEFABFFF7E199FFD4BF
                  83FFBCB7A7FFD0D0D1FFC5C2C5FCB161B1AFEB0BEB1FFF00FF00FF00FF00FD00
                  FD02DB1BDB3FB57BB5C5CFCECFFED2D2D3FFB7AEA4FFC1A47EFFE8C38AFFFCDD
                  A4FFFFE8B1FFFFEAB4FFFDE9B5FFF8E5B4FFF2E1B4FFF0E0B6FFF2E2B7FFF5E5
                  B6FFF7EABAFFF3ECD2FFF0EEE9FFEBE5D5FFEDDDADFFE8D393FFC3B487FFB9B5
                  A9FFD3D4D4FFCFCECFFEB479B4C4DC1ADC3DFE00FE01FF00FF00FF00FF00FF00
                  FF00FC00FC03DC1BDC3EBC78BCBBD2CBD2F8DADBDBFFBFBDBAFFAFA28DFFC2A9
                  7FFFDEC28EFFF1D7A1FFFBE5B0FFFFEBB8FFFFEFBDFFFFF3C7FFFFF3C3FFFFF2
                  BEFFFFF0BAFFF8E9B5FFE3DABDFFD3D0CAFFBCB39AFFAFA791FFC0BFBCFFDBDB
                  DCFFD1C9D1F7BD76BDB8DD1BDD3DFC00FC03FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FD02E614E62DC75AC792CEB4CEE5DFDEDFFED5D5D6FFBAB8
                  B4FFA8A091FFAC9D82FFBEAB86FFCFBB8FFFDAC696FFDCCCA0FFDCCB9DFFD9C8
                  97FFCFBF91FFBDB089FFA9A189FFA8A7A3FFBDBDBCFFD5D6D6FFDFDEDFFECDB1
                  CDE3C857C88EE713E72BFD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00F605F60EDC2ADC4DD070D09FD8B5D8DCE1DA
                  E2F7DFDFE0FFD0D0D1FFC0C0BEFFB9B7B2FFB5B2ABFFB1AFA7FFB1AFA7FFB6B3
                  ACFFB9B7B3FFC1C0BEFFD0D1D1FFDFDFDFFFE2D9E2F6D8B3D8DACE6CCE9DDD28
                  DD4AF604F60DFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F407F412E424E43FDB53
                  DB77DB88DBACE0B2E0D1E6CEE6E7E7D8E7F0E6DCE6F5E5DEE5F8E5DEE5F8E6DC
                  E7F5E7D8E7F0E5CCE5E6DFB0DFD0DA86DAABDC52DC75E524E53EF507F511FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FC00
                  FC03F608F611EF17EF27E82BE842E63EE657E54EE568E356E372E457E472E54D
                  E567E63EE657E82BE842EF16EF26F608F611FC00FC03FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01FE00FE01FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
              end
              object SpeedButton12: TSpeedButton
                Left = 290
                Top = 4
                Width = 137
                Height = 57
                Action = acSetStatusOutredd
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FB00FB04CF07D833A811AE67AE11AA66D203D131F900F906FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00
                  FD02CC0DDB387049B8AE686EA4E5936F93E1A7309D92E203E121FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FC00FC03CA0D
                  DB396D58C1B774BCE4FA8CC9E4FF799CB9FF9B659FCCD70FD43AFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01FA00
                  FA05E006E71FD207DA2DF200F20DFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00FD02CB0EDD396E57
                  C4B374BFE6FAA8E8FCFF84D3F6FF419FD9FF6B5BB6C6DB0EE130FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F106F015C320
                  C659875DC1A16E70BDB99A23B96DD602D929F400F40BFC00FC03FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FC00FC03CA0FDE396D5FC9B775C2
                  E9FAA8E8FCFF86D3F6FF40AEECFF3180D6E99A30D972F304F80DFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E423E43EC99C
                  CBD0BCCDD6F8A9D6DBFD8A9FC1E3964FA9A7B120B16EC00EC04DD204D231E200
                  E21DF100F10EFA00FA05FE00FE01FC00FC03CB10DF396F5ECCB375C4ECFAA7E8
                  FCFF85D3F6FF42AFEDFF3182D9E99238DB7BF106F810FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00FD02DE44DE65E2D4
                  E2F1ECEBEBFFEAE9E9FFE3E7E7FFD8D8DDFBCDBDCEEEBF9CBFDCB377B3C3AE55
                  AEA6B136B184B91EB964C80DC844B814CD4E6D64D0B775C5EDFAA7E9FCFF85D3
                  F6FF40AFEDFF3283DCE89638DF76F106F810FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F402F40DD068D394E6E2
                  E6FBECECECFFEDEDEDFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFE9E9E9FFE3DF
                  E3FBD8CCD8F3CBB2CAE7B88FBED3717AC1D76FC0EBFAA7E8FCFF85D3F6FF41AF
                  EDFF2884D7F0813AD08AE704EE18FE00FE01FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01CB21E141B9A9D3D6ECEC
                  ECFFEDEDEDFFE4E1E1FFD3CBCCFFC8BCBBFFC3B6B4FFC3B6B4FFC9BDBDFFD6CF
                  CFFFE9E7E7FFEFEEEEFFE8E8E9FFAFC7DAFF85C4E5FF7CCDF3FF3FAFEEFF319E
                  E1FF7689C3E5A749AF9DBA24B96AD90AD930FC00FC03FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00E80BF2199874D99DC4DCE1FBEBE9
                  E9FFD1C8C8FFBFAEA8FFC4B2A2FFD0C1AAFFD7CCB3FFD6CBB5FFCCBFB0FFBEAE
                  A6FFBCACAAFFC9BCBCFFD0C5C5FFD0C7C8FFA5BBCFFF52A9DFFF34A1E4FF93C5
                  E6FFE2E4EAFCE2D8E1F6CFB2CFE2D138D166FB00FB04FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FA01FB05B349E5658FC9E3E8D7E2E2FFCEC1
                  C0FFC5AFA0FFE0CDACFFF1E6BCFFF5F0C8FFF7F7D3FFF8F7D9FFF5F4DCFFEFEB
                  DAFFD7CEC3FFB7A6A2FFB9A7A7FFC2B2B1FFCEC5C6FFB0CCE1FFA9D1EBFFE9EE
                  F2FFF6F5F4FFF6F6F6FFE7CAE7E2E42FE44AFF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00D81BEC2E8BABEAC2A4E5E6FECBC5C4FFCDB5
                  A3FFEDD7AEFFF9EABDFFF9F0C7FFF8F5CFFFF7F7D6FFF4F4D9FFF2F2DEFFF2F2
                  E3FFF4F3E8FFE7E0DAFFBDACA9FFB19D9DFFD8CFCFFFF4F4F4FFF3F4F4FFF5F5
                  F5FFF5F5F5FFF4F4F4FFE0A0E0BFED12ED24FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00EF07F511A371E68A8CEDF5F7ABD5D5FFCAB6A9FFECD1
                  A8FFFAE5B6FFFAEAC0FFFBF2CBFFFCF9D4FFFCFCDCFFFBFBE1FFFAFAE7FFF8F8
                  ECFFF9F9F2FFFBFBF6FFE3DCD7FFB8A7A5FFE1DBDBFFF7F7F7FFF7F6F6FFF6F6
                  F6FFF7F7F7FFF2EFF2FCDD6DDD8FF603F60CFF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FD02C338E7508BCFF2DC96F4F4FFACC1BEFFDFC2A4FFF6DA
                  A8FFF5DFB2FFF6E6BDFFFAF1CAFFFCF9D4FFFCFCDCFFFDFDE3FFFDFDE9FFFDFD
                  EFFFFDFDF5FFFDFDF7FFF8F7EEFFD1C5BFFFD5CBCBFFF7F7F7FFF8F8F8FFF8F8
                  F8FFF8F8F8FFEDDDEDEFE03EE05DFD00FD02FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E212EF22949CE9B291FBFDFD98EAEAFFBABCB3FFEFCDA2FFF5D8
                  A7FFF0D9ACFFF1E1B7FFF4ECC4FFF7F4CFFFF9F9D8FFFAFADEFFFCFCE5FFFDFD
                  ECFFFDFDF0FFFDFDF2FFFDFDEFFFE7E1D4FFCCBFBEFFF3F2F2FFFAFAFAFFF9F9
                  F9FFFAFAFAFFE6B9E6D2E91AE930FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00F603F909AF5AE6738BE8F7F098FFFFFF9CE1E1FFCBC0B0FFF4D0A0FFF8DB
                  A9FFF8E2B3FFF8E8BCFFF7EBC3FFF6F0CAFFF5F5D3FFF5F5D9FFF7F7DEFFFBFB
                  E6FFF8F8E6FFF8F8E7FFFBFBE8FFF1EDDAFFCFC2BEFFEFECECFFFCFCFCFFFBFB
                  FBFFF9F8F9FEE18AE1A8F308F314FF00FF00FF00FF00FF00FF00FF00FF00FE00
                  FE01CE2AEA3F8DC0EFD096FFFFFF98FDFDFFA7DDDDFFD8C4B2FFF6D09EFFFADC
                  A8FFFAE2B3FFFBE8BDFFFBEEC8FFFBF3CDFFFBF8D3FFFBFBDBFFFBFBDEFFFCFC
                  E1FFF7F7DEFFF5F5DDFFF5F5DCFFF1EFD6FFCBC0BAFFD9D6D6FFE8E9E9FFF1F1
                  F1FFF3E8F3F4E157E175FB00FB04FF00FF00FF00FF00FF00FF00FF00FF00EB0A
                  F3169C84E79C8FF6FBFA9AFFFFFF98FBFBFFB9E0E1FFE0CBBBFFF3CC9BFFF8D9
                  A4FFF9E3B2FFFBECC1FFFCF2CFFFFCF4D5FFFDF6D1FFFDFBD6FFFFFEDCFFFEFE
                  DDFFFDFDDEFFFCFCDEFFFBFBDCFFF3F0D3FFCEC4BDFFDCDADAFFDEDEDEFFE4E4
                  E4FFEACAEADFE72EE746FF00FF00FF00FF00FF00FF00FF00FF00F901FA06BA46
                  E65F8ADEF4E998FFFFFF99FFFFFF9BF7F7FFCFE8E9FFE5D5CCFFF1CB9EFFF8D7
                  A0FFF7E0ADFFF7E7BBFFF8ECC9FFF9EFD2FFF7EECAFFF9F0CAFFFDF9D4FFFEFB
                  D6FFFEFDD8FFFEFDD9FFFEFDD7FFEEE8CCFFDAD1CDFFF9F8F8FFFCFCFCFFFAFA
                  FAFFE6A1E6BAEF11EF21FF00FF00FF00FF00FF00FF00FF00FF00D520EB3492AA
                  ECBD94FDFEFE99FFFFFF98FFFFFFA0F3F3FFE2F1F2FFECE4E1FFECCDAEFFF8D4
                  9CFFF9DFAAFFF9E7B6FFFAEBC2FFF9EDC7FFF5E8C0FFF4E7BEFFFAF1C8FFFDF4
                  CDFFFEF6CFFFFEF8CFFFFCF5CCFFE2D7C5FFE7E1E0FFFFFEFEFFFFFFFFFFFAF6
                  FAFBE370E38CF703F70BFF00FF00FF00FF00FF00FF00FF00FF00A573EE848BEC
                  FAF199FFFFFF99FFFFFF97FEFEFFABF0F0FFF1F8F8FFF6F4F4FFE8D7CBFFF3CF
                  A1FFF8D8A0FFF9E0ABFFFBE7B6FFFCEBBCFFFBE9BCFFFBEABDFFFBEAC0FFFCEC
                  C3FFFDEFC4FFFDF0C3FFF0E3C4FFDFD5CFFFF7F5F5FFFFFFFFFFFFFFFFFFF3E1
                  F3EDE43DE458FE00FE01FF00FF00FF00FF00FF00FF00FF00FF00CC4BFE4CA89E
                  FE9F94E1FFE194FBFFFB97FCFCFFBAF0F1FFF9FCFCFFF2F2F2FFDAD6D5FFE7D1
                  BEFFF5D1A1FFF9D79FFFFADFA8FFFBE2ADFFFBE3B1FFFBE3B3FFFBE3B6FFFCE6
                  B7FFFBE7B9FFF4E2BFFFE4D7CCFFEFEBEBFFFEFEFEFFFFFFFFFFFFFFFFFFEBBC
                  EBD0EB1AEB2EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01FF01F310
                  FF10D443FF43B08DFF8D98CDF7D4C5E5E6F9FAF8F3FFF4F3F1FFE2E1E2FFE1DD
                  DCFFECDACAFFF3D3AEFFF7D2A1FFF8D5A0FFF9D8A3FFF9DAA7FFFADDACFFF8DF
                  B2FFF0DCBFFFE7DBD1FFF1EDECFFFEFEFEFFFFFFFFFFFFFFFFFFFCFBFCFEE589
                  E5A3F507F511FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F50CFF0CD241E953CBAAA9DCE4D4A9FFEBDFBFFFEEE6CFFFEFEA
                  DCFFF0ECE4FFF0E6DCFFF0DDCBFFF2D9BFFFF3D9BAFFF3D9BCFFF0DBC4FFE5D6
                  C9FFD6CFCCFFE3E0E0FFF1F1F1FFF7F7F7FFFEFEFEFFFFFFFFFFF6EAF6F3E456
                  E471FC01FC04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00E725D742D2A08CDFDECB97FFDDCA93FFE1CE9CFFE5D4
                  A7FFE7D8AFFFEADDBBFFECE0C7FFECE2CFFFEEE5D8FFF0E9E2FFF2EDEBFFE8E6
                  E6FFD7D6D7FFDBDBDCFFD7D7D7FFDCDCDCFFF6F6F6FFFFFFFFFFEFCCEFDCE92C
                  E942FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FD02DE40C468D4B388F1E0CE9BFFDCC78DFFE2D09FFFE6D6
                  ACFFE7D6ACFFE7D6ABFFE8D8AFFFE9D8B1FFECDCB9FFEEE0C1FFF2E6CCFFF4EA
                  D7FFF3EDDFFFF6F2EAFFF1EFEBFFEEEDECFFFAF9F9FFFEFEFEFFE8A0E9B7F111
                  F11FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FC03FC06DD58BA83D3B981F9DAC58AFFDDC890FFDDC78EFFE0CC
                  98FFE5D4A7FFE7D6ABFFEAD9B3FFEBDBB7FFEDDDBBFFECDCB7FFEFDFBFFFF1E2
                  C4FFF2E2C4FFF3E3C5FFF5E5CAFFF8EBD6FFFAF1E2FFF8EDE8FAE46BE187F702
                  F70AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FE02FE03F02EE041E564BD89E083ABB0DE9D9ED0DCB194E8DCBE
                  90F6DEC792FDE2CC99FFE6D2A4FFEAD8B0FFE9D6ACFFEAD7AFFFEEDDBBFFF2E3
                  C6FFF2E3C6FFF2E0C0FFF1DBB7FFF2DDBBFFF5E1C1FFEDCBC7ECE439DE56FE00
                  FE01FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF01FF01FD04FD06FB0DF812F71CEF26F235E246EE50
                  D369E970C391E68CB7B3E5A7ADD2E6BCAAE7E6C9A5F6E7D2A5FFEAD5AAFFEDD9
                  B1FFEFDBB6FFF0DCB9FFF1DCB8FFF3DEBCFFF5E0C0FFE5A5C5CCEC16E92AFF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01
                  FF01FD07FC0AFB13F619F725EE30F43EE34EF05BD771EE7BCB97EC9BC0BCEBB5
                  BADAECC9B6EEEED4B7F9F1DBB9FEF3DFBDFFF3DFC0FFE27ACBA0F506F510FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01FE02FD08FC0AFB13F818F927
                  F130F644E752F363DD77F285D59DF3A4CFBEF0AFCCCDEB45DF5EFC00FC03FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FE02FE03FC0EFB11FB1DF623F82CF136FB11F816FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
              end
              object SpeedButton13: TSpeedButton
                Left = 435
                Top = 4
                Width = 137
                Height = 57
                Action = acSetStatusPause
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FB00FB04CF07D833A811AE67AE11AA66D203D131F900F906FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00
                  FD02CC0DDB387049B8AE686EA4E5936F93E1A7309D92E203E121FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FC00FC03CA0D
                  DB396D58C1B774BCE4FA8CC9E4FF799CB9FF9B659FCCD70FD43AFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01FA00
                  FA05E006E71FD207DA2DF200F20DFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00FD02CB0EDD396E57
                  C4B374BFE6FAA8E8FCFF84D3F6FF419FD9FF6B5BB6C6DB0EE130FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F106F015C320
                  C659875DC1A16E70BDB99A23B96DD602D929F400F40BFC00FC03FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FC00FC03CA0FDE396D5FC9B775C2
                  E9FAA8E8FCFF86D3F6FF40AEECFF3180D6E99A30D972F304F80DFF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E423E43EC99C
                  CBD0BCCDD6F8A9D6DBFD8A9FC1E3964FA9A7B120B16EC00EC04DD204D231E200
                  E21DF100F10EFA00FA05FE00FE01FC00FC03CB10DF396F5ECCB375C4ECFAA7E8
                  FCFF85D3F6FF42AFEDFF3182D9E99238DB7BF106F810FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00FD02DE44DE65E2D4
                  E2F1ECEBEBFFEAE9E9FFE3E7E7FFD8D8DDFBCDBDCEEEBF9CBFDCB377B3C3AE55
                  AEA6B136B184B91EB964C80DC844B814CD4E6D64D0B775C5EDFAA7E9FCFF85D3
                  F6FF40AFEDFF3283DCE89638DF76F106F810FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F402F40DD068D394E6E2
                  E6FBECECECFFEDEDEDFFEDEDEDFFECECECFFEBEBEBFFEBEBEBFFE9E9E9FFE3DF
                  E3FBD8CCD8F3CBB2CAE7B88FBED3717AC1D76FC0EBFAA7E8FCFF85D3F6FF41AF
                  EDFF2884D7F0813AD08AE704EE18FE00FE01FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00FE01CB21E141B9A9D3D6ECEC
                  ECFFEDEDEDFFE4E1E1FFD3CBCCFFC8BCBBFFC3B6B4FFC3B6B4FFC9BDBDFFD6CF
                  CFFFE9E7E7FFEFEEEEFFE8E8E9FFAFC7DAFF85C4E5FF7CCDF3FF3FAFEEFF319E
                  E1FF7689C3E5A749AF9DBA24B96AD90AD930FC00FC03FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00E80BF2199874D99DC4DCE1FBEBE9
                  E9FFD1C8C8FFBFAEA8FFC4B2A2FFD0C1AAFFD7CCB3FFD6CBB5FFCCBFB0FFBEAE
                  A6FFBCACAAFFC9BCBCFFD0C5C5FFD0C7C8FFA5BBCFFF52A9DFFF34A1E4FF93C5
                  E6FFE2E4EAFCE2D8E1F6CFB2CFE2D138D166FB00FB04FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FA01FB05B349E5658FC9E3E8D7E2E2FFCEC1
                  C0FFC5AFA0FFE0CDACFFF1E6BCFFF5F0C8FFF7F7D3FFF8F7D9FFF5F4DCFFEFEB
                  DAFFD7CEC3FFB7A6A2FFB9A7A7FFC2B2B1FFCEC5C6FFB0CCE1FFA9D1EBFFE9EE
                  F2FFF6F5F4FFF6F6F6FFE7CAE7E2E42FE44AFF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00D81BEC2E8BABEAC2A4E5E6FECBC5C4FFCDB5
                  A3FFEDD7AEFFF9EABDFFF9F0C7FFF8F5CFFFF7F7D6FFF4F4D9FFF2F2DEFFF2F2
                  E3FFF4F3E8FFE7E0DAFFBDACA9FFB19D9DFFD8CFCFFFF4F4F4FFF3F4F4FFF5F5
                  F5FFF5F5F5FFF4F4F4FFE0A0E0BFED12ED24FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00EF07F511A371E68A8CEDF5F7ABD5D5FFCAB6A9FFECD1
                  A8FFFAE5B6FFFAEAC0FFFBF2CBFFFCF9D4FFFCFCDCFFFBFBE1FFFAFAE7FFF8F8
                  ECFFF9F9F2FFFBFBF6FFE3DCD7FFB8A7A5FFE1DBDBFFF7F7F7FFF7F6F6FFF6F6
                  F6FFF7F7F7FFF2EFF2FCDD6DDD8FF603F60CFF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FD02C338E7508BCFF2DC96F4F4FFACC1BEFFDFC2A4FFF6DA
                  A8FFF5DFB2FFF6E6BDFFFAF1CAFFFCF9D4FFFCFCDCFFFDFDE3FFFDFDE9FFFDFD
                  EFFFFDFDF5FFFDFDF7FFF8F7EEFFD1C5BFFFD5CBCBFFF7F7F7FFF8F8F8FFF8F8
                  F8FFF8F8F8FFEDDDEDEFE03EE05DFD00FD02FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E212EF22949CE9B291FBFDFD98EAEAFFBABCB3FFEFCDA2FFF5D8
                  A7FFF0D9ACFFF1E1B7FFF4ECC4FFF7F4CFFFF9F9D8FFFAFADEFFFCFCE5FFFDFD
                  ECFFFDFDF0FFFDFDF2FFFDFDEFFFE7E1D4FFCCBFBEFFF3F2F2FFFAFAFAFFF9F9
                  F9FFFAFAFAFFE6B9E6D2E91AE930FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00F603F909AF5AE6738BE8F7F098FFFFFF9CE1E1FFCBC0B0FFF4D0A0FFF8DB
                  A9FFF8E2B3FFF8E8BCFFF7EBC3FFF6F0CAFFF5F5D3FFF5F5D9FFF7F7DEFFFBFB
                  E6FFF8F8E6FFF8F8E7FFFBFBE8FFF1EDDAFFCFC2BEFFEFECECFFFCFCFCFFFBFB
                  FBFFF9F8F9FEE18AE1A8F308F314FF00FF00FF00FF00FF00FF00FF00FF00FE00
                  FE01CE2AEA3F8DC0EFD096FFFFFF98FDFDFFA7DDDDFFD8C4B2FFF6D09EFFFADC
                  A8FFFAE2B3FFFBE8BDFFFBEEC8FFFBF3CDFFFBF8D3FFFBFBDBFFFBFBDEFFFCFC
                  E1FFF7F7DEFFF5F5DDFFF5F5DCFFF1EFD6FFCBC0BAFFD9D6D6FFE8E9E9FFF1F1
                  F1FFF3E8F3F4E157E175FB00FB04FF00FF00FF00FF00FF00FF00FF00FF00EB0A
                  F3169C84E79C8FF6FBFA9AFFFFFF98FBFBFFB9E0E1FFE0CBBBFFF3CC9BFFF8D9
                  A4FFF9E3B2FFFBECC1FFFCF2CFFFFCF4D5FFFDF6D1FFFDFBD6FFFFFEDCFFFEFE
                  DDFFFDFDDEFFFCFCDEFFFBFBDCFFF3F0D3FFCEC4BDFFDCDADAFFDEDEDEFFE4E4
                  E4FFEACAEADFE72EE746FF00FF00FF00FF00FF00FF00FF00FF00F901FA06BA46
                  E65F8ADEF4E998FFFFFF99FFFFFF9BF7F7FFCFE8E9FFE5D5CCFFF1CB9EFFF8D7
                  A0FFF7E0ADFFF7E7BBFFF8ECC9FFF9EFD2FFF7EECAFFF9F0CAFFFDF9D4FFFEFB
                  D6FFFEFDD8FFFEFDD9FFFEFDD7FFEEE8CCFFDAD1CDFFF9F8F8FFFCFCFCFFFAFA
                  FAFFE6A1E6BAEF11EF21FF00FF00FF00FF00FF00FF00FF00FF00D520EB3492AA
                  ECBD94FDFEFE99FFFFFF98FFFFFFA0F3F3FFE2F1F2FFECE4E1FFECCDAEFFF8D4
                  9CFFF9DFAAFFF9E7B6FFFAEBC2FFF9EDC7FFF5E8C0FFF4E7BEFFFAF1C8FFFDF4
                  CDFFFEF6CFFFFEF8CFFFFCF5CCFFE2D7C5FFE7E1E0FFFFFEFEFFFFFFFFFFFAF6
                  FAFBE370E38CF703F70BFF00FF00FF00FF00FF00FF00FF00FF00A573EE848BEC
                  FAF199FFFFFF99FFFFFF97FEFEFFABF0F0FFF1F8F8FFF6F4F4FFE8D7CBFFF3CF
                  A1FFF8D8A0FFF9E0ABFFFBE7B6FFFCEBBCFFFBE9BCFFFBEABDFFFBEAC0FFFCEC
                  C3FFFDEFC4FFFDF0C3FFF0E3C4FFDFD5CFFFF7F5F5FFFFFFFFFFFFFFFFFFF3E1
                  F3EDE43DE458FE00FE01FF00FF00FF00FF00FF00FF00FF00FF00CC4BFE4CA89E
                  FE9F94E1FFE194FBFFFB97FCFCFFBAF0F1FFF9FCFCFFF2F2F2FFDAD6D5FFE7D1
                  BEFFF5D1A1FFF9D79FFFFADFA8FFFBE2ADFFFBE3B1FFFBE3B3FFFBE3B6FFFCE6
                  B7FFFBE7B9FFF4E2BFFFE4D7CCFFEFEBEBFFFEFEFEFFFFFFFFFFFFFFFFFFEBBC
                  EBD0EB1AEB2EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01FF01F310
                  FF10D443FF43B08DFF8D98CDF7D4C5E5E6F9FAF8F3FFF4F3F1FFE2E1E2FFE1DD
                  DCFFECDACAFFF3D3AEFFF7D2A1FFF8D5A0FFF9D8A3FFF9DAA7FFFADDACFFF8DF
                  B2FFF0DCBFFFE7DBD1FFF1EDECFFFEFEFEFFFFFFFFFFFFFFFFFFFCFBFCFEE589
                  E5A3F507F511FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F50CFF0CD241E953CBAAA9DCE4D4A9FFEBDFBFFFEEE6CFFFEFEA
                  DCFFF0ECE4FFF0E6DCFFF0DDCBFFF2D9BFFFF3D9BAFFF3D9BCFFF0DBC4FFE5D6
                  C9FFD6CFCCFFE3E0E0FFF1F1F1FFF7F7F7FFFEFEFEFFFFFFFFFFF6EAF6F3E456
                  E471FC01FC04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00E725D742D2A08CDFDECB97FFDDCA93FFE1CE9CFFE5D4
                  A7FFE7D8AFFFEADDBBFFECE0C7FFECE2CFFFEEE5D8FFF0E9E2FFF2EDEBFFE8E6
                  E6FFD7D6D7FFDBDBDCFFD7D7D7FFDCDCDCFFF6F6F6FFFFFFFFFFEFCCEFDCE92C
                  E942FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FD00FD02DE40C468D4B388F1E0CE9BFFDCC78DFFE2D09FFFE6D6
                  ACFFE7D6ACFFE7D6ABFFE8D8AFFFE9D8B1FFECDCB9FFEEE0C1FFF2E6CCFFF4EA
                  D7FFF3EDDFFFF6F2EAFFF1EFEBFFEEEDECFFFAF9F9FFFEFEFEFFE8A0E9B7F111
                  F11FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FC03FC06DD58BA83D3B981F9DAC58AFFDDC890FFDDC78EFFE0CC
                  98FFE5D4A7FFE7D6ABFFEAD9B3FFEBDBB7FFEDDDBBFFECDCB7FFEFDFBFFFF1E2
                  C4FFF2E2C4FFF3E3C5FFF5E5CAFFF8EBD6FFFAF1E2FFF8EDE8FAE46BE187F702
                  F70AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FE02FE03F02EE041E564BD89E083ABB0DE9D9ED0DCB194E8DCBE
                  90F6DEC792FDE2CC99FFE6D2A4FFEAD8B0FFE9D6ACFFEAD7AFFFEEDDBBFFF2E3
                  C6FFF2E3C6FFF2E0C0FFF1DBB7FFF2DDBBFFF5E1C1FFEDCBC7ECE439DE56FE00
                  FE01FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF01FF01FD04FD06FB0DF812F71CEF26F235E246EE50
                  D369E970C391E68CB7B3E5A7ADD2E6BCAAE7E6C9A5F6E7D2A5FFEAD5AAFFEDD9
                  B1FFEFDBB6FFF0DCB9FFF1DCB8FFF3DEBCFFF5E0C0FFE5A5C5CCEC16E92AFF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01
                  FF01FD07FC0AFB13F619F725EE30F43EE34EF05BD771EE7BCB97EC9BC0BCEBB5
                  BADAECC9B6EEEED4B7F9F1DBB9FEF3DFBDFFF3DFC0FFE27ACBA0F506F510FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01FE02FD08FC0AFB13F818F927
                  F130F644E752F363DD77F285D59DF3A4CFBEF0AFCCCDEB45DF5EFC00FC03FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FE02FE03FC0EFB11FB1DF623F82CF136FB11F816FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
              end
              object SpeedButton14: TSpeedButton
                Left = 579
                Top = 4
                Width = 137
                Height = 57
                Action = acSetStatusKlarAttKora
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00F500F50AE802E817E502E51AE602E619E602E619E502
                  E51AEA01EA15F800F807FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F502F50A9F26A2605D4A68A2584F66A7584F66A7584F66A7574F
                  65A865456F9ABB19BD44FD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E60AE61949665DB602A036FD01AB40FE01B045FE01AF45FE01AA
                  3FFE059D33FA754A808AF702F708FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE21D437862C111BA59FF13C96AFF13D070FF13D070FF13C8
                  69FF10B752FF6C5A7D97F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE21D5F877BC160DC9AFF6BE8ACFF6AECAEFF6AECAEFF6BE8
                  ACFF5CD58EFE80638E97F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE31D4E917CC135EA94FF3EF1A2FF3DF2A2FF3DF2A2FF3EF1
                  A1FF34E188FE74678D97F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE31D3E9276C100E87AFF00ED81FF00EE82FF00ED82FF00EC
                  80FF01DE6EFE68668797F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE31D3E9073C100E474FF00E87AFF00E97BFF00E87BFF00E8
                  7AFF01DB69FE68658697F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE31D3E8D71C100E06EFF00E374FF00E474FF00E474FF00E4
                  73FF01D764FE68638497F503F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E20CE31D3E8B6EC100DB67FF00DF6CFF00DF6DFF00DF6DFF00DF
                  6CFF01D25EFE69618396F602F609FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FE00
                  FE01F900F906F700F708F700F708F700F708F700F708F700F708F700F708F700
                  F708F700F708DB0ADC243F876BC209D866FF0DDC6DFF0EDD6EFF0FDD6EFF10DD
                  6FFF0BD05FFE675F8099ED02ED12F700F708F700F708F700F708F700F708F700
                  F708F700F708F700F708F700F708FA00FA05FE00FE01FF00FF00FF00FF00E008
                  E01F9A229D658A298F758A298F758A2990758A2990758A2A90758A2A90758A2A
                  90758B2991747C3283832A9256DB20D86EFF29DC78FF27DC77FF26DC76FF26DC
                  76FF1BCF64FE3F7259C4862B8C798B2A91748A2A90758A2A90758A2A90758A2A
                  90758A2A8F758A2A8F758A2A8F75A120A35EE706E718FF00FF00FD00FD02A12A
                  A55E1C7937E30E8633F10E8936F10E8C39F10E8F3AF10E913CF10E913DF10E92
                  3EF10E923DF10D923CF20BB349FB28D76FFF32DA78FF30DA77FF2ED976FF2DD9
                  75FF1FD066FF0AA641F90E913CF10E923DF10E923DF10E923CF10E903BF10E8F
                  39F10E8C38F10E8A35F10E8632F124753ADBB621B849FF00FF00FB00FB048B3A
                  9474069736F900A640FF00AB44FF00AF49FF00B34CFF00B64FFF00B851FF00B9
                  52FF00B951FF00B850FF0EC458FF30D56FFF39D776FF37D775FF35D775FF35D6
                  73FF27D069FF06BD53FF00B750FF00B951FF00B951FF00B850FF00B64FFF00B3
                  4CFF00AF48FF00AA43FF00A43FFF0C9337F3A52FAA5AFF00FF00FB00FB048E3C
                  957423A84BF82ABD60FF29C164FF29C568FF28C96BFF28CB6EFF27CD6FFF27CE
                  70FF27CE71FF25CD6EFF2ED06DFF3ED474FF3FD576FF3ED475FF3CD474FF3BD4
                  72FF39D371FF2BCE6FFF22CC6DFF22CD6DFF22CC6CFF22CB6BFF21C968FF21C6
                  64FF20C260FF20BE5BFF1EB854FF1A9D3EF1A52FAA5AFF00FF00FB00FB04913C
                  957450B560F871D184FF70D285FF6FD487FF6ED589FF6CD68AFF6BD78CFF6BD8
                  8CFF6AD98DFF62D889FF4DD379FF47D375FF46D375FF45D375FF43D274FF42D2
                  72FF4AD377FF5DD785FF5FD786FF5ED684FF5DD581FF5CD37EFF5BD17BFF5ACF
                  77FF59CC73FF58CA70FF50C565FF2EA23EF1A52EA85AFF00FF00FB00FB048F3A
                  937441AD4DF860C86FFF5ECA71FF5DCB72FF5CCD74FF5BCE75FF59CF77FF58D0
                  78FF56D179FF54D178FF50D176FF4ED176FF4DD175FF4CD175FF4AD174FF49D0
                  72FF48CF71FF4ACF71FF4ACE6FFF48CC6CFF47CB69FF45C965FF44C661FF43C4
                  5EFF42C159FF41BF55FF3DBC4EFF2B9E39F1A62EA85AFF00FF00FB00FB049038
                  937343AC4DF868C973FF67CB75FF66CC77FF65CD78FF63CF79FF62CF7AFF61D0
                  7BFF5FD17BFF5ED17CFF5CD17BFF56D077FF54D076FF53D075FF51CF74FF50CF
                  73FF51CF73FF54CF74FF53CE72FF51CC6FFF4FCA6CFF4EC869FF4DC765FF4CC4
                  62FF4BC25DFF4ABF59FF46BC52FF2E9E38F2A62DA85AFF00FF00FE00FE01A030
                  A361419C48EE69C071FC6DC176FB6BC277FB6AC379FB6AC479FB69C47AFB68C5
                  7BFB68C67CFB67C77CFC5CC975FE58CD74FF5BCE77FF59CE76FF58CE75FF57CE
                  73FF58CC73FF5EC875FE60C576FC60C374FB5FC272FB5FC170FB5EC06DFB5EBE
                  6BFB5DBC68FB5DBB66FB51B759FC348F3AE6B525B64AFF00FF00FF00FF00E20E
                  E31D993A9D6C904A9580924B9780924B9880924B9880924B9980924B9980914C
                  9980924B9A7F83508B8E3A8D4EE050C668FF63CE79FF61CE77FF5FCD76FF5FCD
                  76FF47BF5EFF4D7A5BCB8C4D9485914D9980914D9880914D9880914C9780914C
                  9780914C9680914C95808E4B91809E36A164EB0AEB14FF00FF00FF00FF00FF00
                  FF00FD01FD02FC01FC03FC01FC03FC01FC03FC01FC03FC01FC03FC01FC03FC01
                  FC03FC01FC03E009E01F4D705CC153C466FF6ACE7BFF67CD79FF66CC78FF66CD
                  77FF48BA5BFE714F7A97F302F30CFC01FC03FC01FC03FC01FC03FC01FC03FC01
                  FC03FC01FC03FC01FC03FC01FC03FE00FE01FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E209E21D4F6F5BC159C366FF71CD7DFF6ECC7BFF6DCC7AFF6DCC
                  79FF4EB95BFE734E7A97F502F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E209E21D4F6C59C15EC267FF78CD80FF75CC7DFF74CC7CFF74CC
                  7CFF52B75CFE734D7A97F502F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E208E21D516A58C163C168FF7FCD83FF7CCC80FF7BCC7FFF7BCC
                  7FFF57B65DFE744C7997F502F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E208E21D526857C169C16AFF86CE86FF83CD84FF81CC82FF81CC
                  82FF5CB65FFE744A7997F502F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E208E21D526858C16EC26FFF8CD08CFF8ACF8AFF88CF88FF88CF
                  88FF61B863FE76497A97F501F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E208E21D55685AC176C677FF96D596FF94D393FF92D392FF92D3
                  92FF69BA6AFE77497C97F501F50AFF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00E607E6195E6564BB78C479FF98D399FF95D196FF94D195FF94D1
                  95FF6CB96FFE8247888EF701F708FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00F702F708A130A7667A6580AC836C89AE836B88AE836C88AE836B
                  88AE7E5E84A4BE20C247FD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00F902F906F005F00FEF05EF10EF05EF10EF05EF10EF05
                  EF10F104F10EFB01FB04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentFont = False
                Visible = False
              end
              object cbTaskCompleteField: TcxDBCheckBox
                Left = 733
                Top = 24
                Caption = 'Produktion klar'
                DataBinding.DataField = 'TaskCompleteField'
                DataBinding.DataSource = dmsSortOrder.ds_Scheduler
                Properties.ReadOnly = True
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                TabOrder = 0
              end
            end
          end
        end
      end
      object tsRapportVy: TcxTabSheet
        Caption = 'tsRapportVy'
        ImageIndex = 4
        object grdSortOrderRows: TcxGrid
          Left = 0
          Top = 56
          Width = 1149
          Height = 588
          Align = alClient
          PopupMenu = dxBarPopupMenuSortOrderRows
          TabOrder = 0
          object grdSortOrderRowsDBTableView1: TcxGridDBTableView
            OnDblClick = grdSortOrderRowsDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = ds_SortOrderRows
            DataController.DetailKeyFieldNames = 'SortingOrderNo'
            DataController.KeyFieldNames = 'SortingOrderNo;ProductNo'
            DataController.MasterKeyFieldNames = 'SortingOrderNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##########'
                Kind = skCount
                FieldName = 'Produkt'
                Column = grdSortOrderRowsDBTableView1Produkt
              end
              item
                Format = '#,###,###,0'
                Kind = skSum
                FieldName = 'AM1'
                Column = grdSortOrderRowsDBTableView1AM1
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'AM3'
                Column = grdSortOrderRowsDBTableView1AM3
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'NM3'
                Column = grdSortOrderRowsDBTableView1NM3
              end
              item
                Format = '###########'
                Kind = skSum
                FieldName = 'Styck'
                Column = grdSortOrderRowsDBTableView1Styck
              end
              item
                Format = '#,###.00'
                Kind = skSum
                FieldName = 'UtfallonFin'
                Column = grdSortOrderRowsDBTableView1UtfallonFin
              end
              item
                Format = '#,###.00'
                Kind = skSum
                FieldName = 'UtfallonRaw'
                Column = grdSortOrderRowsDBTableView1UtfallonRaw
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'V'#228'rde'
                Column = grdSortOrderRowsDBTableView1Vrde
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle3FardigVara
            Styles.Header = cxStyle3FardigVara
            object grdSortOrderRowsDBTableView1ProductNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView1Krnr: TcxGridDBColumn
              DataBinding.FieldName = 'K'#246'rnr'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdSortOrderRowsDBTableView1NT: TcxGridDBColumn
              DataBinding.FieldName = 'NT'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              SortIndex = 0
              SortOrder = soDescending
            end
            object grdSortOrderRowsDBTableView1NB: TcxGridDBColumn
              DataBinding.FieldName = 'NB'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView1AT: TcxGridDBColumn
              DataBinding.FieldName = 'AT'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView1AB: TcxGridDBColumn
              DataBinding.FieldName = 'AB'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView1Produkt: TcxGridDBColumn
              DataBinding.FieldName = 'Produkt'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1AM3: TcxGridDBColumn
              DataBinding.FieldName = 'AM3'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1NM3: TcxGridDBColumn
              DataBinding.FieldName = 'NM3'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1AM1: TcxGridDBColumn
              DataBinding.FieldName = 'AM1'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1Styck: TcxGridDBColumn
              DataBinding.FieldName = 'Styck'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1Vrde: TcxGridDBColumn
              DataBinding.FieldName = 'V'#228'rde'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1Pris: TcxGridDBColumn
              DataBinding.FieldName = 'Pris'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdSortOrderRowsDBTableView1PrisStylesGetContentStyle
            end
            object grdSortOrderRowsDBTableView1UtfallonFin: TcxGridDBColumn
              DataBinding.FieldName = 'UtfallonFin'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView1UtfallonRaw: TcxGridDBColumn
              DataBinding.FieldName = 'UtfallonRaw'
              PropertiesClassName = 'TcxLabelProperties'
            end
          end
          object grdSortOrderRowsDBTableView2: TcxGridDBTableView
            OnDblClick = grdSortOrderRowsDBTableView2DblClick
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = ds_SOHdr
            DataController.KeyFieldNames = 'SortingOrderNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'HyvlatLPM'
                Column = grdSortOrderRowsDBTableView2HyvlatLPM
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'Kass_AM3'
                Column = grdSortOrderRowsDBTableView2Kass_AM3
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'Kass_Styck'
                Column = grdSortOrderRowsDBTableView2Kass_Styck
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'NM3IN'
                Column = grdSortOrderRowsDBTableView2NM3IN
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'Posttid'
                Column = grdSortOrderRowsDBTableView2Posttid
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'Totaltid'
                Column = grdSortOrderRowsDBTableView2Totaltid
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'FardigVaraUtAM3'
                Column = grdSortOrderRowsDBTableView2FardigVaraUtAM3
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'FardigVaraUtNM3'
                Column = grdSortOrderRowsDBTableView2FardigVaraUtNM3
              end
              item
                Format = '############'
                Kind = skSum
                FieldName = 'Url'#228'gg_Styck'
                Column = grdSortOrderRowsDBTableView2Urlgg_Styck
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            Styles.Content = cxStyleGreenBoldText
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object grdSortOrderRowsDBTableView2Krnr: TcxGridDBColumn
              DataBinding.FieldName = 'K'#246'rnr'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 20
            end
            object grdSortOrderRowsDBTableView2YearWeek: TcxGridDBColumn
              DataBinding.FieldName = 'YearWeek'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
              Width = 44
            end
            object grdSortOrderRowsDBTableView2Verk: TcxGridDBColumn
              DataBinding.FieldName = 'Verk'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 143
            end
            object grdSortOrderRowsDBTableView2Hyvel: TcxGridDBColumn
              DataBinding.FieldName = 'Hyvel'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 54
            end
            object grdSortOrderRowsDBTableView2Start: TcxGridDBColumn
              DataBinding.FieldName = 'Start'
              PropertiesClassName = 'TcxTimeEditProperties'
              Width = 61
            end
            object grdSortOrderRowsDBTableView2Slut: TcxGridDBColumn
              DataBinding.FieldName = 'Slut'
              PropertiesClassName = 'TcxTimeEditProperties'
              Width = 77
            end
            object grdSortOrderRowsDBTableView2Totaltid: TcxGridDBColumn
              DataBinding.FieldName = 'Totaltid'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 38
            end
            object grdSortOrderRowsDBTableView2Posttid: TcxGridDBColumn
              DataBinding.FieldName = 'Posttid'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 38
            end
            object grdSortOrderRowsDBTableView2HyvlatLPM: TcxGridDBColumn
              Caption = 'Hyvlad LPM'
              DataBinding.FieldName = 'HyvlatLPM'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 74
            end
            object grdSortOrderRowsDBTableView2LPMperMin: TcxGridDBColumn
              DataBinding.FieldName = 'LPMperMin'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 71
            end
            object grdSortOrderRowsDBTableView2NM3IN: TcxGridDBColumn
              DataBinding.FieldName = 'NM3IN'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 34
            end
            object grdSortOrderRowsDBTableView2KostPerNM3Ut: TcxGridDBColumn
              Caption = 'Kostnad/p'#229'reg.NM3'
              DataBinding.FieldName = 'KostPerNM3Ut'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 72
            end
            object grdSortOrderRowsDBTableView2Kass_Styck: TcxGridDBColumn
              DataBinding.FieldName = 'Kass_Styck'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdSortOrderRowsDBTableView2Kass_StyckStylesGetContentStyle
              Width = 37
            end
            object grdSortOrderRowsDBTableView2Kass_AM3: TcxGridDBColumn
              DataBinding.FieldName = 'Kass_AM3'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 39
            end
            object grdSortOrderRowsDBTableView2FardigVaraUtNM3: TcxGridDBColumn
              Caption = 'F'#228'rdigvara NM3 (url'#228'gg exkl)'
              DataBinding.FieldName = 'FardigVaraUtNM3'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 123
            end
            object grdSortOrderRowsDBTableView2FardigVaraUtAM3: TcxGridDBColumn
              Caption = 'F'#228'rdigvara AM3 (url'#228'gg exkl)'
              DataBinding.FieldName = 'FardigVaraUtAM3'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 103
            end
            object grdSortOrderRowsDBTableView2Urlgg_Styck: TcxGridDBColumn
              Caption = 'Url'#228'gg styck (ej hyvlade)'
              DataBinding.FieldName = 'Url'#228'gg_Styck'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 54
            end
            object grdSortOrderRowsDBTableView2ATMM: TcxGridDBColumn
              DataBinding.FieldName = 'ATMM'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 24
            end
            object grdSortOrderRowsDBTableView2ABMM: TcxGridDBColumn
              DataBinding.FieldName = 'ABMM'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 23
            end
            object grdSortOrderRowsDBTableView2NTMM: TcxGridDBColumn
              DataBinding.FieldName = 'NTMM'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 24
            end
            object grdSortOrderRowsDBTableView2NBMM: TcxGridDBColumn
              DataBinding.FieldName = 'NBMM'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 23
            end
            object grdSortOrderRowsDBTableView2KostPerNM3Raw: TcxGridDBColumn
              Caption = 'Kostnad/avreg.NM3 '
              DataBinding.FieldName = 'KostPerNM3Raw'
              PropertiesClassName = 'TcxLabelProperties'
            end
          end
          object grdSortOrderRowsDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = ds_Rawmtrl
            DataController.DetailKeyFieldNames = 'SortingOrderNo'
            DataController.KeyFieldNames = 'SortingOrderNo;ProductNo;ALMM'
            DataController.MasterKeyFieldNames = 'SortingOrderNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'AM1'
                Column = grdSortOrderRowsDBTableView3AM1
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'AM3'
                Column = grdSortOrderRowsDBTableView3AM3
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'KassAM1'
                Column = grdSortOrderRowsDBTableView3KassAM1
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'KassAM3'
                Column = grdSortOrderRowsDBTableView3KassAM3
              end
              item
                Format = '##########'
                Kind = skSum
                FieldName = 'KassPcs'
                Column = grdSortOrderRowsDBTableView3KassPcs
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'NM3'
                Column = grdSortOrderRowsDBTableView3NM3
              end
              item
                Format = '#,###,###.0'
                Kind = skSum
                FieldName = 'ProductValue'
                Column = grdSortOrderRowsDBTableView3ProductValue
              end
              item
                Format = '############'
                Kind = skSum
                FieldName = 'STYCK'
                Column = grdSortOrderRowsDBTableView3STYCK
              end
              item
                Format = '#############'
                Kind = skSum
                FieldName = 'UrlaggPcs'
                Column = grdSortOrderRowsDBTableView3UrlaggPcs
              end
              item
                Format = '#,###,###'
                Kind = skSum
                FieldName = 'ExpectedPcsOut'
                Column = grdSortOrderRowsDBTableView3ExpectedPcsOut
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyleOlive
            Styles.Header = cxStyleOlive
            object grdSortOrderRowsDBTableView3ProductDisplayName: TcxGridDBColumn
              DataBinding.FieldName = 'ProductDisplayName'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3ALMM: TcxGridDBColumn
              DataBinding.FieldName = 'ALMM'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3SortingOrderNo: TcxGridDBColumn
              DataBinding.FieldName = 'SortingOrderNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdSortOrderRowsDBTableView3ProductNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdSortOrderRowsDBTableView3RawMtrlNo: TcxGridDBColumn
              DataBinding.FieldName = 'RawMtrlNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grdSortOrderRowsDBTableView3STYCK: TcxGridDBColumn
              DataBinding.FieldName = 'STYCK'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3AM3: TcxGridDBColumn
              DataBinding.FieldName = 'AM3'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3NM3: TcxGridDBColumn
              DataBinding.FieldName = 'NM3'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3AM1: TcxGridDBColumn
              DataBinding.FieldName = 'AM1'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3UrlaggPcs: TcxGridDBColumn
              DataBinding.FieldName = 'UrlaggPcs'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3AdjustedPieces: TcxGridDBColumn
              DataBinding.FieldName = 'FDjustedPieces'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3AdjustedAM3: TcxGridDBColumn
              DataBinding.FieldName = 'FDjustedAM3'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3AdjustedNM3: TcxGridDBColumn
              DataBinding.FieldName = 'FDjustedNM3'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3AdjustedAM1: TcxGridDBColumn
              DataBinding.FieldName = 'FDjustedAM1'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3Lameller: TcxGridDBColumn
              DataBinding.FieldName = 'Lameller'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3KapSnitt: TcxGridDBColumn
              DataBinding.FieldName = 'KapSnitt'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3ExpectedPcsOut: TcxGridDBColumn
              DataBinding.FieldName = 'ExpectedPcsOut'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3ATMM: TcxGridDBColumn
              DataBinding.FieldName = 'ATMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3ABMM: TcxGridDBColumn
              DataBinding.FieldName = 'ABMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3NTMM: TcxGridDBColumn
              DataBinding.FieldName = 'NTMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3NBMM: TcxGridDBColumn
              DataBinding.FieldName = 'NBMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3NLMM: TcxGridDBColumn
              DataBinding.FieldName = 'NLMM'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3SizePercentOfTotal: TcxGridDBColumn
              DataBinding.FieldName = 'SizePercentOfTotal'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3PercentAdjPcs: TcxGridDBColumn
              DataBinding.FieldName = 'PercentAdjPcs'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
            object grdSortOrderRowsDBTableView3KassPcs: TcxGridDBColumn
              DataBinding.FieldName = 'KassPcs'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdSortOrderRowsDBTableView3KassPcsStylesGetContentStyle
            end
            object grdSortOrderRowsDBTableView3KassAM3: TcxGridDBColumn
              DataBinding.FieldName = 'KassAM3'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3KassAM1: TcxGridDBColumn
              DataBinding.FieldName = 'KassAM1'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdSortOrderRowsDBTableView3PricePerNM3: TcxGridDBColumn
              DataBinding.FieldName = 'PricePerNM3'
              PropertiesClassName = 'TcxLabelProperties'
              Styles.OnGetContentStyle = grdSortOrderRowsDBTableView3PricePerNM3StylesGetContentStyle
            end
            object grdSortOrderRowsDBTableView3ProductValue: TcxGridDBColumn
              DataBinding.FieldName = 'ProductValue'
              PropertiesClassName = 'TcxLabelProperties'
            end
          end
          object grdSortOrderRowsLevel1: TcxGridLevel
            GridView = grdSortOrderRowsDBTableView2
            Options.DetailTabsPosition = dtpTop
            Styles.Tab = cxStyle1
            object grdSortOrderRowsLevel2: TcxGridLevel
              Caption = 'F'#228'rdigvara &&biprodukter'
              GridView = grdSortOrderRowsDBTableView1
              Options.DetailTabsPosition = dtpTop
              Styles.Tab = cxStyle3FardigVara
            end
            object grdSortOrderRowsLevel3: TcxGridLevel
              Caption = 'R'#229'vara'
              GridView = grdSortOrderRowsDBTableView3
              Options.DetailTabsPosition = dtpTop
              Styles.Tab = cxStyleOlive
            end
          end
        end
        object Panel34: TPanel
          Left = 0
          Top = 0
          Width = 1149
          Height = 56
          Align = alTop
          TabOrder = 1
          object Label18: TLabel
            Left = 3
            Top = 22
            Width = 39
            Height = 16
            Caption = 'Vecka'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object seVeckaRapportVy: TcxSpinEdit
            Left = 54
            Top = 11
            ParentFont = False
            Properties.OnChange = seVeckaRapportVyPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Value = 42
            Width = 83
          end
          object cxButton16: TcxButton
            Left = 152
            Top = 8
            Width = 137
            Height = 41
            Action = acPrintAO
            TabOrder = 1
          end
        end
      end
    end
    object PanelKopplaFardigvara: TPanel
      Left = 0
      Top = 0
      Width = 1157
      Height = 168
      Align = alTop
      TabOrder = 1
      Visible = False
      object grdSortRows: TcxGrid
        Left = 1
        Top = 1
        Width = 1155
        Height = 166
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = pmSortOrderRows
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdSortRowsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dmsSortOrder.ds_SorOrdRow
          DataController.KeyFieldNames = 'SortingOrderNo;SortingOrderRowNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.Inactive = cxStyle1Yellow
          Styles.Selection = cxStyle1Yellow
          object grdSortRowsDBTableView1PRODUKT: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUKT'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Width = 279
          end
          object grdSortRowsDBTableView1LengthDescription: TcxGridDBColumn
            DataBinding.FieldName = 'LengthDescription'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 179
          end
          object grdSortRowsDBTableView1ALMM: TcxGridDBColumn
            DataBinding.FieldName = 'ALMM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ProductLengthNo'
            Properties.ListColumns = <
              item
                FieldName = 'ALMM'
              end>
            Width = 89
          end
          object grdSortRowsDBTableView1PlannedAM3: TcxGridDBColumn
            DataBinding.FieldName = 'PlannedAM3'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object grdSortRowsDBTableView1AM3: TcxGridDBColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 76
          end
          object grdSortRowsDBTableView1PPP: TcxGridDBColumn
            DataBinding.FieldName = 'PPP'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object grdSortRowsDBTableView1ExLog: TcxGridDBColumn
            DataBinding.FieldName = 'ExLog'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 66
          end
          object grdSortRowsDBTableView1PcsPerBundle: TcxGridDBColumn
            DataBinding.FieldName = 'PcsPerBundle'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
          object grdSortRowsDBTableView1FUKTKVOT: TcxGridDBColumn
            DataBinding.FieldName = 'FUKTKVOT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'MCClassNo'
            Properties.ListColumns = <
              item
                FieldName = 'MCDescription'
              end>
          end
          object grdSortRowsDBTableView1TACKNING: TcxGridDBColumn
            DataBinding.FieldName = 'T'#196'CKNING'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'WrapTypeNo'
            Properties.ListColumns = <
              item
                FieldName = 'WrapType'
              end>
            Properties.ReadOnly = True
          end
          object grdSortRowsDBTableView1TypeOfBoard: TcxGridDBColumn
            DataBinding.FieldName = 'TypeOfBoard'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
          object grdSortRowsDBTableView1NoOfPkgsNOTE: TcxGridDBColumn
            Caption = 'ANT.PKT(text)'
            DataBinding.FieldName = 'NoOfPkgsNOTE'
          end
        end
        object grdSortRowsDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditing = grdSortRowsDBBandedTableView1Editing
          OnEditKeyDown = grdSortRowsDBBandedTableView1EditKeyDown
          DataController.DataSource = dmsSortOrder.ds_SorOrdRow
          DataController.KeyFieldNames = 'SortingOrderNo;SortingOrderRowNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'PlannedAM3'
              Column = grdSortRowsDBBandedTableView1PlannedAM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'NoOfUnits'
              Column = grdSortRowsDBBandedTableView1NoOfUnits
            end
            item
              Kind = skCount
              FieldName = 'PRODUKT'
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'ProdAM3'
              Column = grdSortRowsDBBandedTableView1AM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'ProdAM1'
              Column = grdSortRowsDBBandedTableView1AM1
            end
            item
              Format = '#,###,###'
              Kind = skSum
              FieldName = 'ProdPCS'
              Column = grdSortRowsDBBandedTableView1PCS
            end
            item
              Kind = skSum
              FieldName = 'ProdPKT'
              Column = grdSortRowsDBBandedTableView1PKT
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'PlannedNM3'
              Column = grdSortRowsDBBandedTableView1PlannedNM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'ProdNM3'
              Column = grdSortRowsDBBandedTableView1ProdNM3
            end
            item
              Format = '#,###,###'
              Kind = skSum
              FieldName = 'PlannedPcs'
              Column = grdSortRowsDBBandedTableView1PlannedPcs
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Inactive = cxStyle1Yellow
          Styles.Selection = cxStyle1Yellow
          Bands = <
            item
              Caption = 'Produkt'
              Styles.Header = cxStyle3FardigVara
              Width = 798
            end
            item
              Caption = 'OTHERS'
              Visible = False
            end
            item
              Caption = 'Plan'
              Options.HoldOwnColumnsOnly = True
              Styles.Header = cxStyle3FardigVara
              Width = 238
            end
            item
              Caption = 'Produktion'
              Options.HoldOwnColumnsOnly = True
              Styles.Header = cxStyle3FardigVara
              Width = 234
            end
            item
              Caption = 'K'#246'rorderkostnad'
              Options.HoldOwnColumnsOnly = True
              Styles.Header = cxStyle3FardigVara
              Width = 166
            end
            item
              Caption = #214'vrigt'
              Styles.Header = cxStyle3FardigVara
              Width = 350
            end>
          object grdSortRowsDBBandedTableView1LengthDescription: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LengthDescription'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PPP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PPP'
            PropertiesClassName = 'TcxCalcEditProperties'
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ALMM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALMM'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1LengthSpec: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LengthSpec'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1FUKTKVOT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FUKTKVOT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownWidth = 100
            Properties.KeyFieldNames = 'MCClassNo'
            Properties.ListColumns = <
              item
                FieldName = 'MCDescription'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1TargetProduct: TcxGridDBBandedColumn
            Caption = 'Huvudvara'
            DataBinding.FieldName = 'TargetProduct'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 29
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Urlagg: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Urlagg'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1EndPkgAllowed: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EndPkgAllowed'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1MRKE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Mark'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 22
            Position.BandIndex = 5
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Status: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Status'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 22
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1LONR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LONR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = False
            Options.Filtering = False
            Width = 23
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Customer: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Customer'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ExportRow: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ExportRow'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 29
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Prio: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Prio'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 36
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Lagergrupp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Lagergrupp'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownWidth = 160
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'LIPNo'
            Properties.ListColumns = <
              item
                FieldName = 'LAGERGRUPP'
              end>
            Width = 24
            Position.BandIndex = 5
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1SortingOrderRowNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SortingOrderRowNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PlannedAM3'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 46
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PkgPrefix: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PkgPrefix'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 52
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1NoOfUnits: TcxGridDBBandedColumn
            Caption = 'Paket'
            DataBinding.FieldName = 'NoOfUnits'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 49
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1AM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdAM3'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PCS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdPCS'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 46
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1AM1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdAM1'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 46
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PKT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdPKT'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 41
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1CostDist: TcxGridDBBandedColumn
            Caption = 'Kostf'#246'rdelning'
            DataBinding.FieldName = 'CostDist'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 31
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Price: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Price'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 39
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Prisenhet: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Prisenhet'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TemplateUnitNo'
            Properties.ListColumns = <
              item
                FieldName = 'TemplateUnitName'
              end>
            Options.Filtering = False
            Width = 41
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Prislista'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TemplateNo'
            Properties.ListColumns = <
              item
                FieldName = 'PriceListName'
              end>
            Visible = False
            Options.Filtering = False
            Width = 65
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SortingOrderNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1CSDNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CSDNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1MCClassNo: TcxGridDBBandedColumn
            Caption = 'Hyvlas ej'
            DataBinding.FieldName = 'MCClassNo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Filtering = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1DateCreated: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProductLengthNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 86
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1VolumeUnitNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VolumeUnitNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ProdInstructNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdInstructNo'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PriceUnit: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PriceUnit'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1SortOrder: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SortOrder'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Notering: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Notering'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1StickRecipe: TcxGridDBBandedColumn
            DataBinding.FieldName = 'StickRecipe'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 27
            Position.BandIndex = 5
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1RefCopies: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RefCopies'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 72
            Position.BandIndex = 5
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Lggare: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L'#228'ggare'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'StackerNo'
            Properties.ListColumns = <
              item
                FieldName = 'StackerName'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PlannedNM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PlannedNM3'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ProdNM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProdNM3'
            PropertiesClassName = 'TcxLabelProperties'
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ArtikelKod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ArtikelKod'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 57
            Position.BandIndex = 5
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Kvalitet: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Kvalitet'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tr'#228'slag'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Utfrande: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Utf'#246'rande'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1IMP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IMP'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1AT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1AB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AB'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1NT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NT'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1NB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NB'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 135
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1ExcludeFromTotal: TcxGridDBBandedColumn
            Caption = 'Exkl. utfall'
            DataBinding.FieldName = 'ExcludeFromTotal'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1Produkt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Produkt'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 134
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1VP_ProductCode: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VP_ProductCode'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 27
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object grdSortRowsDBBandedTableView1PlannedPcs: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PlannedPcs'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ImmediatePost = True
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object grdSortRowsLevel1: TcxGridLevel
          GridView = grdSortRowsDBBandedTableView1
        end
      end
    end
    object PanelResultatKorning: TPanel
      Left = 0
      Top = 820
      Width = 1157
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object cxLabelSkannarPaketnr: TcxLabel
        Left = 46
        Top = 12
        ParentColor = False
        ParentFont = False
        Style.Color = clYellow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabelSkannarPaketnrProblem: TcxLabel
        Left = 30
        Top = 12
        ParentColor = False
        ParentFont = False
        Style.Color = clAqua
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object ActionList1: TActionList
    Left = 184
    Top = 789
    object ac_Exit: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 11
      OnExecute = ac_ExitExecute
    end
    object ac_customizeLayout: TAction
      Caption = 'Customize layout'
    end
    object ac_Refresh: TAction
      Caption = 'Uppdatera veckovy F6'
      ImageIndex = 29
      OnExecute = ac_RefreshExecute
    end
    object acChangeAvropLayout: TAction
      Caption = 'F'#228'ltv'#228'ljaren'
    end
    object acSaveAvropLayout: TAction
      Caption = 'Spara tabellayout'
      OnExecute = acSaveAvropLayoutExecute
    end
    object acChangeRowTable: TAction
      Caption = #196'ndra tabellayout'
    end
    object acApplyUpdates: TAction
      Caption = 'Spara'
      ImageIndex = 5
      OnExecute = acApplyUpdatesExecute
      OnUpdate = acApplyUpdatesUpdate
    end
    object acOpenWorkOrder: TAction
      Caption = 'Edit F9'
      ImageIndex = 21
      OnExecute = acOpenWorkOrderExecute
      OnUpdate = acOpenWorkOrderUpdate
    end
    object acNewAO: TAction
      Caption = 'Ny k'#246'rorder F2'
      ImageIndex = 7
    end
    object acPrintAO: TAction
      Caption = 'Skriv ut'
      ImageIndex = 12
      OnExecute = acPrintAOExecute
    end
    object acPrintAOResult: TAction
      Caption = 'Resultat'
      ImageIndex = 3
    end
    object acDeleteSortOrder: TAction
      Caption = 'Ta bort'
      ImageIndex = 6
      OnExecute = acDeleteSortOrderExecute
    end
    object acSaveRowLayout: TAction
      Caption = 'Spara layout'
    end
    object acCreateWeekSchedule: TAction
      Caption = 'Vecko schema'
      Enabled = False
      ImageIndex = 44
    end
    object acNewDryKilnCharge: TAction
      Caption = 'Ny torksats'
      ImageIndex = 35
    end
    object acCalcResult: TAction
      Caption = 'Kalk.res.'
      ImageIndex = 3
      OnExecute = acCalcResultExecute
    end
    object acCalcAll: TAction
      Caption = 'Kalk. alla'
      Hint = 'Efterkalkylera markerade k'#246'rorder'
      ImageIndex = 3
      OnExecute = acCalcAllExecute
      OnUpdate = acCalcAllUpdate
    end
    object acOverview: TAction
      Caption = #214'versikt'
      ImageIndex = 10
      OnExecute = acOverviewExecute
    end
    object acSaveUserProps: TAction
      Caption = 'Spara inst'#228'll.'
      Hint = 'Spara inst'#228'llningar'
      ImageIndex = 5
      OnExecute = acSaveUserPropsExecute
    end
    object acSetMarkedRunOrdersToCurrentWeek: TAction
      Caption = #196'ndra starttiden till aktuell vecka f'#246'r markerade k'#246'rorders'
      ImageIndex = 10
      OnExecute = acSetMarkedRunOrdersToCurrentWeekExecute
    end
    object acNewFromTemplate: TAction
      Caption = 'Ny k'#246'rorder fr'#229'n mall'
      ImageIndex = 7
    end
    object acExpandRows: TAction
      Caption = 'Expandera alla rader'
      OnExecute = acExpandRowsExecute
    end
    object acCollapseAllRows: TAction
      Caption = 'Kollapsa alla rader'
      OnExecute = acCollapseAllRowsExecute
    end
    object acAddPkgToRun: TAction
      Caption = 'Koppla r'#229'vara'
      Hint = 'Koppla saknade f'#228'rdigpaket'
      ImageIndex = 24
      OnExecute = acAddPkgToRunExecute
    end
    object acAddUrlaggFromDropList: TAction
      Category = 'EditKorOrder'
      Caption = 'V'#228'lj url'#228'gg'
      OnUpdate = acAddUrlaggFromDropListUpdate
    end
    object acAddProduktToAORow: TAction
      Category = 'EditKorOrder'
      Caption = 'L'#228'gg till f'#228'rdigvaruprodukt'
      ImageIndex = 7
      OnUpdate = acAddProduktToAORowUpdate
    end
    object acRemoveAORow: TAction
      Category = 'EditKorOrder'
      Caption = 'Ta bort'
      ImageIndex = 6
      OnExecute = acRemoveAORowExecute
      OnUpdate = acRemoveAORowUpdate
    end
    object acAddRawMtrlUsedPreviously: TAction
      Category = 'EditKorOrder'
      Caption = 'V'#228'lj r'#229'vara'
      OnExecute = acAddRawMtrlUsedPreviouslyExecute
      OnUpdate = acAddRawMtrlUsedPreviouslyUpdate
    end
    object acAddRawMtrl: TAction
      Category = 'EditKorOrder'
      Caption = 'L'#228'gg till r'#229'vara'
      ImageIndex = 1
    end
    object acDeleteRawMtrl: TAction
      Category = 'EditKorOrder'
      Caption = 'Ta bort'
      ImageIndex = 6
      OnExecute = acDeleteRawMtrlExecute
      OnUpdate = acDeleteRawMtrlUpdate
    end
    object acShowRawMtrilProductInInventoryList: TAction
      Category = 'EditKorOrder'
      Caption = 'Visa paket i lagerlista'
      OnExecute = acShowRawMtrilProductInInventoryListExecute
    end
    object acSetNormalText: TAction
      Category = 'EditKorOrder'
      Caption = 'Normal'
      OnExecute = acSetNormalTextExecute
    end
    object acSetNormalTextHyvelInfo: TAction
      Category = 'EditKorOrder'
      Caption = 'Normal'
      OnExecute = acSetNormalTextHyvelInfoExecute
    end
    object acCopyLOInternalNoteToHyvelInfo: TAction
      Category = 'EditKorOrder'
      Caption = 'Kopiera intern notering'
      OnExecute = acCopyLOInternalNoteToHyvelInfoExecute
    end
    object acAddPI: TAction
      Category = 'EditKorOrder'
      Caption = 'L'#228'gg till'
      OnExecute = acAddPIExecute
      OnUpdate = acAddPIUpdate
    end
    object acCopyPItoMarkedRows: TAction
      Category = 'EditKorOrder'
      Caption = 'Kopiera till markerade rader'
      OnExecute = acCopyPItoMarkedRowsExecute
      OnUpdate = acCopyPItoMarkedRowsUpdate
    end
    object acAddLayoutRow: TAction
      Category = 'EditKorOrder'
      Caption = 'L'#228'gg till'
      ImageIndex = 1
      OnExecute = acAddLayoutRowExecute
      OnUpdate = acAddLayoutRowUpdate
    end
    object acDeleteLayout: TAction
      Category = 'EditKorOrder'
      Caption = 'Ta bort'
      ImageIndex = 6
      OnExecute = acDeleteLayoutExecute
      OnUpdate = acDeleteLayoutUpdate
    end
    object acAddStdSpecLayout: TAction
      Category = 'EditKorOrder'
      Caption = 'L'#228'gg till standard'
      ImageIndex = 2
      OnExecute = acAddStdSpecLayoutExecute
    end
    object acRegisterMultiplePkgs: TAction
      Category = 'EditKorOrder'
      Caption = 'Registrera pkt'
      OnUpdate = acRegisterMultiplePkgsUpdate
    end
    object acRemovePkgFromSystem: TAction
      Category = 'EditKorOrder'
      Caption = #197'ngra'
      OnExecute = acRemovePkgFromSystemExecute
      OnUpdate = acRemovePkgFromSystemUpdate
    end
    object acRefreshPaRegPkg: TAction
      Category = 'EditKorOrder'
      Caption = 'Uppdatera'
      OnExecute = acRefreshPaRegPkgExecute
    end
    object acLoadSelectedPkgs: TAction
      Category = 'EditKorOrder'
      Caption = 'Last ut'
      OnExecute = acLoadSelectedPkgsExecute
      OnUpdate = acLoadSelectedPkgsUpdate
    end
    object acPickPkgToAddAsNewRegs: TAction
      Category = 'EditKorOrder'
      Caption = 'Koppla paket'
    end
    object acCalcStartSlutochProdTid: TAction
      Category = 'EditKorOrder'
      Caption = 'Kalk start, sluttid'
      OnExecute = acCalcStartSlutochProdTidExecute
      OnUpdate = acCalcStartSlutochProdTidUpdate
    end
    object acCalculateProductionsTime: TAction
      Category = 'EditKorOrder'
      Caption = '>'
      OnExecute = acCalculateProductionsTimeExecute
      OnUpdate = acCalculateProductionsTimeUpdate
    end
    object acShowProdTimeSegments: TAction
      Category = 'EditKorOrder'
      Caption = 'Visa tid/segment'
      OnExecute = acShowProdTimeSegmentsExecute
      OnUpdate = acShowProdTimeSegmentsUpdate
    end
    object acAvregistreraPaket: TAction
      Category = 'EditKorOrder'
      Caption = 'Avregistrera'
      OnUpdate = acAvregistreraPaketUpdate
    end
    object acCancelDeregistration: TAction
      Category = 'EditKorOrder'
      Caption = #197'ngra'
      OnExecute = acCancelDeregistrationExecute
      OnUpdate = acCancelDeregistrationUpdate
    end
    object acRefreshAvReg: TAction
      Category = 'EditKorOrder'
      Caption = 'Uppdatera'
      OnExecute = acRefreshAvRegExecute
    end
    object acSplitPkg: TAction
      Category = 'EditKorOrder'
      Caption = 'Dela paket'
      OnExecute = acSplitPkgExecute
      OnUpdate = acSplitPkgUpdate
    end
    object acDeleteUsedPkgRow: TAction
      Category = 'EditKorOrder'
      Caption = 'Ta bort rad'
      OnExecute = acDeleteUsedPkgRowExecute
      OnUpdate = acDeleteUsedPkgRowUpdate
    end
    object acSaveKorOrder: TAction
      Category = 'EditKorOrder'
      Caption = 'Spara F3'
      ImageIndex = 5
      OnUpdate = acSaveKorOrderUpdate
    end
    object acCancelChanges: TAction
      Category = 'EditKorOrder'
      Caption = #197'ngra F4'
      ImageIndex = 17
      OnUpdate = acCancelChangesUpdate
    end
    object acStartSortOrder: TAction
      Category = 'EditKorOrder'
      Caption = 'Aktiv'
      OnExecute = acStartSortOrderExecute
      OnUpdate = acStartSortOrderUpdate
    end
    object acSetToPreliminary: TAction
      Category = 'EditKorOrder'
      Caption = 'Prelimin'#228'r'
      OnExecute = acSetToPreliminaryExecute
    end
    object acAvsluta: TAction
      Category = 'EditKorOrder'
      Caption = 'Produktion klar'
      ImageIndex = 5
      OnExecute = acAvslutaExecute
    end
    object acPrintAOKorOrder: TAction
      Category = 'EditKorOrder'
      Caption = 'K'#246'rorder'
      OnUpdate = acPrintAOKorOrderUpdate
    end
    object acAOResult: TAction
      Category = 'EditKorOrder'
      Caption = 'Resultat'
      ImageIndex = 8
      OnUpdate = acAOResultUpdate
    end
    object acSaveAsDeafultKorOrderValues: TAction
      Category = 'EditKorOrder'
      Caption = 'Spara inst'#228'llningar'
      OnExecute = acSaveAsDeafultKorOrderValuesExecute
    end
    object acControllSortingOrderRows: TAction
      Category = 'EditKorOrder'
      Caption = 'Kontroll F10'
      ImageIndex = 28
      OnExecute = acControllSortingOrderRowsExecute
    end
    object acSaveAsTemplate: TAction
      Category = 'EditKorOrder'
      Caption = 'Spara k'#246'rorder som mall'
      ImageIndex = 31
      OnUpdate = acSaveAsTemplateUpdate
    end
    object acCalcKassation: TAction
      Category = 'EditKorOrder'
      Caption = 'Kalkylera'
      ImageIndex = 14
      OnExecute = acCalcKassationExecute
    end
    object acConfirmAO: TAction
      Category = 'EditKorOrder'
      Caption = 'Godk'#228'nn'
      ImageIndex = 18
    end
    object acAvregPaketFormular: TAction
      Category = 'EditKorOrder'
      Caption = 'Avregistrera'
      Hint = #214'ppna avregistreringsformul'#228'ret'
      ImageIndex = 19
    end
    object acEMailAOResult: TAction
      Category = 'EditKorOrder'
      Caption = 'Maila resultat'
      ImageIndex = 19
    end
    object acCalcF11: TAction
      Category = 'EditKorOrder'
      Caption = 'acCalcF11'
    end
    object acCreateNewPackageForMissingPkgNo: TAction
      Category = 'EditKorOrder'
      Caption = 'Skapa paket'
      OnExecute = acCreateNewPackageForMissingPkgNoExecute
    end
    object acSetBoldRavara: TAction
      Category = 'memo'
      OnExecute = acSetBoldRavaraExecute
    end
    object acSetKursivRavara: TAction
      Category = 'memo'
      OnExecute = acSetKursivRavaraExecute
    end
    object acSetUnderlineRavara: TAction
      Category = 'memo'
      OnExecute = acSetUnderlineRavaraExecute
    end
    object acSetColorRavara: TAction
      Category = 'memo'
      OnExecute = acSetColorRavaraExecute
    end
    object acSetColorFardigvara: TAction
      Category = 'memo'
      OnExecute = acSetColorFardigvaraExecute
    end
    object acSetFontRavara: TAction
      Category = 'memo'
      OnExecute = acSetFontRavaraExecute
    end
    object acSetFontFardigvara: TAction
      Category = 'memo'
      OnExecute = acSetFontFardigvaraExecute
    end
    object acCopyTextRavara: TAction
      Category = 'memo'
      OnExecute = acCopyTextRavaraExecute
    end
    object acCopyTextFardigvara: TAction
      Category = 'memo'
      OnExecute = acCopyTextFardigvaraExecute
    end
    object acPasteTextRavara: TAction
      Category = 'memo'
      OnExecute = acPasteTextRavaraExecute
    end
    object acPasteTextFardigvara: TAction
      Category = 'memo'
      OnExecute = acPasteTextFardigvaraExecute
    end
    object acSetNormalTextRavara: TAction
      Category = 'memo'
      Caption = 'Normal'
      OnExecute = acSetNormalTextRavaraExecute
    end
    object acSetNormalTextFardigvara: TAction
      Category = 'memo'
      Caption = 'Normal'
      OnExecute = acSetNormalTextFardigvaraExecute
    end
    object acSetBoldFardigvara: TAction
      Category = 'memo'
      OnExecute = acSetBoldFardigvaraExecute
    end
    object acSetKursivFardigvara: TAction
      Category = 'memo'
      OnExecute = acSetKursivFardigvaraExecute
    end
    object acSetUnderlineFardigvara: TAction
      Category = 'memo'
      OnExecute = acSetUnderlineFardigvaraExecute
    end
    object acSearchForPackageToUnReg: TAction
      Category = 'EditKorOrder'
      Caption = 'S'#246'k paket att avregistrera'
      OnExecute = acSearchForPackageToUnRegExecute
    end
    object acMoveUsedPkgsToOtherSortOrder: TAction
      Category = 'EditKorOrder'
      Caption = 'Flytta r'#229'varupaket till annan k'#246'rorder'
      OnExecute = acMoveUsedPkgsToOtherSortOrderExecute
    end
    object acOpenAndConfirmOrder: TAction
      Caption = 'Godk'#228'nn'
      ImageIndex = 16
    end
    object acOpenAOInGuide: TAction
      Caption = #214'ppna i guide'
      ImageIndex = 25
      OnExecute = acOpenAOInGuideExecute
    end
    object acSetStatusOutredd: TAction
      Category = 'EditKorOrder'
      Caption = 'Outredd'
      ImageIndex = 21
      OnExecute = acSetStatusOutreddExecute
    end
    object acPreCalc: TAction
      Category = 'EditKorOrder'
      Caption = 'F'#246'rkalkyl'
      ImageIndex = 14
      OnExecute = acPreCalcExecute
    end
    object acPrintPaReg: TAction
      Caption = 'Skriv ut'
      ImageIndex = 8
      OnExecute = acPrintPaRegExecute
    end
    object acPrintAvReg: TAction
      Caption = 'Skriv ut'
      ImageIndex = 8
      OnExecute = acPrintAvRegExecute
    end
    object acProdUtfall: TAction
      Caption = 'Utfallsstatistik'
      OnExecute = acProdUtfallExecute
    end
    object acSetMarkedOrdersToOtherWeek: TAction
      Caption = #196'ndra starttid f'#246'r markerade k'#246'rorders'
    end
    object acStoppTidPerOrsak: TAction
      Caption = 'Visa stopptid / orsak'
      OnExecute = acStoppTidPerOrsakExecute
    end
    object acAntalStoppPerOrsak: TAction
      Caption = 'Visa antal stopp / orsak'
      OnExecute = acAntalStoppPerOrsakExecute
    end
    object acProdUtfallByRawMtrl: TAction
      Caption = 'Utfallsstatistik'
      OnExecute = acProdUtfallByRawMtrlExecute
    end
    object acCopySortingOrderRow: TAction
      Category = 'EditKorOrder'
      Caption = 'Kopiera rad'
      ImageIndex = 9
      OnUpdate = acCopySortingOrderRowUpdate
    end
    object acBokaRavara: TAction
      Category = 'EditKorOrder'
      Caption = 'Boka r'#229'vara'
    end
    object acSetStatusPause: TAction
      Category = 'EditKorOrder'
      Caption = 'Pause'
      OnExecute = acSetStatusPauseExecute
    end
    object acOpenBooking: TAction
      Caption = #214'ppna bokning'
      ImageIndex = 3
    end
    object acMergeBookings: TAction
      Caption = 'Sammanfoga bokningar'
      ImageIndex = 9
    end
    object acSaveDefaultLayout: TAction
      Caption = 'Spara som standardlayout'
      OnExecute = acSaveDefaultLayoutExecute
    end
    object acRestoreDefaultLayout: TAction
      Caption = 'H'#228'mta standard layout'
      ImageIndex = 28
      OnExecute = acRestoreDefaultLayoutExecute
    end
    object acSaveSvardKapLayout: TAction
      Caption = 'Spara sv'#228'rdkaplayout'
      OnExecute = acSaveSvardKapLayoutExecute
    end
    object acRestoreSvardKapLayout: TAction
      Caption = 'H'#228'mta Sv'#228'rdkaplayout'
      OnExecute = acRestoreSvardKapLayoutExecute
    end
    object acExtractAndMergeBookingRows: TAction
      Caption = 'acExtractAndMergeBookingRows'
    end
    object acSkrivUtKapNota: TAction
      Caption = 'Skriv ut k'#246'rorder kap'
    end
    object acSaveUserProfile: TAction
      Caption = 'Spara tabellinst'#228'llningar till profil'
      OnExecute = acSaveUserProfileExecute
    end
    object acAdminUserProfiles: TAction
      Caption = 'Administrera profiler'
    end
    object acPickPkgToAvreg: TAction
      Caption = 'Plocka paket att avregistrera'
    end
    object acStart: TAction
      Caption = 'Starta inl'#228'sning med skanner F10'
      ShortCut = 121
      OnExecute = acStartExecute
    end
    object acAvRegistreraPaketIBufferten: TAction
      Caption = 'Avregistrera inl'#228'sta paket'
      OnExecute = acAvRegistreraPaketIBuffertenExecute
    end
    object acCancelPkgsInBuffert: TAction
      Caption = #197'ngra inl'#228'sning av paket'
      OnExecute = acCancelPkgsInBuffertExecute
    end
    object acSetStatusKlarAttKora: TAction
      Caption = 'Aktivera'
      ImageIndex = 7
      OnExecute = acSetStatusKlarAttKoraExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PrintButton'
      'AvropGrid'
      'Load'
      'UsedPkgs'
      'RawMtrlGrid'
      'MergeBookings')
    Categories.ItemsVisibles = (
      2
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
      True
      True)
    HideFloatingBarsWhenInactive = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 64
    Top = 792
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 433
      FloatTop = 85
      FloatClientWidth = 83
      FloatClientHeight = 402
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton18'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = ac_Exit
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Action = ac_Refresh
      Category = 0
    end
    object lbPrint: TdxBarLargeButton
      Action = acPrintAO
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acApplyUpdates
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acOpenWorkOrder
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acNewAO
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acPrintAOResult
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acDeleteSortOrder
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acCreateWeekSchedule
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acNewDryKilnCharge
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acCalcResult
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acCalcAll
      Caption = 'Kalk. markerade'
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = acOverview
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acSaveUserProps
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = acNewFromTemplate
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = acExpandRows
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = acCollapseAllRows
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = acAddPkgToRun
      Caption = 'Koppla f'#228'rdigpaket'
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = acAvregPaketFormular
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = acOpenAndConfirmOrder
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = acOpenAOInGuide
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = acProdUtfall
      Category = 0
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Action = acOpenBooking
      Category = 0
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Action = acRestoreDefaultLayout
      Category = 0
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Caption = 'Sammanfoga'
      Category = 0
      Hint = 'Sammanfoga'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmMergeBookings
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFA57B73FFA57B73FFA57B
        73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B
        73FFA57B73FFA57B73FFA57B73FF8C5A5AFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFA57B73FFEFDECEFFF7EF
        DEFFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFF7E7
        D6FFF7E7D6FFF7EFD6FFEFDECEFF8C5A5AFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFA57B73FFEFDECEFFF7EF
        DEFFEFE7D6FFEFE7D6FFEFE7D6FFEFE7D6FFEFDECEFFEFDECEFFEFDECEFFEFDE
        CEFFEFDECEFFEFE7D6FFEFDECEFF8C5A5AFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFA57B73FFEFDED6FFF7EF
        E7FFEFE7DEFFEFE7DEFFEFE7D6FFEFE7D6FFEFE7D6FFEFE7D6FFEFDECEFFEFDE
        CEFFEFDECEFFEFE7D6FFEFDECEFF8C5A5AFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFB58473FFEFDED6FFF7EF
        E7FFF7DEC6FFFFD6FDFFFFD6FDFFFFD6FDFFFFD6FDFFFFD6FDFFFFD6FDFFFFD6
        FDFFF7DEBDFFEFE7D6FFEFDECEFF8C5A5AFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFB58473FFEFDED6FFF7EF
        E7FFFFE7CEFFF7DEBDFFF7DEBDFFF7DEBDFFF7DEBDFFF7DEBDFFF7DEBDFFF7DE
        BDFFF7DEC6FFEFE7D6FFEFDECEFF8C5A5AFFFF00FFFFFF00FFFFA57B73FFA57B
        73FFA57B73FFA57B73FFA57B73FFA57B73FFA57B73FFB58473FFEFE7DEFFFFF7
        EFFFF7EFDEFFF7E7DEFFF7E7DEFFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFEFE7
        D6FFEFE7D6FFF7E7D6FFEFDECEFF9C6B63FFFF00FFFFFF00FFFFA57B73FFEFDE
        CEFFF7EFDEFFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFBD8C84FFEFE7DEFFFFF7
        EFFFF7DEBDFFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
        A5FFF7DEBDFFF7E7DEFFEFDECEFF9C6B63FFFF00FFFFFF00FFFFA57B73FFEFDE
        CEFFF7EFDEFFEFE7D6FFEFE7D6FFEFE7D6FFEFE7D6FFBD8C84FFEFE7DEFFFFF7
        F7FFF7EFE7FFF7EFDEFFF7E7DEFFF7E7DEFFF7E7D6FFF7E7D6FFF7E7D6FFF7E7
        D6FFF7E7D6FFF7E7DEFFEFDECEFF9C6B63FFFF00FFFFFF00FFFFA57B73FFEFDE
        D6FFF7EFE7FFEFE7DEFFEFE7DEFFEFE7D6FFEFE7D6FFCE9C84FFEFE7E7FFFFFF
        F7FFF7EFDEFFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFF7E7D6FFFFE7CEFFF7DE
        C6FFF7E7D6FFF7EFDEFFEFDED6FFA57B73FFFF00FFFFFF00FFFFB58473FFEFDE
        D6FFF7EFE7FFF7DEC6FFFFD6FDFFFFD6FDFFFFD6FDFFCE9C84FFF7EFE7FFFFFF
        FFFFFFDEC6FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6A5FFFFD6
        A5FFF7DEC6FFF7EFE7FFEFE7D6FFA57B73FFFF00FFFFFF00FFFFB58473FFEFDE
        D6FFF7EFE7FFFFE7CEFFF7DEBDFFF7DEBDFFF7DEBDFFDEAD84FFF7EFEFFFFFFF
        FFFFFFF7F7FFFFF7EFFFFFF7EFFFF7EFEFFFF7EFE7FFF7EFE7FFF7EFE7FFF7EF
        E7FFF7EFE7FFF7EFE7FFDED6CEFFA57B73FFFF00FFFFFF00FFFFB58473FFEFE7
        DEFFFFF7EFFFF7EFDEFFF7E7DEFFF7E7DEFFF7E7D6FFDEAD84FFF7EFEFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7EFFFFFF7
        F7FFEFE7E7FFD6D6D6FFBDBDBDFFB58473FFFF00FFFFFF00FFFFBD8C84FFEFE7
        DEFFFFF7EFFFF7DEBDFFFFD6A5FFFFD6A5FFFFD6A5FFE7B58CFFF7EFEFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF7F7FFFFF7F7FFFFF7F7FFF7EFE7FFB584
        73FFB58473FFB58473FFB58473FFB58473FFFF00FFFFFF00FFFFBD8C84FFEFE7
        DEFFFFF7F7FFF7EFE7FFF7EFDEFFF7E7DEFFF7E7DEFFE7B58CFFF7EFEFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFEFE7DEFFB584
        73FFE7AD73FFEFAD5AFFE79C42FFBD8484FFFF00FFFFFF00FFFFCE9C84FFEFE7
        E7FFFFFFF7FFF7EFDEFFF7E7D6FFF7E7D6FFF7E7D6FFEFBD94FFFFF7EFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7E7FFB584
        73FFF7C67BFFEFAD5AFFBD8484FFFF00FFFFFF00FFFFFF00FFFFCE9C84FFF7EF
        E7FFFFFFFFFFFFDEC6FFFFD6A5FFFFD6A5FFFFD6A5FFEFBD94FFFFF7EFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7E7FFB584
        73FFE7B57BFFBD8484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFDEAD84FFF7EF
        EFFFFFFFFFFFFFF7F7FFFFF7EFFFFFF7EFFFF7EFEFFFEFBD94FFDEAD84FFDEAD
        84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFB584
        73FFBD8484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFDEAD84FFF7EF
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFFF7F7FFFFF7F7FFFFF7F7FFFFF7
        EFFFFFF7F7FFEFE7E7FFD6D6D6FFBDBDBDFFB58473FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7B58CFFF7EF
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF7F7FFFFF7F7FFFFF7F7FFF7EF
        E7FFB58473FFB58473FFB58473FFB58473FFB58473FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFE7B58CFFF7EF
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFEFE7
        DEFFB58473FFE7AD73FFEFAD5AFFE79C42FFBD8484FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEFBD94FFFFF7
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7
        E7FFB58473FFF7C67BFFEFAD5AFFBD8484FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEFBD94FFFFF7
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7
        E7FFB58473FFE7B57BFFBD8484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEFBD94FFDEAD
        84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD84FFDEAD
        84FFB58473FFBD8484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      OnClick = dxBarLargeButton20Click
      LargeImageIndex = 9
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Caption = #214'vrigt'
      Category = 0
      Hint = #214'vrigt'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmOthers
      LargeImageIndex = 23
    end
    object dxBarLargeButton21: TdxBarLargeButton
      Action = acSaveDefaultLayout
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = acChangeAvropLayout
      Category = 2
    end
    object dxBarButton2: TdxBarButton
      Action = acSaveAvropLayout
      Category = 2
    end
    object dxBarButton5: TdxBarButton
      Action = acSetMarkedRunOrdersToCurrentWeek
      Category = 2
    end
    object dxBarButton10: TdxBarButton
      Action = acSetMarkedOrdersToOtherWeek
      Category = 2
    end
    object dxBarButton3: TdxBarButton
      Action = acChangeRowTable
      Category = 3
    end
    object dxBarButton4: TdxBarButton
      Action = acSaveRowLayout
      Category = 3
    end
    object dxBarButton8: TdxBarButton
      Action = acMoveUsedPkgsToOtherSortOrder
      Category = 4
    end
    object dxBarButton11: TdxBarButton
      Action = acProdUtfallByRawMtrl
      Category = 5
    end
    object dxBarButton12: TdxBarButton
      Action = acMergeBookings
      Category = 6
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Samanfog utan disconnect'
      Category = 6
      Hint = 'Samanfog utan disconnect'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
  end
  object pmAO: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 648
    Top = 968
    PixelsPerInch = 96
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    ScrollbarMode = sbmClassic
    SkinName = 'Silver'
    Left = 520
    Top = 1000
  end
  object imglOutbar_large: TImageList
    Height = 24
    Width = 24
    Left = 312
    Top = 800
    Bitmap = {
      494C010115001900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7EFD600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00EFE7
      D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDED600F7EFE700EFE7
      DE00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700F7DE
      C600FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00F7DE
      BD00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700FFE7
      CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600EFE7D600EFDECE008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300B5847300EFE7DE00FFF7EF00F7EF
      DE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600EFE7D600EFE7
      D600F7E7D600EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600BD8C8400EFE7DE00FFF7EF00F7DE
      BD00FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      BD00F7E7DE00EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00EFE7D600EFE7D600EFE7D600EFE7D600BD8C8400EFE7DE00FFF7F700F7EF
      E700F7EFDE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7DE00EFDECE009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDED600F7EF
      E700EFE7DE00EFE7DE00EFE7D600EFE7D600CE9C8400EFE7E700FFFFF700F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600FFE7CE00F7DEC600F7E7
      D600F7EFDE00EFDED600A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700F7DEC600FFD6AD00FFD6AD00FFD6AD00CE9C8400F7EFE700FFFFFF00FFDE
      C600FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      C600F7EFE700EFE7D600A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700FFE7CE00F7DEBD00F7DEBD00F7DEBD00DEAD8400F7EFEF00FFFFFF00FFF7
      F700FFF7EF00FFF7EF00F7EFEF00F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700DED6CE00A57B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300EFE7DE00FFF7
      EF00F7EFDE00F7E7DE00F7E7DE00F7E7D600DEAD8400F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700EFE7
      E700D6D6D600BDBDBD00B5847300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400EFE7DE00FFF7
      EF00F7DEBD00FFD6A500FFD6A500FFD6A500E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B5847300B584
      7300B5847300B5847300B5847300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400EFE7DE00FFF7
      F700F7EFE700F7EFDE00F7E7DE00F7E7DE00E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B5847300E7AD
      7300EFAD5A00E79C4200BD848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400EFE7E700FFFF
      F700F7EFDE00F7E7D600F7E7D600F7E7D600EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300F7C6
      7B00EFAD5A00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400F7EFE700FFFF
      FF00FFDEC600FFD6A500FFD6A500FFD6A500EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300E7B5
      7B00BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFF7F700FFF7EF00FFF7EF00F7EFEF00EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300BD84
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      F700EFE7E700D6D6D600BDBDBD00B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B584
      7300B5847300B5847300B5847300B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B584
      7300E7AD7300EFAD5A00E79C4200BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300F7C67B00EFAD5A00BD848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300E7B57B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300BD8484000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B5A5
      A50084636300845A5A00845A6300845A6300845A6300845A6300845A6300845A
      6300845A6300845A6300845A6300845A6300845A6300845A6300845A6300845A
      6300845252008C5A5A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7C6AD00A57B6300A57B6300A57B
      6300A57B6300A57B6300A57B6300A57B6300A57B6300A57B6300A57B6300A57B
      6300A57B6300A57B630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052CEE70010A5
      CE00089CBD00089CBD00089CBD00089CBD00089CBD00089CBD00089CBD00089C
      C600089CBD00089CBD00089CBD00089CBD00089CBD00089CBD00089CBD00089C
      C600218CAD00632929008C5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFDED600F7CEBD00F7CEBD00F7CE
      BD00F7CEBD00F7CEBD00F7CEBD00F7CEBD00F7CEBD00F7CEBD00F7CEBD00F7CE
      BD00F7CEBD00DEAD8C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000104A1000104A1000104A
      1000104A10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052CEE70008B5DE0000B5
      DE0000BDE70000BDE70000BDE70000BDE70000BDE70000C6EF0008B5DE00219C
      BD0010B5DE0000BDEF0000BDE70000BDE70000BDE70000BDE70000BDE70000BD
      E70000C6F700396B7B008C524A00000000000000000000000000000000000000
      000000000000000000000000000000000000FFDED600F7CEBD008C6B5200F7CE
      BD00F7CEBD008C6B5200F7CEBD00F7CEBD008C6B5200F7CEBD00F7CEBD008C6B
      5200F7CEBD00DEAD8C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A1000108C180039CE390039CE
      390063AD6300428C420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063DEEF0008BDE70000C6
      EF0000D6FF0000CEF70000CEF70000CEF70000D6FF0000CEEF0010424A004A18
      29009CA5B50018C6E70000D6FF0000CEF70000CEF70000CEF70000D6FF0000CE
      F70000CEF700426B7300AD848400000000000000000000000000000000000000
      000000000000000000000000000000000000E7C6AD00E7C6AD00E7C6AD00E7C6
      FD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00E7C6
      FD00E7C6AD00E7C6AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000108C1800108C180039CE390039CE390039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000000000000000
      000000000000000000000000000000000000000000000000000018C6E70000C6
      EF0008DEFF0000D6FF0000D6FF0000D6FF0000D6FF0000C6E700080808003110
      18005221310018B5CE0000D6FF0000D6FF0000D6FF0000D6FF0010EFFF0000D6
      FF0008BDE7006B4A520000000000000000000000000000000000000000000000
      0000E7C6AD00A57B6300A57B6300A57B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C180039CE390042CE420042CE420039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080800000808000000000
      000000000000000000000000000000000000000000000000000063DEEF0000C6
      E70008DEFF0008DEFF0000D6FF0000D6FF0000D6FF0000D6EF00084252000800
      000018394A0008CEE70000D6FF0000D6FF0000D6FF0008DEFF0010EFFF0000CE
      F700298C9C009C7B7B0000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      00000000000000000000108C180039CE390073DE730063DE63005AD65A004AD6
      4A0042C6420063AD6300108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000808000008080000080800000808000008000
      00000000000000000000000000000000000000000000000000000000000018C6
      E70000CEEF0008E7FF0000DEFF0000D6FF0000D6FF0000DEFF0000E7F70000D6
      E70000E7F70000DEFF0000D6FF0000D6FF0000DEFF0018F7FF0008DEFF0008C6
      E700635A63000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD008C6B5200DEAD8C0000000000C6A59C00FFEFD600F7E7
      C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE9400EFCE
      9400F7D69C00B584840000000000000000000000000000000000000000000000
      000000000000428C4200108C180073DE730073DE730073DE730073DE730063DE
      63005AD65A0039CE3900108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000000000000000006BDE
      F70000CEEF0008DEFF0008E7FF0000DEFF0000DEFF0000DEFF0000DEFF00187B
      940000DEFF0000DEFF0000DEFF0000DEFF0008E7FF0018F7FF0000DEFF002994
      A500AD8484000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000C6A59C00FFEFD600F7E7
      CE00F7DEC600F7DEBD00F7D6B500F7D6A500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9C00B584840000000000000000000000000000000000000000000000
      0000428C4200108C180073DE730073DE7B0073DE730073DE730039CE390073DE
      730073DE730073DE730039CE3900108C18000000000000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      000080800000FFFF000080800000808000008080000080800000808000008080
      000080000000C0C0C00080800000000000000000000000000000000000000000
      000018D6EF0000D6EF0010EFFF0000DEFF0000DEFF0000DEFF0000D6E7003931
      420000D6EF0000E7FF0000DEFF0000DEFF0018F7FF0008DEFF0000D6EF006B5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000C6ADA500FFEFE700F7E7
      D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE9C00EFCE
      9400EFCE9C00B58484000000000000000000000000000000000000000000108C
      1800428C420094F79C0094F79C0084EF8C0073DE730039CE3900108C180039CE
      390073DE730073DE730073DE7300108C18000000000000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      0000808000008080000080800000808000008080000080000000808000008080
      0000C0C0C000C0C0C00080800000000000000000000000000000000000000000
      000063DEEF0000C6E70008DEFF0008E7FF0000DEFF0000E7FF0008BDC6005A18
      210008BDD60000EFFF0000DEFF0010EFFF0010EFFF0000DEFF00298C9C00A57B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD008C6B5200DEAD8C0000000000C6ADA500FFF7E700F7E7
      D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000108C180073DE
      730094F79C0094F79C0094F79C0094F79C0039CE3900108C180000000000108C
      180073DE730073DE730073DE730073DE7300108C180000000000000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080000080800000C0C0
      C000C0C0C000C0C0C00080800000000000000000000000000000000000000000
      00000000000008CEE70000D6EF0008EFFF0000E7FF0000EFFF00089CAD008431
      4200188C9C0000EFFF0000E7FF0010F7FF0008E7FF0008CEE7005A5252000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000CEB5AD00FFFFF700FFEF
      E700F7E7D600F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE
      9C00EFCE9C00B58484000000000000000000000000000000000063AD630073DE
      730094F79C0094F79C0073DE7300108C1800428C42000000000000000000428C
      420039CE390073DE7B0084EF8C0073DE730039CE3900428C4200000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000080800000C0C0C0000000
      0000C0C0C000C0C0C00080800000000000000000000000000000000000000000
      00000000000063DEEF0000D6E70008EFFF0008EFFF0000EFF700086B73006B21
      3100396B7B0000EFF70008EFFF0018F7FF0000E7FF0029949C00A57B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000D6B5AD00FFFFFF00FFF7
      EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6AD00F7D6
      A500F7D6A500B58484000000000000000000000000000000000063AD630039CE
      390073DE730039CE3900108C1800000000000000000000000000000000000000
      0000108C180073DE730094F79C0094F79C0073DE730063AD6300000000000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000018D6EF0000E7F70008F7FF0000E7EF0010424A004A08
      18003139520000D6E70010F7FF0010EFFF0000E7EF00635A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD008C6B5200DEAD8C0000000000D6BDB500FFFFFF00FFF7
      F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      B500F7D6AD00B5848400000000000000000000000000000000000000000063AD
      630063AD630063AD630000000000000000000000000000000000000000000000
      000000000000108C180094F79C0094F79C0094F79C0073DE7300108C18000000
      0000000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000808000C0C0C00080800000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000063E7EF0000DEEF0008F7F70008DEDE00080808003100
      10003918210008BDC60018F7FF0000EFFF0021A5AD00A56B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000D6BDB500FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFEFE700F7E7D600F7E7CE00F7DEC600F7DEBD00F7DE
      B500F7DEB500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063AD630094F79C0094F79C0094F79C0073DE7300428C
      4200000000000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000C0C0C00080800000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      000000000000000000000000000008DEEF0000EFF70008DEDE00080000003100
      10003110180021B5BD0008F7FF0008DEEF005A5A5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000DEBDB500FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DE
      C600F7D6B500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063AD630094F79C0094F79C0084EF8C0039CE
      390063AD63000000000000000000000000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080800000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      00000000000000000000000000004AE7EF0000DEEF0008E7EF00085252000808
      08001042420018E7E70000F7FF0021ADAD008C6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD008C6B5200DEAD8C0000000000DEC6B500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEFD600E7DE
      C600C6BDAD00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039CE390094F79C00A5F7A50094F7
      9C0039CE390063AD630000000000000000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000000000008080
      8000008080000000000080800000000000000000000000000000000000000000
      00000000000000000000000000000000000010E7EF0000EFF70008F7FF0000DE
      E70018FFFF0008F7FF0008E7EF005A6363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000E7C6B500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00F7E7D600C6A59400B594
      8C00B58C8400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039CE3900BDFFBD00BDFF
      BD0094F79C0039CE390063AD63000000000000000000C0C0C000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0000000000080800000000000000000000000000000000000000000
      00000000000000000000000000000000000063E7EF0000E7EF0008F7FF0008FF
      FF0018FFFF0000F7FF0021B5BD00946363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000E7C6B500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C7300EFB5
      7300EFA54A00C6846B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039CE3900BDFF
      BD00BDFFBD0094F79C0063AD6300000000000000000000000000C0C0C0008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018E7E70008F7F70031FF
      FF0010FFFF0000EFF7005A636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD008C6B5200DEAD8C0000000000EFCEBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C6947B00FFC6
      7300CE9473000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039CE
      3900BDFFBD0073DE730063AD630000000000000000000000000000000000C0C0
      C000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AEFEF0000EFEF0031FF
      FF0000FFFF0021B5BD0094737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFDED600F7CEBD00F7CEBD00DEAD8C0000000000E7C6B500FFF7F700FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C6947B00CE9C
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010F7F70008F7
      FF0010F7F7007BB5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7C6AD00E7C6AD00E7C6AD00DEAD8C0000000000E7C6B500EFCEB500EFCE
      B500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD847B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063DEEF0052FF
      FF0063DEEF000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000063DE
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000060200000602000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000060200000C0200000C02000006020000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5948C00BD847B00CE947B00B57B6B00A57363008C6B630084736B008C84
      84008C8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000060200000E0600000E0600000C020000060
      2000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5847B00F7BDA500FFC6AD00FFBD9C00F7B59400EFAD8C00DE9C8400BD84
      6B00A57363008C6B630084736B008C8484008C84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A6BBD008C8C94008C8C84009C9C94008C8C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C0C0C00000FFFF000060200000E0600000E0600000E0600000E0600000C0
      200000602000C0C0C00000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5847B00F7BDA500FFC6AD00EFB59C00C6847300CE8C7300E7AD8C00F7BD
      9C00DE9C8400EFAD8C00DE9C8400BD847300AD736B0094736B008C8484000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD007B7B7B008C8C8400DEDED600ADADAD009C9C9C0094949400A59C
      9C008C8C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484002184
      9C0021639400085ABD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000060200000E0600000C0200000C0200000C0200000E0600000E0
      600000C0200000602000C0C0C000C0C0C00000E0E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD847B00FFBDAD00FFC6AD00DEA58C00F7C6AD00FFC6A500DE9C8400CE94
      8400D6947B00CE8C7300F7BD9C00D69C8400DE9C8400F7B59400CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFEFEF00EFEFEF00DEDED600C6C6C600ADAD
      FD00B5ADB5009C9C94008C8C8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000085ABD00086B
      B500086BB500085ABD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000060200000E0600000E0600000E06000006020000060200000E0600000E0
      600000C0200000C020000060200000FFFF0000E0E00000E0E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD847B00FFBDAD00FFC6AD00F7BD9C00E7C6AD00F7DEC600DEAD9400DEA5
      9400FFCEB500EFBD9C00D69C8400DEA58C00E79C8400E7A58C00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00EFEFEF00FFFFFF00FFF7FF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00C6BDBD00ADADAD009C9C9C008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000219CCE00428CDE00217B
      D6001073CE00216BCE00085ABD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C0000060200000E0600000E0600000602000C0C0C000C0C0C0000060200000E0
      600000E0600000C0200000C02000006020000060200000E0E00000E0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD847B00FFC6B500FFCEAD00FFC6A500E7AD9400DEA58C00F7BD9C00E7B5
      9400E7CEB500E7BDA500E7AD9400EFCEB500FFD6B500DEA58C00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDBDAD00EFEFEF00FFFFFF00EFE7EF00B5ADB5009C94
      9C004A5A5200ADADAD00EFEFEF00EFEFEF00C6C6C6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000219CCE0052A5E70042A5EF003194
      EF00298CE7002184E700086BC600085ABD000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000060
      200000E0600000C0200000C020000060200000FFFF0000FFFF00C0C0C0000060
      200000E0600000E0600000E0600000C0200000C020000060200000E0E00000E0
      E000000000000000000000000000000000000000000000000000000000000000
      0000BD8C7B00FFC6B500FFCEAD00EFB59C00C68C7300CE8C7300E7AD9400F7BD
      9C00C68C7B00E7AD8C00FFC6A500DEAD9C00DEB59C00EFB59C00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFF7E700FFFFFF00D6D6D6004A5A5200B5AD
      B500A59C9C00948C8C00BDB5B500EFEFEF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000219CCE004AADE70042A5EF00399C
      F700399CF700298CE7001073CE00085ABD000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C0000060200000E0
      600000E0600000E0600000602000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000060200000E0600000E0600000E0600000E0600000C020000060200000E0
      E00000E0E0000000000000000000000000000000000000000000000000000000
      0000BD8C7B00FFC6B500FFCEB500DEA58C00F7CEB500FFC6A500DEA58C00D69C
      8400DE9C8400D6947B00F7BD9C00CE947B00CE947B00F7BDA500CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00F7F7E700FFFFFF00DEDEDE00B5B5B500FFFF
      F700FFFFF7004A5A52008C848400FFFFF700D6D6CE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000219CCE004AADE70042A5EF00399C
      F700399CF700298CE7001073CE00085ABD000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000060200000E0
      600000E060000060200000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF000060200000E0600000E0600000E0600000E0600000C020000060
      200000E0E00000E0E00000000000000000000000000000000000000000000000
      0000BD8C7B00FFCEBD00FFCEB500F7BDA500E7C6B500F7DEC600DEAD9C00DEAD
      9400FFD6BD00F7C6AD00D69C8400E7AD9400F7B59400DEA58C00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00DEDEDE00ADA5AD00B5AD
      B500A5A5A5004A5A5200A5A5A500FFF7F700D6D6CE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000219CCE004AADE70042A5F700399C
      F700399CF7003194EF00187BD600085ABD000000000000000000000000000000
      000000000000000000000000000000000000000000000060200000E0600000E0
      600000602000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000602000C0C0C00000E0600000E0600000E0600000C0
      20000060200000E0E00000E0E000000000000000000000000000000000000000
      0000C68C7B00FFCEBD00FFCEB500FFCEAD00DEAD9400DEAD9400F7C6A500EFBD
      9C00E7CEB500E7BDA500EFB59C00E7C6AD00FFDEC600DEAD9400CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6AD00EFF7DE00FFFFFF00CECECE004A5A52007B73
      73005A5252009C949C00F7F7EF00F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000219CCE0063BDE700399CF700399CF700399C
      F700399CF700399CF700399CF700086BC600085ABD0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000060200000E0
      60000060200000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000FFFF00006020000060200000E0600000E0600000E0
      600000C020000060200000E0E000000000000000000000000000000000000000
      0000C68C7B00FFCEC600FFCEB500EFBDA500C68C7B00CE947B00E7B59400F7C6
      A500C6947B00DEAD9400FFCEAD00DEB59C00D6B59C00EFC6A500CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00D6D6D6004A5A5200847B
      7B004A5A5200FFFFF700FFF7F700F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242004242
      4200424242004242420042424200848484000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000060
      2000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C00000E0E0000060200000E0600000E0
      600000E0600000C0200000602000000000000000000000000000000000000000
      0000C68C7B00FFD6C600FFCEB500DEAD9400F7CEB500FFC6A500DEA59400D6A5
      8C00E7A58C00DE9C8400EFBDA5007384B5006B84BD00E7C6AD00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEC600EFEFEF00FFFFFF00EFEFEF00ADA5AD00ADA5
      FD009C9C9C007B737300FFFFF700F7F7EF00DEDED6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000089418005AEF94005AEF94005AEF94005AEF
      94005AEF94005AEF94005AEF94005AEF94000873080000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000FFFF0000FFFF0000E0E00000E0E0000060200000E0
      600000E0600000E0600000602000000000000000000000000000000000000000
      0000CE948400FFD6CE00FFD6B500EFBDA500EFCEBD00FFE7C600DEB59C00DEAD
      9C00FFDEBD00FFD6BD00B59C94006394E7007394FF0094A5B500CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00EFEFEF00EFEFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700F7F7E700EFEFEF00E7DEDE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000089418000894180031C65A0042D6730042CE
      6B0042CE6B004AD673004ADE7B005AEF94000873080000000000000000000000
      0000000000000000000000000000000000000000000000E0E00000E0E00000E0
      E000C0C0C00000E0E00000E0E000C0C0C00000E0E00000E0E000C0C0C00000E0
      E00000E0E000C0C0C00000E0E00000E0E00000E0E00000E0E00000E0E0000060
      200000E0600000E0600000602000000000000000000000000000000000000000
      0000CE948400FFDECE00FFD6BD00FFCEAD00E7BDA500DEB59C00F7C6A500EFBD
      A500E7CEB500E7BDA500E7C6AD007BADD60094BDFF009CA5BD00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CED600EFF7F700DEDED6004A5A5200949494009C94
      9C00CECEC60094949400F7F7E700EFEFEF00E7DEE7008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000894180018AD390031C65A0042CE
      6B0042CE6B0042D6730042CE6B00087308000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000E0E00000E0E00000E0
      E0000060200000E0600000602000000000000000000000000000000000000000
      0000CE948400FFDED600FFD6BD00FFD6B500F7CEAD00F7C6AD00FFCEB500FFD6
      B500F7C6AD00F7CEAD00FFD6B500CEC6B5009CADBD00E7CEB500CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00B5C6C600EFF7F700CED6D600DEDED600C6C6C6004A5A
      520094949400C6C6C6004A5A5200EFE7FF00EFE7FF008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000894180010A5290031BD520042CE
      6B0042CE6B004AD6730039C66300087308000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000E0E00000E0
      E00000E0E0000060200000602000000000000000000000000000000000000000
      0000CE948400FFDED600FFD6BD00EFC6A500DEAD8C00E7AD9400DEAD9400DEAD
      9400DEAD9400E7B59C00E7BDA500E7BDA500F7CEAD00FFD6BD00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDCEC600F7FFFF00B5BDBD008C949400EFE7EF00D6D6
      DE00C6C6C600C6CEC600DEDEE700EFE7FF00D6D6EF008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000894180010A5290031BD520042CE
      6B0042CE6B004AD6730042CE6300087308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FF
      FF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000E0
      E00000E0E00000E0E000C0C0C000000000000000000000000000000000000000
      0000CE948400FFE7DE00FFD6BD00DEA58400FFAD8400FFAD8400FFB58C00FFB5
      8C00FFB58C00F7B59400F7B59400F7B59400E7AD8C00E7BDA500CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00DEE7EF009C9CAD004A5A5200E7DEF700FFF7
      FF00FFFFFF00A5A5A5008C949400EFEFF700D6D6DE008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000089418000894180029B5420031BD
      520042CE6B0042CE6B0042AD6300087308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000E0E00000E0E00000E0E000000000000000000000000000000000000000
      0000D69C8400FFE7E700FFD6BD00DEA58400FF946300FF9C6300FF9C6300FF9C
      6B00FF9C6B00FFA57300FFA57300FFAD7B00FFAD7B00DE9C7B00CE8C73000000
      0000000000000000000000000000000000000000000000000000088CC6004A6B
      BD004A6BBD006B6B8C0094949C0094949C007B7B94004A5A52009C94B500BDB5
      DE00D6DEE7006B7B73004A5A5200BDC6C600BDC6C6008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000894180021943100109C
      29000894180039AD5A006B737B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FF
      FF00C0C0C00000E0E00000E0E000000000000000000000000000000000000000
      0000D69C8C00FFE7E700FFD6BD00EFC6A500DE8C5A00F7844A00FF8C4A00FF8C
      4A00FF8C5200FF8C5200FF8C5200FF945A00FF945A00DE8C6300CE8C73000000
      0000000000000000000000000000000000000000000000000000000000004A6B
      BD004A6BBD004A6BBD004A6BBD004A6BBD004A5A520052526B005A527B00736B
      8C007B7B8C00636B6B004A5A52005A6B63007B8C84008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000089418000884
      1000088410000873080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C0C0C00000FFFF0000FF
      FF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000E0E000000000000000000000000000000000000000
      0000D69C8C00FFEFE700FFDEC600FFD6B500F7CEAD00E7B59400DEAD8C00DEA5
      8400DEA58400DE9C7B00E78C6300E7845A00E7845A00E7B59C00CE8C73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087BB500087BB500087BB500087BB5004A6BBD004A6BBD004A6BBD004A6B
      BD0052526B004A5A5200424A4A0039424200636B73008C8C8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008941800318C
      3900299431000873080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C0C0C00000FF
      FF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000FFFF0000FFFF00C0C0C000000000000000000000000000000000000000
      0000D69C8C00FFFFF700FFF7E700FFEFCE00FFEFCE00FFE7C600FFE7C600FFE7
      C600FFDEC600FFDEBD00FFDEBD00FFD6BD00FFD6BD00FFDEC600CE8C73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087BB500087BB500087BB500087BB500087B
      B5004A6BBD004A6BBD005A636B00848C94007B8C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D69C8C00D69C8C00D69C8C00F7CEAD00FFDEBD00FFE7C600FFEF
      CE00FFF7CE00FFF7CE00FFF7CE00FFEFCE00FFEFCE00FFEFCE00CE8C73000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      B500087BB500087BB500087BB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600FFFFFF0084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEAD9400DEAD9400D69C8C00D69C
      8C00D69C8C00D69C8C00D69C8C00D69C8C00D69C8C00D69C8C00000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A6BBD008C8C94008C8C84009C9C94008C8C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD007B7B7B008C8C8400DEDED600ADADAD009C9C9C0094949400A59C
      9C008C8C84000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFEFEF00EFEFEF00DEDED600C6C6C600ADAD
      FD00B5ADB5009C9C94008C8C8400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      FD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00EFEFEF00FFFFFF00FFF7FF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00C6BDBD00ADADAD009C9C9C008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6
      B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDBDAD00EFEFEF00FFFFFF00EFE7EF00B5ADB5009C94
      9C004A5A5200ADADAD00EFEFEF00EFEFEF00C6C6C6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEC600F7DE
      BD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6B500EFF7E700FFFFFF00D6D6D6004A5A5200B5AD
      B500A59C9C00948C8C00BDB5B500EFEFEF00DEDED6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700292921005A5242005A5242005A5242005A5242005A52
      4200F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEBD00F7F7E700FFFFFF00DEDEDE00B5B5B500FFFF
      F700FFFFF7004A5A52008C848400FFFFF700D6D6CE008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF0018181800DECECE008494EF000842FF00394AAD00524A
      4200F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00DEDEDE00ADA5AD00B5AD
      B500A5A5A5004A5A5200A5A5A500FFF7F700D6D6CE008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00292929007384D6004263F700A5ADE7001039E7004A42
      4A00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B58C7B00000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6AD00EFF7DE00FFFFFF00CECECE004A5A52007B73
      73005A5252009C949C00F7F7EF00F7F7EF00DEDED6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400F7F7F700FFFFF700181818009494B500C6C6CE00DECECE004A63CE00214A
      D600F7DECE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEB500EFF7E700FFFFFF00D6D6D6004A5A5200847B
      7B004A5A5200FFFFF700FFF7F700F7F7EF00DEDED6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400F7F7F700FFFFFF004242420042424200424242004242390042424A001842
      D600738CEF0084848400F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500B58C7B000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CEC600EFEFEF00FFFFFF00EFEFEF00ADA5AD00ADA5
      FD009C9C9C007B737300FFFFF700F7F7EF00DEDED6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000C694
      8400F7F7F700FFFFFF00F7F7F700F7EFEF00F7EFE700F7EFE700F7E7DE00DED6
      D600426BF7004A6BEF009CA5DE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      FD00EFCEA500B58C7B0000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00EFEFEF00EFEFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700F7F7E700EFEFEF00E7DEDE008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400F7F7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7E7DE0094A5EF00637BEF00F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B58C7B0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00C6CED600EFF7F700DEDED6004A5A5200949494009C94
      9C00CECEC60094949400F7F7E700EFEFEF00E7DEE7008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400F7F7F700FFFFFF0084848400848484008484840084848400848484008484
      8400F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A5009C847B0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00B5C6C600EFF7F700CED6D600DEDED600C6C6C6004A5A
      520094949400C6C6C6004A5A5200EFE7FF00EFE7FF008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00080808008C8C8C00ADB5B500848CAD005A637B004242
      4200F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00EFD6BD00CEBD
      FD00B5AD94009C847B0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDCEC600F7FFFF00B5BDBD008C949400EFE7EF00D6D6
      DE00C6C6C600C6CEC600DEDEE700EFE7FF00D6D6EF008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF0018181800EFEFEF00CED6F700295AFF00526BBD005A5A
      5A00F7F7EF00F7EFE700F7EFE700F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC600087B
      B5004A6BBD0094949C00BDC6CE00DEE7EF009C9CAD004A5A5200E7DEF700FFF7
      FF00FFFFFF00A5A5A5008C949400EFEFF700D6D6DE008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00292929007B94DE003163FF00849CFF001039E7004A4A
      5200FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000088CC6004A6B
      BD004A6BBD006B6B8C0094949C0094949C007B7B94004A5A52009C94B500BDB5
      DE00D6DEE7006B7B73004A5A5200BDC6C600BDC6C6008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00181818009CA5C600CED6EF00FFFFFF004A6BE700314A
      C600FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000004A6B
      BD004A6BBD004A6BBD004A6BBD004A6BBD004A5A520052526B005A527B00736B
      8C007B7B8C00636B6B004A5A52005A6B63007B8C84008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF0029292900424242004242420042424200313952001039
      E7009CB5FF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087BB500087BB500087BB500087BB5004A6BBD004A6BBD004A6BBD004A6B
      BD0052526B004A5A5200424A4A0039424200636B73008C8C8400000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00CED6
      EF003163FF006B8CFF00C6CEFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087BB500087BB500087BB500087BB500087B
      B5004A6BBD004A6BBD005A636B00848C94007B8C940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFFF006B8CFF00426BFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      B500087BB500087BB500087BB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400D6A58400D6A58400D6A58400D6A58400D69C7B00CE9C7B00CE947B00C694
      7B00C6947B00C68C7B00BD8C7300B5847300B584840000000000000000000000
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
      00000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00ADDEFF0031A5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF00219CFF001894
      FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF008494EF008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF008494EF001042EF000839DE000829
      B5000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF001894
      FF001094FF0084C6FF00FFFFFF00008CFF000084F700008CFF00007BE7000063
      BD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7004263E7003963E7003163
      E7002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B5000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF001894
      FF00FFFFFF00FFFFFF00ADDEFF00008CFF000084F700008CFF00007BE7000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00104AEF001042DE000829
      B5000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF00219CFF001894
      FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7003963E7003163
      E700315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B5000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00ADDEFF0031A5FF00219CFF001894
      FF001894FF00FFFFFF00ADDEFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF001842DE001031
      B5000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF0084C6
      FF00FFFFFF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C600000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7004A63E7003963E700395A
      E700315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B5000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF00219C
      FF001894FF00ADDEFF00FFFFFF00008CFF000084F700088CFF000084F700006B
      C6000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF00214AEF00184ADE001031
      FD000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5FF00FFFFFF00FFFF
      FF001094FF001094FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE700526BE7008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADDEFF001894
      FF001094FF001094FF00088CFF0031A5FF00088CFF001094FF000084F7000063
      BD00000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7005A73E7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6FF008494EF00214AEF00214AE700214AE700214ADE001831
      FD0000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6FF00FFFFFF00FFFF
      FF0084C6FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C600000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD0000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7005273E7004A6BE7008494EF00E7E7FF00FFFFFF00FFFF
      FF00D6D6FF008494EF00214AE700214AE700184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFFFF00299CFF001894
      FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0031A5FF0031A5FF0031A5FF0031A5FF0031A5FF00ADDEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7008494EF00E7E7FF00D6D6
      FF008494EF002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD0000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5FF00299CFF001894
      FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E700425AEF00425AE7003152
      E7002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD0000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF00FFFFFF00ADDEFF0031A5FF0031A5FF00299CFF00ADDE
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF008494EF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD0000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00FFFFFF0084C6FF001894FF001094FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF00425AE700395A
      E7003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD0000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF00ADDEFF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF00ADDEFF00FFFFFF00FFFFFF001094FF001894FF001094FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD0000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00FFFFFF00088CFF001094FF00088CFF00006B
      CE00000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD0000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF0031A5FF00299CFF00219C
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD0000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD0000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00FFFFFF00219CFF00219CFF001894FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD00000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF0042ADFF00ADDEFF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B5000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B5000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000ADDEFF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C66B
      6B00C6636300CE636300B55252009C6B6B00B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5737300942929009431
      31009C3939009C4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500EFEF
      EF0063636300DEDEDE0000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD00000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00B5B5B500FFFFFF00DEA56300DEA56300DEA56300FFFF
      FF0000D6000000D6000000D60000FFFFFF007363C6007363C6007363C600636B
      6B009494940094949400FFEFE700000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD00000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00ADADAD00FFFFFF00DEA56300DEA56300DEA56300FFFF
      FF0000D6000000D6000000D60000FFFFFF007363C6007363C600525252009494
      9400FFFFFF00EFEFEF00F7B5B500000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A009C4A4A000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF008494EF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD00000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00ADADAD00DEDEDE00CE8C4A00CE8C4A00CE8C4A00DEDE
      DE0000AD000000AD000000AD0000DEDEDE007363C60010101000101010007B7B
      7B00E7E7E700A5A5A50000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A009C4A4A000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7009CADEF00FFFFFF008494
      EF00295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6FF00219CFF001894
      FF001094FF00088CFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD00000000000000000000000000000000000000000000000000000000000000
      000094949400FFFFFF00A5A5A500FFFFFF00CE8C4A00CE8C4A00CE8C4A00FFFF
      FF0000AD000000AD000000AD0000E7E7E7001010100010101000424242007B7B
      7B008C8C8C000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C66363009C4A4A000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7009CADEF00FFFFFF008494
      EF002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B5000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFFFF0084C6FF001894
      FF001094FF001094FF00088CFF00008CFF000084F700008CFF00007BE7000063
      BD00000000000000000000000000000000000000000000000000000000000000
      00009C9C9400FFFFFF00A5A5A500FFFFFF00CE8C4A00CE8C4A00CE8C4A00FFFF
      FF0000AD000000AD000000AD00001010100010101000424A5200848484006B6B
      6B009C9C94000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A00000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B5000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF00FFFFFF0084C6
      FF001894FF001094FF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF00A5A5A500D6D6D600CE8C4A00CE8C4A008C634A00D6D6
      D60000AD000000AD00001010100010101000424A5200848484006B6B6B00FFFF
      FF009C9C9C000000000000000000000000000000000000000000B5847300C66B
      6B00BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE6363009C4A4A00000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B5000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF00219CFF00FFFF
      FF0084C6FF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C600000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500FFFFFF009C9C9C00FFFFFF00CE8C4A00CE8C4A003139BD00ADCE
      E70000AD00001010100010101000424A5200848484006B6B6B00FFFFFF00FFFF
      FF00A5A5A5000000000000000000000000000000000000000000B5847300AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE6363009C4A4A000000000000000000000000003152E700526B
      EF00526BE7009CADEF008494EF008494EF008494EF008494EF00FFFFFF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5FF00219CFF001894
      FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD00000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500F7F7F7009C9C9400F7F7F700CE8C4A00CE8C4A003139BD005A73
      E7002108000010101000424242008484840073737300D6D6D600F7F7F700F7F7
      F700A5A5A5000000000000000000000000000000000000000000B5847300AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A009C4A4A00000000000000000000000000425AEF005273
      E7009CADEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD0000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088CFF00008CFF00006B
      C600000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500F7F7F70094949400D6D6D6000010E7007B94C60018A5FF001052
      BD000008A5003139BD008C847B006B6B6300D6D6D600C6C6C600D6D6D600F7F7
      F700A5A5A5000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000004263E7006373
      E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF00FFFFFF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF001094FF00FFFFFF0084C6FF000084F700088CFF00008CFF00006B
      C600000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00EFEFEF0094949400EFEFEF005A73E700089CFF0042E7F70042E7
      F7002973F700394A9400635A4A00EFEFEF00EFEFEF00C6C6C600EFEFEF00EFEF
      EF00ADADAD000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7009CADEF00FFFFFF008494
      EF002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD0000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094FF00088CFF000063
      BD00000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00ADCEE7005A73E7002973F700089CFF0042E7F700CEF7FF008CF7
      FF004ABDFF002973F7002973F70094A5EF00ADCEE700C6C6C600E7E7E700E7E7
      E700ADADAD000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7009CADEF00FFFFFF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD0000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00088CFF001094FF00FFFFFF001094FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00ADCEE7005A73E7002973F700299CEF0042E7F700CEF7FF008CF7
      FF004ABDFF00299CEF002973F7007B94C600ADB5CE00C6C6C600C6C6C600E7E7
      E700ADADAD000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7009CADEF00FFFFFF008494
      EF00395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD0000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00088CFF00088CFF001094FF00088CFF00006B
      CE00000000000000000000000000000000000000000000000000000000000000
      0000ADB5B500DEDEDE00DEDEDE00DEDEDE005A73E70018A5FF0042E7F70042E7
      F7000094F70094A5EF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00ADB5B5000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700FFFFFF004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD0000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C600000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500D6D6D600D6D6D600D6D6D6002973F70094A5EF0031ADFF001094
      EF0094A5EF0042A5DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600B5B5B5000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD00000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D6002973F70042A5
      DE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600B5B5B5000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B5000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D600000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B50042A5DE007B94
      C600B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B5000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD42
      4200CE9C9C00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C68C8C00B552520000000000000000000000000000000000000000000000
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
      2800000060000000900000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00FF0001000000000000000000FF000100
      0000000000000000FF0001000000000000000000FF0001000000000000000000
      FF0001000000000000000000FF00010000000000000000008000010000000000
      0000000080000100000000000000000080000100000000000000000080000100
      0000000000000000800001000000000000000000800001000000000000000000
      8000010000000000000000008000010000000000000000008000010000000000
      0000000080000300000000000000000080000700000000000000000080000F00
      00000000000000008000FF0000000000000000008000FF000000000000000000
      8000FF0000000000000000008001FF0000000000000000008003FF0000000000
      000000008007FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE00003FF
      0003FFFFFFFFFFFFC00001FF0003FF87FFFFFFFF800001FF0003FF03FFFFFFFF
      800001FF0003FE03FF00003FC00003F0FFFFFE03FF7FC01FC00003F08003FC01
      FF7FE00FE00007F08003F801FF7FE001E00007F08003F000FF7FE001F0000FF0
      8003E000FF780001F0000FF08003C0207F7FFF81F8001FF08003C0603F780F91
      F8001FF08003C1F03F7FFFBDFC003FF08003E3F81F7FFC3DFC003FF08003FFFC
      0F7FFC3DFE007FF08003FFFE077FFF3DFE007FF08003FFFF03000025FF00FFF0
      8003FFFF819FFFE5FF00FFF08003FFFFC1CFFFFDFF81FFF08007FFFFE1E00001
      FF81FFF0800FFFFFF3FFFFFFFFC3FFF0801FFFFFFFFFFFFFFFC7FFFFFFFFFFFF
      FFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFC01FFFFF3FFFFFFFFFFFFFFFE00FFFFE
      1FFFF007FFFFFFFFF007FFFE0FFFF0007FF07FFFFFC7FF8000FFF0001FC007FF
      FFC3FF80007FF0001FC001FFFFC3FF80003FF0001FC0003FFF81FF80001FF000
      1FC0003FFF00FF80000FF0001FC0003FFF00FF800007F0001FC0003FFF00FF80
      0003F0001FC0003FFF00FF800001F0001FC0003FFE007F800001F0001FC0003F
      FE007F800001F0001FC0003FFE007F800001F0001FC0003FFE007F800001F000
      1FC0003FFF00FFC00001F0001FC0003FFF00FFE00001F0001FC0003FFF00FFF0
      0001F0001FC0003FFF00FFF80001F0001FC0003FFF81FFFC0001F0001FE0003F
      FFC3FFFE0001F0001FF0003FFFC3FFFF0001F0001FFE007FFFE3FFFFFFFFF800
      1FFFE1FFFFE00FFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFE00003FF0C1FFF
      FFFFFFFFFFE00003FC0007FF1FFFF07FFFE00003F00001F8000FC007FFE00003
      E00003E0000FC001FFE00003800003C0000FC0003FE00003800003C0000FC000
      3FE00003800003C0000FC0003FE00003800003C0000FC0003FE00003800003C0
      000FC0003FE00003800003C0000FC0003FE00003C00003C0000FC0003FE00003
      E00007C0000FC0003FE00003F8000FC0000FC0003FE00003F8001FC0000FC000
      3FE00003FC007FC0000FC0003FE00003FC00FFC0000FC0003FE00003FC01FFC0
      000FC0003FE00003FC01FFE0000FC0003FE00003FC01FFF8000FE0003FE00007
      FC01FFFE1FFFF0003FE0000FF803FFFFFFFFFE007FE0001FF803FFFFFFFFFFE1
      FFE0003FF007FFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFF00007C00001FFFFFFFFFFFFF00007C00001C0000FC0000FF00003
      C00001C0000FC0000FF00001C00001C0000FC0000FF00001C00001C0000FC000
      0FF00003C00001C0000FC0000FF00007C00001C0000FC0000FF00007C00001C0
      000FC0000FF00007C00001C0000FC0000FF00007C00001C0000FC0000FF00007
      C00001C0000FC0000FF00007C00001C0000FC0000FF00007C00001C0000FC000
      0FF00007C00001C0000FC0000FF00007C00001C0000FC0000FF00007C00001C0
      000FC0000FF00007C00001C0000FC0000FF00007C00001C0000FC0000FF00007
      C00001C0000FC0000FFFDFFFC00001FFFFFFFFFFFFFFFFFFE00003FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cds_SortOrderList: TFDQuery
    BeforePost = cds_SortOrderListBeforePost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'sortorderlist_ID'
        Fields = 'ID'
      end>
    IndexName = 'sortorderlist_ID'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.cxSchedulerTable'
    SQL.Strings = (
      'Select dbo.GetLONos(cx.ID) AS LOS,'
      
        'cx.ID, cx.Start, cx.Finish, cx.TaskStatusField, cx.ResourceID, c' +
        'x.Duration,'
      
        'cx.FixedDate, cx.YearWeek, cx.VerkNo, cx.BookingNo, cx.Postnings' +
        'tid, cx.PreCalcEfficiencyFactor,'
      
        'cx.FeedSpeed, cx.PlannedProductionTime, cx.PlannedWorkingTime, c' +
        'x.OwnerNo, cx.WeekNo, cx.YearNo,'
      'So.PIPNo, so.LIPNo, so.ProgramNo, so.Comments, so.RealStartTime,'
      
        'so.RealEndTime, so.RealProductionTime, so.StopTime, so.PrioNo, s' +
        'o.MCClassNo, so.MoveToLIPNo,'
      
        'so.Template, so.TemplateName, so.TemplateUser, so.Lego, so.TypeO' +
        'fRunNo,'
      'ci.CityName AS LAGERST'#196'LLE, rp.RegPointName AS PRODENHET,'
      
        'LIP.LogicalInventoryName AS LAGERGRUPP, pr.ClientName AS PRODUCE' +
        'NT, OWN.ClientName AS '#196'GARE,'
      ''
      '(Select Top 1 p.ProductDisplayName FROM'
      'dbo.RawMtrlBookedDtl rmd'
      'Inner Join dbo.Product p on p.ProductNo = rmd.ProductNo'
      'WHERE rmd.ID = cx.ID'
      'and rmd.Status = 1) AS R'#229'vara,'
      ''
      '(Select Top 1 p.ProductDisplayName FROM'
      'dbo.RawMtrlBookedHdr rmh'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = rmh.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = rmh.ProductNo'
      
        'Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = rmh.Booki' +
        'ngNo'
      'WHERE cx2.ID = cx.ID'
      'and rmd.ID = cx.ID) AS F'#228'rdigvara,'
      ''
      '(Select Top 1 c.ClientName FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      
        'Left Outer Join dbo.SupplierShippingPlan ssp on ssp.SupplierShip' +
        'PlanObjectNo = sor.sspNo'
      'Left Outer Join dbo.CustomerShippingPlanDetails CSD'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = CSH.CustomerNo'
      
        'on CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObject' +
        'No'
      'WHERE cx2.ID = cx.ID) AS Kund,'
      ''
      '(Select Top 1 SSP.ShippingPlanNo FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      
        'Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = SOR.Booki' +
        'ngNo'
      'and rmd.sspNo = SOR.sspNo'
      'and rmd.ID = cx2.ID'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = SOR.sspNo'
      'WHERE cx2.ID = cx.ID) AS LONR,'
      ''
      'IsNull((Select Top 1 sc.BackgroundColor FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.Surfacin' +
        'gNo'
      'WHERE cx2.ID = cx.ID'
      'AND sc.VerkNo = cx.VerkNo'
      '),0) AS SurfacingBkgColor,'
      ''
      'IsNull((Select Top 1 sc.TextColor FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.Surfacin' +
        'gNo'
      'WHERE cx2.ID = cx.ID'
      'AND sc.VerkNo = cx.VerkNo'
      '),0) AS SurfacingTextColor,'
      ''
      'cx.OrgYearWeek,'
      ''
      '(Select  sum(rmt.PlannedOutputNM3) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS NM3PlanFardig,'
      ''
      '(Select TOP 1 rmt.Utfall From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS Utfall,'
      ''
      '(Select  sum(rmt.BookedNM3) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS BookedNM3,'
      ''
      '(Select Top 1 sor.sspNo FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'WHERE cx2.ID = cx.ID) AS sspNo,'
      ''
      '(Select  sum(rmt.PlannedAM1) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS BookedAM1'
      ''
      ''
      'FROM dbo.cxSchedulerTable cx'
      'Left Outer Join dbo.SortingOrder SO on so.sortingorderno = cx.ID'
      'and so.Template = 0'
      'Left Outer Join dbo.PhysicalInventoryPoint PIP'
      'Left Outer Join dbo.City Ci on ci.cityNo = PIP.PhyInvPointNameNo'
      'ON PIP.PhysicalInventoryPointNo = SO.PIPNo'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInve' +
        'ntoryPointNo = SO.LIPNo'
      
        'Left Outer Join dbo.RegistrationPoint rp on rp.RegPointNo = cx.R' +
        'esourceID'
      'Left Outer Join dbo.Client PR on pr.ClientNo = cx.VerkNo'
      'Left Outer Join dbo.Client OWN on OWN.ClientNo = cx.OwnerNo'
      'WHERE 1 = 1'
      'AND cx.YearWeek = '#39'1028'#39
      'AND cx.VerkNo = 76'
      'AND cx.OwnerNo = 76')
    Left = 440
    Top = 280
    object cds_SortOrderListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
      ProviderFlags = []
    end
    object cds_SortOrderListComments: TMemoField
      FieldName = 'Comments'
      Origin = 'Comments'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_SortOrderListRealStartTime: TSQLTimeStampField
      DisplayLabel = 'Starttid'
      FieldName = 'RealStartTime'
      Origin = 'RealStartTime'
      ProviderFlags = []
    end
    object cds_SortOrderListRealEndTime: TSQLTimeStampField
      DisplayLabel = 'Sluttid'
      FieldName = 'RealEndTime'
      Origin = 'RealEndTime'
      ProviderFlags = []
    end
    object cds_SortOrderListRealProductionTime: TBCDField
      FieldName = 'RealProductionTime'
      Origin = 'RealProductionTime'
      ProviderFlags = []
      DisplayFormat = '#,###.0'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderListPrioNo: TIntegerField
      FieldName = 'PrioNo'
      Origin = 'PrioNo'
      ProviderFlags = []
    end
    object cds_SortOrderListMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = []
    end
    object cds_SortOrderListMoveToLIPNo: TIntegerField
      FieldName = 'MoveToLIPNo'
      Origin = 'MoveToLIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListTypeOfRunNo: TIntegerField
      FieldName = 'TypeOfRunNo'
      Origin = 'TypeOfRunNo'
      ProviderFlags = []
    end
    object cds_SortOrderListLego: TIntegerField
      FieldName = 'Lego'
      Origin = 'Lego'
      ProviderFlags = []
    end
    object cds_SortOrderListTemplate: TIntegerField
      FieldName = 'Template'
      Origin = 'Template'
      ProviderFlags = []
    end
    object cds_SortOrderListTemplateName: TStringField
      FieldName = 'TemplateName'
      Origin = 'TemplateName'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListTemplateUser: TIntegerField
      FieldName = 'TemplateUser'
      Origin = 'TemplateUser'
      ProviderFlags = []
    end
    object cds_SortOrderListLAGERSTLLE: TStringField
      FieldName = 'LAGERST'#196'LLE'
      Origin = '[LAGERST'#196'LLE]'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListPRODENHET: TStringField
      FieldName = 'PRODENHET'
      Origin = 'PRODENHET'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cds_SortOrderListLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListPRODUCENT: TStringField
      DisplayLabel = 'Producent'
      FieldName = 'PRODUCENT'
      Origin = 'PRODUCENT'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListGARE: TStringField
      FieldName = #196'GARE'
      Origin = '['#196'GARE]'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListRvara: TStringField
      FieldName = 'R'#229'vara'
      Origin = '[R'#229'vara]'
      ProviderFlags = []
      Size = 100
    end
    object cds_SortOrderListFrdigvara: TStringField
      FieldName = 'F'#228'rdigvara'
      Origin = '[F'#228'rdigvara]'
      ProviderFlags = []
      Size = 100
    end
    object cds_SortOrderListKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListTypeOfRunName: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeOfRunName'
      LookupKeyFields = 'TypeOfRunNo'
      LookupResultField = 'TypeOfRunName'
      KeyFields = 'TypeOfRunNo'
      ProviderFlags = []
      Lookup = True
    end
    object cds_SortOrderListSurfacingBkgColor: TIntegerField
      FieldName = 'SurfacingBkgColor'
      Origin = 'SurfacingBkgColor'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListSurfacingTextColor: TIntegerField
      FieldName = 'SurfacingTextColor'
      Origin = 'SurfacingTextColor'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SortOrderListStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_SortOrderListFixedDate: TIntegerField
      FieldName = 'FixedDate'
      Origin = 'FixedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListYearWeek: TStringField
      DisplayLabel = 'Vecka'
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_SortOrderListVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderListPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_SortOrderListWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
    end
    object cds_SortOrderListYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
    end
    object cds_SortOrderListStopTime: TIntegerField
      FieldName = 'StopTime'
      Origin = 'StopTime'
      ProviderFlags = []
    end
    object cds_SortOrderListLONR: TIntegerField
      DisplayLabel = 'LONr'
      FieldName = 'LONR'
      Origin = 'LONR'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListOrgYearWeek: TStringField
      DisplayLabel = 'Urs.vecka'
      FieldName = 'OrgYearWeek'
      Origin = 'OrgYearWeek'
      Size = 9
    end
    object cds_SortOrderListNM3PlanFardig: TFMTBCDField
      DisplayLabel = 'Fardigvara NM3'
      FieldName = 'NM3PlanFardig'
      Origin = 'NM3PlanFardig'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SortOrderListUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ReadOnly = True
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListBookedNM3: TFMTBCDField
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SortOrderListsspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ReadOnly = True
    end
    object cds_SortOrderListLOS: TStringField
      FieldName = 'LOS'
      Origin = 'LOS'
      ReadOnly = True
      Size = 100
    end
    object cds_SortOrderListBookedAM1: TFMTBCDField
      FieldName = 'BookedAM1'
      Origin = 'BookedAM1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,###.0'
      Precision = 38
      Size = 3
    end
  end
  object ds_SortOrderList: TDataSource
    DataSet = cds_SortOrderList
    Left = 440
    Top = 328
  end
  object FD_SortOrderRows: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'SOU.ProductNo,'
      'SO.SortingOrderNo,'
      'SO.SortingOrderNo AS K'#246'rnr,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'SOU.ProductDisplayName AS Produkt,'
      ''
      'SOU.AM3,'
      'SOU.NM3,'
      'SOU.AM1,'
      'SOU.Pcs AS Styck,'
      'SOU.ProductValue AS V'#228'rde,'
      'SOU.AvgPricePerAM3 AS Pris,'
      'SOU.OutturnVolume AS UtfallonFin,'
      'SOU.OutturnPrice AS UtfallonRaw'
      ''
      'FROM dbo.SortingOrder SO'
      
        'Inner Join dbo.SortingOrderOutput SOU on SOU.SortingOrderNo = SO' +
        '.SortingOrderNo'
      ''
      'Left Outer Join dbo.Product P'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = p.ProductG' +
        'roupNo'
      'on P.ProductNo = sou.ProductNo'
      ''
      'WHERE SO.YearWeek = :YearWeek'
      'and SO.ProducerNo = :ProducerNo'
      '')
    Left = 320
    Top = 240
    ParamData = <
      item
        Name = 'YEARWEEK'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SortOrderRowsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object FD_SortOrderRowsKrnr: TIntegerField
      FieldName = 'K'#246'rnr'
      Origin = '[K'#246'rnr]'
      Required = True
    end
    object FD_SortOrderRowsNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object FD_SortOrderRowsNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object FD_SortOrderRowsAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object FD_SortOrderRowsAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object FD_SortOrderRowsProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object FD_SortOrderRowsAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object FD_SortOrderRowsNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object FD_SortOrderRowsAM1: TBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object FD_SortOrderRowsStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      DisplayFormat = '#########'
    end
    object FD_SortOrderRowsVrde: TBCDField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 1
    end
    object FD_SortOrderRowsPris: TBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 1
    end
    object FD_SortOrderRowsUtfallonFin: TBCDField
      DisplayLabel = '% f'#228'rdig av f'#228'rdig'
      FieldName = 'UtfallonFin'
      Origin = 'UtfallonFin'
      DisplayFormat = '#,###,###.00'
      Precision = 18
      Size = 1
    end
    object FD_SortOrderRowsUtfallonRaw: TBCDField
      DisplayLabel = '% av r'#229'vara'
      FieldName = 'UtfallonRaw'
      Origin = 'UtfallonRaw'
      DisplayFormat = '#,###,###.00'
      Precision = 18
      Size = 1
    end
    object FD_SortOrderRowsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ds_SortOrderRows: TDataSource
    DataSet = FD_SortOrderRows
    Left = 320
    Top = 296
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdInputPkgs
    PopupMenus = <>
    Left = 73
    Top = 284
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdSortRows
    PopupMenus = <>
    Left = 81
    Top = 196
  end
  object FD_SOHdr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'SO.SortingOrderNo AS K'#246'rnr, SO.YearWeek,'
      ''
      'SO.SortingOrderNo,'
      ''
      'pr.SearchName AS Verk,'
      'rp.RegPointName AS Hyvel,'
      ''
      'SO.RealStartTime AS Start,'
      'SO.RealEndTime AS Slut,'
      ''
      'SO.RealProductionTime AS Totaltid,'
      'SO.Postningstid AS Posttid,'
      ''
      'SO.ProductionAM1 AS HyvlatLPM,'
      ''
      'CASE WHEN SO.RealProductionTime > 0 then'
      'SO.ProductionAM1 / SO.RealProductionTime'
      'ELSE'
      '0 End AS LPMperMin,'
      ''
      ''
      '-- Total r'#229'vara in'
      'SO.RawMtrlAM3 AS NM3IN,'
      ''
      'CASE WHEN (Select SUM(NM3) from dbo.SortingOrderOutput SOU'
      'where SOU.SortingOrderNo = SO.SortingOrderNo'
      'AND SOU.ProductNo > 0) > 0 THEN'
      '(SO.TotalCost + SO.RawMtrlCost)'
      '/'
      '(Select SUM(NM3) from dbo.SortingOrderOutput SOU'
      'where SOU.SortingOrderNo = SO.SortingOrderNo'
      'AND SOU.ProductNo > 0)'
      'ELSE'
      '0'
      'END AS KostPerNM3Ut,'
      ''
      '(Select SUM(SRS.KassAM3)'
      'FROM dbo.SortOrderRawSum SRS'
      'where SRS.SortingOrderNo = SO.SortingOrderNo) AS Kass_AM3,'
      ''
      '(Select SUM(SRS.KassPcs)'
      'FROM dbo.SortOrderRawSum SRS'
      'where SRS.SortingOrderNo = SO.SortingOrderNo) AS Kass_Styck,'
      ''
      '-- Total F'#228'rdigvara ut'
      '(Select SUM(SF.NM3) FROM dbo.SortOrderFinSum SF'
      'WHERE SF.SortingOrderNo = SO.SortingOrderNo'
      'AND SF.Urlagg = 0) AS FardigVaraUtNM3,'
      ''
      '(Select SUM(SF.AM3) FROM dbo.SortOrderFinSum SF'
      'WHERE SF.SortingOrderNo = SO.SortingOrderNo'
      'AND SF.Urlagg = 0) AS FardigVaraUtAM3,'
      ''
      '(Select SUM(SRS.UrlaggPcs)'
      'FROM dbo.SortOrderRawSum SRS'
      'where SRS.SortingOrderNo = SO.SortingOrderNo) AS Url'#228'gg_Styck,'
      ''
      '(Select Top 1 pg.ActualThicknessMM FROM'
      'dbo.SortingOrderRow SOR'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = SO.SortingOrderNo'
      'AND SOR.Urlagg = 0) AS ATMM,'
      ''
      '(Select Top 1 pg.ActualWidthMM FROM'
      'dbo.SortingOrderRow SOR'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = SO.SortingOrderNo'
      'AND SOR.Urlagg = 0) AS ABMM,'
      ''
      '(Select Top 1 pg.NominalThicknessMM FROM'
      'dbo.SortingOrderRawMtrl SOR'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = SO.SortingOrderNo'
      'AND SOR.MainRawMtrl = 1) AS NTMM,'
      ''
      '(Select Top 1 pg.NominalWidthMM FROM'
      'dbo.SortingOrderRawMtrl SOR'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = SO.SortingOrderNo'
      'AND SOR.MainRawMtrl = 1) AS NBMM,'
      ''
      'SO.ChipsM3Solid AS KostPerNM3Raw'
      ''
      ''
      'FROM dbo.SortingOrder SO'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = SO.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client PR on pr.ClientNo = SO.ProducerNo'
      ''
      'WHERE SO.YearWeek = :YearWeek'
      'and SO.ProducerNo = :ProducerNo')
    Left = 512
    Top = 280
    ParamData = <
      item
        Name = 'YEARWEEK'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SOHdrKrnr: TIntegerField
      FieldName = 'K'#246'rnr'
      Origin = '[K'#246'rnr]'
      Required = True
    end
    object FD_SOHdrYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
    object FD_SOHdrVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object FD_SOHdrHyvel: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'Hyvel'
      Origin = 'Hyvel'
      FixedChar = True
      Size = 30
    end
    object FD_SOHdrStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
    end
    object FD_SOHdrTotaltid: TBCDField
      FieldName = 'Totaltid'
      Origin = 'Totaltid'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 1
    end
    object FD_SOHdrPosttid: TBCDField
      FieldName = 'Posttid'
      Origin = 'Posttid'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object FD_SOHdrHyvlatLPM: TBCDField
      DisplayLabel = 'LPM in hyvel'
      FieldName = 'HyvlatLPM'
      Origin = 'HyvlatLPM'
      Precision = 18
      Size = 3
    end
    object FD_SOHdrLPMperMin: TFMTBCDField
      DisplayLabel = 'LPM/Minut'
      FieldName = 'LPMperMin'
      Origin = 'LPMperMin'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 22
    end
    object FD_SOHdrNM3IN: TBCDField
      DisplayLabel = 'Totalt r'#229'vara NM3'
      FieldName = 'NM3IN'
      Origin = 'NM3IN'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object FD_SOHdrKostPerNM3Ut: TFMTBCDField
      DisplayLabel = 'Kostnad/NM3 ut'
      FieldName = 'KostPerNM3Ut'
      Origin = 'KostPerNM3Ut'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 18
    end
    object FD_SOHdrKass_AM3: TFloatField
      DisplayLabel = 'Kassa. AM3'
      FieldName = 'Kass_AM3'
      Origin = 'Kass_AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_SOHdrKass_Styck: TFloatField
      DisplayLabel = 'Kassa. styck'
      FieldName = 'Kass_Styck'
      Origin = 'Kass_Styck'
      ReadOnly = True
      DisplayFormat = '###########'
    end
    object FD_SOHdrSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SOHdrFardigVaraUtNM3: TFloatField
      DisplayLabel = 'F'#228'rdigvara NM3'
      FieldName = 'FardigVaraUtNM3'
      Origin = 'FardigVaraUtNM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_SOHdrFardigVaraUtAM3: TFloatField
      DisplayLabel = 'F'#228'rdigvara AM3'
      FieldName = 'FardigVaraUtAM3'
      Origin = 'FardigVaraUtAM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_SOHdrUrlgg_Styck: TIntegerField
      DisplayLabel = 'Url'#228'gg styck'
      FieldName = 'Url'#228'gg_Styck'
      Origin = '[Url'#228'gg_Styck]'
      ReadOnly = True
    end
    object FD_SOHdrSlut: TSQLTimeStampField
      FieldName = 'Slut'
      Origin = 'Slut'
    end
    object FD_SOHdrATMM: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'ATMM'
      Origin = 'ATMM'
      ReadOnly = True
    end
    object FD_SOHdrABMM: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'ABMM'
      Origin = 'ABMM'
      ReadOnly = True
    end
    object FD_SOHdrNTMM: TFloatField
      DisplayLabel = 'NT'
      FieldName = 'NTMM'
      Origin = 'NTMM'
      ReadOnly = True
    end
    object FD_SOHdrNBMM: TFloatField
      DisplayLabel = 'NB'
      FieldName = 'NBMM'
      Origin = 'NBMM'
      ReadOnly = True
    end
    object FD_SOHdrKostPerNM3Raw: TBCDField
      DisplayLabel = 'Kostnad/NM3 r'#229'vara'
      FieldName = 'KostPerNM3Raw'
      Origin = 'KostPerNM3Raw'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
  end
  object ds_SOHdr: TDataSource
    DataSet = FD_SOHdr
    Left = 512
    Top = 328
  end
  object FD_Rawmtrl: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT DISTINCT'
      'PR.ProductDisplayName,'
      'SORS.SortingOrderNo,'
      'SORS.ProductNo,'
      'SORS.RawMtrlNo,'
      'SORS.Pieces'#9#9#9'  AS'#9'STYCK,'
      'SORS.AM3'#9#9#9'    AS '#9'AM3,'
      'SORS.NM3'#9#9#9'  AS '#9'NM3,'
      'SORS.AM1 AS AM1,'
      'SORS.UrlaggPcs AS UrlaggPcs,'
      'SORS.FDjustedPieces AS FDjustedPieces,'
      'SORS.FDjustedAM3 AS FDjustedAM3,'
      'SORS.FDjustedNM3 AS FDjustedNM3,'
      'SORS.FDjustedAM1 AS FDjustedAM1,'
      'SORS.Lameller AS Lameller,'
      'SORS.KapSnitt AS KapSnitt,'
      'SORS.ExpectedPcsOut AS ExpectedPcsOut,'
      'SORS.ATMM,'
      'SORS.ABMM,'
      'SORS.ALMM,'
      'SORS.NTMM,'
      'SORS.NBMM,'
      'SORS.NLMM,'
      'SORS.SizePercentOfTotal,'
      'SORS.PercentAdjPcs,'
      'SORS.KassPcs,'
      'SORS.KassAM3,'
      'SORS.KassAM1,'
      'SORS.PricePerNM3,'
      'SORS.ProductValue'
      ''
      'FROM'
      'dbo.SortingOrder SO'
      
        'Inner Join dbo.SortOrderRawSum SORS on SORS.SortingOrderNo = SO.' +
        'SortingOrderNo'
      ''
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = SORS.ProductNo'
      ''
      'WHERE SO.YearWeek = :YearWeek'
      'and SO.ProducerNo = :ProducerNo'
      '')
    Left = 577
    Top = 276
    ParamData = <
      item
        Name = 'YEARWEEK'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_RawmtrlProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object FD_RawmtrlSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawmtrlProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawmtrlRawMtrlNo: TIntegerField
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawmtrlSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object FD_RawmtrlAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlUrlaggPcs: TIntegerField
      DisplayLabel = 'Url'#228'gg styck'
      FieldName = 'UrlaggPcs'
      Origin = 'UrlaggPcs'
      DisplayFormat = '##########'
    end
    object FD_RawmtrlAdjustedPieces: TIntegerField
      FieldName = 'FDjustedPieces'
      Origin = 'FDjustedPieces'
      DisplayFormat = '############'
    end
    object FD_RawmtrlAdjustedAM3: TFloatField
      FieldName = 'FDjustedAM3'
      Origin = 'FDjustedAM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlAdjustedNM3: TFloatField
      FieldName = 'FDjustedNM3'
      Origin = 'FDjustedNM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlAdjustedAM1: TFloatField
      FieldName = 'FDjustedAM1'
      Origin = 'FDjustedAM1'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlLameller: TIntegerField
      FieldName = 'Lameller'
      Origin = 'Lameller'
    end
    object FD_RawmtrlKapSnitt: TIntegerField
      DisplayLabel = 'Kapsnitt'
      FieldName = 'KapSnitt'
      Origin = 'KapSnitt'
    end
    object FD_RawmtrlExpectedPcsOut: TIntegerField
      DisplayLabel = 'F'#246'rv'#228'ntat st ut'
      FieldName = 'ExpectedPcsOut'
      Origin = 'ExpectedPcsOut'
      DisplayFormat = '#############'
    end
    object FD_RawmtrlATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
    end
    object FD_RawmtrlABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
    end
    object FD_RawmtrlALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawmtrlNTMM: TFloatField
      FieldName = 'NTMM'
      Origin = 'NTMM'
    end
    object FD_RawmtrlNBMM: TFloatField
      FieldName = 'NBMM'
      Origin = 'NBMM'
    end
    object FD_RawmtrlNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
    end
    object FD_RawmtrlSizePercentOfTotal: TFloatField
      FieldName = 'SizePercentOfTotal'
      Origin = 'SizePercentOfTotal'
    end
    object FD_RawmtrlPercentAdjPcs: TFloatField
      FieldName = 'PercentAdjPcs'
      Origin = 'PercentAdjPcs'
      DisplayFormat = '###.00'
    end
    object FD_RawmtrlKassPcs: TFloatField
      DisplayLabel = 'Kass. styck'
      FieldName = 'KassPcs'
      Origin = 'KassPcs'
      DisplayFormat = '###########'
    end
    object FD_RawmtrlKassAM3: TFloatField
      DisplayLabel = 'Kass. AM3'
      FieldName = 'KassAM3'
      Origin = 'KassAM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlKassAM1: TFloatField
      DisplayLabel = 'Kass. AM1'
      FieldName = 'KassAM1'
      Origin = 'KassAM1'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlPricePerNM3: TFloatField
      DisplayLabel = 'Pris/NM3'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawmtrlProductValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      DisplayFormat = '#,###,###.0'
    end
  end
  object ds_Rawmtrl: TDataSource
    DataSet = FD_Rawmtrl
    Left = 577
    Top = 324
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 909
    PixelsPerInch = 96
    object cxStyle1Yellow: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2MoneyGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleOlive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle3FardigVara: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 57825
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleLightYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 9961471
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStylePkgNotAvail: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsStrikeOut]
      TextColor = clRed
    end
    object cxStyle1Red: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyleGreenBoldText: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleNormal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object dxBarPopupMenuSortOrderRows: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 777
    Top = 597
    PixelsPerInch = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link4
    Version = 0
    Left = 313
    Top = 972
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdWorkOrder
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
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40040.571801030090000000
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Component = grdSortOrderRows
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
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 40040.571801030090000000
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      Component = grdNewPkgs
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
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TdxGridReportLink
      Component = grdUsedPkgs
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
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object dsUrlaggProduct: TDataSource
    DataSet = dmsSortOrder.mtUrlaggProduct
    Left = 680
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = dmsSortOrder.mtUrlaggProduct
    Left = 680
    Top = 328
  end
  object cxGridPopupMenu3: TcxGridPopupMenu
    Grid = grdRawMtrl
    PopupMenus = <>
    Left = 200
    Top = 237
  end
  object cxGridPopupMenu4: TcxGridPopupMenu
    Grid = grdOutputPkgs
    PopupMenus = <>
    Left = 200
    Top = 292
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexName = 'mtProductIndex1'
    IndexDefs = <
      item
        Name = 'mtProductIndex1'
        Fields = 'ProductNo'
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
    Left = 568
    Top = 64
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProductProductDisplayName: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductDisplayName'
      LookupDataSet = dmsSortOrder.cds_ProdInLager
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      Size = 100
      Lookup = True
    end
    object mtProductUrlaggProductNo: TIntegerField
      FieldName = 'UrlaggProductNo'
    end
    object mtProductUrlaggProdukt: TStringField
      FieldKind = fkLookup
      FieldName = 'UrlaggProdukt'
      LookupDataSet = dmsSortOrder.cds_FindUrlagg
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'UrlaggProductNo'
      Size = 100
      Lookup = True
    end
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 568
    Top = 112
  end
  object pmStatusKorOrder: TPopupMenu
    Left = 648
    Top = 915
    object Preliminr1: TMenuItem
      Action = acSetToPreliminary
    end
    object Aktiv1: TMenuItem
      Action = acStartSortOrder
      Caption = 'Klar att k'#246'ra'
    end
    object Avsluta1: TMenuItem
      Action = acAvsluta
    end
    object Outredd1: TMenuItem
      Action = acSetStatusOutredd
    end
    object Pause1: TMenuItem
      Action = acSetStatusPause
    end
  end
  object pmSkrivut: TPopupMenu
    Left = 648
    Top = 867
    object Krorder1: TMenuItem
      Action = acPrintAOKorOrder
    end
    object Resultat1: TMenuItem
      Action = acAOResult
    end
    object Skrivutkrorderkap1: TMenuItem
      Action = acSkrivUtKapNota
    end
  end
  object ds_RawSum: TDataSource
    DataSet = dmsSortOrder.FD_RawSum
    Left = 784
    Top = 248
  end
  object ds_NewPkgSum: TDataSource
    DataSet = dmsSortOrder.FD_SortOrderFinSum
    Left = 784
    Top = 312
  end
  object ImageList1: TImageList
    Left = 313
    Top = 901
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF006C71FF003134B5003134
      BD003134BD003134BD003134C5003134C5003134BD003134BD003134B5003134
      B5003134AD003134A5006267FF00FFFFFF00FFFFFF006B73FF003131B5003131
      BD003131BD003131BD003131C6003131C6003131BD003131BD003131B5003131
      B5003131AD003131A5006363FF00FFFFFF00FFFFFF006B73FF003131B5003131
      BD003131BD003131BD003131C6003131C6003131BD003131BD003131B5003131
      B5003131AD003131A5006363FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003134C5003135DF003135
      EF003136F7003136F7003135EF003136F7003135EF003135EF003135EF003135
      E7003135DF003134C50031349D00FFFFFF00FFFFFF003131C6003131DE003131
      EF003131F7003131F7003131EF003131F7003131EF003131EF003131EF003131
      E7003131DE003131C60031319C00FFFFFF00FFFFFF003131C6003131DE003131
      EF003131F7003131F7003131EF003131F7003131EF003131EF003131EF003131
      E7003131DE003131C60031319C00FFFFFF000000000000000000000000000000
      0000F6F9F900F6F9F900F6F9F900F5F8F800F5F8F800F5F8F800F5F8F800F9FB
      FB0000000000000000000000000000000000FFFFFF003135D5003135EF003136
      FF003136FF003136FF003136FF003137FF003137FF003137FF003137FF003136
      FF003135EB003135CD003134AD00FFFFFF00FFFFFF003131D6003131EF003139
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003131E7003131CE003131AD00FFFFFF00FFFFFF003131D6003131EF003139
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003131E7003131CE003131AD00FFFFFF00000000000000000000000000F1F4
      F500E8EEEF00E8EEEF00E8EEEF00E5EDED00E5EDED00E5ECED00E5ECED00EFF3
      F40000000000000000000000000000000000FFFFFF003135E7003136FF003136
      FF003136FF003136FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136F7003135DF003134B500FFFFFF00FFFFFF003131E7003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003131F7003131DE003131B500FFFFFF00FFFFFF003131E7003139FF003139
      FF003139FF003139FF003139FF00FFFFFF00848CFF003139FF003139FF003139
      FF003131F7003131DE003131B500FFFFFF00000000000000000000000000F1F4
      F500E8EEEF00E8EEEF00E8EEEF00AABCF200E5EDED00E5ECED00E5ECED00EFF3
      F40000000000000000000000000000000000FFFFFF003135EF003136FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136FB003135E7003134BD00FFFFFF00FFFFFF003131EF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003131E7003131BD00FFFFFF00FFFFFF003131EF003139FF003139
      FF003139FF003139FF003139FF00FFFFFF00848CFF003139FF003139FF003139
      FF003139FF003131E7003131BD00FFFFFF00000000000000000000000000F1F4
      F500044FF50091C4FF00044FF500044FF500BECCF100044FF500E5ECED00EFF3
      F40000000000000000000000000000000000FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136FB003135EF003134C500FFFFFF00FFFFFF003139FF003139FF003139
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003139FF003131EF003131C600FFFFFF00FFFFFF003139FF003139FF003139
      FF003139FF003139FF003139FF00FFFFFF00848CFF003139FF003139FF003139
      FF003139FF003131EF003131C600FFFFFF00000000000000000000000000F1F4
      F50071A3FF00194FFF00044FF500044FF5002E59FC007995F600E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003136FF003136
      FF003136F5003135EF003135CD00FFFFFF00FFFFFF003139FF003139FF00848C
      FF00848CFF00848CFF00848CFF00848CFF00848CFF00848CFF00848CFF00848C
      FF003131F7003131EF003131CE00FFFFFF00FFFFFF003139FF003139FF00848C
      FF00848CFF00848CFF00848CFF00FFFFFF00848CFF00848CFF00848CFF00848C
      FF003131F7003131EF003131CE00FFFFFF00000000000000000000000000F1F4
      F500044FF500044FF50043C0FE0049CEFF00044FF500044FF500E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003136FF003136FF003136
      F9003135EF003135EF003135CD00FFFFFF00FFFFFF003139FF003139FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003131EF003131EF003131CE00FFFFFF00FFFFFF003139FF003139FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003131EF003131EF003131CE00FFFFFF00000000000000000000000000F1F4
      F500044FF500044FF50079EAFF0073F0FE00044FF500044FF500E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF003137FF003C42FF003A40
      FF003137FF003137FF003137FF003137FF003136FF003136FF003136FF003136
      F7003135EF003135EF003135CD00FFFFFF00FFFFFF003139FF003942FF003942
      FF003139FF003139FF003139FF003139FF003139FF003139FF003139FF003131
      F7003131EF003131EF003131CE00FFFFFF00FFFFFF003139FF003942FF003942
      FF003139FF003139FF003139FF00FFFFFF00848CFF003139FF003139FF003131
      F7003131EF003131EF003131CE00FFFFFF00000000000000000000000000F1F4
      F500E8EEEF00044FF5001285FE00168AFE001A54FD0099B1F300E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF003137FF005257FF005257
      FF003C42FF003238FF003137FF003137FF003136FF003136FF003136FF003136
      F9003135EF003135EF003135CD00FFFFFF00FFFFFF003139FF005252FF005252
      FF003942FF003139FF003139FF003139FF003139FF003139FF003139FF003131
      F7003131EF003131EF003131CE00FFFFFF00FFFFFF003139FF005252FF005252
      FF003942FF003139FF003139FF00FFFFFF00848CFF003139FF003139FF003131
      F7003131EF003131EF003131CE00FFFFFF00000000000000000000000000F1F4
      F500044FF500657FF800044FF500044FF500738EF700044FF500E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF003A40FF006A6FFF006267
      FF004248FF003A40FF00383EFF003137FF003137FF003136FF003136FF003136
      FF003136F7003136F7003135CD00FFFFFF00FFFFFF003942FF006B6BFF006363
      FF00424AFF003942FF003942FF003139FF003139FF003139FF003139FF003139
      FF003131F7003131F7003131CE00FFFFFF00FFFFFF003942FF006B6BFF006363
      FF00424AFF003942FF003942FF00FFFFFF00848CFF003139FF003139FF003139
      FF003131F7003131F7003131CE00FFFFFF00000000000000000000000000F1F4
      F500E8EEEF00E4EBF000044FF500044FF500E5ECEF00E8EEEF00E8EEEE00F1F4
      F40000000000000000000000000000000000FFFFFF005257FF008488FF006A6F
      FF005257FF004A4FFF004248FF004248FF00343AFF003137FF003137FF003136
      FF003136FF003136F7003135CD00FFFFFF00FFFFFF005252FF00848CFF006B6B
      FF005252FF004A4AFF00424AFF00424AFF003139FF003139FF003139FF003139
      FF003139FF003131F7003131CE00FFFFFF00FFFFFF005252FF00848CFF006B6B
      FF005252FF004A4AFF00424AFF00FFFFFF00848CFF003139FF003139FF003139
      FF003139FF003131F7003131CE00FFFFFF00000000000000000000000000F6F8
      F900F1F5F500F1F5F500EFF4F600EFF3F500F1F4F400F1F4F400F1F4F400F6F8
      F80000000000000000000000000000000000FFFFFF006267FF009C9FFF008488
      FF006A6FFF006267FF005257FF004A4FFF004248FF003A40FF003238FF003137
      FF003136FF003136F7003134BD00FFFFFF00FFFFFF006363FF009C9CFF00848C
      FF006B6BFF006363FF005252FF004A4AFF00424AFF003942FF003139FF003139
      FF003139FF003131F7003131BD00FFFFFF00FFFFFF006363FF009C9CFF00848C
      FF006B6BFF006363FF005252FF004A4AFF00424AFF003942FF003139FF003139
      FF003139FF003131F7003131BD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C8FF006267FF004A4F
      FF003A40FF003137FF003137FF003137FF003137FF003136FF003136FF003136
      FF003136F7003135DF007C80FF00FFFFFF00FFFFFF00C6CEFF006363FF004A4A
      FF003942FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003131F7003131DE007B84FF00FFFFFF00FFFFFF00C6CEFF006363FF004A4A
      FF003942FF003139FF003139FF003139FF003139FF003139FF003139FF003139
      FF003131F7003131DE007B84FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF005BD7DF0016696E00186F
      7400186F7400186F740019757B0019757B00186F7400186F740016696E001669
      6E0015626700145C600053D5DD00FFFFFF00FFFFFF00E3995700703F14007743
      150077431500774315007E4716007E4716007743150077431500703F1400703F
      1400693B130062381200E1944F00FFFFFF00FFFFFF0054AFFF00185492001858
      9A0018589A0018589A00195CA100195CA10018589A0018589A00185492001854
      920018508A00184C82004BAAFF00FFFFFF00FFFFFF0084B58400107310001873
      18001873180018731800187B1800187B1800107B1000107B1000087B0800087B
      0800007B0000007300007BB57B00FFFFFF00FFFFFF0019757B001D8A91002097
      9E00219DA500219DA50020979E00219DA50020979E0020979E0020979E001F90
      97001D8A910019757B0012565A00FFFFFF00FFFFFF007E47160094531A00A25B
      1C00A85F1E00A85F1E00A25B1C00A85F1E00A25B1C00A25B1C00A25B1C009B57
      1B0094531A007E4716005C341000FFFFFF00FFFFFF00195CA1001A69BA001A71
      CA001A75D2001A75D2001A71CA001A75D2001A71CA001A71CA001A71CA001A6D
      C2001A69BA00195CA10017487B00FFFFFF00FFFFFF0010841000218C21002994
      2900319431003194310029942900299C2900219C210018A5180018A5180010A5
      100008A5080000940000006B0000FFFFFF00FFFFFF001C82880020979E0024AA
      B20024AAB20024ACB40025B0B90028BFC80028BFC80028BFC80028BFC80024AA
      B2001F949B001A7C820015626700FFFFFF00FFFFFF008B4F1900A25B1C00B667
      2000B6672000B8682000BD6A2100CC732400CC732400CC732400CC732400B667
      20009E591C00854B1700693B1300FFFFFF00FFFFFF001964B1001A71CA001B7D
      E1001B7DE1001B7EE3001B81E9001C8AFA001C8AFA001C8AFA001C8AFA001B7D
      E1001A6FC6001960A90018508A00FFFFFF00FFFFFF00188C180029942900399C
      39003A9C3A003A9D3A0039A539004AA54A004AA54A004AA54A004AA54A002FA6
      2F0015A51500009C0000007B0000FFFFFF00FFFFFF001F90970024AAB20027B8
      C10027B8C10027B8C10028BFC80028BFC80028BFC80028BFC80028BFC80026B1
      BA00219DA5001D8A910016696E00FFFFFF00FFFFFF009B571B00B6672000C56F
      2300C56F2300C56F2300CC732400CC732400CC732400CC732400CC732400BF6B
      2100A85F1E0094531A00703F1400FFFFFF00FFFFFF001A6DC2001B7DE1001C86
      F2001C86F2001C86F2001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001B82
      EB001A75D2001A69BA0018549200FFFFFF00FFFFFF0021942100399C390042A5
      420045A3450044A344004AA54A004AA54A004AA54A004AA54A004AA54A0038A7
      38001EA71E0008A50800087B0800FFFFFF00FFFFFF0020979E0025B0B90028BF
      C8002AC4CE0028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80026B1
      BA0022A0A8001F909700186F7400FFFFFF00FFFFFF00A25B1C00BD6A2100CC73
      2400D3772500CC732400CC732400CC732400CC732400CC732400CC732400BF6B
      2100AC611E009B571B0077431500FFFFFF00FFFFFF001A71CA001B81E9001C8A
      FA001C8EFF001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001B82
      EB001B77D5001A6DC20018589A00FFFFFF00FFFFFF0029942900429C42004AA5
      4A0052A552004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0039A6
      390022A7220010A5100008840800FFFFFF00FFFFFF0023A3AB0028BFC8002AC4
      CE0028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80025B0
      B90022A0A80020979E0019757B00FFFFFF00FFFFFF00AF631F00CC732400D377
      2500CC732400CC732400CC732400CC732400CC732400CC732400CC732400BD6A
      2100AC611E00A25B1C007E471600FFFFFF00FFFFFF001B79D9001C8AFA001C8E
      FF001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001B81
      E9001B77D5001A71CA00195CA100FFFFFF00FFFFFF00319C31004AA54A0052A5
      52004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0038A5
      380024A5240018A5180010841000FFFFFF00FFFFFF0025B0B9002AC4CE0028BF
      C80028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80027B6BF0024A8
      B000219BA30020979E001A7C8200FFFFFF00FFFFFF00BD6A2100D3772500CC73
      2400CC732400CC732400CC732400CC732400CC732400CC732400C46E2200B466
      2000A75E1D00A25B1C00854B1700FFFFFF00FFFFFF001B81E9001C8EFF001C8A
      FA001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C85F0001B7C
      DF001A74D0001A71CA001960A900FFFFFF00FFFFFF00429C420052A552004AA5
      4A004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0042A3420033A1
      330024A02400219C210018841800FFFFFF00FFFFFF0027B8C1002AC8D2002AC4
      CE0028BFC80028BFC80028BFC80028BFC80028BFC80027B8C10025B0B900229E
      A60020979E0020979E001A7C8200FFFFFF00FFFFFF00C56F2300D6792600D377
      2500CC732400CC732400CC732400CC732400CC732400C56F2300BD6A2100AA60
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF001C86F2001C90FF001C8E
      FF001C8AFA001C8AFA001C8AFA001C8AFA001C8AFA001C86F2001B81E9001B76
      D3001A71CA001A71CA001960A900FFFFFF00FFFFFF0042A5420053A8530051A7
      51004AA54A004AA54A004AA54A004AA54A004AA54A0046A246003DA03D002C9C
      2C00219C2100219C2100217B2100FFFFFF00FFFFFF002AC4CE0033CDD70032CC
      D6002AC6D00029C3CD0028BFC80027BAC30026B5BE0026B3BC0024AAB200219D
      A50020979E0020979E001A7C8200FFFFFF00FFFFFF00D3772500DC802E00DB7F
      2D00D5782500D1762500CC732400C7702300C26D2200C06C2200B6672000A85F
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF001C8EFF002697FF002496
      FF001C8FFF001C8DFF001C8AFA001C87F4001C84EE001B83ED001B7DE1001A75
      D2001A71CA001A71CA001960A900FFFFFF00FFFFFF0052A552005DAC5D005CAC
      5C0052A852004EA74E004BA54B0048A24800459F4500439E43003A9C3A002E98
      2E002994290029942900217B2100FFFFFF00FFFFFF002AC4CE0046D1DA0046D1
      DA0033CDD7002BCBD5002AC6D00029C0C90027B6BF0025B0B90024A8B000229E
      A60020979E0020979E001A7C8200FFFFFF00FFFFFF00D3772500DF8B4100DF8B
      4100DC802E00DA7B2600D5782500CE742400C46E2200BD6A2100B4662000AA60
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF001C8EFF003BA2FF003BA2
      FF002697FF001C92FF001C8FFF001C8BFC001C85F0001B81E9001B7CDF001B76
      D3001A71CA001A71CA001960A900FFFFFF00FFFFFF0052A552006BB56B006BB5
      6B005CAD5C0056AA560052A752004DA44D00469F4600429C4200389B38003098
      30002994290029942900217B2100FFFFFF00FFFFFF0032CCD6005AD6DE0053D5
      DD0038CFD80032CCD60030CCD6002BC9D30028BDC60026B5BE0025AEB70024A8
      B000219DA500219DA5001A7C8200FFFFFF00FFFFFF00DB7F2D00E2985600E194
      4F00DC833400DB7F2D00DB7E2B00D87A2600CB722300C26D2200BB6A2100B466
      2000A85F1E00A85F1E00854B1700FFFFFF00FFFFFF002496FF0052AEFF004BAA
      FF002C9AFF002496FF002295FF001C91FF001C89F8001C84EE001B80E7001B7C
      DF001A75D2001A75D2001960A900FFFFFF00FFFFFF005AAD5A007BBD7B0073BD
      730063AD63005AAD5A005AAB5A0055A855004CA24C00449F44003E9E3E00379C
      37003194310031943100217B2100FFFFFF00FFFFFF0046D1DA006FDCE3005AD6
      DE0046D1DA003FD0D90038CFD80038CFD8002DCBD50029C3CD0028BBC40026B5
      BE0024AAB200219DA5001A7C8200FFFFFF00FFFFFF00DF8B4100E6A56C00E298
      5600DF8B4100DE873A00DC833400DC833400DA7C2800D1762500C9712300C26D
      2200B6672000A85F1E00854B1700FFFFFF00FFFFFF003BA2FF006CBBFF0052AE
      FF003BA2FF00349EFF002C9AFF002C9AFF001E93FF001C8DFF001C88F6001C84
      EE001B7DE1001A75D2001960A900FFFFFF00FFFFFF006BB56B008CC68C007BBD
      7B006BB56B0063B5630063AD630063AD630059A959004FA64F0047A5470041A2
      4100399C390031943100217B2100FFFFFF00FFFFFF0053D5DD0083E1E7006FDC
      E3005AD6DE0053D5DD0046D1DA003FD0D90038CFD80032CCD6002BCBD50028BF
      C80027B8C100219DA500186F7400FFFFFF00FFFFFF00E1944F00EAB28000E6A5
      6C00E2985600E1944F00DF8B4100DE873A00DC833400DB7F2D00DA7B2600CC73
      2400C56F2300A85F1E0077431500FFFFFF00FFFFFF004BAAFF0083C7FF006CBB
      FF0052AEFF004BAAFF003BA2FF00349EFF002C9AFF002496FF001C92FF001C8A
      FA001C86F2001A75D20018589A00FFFFFF00FFFFFF0073BD73009CCE9C008CC6
      8C007BBD7B0073BD73006BB56B0063B5630063AD63005AAD5A0052AD52004AA5
      4A0042A542003194310018731800FFFFFF00FFFFFF00A6EAEE0053D5DD003FD0
      D90032CCD6002AC4CE002AC4CE0028BFC80028BFC80027B8C10025B0B90024AA
      B200219DA5001D8A910069DAE100FFFFFF00FFFFFF00F0C8A400E1944F00DE87
      3A00DB7F2D00D3772500D3772500CC732400CC732400C56F2300BD6A2100B667
      2000A85F1E0094531A00E5A16500FFFFFF00FFFFFF00ABDCFF004BAAFF00349E
      FF002496FF001C8EFF001C8EFF001C8AFA001C8AFA001C86F2001B81E9001B7D
      E1001A75D2001A69BA0064B7FF00FFFFFF00FFFFFF00B5DEB50073BD730063B5
      63005AAD5A0052A5520052A552004AA54A004AA54A0042A54200429C4200399C
      390031943100218C21008CBD8C00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF800180018001FFFF000000000000
      FFFF000000000000F00F000000000000E00F000000000000E00F000000000000
      E00F000000000000E00F000000000000E00F000000000000E00F000000000000
      E00F000000000000E00F000000000000E00F000000000000E00F000000000000
      FFFF000000000000FFFF80018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180018001800100000000000000000000000000000000
      000000000000}
  end
  object cxGridPopupMenu5: TcxGridPopupMenu
    Grid = grdSortOrderRows
    PopupMenus = <>
    Left = 449
    Top = 733
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 635
    Top = 757
    object KalkyleraF111: TMenuItem
      Action = acCalcF11
    end
    object Spara1: TMenuItem
      Action = acSaveKorOrder
    end
    object ngra1: TMenuItem
      Action = acCancelChanges
    end
    object Kontroll1: TMenuItem
      Action = acControllSortingOrderRows
    end
    object Krorder2: TMenuItem
      Action = acPrintAOKorOrder
    end
    object StartainlsningmedskannerF101: TMenuItem
      Action = acStart
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 444
    Top = 909
  end
  object ColorDialog1: TColorDialog
    Left = 448
    Top = 677
  end
  object PopupMenu3: TPopupMenu
    Left = 56
    Top = 957
    object Skpaketattavregistrera1: TMenuItem
      Action = acSearchForPackageToUnReg
    end
    object Skapanyttpaket1: TMenuItem
      Action = acCreateNewPackageForMissingPkgNo
    end
  end
  object pmUsedPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = False
    Left = 626
    Top = 645
    PixelsPerInch = 96
  end
  object dsRawProdukt: TDataSource
    DataSet = dmsSortOrder.mtRawMtrl
    Left = 872
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = dmsSortOrder.FDCopyTo
    Left = 946
    Top = 245
  end
  object pmSortOrderRows: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 634
    Top = 709
    PixelsPerInch = 96
  end
  object pmRawMtrl: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end>
    UseOwnFont = False
    Left = 626
    Top = 596
    PixelsPerInch = 96
  end
  object cxGridPopupMenu6: TcxGridPopupMenu
    Grid = grdWorkOrder
    PopupMenus = <>
    Left = 449
    Top = 790
  end
  object pmMergeBookings: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end>
    UseOwnFont = False
    Left = 641
    Top = 812
    PixelsPerInch = 96
  end
  object pmProfil: TPopupMenu
    Left = 888
    Top = 40
    object Spapanyprofil1: TMenuItem
      Action = acAdminUserProfiles
    end
    object Sparaprofil1: TMenuItem
      Action = acSaveUserProfile
    end
  end
  object pmOthers: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton13'
      end
      item
        Visible = True
        ItemName = 'lbPrint'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarLargeButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton11'
      end>
    UseOwnFont = False
    Left = 177
    Top = 970
    PixelsPerInch = 96
  end
  object ds_AvRegPkgs: TDataSource
    Left = 778
    Top = 649
  end
  object sq_GetPkgData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS Produkt,'
      '        PN.PackageNo'#9#9'                AS Paketnr,'
      '        PN.PackageTypeNo'#9'              AS PackageTypeNo,'
      '        PN.SupplierCode'#9'                AS Prefix,'
      '        PT.Totalm3Actual                AS AM3,'
      '        PT.TotalNoOfPieces              AS Styck,'
      '        PT.Totalm3Nominal'#9#9'            AS NM3,'
      #9'      PT.TotalSQMofActualWidth'#9'      AS M2,'
      #9'      PT.TotalLinealMeterActualLength AS AM1,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        RTRIM(Cy.CityName) + '#39'/'#39' + RTRIM(LIP.LogicalInventoryNam' +
        'e) AS Lager,'
      '        PTL.PcsPerLength                AS StyckPerLangd,'
      '        C.ClientName                    AS '#196'gare,'
      '        PIP.OwnerNo                     AS OwnerNo,'
      '        PN.LogicalInventoryPointNo      AS LIPNo,'
      '        PN.SupplierNo                   AS SupplierNo,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status,'
      '        PG.SurfacingNo,'
      '        PT.LengthSpecNo,'
      '        IsNull(sosp.PackageNo,0)        AS PkgNoAttAvReg,'
      '        IsNull(sosp.SupplierCode,0)     AS PrefixAttAvReg,'
      '        IsNull(sosp.PackageTypeNo,0)    AS PackageTypeNoAttAvReg'
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        Left Outer Join dbo.SortingOrderSplitPkgs sosp on sosp.S' +
        'ortingOrderNo = :SortingOrderNo'
      '        and sosp.NewPackageNo = pn.PackageNo'
      '        and sosp.NewSupplierCode = pn.SupplierCode'
      ''
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode')
    Left = 96
    Top = 381
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
    object sq_GetPkgDataPaketnr: TIntegerField
      FieldName = 'Paketnr'
      Origin = 'Paketnr'
      Required = True
    end
    object sq_GetPkgDataPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgDataProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object sq_GetPkgDataStyckPerLangd: TStringField
      FieldName = 'StyckPerLangd'
      Origin = 'StyckPerLangd'
      Size = 255
    end
    object sq_GetPkgDataAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_GetPkgDataStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
    end
    object sq_GetPkgDataAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
    end
    object sq_GetPkgDataNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sq_GetPkgDataStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_GetPkgDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_GetPkgDataLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object sq_GetPkgDataM2: TFloatField
      FieldName = 'M2'
      Origin = 'M2'
    end
    object sq_GetPkgDatagare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object sq_GetPkgDataOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_GetPkgDataLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object sq_GetPkgDataSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
    end
    object sq_GetPkgDataPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
    end
    object sq_GetPkgDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_GetPkgDataPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object sq_GetPkgDataLengthSpecNo: TIntegerField
      FieldName = 'LengthSpecNo'
      Origin = 'LengthSpecNo'
    end
    object sq_GetPkgDataPkgNoAttAvReg: TIntegerField
      FieldName = 'PkgNoAttAvReg'
      Origin = 'PkgNoAttAvReg'
    end
    object sq_GetPkgDataPrefixAttAvReg: TStringField
      FieldName = 'PrefixAttAvReg'
      Origin = 'PrefixAttAvReg'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgDataPackageTypeNoAttAvReg: TIntegerField
      FieldName = 'PackageTypeNoAttAvReg'
      Origin = 'PackageTypeNoAttAvReg'
      ReadOnly = True
      Required = True
    end
  end
  object siLangLinked_frmSortOrder: TsiLangLinked
    Version = '7.8.4'
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
    Left = 512
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0053006F00720074004F00720064006500
      720001004100720062006500740073006F007200640065007200730001000100
      57006F0072006B0020004F0072006400650072007300010001000D000A006100
      63005F0063007500730074006F006D0069007A0065004C00610079006F007500
      7400010043007500730074006F006D0069007A00650020006C00610079006F00
      7500740001000100010001000D000A00610063005F0045007800690074000100
      53007400E4006E00670020004600310032000100010043006C006F0073006500
      2000460031003200010001000D000A00610063005F0052006500660072006500
      7300680001005500700070006400610074006500720061002000760065006300
      6B006F0076007900200046003600010001005500700064006100740065002000
      7700650065006B0020007600690065007700200046003600010001000D000A00
      610063004100640064004C00610079006F007500740052006F00770001004C00
      E400670067002000740069006C006C0001000100410064006400010001000D00
      0A00610063004100640064005000490001004C00E40067006700200074006900
      6C006C0001000100410064006400010001000D000A0061006300410064006400
      50006B00670054006F00520075006E0001004B006F00700070006C0061002000
      7200E50076006100720061000100010043006F006E006E006500630074002000
      7200610077006D006100740065007200690061006C00010001000D000A006100
      6300410064006400500072006F00640075006B00740054006F0041004F005200
      6F00770001004C00E400670067002000740069006C006C0020006600E4007200
      6400690067007600610072007500700072006F00640075006B00740001000100
      4100640064002000660069006E0069007300680065006400200067006F006F00
      640073002000700072006F006400750063007400010001000D000A0061006300
      4100640064005200610077004D00740072006C0001004C00E400670067002000
      740069006C006C0020007200E500760061007200610001000100410064006400
      200072006100770020006D006100740065007200690061006C00010001000D00
      0A00610063004100640064005200610077004D00740072006C00550073006500
      6400500072006500760069006F00750073006C00790001005600E4006C006A00
      20007200E500760061007200610001000100530065006C006500630074002000
      72006100770020006D006100740065007200690061006C00010001000D000A00
      6100630041006400640053007400640053007000650063004C00610079006F00
      7500740001004C00E400670067002000740069006C006C002000730074006100
      6E0064006100720064000100010041006400640020005300740061006E006400
      610072006400010001000D000A0061006300410064006400550072006C006100
      67006700460072006F006D00440072006F0070004C0069007300740001005600
      E4006C006A002000750072006C00E4006700670001000100530065006C006500
      630074002000700072006F006400750063007400010001000D000A0061006300
      410064006D0069006E005500730065007200500072006F00660069006C006500
      73000100410064006D0069006E00690073007400720065007200610020007000
      72006F00660069006C006500720001000100410064006D0069006E0069007300
      74006500720069006E0067002000700072006F00660069006C00650073000100
      01000D000A006100630041006E00740061006C00530074006F00700070005000
      650072004F007200730061006B0001005600690073006100200061006E007400
      61006C002000730074006F007000700020002F0020006F007200730061006B00
      01000100530068006F00770020006E0075006D0062006500720020006F006600
      2000730074006F00700020002F00200063006100750073006500010001000D00
      0A006100630041004F0052006500730075006C00740001005200650073007500
      6C007400610074000100010052006500730075006C0074007300010001000D00
      0A00610063004100700070006C00790055007000640061007400650073000100
      53007000610072006100010001005300610076006500010001000D000A006100
      6300410076007200650067006900730074007200650072006100500061006B00
      6500740001004100760072006500670069007300740072006500720061000100
      010055006E0072006500670069007300740065007200010001000D000A006100
      6300410076005200650067006900730074007200650072006100500061006B00
      650074004900420075006600660065007200740065006E000100410076007200
      650067006900730074007200650072006100200069006E006C00E40073007400
      61002000700061006B00650074000100010055006E0072006500670069007300
      74006500720020006C006F00610064006500640020007000610063006B006100
      6700650001004100760072006500670069007300740072006500720061002000
      69006E006C00E4007300740061002000700061006C006C006100720001000D00
      0A006100630041007600720065006700500061006B006500740046006F007200
      6D0075006C006100720001004100760072006500670069007300740072006500
      720061000100010055006E007200650067006900730074006500720001000100
      0D000A00610063004100760073006C007500740061000100500072006F006400
      75006B00740069006F006E0020006B006C006100720001000100500072006F00
      640075006300740069006F006E002000660069006E0069007300680065006400
      010001000D000A006100630042006F006B006100520061007600610072006100
      010042006F006B00610020007200E50076006100720061000100010042006F00
      6F006B0020007200610077006D006100740065007200690061006C0001000100
      0D000A0061006300430061006C00630041006C006C0001004B0061006C006B00
      2E00200061006C006C00610001000100430061006C0063002E00200061006C00
      6C00010001000D000A0061006300430061006C00630046003100310001006100
      6300430061006C00630046003100310001000100010001000D000A0061006300
      430061006C0063004B006100730073006100740069006F006E0001004B006100
      6C006B0079006C0065007200610001000100430061006C00630075006C006100
      74006500010001000D000A0061006300430061006C0063005200650073007500
      6C00740001004B0061006C006B002E007200650073002E000100010043006100
      6C0063002E0020007200650073002E00010001000D000A006100630043006100
      6C0063005300740061007200740053006C00750074006F006300680050007200
      6F00640054006900640001004B0061006C006B00200073007400610072007400
      2C00200073006C007500740074006900640001000100430061006C0063002E00
      20007300740061007200740020002D00660069006E0069007300680020007400
      69006D006500010001000D000A0061006300430061006C00630075006C006100
      74006500500072006F00640075006300740069006F006E007300540069006D00
      650001003E0001000100010001000D000A0061006300430061006E0063006500
      6C004300680061006E006700650073000100C5006E0067007200610020004600
      34000100010055006E0064006F00200046003400010001000D000A0061006300
      430061006E00630065006C004400650072006500670069007300740072006100
      740069006F006E000100C5006E006700720061000100010055006E0064006F00
      010001000D000A0061006300430061006E00630065006C0050006B0067007300
      49006E0042007500660066006500720074000100C5006E006700720061002000
      69006E006C00E40073006E0069006E0067002000610076002000700061006B00
      650074000100010055006E0064006F0020006C006F0064006500640020007000
      610063006B006100670065000100C5006E00670072006100200069006E006C00
      E40073006E0069006E0067002000610076002000700061006C006C0001000D00
      0A00610063004300680061006E00670065004100760072006F0070004C006100
      79006F007500740001004600E4006C0074007600E4006C006A00610072006500
      6E00010001004600690065006C00640020006500780070006C006F0072006500
      7200010001000D000A00610063004300680061006E006700650052006F007700
      5400610062006C0065000100C4006E0064007200610020007400610062006500
      6C006C00610079006F0075007400010001004300680061006E00670065002000
      7400610062006C00650020006C00610079006F0075007400010001000D000A00
      6100630043006F006C006C00610070007300650041006C006C0052006F007700
      730001004B006F006C006C006100700073006100200061006C006C0061002000
      720061006400650072000100010043006F006C006C0061007000730065002000
      61006C006C00200072006F0077007300010001000D000A006100630043006F00
      6E006600690072006D0041004F00010047006F0064006B00E4006E006E000100
      010041007000700072006F0076006500010001000D000A006100630043006F00
      6E00740072006F006C006C0053006F007200740069006E0067004F0072006400
      6500720052006F007700730001004B006F006E00740072006F006C006C002000
      4600310030000100010043006F006E00740072006F006C002000460031003000
      010001000D000A006100630043006F00700079004C004F0049006E0074006500
      72006E0061006C004E006F007400650054006F0048007900760065006C004900
      6E0066006F0001004B006F0070006900650072006100200069006E0074006500
      72006E0020006E006F0074006500720069006E0067000100010043006F007000
      7900200074006F00200069006E007400650072006E0061006C0020006E006F00
      74006500010001000D000A006100630043006F00700079005000490074006F00
      4D00610072006B006500640052006F007700730001004B006F00700069006500
      720061002000740069006C006C0020006D00610072006B006500720061006400
      65002000720061006400650072000100010043006F0070007900200074006F00
      2000730065006C006500630074006500640020006C0069006E00650073000100
      01000D000A006100630043006F007000790053006F007200740069006E006700
      4F00720064006500720052006F00770001004B006F0070006900650072006100
      20007200610064000100010043006F007000790020006C0069006E0065000100
      01000D000A00610063004300720065006100740065004E006500770050006100
      63006B0061006700650046006F0072004D0069007300730069006E0067005000
      6B0067004E006F00010053006B006100700061002000700061006B0065007400
      01000100430072006500610074006500200070006B006700010053006B006100
      700061002000700061006C006C0001000D000A00610063004300720065006100
      740065005700650065006B005300630068006500640075006C00650001005600
      650063006B006F00200073006300680065006D00610001000100570065006500
      6B0020005300630068006500640075006C006500010001000D000A0061006300
      440065006C006500740065004C00610079006F00750074000100540061002000
      62006F007200740001000100440065006C00650074006500010001000D000A00
      61006300440065006C006500740065005200610077004D00740072006C000100
      54006100200062006F007200740001000100440065006C006500740065000100
      01000D000A0061006300440065006C0065007400650053006F00720074004F00
      7200640065007200010054006100200062006F00720074000100010044006500
      6C00650074006500010001000D000A0061006300440065006C00650074006500
      550073006500640050006B00670052006F007700010054006100200062006F00
      72007400200072006100640001000100440065006C0065007400650020006C00
      69006E006500010001000D000A006100630045004D00610069006C0041004F00
      52006500730075006C00740001004D00610069006C0061002000720065007300
      75006C00740061007400010001004D00610069006C0020007200650073007500
      6C0074007300010001000D000A006100630045007800700061006E0064005200
      6F0077007300010045007800700061006E006400650072006100200061006C00
      6C0061002000720061006400650072000100010045007800700061006E006400
      200061006C006C00200072006F0077007300010001000D000A00610063004500
      78007400720061006300740041006E0064004D00650072006700650042006F00
      6F006B0069006E00670052006F00770073000100610063004500780074007200
      61006300740041006E0064004D00650072006700650042006F006F006B006900
      6E00670052006F007700730001000100010001000D000A00610063004C006F00
      61006400530065006C006500630074006500640050006B006700730001004C00
      61007300740020007500740001000100010001000D000A00610063004D006500
      72006700650042006F006F006B0069006E00670073000100530061006D006D00
      61006E0066006F0067006100200062006F006B006E0069006E00670061007200
      010001004A006F0069006E00200062006F006F006B0069006E00670001000100
      0D000A00610063004D006F0076006500550073006500640050006B0067007300
      54006F004F00740068006500720053006F00720074004F007200640065007200
      010046006C00790074007400610020007200E500760061007200750070006100
      6B00650074002000740069006C006C00200061006E006E0061006E0020006B00
      F60072006F007200640065007200010001004D006F0076006500200070006100
      63006B006100670065007300200074006F002000640069006600660072006500
      6E00740020006F007200640065007200010001000D000A00610063004E006500
      770041004F0001004E00790020006B00F60072006F0072006400650072002000
      46003200010001004E00650077002000720075006E0020006F00720064006500
      7200200046003200010001000D000A00610063004E0065007700440072007900
      4B0069006C006E0043006800610072006700650001004E007900200074006F00
      72006B007300610074007300010001004E006500770020006B0069006C006E00
      2000730065007400010001000D000A00610063004E0065007700460072006F00
      6D00540065006D0070006C0061007400650001004E00790020006B00F6007200
      6F007200640065007200200066007200E5006E0020006D0061006C006C000100
      01004E0065007700200077006F0072006B006F00720064006500720020006600
      72006F006D002000740065006D0070006C00610074006500010001000D000A00
      610063004F00700065006E0041006E00640043006F006E006600690072006D00
      4F007200640065007200010047006F0064006B00E4006E006E00010001004100
      7000700072006F0076006500010001000D000A00610063004F00700065006E00
      41004F0049006E00470075006900640065000100D600700070006E0061002000
      6900200067007500690064006500010001004F00700065006E00200069006E00
      200067007500690064006500010001000D000A00610063004F00700065006E00
      42006F006F006B0069006E0067000100D600700070006E006100200062006F00
      6B006E0069006E006700010001004F00700065006E00200062006F006F006B00
      69006E006700010001000D000A00610063004F00700065006E0057006F007200
      6B004F007200640065007200010045006400690074002000460039000100D600
      700070006E00610020004600390001000100D600700070006E00610020004600
      390001000D000A00610063004F0076006500720076006900650077000100D600
      760065007200730069006B007400010001004F00760065007200760069006500
      7700010001000D000A00610063005000690063006B0050006B00670054006F00
      410064006400410073004E0065007700520065006700730001004B006F007000
      70006C0061002000700061006B00650074000100010043006F006E006E006500
      6300740020007000610063006B00610067006500730001004B006F0070007000
      6C0061002000700061006C006C006100720001000D000A006100630050006900
      63006B0050006B00670054006F0041007600720065006700010050006C006F00
      63006B0061002000700061006B00650074002000610074007400200061007600
      7200650067006900730074007200650072006100010001005000690063006B00
      20007000610063006B0067006100670065007300200074006F00200075006E00
      72006500670069007300740065007200010050006C006F0063006B0061002000
      700061006C006C00610072002000610074007400200061007600720065006700
      690073007400720065007200610001000D000A00610063005000720065004300
      61006C00630001004600F60072006B0061006C006B0079006C00010001005000
      720065006C0069006D0069006E006100720079002000630061006C0063007500
      6C006100740069006F006E00010001000D000A00610063005000720069006E00
      740041004F00010053006B007200690076002000750074000100010050007200
      69006E007400010001000D000A00610063005000720069006E00740041004F00
      4B006F0072004F00720064006500720001004B00F60072006F00720064006500
      720001000100520075006E0020006F007200640065007200010001000D000A00
      610063005000720069006E00740041004F0052006500730075006C0074000100
      52006500730075006C007400610074000100010052006500730075006C007400
      7300010001000D000A00610063005000720069006E0074004100760052006500
      6700010053006B00720069007600200075007400010001005000720069006E00
      7400010001000D000A00610063005000720069006E0074005000610052006500
      6700010053006B00720069007600200075007400010001005000720069006E00
      7400010001000D000A0061006300500072006F00640055007400660061006C00
      6C00010055007400660061006C006C0073007300740061007400690073007400
      69006B00010001004F007500740063006F006D00650020007300740061007400
      690073007400690063007300010001000D000A0061006300500072006F006400
      55007400660061006C006C00420079005200610077004D00740072006C000100
      55007400660061006C006C007300730074006100740069007300740069006B00
      010001004F007500740063006F006D0065002000730074006100740069007300
      7400690063007300010001000D000A0061006300520065006600720065007300
      6800410076005200650067000100550070007000640061007400650072006100
      01000100550070006400610074006500010001000D000A006100630052006500
      660072006500730068005000610052006500670050006B006700010055007000
      7000640061007400650072006100010001005500700064006100740065000100
      01000D000A0061006300520065006700690073007400650072004D0075006C00
      7400690070006C00650050006B00670073000100520065006700690073007400
      7200650072006100200070006B00740001000100520065006700690073007400
      65007200200070006B0067000100520065006700690073007400720065007200
      61002000700061006C006C0001000D000A0061006300520065006D006F007600
      650041004F0052006F007700010054006100200062006F007200740001000100
      440065006C00650074006500010001000D000A0061006300520065006D006F00
      7600650050006B006700460072006F006D00530079007300740065006D000100
      C5006E006700720061000100010055006E0064006F00010001000D000A006100
      630052006500730074006F0072006500440065006600610075006C0074004C00
      610079006F007500740001004800E4006D007400610020007300740061006E00
      640061007200640020006C00610079006F007500740001000100470065007400
      20007300740061006E00640061007200640020004C00610079006F0075007400
      010001000D000A006100630052006500730074006F0072006500530076006100
      720064004B00610070004C00610079006F007500740001004800E4006D007400
      6100200053007600E400720064006B00610070006C00610079006F0075007400
      010001004700650074002000730077006F007200640073006100770020004C00
      610079006F0075007400010001000D000A006100630053006100760065004100
      7300440065006100660075006C0074004B006F0072004F007200640065007200
      560061006C00750065007300010053007000610072006100200069006E007300
      7400E4006C006C006E0069006E00670061007200010001005300610076006500
      2000730065007400740069006E0067007300010001000D000A00610063005300
      61007600650041007300540065006D0070006C00610074006500010053007000
      61007200610020006B00F60072006F007200640065007200200073006F006D00
      20006D0061006C006C00010001005300610076006500200077006F0072006B00
      6F0072006400650072002000610073002000740065006D0070006C0061007400
      6500010001000D000A006100630053006100760065004100760072006F007000
      4C00610079006F00750074000100530070006100720061002000740061006200
      65006C006C00610079006F007500740001000100530061007600650020007400
      610062006C0065006C00610079006F0075007400010001000D000A0061006300
      5300610076006500440065006600610075006C0074004C00610079006F007500
      7400010053007000610072006100200073006F006D0020007300740061006E00
      64006100720064006C00610079006F0075007400010001005300610076006500
      20006100730020007300740061006E0064006100720064006C00610079006F00
      75007400010001000D000A006100630053006100760065004B006F0072004F00
      7200640065007200010053007000610072006100200046003300010001005300
      610076006500200046003300010001000D000A00610063005300610076006500
      52006F0077004C00610079006F00750074000100530070006100720061002000
      6C00610079006F007500740001000100530061007600650020006C0061007900
      6F0075007400010001000D000A00610063005300610076006500530076006100
      720064004B00610070004C00610079006F007500740001005300700061007200
      6100200073007600E400720064006B00610070006C00610079006F0075007400
      0100010053006100760065002000730077006F00720064007300610077002000
      4C00610079006F0075007400010001000D000A00610063005300610076006500
      5500730065007200500072006F00660069006C00650001005300700061007200
      6100200074006100620065006C006C0069006E0073007400E4006C006C006E00
      69006E006700610072002000740069006C006C002000700072006F0066006900
      6C0001000100530061007600650020007400610062006C006500200073006500
      7400740069006E0067007300200074006F002000700072006F00660069006C00
      6500010001000D000A0061006300530061007600650055007300650072005000
      72006F0070007300010053007000610072006100200069006E0073007400E400
      6C006C002E000100010053006100760065002000730065007400740069006E00
      67007300010001000D000A006100630053006500610072006300680046006F00
      72005000610063006B0061006700650054006F0055006E005200650067000100
      5300F6006B002000700061006B00650074002000610074007400200061007600
      720065006700690073007400720065007200610001000100460069006E006400
      200070006B0067002E00200074006F00200075006E0072006500670069007300
      74006500720001005300F6006B002000700061006C006C002000610074007400
      200061007600720065006700690073007400720065007200610001000D000A00
      610063005300650074004D00610072006B00650064004F007200640065007200
      730054006F004F0074006800650072005700650065006B000100C4006E006400
      7200610020007300740061007200740074006900640020006600F60072002000
      6D00610072006B006500720061006400650020006B00F60072006F0072006400
      650072007300010001004300680061006E006700650020007300740061007200
      74002000740069006D006500200066006F00720020006D00610072006B006500
      6400200077006F0072006B006F0072006400650072007300010001000D000A00
      610063005300650074004D00610072006B0065006400520075006E004F007200
      640065007200730054006F00430075007200720065006E007400570065006500
      6B000100C4006E00640072006100200073007400610072007400740069006400
      65006E002000740069006C006C00200061006B007400750065006C006C002000
      7600650063006B00610020006600F600720020006D00610072006B0065007200
      61006400650020006B00F60072006F0072006400650072007300010001004300
      680061006E006700650020007300740061007200740069006D00650020007400
      6F002000630075007200720065006E00740020007700650065006B0020006600
      6F00720020006D00610072006B0065006400200077006F0072006B006F007200
      6400650072007300010001000D000A00610063005300650074004E006F007200
      6D0061006C00540065007800740001004E006F0072006D0061006C0001000100
      4E006F0072006D0061006C00010001000D000A00610063005300650074004E00
      6F0072006D0061006C0054006500780074004600610072006400690067007600
      61007200610001004E006F0072006D0061006C00010001004E006F0072006D00
      61006C00010001000D000A00610063005300650074004E006F0072006D006100
      6C00540065007800740048007900760065006C0049006E0066006F0001004E00
      6F0072006D0061006C00010001004E006F0072006D0061006C00010001000D00
      0A00610063005300650074004E006F0072006D0061006C005400650078007400
      52006100760061007200610001004E006F0072006D0061006C00010001004E00
      6F0072006D0061006C00010001000D000A006100630053006500740053007400
      61007400750073004B006C00610072004100740074004B006F00720061000100
      41006B0074006900760065007200610001000100410063007400690076006100
      74006500010001000D000A006100630053006500740053007400610074007500
      73004F0075007400720065006400640001004F00750074007200650064006400
      0100010049006E0065006C00610062006F007200610074006500010001000D00
      0A00610063005300650074005300740061007400750073005000610075007300
      650001005000610075007300650001000100010001000D000A00610063005300
      6500740054006F005000720065006C0069006D0069006E006100720079000100
      5000720065006C0069006D0069006E00E4007200010001005000720065006C00
      69006D0069006E00610072007900010001000D000A0061006300530068006F00
      7700500072006F006400540069006D0065005300650067006D0065006E007400
      73000100560069007300610020007400690064002F007300650067006D006500
      6E00740001000100530068006F0077002000740069006D0065002F0073006500
      67006D0065006E007400010001000D000A0061006300530068006F0077005200
      610077004D007400720069006C00500072006F00640075006300740049006E00
      49006E00760065006E0074006F00720079004C00690073007400010056006900
      730061002000700061006B00650074002000690020006C006100670065007200
      6C00690073007400610001000100530068006F007700200070006B0067002E00
      200069006E00200069006E00760065006E0074006F007200790020006C006900
      73007400010056006900730061002000700061006C006C006100720020006900
      20006C0061006700650072006C00690073007400610001000D000A0061006300
      53006B00720069007600550074004B00610070004E006F007400610001005300
      6B0072006900760020007500740020006B00F60072006F007200640065007200
      20006B0061007000010001005000720069006E007400200077006F0072006B00
      6F0072006400650072002000730077006F007200640073006100770001000100
      0D000A0061006300530070006C006900740050006B0067000100440065006C00
      61002000700061006B0065007400010001004400690076006900640065002000
      7000610063006B006100670065000100440065006C0061002000700061006C00
      6C0001000D000A00610063005300740061007200740001005300740061007200
      74006100200069006E006C00E40073006E0069006E00670020006D0065006400
      200073006B0061006E006E006500720020004600310030000100010053007400
      61007200740020007200650063006F007200640069006E006700200077006900
      740068002000610020005300630061006E006E0065007200010001000D000A00
      610063005300740061007200740053006F00720074004F007200640065007200
      010041006B007400690076000100010041006300740069007600650001000100
      0D000A0061006300530074006F00700070005400690064005000650072004F00
      7200730061006B00010056006900730061002000730074006F00700070007400
      6900640020002F0020006F007200730061006B0001000100530068006F007700
      2000730074006F007000740069006D0065002F00630061007500730065000100
      01000D000A0041006B00740069007600310001004B006C006100720020006100
      7400740020006B00F60072006100010001005200650064007900200074006F00
      2000620065002000720075006E006E0065006400010001000D000A0063006200
      45006E00640050006B00670041006C006C006F00770065006400010053006C00
      75007400700061006B00650074000100010045006E00640070006B0067002E00
      010053006C0075007400700061006C006C0001000D000A006300620046004A00
      010053006B0061002000660069006E0067006500720073006B00610072007600
      610073000100010054006F002000620065002000660069006E00670065007200
      6A006F0069006E00740065006400010001000D000A00630062004B0044000100
      4B00440001000100010001000D000A00630062004D0061006E00750061006C00
      500072006F006400540069006D00650001004D0061006E00750065006C006C00
      2000740069006400010001004D0061006E00750061006C002000740069006D00
      6500010001000D000A00630062004D00430043006C006100730073004E006F00
      01004800790076006C0061007300200065006A00010001004E006F0074002000
      74006F00200062006500200070006C0061006E006E0065006400010001000D00
      0A00630062004D0069006E006900420075006E0064006C006500010042007500
      6E00740061007400010001004D0069006E0069002000620075006E0064006C00
      6500010001000D000A00630062005000610063006B0061006700650043007500
      74000100500061006B00650074006B00610070002000740069006C006C00E500
      740065006E000100010050006B006700200063007500740020004F004B000100
      01000D000A00630062005000720069006E0074005200610077004D0074007200
      6C005000610072007400010049006E006B006C00750064006500720061002000
      690020006B00F60072006F00720064006500720072006100700070006F007200
      740001000100010001000D000A0063006200530068006F00770041006C006C00
      01005600690073006100200061006C006C00610001000100530068006F007700
      200061006C006C00010001000D000A006300620053006800720069006E006B00
      5700720061007000010046006F006C0069006500720061007400010001004600
      6F0069006C0065006400010001000D000A0063006200530070006C0069007400
      4200650066006F00720065004800790076006C0069006E006700010044006500
      6C006100730020006600F6007200650020006800790076006C0069006E006700
      01000100010001000D000A006300620054006100720067006500740050007200
      6F00640075006300740001004800750076007500640076006100720061000100
      0100010001000D000A00630062005400610073006B0043006F006D0070006C00
      6500740065004600690065006C0064000100500072006F00640075006B007400
      69006F006E0020006B006C006100720001000100500072006F00640075006300
      740069006F006E002000660069006E0069007300680065006400010001000D00
      0A0063006200550072006C006100670067000100550072006C00E40067006700
      01000100010001000D000A006300620056006900730061004B006F0072007400
      530074006F00700070000100450078006B006C00750064006500720061002000
      6B006F0072007400730074006F007000700001000100010001000D000A006300
      620056006900730061004D0065006400640065006C0061006E00640065000100
      560069007300610020006D0065006400640065006C0061006E00640065000100
      0100010001000D000A0063006E00530068006F007700540065006D0070006C00
      61007400650073000100560069007300610020006D0061006C006C0061007200
      01000100010001000D000A006300780042007500740074006F006E0033003000
      01004800E4006D00740061002000700061006B0065007400200066007200E500
      6E0020004C004F002F0041006400640020004C004F0001000100010001000D00
      0A006300780042007500740074006F006E00350033000100500072006F006200
      6C0065006D006C00F600730061007200650001000100010001000D000A006300
      780042007500740074006F006E00360030000100C4006E006400720061002000
      700061006B0065007400010001004300680061006E0067006500200070006B00
      67000100C4006E006400720061002000700061006C006C0001000D000A006300
      780047007200690064004400420043006F006C0075006D006E00310001005000
      61006B00650074006E0072000100500061006B00650074004E00720001005000
      6B0067004E006F000100500061006C006C004E00720001000D000A0063007800
      47007200690064004400420043006F006C0075006D006E003100300001005200
      6500670069007300740072006500720061006400010001005200650067006900
      730074006500720065006400010001000D000A00630078004700720069006400
      4400420043006F006C0075006D006E0031003100010041004D00310001000100
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E0031003200010041004D00330001000100010001000D000A0063007800
      47007200690064004400420043006F006C0075006D006E003100330001004E00
      4D003300010001004E004D003300010001000D000A0063007800470072006900
      64004400420043006F006C0075006D006E003200010050007200650066006900
      780001000100500072006500660069007800010001000D000A00630078004700
      7200690064004400420043006F006C0075006D006E0033000100500072006F00
      640075006B00740001000100500072006F006400750063007400010001000D00
      0A006300780047007200690064004400420043006F006C0075006D006E003400
      0100530074002F006C00E4006E0067006400010053007400790063006B002F00
      6C00E4006E006700640001005000630073002F006C0065006E00670074006800
      010053007400790063006B002F006C00E4006E006700640001000D000A006300
      780047007200690064004400420043006F006C0075006D006E00350001004100
      4D00330001000100010001000D000A0063007800470072006900640044004200
      43006F006C0075006D006E00360001004E004D003300010001004E004D003300
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E003700010053007400790063006B000100010050006300730001005300
      E40063006B0001000D000A006300780047007200690064004400420043006F00
      6C0075006D006E00380001004D00460042004D00010001004D00460042004D00
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E003900010041004D00310001000100010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770031004100
      63007400750061006C004C0065006E006700740068004D004D00010041004C00
      4D004D0001000100010001000D000A0063007800470072006900640044004200
      5400610062006C00650056006900650077003100410063007400750061006C00
      54006800690063006B006E006500730073004D004D000100410054004D004D00
      01000100010001000D000A006300780047007200690064004400420054006100
      62006C00650056006900650077003100410063007400750061006C0057006900
      6400740068004D004D000100410042004D004D0001000100010001000D000A00
      630078004700720069006400440042005400610062006C006500560069006500
      7700310041004D003100010041004D00310001000100010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      310041004D003300010041004D00330001000100010001000D000A0063007800
      4700720069006400440042005400610062006C00650056006900650077003100
      410076007200550072006C006100670067005000630073000100530074002E00
      2000610076007200E4006B006E006100640065002000750072006C00E4006700
      670001000100010001000D000A00630078004700720069006400440042005400
      610062006C006500560069006500770031004E0042004D004D0001004E004200
      4D004D0001000100010001000D000A0063007800470072006900640044004200
      5400610062006C006500560069006500770031004E004C004D004D0001004E00
      4C004D004D00010001004E004C004D004D00010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770031004E00
      4D00330001004E004D003300010001004E004D003300010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      31004E0054004D004D0001004E0054004D004D0001000100010001000D000A00
      630078004700720069006400440042005400610062006C006500560069006500
      7700310050006300730041007400740041007600720061006B006E0061000100
      530074002E002000750072006C00E4006700670020006B007600610072002000
      6100740074002000610076007200E4006B006E00610001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      6500770031005000720069007300010050007200690073002F004E004D003300
      01000100500072006900630065002F004E004D003300010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      3100500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F0001000100010001000D000A00630078004700720069006400
      440042005400610062006C00650056006900650077003100500072006F006400
      75006B0074000100500072006F00640075006B00740001000100500072006F00
      6400750063007400010001000D000A0063007800470072006900640044004200
      5400610062006C0065005600690065007700310053006F007200740069006E00
      67004F0072006400650072004E006F00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770031005300
      6F007200740069006E0067004F00720064006500720052006F0077004E006F00
      01005200610064006E007200010001004C0069006E0065004E006F0001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      690065007700310053005400590043004B00010053007400790063006B000100
      010050006300730001005300E40063006B0001000D000A006300780047007200
      69006400440042005400610062006C0065005600690065007700310053007500
      720066006100630069006E0067004E006F000100530075007200660061006300
      69006E0067004E006F0001000100010001000D000A0063007800470072006900
      6400440042005400610062006C00650056006900650077003100550072006C00
      6100670067000100550072006C00E4006700670001000100010001000D000A00
      630078004700720069006400440042005400610062006C006500560069006500
      77003100560072006400650001005600E4007200640065000100010056006100
      6C0075006500010001000D000A00630078004700720069006400440042005400
      610062006C00650056006900650077003200410042004D004D00010041004200
      4D004D0001000100010001000D000A0063007800470072006900640044004200
      5400610062006C00650056006900650077003200410064006A00750073007400
      6500640041004D0031000100460044006A007500730074006500640041004D00
      310001000100010001000D000A00630078004700720069006400440042005400
      610062006C00650056006900650077003200410064006A007500730074006500
      640041004D0033000100460044006A007500730074006500640041004D003300
      01000100010001000D000A006300780047007200690064004400420054006100
      62006C00650056006900650077003200410064006A0075007300740065006400
      4E004D0033000100460044006A00750073007400650064004E004D0033000100
      0100010001000D000A0063007800470072006900640044004200540061006200
      6C00650056006900650077003200410064006A00750073007400650064005000
      690065006300650073000100460044006A007500730074006500640050006900
      650063006500730001000100010001000D000A00630078004700720069006400
      440042005400610062006C0065005600690065007700320041004C004D004D00
      010041004C004D004D0001000100010001000D000A0063007800470072006900
      6400440042005400610062006C0065005600690065007700320041004D003100
      010041004D00310001000100010001000D000A00630078004700720069006400
      440042005400610062006C0065005600690065007700320041004D0033000100
      41004D00330001000100010001000D000A006300780047007200690064004400
      42005400610062006C00650056006900650077003200410054004D004D000100
      410054004D004D0001000100010001000D000A00630078004700720069006400
      440042005400610062006C006500560069006500770032004500780070006500
      63007400650064005000630073004F007500740001004600F60072007600E400
      6E00740061007400200073007400790063006B00200075007400010001000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      560069006500770032004B006100700053006E0069007400740001004B006100
      700073006E0069007400740001000100430075007400740069006E0067002000
      70006F0073006900740069006F006E007300010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770032004B00
      61007300730041004D00310001004B0061007300730041004D00310001000100
      010001000D000A00630078004700720069006400440042005400610062006C00
      6500560069006500770032004B0061007300730041004D00330001004B006100
      7300730041004D00330001000100010001000D000A0063007800470072006900
      6400440042005400610062006C006500560069006500770032004B0061007300
      730050006300730001004B006100730073005000630073000100010001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      69006500770032004C00610067006500720001004C0061006700650072000100
      0100530074006F0063006B00010001000D000A00630078004700720069006400
      440042005400610062006C006500560069006500770032004C0061006D006500
      6C006C006500720001004C0061006D0065006C006C0065007200010001000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      560069006500770032004E0042004D004D0001004E0042004D004D0001000100
      010001000D000A00630078004700720069006400440042005400610062006C00
      6500560069006500770032004E004C004D004D0001004E004C004D004D000100
      01004E004C004D004D00010001000D000A006300780047007200690064004400
      42005400610062006C006500560069006500770032004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A0063007800470072006900
      6400440042005400610062006C006500560069006500770032004E0054004D00
      4D0001004E0054004D004D0001000100010001000D000A006300780047007200
      69006400440042005400610062006C006500560069006500770032004F007000
      650072006100740069006F006E0053007400610074007500730001004F007000
      650072006100740069006F006E00530074006100740075007300010001000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      56006900650077003200500061006B00650074004E0072000100500061006B00
      650074004E0072000100010050006B0067004E006F000100500061006C006C00
      6E00720001000D000A0063007800470072006900640044004200540061006200
      6C00650056006900650077003200500065007200630065006E00740041006400
      6A005000630073000100500065007200630065006E007400410064006A005000
      6300730001000100010001000D000A0063007800470072006900640044004200
      5400610062006C00650056006900650077003200500072006500660069007800
      0100500072006500660069007800010001005000720065006600690078000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      56006900650077003200500072006900630065005000650072004E004D003300
      010050007200690073000100010050007200690063006500010001000D000A00
      630078004700720069006400440042005400610062006C006500560069006500
      77003200500072006F00640075006300740044006900730070006C0061007900
      4E0061006D0065000100500072006F00640075006B0074000100010050007200
      6F006400750063007400010001000D000A006300780047007200690064004400
      42005400610062006C00650056006900650077003200500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      010001000D000A00630078004700720069006400440042005400610062006C00
      650056006900650077003200500072006F006400750063007400560061006C00
      7500650001005600E40072006400650001000100560061006C00750065000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      56006900650077003200500072006F00640075006B0074000100500072006F00
      640075006B00740001000100500072006F006400750063007400010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      6500770032005200610077004D00740072006C004E006F000100520061007700
      4D00740072006C004E006F0001000100010001000D000A006300780047007200
      69006400440042005400610062006C0065005600690065007700320052006500
      6700690073007400720065007200610064000100520065006700690073007400
      7200650072006100640001000100520065006700690073007400650072006500
      6400010001000D000A0063007800470072006900640044004200540061006200
      6C00650056006900650077003200530069007A00650050006500720063006500
      6E0074004F00660054006F00740061006C000100530069007A00650050006500
      7200630065006E0074004F00660054006F00740061006C000100010001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      690065007700320053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A00630078004700720069006400440042005400
      610062006C006500560069006500770032005300740061007400750073000100
      5300740061007400750073000100010053007400610074007500730001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      690065007700320053005400590043004B00010053007400790063006B000100
      010050006300730001005300E40063006B0001000D000A006300780047007200
      69006400440042005400610062006C0065005600690065007700320053007400
      790063006B005000650072004C0061006E006700640001005300740079006300
      6B005000650072004C0061006E006700640001000100010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      320054006F00740061006C00740053007400790063006B00010054006F007400
      61006C00740053007400790063006B0001000100010001000D000A0063007800
      4700720069006400440042005400610062006C00650056006900650077003200
      550072006C00610067006700500063007300010053007400790063006B002000
      750072006C00E4006700670001000100010001000D000A006300780047007200
      690064005400610062006C00650056006900650077005300740079006C006500
      5300680065006500740031000100630078004700720069006400540061006200
      6C00650056006900650077005300740079006C00650053006800650065007400
      310001000100010001000D000A00630078004C006100620065006C0031003000
      0100530074002F0050006B0074003A0001000100010001000D000A0063007800
      4C006100620065006C0031003100010050006C0061006E002E0041004D003300
      3A0001000100010001000D000A00630078004C006100620065006C0031003200
      01005000720065006600690078003A0001005000720065006600690078000100
      500072006500660069007800010050007200650066006900780001000D000A00
      630078004C006100620065006C00310033000100500061006B00650074003A00
      0100010050006B0067003A000100500061006C006C00610072003A0001000D00
      0A00630078004C006100620065006C0031003400010050007200690073003A00
      0100500072006900730001005000720069006300650001005000720069007300
      01000D000A00630078004C006100620065006C00310035000100500072006900
      730065006E006800650074003A000100500072006900730065006E0068006500
      7400010050007200690063006500200075006E00690074000100500072006900
      730065006E0068006500740001000D000A00630078004C006100620065006C00
      31003600010050007200690073006C0069007300740061003A00010050007200
      690073006C0069007300740061000100500072006900630065006C0069007300
      7400010050007200690073006C00690073007400610001000D000A0063007800
      4C006100620065006C003100370001005000720069006F003A00010001000100
      01000D000A00630078004C006100620065006C003100380001004C004F004E00
      52003A0001000100010001000D000A00630078004C006100620065006C003100
      390001004B0075006E0064003A0001004B0075006E0064000100430075007300
      74006F006D006500720001004B0075006E00640001000D000A00630078004C00
      6100620065006C003200300001004D00E40072006B006E0069006E0067003A00
      010001004D00610072006B003A00010001000D000A00630078004C0061006200
      65006C003200310001004C006100670065007200670072007500700070003A00
      01004C006100670065007200670072007500700070000100530074006F006300
      6B002000670072006F007500700001004C006100670065007200670072007500
      7000700001000D000A00630078004C006100620065006C003200320001004E00
      6F0074006500720069006E0067003A0001004E006F0074006500720061000100
      4E006F007400650001004E006F00740065007200610001000D000A0063007800
      4C006100620065006C00320033000100530074007200F6007200650063006500
      700074003A0001000100010001000D000A00630078004C006100620065006C00
      3200340001005200650066006500720065006E0073006B006F00700069006F00
      72003A0001000100010001000D000A00630078004C006100620065006C003200
      350001004C00E4006E00670064003A0001004C00E4006E006700640001004C00
      65006E0067007400680001004C00E4006E006700640001000D000A0063007800
      4C006100620065006C003200360001004C00E4006E0067006400620065007300
      6B003A0001004C00E4006E00670064006200650073006B002E0001004C006500
      6E006700740068002000640065007300630072002E0001004C00E4006E006700
      64006200650073006B002E0001000D000A00630078004C006100620065006C00
      3200370001005200610064006E0072003A00010001004C0069006E0065004E00
      6F003A00010001000D000A00630078004C006100620065006C00320038000100
      5600650072006B002E0067007200610064002800250029003A00010001004500
      6600660069006300690065006E00630079002800250029003A00010001000D00
      0A00630078004C006100620065006C0032003900010049006E0073007400E400
      6C006C006E0069006E006700610072002000700061006B00650074006C006100
      700070006100720001000100010001000D000A00630078004C00610062006500
      6C0033003000010050006C0061006E002E004E004D0033003A00010001000100
      01000D000A00630078004C006100620065006C0033003100010050006C006100
      6E006500720061006400200076006F006C0079006D0001000100010001000D00
      0A00630078004C006100620065006C0033003200010041007200740069006B00
      65006C006B006F0064003A00010041007200740069006B0065006C006B006F00
      64000100410072007400690063006C006500200063006F006400650001004100
      7200740069006B0065006C006B006F00640001000D000A00630078004C006100
      620065006C00330033000100530074002F0050006B0074000100010001000100
      0D000A00630078004C006100620065006C0033003400010041004C004D004D00
      3A00010041004C004D004D00010041004C004D004D00010041004C004D004D00
      01000D000A00630078004C006100620065006C00330036000100540069006400
      730065006E006800650074003A0001000100010001000D000A00630078004C00
      6100620065006C003300370001005600690073006100200074006F0070007000
      3A0001000100530068006F007700200074006F0070003A00010001000D000A00
      630078004C006100620065006C003400310001005600650063006B0061003A00
      010001005700650065006B003A00010001000D000A00630078004C0061006200
      65006C00340032000100500061006B00650074006E0072003A00010050006100
      6B00650074004E007200010050006B0067004E006F000100500061006C006C00
      4E00720001000D000A00630078004C006100620065006C00350001005300F600
      6B0020006B00F60072006F0072006400650072003A0001000100010001000D00
      0A00630078004C006100620065006C00360001004C0070006D002F006D006900
      6E00750074003A0001000100010001000D000A00630078004C00610062006500
      6C0038000100500072006F00640075006B0074003A000100500072006F006400
      75006B0074000100500072006F0064007500630074000100500072006F006400
      75006B00740001000D000A00630078004C006100620065006C00390001004C00
      E400670067006100720065003A0001000100010001000D000A00640078004200
      6100720042007500740074006F006E00310033000100530061006D0061006E00
      66006F00670020007500740061006E00200064006900730063006F006E006E00
      65006300740001000100010001000D000A00640078004200610072004C006100
      72006700650042007500740074006F006E003100330001004B006F0070007000
      6C00610020006600E4007200640069006700700061006B006500740001000100
      010001000D000A00640078004200610072004C00610072006700650042007500
      740074006F006E00310038000100D60076007200690067007400010001004F00
      7400680065007200010001000D000A00640078004200610072004C0061007200
      6700650042007500740074006F006E00320030000100530061006D006D006100
      6E0066006F006700610001000100010001000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E00390001004B0061006C00
      6B002E0020006D00610072006B00650072006100640065000100010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      610072003100010043007500730074006F006D00200031000100010001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B00310001004E006500770052006500
      70006F007200740001000100010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B00320001004E00650077005200650070006F00720074000100010001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B00330001004E006500770052006500
      70006F007200740001000100010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B00340001004E00650077005200650070006F00720074000100010001000100
      0D000A0067007200640049006E0070007500740050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      410042004D004D000100410042004D004D0001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410064006A00
      7500730074006500640041004D003100010041004D0031000100010001000100
      0D000A0067007200640049006E0070007500740050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      410064006A007500730074006500640041004D003300010041004D0033000100
      0100010001000D000A0067007200640049006E0070007500740050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      650077003100410064006A00750073007400650064004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A0067007200640049006E00
      70007500740050006B006700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100410064006A007500730074006500
      64005000690065006300650073000100460044006A0075007300740065006400
      50006900650063006500730001000100010001000D000A006700720064004900
      6E0070007500740050006B006700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310041004C004D004D0001004100
      4C004D004D0001000100010001000D000A0067007200640049006E0070007500
      740050006B006700730044004200420061006E00640065006400540061006200
      6C0065005600690065007700310041004D003100010041004D00310001000100
      010001000D000A0067007200640049006E0070007500740050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310041004D003300010041004D00330001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410054004D00
      4D000100410054004D004D0001000100010001000D000A006700720064004900
      6E0070007500740050006B006700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100450078007000650063007400
      650064005000630073004F007500740001004600F60072007600E4006E007400
      61007400200073007400790063006B0020007500740001000100010001000D00
      0A0067007200640049006E0070007500740050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004B00
      6100700053006E0069007400740001004B006100700073006E00690074007400
      01000100430075007400740069006E006700200070006F007300690074006900
      6F006E007300010001000D000A0067007200640049006E007000750074005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004B0061007300730041004D003100010041004D003100
      01000100010001000D000A0067007200640049006E0070007500740050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004B0061007300730041004D003300010041004D0033000100
      0100010001000D000A0067007200640049006E0070007500740050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004B00610073007300500063007300010053007400790063006B00
      0100010050006300730001005300E40063006B0001000D000A00670072006400
      49006E0070007500740050006B006700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C0061006D0065006C00
      6C006500720001004C0061006D0065006C006C00650072000100010001000100
      0D000A0067007200640049006E0070007500740050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E0042004D004D0001004E0042004D004D0001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E004C004D00
      4D0001004E004C004D004D00010001004E004C004D004D00010001000D000A00
      67007200640049006E0070007500740050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E004D00
      330001004E004D003300010001004E004D003300010001000D000A0067007200
      640049006E0070007500740050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004E0054004D004D00
      01004E0054004D004D0001000100010001000D000A0067007200640049006E00
      70007500740050006B006700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500065007200630065006E007400
      410064006A005000630073000100500065007200630065006E00740041006400
      6A0050006300730001000100010001000D000A0067007200640049006E007000
      7500740050006B006700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050007200690063006500500065007200
      4E004D0033000100500072006900730001000100500072006900630065000100
      01000D000A0067007200640049006E0070007500740050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100500072006F00640075006B00740001000100500072006F00
      6400750063007400010001000D000A0067007200640049006E00700075007400
      50006B006700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F0001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006F00
      6400750063007400560061006C007500650001005600E4007200640065000100
      0100560061006C0075006500010001000D000A0067007200640049006E007000
      7500740050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031005200610077004D00740072006C004E00
      6F0001005200610077004D00740072006C004E006F0001000100010001000D00
      0A0067007200640049006E0070007500740050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      69007A006500500065007200630065006E0074004F00660054006F0074006100
      6C000100530069007A006500500065007200630065006E0074004F0066005400
      6F00740061006C0001000100010001000D000A0067007200640049006E007000
      7500740050006B006700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310053006F007200740069006E0067004F00
      72006400650072004E006F00010053006F007200740069006E0067004F007200
      6400650072004E006F0001000100010001000D000A0067007200640049006E00
      70007500740050006B006700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310053005400590043004B0001005300
      7400790063006B000100010050006300730001005300E40063006B0001000D00
      0A0067007200640049006E0070007500740050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005500
      72006C00610067006700500063007300010053007400790063006B0020007500
      72006C00E4006700670001000100010001000D000A006700720064004E006500
      770050006B0067007300440042005400610062006C0065005600690065007700
      310041004D003100010041004D00310001000100010001000D000A0067007200
      64004E006500770050006B0067007300440042005400610062006C0065005600
      690065007700310041004D003300010041004D00330001000100010001000D00
      0A006700720064004E006500770050006B006700730044004200540061006200
      6C0065005600690065007700310041004E0054005000450052004C004E004700
      44000100530074002F006C00E4006E0067006400010053007400790063006B00
      2F006C00E4006E006700640001005000630073002F006C0065006E0067007400
      6800010053007400790063006B002F006C00E4006E006700640001000D000A00
      6700720064004E006500770050006B0067007300440042005400610062006C00
      6500560069006500770031004C00450056004B004F0044000100500072006500
      66006900780001000100500072006500660069007800010001000D000A006700
      720064004E006500770050006B0067007300440042005400610062006C006500
      560069006500770031004D00460042004D0001004D00460042004D0001000100
      4D00460042004D00010001000D000A006700720064004E006500770050006B00
      67007300440042005400610062006C006500560069006500770031004E004D00
      330001004E004D003300010001004E004D003300010001000D000A0067007200
      64004E006500770050006B0067007300440042005400610062006C0065005600
      6900650077003100500041004B00450054004E0052000100500061006B006500
      74006E0072000100500061006B00650074004E007200010050006B0067004E00
      6F000100500061006C006C004E00720001000D000A006700720064004E006500
      770050006B0067007300440042005400610062006C0065005600690065007700
      310050006B006700530074006100740075007300010050006B00670053007400
      610074007500730001000100010001000D000A006700720064004E0065007700
      50006B0067007300440042005400610062006C00650056006900650077003100
      500052004F00440055004B0054000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006700720064004E00
      6500770050006B0067007300440042005400610062006C006500560069006500
      7700310052006500670069007300740072006500720061006400010052006500
      6700690073007400720065007200610064000100010052006500670069007300
      74006500720065006400010001000D000A006700720064004E00650077005000
      6B0067007300440042005400610062006C006500560069006500770031005300
      5400590043004B00010053007400790063006B00010001005000630073000100
      5300E40063006B0001000D000A006700720064004F0075007400700075007400
      530075006D006D00610072007900440042005400610062006C00650056006900
      65007700310041004D003100010041004D00310001000100010001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      440042005400610062006C0065005600690065007700310041004D0033000100
      41004D00330001000100010001000D000A006700720064004F00750074007000
      75007400530075006D006D00610072007900440042005400610062006C006500
      560069006500770031006D006500640065006C00700072006900730001004D00
      6500640065006C00700072006900730001000100410076006500720061006700
      6500200070007200690063006500010001000D000A006700720064004F007500
      7400700075007400530075006D006D0061007200790044004200540061006200
      6C006500560069006500770031004D006500640065006C007000720069007300
      5F0031000100250020006100760020007200E500760061007200610001000100
      010001000D000A006700720064004F0075007400700075007400530075006D00
      6D00610072007900440042005400610062006C00650056006900650077003100
      4E004D00330001004E004D003300010001004E004D003300010001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      440042005400610062006C00650056006900650077003100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001005000
      72006F00640075006B00740001000100500072006F0064007500630074000100
      01000D000A006700720064004F0075007400700075007400530075006D006D00
      610072007900440042005400610062006C006500560069006500770031005000
      72006F00640075006B007400560072006400650001005600E400720064006500
      01000100560061006C0075006500010001000D000A006700720064004F007500
      7400700075007400530075006D006D0061007200790044004200540061006200
      6C0065005600690065007700310053005400590043004B000100530074007900
      63006B000100010050006300730001005300E40063006B0001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C0065005600690065007700310055007400660061006C00
      6C00010055007400660061006C006C002000250001000100010001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      4C006500760065006C003100010054006100620065006C006C00010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      4C004D004D00010041004C004D004D0001000100010001000D000A0067007200
      64005200610077004D00740072006C0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310041004D003100010041004D00
      310001000100010001000D000A006700720064005200610077004D0074007200
      6C0044004200420061006E006400650064005400610062006C00650056006900
      65007700310041004D003300010041004D00330001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C0065005600690065007700310041006E0074006100
      6C004B006100700053006E0069007400740001004B006100700073006E006900
      7400740001000100430075007400740069006E006700200070006F0073006900
      740069006F006E007300010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      5600690065007700310041006E00740061006C004C0061006D0065006C006C00
      650072005500740001004C0061006D0065006C006C0065007200010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004200
      6F006F006B0065006400500072006F0064007500630074004C0065006E006700
      740068004E006F00010042006F006F006B0065006400500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C0065005600690065007700310042006F006F006B00
      65006400500072006F0064007500630074004E006F00010042006F006F006B00
      65006400500072006F0064007500630074004E006F0001000100010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100450078006300
      6C00750064006500460072006F006D0054006F00740061006C00010045007800
      6B006C002E0075007400660061006C006C0001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C0065006E0067007400
      68004400650073006300720069007000740069006F006E0001004C00E4006E00
      670064006200650073006B007200690076006E0069006E006700010001004C00
      65006E0067006800740020006400650073006300720069007000740069006F00
      6E00010001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C0065006E00670074006800530070006500630001004C00E4006E006700
      6400010001004C0065006E00670074006800010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031004D00610069006E00520061007700
      4D00740072006C00010048007500760075006400760061007200610001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4D00430043006C006100730073004E006F000100440065006C00610073002000
      6600F6007200650020006800790076006C0069006E0067000100010001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C006500560069006500770031004F007200
      6400650072004E0061006D00650001005200E50076006100720075006B006F00
      6E007400720061006B00740001000100010001000D000A006700720064005200
      610077004D00740072006C0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004F0072006400650072004E006F000100
      4F0072006400650072004E006F0001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031005000430053000100530074007900
      63006B000100010050006300730001005300E40063006B0001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050006C0061006E006E00
      6500640041004D003100010041004D00310001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050006C0061006E006E00
      6500640041004D00330001004E004D003300010001004E004D00330001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050007200
      6900630065005000650072004E004D003300010050007200690073002F004E00
      4D00330001000100500072006900630065002F004E004D003300010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500052004F00440055004B0054000100500072006F00640075006B00
      740001000100500072006F006400750063007400010001000D000A0067007200
      64005200610077004D00740072006C0044004200420061006E00640065006400
      5400610062006C006500560069006500770031005200650061006C004C005000
      4D00010041004D00310001000100010001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310053006F007200740069006E0067004F007200
      6400650072004E006F0001004900440001000100010001000D000A0067007200
      64005200610077004D00740072006C0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100550072006C00610067006700
      7300500072006F00630065006E007400010055007400660061006C006C002000
      250001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      650077003100410042000100410042000100010041005700010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C0065005600690065007700310041004D0031000100
      41004D00310001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      5600690065007700310041004D003300010041004D0033000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C0065005600690065007700310041005400
      0100410054000100010041005400010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C006500560069006500770031004B0072006E00720001004B00F60072006E00
      720001000100520075006E004E006F00010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770031004E00420001004E004200010001004E00
      5700010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      31004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C006500560069006500770031004E0054000100
      4E005400010001004E005400010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      6500560069006500770031005000720069007300010050007200690073000100
      010050007200690063006500010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      650056006900650077003100500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F0001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      6B0074000100500072006F00640075006B00740001000100500072006F006400
      750063007400010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      65007700310053007400790063006B00010053007400790063006B0001000100
      50006300730001005300E40063006B0001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C0065005600690065007700310055007400660061006C006C006F006E004600
      69006E000100250020006600E400720064006900670020006100760020006600
      E400720064006900670001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C0065005600690065007700310055007400660061006C006C006F006E005200
      610077000100250020006100760020007200E500760061007200610001000100
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003100
      560072006400650001005600E40072006400650001000100560061006C007500
      6500010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      3200410042004D004D000100410042000100010041005700010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C00650056006900650077003200410054004D004D00
      0100410054000100010041005400010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C00650056006900650077003200460061007200640069006700560061007200
      61005500740041004D00330001004600E4007200640069006700760061007200
      6100200041004D00330020002800750072006C00E40067006700200065007800
      6B006C00290001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      5600690065007700320046006100720064006900670056006100720061005500
      74004E004D00330001004600E400720064006900670076006100720061002000
      4E004D00330020002800750072006C00E400670067002000650078006B006C00
      290001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      65007700320048007900760065006C0001004D00E4007400700075006E006B00
      7400010001004D0065006100730075007200650070006F0069006E0074000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032004800
      790076006C00610074004C0050004D0001004800790076006C00610064002000
      4C0050004D000100010050006C0061006E006E0065006400200052004D000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032004B00
      6100730073005F0041004D00330001004B0061007300730061002E0020004100
      4D00330001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      69006500770032004B006100730073005F0053007400790063006B0001004B00
      61007300730061002E00200073007400790063006B0001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C006500560069006500770032004B006F007300
      74005000650072004E004D00330052006100770001004B006F00730074006E00
      610064002F00610076007200650067002E004E004D0033002000010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032004B00
      6F00730074005000650072004E004D0033005500740001004B006F0073007400
      6E00610064002F007000E5007200650067002E004E004D003300010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032004B00
      72006E00720001004B00F60072006E00720001000100520075006E004E006F00
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003200
      4C0050004D007000650072004D0069006E0001004C0050004D002F004D006900
      6E00750074000100010050004D002F004D0069006E0075007400650001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C006500560069006500770032004E004200
      4D004D0001004E004200010001004E005700010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C006500560069006500770032004E004D00330049004E0001005400
      6F00740061006C00740020007200E500760061007200610020004E004D003300
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      770032004E0054004D004D0001004E005400010001004E005400010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C0065005600690065007700320050006F007300
      7400740069006400010050006F00730074007400690064000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C0065005600690065007700320053006C00
      75007400010053006C00750074000100010045006E006400010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C006500560069006500770032005300740061007200
      7400010053007400610072007400010001005300740061007200740073000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032005400
      6F00740061006C00740069006400010054006F00740061006C00740069006400
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      77003200550072006C00670067005F0053007400790063006B00010055007200
      6C00E40067006700200073007400790063006B002000280065006A0020006800
      790076006C00610064006500290001000100010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C006500560069006500770032005600650072006B00010056006500
      72006B00010001004D0069006C006C00010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700320059006500610072005700650065006B00
      010059006500610072005700650065006B0001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C00650056006900650077003300410042004D004D000100
      410042004D004D0001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      650056006900650077003300410064006A007500730074006500640041004D00
      31000100460044006A007500730074006500640041004D003100010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770033004100
      64006A007500730074006500640041004D0033000100460044006A0075007300
      74006500640041004D00330001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C00650056006900650077003300410064006A0075007300740065006400
      4E004D0033000100460044006A00750073007400650064004E004D0033000100
      0100010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      3300410064006A00750073007400650064005000690065006300650073000100
      460044006A007500730074006500640050006900650063006500730001000100
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003300
      41004C004D004D00010041004C004D004D0001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C0065005600690065007700330041004D00310001004100
      4D00310001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      690065007700330041004D003300010041004D00330001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C00650056006900650077003300410054004D00
      4D000100410054004D004D0001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700330045007800700065006300740065006400
      5000630073004F007500740001004600F60072007600E4006E00740061007400
      20007300740020007500740001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770033004B006100700053006E00690074007400
      01004B006100700073006E006900740074000100010043007500740074006900
      6E006700200070006F0073006900740069006F006E007300010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C006500560069006500770033004B00610073007300
      41004D00310001004B006100730073002E00200041004D003100010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770033004B00
      61007300730041004D00330001004B006100730073002E00200041004D003300
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      770033004B0061007300730050006300730001004B006100730073002E002000
      73007400790063006B0001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C006500560069006500770033004C0061006D0065006C006C00650072000100
      4C0061006D0065006C006C006500720001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C006500560069006500770033004E0042004D004D0001004E00
      42004D004D0001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      560069006500770033004E004C004D004D0001004E004C004D004D0001000100
      4E004C004D004D00010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      69006500770033004E004D00330001004E004D003300010001004E004D003300
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003300
      4E0054004D004D0001004E0054004D004D0001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C0065005600690065007700330050006500720063006500
      6E007400410064006A005000630073000100500065007200630065006E007400
      410064006A0050006300730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700330050007200690063006500500065007200
      4E004D003300010050007200690073002F004E004D0033000100010050007200
      6900630065002F004E004D003300010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C00650056006900650077003300500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006B00
      740001000100500072006F006400750063007400010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C00650056006900650077003300500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770033005000
      72006F006400750063007400560061006C007500650001005600E40072006400
      650001000100560061006C0075006500010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770033005200610077004D00740072006C004E00
      6F0001005200610077004D00740072006C004E006F0001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C00650056006900650077003300530069007A00
      6500500065007200630065006E0074004F00660054006F00740061006C000100
      530069007A006500500065007200630065006E0074004F00660054006F007400
      61006C0001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      690065007700330053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      65007700330053005400590043004B00010053007400790063006B0001000100
      50006300730001005300E40063006B0001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C00650056006900650077003300550072006C00610067006700500063007300
      0100550072006C00E40067006700200073007400790063006B00010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F00770073004C006500760065006C00320001004600E4007200640069006700
      760061007200610020002600260062006900700072006F00640075006B007400
      6500720001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F00770073004C006500760065006C00330001005200
      E500760061007200610001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310041004200010041004200010001004100
      5700010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310041004C004D004D00010041004C004D004D0001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004D00
      3100010041004D00310001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310041004D003300010041004D0033000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310041007200740069006B0065006C004B006F0064000100410072007400
      69006B0065006C006B006F00640001000100410072007400690063006C006500
      200063006F0064006500010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004100540001004100540001000100410054000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      43006F0073007400440069007300740001004B006F00730074006600F6007200
      640065006C006E0069006E00670001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      7200010053006B0061007000610064002000610076000100010053006B006100
      70006100640020006100760001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004300530044004E006F0001004300530044004E00
      6F0001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310043007500730074006F006D006500720001004B0075006E00
      64000100010043007500730074006F006D0065007200010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004400610074006500
      4300720065006100740065006400010044006100740065004300720065006100
      74006500640001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310045006E00640050006B00670041006C006C006F00
      770065006400010053006C007500740070006B00740001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310045007800
      63006C00750064006500460072006F006D0054006F00740061006C0001004500
      78006B006C002E00200075007400660061006C006C0001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310045007800
      70006F007200740052006F00770001004500780070006F007200740065007200
      6100010001004500780070006F0072007400010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100460055004B0054004B005600
      4F0054000100460055004B0054004B0056004F00540001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310049004D00
      5000010049004D005000010049006D0070007200650067006E00650072006900
      6E0067000100540072006500610074006D0065006E007400010049006D007000
      7200650067006E006500720069006E00670001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004B00760061006C00690074006500
      740001004B00760061006C006900740065007400010001004700720061006400
      6500010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C0061006700650072006700720075007000700001004C0061006700
      650072006700720075007000700001000100530074006F0063006B0020006700
      72006F0075007000010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C0065006E0067007400680044006500730063007200
      69007000740069006F006E0001004C00E4006E00670064006200650073006B00
      7200690076006E0069006E006700010001004C0065006E006700680074002000
      6400650073006300720069007000740069006F006E00010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004C0065006E006700
      74006800530070006500630001004C00E4006E0067006400010001004C006500
      6E00670074006800010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006700670061007200650001004C00E40067006700
      61007200650001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C004F004E00520001004C004F004E0052000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D00430043006C006100730073004E006F0001004800790076006C00
      61007300200065006A00010001004E006F007400200074006F00200062006500
      200070006C0061006E006E0065006400010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004D0052004B00450001004D00E400
      72006B006E0069006E006700010001004D00610072006B00010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004E0042000100
      4E004200010001004E005700010001000D000A0067007200640053006F007200
      740052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004E006F004F00660055006E00690074007300
      0100500061006B00650074000100010050006B0067000100500061006C006C00
      6100720001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004E006F0074006500720069006E00670001004E006F00740065007200
      69006E00670001004E006F00740065007200610001004E006F00740065000100
      4E006F00740065007200610001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E00540001004E005400010001004E0054000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500043005300010053007400790063006B000100010050006300730001005300
      E40063006B0001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310050006B006700500072006500660069007800010050006B007400
      70007200650066006900780001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310050004B0054000100500061006B00
      650074000100010050006B0067000100500061006C006C006100720001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006C00
      61006E006E006500640041004D003300010041004D0033000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6C0061006E006E00650064004E004D00330001004E004D003300010001004E00
      4D003300010001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310050006C0061006E006E0065006400500063007300010053007400
      790063006B000100010050006300730001005300E40063006B0001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500050005000
      0100730074002F0070006B00740001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500072006900630065000100
      50007200690073000100010050007200690063006500010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720069006300
      650055006E00690074000100500072006900730065006E006800650074000100
      0100500072006900630065002000260075006E0069007400010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006900
      6F0001005000720069006F0001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006900730065006E006800
      650074000100500072006900730065006E006800650074000100010050007200
      6900630065002000260075006E0069007400010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050007200690073006C006900
      730074006100010050007200690073006C006900730074006100010001005000
      72006900630065006C00690073007400010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F00640049006E007300
      740072007500630074004E006F000100500072006F00640049006E0073007400
      72007500630074004E006F0001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F0064004E004D003300
      01004E004D003300010001004E004D003300010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500072006F00640075006300
      74004C0065006E006700740068004E006F000100500072006F00640075006300
      74004C0065006E006700740068004E006F0001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C00650056006900650077003100500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500072006F00640075006B0074000100500072006F00640075006B00
      740001000100500072006F006400750063007400010001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310052006500660043006F00
      700069006500730001005200650066002E006B006F00700069006F0072000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310053006F007200740069006E0067004F0072006400650072004E006F00
      01004B00F60072006F00720064006500720001000100520075006E0020006F00
      7200640065007200010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310053006F007200740069006E0067004F00720064006500
      720052006F0077004E006F0001005200610064006E007200010001004C006900
      6E0065004E006F00010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310053006F00720074004F00720064006500720001005300
      6F00720074004F00720064006500720001000100010001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007400610074007500
      7300010053007400610074007500730001000100530074006100740075007300
      010001000D000A0067007200640053006F007200740052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053007400690063006B005200650063006900700065000100530074007200
      F60072006500630065007000740001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100540061007200670065007400
      500072006F006400750063007400010048007500760075006400760061007200
      610001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031005400720073006C0061006700010054007200E40073006C00
      61006700010001005300700065006300690065007300010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C00650056006900650077003100550072006C006100
      670067000100550072006C00E4006700670001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005500740066007200
      61006E00640065000100550074006600F600720061006E006400650001000100
      53007500720066006100630069006E006700010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310056006F006C0075006D006500
      55006E00690074004E006F00010056006F006C0075006D00650055006E006900
      74004E006F0001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100560050005F00500072006F006400750063007400
      43006F00640065000100560050002000500072006F00640075006B0074006B00
      6F00640001000100010001000D000A0067007200640053006F00720074005200
      6F0077007300440042005400610062006C006500560069006500770031004100
      4C004D004D00010041004C004D004D0001000100010001000D000A0067007200
      640053006F007200740052006F0077007300440042005400610062006C006500
      5600690065007700310041004D003300010041004D0033000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042005400
      610062006C00650056006900650077003100450078004C006F00670001004500
      78004C006F00670001000100010001000D000A0067007200640053006F007200
      740052006F0077007300440042005400610062006C0065005600690065007700
      3100460055004B0054004B0056004F0054000100460055004B0054004B005600
      4F00540001000100010001000D000A0067007200640053006F00720074005200
      6F0077007300440042005400610062006C006500560069006500770031004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      01004C00E4006E00670064006200650073006B007200690076006E0069006E00
      6700010001004C0065006E006700680074002000640065007300630072006900
      7000740069006F006E00010001000D000A0067007200640053006F0072007400
      52006F0077007300440042005400610062006C00650056006900650077003100
      4E006F004F00660050006B00670073004E004F0054004500010041004E005400
      2E0050004B00540028007400650078007400290001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200540061006200
      6C00650056006900650077003100500063007300500065007200420075006E00
      64006C0065000100500063007300500065007200420075006E0064006C006500
      01000100010001000D000A0067007200640053006F007200740052006F007700
      7300440042005400610062006C0065005600690065007700310050006C006100
      6E006E006500640041004D003300010041004D00330001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420054006100
      62006C006500560069006500770031005000500050000100730074002F007000
      6B00740001000100010001000D000A0067007200640053006F00720074005200
      6F0077007300440042005400610062006C006500560069006500770031005000
      52004F00440055004B0054000100500072006F00640075006B00740001000100
      500072006F006400750063007400010001000D000A0067007200640053006F00
      7200740052006F0077007300440042005400610062006C006500560069006500
      770031005400410043004B004E0049004E00470001005400C40043004B004E00
      49004E00470001000100010001000D000A0067007200640053006F0072007400
      52006F0077007300440042005400610062006C00650056006900650077003100
      54007900700065004F00660042006F0061007200640001005400790070006500
      4F00660042006F0061007200640001000100010001000D000A00670072006400
      53007000650063004C00610079006F0075007400440042005400610062006C00
      65005600690065007700310041006E00740061006C004B006F00700069006F00
      7200010041006E00740061006C0020006B006F00700069006F00720001000100
      4E006F0020006F006600200063006F007000690065007300010001000D000A00
      67007200640053007000650063004C00610079006F0075007400440042005400
      610062006C006500560069006500770031004C00610079006F00750074004E00
      6F0001004C00610079006F00750074004E006F0001000100010001000D000A00
      67007200640053007000650063004C00610079006F0075007400440042005400
      610062006C006500560069006500770031005000610063006B00610067006500
      4C006F0067004C00610079006F00750074004E0061006D00650001004C006100
      79006F007500740001000100010001000D000A00670072006400530070006500
      63004C00610079006F0075007400440042005400610062006C00650056006900
      65007700310053006F007200740069006E0067004F0072006400650072004E00
      6F00010053006F007200740069006E0067004F0072006400650072004E006F00
      01000100010001000D000A0067007200640053007000650063004C0061007900
      6F0075007400440042005400610062006C006500560069006500770031005300
      6F007200740069006E0067004F00720064006500720052006F0077004E006F00
      010053006F007200740069006E0067004F00720064006500720052006F007700
      4E006F0001000100010001000D000A0067007200640055007300650064005000
      6B0067007300440042005400610062006C006500560069006500770031004100
      4D003100010041004D00310001000100010001000D000A006700720064005500
      73006500640050006B0067007300440042005400610062006C00650056006900
      65007700310041004D003300010041004D00330001000100010001000D000A00
      670072006400550073006500640050006B006700730044004200540061006200
      6C0065005600690065007700310041004E0054005000450052004C004E004700
      44000100530074002F006C00E4006E0067006400010053007400790063006B00
      2F006C00E4006E006700640001005000630073002F006C0065006E0067007400
      6800010053007400790063006B002F006C00E4006E006700640001000D000A00
      670072006400550073006500640050006B006700730044004200540061006200
      6C006500560069006500770031004C00450056004B004F004400010050007200
      650066006900780001000100500072006500660069007800010001000D000A00
      670072006400550073006500640050006B006700730044004200540061006200
      6C006500560069006500770031004D00460042004D0001004D00460042004D00
      010001004D00460042004D00010001000D000A00670072006400550073006500
      640050006B0067007300440042005400610062006C0065005600690065007700
      31004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A00670072006400550073006500640050006B00670073004400420054006100
      62006C00650056006900650077003100500041004B00450054004E0052000100
      500061006B00650074006E0072000100500061006B00650074004E0072000100
      50006B0067004E006F000100500061006C006C004E00720001000D000A006700
      72006400550073006500640050006B0067007300440042005400610062006C00
      650056006900650077003100500052004F00440055004B005400010050007200
      6F00640075006B00740001000100500072006F00640075006300740001000100
      0D000A00670072006400550073006500640050006B0067007300440042005400
      610062006C006500560069006500770031005200650067006900730074007200
      6500720061006400010052006500670069007300740072006500720061006400
      010001005200650067006900730074006500720065006400010001000D000A00
      670072006400550073006500640050006B006700730044004200540061006200
      6C0065005600690065007700310053005400590043004B000100530074007900
      63006B000100010050006300730001005300E40063006B0001000D000A006700
      7200640057006F0072006B004F00720064006500720044004200540061006200
      6C00650056006900650077003100410047004100520045000100C40067006100
      72006500010001004F0077006E0065007200010001000D000A00670072006400
      57006F0072006B004F007200640065007200440042005400610062006C006500
      5600690065007700310042006F006F006B006500640041004D00310001004200
      6F006B0061006400200041004D00310001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      65005600690065007700310042006F006F006B00650064004E004D0033000100
      42006F006B006100640020004E004D003300010042006F006B00610064004E00
      4D003300010042006F006F006B00650064004E004D003300010042006F006B00
      610064004E004D00330001000D000A0067007200640057006F0072006B004F00
      7200640065007200440042005400610062006C00650056006900650077003100
      42006F006F006B0069006E0067004E006F00010042006F006B006E0069006E00
      67004900440001000100010001000D000A0067007200640057006F0072006B00
      4F007200640065007200440042005400610062006C0065005600690065007700
      310045006E006400540069006D0065000100460069006E006900730068000100
      0100010001000D000A0067007200640057006F0072006B004F00720064006500
      7200440042005400610062006C00650056006900650077003100460072006400
      69006700760061007200610001004600E4007200640069006700760061007200
      610001000100460069006E0069007300680065006400200067006F006F006400
      7300010001000D000A0067007200640057006F0072006B004F00720064006500
      7200440042005400610062006C006500560069006500770031004B0075006E00
      640001004B0075006E0064000100010043007500730074006F006D0065007200
      010001000D000A0067007200640057006F0072006B004F007200640065007200
      440042005400610062006C006500560069006500770031004C00410047004500
      52004700520055005000500001004C0041004700450052004700520055005000
      500001000100530054004F0043004B002000470052004F005500500001000100
      0D000A0067007200640057006F0072006B004F00720064006500720044004200
      5400610062006C006500560069006500770031004C0041004700450052005300
      54004C004C00450001004C00410047004500520053005400C4004C004C004500
      01000100530054004F0043004B00200050004C00410043004500010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C006500560069006500770031004C004F004E00520001004C004F00
      4E00720001004C004F0001004C004F0001004C004F0001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      6500560069006500770031004C004F00530001004C004F002700730001000100
      010001000D000A0067007200640057006F0072006B004F007200640065007200
      440042005400610062006C006500560069006500770031004E004D0033005000
      6C0061006E004600610072006400690067000100460061007200640069006700
      760061007200610020004E004D00330001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      6500560069006500770031004F00720067005900650061007200570065006500
      6B0001005500720073002E007600650063006B00610001000100010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C0065005600690065007700310050006C0061006E006E0065006400
      500072006F00640075006300740069006F006E00540069006D00650001005000
      6C0061006E00650072006100640020006B00F600720074006900640001000100
      010001000D000A0067007200640057006F0072006B004F007200640065007200
      440042005400610062006C00650056006900650077003100500052004F004400
      45004E0048004500540001004D00E4007400700075006E006B00740001000100
      4D0065006100730075007200650070006F0069006E007400010001000D000A00
      67007200640057006F0072006B004F0072006400650072004400420054006100
      62006C00650056006900650077003100500052004F0044005500430045004E00
      54000100500072006F0064007500630065006E00740001000100500072006F00
      64007500630065007200010001000D000A0067007200640057006F0072006B00
      4F007200640065007200440042005400610062006C0065005600690065007700
      3100500072006F006700720061006D004E006F000100500072006F0067007200
      61006D004E006F0001000100010001000D000A0067007200640057006F007200
      6B004F007200640065007200440042005400610062006C006500560069006500
      770031005200650061006C00500072006F00640075006300740069006F006E00
      540069006D00650001005600650072006B006C006900670020006B00F6007200
      74006900640001000100010001000D000A0067007200640057006F0072006B00
      4F007200640065007200440042005400610062006C0065005600690065007700
      31005200760061007200610001005200E5007600610072006100010001000100
      01000D000A0067007200640057006F0072006B004F0072006400650072004400
      42005400610062006C0065005600690065007700310053006F00720074006900
      6E0067004F0072006400650072004E006F0001004B00F60072006E0072000100
      0100520075006E004E006F00010001000D000A0067007200640057006F007200
      6B004F007200640065007200440042005400610062006C006500560069006500
      7700310053007400610072007400540069006D00650001005300740061007200
      740001000100530074006100720074007300010001000D000A00670072006400
      57006F0072006B004F007200640065007200440042005400610062006C006500
      5600690065007700310053007400610074007500730001005300740061007400
      7500730001000100530074006100740075007300010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      650056006900650077003100530074006F007000540069006D00650001005300
      74006F007000540069006D00650001000100010001000D000A00670072006400
      57006F0072006B004F007200640065007200440042005400610062006C006500
      5600690065007700310053007500720066006100630069006E00670042006B00
      670043006F006C006F007200010053007500720066006100630069006E006700
      42006B00670043006F006C006F00720001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      65005600690065007700310053007500720066006100630069006E0067005400
      65007800740043006F006C006F00720001005300750072006600610063006900
      6E006700540065007800740043006F006C006F00720001000100010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C00650056006900650077003100540065006D0070006C0061007400
      65004E0061006D00650001004D0061006C006C006E0061006D006E0001000100
      010001000D000A0067007200640057006F0072006B004F007200640065007200
      440042005400610062006C006500560069006500770031005500740066006100
      6C006C00010055007400660061006C006C00010001004F007500740063006F00
      6D006500010001000D000A0067007200640057006F0072006B004F0072006400
      65007200440042005400610062006C0065005600690065007700310057006500
      65006B004E006F0001005600450043004B00410001000100010001000D000A00
      67007200640057006F0072006B004F0072006400650072004400420054006100
      62006C0065005600690065007700310059006500610072005700650065006B00
      01005600650063006B006100010001005700650065006B00010001000D000A00
      4C006100620065006C00310001004B006100730073006100740069006F006E00
      2C00200073007400790063006B003A0001000100430061007300730061007400
      69006F006E002C002000700069006500630065003A00010001000D000A004C00
      6100620065006C003100300001004D006100780020006D00610074006E006900
      6E006700200028006C0070006D002F006D0069006E0029003A00010001000100
      01000D000A004C006100620065006C0031003100010053006C00750074007400
      690064003A00010053006C0075007400740069006400010045006E0064002000
      740069006D006500010053006C007500740074006900640001000D000A004C00
      6100620065006C00310033000100530074006100720074007400690064003A00
      0100530074006100720074005400690064000100530074006100720074005400
      69006D00650001005300740061007200740054006900640001000D000A004C00
      6100620065006C00310035000100740069006D006D0061007200010001000100
      01000D000A004C006100620065006C003100360001004C0050004D0020006800
      790076006C00610074003A0001000100010001000D000A004C00610062006500
      6C003100370001004B006F00730074002F004E004D00330020007200E5007600
      61007200610001000100010001000D000A004C006100620065006C0031003800
      01005600650063006B006100010001005700650065006B00010001000D000A00
      4C006100620065006C00310039000100500072006F00640075006B0074006900
      6F006E0073007400690064002800740069006D0029003A000100010001000100
      0D000A004C006100620065006C00320001005600650072006B006C0069006700
      2000700072006F0064007400690064003A0001000100010001000D000A004C00
      6100620065006C003200320001004F0070006500720061007400F60072006500
      72003A00010001004F00700065007200610074006F00720073003A0001000100
      0D000A004C006100620065006C0032003300010050006F00730074006E006900
      6E006700730074006900640028006D0069006E0029003A000100010001000100
      0D000A004C006100620065006C00320034000100530074006F00700070007400
      69006400200065006A00200069006E006B006C003A0001000100010001000D00
      0A004C006100620065006C00320037000100440069006D003A00010001000100
      01000D000A004C006100620065006C0033003100010046004F00480043003A00
      010046004F0048004300010046004F0048004300010046004F00480043000100
      0D000A004C006100620065006C00330032000100420075006E00740020007300
      74006F0072006C0065006B002000280062007200650064006400200078002000
      6800F6006A00640029003A000100420075006E0074002000730074006F007200
      6C0065006B0020002800620072006500640064002000780020006800F6006A00
      6400290001004D0069006E0069002000620075006E0064006C00650020007300
      69007A0065002000280077006900640074006800200078002000680065006900
      67006800740029000100420075006E0074002000730074006F0072006C006500
      6B0020002800620072006500640064002000780020006800F6006A0064002900
      01000D000A004C006100620065006C00330033000100500061006B0065007400
      730074006F0072006C0065006B00200028006200720065006400640020007800
      20006800F6006A00640029003A000100010050006B0067002000730069007A00
      6500280077006900640074006800200078002000680065006900670068007400
      29000100500061006C006C00730074006F0072006C0065006B00200028006200
      72006500640064002000780020006800F6006A00640029003A0001000D000A00
      4C006100620065006C0033003400010041006E00740061006C00200062006900
      6E006400730074007200F6003A00010041006E00740061006C00200062006900
      6E006400730074007200F60001004E006F0020006F0066002000730074006900
      63006B007300010041006E00740061006C002000620069006E00640073007400
      7200F60001000D000A004C006100620065006C0033003600010041006E007400
      61006C002000620061006E006400260026007400790070002000610076002000
      620061006E0064003A0001000100010001000D000A004C006100620065006C00
      3300370001004800F60072006E0073006B007900640064003A0001004800F600
      72006E0073006B00790064006400010043006F0072006E006500720070007200
      6F00740065006300740069006F006E0001004800F60072006E0073006B007900
      6400640001000D000A004C006100620065006C00330038000100470072006100
      640065007300740061006D0070003A0001004B00760061006C00690074006500
      7400730073007400E4006D00700065006C000100470072006100640065007300
      740061006D00700001004B00760061006C006900740065007400730073007400
      E4006D00700065006C0001000D000A004C006100620065006C00340030000100
      500072006F0064002E007400690064003A0001000100010001000D000A004C00
      6100620065006C003400310001004F0070006500720061007400F60072006500
      72003A00010001004F00700065007200610074006F00720073003A0001000100
      0D000A004C006100620065006C00340032000100530061006D006D0061006E00
      73007400E4006C006C006E0069006E00670020006600E4007200640069006700
      7600610072006100200026002600200062006900700072006F00640075006B00
      7400650072000100010043006F006D00700069006C006100740069006F006E00
      2000660069006E0069007300680065006400200067006F006F00640073002000
      61006E0064002000620079002D00700072006F00640075006300740073000100
      01000D000A004C006100620065006C0034003300010053007400720065006300
      6B006B006F0064003A000100530074007200650063006B006B006F0064000100
      42006100720063006F00640065000100530074007200650063006B006B006F00
      640001000D000A004C006100620065006C00340034000100500061006B006500
      74007400790070003A000100500061006B006500740074007900700001005000
      6B006700200074007900700065000100500061006C006C007400790070000100
      0D000A004C006100620065006C003400350001005400E40063006B006E006900
      6E0067003A0001005400E40063006B006E0069006E006700010043006F007600
      6500720001005400E40063006B006E0069006E00670001000D000A004C006100
      620065006C0034003600010049006D0070007200650067006E00650072006100
      74003A00010049006D0070007200650067006E00650072006100740001005400
      720065006100740065006400010049006D0070007200650067006E0065007200
      6100740001000D000A004C006100620065006C00340037000100500045005400
      200074006F006C006500720061006E0073003A00010050004500540020007400
      6F006C006500720061006E0073000100500045005400200074006F006C006500
      720061006E00630065000100500045005400200074006F006C00650072006100
      6E00730001000D000A004C006100620065006C0034003800010049006E007400
      650072006E0020006E006F0074006500720069006E0067000100010049006E00
      7400650072006E0061006C0020006E006F0074006500010001000D000A004C00
      6100620065006C00340039000100420065007200E4006B006E00610064002000
      7600650072006B006E0069006E00670073006700720061006400200025003A00
      01000100010001000D000A004C006100620065006C0035003100010041004D00
      330001000100010001000D000A004C006100620065006C003500320001004100
      4D00310001000100010001000D000A004C006100620065006C00350033000100
      53007400790063006B000100010050006300730001005300E40063006B000100
      0D000A004C006100620065006C003500340001004B006F00730074006E006100
      64000100010043006F0073007400010001000D000A004C006100620065006C00
      35003600010054006F00740061006C002000700072006F00640075006B007400
      69006F006E0073006B006F00730074006E006100640001000100010001000D00
      0A004C006100620065006C003500380001002D0020005200E500760061007200
      75006B006F00730074002E0001000100010001000D000A004C00610062006500
      6C0035003900010052006500730075006C0074006100740020006B00F6007200
      6E0069006E00670001000100010001000D000A004C006100620065006C003600
      310001003D00200052006500730075006C007400610074000100010001000100
      0D000A004C006100620065006C00370001005300740061007400750073003A00
      0100530074006100740075007300010053007400610074007500730001005300
      7400610074007500730001000D000A004C006100620065006C00370032000100
      4C00610067006500720073007400E4006C006C0065003A0001004C0061006700
      6500720073007400E4006C006C0065000100530074006F0063006B0020007000
      6C0061006300650001004C00610067006500720073007400E4006C006C006500
      01000D000A004C006100620065006C003700330001004C006100670065007200
      670072007500700070003A0001004C0061006700650072006700720075007000
      70000100530074006F0063006B002000670072006F007500700001004C006100
      6700650072006700720075007000700001000D000A004C006100620065006C00
      3700360001004C00E4006E00670064003A0001004C00E4006E00670064000100
      4C0065006E0067007400680001004C00E4006E006700640001000D000A004C00
      6100620065006C0037003700010056006F006C0079006D003A00010056006F00
      6C0079006D00010056006F006C0075006D006500010056006F006C0079006D00
      01000D000A004C006100620065006C00370038000100530070007200E5006B00
      3A000100530070007200E5006B0001004C0061006E0067007500610067006500
      0100530070007200E5006B0001000D000A004C006100620065006C0038000100
      420065007200E4006B006E006100640020006B00F60072002E00740069006400
      200028006D0069006E0029003A0001000100010001000D000A004C0061006200
      65006C0038003200010053007400790063006B006500740061006C0020007000
      650072002000620075006E0074003A00010053007400790063006B0065007400
      61006C0020007000650072002000620075006E00740001005000630073002F00
      6D0069006E0069002000620075006E0064006C00650001005300740079006300
      6B006500740061006C0020007000650072002000620075006E00740001000D00
      0A004C006100620065006C00380037000100450078007400650072006E002000
      6E006F0074006500720069006E00670001000100450078007400650072006E00
      20006E006F0074006500010001000D000A004C006100620065006C0038003800
      0100500061006B0065007400730074006F0072006C0065006B003A0001005000
      61006B0065007400730074006F0072006C0065006B00010050006B0067002000
      730069007A0065000100500061006C006C00730074006F0072006C0065006B00
      01000D000A004C006100620065006C0038003900010054007200750063006B00
      730074007200F6003A00010054007200750063006B00730074007200F6000100
      4200650061007200650072007300010054007200750063006B00730074007200
      F60001000D000A004C006100620065006C0039000100530074006F0070007000
      740069006400200028006D0069006E0029003A0001000100010001000D000A00
      500061006E0065006C003100300001004B006F00700070006C00610020007200
      E50076006100720061000100010043006F006E006E0065006300740020007200
      610077006D006100740065007200690061006C00010001000D000A0050006100
      6E0065006C00310031000100500061006E0065006C0031003100010001000100
      01000D000A00500061006E0065006C00310033000100500061006E0065006C00
      3100330001000100010001000D000A00500061006E0065006C00330030000100
      49006E006C00E4007300740061002000700061006B0065007400010001000100
      01000D000A00500061006E0065006C003300310001004600E400720064006900
      67007600610072007500730061006D006D0061006E0073007400E4006C006C00
      6E0069006E00670001000100460069006E006900730068006500640020006700
      6F006F0064007300200063006F006D00700069006C006100740069006F006E00
      010001000D000A00500061006E0065006C003300330001005200E50076006100
      72007500730061006D006D0061006E0073007400E4006C006C006E0069006E00
      6700010001005200610077006D006100740065007200690061006C0020006300
      6F006D00700069006C006100740069006F006E00010001000D000A0050006100
      6E0065006C003300380001004100760072006500670069007300740072006500
      72006100640065002000700061006B00650074000100010055006E0072006500
      6700200070006B00670073000100410076007200650067006900730074007200
      650072006100640065002000700061006C006C006100720001000D000A005000
      61006E0065006C00410076005200650067004800650061006400650072000100
      4100760072006500670069007300740072006500720061006400650020007000
      61006B00650074000100010055006E00720065006700200070006B0067007300
      0100410076007200650067006900730074007200650072006100640065002000
      700061006C006C006100720001000D000A00500061006E0065006C004B006F00
      72004F00720064006500720049006E0066006F000100500061006E0065006C00
      4B006F0072004F00720064006500720049006E0066006F000100010001000100
      0D000A00500061006E0065006C00500061005200650067004800650061006400
      6500720001005000E50072006500670069007300740072006500720061006400
      65002000700061006B0065007400010001005200650067006900730074006500
      720065006400200070006B006700730001005000E50072006500670069007300
      74007200650072006100640065002000700061006C006C006100720001000D00
      0A00500061006E0065006C0052006F00770049006E0066006F00010050006100
      6E0065006C0052006F00770049006E0066006F0001000100010001000D000A00
      7200670043006500720074006900660069006500720061006400010043006500
      7200740069006600690065007200610064000100010043006500720074006900
      6600690065006400010001000D000A0053007000650065006400420075007400
      74006F006E00340001005300F6006B002000700061006B006500740001005300
      F6006B002000500061006B00650074004E007200010053006500610072006300
      6800200050006B0067004E006F0001005300F6006B002000500061006C006C00
      4E00720001000D000A007400730041006E0061006C0079007300010074007300
      41006E0061006C007900730001000100010001000D000A007400730041007400
      740065007300740001004100760073007400E4006D006E0069006E0067002000
      7200E50076006100720061000100010043006F006E00740072006F006C002000
      7200610077006D006100740065007200690061006C00010001000D000A007400
      7300410076007300740061006D006E0069006E00670052006100760061007200
      61000100500061006B006500740069007300740061000100500061006B006500
      74006C006900730074006100010050006B0067006C0069007300740001005000
      61006C006C006C00690073007400610001000D000A0074007300410076007300
      740061006D006E0069006E00670054006900640001004100760073007400E400
      6D006E0069006E006700200074006900640001000100010001000D000A007400
      730045006400690074004B006F0072004F007200640065007200010074007300
      45006400690074004B006F0072004F0072006400650072000100010001000100
      0D000A007400730046006F0072004B0061006C006B0079006C00010074007300
      46006F0072004B0061006C006B0079006C0001000100010001000D000A007400
      7300480075007600750064000100D60076007200690067007400010001004F00
      7400680065007200010001000D000A0074007300480075007600750064006900
      6E0073007400720075006B00740069006F006E00650072000100480075007600
      7500640069006E0073007400720075006B00740069006F006E00650072000100
      0100010001000D000A007400730049006E0073007400720075006B0074006900
      6F006E006500720001007400730049006E0073007400720075006B0074006900
      6F006E006500720001000100010001000D000A00740073004B006F0070007000
      6C0061005200610076006100720061000100740073004B006F00700070006C00
      610052006100760061007200610001000100010001000D000A00740073005000
      61006B006500740073007000650063000100500061006B006500740073007000
      6500630001000100010001000D000A0074007300500072006F00640075006B00
      74007200610064000100500072006F00640075006B0074007200610064000100
      0100010001000D000A007400730052006100700070006F007200740056007900
      01007400730052006100700070006F0072007400560079000100010001000100
      0D000A0074007300540065007800740065007200010054006500780074006500
      72000100010054006500780074007300010001000D000A007400730056006500
      63006B006F00560079000100740073005600650063006B006F00560079000100
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A006100630041006400640050006B00670054006F00
      520075006E0001004B006F00700070006C0061002000730061006B006E006100
      6400650020006600E4007200640069006700700061006B006500740001000100
      010001000D000A006100630041007600720065006700500061006B0065007400
      46006F0072006D0075006C00610072000100D600700070006E00610020006100
      760072006500670069007300740072006500720069006E006700730066006F00
      72006D0075006C00E40072006500740001000100010001000D000A0061006300
      430061006C00630041006C006C000100450066007400650072006B0061006C00
      6B0079006C0065007200610020006D00610072006B0065007200610064006500
      20006B00F60072006F00720064006500720001000100010001000D000A006100
      630053006100760065005500730065007200500072006F007000730001005300
      7000610072006100200069006E0073007400E4006C006C006E0069006E006700
      610072000100010053006100760065002000730065007400740069006E006700
      7300010001000D000A006400780042006100720042007500740074006F006E00
      310033000100530061006D0061006E0066006F00670020007500740061006E00
      200064006900730063006F006E006E0065006300740001000100010001000D00
      0A00640078004200610072004C00610072006700650042007500740074006F00
      6E00310038000100D60076007200690067007400010001004F00740068006500
      7200010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E00320030000100530061006D006D0061006E0066006F00
      6700610001000100010001000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      7300740042006F006F006B006500640041004D003100010042006F006F006B00
      6500640041004D00310001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C0069007300740042006F006F006B00
      650064004E004D003300010042006F006F006B00650064004E004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C0069007300740042006F006F006B0069006E0067004E006F000100
      42006F006F006B0069006E0067004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      43006F006D006D0065006E0074007300010043006F006D006D0065006E007400
      730001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C006900730074004400750072006100740069006F006E00
      01004400750072006100740069006F006E0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4600650065006400530070006500650064000100460065006500640053007000
      65006500640001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C00690073007400460069006E00690073006800
      0100460069006E0069007300680001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740046006900
      7800650064004400610074006500010046006900780065006400440061007400
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C0069007300740046007200640069006700760061007200
      610001004600E400720064006900670076006100720061000100010046006900
      6E0069007300680065006400200067006F006F0064007300010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740047004100520045000100C4004700410052004500010001004F0057004E00
      45005200010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400490044000100490044000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      6900730074004B0075006E00640001004B0075006E0064000100010043007500
      730074006F006D0065007200010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074004C004100470045005200
      4700520055005000500001004C00410047004500520047005200550050005000
      01000100530054004F0043004B002000470052004F0055005000010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004C004100470045005200530054004C004C00450001004C0041004700
      4500520053005400C4004C004C00450001000100530054004F0043004B002000
      50004C00410043004500010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074004C00650067006F0001004C00
      650067006F000100010043006F006E0074007200610063007400200077006F00
      72006B00010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C006900730074004C00490050004E006F0001004C0049005000
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C006900730074004C004F004E00520001004C004F00
      4E00720001004C004F0001004C004F0001004C004F0001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004C00
      4F00530001004C004F00530001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C006900730074004D0043004300
      6C006100730073004E006F0001004D00430043006C006100730073004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C006900730074004D006F007600650054006F004C0049005000
      4E006F0001004D006F007600650054006F004C00490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074004E004D00330050006C0061006E004600610072006400
      690067000100460061007200640069006700760061007200610020004E004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C006900730074004F007200670059006500610072005700
      650065006B0001005500720073002E007600650063006B006100010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074005000490050004E006F000100
      5000490050004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C0069007300740050006C0061006E00
      6E0065006400500072006F00640075006300740069006F006E00540069006D00
      6500010050006C0061006E006E0065006400500072006F006400750063007400
      69006F006E00540069006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740050006C00
      61006E006E006500640057006F0072006B0069006E006700540069006D006500
      010050006C0061006E006E006500640057006F0072006B0069006E0067005400
      69006D00650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C0069007300740050006F00730074006E006900
      6E0067007300740069006400010050006F00730074006E0069006E0067007300
      74006900640001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C00690073007400500072006500430061006C00
      630045006600660069006300690065006E006300790046006100630074006F00
      72000100500072006500430061006C0063004500660066006900630069006500
      6E006300790046006100630074006F00720001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      5000720069006F004E006F0001005000720069006F004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C00690073007400500052004F00440045004E00480045005400010050005200
      4F00440045004E0048004500540001000100500052004F004400200055004E00
      49005400010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400500052004F0044005500430045004E005400
      0100500072006F0064007500630065006E00740001000100500072006F006400
      7500630065007200010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C00690073007400500072006F006700720061006D00
      4E006F000100500072006F006700720061006D004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      6900730074005200650061006C0045006E006400540069006D00650001005300
      6C007500740074006900640001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400520065006100
      6C00500072006F00640075006300740069006F006E00540069006D0065000100
      5200650061006C00500072006F00640075006300740069006F006E0054006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C006900730074005200650061006C00530074006100
      72007400540069006D0065000100530074006100720074007400690064000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074005200650073006F00750072006300650049004400
      01005200650073006F0075007200630065004900440001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074005200760061007200610001005200E500760061007200610001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074007300730070004E006F0001007300730070004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400530074006100720074000100530074006100
      7200740001000100530074006100720074007300010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005300
      74006F007000540069006D0065000100530074006F007000540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C0069007300740053007500720066006100630069006E006700
      42006B00670043006F006C006F00720001005300750072006600610063006900
      6E00670042006B00670043006F006C006F00720001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740053007500720066006100630069006E006700540065007800740043006F00
      6C006F007200010053007500720066006100630069006E006700540065007800
      740043006F006C006F00720001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400540061007300
      6B005300740061007400750073004600690065006C0064000100540061007300
      6B005300740061007400750073004600690065006C0064000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      690073007400540065006D0070006C006100740065000100540065006D007000
      6C0061007400650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C00690073007400540065006D0070006C00
      6100740065004E0061006D0065000100540065006D0070006C00610074006500
      4E0061006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C00690073007400540065006D0070006C00
      61007400650055007300650072000100540065006D0070006C00610074006500
      550073006500720001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740054007900700065004F00
      6600520075006E004E0061006D006500010054007900700065004F0066005200
      75006E004E0061006D00650001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400540079007000
      65004F006600520075006E004E006F00010054007900700065004F0066005200
      75006E004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740055007400660061006C00
      6C00010055007400660061006C006C00010001004F007500740063006F006D00
      6500010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074005700650065006B004E006F000100570065006500
      6B004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074005600650072006B004E006F00
      01005600650072006B004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740059006500
      610072004E006F00010059006500610072004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      7300740059006500610072005700650065006B0001005600650063006B006100
      010001005700650065006B00010001000D000A006D007400500072006F006400
      750063007400500072006F00640075006300740044006900730070006C006100
      79004E0061006D0065000100500072006F006400750063007400440069007300
      70006C00610079004E0061006D00650001000100010001000D000A006D007400
      500072006F006400750063007400500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      6D007400500072006F006400750063007400550072006C006100670067005000
      72006F0064007500630074004E006F000100550072006C006100670067005000
      72006F0064007500630074004E006F0001000100010001000D000A006D007400
      500072006F006400750063007400550072006C00610067006700500072006F00
      640075006B0074000100550072006C00610067006700500072006F0064007500
      6B00740001000100010001000D000A00730071005F0047006500740050006B00
      6700440061007400610041004D003100010041004D0031000100010001000100
      0D000A00730071005F0047006500740050006B00670044006100740061004100
      4D003300010041004D00330001000100010001000D000A00730071005F004700
      6500740050006B006700440061007400610067006100720065000100C4006700
      610072006500010001004F0077006E0065007200010001000D000A0073007100
      5F0047006500740050006B00670044006100740061004C006100670065007200
      01004C00610067006500720001000100530074006F0063006B00010001000D00
      0A00730071005F0047006500740050006B00670044006100740061004C006500
      6E0067007400680053007000650063004E006F0001004C0065006E0067007400
      680053007000650063004E006F0001000100010001000D000A00730071005F00
      47006500740050006B00670044006100740061004C00490050004E006F000100
      4C00490050004E006F0001000100010001000D000A00730071005F0047006500
      740050006B00670044006100740061004D00320001004D003200010001000100
      01000D000A00730071005F0047006500740050006B0067004400610074006100
      4E004D00330001004E004D003300010001004E004D003300010001000D000A00
      730071005F0047006500740050006B00670044006100740061004F0077006E00
      650072004E006F0001004F0077006E00650072004E006F000100010001000100
      0D000A00730071005F0047006500740050006B00670044006100740061005000
      610063006B0061006700650054007900700065004E006F000100500061006300
      6B0061006700650054007900700065004E006F0001000100010001000D000A00
      730071005F0047006500740050006B0067004400610074006100500061006300
      6B0061006700650054007900700065004E006F00410074007400410076005200
      6500670001005000610063006B0061006700650054007900700065004E006F00
      4100740074004100760052006500670001000100010001000D000A0073007100
      5F0047006500740050006B0067004400610074006100500061006B0065007400
      6E0072000100500061006B00650074006E0072000100500061006B0065007400
      4E007200010050006B0067004E006F000100500061006C006C004E0072000100
      0D000A00730071005F0047006500740050006B00670044006100740061005000
      49005000010050004900500001000100010001000D000A00730071005F004700
      6500740050006B006700440061007400610050006B0067004E006F0041007400
      740041007600520065006700010050006B0067004E006F004100740074004100
      760052006500670001000100010001000D000A00730071005F00470065007400
      50006B0067004400610074006100500072006500660069007800010050007200
      650066006900780001000100500072006500660069007800010001000D000A00
      730071005F0047006500740050006B0067004400610074006100500072006500
      6600690078004100740074004100760052006500670001005000720065006600
      690078004100740074004100760052006500670001000100010001000D000A00
      730071005F0047006500740050006B0067004400610074006100500052004F00
      44005500430054004E004F000100500052004F0044005500430054004E004F00
      01000100010001000D000A00730071005F0047006500740050006B0067004400
      610074006100500072006F00640075006B0074000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A007300
      71005F0047006500740050006B00670044006100740061005300740061007400
      7500730001005300740061007400750073000100010053007400610074007500
      7300010001000D000A00730071005F0047006500740050006B00670044006100
      7400610053007400790063006B00010053007400790063006B00010001005000
      6300730001005300E40063006B0001000D000A00730071005F00470065007400
      50006B006700440061007400610053007400790063006B005000650072004C00
      61006E0067006400010053007400790063006B005000650072004C0061006E00
      6700640001000100010001000D000A00730071005F0047006500740050006B00
      6700440061007400610053007500700070006C006900650072004E006F000100
      53007500700070006C006900650072004E006F0001000100010001000D000A00
      730071005F0047006500740050006B0067004400610074006100530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F0001000100010001000D000A00460044005F0053006F007200
      74004F00720064006500720052006F0077007300500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A00460044005F0053006F00720074004F0072006400650072005200
      6F00770073004B0072006E00720001004B00F60072006E007200010001005200
      75006E004E006F00010001000D000A00460044005F0053006F00720074004F00
      720064006500720052006F00770073004E00540001004E005400010001004E00
      5400010001000D000A00460044005F0053006F00720074004F00720064006500
      720052006F00770073004E00420001004E004200010001004E00570001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006F00
      77007300410054000100410054000100010041005400010001000D000A004600
      44005F0053006F00720074004F00720064006500720052006F00770073004100
      42000100410042000100010041005700010001000D000A00460044005F005300
      6F00720074004F00720064006500720052006F0077007300500072006F006400
      75006B0074000100500072006F00640075006B00740001000100500072006F00
      6400750063007400010001000D000A00460044005F0053006F00720074004F00
      720064006500720052006F007700730041004D003300010041004D0033000100
      0100010001000D000A00460044005F0053006F00720074004F00720064006500
      720052006F00770073004E004D00330001004E004D003300010001004E004D00
      3300010001000D000A00460044005F0053006F00720074004F00720064006500
      720052006F007700730041004D003100010041004D0031000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006F00
      7700730053007400790063006B00010053007400790063006B00010001005000
      6300730001005300E40063006B0001000D000A00460044005F0053006F007200
      74004F00720064006500720052006F0077007300560072006400650001005600
      E40072006400650001000100560061006C0075006500010001000D000A004600
      44005F0053006F00720074004F00720064006500720052006F00770073005000
      7200690073000100500072006900730001000100500072006900630065000100
      01000D000A00460044005F0053006F00720074004F0072006400650072005200
      6F007700730055007400660061006C006C006F006E00460069006E0001002500
      20006600E400720064006900670020006100760020006600E400720064006900
      670001000100010001000D000A00460044005F0053006F00720074004F007200
      64006500720052006F007700730055007400660061006C006C006F006E005200
      610077000100250020006100760020007200E500760061007200610001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      52006F007700730053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A00460044005F0053004F004800640072004B00
      72006E00720001004B00F60072006E00720001000100520075006E004E006F00
      010001000D000A00460044005F0053004F004800640072005900650061007200
      5700650065006B00010059006500610072005700650065006B00010001000100
      01000D000A00460044005F0053004F004800640072005600650072006B000100
      5600650072006B00010001004D0069006C006C00010001000D000A0046004400
      5F0053004F0048006400720048007900760065006C0001004D00E40074007000
      75006E006B007400010001004D0065006100730075007200650070006F006900
      6E007400010001000D000A00460044005F0053004F0048006400720053007400
      6100720074000100530074006100720074000100010053007400610072007400
      7300010001000D000A00460044005F0053004F0048006400720054006F007400
      61006C00740069006400010054006F00740061006C0074006900640001000100
      010001000D000A00460044005F0053004F0048006400720050006F0073007400
      740069006400010050006F007300740074006900640001000100010001000D00
      0A00460044005F0053004F004800640072004800790076006C00610074004C00
      50004D0001004C0050004D00200069006E00200068007900760065006C000100
      0100010001000D000A00460044005F0053004F004800640072004C0050004D00
      7000650072004D0069006E0001004C0050004D002F004D0069006E0075007400
      0100010050004D002F004D0069006E00750074006500010001000D000A004600
      44005F0053004F004800640072004E004D00330049004E00010054006F007400
      61006C00740020007200E500760061007200610020004E004D00330001000100
      010001000D000A00460044005F0053004F004800640072004B006F0073007400
      5000650072004E004D0033005500740001004B006F00730074006E0061006400
      2F004E004D00330020007500740001000100010001000D000A00460044005F00
      53004F004800640072004B006100730073005F0041004D00330001004B006100
      7300730061002E00200041004D00330001000100010001000D000A0046004400
      5F0053004F004800640072004B006100730073005F0053007400790063006B00
      01004B0061007300730061002E00200073007400790063006B00010001000100
      01000D000A00460044005F0053004F0048006400720053006F00720074006900
      6E0067004F0072006400650072004E006F00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0046004400
      5F0053004F004800640072004600610072006400690067005600610072006100
      550074004E004D00330001004600E40072006400690067007600610072006100
      20004E004D00330001000100010001000D000A00460044005F0053004F004800
      6400720046006100720064006900670056006100720061005500740041004D00
      330001004600E40072006400690067007600610072006100200041004D003300
      01000100010001000D000A00460044005F0053004F0048006400720055007200
      6C00670067005F0053007400790063006B000100550072006C00E40067006700
      200073007400790063006B0001000100010001000D000A00460044005F005300
      4F0048006400720053006C0075007400010053006C0075007400010001004500
      6E006400010001000D000A00460044005F0053004F0048006400720041005400
      4D004D000100410054000100010041005400010001000D000A00460044005F00
      53004F00480064007200410042004D004D000100410042000100010041005700
      010001000D000A00460044005F0053004F004800640072004E0054004D004D00
      01004E005400010001004E005400010001000D000A00460044005F0053004F00
      4800640072004E0042004D004D0001004E004200010001004E00570001000100
      0D000A00460044005F0053004F004800640072004B006F007300740050006500
      72004E004D00330052006100770001004B006F00730074006E00610064002F00
      4E004D00330020007200E500760061007200610001000100010001000D000A00
      460044005F005200610077006D00740072006C00500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100500072006F00
      640075006B00740001000100500072006F006400750063007400010001000D00
      0A00460044005F005200610077006D00740072006C0053006F00720074006900
      6E0067004F0072006400650072004E006F00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0046004400
      5F005200610077006D00740072006C00500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F0001000100010001000D00
      0A00460044005F005200610077006D00740072006C005200610077004D007400
      72006C004E006F0001005200610077004D00740072006C004E006F0001000100
      010001000D000A00460044005F005200610077006D00740072006C0053005400
      590043004B00010053007400790063006B000100010050006300730001005300
      E40063006B0001000D000A00460044005F005200610077006D00740072006C00
      41004D003300010041004D00330001000100010001000D000A00460044005F00
      5200610077006D00740072006C004E004D00330001004E004D00330001000100
      4E004D003300010001000D000A00460044005F005200610077006D0074007200
      6C0041004D003100010041004D00310001000100010001000D000A0046004400
      5F005200610077006D00740072006C00550072006C0061006700670050006300
      73000100550072006C00E40067006700200073007400790063006B0001000100
      010001000D000A00460044005F005200610077006D00740072006C0041006400
      6A00750073007400650064005000690065006300650073000100460044006A00
      7500730074006500640050006900650063006500730001000100010001000D00
      0A00460044005F005200610077006D00740072006C00410064006A0075007300
      74006500640041004D0033000100460044006A00750073007400650064004100
      4D00330001000100010001000D000A00460044005F005200610077006D007400
      72006C00410064006A00750073007400650064004E004D003300010046004400
      6A00750073007400650064004E004D00330001000100010001000D000A004600
      44005F005200610077006D00740072006C00410064006A007500730074006500
      640041004D0031000100460044006A007500730074006500640041004D003100
      01000100010001000D000A00460044005F005200610077006D00740072006C00
      4C0061006D0065006C006C006500720001004C0061006D0065006C006C006500
      720001000100010001000D000A00460044005F005200610077006D0074007200
      6C004B006100700053006E0069007400740001004B006100700073006E006900
      7400740001000100430075007400740069006E006700200070006F0073006900
      740069006F006E007300010001000D000A00460044005F005200610077006D00
      740072006C00450078007000650063007400650064005000630073004F007500
      740001004600F60072007600E4006E0074006100740020007300740020007500
      740001000100010001000D000A00460044005F005200610077006D0074007200
      6C00410054004D004D000100410054004D004D0001000100010001000D000A00
      460044005F005200610077006D00740072006C00410042004D004D0001004100
      42004D004D0001000100010001000D000A00460044005F005200610077006D00
      740072006C0041004C004D004D00010041004C004D004D000100010001000100
      0D000A00460044005F005200610077006D00740072006C004E0054004D004D00
      01004E0054004D004D0001000100010001000D000A00460044005F0052006100
      77006D00740072006C004E0042004D004D0001004E0042004D004D0001000100
      010001000D000A00460044005F005200610077006D00740072006C004E004C00
      4D004D0001004E004C004D004D00010001004E004C004D004D00010001000D00
      0A00460044005F005200610077006D00740072006C00530069007A0065005000
      65007200630065006E0074004F00660054006F00740061006C00010053006900
      7A006500500065007200630065006E0074004F00660054006F00740061006C00
      01000100010001000D000A00460044005F005200610077006D00740072006C00
      500065007200630065006E007400410064006A00500063007300010050006500
      7200630065006E007400410064006A0050006300730001000100010001000D00
      0A00460044005F005200610077006D00740072006C004B006100730073005000
      6300730001004B006100730073002E00200073007400790063006B0001000100
      010001000D000A00460044005F005200610077006D00740072006C004B006100
      7300730041004D00330001004B006100730073002E00200041004D0033000100
      0100010001000D000A00460044005F005200610077006D00740072006C004B00
      61007300730041004D00310001004B006100730073002E00200041004D003100
      01000100010001000D000A00460044005F005200610077006D00740072006C00
      500072006900630065005000650072004E004D00330001005000720069007300
      2F004E004D00330001000100500072006900630065002F004E004D0033000100
      01000D000A00460044005F005200610077006D00740072006C00500072006F00
      6400750063007400560061006C007500650001005600E4007200640065000100
      0100560061006C0075006500010001000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A005400660072006D005300
      6F00720074004F00720064006500720001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A006300780053007400
      79006C006500310001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00630078005300740079006C0065003100
      52006500640001005400610068006F006D00610001000100010001000D000A00
      630078005300740079006C0065003100590065006C006C006F00770001005400
      610068006F006D00610001000100010001000D000A0063007800530074007900
      6C00650032004D006F006E006500790047007200650065006E00010054006100
      68006F006D00610001000100010001000D000A00630078005300740079006C00
      65003300460061007200640069006700560061007200610001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      630078005300740079006C006500370001005400610068006F006D0061000100
      0100010001000D000A00630078005300740079006C0065004700720065006500
      6E0042006F006C006400540065007800740001004D0053002000530061006E00
      730020005300650072006900660001000100010001000D000A00630078005300
      740079006C0065004C006900670068007400590065006C006C006F0077000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C0065004E006F0072006D0061006C0001005400610068006F006D006100
      01000100010001000D000A00630078005300740079006C0065004F006C006900
      7600650001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A00630078005300740079006C00650050006B006700
      4E006F00740041007600610069006C0001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A006400780042006100
      72004D0061006E006100670065007200310001005400610068006F006D006100
      01000100010001000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200310001005400610068006F006D00610001000100
      010001000D000A006400780042006100720050006F007000750070004D006500
      6E00750053006F00720074004F00720064006500720052006F00770073000100
      5400610068006F006D00610001000100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0031000100540069006D006500730020004E006500770020005200
      6F006D0061006E0001000100010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0032000100540069006D006500730020004E0065007700200052006F006D00
      61006E0001000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003300
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      01000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00340001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      010001000D000A004500640069007400310001004D0053002000530061006E00
      730020005300650072006900660001000100010001000D000A0046006F006E00
      74004400690061006C006F006700310001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A006700720064005300
      6F007200740052006F007700730001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A00470072006F0075007000
      42006F007800320001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A004C006100620065006C00310038000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A004C006100620065006C003400320001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A004C006100
      620065006C003500360001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A004C006100620065006C0035003900
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A004C006100620065006C003600310001004D00530020005300
      61006E00730020005300650072006900660001000100010001000D000A005000
      61006E0065006C003100300001004D0053002000530061006E00730020005300
      650072006900660001000100010001000D000A00500061006E0065006C003300
      300001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A00500061006E0065006C003300310001004D0053002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      500061006E0065006C003300330001004D0053002000530061006E0073002000
      5300650072006900660001000100010001000D000A00500061006E0065006C00
      3300360001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A00500061006E0065006C003300380001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A00500061006E0065006C004100760052006500670048006500610064006500
      720001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A00500061006E0065006C00500061005200650067004800
      6500610064006500720001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A007000670053007500620041007400
      740065007300740001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0070006D0041004F000100540061006800
      6F006D00610001000100010001000D000A0070006D004D006500720067006500
      42006F006F006B0069006E006700730001005400610068006F006D0061000100
      0100010001000D000A0070006D004F0074006800650072007300010054006100
      68006F006D00610001000100010001000D000A0070006D005200610077004D00
      740072006C0001005400610068006F006D00610001000100010001000D000A00
      70006D0053006F00720074004F00720064006500720052006F00770073000100
      5400610068006F006D00610001000100010001000D000A0070006D0055007300
      6500640050006B006700730001005400610068006F006D006100010001000100
      01000D000A005300700065006500640042007500740074006F006E0031000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A005300700065006500640042007500740074006F006E0031003000
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A005300700065006500640042007500740074006F006E003100
      310001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A005300700065006500640042007500740074006F006E00
      3100320001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A005300700065006500640042007500740074006F00
      6E003100330001004D0053002000530061006E00730020005300650072006900
      660001000100010001000D000A00530070006500650064004200750074007400
      6F006E003100340001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00320001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00330001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00340001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00350001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00360001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00370001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00380001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007000650065006400420075007400
      74006F006E00390001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A0053007400610074007500730042006100
      7200310001005300650067006F00650020005500490001000100010001000D00
      0A007400730041007400740065007300740001004D0053002000530061006E00
      730020005300650072006900660001000100010001000D000A00740073004100
      76007300740061006D006E0069006E0067005200610076006100720061000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A00640078004200610072004D006100
      6E00610067006500720031002E00430061007400650067006F00720069006500
      73000100440065006600610075006C0074002C005000720069006E0074004200
      7500740074006F006E002C004100760072006F00700047007200690064002C00
      4C006F00610064002C00550073006500640050006B00670073002C0052006100
      77004D00740072006C0047007200690064002C004D0065007200670065004200
      6F006F006B0069006E006700730001000100010001000D000A00650050004500
      540054006F006C006500720061006E00630065002E00500072006F0070006500
      720074006900650073002E004C006F006F006B00750070004900740065006D00
      73000100480065006C006C006F002C004E006F00770001000100010001000D00
      0A007400630045006400690074004B006F0072004F0072006400650072002E00
      500072006F0070006500720074006900650073002E0054006100620073000100
      49006E0073007400720075006B00740069006F006E00650072002C0022004B00
      6F00700070006C00610020007200E500760061007200610022002C004600F600
      72006B0061006C006B0079006C002C00D6007600720069006700740001000100
      010001000D000A007400630045006400690074004B006F0072004F0072006400
      650072002E005400610062007300010049006E0073007400720075006B007400
      69006F006E00650072002C0022004B006F00700070006C00610020007200E500
      760061007200610022002C004600F60072006B0061006C006B0079006C002C00
      D6007600720069006700740001000100010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A0067007200640057006F0072006B004F007200
      640065007200440042005400610062006C006500560069006500770031005000
      52004F0044005500430045004E0054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640057006F0072006B004F00
      7200640065007200440042005400610062006C00650056006900650077003100
      410047004100520045002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800540065007800
      74004500640069007400500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640057006F0072006B004F00720064006500
      7200440042005400610062006C0065005600690065007700310053006F007200
      740069006E0067004F0072006400650072004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780054006500780074004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640057006F00
      72006B004F007200640065007200440042005400610062006C00650056006900
      6500770031005300740061007400750073002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780049006D0061006700650043006F006D0062006F0042006F00780050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      6500560069006500770031004F00720067005900650061007200570065006500
      6B002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      65005600690065007700310059006500610072005700650065006B002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640057006F00
      72006B004F007200640065007200440042005400610062006C00650056006900
      6500770031004B0075006E0064002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640057006F0072006B004F007200640065007200
      440042005400610062006C006500560069006500770031004C004F004E005200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      57006F0072006B004F007200640065007200440042005400610062006C006500
      56006900650077003100500072006F006700720061006D004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640057006F00
      72006B004F007200640065007200440042005400610062006C00650056006900
      65007700310050006C0061006E006E0065006400500072006F00640075006300
      740069006F006E00540069006D0065002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640057006F0072006B004F00
      7200640065007200440042005400610062006C00650056006900650077003100
      4600720064006900670076006100720061002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640057006F0072006B004F0072006400
      65007200440042005400610062006C006500560069006500770031004E004D00
      330050006C0061006E004600610072006400690067002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640057006F0072006B004F00
      7200640065007200440042005400610062006C00650056006900650077003100
      55007400660061006C006C002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640057006F0072006B004F0072006400650072004400
      42005400610062006C0065005600690065007700310042006F006F006B006500
      64004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C006500560069006500770031004C00410047004500520053005400
      4C004C0045002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780054006500780074004500
      640069007400500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640057006F0072006B004F0072006400650072004400
      42005400610062006C006500560069006500770031004C004100470045005200
      470052005500500050002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800540065007800
      74004500640069007400500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640057006F0072006B004F00720064006500
      7200440042005400610062006C00650056006900650077003100500052004F00
      440045004E004800450054002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780054006500
      780074004500640069007400500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640057006F0072006B004F0072006400
      65007200440042005400610062006C0065005600690065007700310052006500
      61006C00500072006F00640075006300740069006F006E00540069006D006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780054006500780074004500640069007400
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640057006F0072006B004F0072006400650072004400420054006100
      62006C00650056006900650077003100530074006F007000540069006D006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780054006500780074004500640069007400
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640057006F0072006B004F0072006400650072004400420054006100
      62006C0065005600690065007700310053007400610072007400540069006D00
      65002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004400610074006500450064006900
      7400500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C006500560069006500770031005700650065006B004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005700
      6F0072006B004F007200640065007200440042005400610062006C0065005600
      6900650077003100520076006100720061002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640057006F0072006B004F0072006400
      65007200440042005400610062006C0065005600690065007700310054006500
      6D0070006C006100740065004E0061006D0065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640057006F0072006B004F007200
      640065007200440042005400610062006C006500560069006500770031004500
      6E006400540069006D0065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640057006F0072006B004F0072006400650072004400
      42005400610062006C0065005600690065007700310053007500720066006100
      630069006E00670042006B00670043006F006C006F0072002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640057006F0072006B00
      4F007200640065007200440042005400610062006C0065005600690065007700
      310053007500720066006100630069006E006700540065007800740043006F00
      6C006F0072002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640057006F0072006B004F0072006400650072004400420054006100
      62006C0065005600690065007700310042006F006F006B0069006E0067004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640057006F0072006B004F007200640065007200440042005400610062006C00
      65005600690065007700310042006F006F006B006500640041004D0031002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005700
      6F0072006B004F007200640065007200440042005400610062006C0065005600
      69006500770031004C004F0053002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0063006200530068006F00770041006C006C002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      43006800650063006B0065006400010054007200750065000100530061006E00
      740001000100530061006E00740001000D000A0063006200530068006F007700
      41006C006C002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C00730065000100460065006C0001000100460065006C0001000D00
      0A0063006E00530068006F007700540065006D0070006C006100740065007300
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      530061006E00740001000100530061006E00740001000D000A0063006E005300
      68006F007700540065006D0070006C0061007400650073002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001004600
      65006C0001000100460065006C0001000D000A00630062004D0069006E006900
      420075006E0064006C0065002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A00630062004D0069006E006900420075006E0064006C0065002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790055006E0063006800650063006B00650064000100460061006C007300
      65000100460065006C0001000100460065006C0001000D000A00630062005300
      6800720069006E006B0057007200610070002E00500072006F00700065007200
      74006900650073002E0044006900730070006C00610079004300680065006300
      6B0065006400010054007200750065000100530061006E007400010001005300
      61006E00740001000D000A006300620053006800720069006E006B0057007200
      610070002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790055006E0063006800650063006B006500640001004600
      61006C00730065000100460065006C0001000100460065006C0001000D000A00
      6C00630050006B006700530069007A0065002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      6500730001005000610063006B00610067006500530069007A0065004E006F00
      01000100010001000D000A006C00630050006B006700530069007A0065002E00
      500072006F0070006500720074006900650073002E004C006900730074004600
      690065006C0064004E0061006D006500730001005000610063006B0061006700
      6500530069007A0065004E0061006D00650001000100010001000D000A006C00
      63005000610063006B0061006700650054007900700065004E0061006D006500
      2E00500072006F0070006500720074006900650073002E004B00650079004600
      690065006C0064004E0061006D006500730001005000610063006B0061006700
      650054007900700065004E006F0001000100010001000D000A006C0063005000
      610063006B0061006700650054007900700065004E0061006D0065002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D006500730001005000610063006B00610067006500
      54007900700065004E0061006D00650001000100010001000D000A006C006300
      54007200750063006B005300740072006F002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      65007300010054007200750063006B0053007400690063006B0073004E006F00
      01000100010001000D000A006C00630054007200750063006B00530074007200
      6F002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001005400720075006300
      6B0053007400690063006B00730001000100010001000D000A006C0063004700
      72006100640065005300740061006D0070002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      650073000100470072006100640065005300740061006D0070004E006F000100
      0100010001000D000A006C006300470072006100640065005300740061006D00
      70002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001004700720061006400
      65005300740061006D00700001000100010001000D000A006C00630042006100
      720043006F00640065002E00500072006F007000650072007400690065007300
      2E004B00650079004600690065006C0064004E0061006D006500730001004200
      6100720043006F00640065004E006F0001000100010001000D000A006C006300
      42006100720043006F00640065002E00500072006F0070006500720074006900
      650073002E004C006900730074004600690065006C0064004E0061006D006500
      7300010042006100720043006F00640065000100530074007200650063006B00
      6B006F006400010042006100720063006F006400650001005300740072006500
      63006B006B006F00640001000D000A00630062004B0044002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079004300
      6800650063006B0065006400010054007200750065000100530061006E007400
      01000100530061006E00740001000D000A00630062004B0044002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      55006E0063006800650063006B00650064000100460061006C00730065000100
      460065006C0001000100460065006C0001000D000A006300620046004A002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790043006800650063006B00650064000100540072007500650001005300
      61006E00740001000100530061006E00740001000D000A006300620046004A00
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      730065000100460065006C0001000100460065006C0001000D000A0063006200
      5000610063006B006100670065004300750074002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B0065006400010054007200750065000100530061006E00740001000100
      530061006E00740001000D000A00630062005000610063006B00610067006500
      4300750074002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C00730065000100460065006C0001000100460065006C0001000D00
      0A006C0063005000610070006500720057007200610070002E00500072006F00
      70006500720074006900650073002E004B00650079004600690065006C006400
      4E0061006D00650073000100570072006100700054007900700065004E006F00
      01000100010001000D000A006C00630050006100700065007200570072006100
      70002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001005700720061007000
      540079007000650001000100010001000D000A006C00630043006F0072006E00
      500072006F0074002E00500072006F0070006500720074006900650073002E00
      4B00650079004600690065006C0064004E0061006D0065007300010043006F00
      72006E0065007200500072006F00740065006300740069006F006E004E006F00
      01000100010001000D000A006C00630043006F0072006E00500072006F007400
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010043006F0072006E006500
      7200500072006F00740065006300740069006F006E0001004800F60072006E00
      73006B00790064006400010001004800F60072006E0073006B00790064006400
      01000D000A006C00630049004D0050002E00500072006F007000650072007400
      6900650073002E004B00650079004600690065006C0064004E0061006D006500
      73000100500072006F006400750063007400430061007400650067006F007200
      79004E006F0001000100010001000D000A006C00630049004D0050002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D00650073000100500072006F006400750063007400
      430061007400650067006F00720079004E0061006D0065000100010001000100
      0D000A00630078004400420049006D0061006700650031002E00500072006F00
      70006500720074006900650073002E00430061007000740069006F006E000100
      49006E00670065006E002000620069006C006400010001004E006F0020007000
      690063007400750072006500010001000D000A00630078004400420049006D00
      61006700650031002E00500072006F0070006500720074006900650073002E00
      470072006100700068006900630043006C006100730073004E0061006D006500
      010054004A0050004500470049006D0061006700650001000100010001000D00
      0A006C0063004C00670067006100720065002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      65007300010053007400610063006B00650072004E006F000100010001000100
      0D000A006C0063004C00670067006100720065002E00500072006F0070006500
      720074006900650073002E004C006900730074004600690065006C0064004E00
      61006D0065007300010053007400610063006B00650072004E0061006D006500
      01000100010001000D000A0063006200550072006C006100670067002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790043006800650063006B006500640001005400720075006500010053006100
      6E00740001000100530061006E00740001000D000A0063006200550072006C00
      6100670067002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790055006E0063006800650063006B00650064000100
      460061006C00730065000100460065006C0001000100460065006C0001000D00
      0A006300620045006E00640050006B00670041006C006C006F00770065006400
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      530061006E00740001000100530061006E00740001000D000A00630062004500
      6E00640050006B00670041006C006C006F007700650064002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001004600
      65006C0001000100460065006C0001000D000A00630062004D00430043006C00
      6100730073004E006F002E00500072006F007000650072007400690065007300
      2E0044006900730070006C006100790043006800650063006B00650064000100
      54007200750065000100530061006E00740001000100530061006E0074000100
      0D000A00630062004D00430043006C006100730073004E006F002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      55006E0063006800650063006B00650064000100460061006C00730065000100
      460065006C0001000100460065006C0001000D000A006C006300500072006900
      730065006E006800650074002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      540065006D0070006C0061007400650055006E00690074004E006F0001000100
      010001000D000A006C006300500072006900730065006E006800650074002E00
      500072006F0070006500720074006900650073002E004C006900730074004600
      690065006C0064004E0061006D00650073000100540065006D0070006C006100
      7400650055006E00690074004E0061006D00650001000100010001000D000A00
      6C00630050007200690073006C0069007300740061002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D00650073000100540065006D0070006C006100740065004E006F000100
      0100010001000D000A006C00630050007200690073006C006900730074006100
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010050007200690063006500
      4C006900730074004E0061006D00650001000100010001000D000A006C006300
      4C006100670065007200670072007500700070002E00500072006F0070006500
      720074006900650073002E004B00650079004600690065006C0064004E006100
      6D006500730001004C00490050004E006F0001000100010001000D000A006C00
      63004C006100670065007200670072007500700070002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D006500730001004C00410047004500520047005200550050005000
      01000100530054004F0043004B002000470052004F0055005000010001000D00
      0A006C0063004C0061006E006700750061006700650063006F00640065002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D006500730001004C0061006E006700750061006700
      65004E006F0001000100010001000D000A006C0063004C0061006E0067007500
      61006700650063006F00640065002E00500072006F0070006500720074006900
      650073002E004C006900730074004600690065006C0064004E0061006D006500
      730001004C0061006E00670075006100670065004E0061006D00650001000100
      010001000D000A006C006300530069007A00650046006F0072006D0061007400
      2E00500072006F0070006500720074006900650073002E004B00650079004600
      690065006C0064004E0061006D00650073000100530069007A00650046006F00
      72006D00610074004E006F0001000100010001000D000A006C00630053006900
      7A00650046006F0072006D00610074002E00500072006F007000650072007400
      6900650073002E004C006900730074004600690065006C0064004E0061006D00
      650073000100530069007A00650046006F0072006D0061007400010001005300
      69007A006500200066006F0072006D0061007400010001000D000A006C006300
      4C0065006E0067007400680046006F0072006D00610074002E00500072006F00
      70006500720074006900650073002E004B00650079004600690065006C006400
      4E0061006D006500730001004C0065006E0067007400680046006F0072006D00
      610074004E006F0001000100010001000D000A006C0063004C0065006E006700
      7400680046006F0072006D00610074002E00500072006F007000650072007400
      6900650073002E004C006900730074004600690065006C0064004E0061006D00
      6500730001004C0065006E0067007400680046006F0072006D00610074000100
      0100010001000D000A006C00630056006F006C0075006D00650046006F007200
      6D00610074002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D0065007300010056006F006C00
      75006D00650046006F0072006D00610074004E006F0001000100010001000D00
      0A006C00630056006F006C0075006D00650046006F0072006D00610074002E00
      500072006F0070006500720074006900650073002E004C006900730074004600
      690065006C0064004E0061006D0065007300010056006F006C0075006D006500
      46006F0072006D006100740001000100010001000D000A006300620054006100
      7200670065007400500072006F0064007500630074002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B0065006400010054007200750065000100530061006E0074000100
      0100530061006E00740001000D000A0063006200540061007200670065007400
      500072006F0064007500630074002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790055006E006300680065006300
      6B00650064000100460061006C00730065000100460065006C00010001004600
      65006C0001000D000A0067007200640053007000650063004C00610079006F00
      75007400440042005400610062006C0065005600690065007700310041006E00
      740061006C004B006F00700069006F0072002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78005300700069006E004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005300700065006300
      4C00610079006F0075007400440042005400610062006C006500560069006500
      770031005000610063006B006100670065004C006F0067004C00610079006F00
      750074004E0061006D0065002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      5000610063006B006100670065004C006F0067004C00610079006F0075007400
      4E006F0001000100010001000D000A0067007200640053007000650063004C00
      610079006F0075007400440042005400610062006C0065005600690065007700
      31005000610063006B006100670065004C006F0067004C00610079006F007500
      74004E0061006D0065002E00500072006F007000650072007400690065007300
      2E004C006900730074004600690065006C0064004E0061006D00650073000100
      5000610063006B006100670065004C006F0067004C00610079006F0075007400
      4E0061006D00650001000100010001000D000A00670072006400530070006500
      63004C00610079006F0075007400440042005400610062006C00650056006900
      6500770031005000610063006B006100670065004C006F0067004C0061007900
      6F00750074004E0061006D0065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6F006F006B007500700043006F006D0062006F0042006F007800500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C00650056006900650077003100500052004F00440055004B005400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780042007500740074006F006E0045006400
      69007400500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C006500
      6E006700740068004400650073006300720069007000740069006F006E002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004D00610069006E005200
      610077004D00740072006C002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004D00
      610069006E005200610077004D00740072006C002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C00730065000100460065006C00
      01000100460065006C0001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D00610069006E005200610077004D00740072006C002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D006500010054006300780043006800650063006B0042006F0078005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041004C004D004D002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005200
      610077004D00740072006C0044004200420061006E0064006500640054006100
      62006C0065005600690065007700310041006E00740061006C004B0061007000
      53006E006900740074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800530070006900
      6E004500640069007400500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310041006E00740061006C004C0061006D0065006C006C006500720055007400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078005300700069006E004500640069007400
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C0065005600690065007700310050006C0061006E00
      6E006500640041004D0033002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006100
      6C0063004500640069007400500072006F007000650072007400690065007300
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310050006C0061006E006E006500640041004D0031002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      0100540063007800430061006C0063004500640069007400500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005200
      610077004D00740072006C0044004200420061006E0064006500640054006100
      62006C00650056006900650077003100550072006C0061006700670073005000
      72006F00630065006E0074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006100
      6C0063004500640069007400500072006F007000650072007400690065007300
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005200650061006C004C0050004D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005000430053002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64005200610077004D00740072006C0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310041004D0031002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400520061007700
      4D00740072006C0044004200420061006E006400650064005400610062006C00
      65005600690065007700310053006F007200740069006E0067004F0072006400
      650072004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004D00
      430043006C006100730073004E006F002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      65006400010054007200750065000100530061006E0074000100010053006100
      6E00740001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004D00430043006C006100730073004E006F002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C00730065000100460065006C00
      01000100460065006C0001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D00430043006C006100730073004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006800650063006B0042006F007800500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031005000720069006300650050006500
      72004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D0065000100540063007800430061006C006300
      4500640069007400500072006F00700065007200740069006500730001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C0065006E0067007400680053007000650063002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780043006F006D0062006F0042006F007800500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400520061007700
      4D00740072006C0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004500780063006C00750064006500460072006F00
      6D0054006F00740061006C002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004500
      780063006C00750064006500460072006F006D0054006F00740061006C002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790055006E0063006800650063006B00650064000100460061006C007300
      65000100460065006C0001000100460065006C0001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031004500780063006C00750064006500
      460072006F006D0054006F00740061006C002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031004F0072006400650072004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031004F0072006400650072004E0061006D0065002E005000
      72006F0070006500720074006900650073002E004B0065007900460069006500
      6C0064004E0061006D006500730001004F0072006400650072004E006F000100
      0100010001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004F0072006400650072004E0061006D0065002E00500072006F0070006500
      720074006900650073002E004C006900730074004600690065006C0064004E00
      61006D006500730001004F0072006400650072004E006F005400650078007400
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004F0072006400650072004E0061006D0065002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006F006F006B007500700043006F006D0062006F0042006F00
      7800500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C0065005600690065007700310042006F006F00
      6B0065006400500072006F0064007500630074004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      5600690065007700310042006F006F006B0065006400500072006F0064007500
      630074004C0065006E006700740068004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006C0063005200610077005000490050004E00
      41004D0045002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D00650073000100500049005000
      4E006F0001000100010001000D000A006C006300520061007700500049005000
      4E0041004D0045002E00500072006F0070006500720074006900650073002E00
      4C006900730074004600690065006C0064004E0061006D006500730001004F00
      5200540001004F00520054000100430049005400590001004F00520054000100
      0D000A006C0063005200610077004C00490050004E0061006D0065002E005000
      72006F0070006500720074006900650073002E004B0065007900460069006500
      6C0064004E0061006D006500730001004C00490050004E006F00010001000100
      01000D000A006C0063005200610077004C00490050004E0061006D0065002E00
      500072006F0070006500720074006900650073002E004C006900730074004600
      690065006C0064004E0061006D006500730001004C0041004700450052004700
      520055005000500001000100530054004F0043004B002000470052004F005500
      5000010001000D000A00630062005000720069006E0074005200610077004D00
      740072006C0050006100720074002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790043006800650063006B006500
      6400010054007200750065000100530061006E00740001000100530061006E00
      740001000D000A00630062005000720069006E0074005200610077004D007400
      72006C0050006100720074002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790055006E0063006800650063006B00
      650064000100460061006C00730065000100460065006C000100010046006500
      6C0001000D000A0063006200530070006C00690074004200650066006F007200
      65004800790076006C0069006E0067002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      65006400010054007200750065000100530061006E0074000100010053006100
      6E00740001000D000A0063006200530070006C00690074004200650066006F00
      720065004800790076006C0069006E0067002E00500072006F00700065007200
      74006900650073002E0044006900730070006C006100790055006E0063006800
      650063006B00650064000100460061006C00730065000100460065006C000100
      0100460065006C0001000D000A006300620056006900730061004D0065006400
      640065006C0061006E00640065002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790043006800650063006B006500
      6400010054007200750065000100530061006E00740001000100530061006E00
      740001000D000A006300620056006900730061004D0065006400640065006C00
      61006E00640065002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790055006E0063006800650063006B0065006400
      0100460061006C00730065000100460065006C0001000100460065006C000100
      0D000A006700720064004E006500770050006B00670073004400420054006100
      62006C00650056006900650077003100500041004B00450054004E0052002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004E006500770050006B0067007300440042005400610062006C006500
      560069006500770031004C00450056004B004F0044002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780054006500780074004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004E006500
      770050006B0067007300440042005400610062006C0065005600690065007700
      3100500052004F00440055004B0054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004E006500770050006B00
      67007300440042005400610062006C0065005600690065007700310041004E00
      54005000450052004C004E00470044002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004E006500770050006B00
      67007300440042005400610062006C0065005600690065007700310041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078005400650078007400450064006900
      7400500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004E006500770050006B006700730044004200540061006200
      6C006500560069006500770031004E004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780054006500780074004500640069007400500072006F00700065007200
      740069006500730001000100010001000D000A006700720064004E0065007700
      50006B0067007300440042005400610062006C00650056006900650077003100
      53005400590043004B002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800540065007800
      74004500640069007400500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064004E006500770050006B00670073004400
      42005400610062006C006500560069006500770031004D00460042004D002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800540065007800740045006400690074005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004E006500770050006B0067007300440042005400610062006C006500
      5600690065007700310041004D0031002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064004E006500770050006B00
      67007300440042005400610062006C0065005600690065007700310050006B00
      67005300740061007400750073002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064004E006500770050006B006700730044004200
      5400610062006C00650056006900650077003100520065006700690073007400
      720065007200610064002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00670072006400550073006500640050006B0067007300440042005400
      610062006C00650056006900650077003100500041004B00450054004E005200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      550073006500640050006B0067007300440042005400610062006C0065005600
      69006500770031004C00450056004B004F0044002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00670072006400550073006500640050006B00
      67007300440042005400610062006C0065005600690065007700310050005200
      4F00440055004B0054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00670072006400550073006500640050006B0067007300440042005400
      610062006C0065005600690065007700310041004E0054005000450052004C00
      4E00470044002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      670072006400550073006500640050006B006700730044004200540061006200
      6C0065005600690065007700310041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00670072006400550073006500640050006B00
      67007300440042005400610062006C006500560069006500770031004E004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      6400550073006500640050006B0067007300440042005400610062006C006500
      5600690065007700310053005400590043004B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00670072006400550073006500640050006B00
      67007300440042005400610062006C006500560069006500770031004D004600
      42004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      72006400550073006500640050006B0067007300440042005400610062006C00
      65005600690065007700310041004D0031002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A00670072006400550073006500640050006B006700
      7300440042005400610062006C00650056006900650077003100520065006700
      690073007400720065007200610064002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0063007800530070006C00690074007400650072003100
      2E0048006F0074005A006F006E00650043006C006100730073004E0061006D00
      650001005400630078004D00650064006900610050006C006100790065007200
      38005300740079006C00650001000100010001000D000A00630062004D006100
      6E00750061006C00500072006F006400540069006D0065002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079004300
      6800650063006B0065006400010054007200750065000100530061006E007400
      01000100530061006E00740001000D000A00630062004D0061006E0075006100
      6C00500072006F006400540069006D0065002E00500072006F00700065007200
      74006900650073002E0044006900730070006C006100790055006E0063006800
      650063006B00650064000100460061006C00730065000100460065006C000100
      0100460065006C0001000D000A006300620056006900730061004B006F007200
      7400530074006F00700070002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A006300620056006900730061004B006F0072007400530074006F00
      700070002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790055006E0063006800650063006B006500640001004600
      61006C00730065000100460065006C0001000100460065006C0001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      440042005400610062006C00650056006900650077003100500072006F006400
      75006300740044006900730070006C00610079004E0061006D0065002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004F007500
      7400700075007400530075006D006D0061007200790044004200540061006200
      6C0065005600690065007700310041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004F0075007400700075007400
      530075006D006D00610072007900440042005400610062006C00650056006900
      65007700310041004D0031002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006700720064004F0075007400700075007400530075006D006D00
      610072007900440042005400610062006C006500560069006500770031004E00
      4D0033002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C0065005600690065007700310053005400590043004B00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4F0075007400700075007400530075006D006D00610072007900440042005400
      610062006C0065005600690065007700310055007400660061006C006C002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004F00
      75007400700075007400530075006D006D006100720079004400420054006100
      62006C00650056006900650077003100500072006F00640075006B0074005600
      7200640065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      440042005400610062006C006500560069006500770031006D00650064006500
      6C0070007200690073002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004F0075007400700075007400530075006D006D006100
      72007900440042005400610062006C006500560069006500770031004D006500
      640065006C0070007200690073005F0031002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A006300780047007200690064004400420054006100
      62006C00650056006900650077003200500061006B00650074004E0072002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006300780047007200
      69006400440042005400610062006C0065005600690065007700320050007200
      65006600690078002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      650077003200500072006F00640075006B0074002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00630078004700720069006400440042005400
      610062006C0065005600690065007700320053007400790063006B0050006500
      72004C0061006E00670064002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A006300780047007200690064004400420043006F006C0075006D00
      6E00310031002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6300780047007200690064004400420043006F006C0075006D006E0031003200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770032005400
      6F00740061006C00740053007400790063006B002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00630078004700720069006400440042004300
      6F006C0075006D006E00310033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A00630078004700720069006400440042005400610062006C00
      6500560069006500770032004F007000650072006100740069006F006E005300
      740061007400750073002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      69006500770032005300740061007400750073002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00630078004700720069006400440042005400
      610062006C006500560069006500770032004C0061006700650072002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0063007800470072006900
      6400440042005400610062006C00650056006900650077003200520065006700
      690073007400720065007200610064002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      540069006D0065004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A0063007800470072006900640044004200
      43006F006C0075006D006E0031002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E0032002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6300780047007200690064004400420043006F006C0075006D006E0033002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006300780047007200
      690064004400420043006F006C0075006D006E0034002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0063007800470072006900640044004200
      43006F006C0075006D006E0035002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E0036002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      6300780047007200690064004400420043006F006C0075006D006E0037002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006300780047007200
      690064004400420043006F006C0075006D006E0038002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0063007800470072006900640044004200
      43006F006C0075006D006E0039002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006300780047007200690064004400420043006F006C007500
      6D006E00310030002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      65007700310053006F007200740069006E0067004F0072006400650072004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0063007800
      4700720069006400440042005400610062006C00650056006900650077003100
      500072006F00640075006B0074002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A00630078004700720069006400440042005400610062006C00
      650056006900650077003100410063007400750061006C004C0065006E006700
      740068004D004D002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      650077003100410063007400750061006C0054006800690063006B006E006500
      730073004D004D002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      650077003100410063007400750061006C00570069006400740068004D004D00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00630078004700
      720069006400440042005400610062006C006500560069006500770031004100
      4D0033002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      31004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      65007700310053005400590043004B002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0063007800470072006900640044004200540061006200
      6C0065005600690065007700310041004D0031002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A00630078004700720069006400440042005400
      610062006C006500560069006500770031005300750072006600610063006900
      6E0067004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A00630078004700720069006400440042005400610062006C00650056006900
      650077003100500072006F0064007500630074004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006300780047007200690064004400
      42005400610062006C0065005600690065007700310050007200690073002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006300780047007200
      69006400440042005400610062006C0065005600690065007700310056007200
      640065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      310053006F007200740069006E0067004F00720064006500720052006F007700
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006300
      78004700720069006400440042005400610062006C0065005600690065007700
      31004E0054004D004D002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00630078004700720069006400440042005400610062006C0065005600
      69006500770031004E0042004D004D002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0063007800470072006900640044004200540061006200
      6C006500560069006500770031004E004C004D004D002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0063007800470072006900640044004200
      5400610062006C00650056006900650077003100410076007200550072006C00
      6100670067005000630073002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A00630078004700720069006400440042005400610062006C006500
      56006900650077003100550072006C006100670067002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B0065006400010054007200750065000100530061006E0074000100
      0100530061006E00740001000D000A0063007800470072006900640044004200
      5400610062006C00650056006900650077003100550072006C00610067006700
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      730065000100460065006C0001000100460065006C0001000D000A0063007800
      4700720069006400440042005400610062006C00650056006900650077003100
      550072006C006100670067002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043006800
      650063006B0042006F007800500072006F007000650072007400690065007300
      01000100010001000D000A006300780047007200690064004400420054006100
      62006C0065005600690065007700310050006300730041007400740041007600
      720061006B006E0061002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640049006E0070007500740050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C0065005600690065007700310053006F007200
      740069006E0067004F0072006400650072004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640049006E00700075007400
      50006B006700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100500072006F0064007500630074004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004900
      6E0070007500740050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031005200610077004D0074007200
      6C004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640049006E0070007500740050006B00670073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053005400
      590043004B002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640049006E0070007500740050006B00670073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640049006E0070007500740050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004E004D0033002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004900
      6E0070007500740050006B006700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310041004D0031002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640049006E007000
      7500740050006B006700730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100550072006C0061006700670050006300
      73002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640049006E0070007500740050006B006700730044004200420061006E006400
      650064005400610062006C00650056006900650077003100410064006A007500
      73007400650064005000690065006300650073002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640049006E007000750074005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100410064006A007500730074006500640041004D003300
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      49006E0070007500740050006B006700730044004200420061006E0064006500
      64005400610062006C00650056006900650077003100410064006A0075007300
      7400650064004E004D0033002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640049006E0070007500740050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100410064006A007500730074006500640041004D0031002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640049006E0070007500
      740050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C0061006D0065006C006C00650072002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004900
      6E0070007500740050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004B006100700053006E006900
      740074002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100450078007000
      650063007400650064005000630073004F00750074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640049006E00700075007400
      50006B006700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100410054004D004D002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640049006E007000750074005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100410042004D004D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640049006E0070007500740050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310041004C004D004D002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640049006E0070007500740050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E0054004D004D002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640049006E0070007500740050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004E0042004D004D002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640049006E0070007500740050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004C004D004D002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640049006E0070007500740050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      530069007A006500500065007200630065006E0074004F00660054006F007400
      61006C002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640049006E0070007500740050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500065007200
      630065006E007400410064006A005000630073002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640049006E007000750074005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004B006100730073005000630073002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640049006E0070007500
      740050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004B0061007300730041004D0033002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640049006E00
      70007500740050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004B0061007300730041004D003100
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      49006E0070007500740050006B006700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050007200690063006500
      5000650072004E004D0033002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640049006E0070007500740050006B00670073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500072006F006400750063007400560061006C00750065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0063007800530070006C006900
      740074006500720032002E0048006F0074005A006F006E00650043006C006100
      730073004E0061006D00650001005400630078004D0065006400690061005000
      6C00610079006500720038005300740079006C00650001000100010001000D00
      0A00630062005400610073006B0043006F006D0070006C006500740065004600
      690065006C0064002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790043006800650063006B006500640001005400
      7200750065000100530061006E00740001000100530061006E00740001000D00
      0A00630062005400610073006B0043006F006D0070006C006500740065004600
      690065006C0064002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790055006E0063006800650063006B0065006400
      0100460061006C00730065000100460065006C0001000100460065006C000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003100
      4B0072006E0072002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C006500560069006500770031004E0054002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770031004E0042002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      650077003100410054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C0065005600690065007700310041004200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C00650056006900650077003100500072006F00640075006B007400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C0065005600690065007700310041004D0033002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      560069006500770031004E004D0033002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      310041004D0031002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C00650056006900650077003100530074007900
      63006B002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C0065005600690065007700310056007200640065002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700310050007200690073002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      5600690065007700310055007400660061006C006C006F006E00460069006E00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C0065005600690065007700310055007400660061006C006C006F00
      6E005200610077002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C006500560069006500770032004B0072006E00
      72002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C00650056006900650077003200590065006100720057006500
      65006B002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C006500560069006500770032005600650072006B002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700320048007900760065006C002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      650056006900650077003200530074006100720074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800540069006D0065004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C0065005600690065007700320053006C00750074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      540063007800540069006D0065004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C0065005600690065007700320054006F00740061006C007400690064002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C0065005600690065007700320050006F00730074007400690064002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770032004800790076006C00610074004C005000
      4D002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C006500560069006500770032004C0050004D00700065007200
      4D0069006E002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C006500560069006500770032004E004D0033004900
      4E002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C006500560069006500770032004B006F007300740050006500
      72004E004D003300550074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770032004B00
      6100730073005F0053007400790063006B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      770032004B006100730073005F0041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      6500770032004600610072006400690067005600610072006100550074004E00
      4D0033002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C0065005600690065007700320046006100720064006900
      670056006100720061005500740041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      650077003200550072006C00670067005F0053007400790063006B002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C00650056006900650077003200410054004D004D002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      6900650077003200410042004D004D002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      32004E0054004D004D002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C006500560069006500770032004E004200
      4D004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C006500560069006500770032004B006F00730074005000
      650072004E004D0033005200610077002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      3300500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C0065005600690065007700330041004C004D004D00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F00720074004F00720064006500720052006F0077007300440042005400
      610062006C0065005600690065007700330053006F007200740069006E006700
      4F0072006400650072004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003300
      500072006F0064007500630074004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      770033005200610077004D00740072006C004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      690065007700330053005400590043004B002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F00720074004F0072006400
      6500720052006F0077007300440042005400610062006C006500560069006500
      7700330041004D0033002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C006500560069006500770033004E004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C0065005600690065007700330041004D0031002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      650056006900650077003300550072006C006100670067005000630073002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C00650056006900650077003300410064006A0075007300740065006400
      5000690065006300650073002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F00720074004F0072006400650072005200
      6F0077007300440042005400610062006C006500560069006500770033004100
      64006A007500730074006500640041004D0033002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F00720074004F007200
      64006500720052006F0077007300440042005400610062006C00650056006900
      650077003300410064006A00750073007400650064004E004D0033002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      720074004F00720064006500720052006F007700730044004200540061006200
      6C00650056006900650077003300410064006A00750073007400650064004100
      4D0031002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C006500560069006500770033004C0061006D0065006C00
      6C00650072002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F00720074004F00720064006500720052006F0077007300
      440042005400610062006C006500560069006500770033004B00610070005300
      6E006900740074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F00720074004F00720064006500720052006F007700
      7300440042005400610062006C00650056006900650077003300450078007000
      650063007400650064005000630073004F00750074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640053006F00720074004F00
      720064006500720052006F0077007300440042005400610062006C0065005600
      6900650077003300410054004D004D002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F00720074004F00720064006500
      720052006F0077007300440042005400610062006C0065005600690065007700
      3300410042004D004D002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F00720074004F00720064006500720052006F00
      77007300440042005400610062006C006500560069006500770033004E005400
      4D004D002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      7200640053006F00720074004F00720064006500720052006F00770073004400
      42005400610062006C006500560069006500770033004E0042004D004D002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F00720074004F00720064006500720052006F00770073004400420054006100
      62006C006500560069006500770033004E004C004D004D002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      4F00720064006500720052006F0077007300440042005400610062006C006500
      56006900650077003300530069007A006500500065007200630065006E007400
      4F00660054006F00740061006C002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F00720074004F007200640065007200
      52006F0077007300440042005400610062006C00650056006900650077003300
      500065007200630065006E007400410064006A005000630073002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      6500560069006500770033004B006100730073005000630073002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      6500560069006500770033004B0061007300730041004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      6500560069006500770033004B0061007300730041004D0031002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      74004F00720064006500720052006F0077007300440042005400610062006C00
      650056006900650077003300500072006900630065005000650072004E004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F00720074004F00720064006500720052006F007700730044004200
      5400610062006C00650056006900650077003300500072006F00640075006300
      7400560061006C00750065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      5400610062006C00650056006900650077003100500052004F00440055004B00
      54002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D006500010054006300780042007500740074006F006E004500
      640069007400500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      5400610062006C006500560069006500770031004C0065006E00670074006800
      4400650073006300720069007000740069006F006E002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780054006500780074004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F0077007300440042005400610062006C006500560069006500
      7700310041004C004D004D002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      440042005400610062006C0065005600690065007700310041004C004D004D00
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010041004C004D004D000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      440042005400610062006C0065005600690065007700310041004C004D004D00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006F006F006B007500700043006F00
      6D0062006F0042006F007800500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F007200740052006F007700
      7300440042005400610062006C0065005600690065007700310050006C006100
      6E006E006500640041004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      77007300440042005400610062006C0065005600690065007700310041004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078005400650078007400450064006900
      7400500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420054006100
      62006C006500560069006500770031005000500050002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780054006500780074004500640069007400500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F0077007300440042005400610062006C006500560069006500
      77003100450078004C006F0067002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      77007300440042005400610062006C0065005600690065007700310050006300
      7300500065007200420075006E0064006C0065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780054006500780074004500640069007400500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      740052006F0077007300440042005400610062006C0065005600690065007700
      3100460055004B0054004B0056004F0054002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      6500730001004D00430043006C006100730073004E006F000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042005400
      610062006C00650056006900650077003100460055004B0054004B0056004F00
      54002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001004D00430044006500
      73006300720069007000740069006F006E0001000100010001000D000A006700
      7200640053006F007200740052006F0077007300440042005400610062006C00
      650056006900650077003100460055004B0054004B0056004F0054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006F006F006B007500700043006F006D006200
      6F0042006F007800500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F007200740052006F00770073004400
      42005400610062006C006500560069006500770031005400410043004B004E00
      49004E0047002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D00650073000100570072006100
      700054007900700065004E006F0001000100010001000D000A00670072006400
      53006F007200740052006F0077007300440042005400610062006C0065005600
      69006500770031005400410043004B004E0049004E0047002E00500072006F00
      70006500720074006900650073002E004C006900730074004600690065006C00
      64004E0061006D00650073000100570072006100700054007900700065000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      440042005400610062006C006500560069006500770031005400410043004B00
      4E0049004E0047002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C006F006F006B00
      7500700043006F006D0062006F0042006F007800500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      740052006F0077007300440042005400610062006C0065005600690065007700
      310054007900700065004F00660042006F006100720064002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079004300
      6800650063006B0065006400010054007200750065000100530061006E007400
      01000100530061006E00740001000D000A0067007200640053006F0072007400
      52006F0077007300440042005400610062006C00650056006900650077003100
      54007900700065004F00660042006F006100720064002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010046006500
      6C0001000100460065006C0001000D000A0067007200640053006F0072007400
      52006F0077007300440042005400610062006C00650056006900650077003100
      54007900700065004F00660042006F006100720064002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780043006800650063006B0042006F007800500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C0065006E0067007400680044006500
      73006300720069007000740069006F006E002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780054006500780074004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031005000500050002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      7800430061006C0063004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310041004C004D004D002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C0065006E0067007400680053007000650063002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D006500010054006300780043006F006D0062006F0042006F00780050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C00650056006900650077003100460055004B0054004B00
      56004F0054002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D006500730001004D0043004300
      6C006100730073004E006F0001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100460055004B0054004B0056004F00
      54002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001004D00430044006500
      73006300720069007000740069006F006E0001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C00650056006900650077003100460055004B005400
      4B0056004F0054002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C006F006F006B00
      7500700043006F006D0062006F0042006F007800500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      740052006F007700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100540061007200670065007400500072006F00
      64007500630074002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790043006800650063006B006500640001005400
      7200750065000100530061006E00740001000100530061006E00740001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310054006100
      7200670065007400500072006F0064007500630074002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010046006500
      6C0001000100460065006C0001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100540061007200670065007400500072006F006400
      7500630074002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043006800650063006B00
      42006F007800500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      550072006C006100670067002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      550072006C006100670067002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790055006E0063006800650063006B00
      650064000100460061006C00730065000100460065006C000100010046006500
      6C0001000D000A0067007200640053006F007200740052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100550072006C006100670067002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      6800650063006B0042006F007800500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310045006E00640050006B00670041006C006C006F0077006500
      64002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790043006800650063006B006500640001005400720075006500
      0100530061006E00740001000100530061006E00740001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310045006E00640050006B00
      670041006C006C006F007700650064002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790055006E00630068006500
      63006B00650064000100460061006C00730065000100460065006C0001000100
      460065006C0001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310045006E00640050006B00670041006C006C006F00770065006400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780043006800650063006B0042006F007800
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004D0052004B00
      45002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078005400650078007400450064006900
      7400500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053007400
      61007400750073002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C004F00
      4E0052002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800540065007800740045006400
      69007400500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004300
      7500730074006F006D00650072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004500780070006F007200740052006F0077002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      43006800650063006B0065006400010054007200750065000100530061006E00
      740001000100530061006E00740001000D000A0067007200640053006F007200
      740052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004500780070006F007200740052006F007700
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      730065000100460065006C0001000100460065006C0001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004500780070006F007200
      740052006F0077002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004300680065006300
      6B0042006F007800500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F007200740052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005000720069006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D0065000100540063007800540065007800
      74004500640069007400500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C006100670065007200670072007500700070002E00500072006F00
      70006500720074006900650073002E004B00650079004600690065006C006400
      4E0061006D006500730001004C00490050004E006F0001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C006100
      670065007200670072007500700070002E00500072006F007000650072007400
      6900650073002E004C006900730074004600690065006C0064004E0061006D00
      6500730001004C00410047004500520047005200550050005000010001005300
      54004F0043004B002000470052004F0055005000010001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C006100670065007200
      670072007500700070002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C006F006F00
      6B007500700043006F006D0062006F0042006F007800500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310053006F007200740069006E0067004F00
      720064006500720052006F0077004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310050006C0061006E006E006500640041004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780054006500780074004500640069007400500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050006B006700500072006500
      6600690078002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780054006500780074004500
      640069007400500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E006F004F00660055006E006900740073002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780054006500780074004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310041004D0033002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031005000430053002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D0031002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C0065005600690065007700310050004B005400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310043006F007300740044006900
      730074002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800540065007800740045006400
      69007400500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      72006900630065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078005400650078007400
      4500640069007400500072006F00700065007200740069006500730001000100
      010001000D000A0067007200640053006F007200740052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500072006900730065006E006800650074002E00500072006F0070006500
      720074006900650073002E004B00650079004600690065006C0064004E006100
      6D00650073000100540065006D0070006C0061007400650055006E0069007400
      4E006F0001000100010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006900730065006E006800650074002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D00650073000100540065006D0070006C0061007400
      650055006E00690074004E0061006D00650001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720069007300
      65006E006800650074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C006F006F00
      6B007500700043006F006D0062006F0042006F007800500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050007200690073006C00690073007400
      61002E00500072006F0070006500720074006900650073002E004B0065007900
      4600690065006C0064004E0061006D00650073000100540065006D0070006C00
      6100740065004E006F0001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310050007200690073006C00690073007400
      61002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001005000720069006300
      65004C006900730074004E0061006D00650001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720069007300
      6C0069007300740061002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C006F006F00
      6B007500700043006F006D0062006F0042006F007800500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310053006F007200740069006E0067004F00
      72006400650072004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4300530044004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      72006F0064007500630074004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D00430043006C006100730073004E006F002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B0065006400010054007200750065000100530061006E0074000100
      0100530061006E00740001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004D00430043006C006100730073004E006F002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      0100460065006C0001000100460065006C0001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004D00430043006C00610073007300
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780043006800650063006B004200
      6F007800500072006F0070006500720074006900650073000100010001000100
      0D000A0067007200640053006F007200740052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004300
      72006500610074006500640055007300650072002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100440061007400650043007200650061007400650064002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4C0065006E006700740068004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310056006F006C0075006D00650055006E00690074004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500072006F00640049006E0073007400
      72007500630074004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      5000720069006300650055006E00690074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310053006F00720074004F0072006400650072002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E006F0074006500720069006E0067002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007400690063006B00
      5200650063006900700065002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780054006500
      780074004500640069007400500072006F007000650072007400690065007300
      01000100010001000D000A0067007200640053006F007200740052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310052006500660043006F0070006900650073002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078005300700069006E004500640069007400500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004C00670067006100720065002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D0065007300010053007400610063006B0065007200
      4E006F0001000100010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C00670067006100720065002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D0065007300010053007400610063006B00650072004E0061006D00
      650001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C00670067006100720065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006F006F006B007500700043006F006D0062006F0042006F007800
      500072006F00700065007200740069006500730001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006F00
      64004E004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041007200
      740069006B0065006C004B006F0064002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      54006500780074004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004B00760061006C0069007400650074002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      740052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031005400720073006C00610067002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A0067007200640053006F007200
      740052006F007700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100550074006600720061006E00640065002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310049004D0050002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100410054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A0067007200640053006F007200740052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100410042002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A0067007200640053006F007200740052006F00770073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E005400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004E0042002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004500780063006C00750064006500460072006F00
      6D0054006F00740061006C002E00500072006F00700065007200740069006500
      73002E0044006900730070006C006100790043006800650063006B0065006400
      010054007200750065000100530061006E00740001000100530061006E007400
      01000D000A0067007200640053006F007200740052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4500780063006C00750064006500460072006F006D0054006F00740061006C00
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      730065000100460065006C0001000100460065006C0001000D000A0067007200
      640053006F007200740052006F007700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004500780063006C007500
      64006500460072006F006D0054006F00740061006C002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780043006800650063006B0042006F007800500072006F0070006500
      7200740069006500730001000100010001000D000A0067007200640053006F00
      7200740052006F007700730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100500072006F00640075006B0074002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100560050005F00500072006F006400
      75006300740043006F00640065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310050006C0061006E006E00650064005000630073002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D0065000100540063007800430061006C006300450064006900740050007200
      6F00700065007200740069006500730001000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031002E00
      4F006C0064004E0061006D006500010043007500730074006F006D0020003100
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C006900730074002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74005000490050004E006F002E004F0072006900670069006E00010050004900
      50004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074004C00490050004E006F002E00
      4F0072006900670069006E0001004C00490050004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      690073007400500072006F006700720061006D004E006F002E004F0072006900
      670069006E000100500072006F006700720061006D004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740043006F006D006D0065006E00740073002E004F0072006900
      670069006E00010043006F006D006D0065006E00740073000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      6900730074005200650061006C0053007400610072007400540069006D006500
      2E004F0072006900670069006E0001005200650061006C005300740061007200
      7400540069006D00650001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005200650061006C00
      45006E006400540069006D0065002E004F0072006900670069006E0001005200
      650061006C0045006E006400540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74005200650061006C00500072006F00640075006300740069006F006E005400
      69006D0065002E004F0072006900670069006E0001005200650061006C005000
      72006F00640075006300740069006F006E00540069006D006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074005000720069006F004E006F002E004F007200690067006900
      6E0001005000720069006F004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004D00
      430043006C006100730073004E006F002E004F0072006900670069006E000100
      4D00430043006C006100730073004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4D006F007600650054006F004C00490050004E006F002E004F00720069006700
      69006E0001004D006F007600650054006F004C00490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740054007900700065004F006600520075006E004E006F00
      2E004F0072006900670069006E00010054007900700065004F00660052007500
      6E004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074004C00650067006F002E004F00
      72006900670069006E0001004C00650067006F000100010043006F006E007400
      7200610063007400200077006F0072006B00010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740054006500
      6D0070006C006100740065002E004F0072006900670069006E00010054006500
      6D0070006C0061007400650001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400540065006D00
      70006C006100740065004E0061006D0065002E004F0072006900670069006E00
      0100540065006D0070006C006100740065004E0061006D006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C00690073007400540065006D0070006C006100740065005500730065007200
      2E004F0072006900670069006E000100540065006D0070006C00610074006500
      550073006500720001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074004C004100470045005200
      530054004C004C0045002E004F0072006900670069006E0001005B004C004100
      47004500520053005400C4004C004C0045005D0001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      7400500052004F00440045004E004800450054002E004F007200690067006900
      6E000100500052004F00440045004E0048004500540001000100500052004F00
      4400200055004E0049005400010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074004C004100470045005200
      470052005500500050002E004F0072006900670069006E0001004C0041004700
      450052004700520055005000500001000100530054004F0043004B0020004700
      52004F0055005000010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C00690073007400500052004F004400550043004500
      4E0054002E004F0072006900670069006E000100500052004F00440055004300
      45004E00540001000100500052004F0044005500430045005200010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      7300740047004100520045002E004F0072006900670069006E0001005B00C400
      47004100520045005D0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005200760061007200
      61002E004F0072006900670069006E0001005B005200E5007600610072006100
      5D0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C0069007300740046007200640069006700760061007200
      61002E004F0072006900670069006E0001005B004600E4007200640069006700
      76006100720061005D0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004B0075006E006400
      2E004F0072006900670069006E0001004B0075006E0064000100010043007500
      730074006F006D0065007200010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740053007500720066006100
      630069006E00670042006B00670043006F006C006F0072002E004F0072006900
      670069006E00010053007500720066006100630069006E00670042006B006700
      43006F006C006F00720001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005300750072006600
      6100630069006E006700540065007800740043006F006C006F0072002E004F00
      72006900670069006E00010053007500720066006100630069006E0067005400
      65007800740043006F006C006F00720001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004900
      44002E004F0072006900670069006E0001004900440001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      73007400530074006100720074002E004F0072006900670069006E0001005300
      740061007200740001000100530074006100720074007300010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      7400460069006E006900730068002E004F0072006900670069006E0001004600
      69006E0069007300680001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005400610073006B00
      5300740061007400750073004600690065006C0064002E004F00720069006700
      69006E0001005400610073006B00530074006100740075007300460069006500
      6C00640001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C006900730074005200650073006F00750072006300
      6500490044002E004F0072006900670069006E0001005200650073006F007500
      7200630065004900440001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004400750072006100
      740069006F006E002E004F0072006900670069006E0001004400750072006100
      740069006F006E0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740046006900780065006400
      44006100740065002E004F0072006900670069006E0001004600690078006500
      6400440061007400650001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005900650061007200
      5700650065006B002E004F0072006900670069006E0001005900650061007200
      5700650065006B0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074005600650072006B004E00
      6F002E004F0072006900670069006E0001005600650072006B004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C0069007300740042006F006F006B0069006E0067004E006F002E00
      4F0072006900670069006E00010042006F006F006B0069006E0067004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C0069007300740050006F00730074006E0069006E0067007300
      7400690064002E004F0072006900670069006E00010050006F00730074006E00
      69006E006700730074006900640001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740050007200
      6500430061006C00630045006600660069006300690065006E00630079004600
      6100630074006F0072002E004F0072006900670069006E000100500072006500
      430061006C00630045006600660069006300690065006E006300790046006100
      630074006F00720001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740046006500650064005300
      70006500650064002E004F0072006900670069006E0001004600650065006400
      5300700065006500640001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C0069007300740050006C0061006E00
      6E0065006400500072006F00640075006300740069006F006E00540069006D00
      65002E004F0072006900670069006E00010050006C0061006E006E0065006400
      500072006F00640075006300740069006F006E00540069006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740050006C0061006E006E006500640057006F0072006B00
      69006E006700540069006D0065002E004F0072006900670069006E0001005000
      6C0061006E006E006500640057006F0072006B0069006E006700540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C006900730074004F0077006E00650072004E006F002E00
      4F0072006900670069006E0001004F0077006E00650072004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074005700650065006B004E006F002E004F00720069006700
      69006E0001005700650065006B004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      59006500610072004E006F002E004F0072006900670069006E00010059006500
      610072004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C00690073007400530074006F0070005400
      69006D0065002E004F0072006900670069006E000100530074006F0070005400
      69006D00650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074004C004F004E0052002E004F00
      72006900670069006E0001004C004F004E00520001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74004F007200670059006500610072005700650065006B002E004F0072006900
      670069006E0001004F007200670059006500610072005700650065006B000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074004E004D00330050006C0061006E00460061007200
      6400690067002E004F0072006900670069006E0001004E004D00330050006C00
      61006E0046006100720064006900670001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005500
      7400660061006C006C002E004F0072006900670069006E000100550074006600
      61006C006C00010001004F007500740063006F006D006500010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740042006F006F006B00650064004E004D0033002E004F007200690067006900
      6E00010042006F006F006B00650064004E004D00330001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074007300730070004E006F002E004F0072006900670069006E0001007300
      730070004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074004C004F0053002E004F00
      72006900670069006E0001004C004F00530001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      42006F006F006B006500640041004D0031002E004F0072006900670069006E00
      010042006F006F006B006500640041004D00310001000100010001000D000A00
      460044005F0053006F00720074004F00720064006500720052006F0077007300
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00460044005F0053006F0072007400
      4F00720064006500720052006F0077007300500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A00460044005F0053006F0072007400
      4F00720064006500720052006F00770073004B0072006E0072002E004F007200
      6900670069006E0001005B004B00F60072006E0072005D000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006F00
      770073004E0054002E004F0072006900670069006E0001004E00540001000100
      4E005400010001000D000A00460044005F0053006F00720074004F0072006400
      6500720052006F00770073004E0042002E004F0072006900670069006E000100
      4E004200010001004E005700010001000D000A00460044005F0053006F007200
      74004F00720064006500720052006F0077007300410054002E004F0072006900
      670069006E0001005B00410054005D0001000100010001000D000A0046004400
      5F0053006F00720074004F00720064006500720052006F007700730041004200
      2E004F0072006900670069006E00010041004200010001004100570001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006F00
      77007300500072006F00640075006B0074002E004F0072006900670069006E00
      0100500072006F00640075006B00740001000100500072006F00640075006300
      7400010001000D000A00460044005F0053006F00720074004F00720064006500
      720052006F007700730041004D0033002E004F0072006900670069006E000100
      41004D00330001000100010001000D000A00460044005F0053006F0072007400
      4F00720064006500720052006F00770073004E004D0033002E004F0072006900
      670069006E0001004E004D003300010001004E004D003300010001000D000A00
      460044005F0053006F00720074004F00720064006500720052006F0077007300
      41004D0031002E004F0072006900670069006E00010041004D00310001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      52006F007700730053007400790063006B002E004F0072006900670069006E00
      010053007400790063006B000100010050006300730001005300E40063006B00
      01000D000A00460044005F0053006F00720074004F0072006400650072005200
      6F007700730056007200640065002E004F0072006900670069006E0001005B00
      5600E4007200640065005D0001000100010001000D000A00460044005F005300
      6F00720074004F00720064006500720052006F00770073005000720069007300
      2E004F0072006900670069006E00010050007200690073000100010050007200
      690063006500010001000D000A00460044005F0053006F00720074004F007200
      64006500720052006F007700730055007400660061006C006C006F006E004600
      69006E002E004F0072006900670069006E00010055007400660061006C006C00
      6F006E00460069006E0001000100010001000D000A00460044005F0053006F00
      720074004F00720064006500720052006F007700730055007400660061006C00
      6C006F006E005200610077002E004F0072006900670069006E00010055007400
      660061006C006C006F006E0052006100770001000100010001000D000A004600
      44005F0053006F00720074004F00720064006500720052006F00770073005300
      6F007200740069006E0067004F0072006400650072004E006F002E004F007200
      6900670069006E00010053006F007200740069006E0067004F00720064006500
      72004E006F0001000100010001000D000A00460044005F0053004F0048006400
      72002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00460044005F0053004F004800
      640072004B0072006E0072002E004F0072006900670069006E0001005B004B00
      F60072006E0072005D0001000100010001000D000A00460044005F0053004F00
      48006400720059006500610072005700650065006B002E004F00720069006700
      69006E00010059006500610072005700650065006B0001000100010001000D00
      0A00460044005F0053004F004800640072005600650072006B002E004F007200
      6900670069006E0001005600650072006B00010001004D0069006C006C000100
      01000D000A00460044005F0053004F0048006400720048007900760065006C00
      2E004F0072006900670069006E00010048007900760065006C00010001000100
      01000D000A00460044005F0053004F0048006400720053007400610072007400
      2E004F0072006900670069006E00010053007400610072007400010001005300
      74006100720074007300010001000D000A00460044005F0053004F0048006400
      720054006F00740061006C007400690064002E004F0072006900670069006E00
      010054006F00740061006C0074006900640001000100010001000D000A004600
      44005F0053004F0048006400720050006F00730074007400690064002E004F00
      72006900670069006E00010050006F0073007400740069006400010001000100
      01000D000A00460044005F0053004F004800640072004800790076006C006100
      74004C0050004D002E004F0072006900670069006E0001004800790076006C00
      610074004C0050004D0001000100010001000D000A00460044005F0053004F00
      4800640072004C0050004D007000650072004D0069006E002E004F0072006900
      670069006E0001004C0050004D007000650072004D0069006E00010001000100
      01000D000A00460044005F0053004F004800640072004E004D00330049004E00
      2E004F0072006900670069006E0001004E004D00330049004E00010001000100
      01000D000A00460044005F0053004F004800640072004B006F00730074005000
      650072004E004D003300550074002E004F0072006900670069006E0001004B00
      6F00730074005000650072004E004D0033005500740001000100010001000D00
      0A00460044005F0053004F004800640072004B006100730073005F0041004D00
      33002E004F0072006900670069006E0001004B006100730073005F0041004D00
      330001000100010001000D000A00460044005F0053004F004800640072004B00
      6100730073005F0053007400790063006B002E004F0072006900670069006E00
      01004B006100730073005F0053007400790063006B0001000100010001000D00
      0A00460044005F0053004F0048006400720053006F007200740069006E006700
      4F0072006400650072004E006F002E004F0072006900670069006E0001005300
      6F007200740069006E0067004F0072006400650072004E006F00010001000100
      01000D000A00460044005F0053004F0048006400720046006100720064006900
      67005600610072006100550074004E004D0033002E004F007200690067006900
      6E0001004600610072006400690067005600610072006100550074004E004D00
      330001000100010001000D000A00460044005F0053004F004800640072004600
      6100720064006900670056006100720061005500740041004D0033002E004F00
      72006900670069006E0001004600610072006400690067005600610072006100
      5500740041004D00330001000100010001000D000A00460044005F0053004F00
      480064007200550072006C00670067005F0053007400790063006B002E004F00
      72006900670069006E0001005B00550072006C00E400670067005F0053007400
      790063006B005D0001000100010001000D000A00460044005F0053004F004800
      6400720053006C00750074002E004F0072006900670069006E00010053006C00
      750074000100010045006E006400010001000D000A00460044005F0053004F00
      480064007200410054004D004D002E004F0072006900670069006E0001004100
      54004D004D0001000100010001000D000A00460044005F0053004F0048006400
      7200410042004D004D002E004F0072006900670069006E000100410042004D00
      4D0001000100010001000D000A00460044005F0053004F004800640072004E00
      54004D004D002E004F0072006900670069006E0001004E0054004D004D000100
      0100010001000D000A00460044005F0053004F004800640072004E0042004D00
      4D002E004F0072006900670069006E0001004E0042004D004D00010001000100
      01000D000A00460044005F0053004F004800640072004B006F00730074005000
      650072004E004D0033005200610077002E004F0072006900670069006E000100
      4B006F00730074005000650072004E004D003300520061007700010001000100
      01000D000A00460044005F005200610077006D00740072006C002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00460044005F005200610077006D00740072006C00
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065002E004F0072006900670069006E000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A00460044005F005200610077006D00740072006C0053006F0072007400
      69006E0067004F0072006400650072004E006F002E004F007200690067006900
      6E00010053006F007200740069006E0067004F0072006400650072004E006F00
      01000100010001000D000A00460044005F005200610077006D00740072006C00
      500072006F0064007500630074004E006F002E004F0072006900670069006E00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      460044005F005200610077006D00740072006C005200610077004D0074007200
      6C004E006F002E004F0072006900670069006E0001005200610077004D007400
      72006C004E006F0001000100010001000D000A00460044005F00520061007700
      6D00740072006C0053005400590043004B002E004F0072006900670069006E00
      010053005400590043004B000100010050004300530001005300C40043004B00
      01000D000A00460044005F005200610077006D00740072006C0041004D003300
      2E004F0072006900670069006E00010041004D00330001000100010001000D00
      0A00460044005F005200610077006D00740072006C004E004D0033002E004F00
      72006900670069006E0001004E004D003300010001004E004D00330001000100
      0D000A00460044005F005200610077006D00740072006C0041004D0031002E00
      4F0072006900670069006E00010041004D00310001000100010001000D000A00
      460044005F005200610077006D00740072006C00550072006C00610067006700
      5000630073002E004F0072006900670069006E000100550072006C0061006700
      670050006300730001000100010001000D000A00460044005F00520061007700
      6D00740072006C00410064006A00750073007400650064005000690065006300
      650073002E004F0072006900670069006E000100460044006A00750073007400
      6500640050006900650063006500730001000100010001000D000A0046004400
      5F005200610077006D00740072006C00410064006A0075007300740065006400
      41004D0033002E004F0072006900670069006E000100460044006A0075007300
      74006500640041004D00330001000100010001000D000A00460044005F005200
      610077006D00740072006C00410064006A00750073007400650064004E004D00
      33002E004F0072006900670069006E000100460044006A007500730074006500
      64004E004D00330001000100010001000D000A00460044005F00520061007700
      6D00740072006C00410064006A007500730074006500640041004D0031002E00
      4F0072006900670069006E000100460044006A00750073007400650064004100
      4D00310001000100010001000D000A00460044005F005200610077006D007400
      72006C004C0061006D0065006C006C00650072002E004F007200690067006900
      6E0001004C0061006D0065006C006C006500720001000100010001000D000A00
      460044005F005200610077006D00740072006C004B006100700053006E006900
      740074002E004F0072006900670069006E0001004B006100700053006E006900
      7400740001000100010001000D000A00460044005F005200610077006D007400
      72006C00450078007000650063007400650064005000630073004F0075007400
      2E004F0072006900670069006E00010045007800700065006300740065006400
      5000630073004F007500740001000100010001000D000A00460044005F005200
      610077006D00740072006C00410054004D004D002E004F007200690067006900
      6E000100410054004D004D0001000100010001000D000A00460044005F005200
      610077006D00740072006C00410042004D004D002E004F007200690067006900
      6E000100410042004D004D0001000100010001000D000A00460044005F005200
      610077006D00740072006C0041004C004D004D002E004F007200690067006900
      6E00010041004C004D004D0001000100010001000D000A00460044005F005200
      610077006D00740072006C004E0054004D004D002E004F007200690067006900
      6E0001004E0054004D004D0001000100010001000D000A00460044005F005200
      610077006D00740072006C004E0042004D004D002E004F007200690067006900
      6E0001004E0042004D004D0001000100010001000D000A00460044005F005200
      610077006D00740072006C004E004C004D004D002E004F007200690067006900
      6E0001004E004C004D004D00010001004E004C004D004D00010001000D000A00
      460044005F005200610077006D00740072006C00530069007A00650050006500
      7200630065006E0074004F00660054006F00740061006C002E004F0072006900
      670069006E000100530069007A006500500065007200630065006E0074004F00
      660054006F00740061006C0001000100010001000D000A00460044005F005200
      610077006D00740072006C00500065007200630065006E007400410064006A00
      5000630073002E004F0072006900670069006E00010050006500720063006500
      6E007400410064006A0050006300730001000100010001000D000A0046004400
      5F005200610077006D00740072006C004B006100730073005000630073002E00
      4F0072006900670069006E0001004B0061007300730050006300730001000100
      010001000D000A00460044005F005200610077006D00740072006C004B006100
      7300730041004D0033002E004F0072006900670069006E0001004B0061007300
      730041004D00330001000100010001000D000A00460044005F00520061007700
      6D00740072006C004B0061007300730041004D0031002E004F00720069006700
      69006E0001004B0061007300730041004D00310001000100010001000D000A00
      460044005F005200610077006D00740072006C00500072006900630065005000
      650072004E004D0033002E004F0072006900670069006E000100500072006900
      630065005000650072004E004D00330001000100010001000D000A0046004400
      5F005200610077006D00740072006C00500072006F0064007500630074005600
      61006C00750065002E004F0072006900670069006E000100500072006F006400
      750063007400560061006C007500650001000100010001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031002E00440065007300690067006E00650072004300
      61007000740069006F006E00010046006F0072006D0061007400200052006500
      70006F0072007400010046006F0072006D006100740020007200610070007000
      6F00720074000100010046006F0072006D006100740020007200610070007000
      6F007200740001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0032002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010046006F007200
      6D0061007400200072006100700070006F00720074000100010046006F007200
      6D0061007400200072006100700070006F007200740001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0033002E00440065007300690067006E00650072004300
      61007000740069006F006E00010046006F0072006D0061007400200052006500
      70006F0072007400010046006F0072006D006100740020007200610070007000
      6F00720074000100010046006F0072006D006100740020007200610070007000
      6F007200740001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0034002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010046006F007200
      6D0061007400200072006100700070006F00720074000100010046006F007200
      6D0061007400200072006100700070006F007200740001000D000A006D007400
      500072006F0064007500630074002E00560065007200730069006F006E000100
      37002E00360033002E003000300020005300740061006E006400610072006400
      2000450064006900740069006F006E0001000100010001000D000A0073007100
      5F0047006500740050006B00670044006100740061002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730071005F0047006500740050006B006700440061007400
      6100500061006B00650074006E0072002E004F0072006900670069006E000100
      500061006B00650074006E0072000100500061006B00650074004E0072000100
      50006B0067004E006F000100500061006C006C004E00720001000D000A007300
      71005F0047006500740050006B00670044006100740061005000720065006600
      690078002E004F0072006900670069006E000100500072006500660069007800
      01000100500072006500660069007800010001000D000A00730071005F004700
      6500740050006B0067004400610074006100500072006F00640075006B007400
      2E004F0072006900670069006E000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A00730071005F004700
      6500740050006B006700440061007400610053007400790063006B0050006500
      72004C0061006E00670064002E004F0072006900670069006E00010053007400
      790063006B005000650072004C0061006E006700640001000100010001000D00
      0A00730071005F0047006500740050006B006700440061007400610041004D00
      33002E004F0072006900670069006E00010041004D0033000100010001000100
      0D000A00730071005F0047006500740050006B00670044006100740061005300
      7400790063006B002E004F0072006900670069006E0001005300740079006300
      6B000100010050006300730001005300E40063006B0001000D000A0073007100
      5F0047006500740050006B006700440061007400610041004D0031002E004F00
      72006900670069006E00010041004D00310001000100010001000D000A007300
      71005F0047006500740050006B00670044006100740061004E004D0033002E00
      4F0072006900670069006E0001004E004D003300010001004E004D0033000100
      01000D000A00730071005F0047006500740050006B0067004400610074006100
      5300740061007400750073002E004F0072006900670069006E00010053007400
      610074007500730001000100530074006100740075007300010001000D000A00
      730071005F0047006500740050006B0067004400610074006100500052004F00
      44005500430054004E004F002E004F0072006900670069006E00010050005200
      4F0044005500430054004E004F0001000100010001000D000A00730071005F00
      47006500740050006B00670044006100740061004C0061006700650072002E00
      4F0072006900670069006E0001004C0061006700650072000100010053007400
      6F0063006B00010001000D000A00730071005F0047006500740050006B006700
      44006100740061004D0032002E004F0072006900670069006E0001004D003200
      01000100010001000D000A00730071005F0047006500740050006B0067004400
      61007400610067006100720065002E004F0072006900670069006E0001005B00
      C40067006100720065005D0001000100010001000D000A00730071005F004700
      6500740050006B00670044006100740061004F0077006E00650072004E006F00
      2E004F0072006900670069006E0001004F0077006E00650072004E006F000100
      0100010001000D000A00730071005F0047006500740050006B00670044006100
      740061004C00490050004E006F002E004F0072006900670069006E0001004C00
      490050004E006F0001000100010001000D000A00730071005F00470065007400
      50006B006700440061007400610053007500700070006C006900650072004E00
      6F002E004F0072006900670069006E00010053007500700070006C0069006500
      72004E006F0001000100010001000D000A00730071005F004700650074005000
      6B00670044006100740061005000490050002E004F0072006900670069006E00
      010050004900500001000100010001000D000A00730071005F00470065007400
      50006B006700440061007400610053007500720066006100630069006E006700
      4E006F002E004F0072006900670069006E000100530075007200660061006300
      69006E0067004E006F0001000100010001000D000A00730071005F0047006500
      740050006B00670044006100740061005000610063006B006100670065005400
      7900700065004E006F002E004F0072006900670069006E000100500061006300
      6B0061006700650054007900700065004E006F0001000100010001000D000A00
      730071005F0047006500740050006B00670044006100740061004C0065006E00
      67007400680053007000650063004E006F002E004F0072006900670069006E00
      01004C0065006E0067007400680053007000650063004E006F00010001000100
      01000D000A00730071005F0047006500740050006B0067004400610074006100
      50006B0067004E006F00410074007400410076005200650067002E004F007200
      6900670069006E00010050006B0067004E006F00410074007400410076005200
      6500670001000100010001000D000A00730071005F0047006500740050006B00
      6700440061007400610050007200650066006900780041007400740041007600
      5200650067002E004F0072006900670069006E00010050007200650066006900
      78004100740074004100760052006500670001000100010001000D000A007300
      71005F0047006500740050006B00670044006100740061005000610063006B00
      61006700650054007900700065004E006F004100740074004100760052006500
      67002E004F0072006900670069006E0001005000610063006B00610067006500
      54007900700065004E006F004100740074004100760052006500670001000100
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0063006200530074006100
      7400750073002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0030005D002E0044006500730063007200690070007400
      69006F006E0001005000720065006C0069006D0069006E00E400720001000100
      5000720065006C0069006D0069006E00610072007900010001000D000A006300
      62005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0031005D002E004400650073006300
      720069007000740069006F006E0001004B006C00610072002000610074007400
      20006B00F60072006100010001005200650064007900200074006F0020006200
      65002000720075006E006E0065006400010001000D000A006300620053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0032005D002E004400650073006300720069007000
      740069006F006E0001005000E5006700E50065006E0064006500010001000100
      01000D000A00630062005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0033005D002E00
      4400650073006300720069007000740069006F006E0001004100760073006C00
      75007400610064000100010043006F006D0070006C0065007400650064000100
      01000D000A00630062005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0034005D002E00
      4400650073006300720069007000740069006F006E00010047006F0064006B00
      E4006E0064000100010041007000700072006F00760065006400010001000D00
      0A00630062005300740061007400750073002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0035005D002E0044006500
      73006300720069007000740069006F006E0001004F0075007400720065006400
      64000100010049006E0065006C00610062006F00720061007400650001000100
      0D000A00630062005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0036005D002E004400
      650073006300720069007000740069006F006E00010050006100750073006500
      01000100010001000D000A00630062005300740061007400750073002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      37005D002E004400650073006300720069007000740069006F006E0001004200
      6F006B006100640001000100010001000D000A00630062005300740061007400
      750073002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0038005D002E00440065007300630072006900700074006900
      6F006E000100500072006F00640075006B00740069006F006E0020006B006C00
      6100720001000100500072006F00640075006300740069006F006E0020006600
      69006E0069007300680065006400010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074002E0049006E006400
      65007800650073005B0030005D002E004600690065006C006400730001004900
      440001000100010001000D000A0067007200640049006E007000750074005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0030005D002E004300
      61007000740069006F006E000100500072006F00640075006B00740001000100
      500072006F006400750063007400010001000D000A0067007200640049006E00
      70007500740050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      31005D002E00430061007000740069006F006E00010041007600720065006700
      690073007400720065007200610074000100010055006E007200650067006900
      730074006500720065006400010001000D000A0067007200640049006E007000
      7500740050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003200
      5D002E00430061007000740069006F006E0001004B0061007300730061007400
      69006F006E0001000100010001000D000A0067007200640049006E0070007500
      740050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001004200650061007200620065007400
      6100740001000100010001000D000A0067007200640049006E00700075007400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0034005D002E00
      430061007000740069006F006E0001005600E400720064006500010001005600
      61006C0075006500010001000D000A0067007200640049006E00700075007400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0035005D002E00
      430061007000740069006F006E000100550072006C00E4006700670001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      2E00420061006E00640073005B0030005D002E00430061007000740069006F00
      6E000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0031005D002E004300610070007400
      69006F006E00010050006C0061006E006500720061006400200076006F006C00
      79006D0001000100010001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0032005D002E0043006100
      7000740069006F006E0001004600F60072006200720075006B00610064002000
      76006F006C0079006D0001000100010001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001004F00540048004500520001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4F0072006400650072004E0061006D0065002E00500072006F00700065007200
      74006900650073002E004C0069007300740043006F006C0075006D006E007300
      5B0030005D002E00430061007000740069006F006E0001004B006F006E007400
      720061006B00740001004F00720064006500720001004F007200640065007200
      01004F00720064006500720001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0030005D002E00
      430061007000740069006F006E000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006700720064005300
      6F007200740052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      31005D002E00430061007000740069006F006E0001004F005400480045005200
      530001000100010001000D000A0067007200640053006F007200740052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0032005D002E0043006100
      7000740069006F006E00010050006C0061006E0001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0033005D002E00430061007000740069006F006E0001005000
      72006F00640075006B00740069006F006E0001000100500072006F0064007500
      6300740069006F006E00010001000D000A0067007200640053006F0072007400
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031002E00420061006E00640073005B0034005D002E00
      430061007000740069006F006E0001004B00F60072006F007200640065007200
      6B006F00730074006E006100640001000100010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0035005D002E00430061007000740069006F006E000100D600760072006900
      67007400010001004F007400680065007200010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100460055004B0054004B005600
      4F0054002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004D004300440065007300630072006900700074006900
      6F006E0001000100010001000D000A0067007200640053006F00720074005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006100670065007200670072007500700070002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001004C004100470045005200470052005500500050000100010053005400
      4F0043004B002000470052004F0055005000010001000D000A00670072006400
      53006F007200740052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C0067006700610072006500
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      43006F006C0075006D006E0073005B0030005D002E0043006100700074006900
      6F006E0001004C00E4006700670061007200650001000100010001000D000A00
      67007200640053006F007200740052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500072006900
      730065006E006800650074002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E000100540065006D0070006C0061007400
      650055006E00690074004E0061006D00650001000100010001000D000A006700
      7200640053006F007200740052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720069007300
      6C0069007300740061002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E000100500072006900630065004C0069007300
      74004E0061006D00650001000100010001000D000A0067007200640053006F00
      7200740052006F0077007300440042005400610062006C006500560069006500
      7700310041004C004D004D002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010041004C004D004D00010001000100
      01000D000A0067007200640053006F007200740052006F007700730044004200
      5400610062006C00650056006900650077003100460055004B0054004B005600
      4F0054002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004D004300440065007300630072006900700074006900
      6F006E0001000100010001000D000A0067007200640053006F00720074005200
      6F0077007300440042005400610062006C006500560069006500770031005400
      410043004B004E0049004E0047002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E000100570072006100700054007900
      7000650001000100010001000D000A0067007200640053007000650063004C00
      610079006F0075007400440042005400610062006C0065005600690065007700
      31005000610063006B006100670065004C006F0067004C00610079006F007500
      74004E0061006D0065002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001005000610063006B006100670065004C00
      6F0067004C00610079006F00750074004E0061006D0065000100010001000100
      0D000A0067007200640057006F0072006B004F00720064006500720044004200
      5400610062006C00650056006900650077003100530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0030005D002E004400650073006300720069007000740069006F006E00
      01005000720065006C0069006D0069006E00E400720001000100500072006500
      6C0069006D0069006E00610072007900010001000D000A006700720064005700
      6F0072006B004F007200640065007200440042005400610062006C0065005600
      69006500770031005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0031005D002E004400
      650073006300720069007000740069006F006E0001004B006C00610072002000
      61007400740020006B00F6007200610001000100520065006400790020007400
      6F002000620065002000720075006E006E0065006400010001000D000A006700
      7200640057006F0072006B004F00720064006500720044004200540061006200
      6C006500560069006500770031005300740061007400750073002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003200
      5D002E004400650073006300720069007000740069006F006E0001005000E500
      6700E50065006E006400650001000100010001000D000A006700720064005700
      6F0072006B004F007200640065007200440042005400610062006C0065005600
      69006500770031005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0033005D002E004400
      650073006300720069007000740069006F006E0001004100760073006C007500
      7400610064000100010043006F006D0070006C00650074006500640001000100
      0D000A0067007200640057006F0072006B004F00720064006500720044004200
      5400610062006C00650056006900650077003100530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0034005D002E004400650073006300720069007000740069006F006E00
      010047006F0064006B00E4006E0064000100010041007000700072006F007600
      65006400010001000D000A0067007200640057006F0072006B004F0072006400
      65007200440042005400610062006C0065005600690065007700310053007400
      61007400750073002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0035005D002E004400650073006300720069007000
      740069006F006E0001004F007500740072006500640064000100010049006E00
      65006C00610062006F007200610074006500010001000D000A00670072006400
      57006F0072006B004F007200640065007200440042005400610062006C006500
      560069006500770031005300740061007400750073002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0036005D002E00
      4400650073006300720069007000740069006F006E0001005000610075007300
      650001000100010001000D000A0067007200640057006F0072006B004F007200
      640065007200440042005400610062006C006500560069006500770031005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0037005D002E00440065007300630072006900
      7000740069006F006E00010042006F006B006100640001000100010001000D00
      0A0067007200640057006F0072006B004F007200640065007200440042005400
      610062006C006500560069006500770031005300740061007400750073002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0038005D002E004400650073006300720069007000740069006F006E000100
      530061006D006D0061006E0066006F0067006100640001000100010001000D00
      0A00690063005300740072006100700054007900700065004E006F002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      30005D002E004400650073006300720069007000740069006F006E0001005300
      7400E5006C0001000100010001000D000A006900630053007400720061007000
      54007900700065004E006F002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0031005D002E0044006500730063007200
      69007000740069006F006E00010050006C006100730074000100010043006F00
      760065007200010001000D000A0069006300540069006400730045006E006800
      650074002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E0001004D0069006E007500740065007200010001004D0069006E007500
      740065007300010001000D000A0069006300540069006400730045006E006800
      650074002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0031005D002E00440065007300630072006900700074006900
      6F006E000100540069006D006D00610072000100010048006F00750072007300
      010001000D000A006C00630042006100720043006F00640065002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      42006100720043006F00640065000100530074007200650063006B006B006F00
      6400010042006100720063006F00640065000100530074007200650063006B00
      6B006F00640001000D000A006C00630043006F0072006E00500072006F007400
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      43006F006C0075006D006E0073005B0030005D002E0043006100700074006900
      6F006E00010043006F0072006E0065007200500072006F007400650063007400
      69006F006E0001004800F60072006E0073006B00790064006400010001004800
      F60072006E0073006B0079006400640001000D000A006C006300470072006100
      640065005300740061006D0070002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E000100470072006100640065005300
      740061006D00700001000100010001000D000A006C00630049004D0050002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E000100500072006F006400750063007400430061007400650067006F007200
      79004E0061006D00650001000100010001000D000A006C0063004C0061006700
      65007200670072007500700070002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E0001004C0041004700450052004700
      520055005000500001000100530054004F0043004B002000470052004F005500
      5000010001000D000A006C0063004C0061006E00670075006100670065006300
      6F00640065002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E0001004C0061006E00670075006100670065004E006100
      6D00650001000100010001000D000A006C0063004C0065006E00670074006800
      46006F0072006D00610074002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001004C0065006E006700740068004600
      6F0072006D006100740001000100010001000D000A006C0063004C0067006700
      6100720065002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010053007400610063006B00650072004E0061006D00
      650001000100010001000D000A006C0063005000610063006B00610067006500
      54007900700065004E0061006D0065002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E0001005000610063006B006100
      6700650054007900700065004E0061006D00650001000100010001000D000A00
      6C0063005000610070006500720057007200610070002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010057007200
      61007000540079007000650001000100010001000D000A006C00630050006B00
      6700530069007A0065002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001005000610063006B006100670065005300
      69007A0065004E0061006D00650001000100010001000D000A006C0063005000
      72006900730065006E006800650074002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E000100540065006D0070006C00
      61007400650055006E00690074004E0061006D00650001000100010001000D00
      0A006C00630050007200690073006C0069007300740061002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001005000
      72006900630065004C006900730074004E0061006D0065000100010001000100
      0D000A006C0063005200610077004C00490050004E0061006D0065002E005000
      72006F0070006500720074006900650073002E004C0069007300740043006F00
      6C0075006D006E0073005B0030005D002E00430061007000740069006F006E00
      01004C0041004700450052004700520055005000500001000100530054004F00
      43004B002000470052004F0055005000010001000D000A006C00630052006100
      77005000490050004E0041004D0045002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E0001004F005200540001004F00
      520054000100430049005400590001004F005200540001000D000A006C006300
      530069007A00650046006F0072006D00610074002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100530069007A00
      650046006F0072006D006100740001000100530069007A006500200066006F00
      72006D0061007400010001000D000A006C00630054007200750063006B005300
      740072006F002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010054007200750063006B0053007400690063006B00
      730001000100010001000D000A006C00630056006F006C0075006D0065004600
      6F0072006D00610074002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E00010056006F006C0075006D00650046006F00
      72006D006100740001000100010001000D000A006D007400500072006F006400
      7500630074002E0049006E0064006500780044006500660073005B0030005D00
      2E004600690065006C00640073000100500072006F0064007500630074004E00
      6F0001000100010001000D000A00720067004300650072007400690066006900
      65007200610064002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0030005D002E00430061007000740069006F006E00
      01004E0065006A00010001004E006F00010001000D000A007200670043006500
      7200740069006600690065007200610064002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0031005D002E0043006100
      7000740069006F006E000100500045004600430001000100010001000D000A00
      72006700430065007200740069006600690065007200610064002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003200
      5D002E00430061007000740069006F006E000100460053004300010001000100
      01000D000A007200670043006500720074006900660069006500720061006400
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0033005D002E00430061007000740069006F006E0001004A0041005300
      01000100010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A005400660072006D0053006F00
      720074004F0072006400650072000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078005300
      740079006C00650031000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C00650031005200650064000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780053007400
      79006C0065003100590065006C006C006F007700010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C00650032004D006F006E0065007900470072006500
      65006E000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065003300
      4600610072006400690067005600610072006100010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C00650037000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650047007200650065006E0042006F006C00640054006500
      780074000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065004C00
      6900670068007400590065006C006C006F007700010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C0065004E006F0072006D0061006C00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C0065004F006C006900760065000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00630078005300740079006C00650050006B0067004E00
      6F00740041007600610069006C000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A006400780042006100720050006F0070007500
      70004D0065006E00750053006F00720074004F00720064006500720052006F00
      770073000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0033000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B003400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      450064006900740031000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0046006F006E0074004400
      690061006C006F00670031000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006700720064005300
      6F007200740052006F00770073000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00470072006F00
      7500700042006F00780032000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A004C00610062006500
      6C00310038000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A004C006100620065006C0034003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A004C006100620065006C0035003600010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A004C006100620065006C0035003900010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      4C006100620065006C00360031000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00500061006E00
      65006C00310030000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00500061006E0065006C003300
      30000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00500061006E0065006C003300310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00500061006E0065006C003300330001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00500061006E0065006C00330036000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0050006100
      6E0065006C00330038000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00500061006E0065006C00
      4100760052006500670048006500610064006500720001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00500061006E0065006C005000610052006500670048006500610064006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00700067005300750062004100740074006500
      730074000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0070006D0041004F000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A0070006D004D00650072006700650042006F006F006B0069006E006700
      73000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A0070006D004F00740068006500720073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A0070006D005200610077004D00740072006C0001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A0070006D0053006F00720074004F0072006400650072005200
      6F00770073000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A0070006D0055007300650064005000
      6B00670073000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A005300700065006500640042007500
      740074006F006E0031000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0053007000650065006400
      42007500740074006F006E00310030000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0053007000
      65006500640042007500740074006F006E003100310001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A005300700065006500640042007500740074006F006E003100320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A005300700065006500640042007500740074006F006E003100
      33000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00530070006500650064004200750074007400
      6F006E00310034000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00530070006500650064004200
      7500740074006F006E0032000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A005300700065006500
      640042007500740074006F006E0033000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0053007000
      65006500640042007500740074006F006E003400010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      5300700065006500640042007500740074006F006E0035000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A005300700065006500640042007500740074006F006E00360001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A005300700065006500640042007500740074006F006E003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A005300700065006500640042007500740074006F00
      6E0038000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0053007000650065006400420075007400
      74006F006E0039000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00530074006100740075007300
      42006100720031000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00740073004100740074006500
      730074000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0074007300410076007300740061006D00
      6E0069006E006700520061007600610072006100010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00}
  end
end
