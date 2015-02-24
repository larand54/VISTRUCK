object frmGetProd_II: TfrmGetProd_II
  Left = 252
  Top = 138
  ActiveControl = meAT
  Caption = 'PRODUKTLISTA'
  ClientHeight = 635
  ClientWidth = 1051
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 591
    Width = 1051
    Height = 44
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 384
      Top = 5
      Width = 97
      Height = 33
      Caption = '&OK'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 504
      Top = 5
      Width = 97
      Height = 33
      Caption = '&Cancel'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 89
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 29
      Top = 48
      Width = 17
      Height = 13
      Caption = 'AT:'
    end
    object Label2: TLabel
      Left = 117
      Top = 48
      Width = 17
      Height = 13
      Caption = 'AB:'
    end
    object Label3: TLabel
      Left = 200
      Top = 48
      Width = 17
      Height = 13
      Caption = 'KV:'
    end
    object Label4: TLabel
      Left = 368
      Top = 48
      Width = 18
      Height = 13
      Caption = 'UT:'
    end
    object Label5: TLabel
      Left = 24
      Top = 72
      Width = 17
      Height = 13
      Caption = 'TS:'
    end
    object Label6: TLabel
      Left = 196
      Top = 72
      Width = 22
      Height = 13
      Caption = 'IMP.'
    end
    object bbSok: TBitBtn
      Left = 648
      Top = 8
      Width = 121
      Height = 33
      Action = acSearch
      Caption = '&S'#246'k'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B000000010000000100005A5A5A005263
        6B00846B6B009C6B6B00636B7300A5737300A57B73007B7B7B00AD847B00AD8C
        8400B58C8400EFBD8400BD8C8C00C6948C00BD9C8C00C69C8C00F7BD8C00F7C6
        8C00738494007B84940084849400C6949400C69C9400CE9C9400D69C9400BDA5
        9400CEA59400CEAD9400F7C69400F7CE94009C9C9C00BD9C9C00CE9C9C00D69C
        9C00CEA59C00F7CE9C00F7D69C003973A500C6A5A500ADADA500D6ADA500D6B5
        A500D6BDA500F7D6A500C6ADAD00D6B5AD00D6C6AD00DEC6AD00E7C6AD00E7CE
        FD00F7D6AD00F7DEAD00FFDEAD001873B5002173B5006394B500E7CEB500EFD6
        B500EFDEB500F7DEB500FFE7B5001873BD00E7D6BD00F7DEBD00F7E7BD00FFE7
        BD00FFEFBD00FFF7BD00EFDEC600EFE7C600FFEFC600FFF7C600FFF7CE003184
        D600FFFFD600C6CEDE00F7EFDE00FFEFDE00FFFFDE00EFEFE700FFF7E700FFFF
        E700218CEF00F7F7EF00FFFFEF00FFFFF700FF00FF0031A5FF0039A5FF0042A5
        FF004AB5FF0052BDFF005ABDFF007BC6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00560004165656
        5656565656565656565656565656565656562725361217565656565656565656
        5656565656565656565637585236131756565656565656565656565656565656
        56565A5C59523613175656565656565656565656565656565656575B5C595236
        13175656565656565656565656565656565656575B5C59523614175656565656
        565656565656565656565656575B5C5952361417565656565656565656565656
        5656565656575B5C59523614565656565656565656565656565656565656575B
        5C5849015656030A222928201556565656565656565656575B5D4B1E02093E48
        4A4E4A4A44225656565656565656565656564F2C1A484A4E4A4A4A4E4E4E2905
        565656565656565656562C1A4241484A4A4A4E4E515E5E265656565656565656
        56560C3A3C32484A4A4E5154555E5E4C065656565656565656562942232B484A
        4A4E54555E55544E1956565656565656561531421123464A4A4E545555544E4E
        2E155656565656565615393C0B113B4A4A4E515454514E4E3E0E565656565656
        56153942100B23464A4E4E4E4E4E4A4E3E0E56565656565656153142230B1C2B
        464A4E4A4A4A4A4E2E1556565656565656562842413323232B40484A4A4A4A4A
        0E5656565656565656560C3A4E544C231D1C324040464A440556565656565656
        5656560F505E5E3F1C0B101C3242460E5656565656565656565656561F4F5448
        3C33333C4240165656565656565656565656565656062A404242424030155656
        565656565656565656565656565656080F222216565656565656}
      TabOrder = 7
    end
    object meAT: TcxTextEdit
      Left = 47
      Top = 40
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 49
    end
    object meAB: TcxTextEdit
      Left = 136
      Top = 40
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      Width = 49
    end
    object bbProdReg: TBitBtn
      Left = 648
      Top = 43
      Width = 121
      Height = 33
      Action = acProductRegister
      Caption = '&Skapa produkt'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFBFBFB07FBFB07FBFB07FBFB07FBFBFDFDFDFDFDFDFDFDFD0707070707
        070707070707070707073FFDFDFDFDFDFDFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3FFDFDFDFDFDFDFD0707070707070707070707070707073F3F3FFDFDFD
        FDFDFDFBFBFB07FBFB07FBFB07FBFB07FBFB073F3F3FFDFDFDFDFD0707070707
        070707070707070707073F073F3F3FFDFDFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3F073F3F3FFDFDFD0707070707070707070707070707073F3F3F073F3F
        3FFDFDFBFBFB07FBFB07FBFB07FBFB07FBFB073F3F3F073F3FFDFD0707070707
        070707070707070707073F073F3F3F073FFDFDFBFBFB07FBFB07FBFB07FBFB07
        FBFB3F3F073F3F3F07FDFD3F3F3F073F3F073F3F073F3F073F3F3F3F3F073F3F
        3FFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3F3F073F3FFDFDFDFDFBFB07
        FBFB07FBFB07FBFB07FBFB073F3F3F073FFDFDFDFDFDFBFB07FBFB07FBFB07FB
        FB07FBFB073F3F3F07FDFDFDFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3F
        3FFDFDFDFDFDFDFDFBFB07FBFB07FBFB07FBFB07FBFB073F3FFDFDFDFDFDFDFD
        FDFBFB07FBFB07FBFB07FBFB07FBFB073FFDFDFDFDFDFDFDFDFDFBFB07FBFB07
        FBFB07FBFB07FBFB07FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      TabOrder = 9
      Visible = False
    end
    object lcGrade: TcxDBLookupComboBox
      Left = 220
      Top = 40
      DataBinding.DataField = 'GradeNo'
      DataBinding.DataSource = dsProduct
      Properties.ClearKey = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GradeNo'
      Properties.ListColumns = <
        item
          FieldName = 'GradeCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_grade
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 3
      Width = 141
    end
    object lcSpecies: TcxDBLookupComboBox
      Left = 47
      Top = 64
      DataBinding.DataField = 'SpeciesNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SpeciesNo'
      Properties.ListColumns = <
        item
          FieldName = 'SpeciesCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Species
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 5
      Width = 138
    end
    object lcSurfacing: TcxDBLookupComboBox
      Left = 413
      Top = 40
      DataBinding.DataField = 'SurfacingNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SurfacingNo'
      Properties.ListColumns = <
        item
          FieldName = 'SurfacingCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Surfacing
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 4
      Width = 217
    end
    object lcImpreg: TcxDBLookupComboBox
      Left = 220
      Top = 64
      DataBinding.DataField = 'ProductCategoryNo'
      DataBinding.DataSource = dsProduct
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.DropDownWidth = 220
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ProductCategoryNo'
      Properties.ListColumns = <
        item
          FieldName = 'ImpCodeName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_ProdCatg
      Properties.MaxLength = 0
      Style.ButtonTransparency = ebtHideInactive
      TabOrder = 6
      Width = 141
    end
    object bbClearFilter: TBitBtn
      Left = 776
      Top = 8
      Width = 121
      Height = 33
      Action = acClearFilter
      Caption = '&Rensa Filter'
      TabOrder = 8
    end
    object rgSequenceNo: TcxDBRadioGroup
      Left = 47
      Top = 3
      Caption = ' Varuslag '
      DataBinding.DataField = 'VaruSlag'
      DataBinding.DataSource = dsProduct
      Properties.Columns = 3
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = '&1 Tr'#228'varor'
          Value = 0
        end
        item
          Caption = '&2 Stolp'
          Value = 1
        end
        item
          Caption = '&3 Pall'
          Value = 2
        end>
      Properties.OnChange = rgSequenceNoPropertiesChange
      TabOrder = 0
      Height = 33
      Width = 211
    end
    object bbSkapaProdukt: TBitBtn
      Left = 776
      Top = 43
      Width = 121
      Height = 33
      Action = acCreateProduct
      Caption = 'Skapa produkt'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 10
      Visible = False
    end
  end
  object PageControl: TcxPageControl
    Left = 0
    Top = 89
    Width = 1051
    Height = 343
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tsProduktLista
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    ClientRectBottom = 339
    ClientRectLeft = 4
    ClientRectRight = 1047
    ClientRectTop = 24
    object tsProduktLista: TcxTabSheet
      Caption = 'Produkter'
      ImageIndex = 0
      object grdProdList: TcxGrid
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdProdListDBTableView1: TcxGridDBTableView
          PopupMenu = pmProduktList
          OnDblClick = grdProdListDBTableView1DblClick
          OnKeyDown = grdProdListDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_ProdList
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          object grdProdListDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1ProductGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductGroupNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1GradeName: TcxGridDBColumn
            Caption = 'KV'
            DataBinding.FieldName = 'GradeName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1SpeciesName: TcxGridDBColumn
            Caption = 'TS'
            DataBinding.FieldName = 'SpeciesName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1SurfacingName: TcxGridDBColumn
            Caption = 'UT'
            DataBinding.FieldName = 'SurfacingName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ProductCategoryName: TcxGridDBColumn
            Caption = 'IMP'
            DataBinding.FieldName = 'ProductCategoryName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ActualThicknessMM: TcxGridDBColumn
            Caption = 'AT'
            DataBinding.FieldName = 'ActualThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ActualWidthMM: TcxGridDBColumn
            Caption = 'AB'
            DataBinding.FieldName = 'ActualWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalThicknessMM: TcxGridDBColumn
            Caption = 'NT'
            DataBinding.FieldName = 'NominalThicknessMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalWidthMM: TcxGridDBColumn
            Caption = 'NB'
            DataBinding.FieldName = 'NominalWidthMM'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1ProductDisplayName: TcxGridDBColumn
            Caption = 'Produkt'
            DataBinding.FieldName = 'ProductDisplayName'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1GradeNo: TcxGridDBColumn
            DataBinding.FieldName = 'GradeNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1ProductCategoryNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductCategoryNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object grdProdListDBTableView1NominalThicknessINCH: TcxGridDBColumn
            Caption = 'TT'
            DataBinding.FieldName = 'NominalThicknessINCH'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdProdListDBTableView1NominalWidthINCH: TcxGridDBColumn
            Caption = 'TB'
            DataBinding.FieldName = 'NominalWidthINCH'
            PropertiesClassName = 'TcxLabelProperties'
          end
        end
        object grdProdListLevel1: TcxGridLevel
          GridView = grdProdListDBTableView1
        end
      end
    end
    object tsKundProdukter: TcxTabSheet
      Caption = 'Kundspecifika produkter'
      ImageIndex = 2
      TabVisible = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1043
          Height = 18
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Kund produkter'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdClientProd: TcxGrid
          Left = 0
          Top = 18
          Width = 1043
          Height = 297
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          object grdClientProdDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            Preview.Column = grdClientProdDBTableView1INTPRODUKT
            Preview.Visible = True
            object grdClientProdDBTableView1PRODUKT: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUKT'
              Width = 314
            end
            object grdClientProdDBTableView1LNGD: TcxGridDBColumn
              DataBinding.FieldName = 'L'#196'NGD'
              Width = 198
            end
            object grdClientProdDBTableView1PKTKOD: TcxGridDBColumn
              DataBinding.FieldName = 'PKTKOD'
            end
            object grdClientProdDBTableView1INTPRODUKT: TcxGridDBColumn
              DataBinding.FieldName = 'INTPRODUKT'
            end
            object grdClientProdDBTableView1ClientNo: TcxGridDBColumn
              DataBinding.FieldName = 'ClientNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductGroupNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductGroupNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProductLengthNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProductLengthNo'
              Visible = False
            end
            object grdClientProdDBTableView1CustomThickness: TcxGridDBColumn
              DataBinding.FieldName = 'CustomThickness'
              Visible = False
            end
            object grdClientProdDBTableView1CustomWidth: TcxGridDBColumn
              DataBinding.FieldName = 'CustomWidth'
              Visible = False
            end
            object grdClientProdDBTableView1CustomLength: TcxGridDBColumn
              DataBinding.FieldName = 'CustomLength'
              Visible = False
            end
            object grdClientProdDBTableView1PcsPerPkg: TcxGridDBColumn
              DataBinding.FieldName = 'PcsPerPkg'
              Visible = False
            end
            object grdClientProdDBTableView1PriceUnitNo: TcxGridDBColumn
              DataBinding.FieldName = 'PriceUnitNo'
              Visible = False
            end
            object grdClientProdDBTableView1VolumeUnitNo: TcxGridDBColumn
              DataBinding.FieldName = 'VolumeUnitNo'
              Visible = False
            end
            object grdClientProdDBTableView1PackageTypeNo: TcxGridDBColumn
              DataBinding.FieldName = 'PackageTypeNo'
              Visible = False
            end
            object grdClientProdDBTableView1ProdInstruNo: TcxGridDBColumn
              DataBinding.FieldName = 'ProdInstruNo'
              Visible = False
            end
          end
          object grdClientProdLevel1: TcxGridLevel
            GridView = grdClientProdDBTableView1
          end
        end
      end
    end
    object tsAnpassadLista: TcxTabSheet
      Caption = 'Anpassade produkter'
      ImageIndex = 1
      TabVisible = False
      object grdCustDimProd: TcxGrid
        Left = 0
        Top = 0
        Width = 1043
        Height = 315
        Align = alClient
        TabOrder = 0
        object grdCustDimProdDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          object grdCustDimProdDBTableView1NT: TcxGridDBColumn
            Caption = 'Special NT'
            DataBinding.FieldName = 'NT'
            Width = 77
          end
          object grdCustDimProdDBTableView1NW: TcxGridDBColumn
            Caption = 'Special NB'
            DataBinding.FieldName = 'NW'
            Width = 81
          end
          object grdCustDimProdDBTableView1GradeName: TcxGridDBColumn
            Caption = 'KV'
            DataBinding.FieldName = 'GradeName'
            Width = 142
          end
          object grdCustDimProdDBTableView1SpeciesName: TcxGridDBColumn
            Caption = 'TS'
            DataBinding.FieldName = 'SpeciesName'
            Width = 106
          end
          object grdCustDimProdDBTableView1SurfacingName: TcxGridDBColumn
            Caption = 'UT'
            DataBinding.FieldName = 'SurfacingName'
          end
          object grdCustDimProdDBTableView1ProductCategoryName: TcxGridDBColumn
            Caption = 'IMP'
            DataBinding.FieldName = 'ProductCategoryName'
            Width = 96
          end
          object grdCustDimProdDBTableView1ActualThicknessMM: TcxGridDBColumn
            Caption = 'AT'
            DataBinding.FieldName = 'ActualThicknessMM'
          end
          object grdCustDimProdDBTableView1ActualWidthMM: TcxGridDBColumn
            Caption = 'AB'
            DataBinding.FieldName = 'ActualWidthMM'
          end
          object grdCustDimProdDBTableView1NominalThicknessMM: TcxGridDBColumn
            Caption = 'INT.NT'
            DataBinding.FieldName = 'NominalThicknessMM'
          end
          object grdCustDimProdDBTableView1NominalWidthMM: TcxGridDBColumn
            Caption = 'INT.NB'
            DataBinding.FieldName = 'NominalWidthMM'
          end
          object grdCustDimProdDBTableView1ProductDisplayName: TcxGridDBColumn
            Caption = 'PRODUKT'
            DataBinding.FieldName = 'ProductDisplayName'
            Width = 235
          end
          object grdCustDimProdDBTableView1NominalThicknessINCH: TcxGridDBColumn
            Caption = 'TT'
            DataBinding.FieldName = 'NominalThicknessINCH'
          end
          object grdCustDimProdDBTableView1NominalWidthINCH: TcxGridDBColumn
            Caption = 'TB'
            DataBinding.FieldName = 'NominalWidthINCH'
          end
          object grdCustDimProdDBTableView1GradeNo: TcxGridDBColumn
            DataBinding.FieldName = 'GradeNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1SpeciesNo: TcxGridDBColumn
            DataBinding.FieldName = 'SpeciesNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductCategoryNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductCategoryNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1SurfacingNo: TcxGridDBColumn
            DataBinding.FieldName = 'SurfacingNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductGroupNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductGroupNo'
            Visible = False
          end
          object grdCustDimProdDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            Visible = False
          end
        end
        object grdCustDimProdLevel1: TcxGridLevel
          GridView = grdCustDimProdDBTableView1
        end
      end
    end
  end
  object PanelSelectedProducts: TPanel
    Left = 0
    Top = 440
    Width = 1051
    Height = 151
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1049
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Valda produkter'
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 8
        Top = 2
        Width = 89
        Height = 24
        Action = acDeleteSelectedProduct
        OptionsImage.Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B000000010000000000000031DE000031
          E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
          0404040404040404000004000004040404040404040404000004040000000404
          0404040404040000040404000000000404040404040000040404040402000000
          0404040400000404040404040404000000040000000404040404040404040400
          0101010004040404040404040404040401010204040404040404040404040400
          0201020304040404040404040404030201040403030404040404040404050203
          0404040405030404040404040303050404040404040303040404040303030404
          0404040404040403040403030304040404040404040404040404030304040404
          0404040404040404040404040404040404040404040404040404}
        TabOrder = 0
      end
    end
    object grdSelectedProducts: TcxGrid
      Left = 1
      Top = 29
      Width = 1049
      Height = 121
      Align = alClient
      TabOrder = 1
      object grdSelectedProductsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMarkedProd
        DataController.KeyFieldNames = 'ProductNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdSelectedProductsDBTableView1ProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 68
        end
        object grdSelectedProductsDBTableView1Produkt: TcxGridDBColumn
          DataBinding.FieldName = 'Produkt'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 345
        end
        object grdSelectedProductsDBTableView1ProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 106
        end
        object grdSelectedProductsDBTableView1Tab: TcxGridDBColumn
          DataBinding.FieldName = 'Tab'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 26
        end
        object grdSelectedProductsDBTableView1ProductGroupNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductGroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 81
        end
        object grdSelectedProductsDBTableView1NT: TcxGridDBColumn
          DataBinding.FieldName = 'NT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 27
        end
        object grdSelectedProductsDBTableView1NB: TcxGridDBColumn
          DataBinding.FieldName = 'NB'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 29
        end
        object grdSelectedProductsDBTableView1PRODUKTDESC: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUKTDESC'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 305
        end
      end
      object grdSelectedProductsLevel1: TcxGridLevel
        GridView = grdSelectedProductsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 432
    Width = 1051
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    InvertDirection = True
    Control = PageControl
    Color = clMaroon
    ParentColor = False
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 177
    Top = 172
  end
  object dsMarkedProd: TDataSource
    Left = 185
    Top = 342
  end
  object ActionList1: TActionList
    Left = 137
    Top = 174
    object acDeleteSelectedProduct: TAction
      Caption = 'Ta bort rad'
      OnExecute = acDeleteSelectedProductExecute
      OnUpdate = acDeleteSelectedProductUpdate
    end
    object acSearch: TAction
      Caption = '&S'#246'k'
      OnExecute = acSearchExecute
    end
    object acProductRegister: TAction
      Caption = '&Skapa produkt'
      OnExecute = acProductRegisterExecute
      OnUpdate = acProductRegisterUpdate
    end
    object acOK: TAction
      Caption = '&OK'
      OnUpdate = acOKUpdate
    end
    object acClearFilter: TAction
      Caption = '&Rensa Filter'
      OnExecute = acClearFilterExecute
    end
    object acCreateProduct: TAction
      Caption = 'Skapa produkt'
      OnExecute = acCreateProductExecute
      OnUpdate = acCreateProductUpdate
    end
    object acEditProdukt: TAction
      Caption = #196'ndra produkt'
      OnExecute = acEditProduktExecute
      OnUpdate = acEditProduktUpdate
    end
  end
  object mtProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'TotalPcs'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        DataType = ftFloat
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeNo'
        DataType = ftInteger
      end
      item
        Name = 'NT'
        DataType = ftFloat
      end
      item
        Name = 'NB'
        DataType = ftFloat
      end
      item
        Name = 'ProductCategoryNo'
        DataType = ftInteger
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'TagNo'
        DataType = ftInteger
      end
      item
        Name = 'Active'
        DataType = ftInteger
      end
      item
        Name = 'SizeFormat'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormat'
        DataType = ftInteger
      end
      item
        Name = 'VolumeFormat'
        DataType = ftInteger
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'VaruSlag'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 139
    Top = 296
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProductGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtProductBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtProductTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
    end
    object mtProductProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProductAT: TFloatField
      FieldName = 'AT'
    end
    object mtProductAB: TFloatField
      FieldName = 'AB'
    end
    object mtProductSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtProductSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtProductGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object mtProductNT: TFloatField
      FieldName = 'NT'
    end
    object mtProductNB: TFloatField
      FieldName = 'NB'
    end
    object mtProductProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object mtProductMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtProductTagNo: TIntegerField
      FieldName = 'TagNo'
    end
    object mtProductMarknadsRegion: TStringField
      FieldKind = fkLookup
      FieldName = 'MarknadsRegion'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      Size = 10
      Lookup = True
    end
    object mtProductActive: TIntegerField
      FieldName = 'Active'
    end
    object mtProductSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
    end
    object mtProductLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
    end
    object mtProductVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
    end
    object mtProductLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object mtProductVaruSlag: TIntegerField
      FieldName = 'VaruSlag'
    end
  end
  object dsProduct: TDataSource
    DataSet = mtProduct
    Left = 136
    Top = 340
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 265
    Top = 174
    object GtillATfltet1: TMenuItem
      Caption = 'G'#229' till AT f'#228'ltet'
      ShortCut = 32833
      OnClick = GtillATfltet1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdProdList
    PopupMenus = <>
    Left = 305
    Top = 230
  end
  object pmProduktList: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 97
    Top = 174
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 217
    Top = 174
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = acEditProdukt
      Category = 0
    end
  end
  object ds_Species: TDataSource
    DataSet = cds_Species
    Left = 470
    Top = 376
  end
  object ds_grade: TDataSource
    DataSet = cds_grade
    Left = 542
    Top = 376
  end
  object ds_Surfacing: TDataSource
    DataSet = cds_Surfacing
    Left = 606
    Top = 376
  end
  object ds_ProdCatg: TDataSource
    DataSet = cds_ProdCatg
    Left = 686
    Top = 376
  end
  object ds_ProdList: TDataSource
    DataSet = cds_ProdList
    Left = 414
    Top = 379
  end
  object cds_ProdList: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT pg.SequenceNo, pd.ProductNo, pg.ProductGroupNo, gd.GradeN' +
        'ame,'
      'sc.SpeciesName, sf.SurfacingName,'
      
        'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, p' +
        'g.NominalWidthMM,'
      
        'pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.ProductCateg' +
        'oryNo,'
      'pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthINCH,'
      'Case WHEN pc2.ImpregInProdName = 1 THEN pc.ProductCategoryName'
      'ELSE'
      #39#39
      'END AS ProductCategoryName,'
      ''
      
        'pd.Act AS ProductAct, pg.Act AS ProductGroupAct, sc.Act AS Speci' +
        'esAct,'
      'sf.Act AS SurfacingAct, pc.Act AS ImpAct, gd.Act AS GradeAct'
      ''
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      'AND gd.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'AND pc.LanguageCode = :LanguageCode'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      'AND sc.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      'AND sf.LanguageCode = :LanguageCode'
      
        'INNER JOIN      dbo.ProductCategory pc2 ON       pg.ProductCateg' +
        'oryNo = pc2.ProductCategoryNo'
      'AND pc2.LanguageCode = 1'
      ''
      'WHERE'
      '((pd.ProductNo = :ProductNo) OR (0 = :ProductNo))'
      ''
      '')
    Left = 417
    Top = 334
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdListSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdListProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProdListGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProdListSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProdListSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProdListActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProdListActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProdListNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProdListNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProdListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object cds_ProdListGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProdListSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProdListProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProdListSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProdListNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProdListNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object cds_ProdListProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 40
    end
    object cds_ProdListProductAct: TIntegerField
      FieldName = 'ProductAct'
      Origin = 'ProductAct'
    end
    object cds_ProdListProductGroupAct: TIntegerField
      FieldName = 'ProductGroupAct'
      Origin = 'ProductGroupAct'
    end
    object cds_ProdListSpeciesAct: TIntegerField
      FieldName = 'SpeciesAct'
      Origin = 'SpeciesAct'
    end
    object cds_ProdListSurfacingAct: TIntegerField
      FieldName = 'SurfacingAct'
      Origin = 'SurfacingAct'
    end
    object cds_ProdListImpAct: TIntegerField
      FieldName = 'ImpAct'
      Origin = 'ImpAct'
    end
    object cds_ProdListGradeAct: TIntegerField
      FieldName = 'GradeAct'
      Origin = 'GradeAct'
    end
  end
  object cds_Species: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      
        'IsNull(S.speciescode,'#39#39') + '#39' - '#39' + IsNull(S.speciesName,'#39#39') AS S' +
        'peciesCodeName'
      ''
      'FROM dbo.Species S'
      'WHERE S.LanguageCode = 1'
      'AND S.Act = 1'
      'Order By S.speciescode, S.speciesName')
    Left = 465
    Top = 334
    object cds_SpeciesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_SpeciesLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SpeciesSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SpeciesCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SpeciesModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SpeciesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SpeciesAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SpeciesSpeciesCode: TStringField
      FieldName = 'SpeciesCode'
      Origin = 'SpeciesCode'
      Size = 5
    end
    object cds_SpeciesSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      Size = 10
    end
    object cds_SpeciesDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SpeciesSpeciesCodeName: TStringField
      FieldName = 'SpeciesCodeName'
      Origin = 'SpeciesCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_grade: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select G.*,'
      
        'IsNull(g.gradecode,'#39#39') + '#39' - '#39' + IsNull(G.GradeName,'#39#39')  AS Grad' +
        'eCodeName'
      ''
      'FROM dbo.Grade G'
      'WHERE G.LanguageCode = 1'
      'AND G.Act = 1'
      'Order By g.gradecode, G.GradeName')
    Left = 537
    Top = 334
    object cds_gradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_gradeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_gradeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_gradeCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_gradeModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_gradeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_gradeMainGradeNo: TIntegerField
      FieldName = 'MainGradeNo'
      Origin = 'MainGradeNo'
    end
    object cds_gradeAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_gradeGradeCode: TStringField
      FieldName = 'GradeCode'
      Origin = 'GradeCode'
      Size = 5
    end
    object cds_gradeDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_gradeGradeCodeName: TStringField
      FieldName = 'GradeCodeName'
      Origin = 'GradeCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_Surfacing: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select S.*,'
      
        'IsNull(S.Surfacingcode,'#39#39') + '#39' - '#39' + IsNull(S.SurfacingName,'#39#39') ' +
        'AS SurfacingCodeName'
      ''
      'FROM dbo.Surfacing S'
      'WHERE S.LanguageCode = 1'
      'and S.Act = 1'
      'Order By S.Surfacingcode, S.SurfacingName')
    Left = 601
    Top = 326
    object cds_SurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_SurfacingLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SurfacingSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SurfacingCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SurfacingModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SurfacingDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SurfacingAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_SurfacingSurfacingCode: TStringField
      FieldName = 'SurfacingCode'
      Origin = 'SurfacingCode'
      Size = 5
    end
    object cds_SurfacingDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_SurfacingKortNamn: TStringField
      FieldName = 'KortNamn'
      Origin = 'KortNamn'
      Size = 5
    end
    object cds_SurfacingSurfacingCodeName: TStringField
      FieldName = 'SurfacingCodeName'
      Origin = 'SurfacingCodeName'
      ReadOnly = True
      Required = True
      Size = 38
    end
  end
  object cds_ProdCatg: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select pc.*,'
      ''
      
        'IsNull(pc.ImpCode,'#39#39') + '#39' - '#39' + IsNull(pc.ProductCategoryName,'#39#39 +
        ') AS ImpCodeName'
      ''
      'FROM dbo.ProductCategory pc'
      'WHERE pc.LanguageCode = 1'
      'and pc.Act = 1'
      'Order By pc.ImpCode, pc.ProductCategoryName')
    Left = 681
    Top = 318
    object cds_ProdCatgProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Size = 40
    end
    object cds_ProdCatgProductCategoryExternalCode: TIntegerField
      FieldName = 'ProductCategoryExternalCode'
      Origin = 'ProductCategoryExternalCode'
    end
    object cds_ProdCatgSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdCatgCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdCatgModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdCatgDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdCatgAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
    object cds_ProdCatgImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object cds_ProdCatgImpregInProdName: TIntegerField
      FieldName = 'ImpregInProdName'
      Origin = 'ImpregInProdName'
    end
    object cds_ProdCatgLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdCatgDKCode: TStringField
      FieldName = 'DKCode'
      Origin = 'DKCode'
      Size = 2
    end
    object cds_ProdCatgImpCodeName: TStringField
      FieldName = 'ImpCodeName'
      Origin = 'ImpCodeName'
      ReadOnly = True
      Required = True
      Size = 48
    end
  end
  object siLangLinked_frmGetProd_II: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
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
    Left = 520
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00470065007400500072006F0064005F00
      490049000100500052004F00440055004B0054004C0049005300540041000100
      010001000D000A00620062004F004B00010026004F004B000100010001000D00
      0A0062006200430061006E00630065006C0001002600430061006E0063006500
      6C000100010001000D000A004C006100620065006C0031000100410054003A00
      0100010001000D000A004C006100620065006C0032000100410042003A000100
      010001000D000A004C006100620065006C00330001004B0056003A0001000100
      01000D000A004C006100620065006C0034000100550054003A00010001000100
      0D000A004C006100620065006C0035000100540053003A000100010001000D00
      0A004C006100620065006C003600010049004D0050002E000100010001000D00
      0A0072006700530065007100750065006E00630065004E006F00010020005600
      61007200750073006C006100670020000100010001000D000A00740073005000
      72006F00640075006B0074004C0069007300740061000100500072006F006400
      75006B007400650072000100010001000D000A00670072006400500072006F00
      64004C00690073007400440042005400610062006C0065005600690065007700
      3100500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F000100010001000D000A00670072006400500072006F006400
      4C00690073007400440042005400610062006C00650056006900650077003100
      500072006F006400750063007400470072006F00750070004E006F0001005000
      72006F006400750063007400470072006F00750070004E006F00010001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C00650056006900650077003100470072006100640065004E006100
      6D00650001004B0056000100010001000D000A00670072006400500072006F00
      64004C00690073007400440042005400610062006C0065005600690065007700
      310053007000650063006900650073004E0061006D0065000100540053000100
      010001000D000A00670072006400500072006F0064004C006900730074004400
      42005400610062006C0065005600690065007700310053007500720066006100
      630069006E0067004E0061006D0065000100550054000100010001000D000A00
      670072006400500072006F0064004C0069007300740044004200540061006200
      6C00650056006900650077003100500072006F00640075006300740043006100
      7400650067006F00720079004E0061006D006500010049004D00500001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100410063007400750061006C00
      54006800690063006B006E006500730073004D004D0001004100540001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100410063007400750061006C00
      570069006400740068004D004D000100410042000100010001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      6500560069006500770031004E006F006D0069006E0061006C00540068006900
      63006B006E006500730073004D004D0001004E0054000100010001000D000A00
      670072006400500072006F0064004C0069007300740044004200540061006200
      6C006500560069006500770031004E006F006D0069006E0061006C0057006900
      6400740068004D004D0001004E0042000100010001000D000A00670072006400
      500072006F0064004C00690073007400440042005400610062006C0065005600
      6900650077003100500072006F00640075006300740044006900730070006C00
      610079004E0061006D0065000100500072006F00640075006B00740001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100470072006100640065004E00
      6F000100470072006100640065004E006F000100010001000D000A0067007200
      6400500072006F0064004C00690073007400440042005400610062006C006500
      5600690065007700310053007000650063006900650073004E006F0001005300
      7000650063006900650073004E006F000100010001000D000A00670072006400
      500072006F0064004C00690073007400440042005400610062006C0065005600
      6900650077003100500072006F00640075006300740043006100740065006700
      6F00720079004E006F000100500072006F006400750063007400430061007400
      650067006F00720079004E006F000100010001000D000A006700720064005000
      72006F0064004C00690073007400440042005400610062006C00650056006900
      65007700310053007500720066006100630069006E0067004E006F0001005300
      7500720066006100630069006E0067004E006F000100010001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      6500560069006500770031004E006F006D0069006E0061006C00540068006900
      63006B006E0065007300730049004E0043004800010054005400010001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031004E006F006D0069006E0061006C00
      5700690064007400680049004E00430048000100540042000100010001000D00
      0A00740073004B0075006E006400500072006F00640075006B00740065007200
      01004B0075006E00640073007000650063006900660069006B00610020007000
      72006F00640075006B007400650072000100010001000D000A00500061006E00
      65006C00340001004B0075006E0064002000700072006F00640075006B007400
      650072000100010001000D000A0067007200640043006C00690065006E007400
      500072006F006400440042005400610062006C00650056006900650077003100
      500052004F00440055004B0054000100500052004F00440055004B0054000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C006500560069006500770031004C004E004700
      440001004C00C4004E00470044000100010001000D000A006700720064004300
      6C00690065006E007400500072006F006400440042005400610062006C006500
      5600690065007700310050004B0054004B004F004400010050004B0054004B00
      4F0044000100010001000D000A0067007200640043006C00690065006E007400
      500072006F006400440042005400610062006C00650056006900650077003100
      49004E005400500052004F00440055004B005400010049004E00540050005200
      4F00440055004B0054000100010001000D000A0067007200640043006C006900
      65006E007400500072006F006400440042005400610062006C00650056006900
      65007700310043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F000100010001000D000A0067007200640043006C0069006500
      6E007400500072006F006400440042005400610062006C006500560069006500
      77003100500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F000100010001000D000A0067007200640043006C006900
      65006E007400500072006F006400440042005400610062006C00650056006900
      650077003100500072006F006400750063007400470072006F00750070004E00
      6F000100500072006F006400750063007400470072006F00750070004E006F00
      0100010001000D000A0067007200640043006C00690065006E00740050007200
      6F006400440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      0D000A0067007200640043006C00690065006E007400500072006F0064004400
      42005400610062006C0065005600690065007700310043007500730074006F00
      6D0054006800690063006B006E00650073007300010043007500730074006F00
      6D0054006800690063006B006E006500730073000100010001000D000A006700
      7200640043006C00690065006E007400500072006F0064004400420054006100
      62006C0065005600690065007700310043007500730074006F006D0057006900
      640074006800010043007500730074006F006D00570069006400740068000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C00650056006900650077003100430075007300
      74006F006D004C0065006E00670074006800010043007500730074006F006D00
      4C0065006E006700740068000100010001000D000A0067007200640043006C00
      690065006E007400500072006F006400440042005400610062006C0065005600
      690065007700310050006300730050006500720050006B006700010050006300
      730050006500720050006B0067000100010001000D000A006700720064004300
      6C00690065006E007400500072006F006400440042005400610062006C006500
      560069006500770031005000720069006300650055006E00690074004E006F00
      01005000720069006300650055006E00690074004E006F000100010001000D00
      0A0067007200640043006C00690065006E007400500072006F00640044004200
      5400610062006C0065005600690065007700310056006F006C0075006D006500
      55006E00690074004E006F00010056006F006C0075006D00650055006E006900
      74004E006F000100010001000D000A0067007200640043006C00690065006E00
      7400500072006F006400440042005400610062006C0065005600690065007700
      31005000610063006B0061006700650054007900700065004E006F0001005000
      610063006B0061006700650054007900700065004E006F000100010001000D00
      0A0067007200640043006C00690065006E007400500072006F00640044004200
      5400610062006C00650056006900650077003100500072006F00640049006E00
      73007400720075004E006F000100500072006F00640049006E00730074007200
      75004E006F000100010001000D000A007400730041006E007000610073007300
      610064004C006900730074006100010041006E00700061007300730061006400
      65002000700072006F00640075006B007400650072000100010001000D000A00
      6700720064004300750073007400440069006D00500072006F00640044004200
      5400610062006C006500560069006500770031004E0054000100530070006500
      6300690061006C0020004E0054000100010001000D000A006700720064004300
      750073007400440069006D00500072006F006400440042005400610062006C00
      6500560069006500770031004E00570001005300700065006300690061006C00
      20004E0042000100010001000D000A0067007200640043007500730074004400
      69006D00500072006F006400440042005400610062006C006500560069006500
      77003100470072006100640065004E0061006D00650001004B00560001000100
      01000D000A006700720064004300750073007400440069006D00500072006F00
      6400440042005400610062006C00650056006900650077003100530070006500
      63006900650073004E0061006D0065000100540053000100010001000D000A00
      6700720064004300750073007400440069006D00500072006F00640044004200
      5400610062006C00650056006900650077003100530075007200660061006300
      69006E0067004E0061006D0065000100550054000100010001000D000A006700
      720064004300750073007400440069006D00500072006F006400440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      430061007400650067006F00720079004E0061006D006500010049004D005000
      0100010001000D000A006700720064004300750073007400440069006D005000
      72006F006400440042005400610062006C006500560069006500770031004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      0100410054000100010001000D000A0067007200640043007500730074004400
      69006D00500072006F006400440042005400610062006C006500560069006500
      77003100410063007400750061006C00570069006400740068004D004D000100
      410042000100010001000D000A00670072006400430075007300740044006900
      6D00500072006F006400440042005400610062006C0065005600690065007700
      31004E006F006D0069006E0061006C0054006800690063006B006E0065007300
      73004D004D00010049004E0054002E004E0054000100010001000D000A006700
      720064004300750073007400440069006D00500072006F006400440042005400
      610062006C006500560069006500770031004E006F006D0069006E0061006C00
      570069006400740068004D004D00010049004E0054002E004E00420001000100
      01000D000A006700720064004300750073007400440069006D00500072006F00
      6400440042005400610062006C00650056006900650077003100500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      500052004F00440055004B0054000100010001000D000A006700720064004300
      750073007400440069006D00500072006F006400440042005400610062006C00
      6500560069006500770031004E006F006D0069006E0061006C00540068006900
      63006B006E0065007300730049004E0043004800010054005400010001000100
      0D000A006700720064004300750073007400440069006D00500072006F006400
      440042005400610062006C006500560069006500770031004E006F006D006900
      6E0061006C005700690064007400680049004E00430048000100540042000100
      010001000D000A006700720064004300750073007400440069006D0050007200
      6F006400440042005400610062006C0065005600690065007700310047007200
      6100640065004E006F000100470072006100640065004E006F00010001000100
      0D000A006700720064004300750073007400440069006D00500072006F006400
      440042005400610062006C006500560069006500770031005300700065006300
      6900650073004E006F00010053007000650063006900650073004E006F000100
      010001000D000A006700720064004300750073007400440069006D0050007200
      6F006400440042005400610062006C0065005600690065007700310050007200
      6F006400750063007400430061007400650067006F00720079004E006F000100
      500072006F006400750063007400430061007400650067006F00720079004E00
      6F000100010001000D000A006700720064004300750073007400440069006D00
      500072006F006400440042005400610062006C00650056006900650077003100
      53007500720066006100630069006E0067004E006F0001005300750072006600
      6100630069006E0067004E006F000100010001000D000A006700720064004300
      750073007400440069006D00500072006F006400440042005400610062006C00
      650056006900650077003100500072006F006400750063007400470072006F00
      750070004E006F000100500072006F006400750063007400470072006F007500
      70004E006F000100010001000D000A0067007200640043007500730074004400
      69006D00500072006F006400440042005400610062006C006500560069006500
      77003100500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F000100010001000D000A00500061006E0065006C003600
      0100560061006C00640061002000700072006F00640075006B00740065007200
      0100010001000D000A00670072006400530065006C0065006300740065006400
      500072006F0064007500630074007300440042005400610062006C0065005600
      6900650077003100500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F000100010001000D000A006700720064005300
      65006C0065006300740065006400500072006F00640075006300740073004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      6B0074000100500072006F00640075006B0074000100010001000D000A006700
      72006400530065006C0065006300740065006400500072006F00640075006300
      74007300440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      0D000A00670072006400530065006C0065006300740065006400500072006F00
      64007500630074007300440042005400610062006C0065005600690065007700
      310054006100620001005400610062000100010001000D000A00670072006400
      530065006C0065006300740065006400500072006F0064007500630074007300
      440042005400610062006C00650056006900650077003100500072006F006400
      750063007400470072006F00750070004E006F000100500072006F0064007500
      63007400470072006F00750070004E006F000100010001000D000A0067007200
      6400530065006C0065006300740065006400500072006F006400750063007400
      7300440042005400610062006C006500560069006500770031004E0054000100
      4E0054000100010001000D000A00670072006400530065006C00650063007400
      65006400500072006F0064007500630074007300440042005400610062006C00
      6500560069006500770031004E00420001004E0042000100010001000D000A00
      670072006400530065006C0065006300740065006400500072006F0064007500
      630074007300440042005400610062006C006500560069006500770031005000
      52004F00440055004B00540044004500530043000100500052004F0044005500
      4B00540044004500530043000100010001000D000A0061006300440065006C00
      650074006500530065006C0065006300740065006400500072006F0064007500
      63007400010054006100200062006F0072007400200072006100640001000100
      01000D000A0061006300530065006100720063006800010026005300F6006B00
      0100010001000D000A0061006300500072006F00640075006300740052006500
      6700690073007400650072000100260053006B00610070006100200070007200
      6F00640075006B0074000100010001000D000A00610063004F004B0001002600
      4F004B000100010001000D000A006100630043006C0065006100720046006900
      6C0074006500720001002600520065006E00730061002000460069006C007400
      650072000100010001000D000A00610063004300720065006100740065005000
      72006F006400750063007400010053006B006100700061002000700072006F00
      640075006B0074000100010001000D000A006100630045006400690074005000
      72006F00640075006B0074000100C4006E006400720061002000700072006F00
      640075006B0074000100010001000D000A004700740069006C006C0041005400
      66006C00740065007400310001004700E5002000740069006C006C0020004100
      540020006600E4006C007400650074000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A006D007400500072006F006400750063007400
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F000100010001000D000A006D007400500072006F00640075006300
      7400470072006100640065005300740061006D0070004E006F00010047007200
      6100640065005300740061006D0070004E006F000100010001000D000A006D00
      7400500072006F00640075006300740042006100720043006F00640065004E00
      6F00010042006100720043006F00640065004E006F000100010001000D000A00
      6D007400500072006F00640075006300740054006F00740061006C0050006300
      7300010054006F00740061006C005000630073000100010001000D000A006D00
      7400500072006F006400750063007400500072006F0064007500630074004700
      72006F00750070004E006F000100500072006F00640075006300740047007200
      6F00750070004E006F000100010001000D000A006D007400500072006F006400
      750063007400410054000100410054000100010001000D000A006D0074005000
      72006F006400750063007400410042000100410042000100010001000D000A00
      6D007400500072006F0064007500630074005300700065006300690065007300
      4E006F00010053007000650063006900650073004E006F000100010001000D00
      0A006D007400500072006F006400750063007400530075007200660061006300
      69006E0067004E006F00010053007500720066006100630069006E0067004E00
      6F000100010001000D000A006D007400500072006F0064007500630074004700
      72006100640065004E006F000100470072006100640065004E006F0001000100
      01000D000A006D007400500072006F0064007500630074004E00540001004E00
      54000100010001000D000A006D007400500072006F0064007500630074004E00
      420001004E0042000100010001000D000A006D007400500072006F0064007500
      63007400500072006F006400750063007400430061007400650067006F007200
      79004E006F000100500072006F00640075006300740043006100740065006700
      6F00720079004E006F000100010001000D000A006D007400500072006F006400
      7500630074004D00610072006B006500740052006500670069006F006E004E00
      6F0001004D00610072006B006500740052006500670069006F006E004E006F00
      0100010001000D000A006D007400500072006F00640075006300740054006100
      67004E006F0001005400610067004E006F000100010001000D000A006D007400
      500072006F0064007500630074004D00610072006B006E006100640073005200
      6500670069006F006E0001004D00610072006B006E0061006400730052006500
      670069006F006E000100010001000D000A006D007400500072006F0064007500
      6300740041006300740069007600650001004100630074006900760065000100
      010001000D000A006D007400500072006F006400750063007400530069007A00
      650046006F0072006D00610074000100530069007A00650046006F0072006D00
      610074000100010001000D000A006D007400500072006F006400750063007400
      4C0065006E0067007400680046006F0072006D006100740001004C0065006E00
      67007400680046006F0072006D00610074000100010001000D000A006D007400
      500072006F00640075006300740056006F006C0075006D00650046006F007200
      6D0061007400010056006F006C0075006D00650046006F0072006D0061007400
      0100010001000D000A006D007400500072006F0064007500630074004C006100
      6E006700750061006700650043006F006400650001004C0061006E0067007500
      61006700650043006F00640065000100010001000D000A006D00740050007200
      6F006400750063007400560061007200750053006C0061006700010056006100
      7200750053006C00610067000100010001000D000A006300640073005F005000
      72006F0064004C00690073007400530065007100750065006E00630065004E00
      6F000100530065007100750065006E00630065004E006F000100010001000D00
      0A006300640073005F00500072006F0064004C00690073007400500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      7400500072006F006400750063007400470072006F00750070004E006F000100
      500072006F006400750063007400470072006F00750070004E006F0001000100
      01000D000A006300640073005F00500072006F0064004C006900730074004700
      72006100640065004E0061006D0065000100470072006100640065004E006100
      6D0065000100010001000D000A006300640073005F00500072006F0064004C00
      69007300740053007000650063006900650073004E0061006D00650001005300
      7000650063006900650073004E0061006D0065000100010001000D000A006300
      640073005F00500072006F0064004C0069007300740053007500720066006100
      630069006E0067004E0061006D00650001005300750072006600610063006900
      6E0067004E0061006D0065000100010001000D000A006300640073005F005000
      72006F0064004C00690073007400410063007400750061006C00540068006900
      63006B006E006500730073004D004D000100410063007400750061006C005400
      6800690063006B006E006500730073004D004D000100010001000D000A006300
      640073005F00500072006F0064004C0069007300740041006300740075006100
      6C00570069006400740068004D004D000100410063007400750061006C005700
      69006400740068004D004D000100010001000D000A006300640073005F005000
      72006F0064004C006900730074004E006F006D0069006E0061006C0054006800
      690063006B006E006500730073004D004D0001004E006F006D0069006E006100
      6C0054006800690063006B006E006500730073004D004D000100010001000D00
      0A006300640073005F00500072006F0064004C006900730074004E006F006D00
      69006E0061006C00570069006400740068004D004D0001004E006F006D006900
      6E0061006C00570069006400740068004D004D000100010001000D000A006300
      640073005F00500072006F0064004C00690073007400500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010050007200
      6F00640075006300740044006900730070006C00610079004E0061006D006500
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      7400470072006100640065004E006F000100470072006100640065004E006F00
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      740053007000650063006900650073004E006F00010053007000650063006900
      650073004E006F000100010001000D000A006300640073005F00500072006F00
      64004C00690073007400500072006F0064007500630074004300610074006500
      67006F00720079004E006F000100500072006F00640075006300740043006100
      7400650067006F00720079004E006F000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074005300750072006600610063006900
      6E0067004E006F00010053007500720066006100630069006E0067004E006F00
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      74004E006F006D0069006E0061006C0054006800690063006B006E0065007300
      730049004E004300480001004E006F006D0069006E0061006C00540068006900
      63006B006E0065007300730049004E00430048000100010001000D000A006300
      640073005F00500072006F0064004C006900730074004E006F006D0069006E00
      61006C005700690064007400680049004E004300480001004E006F006D006900
      6E0061006C005700690064007400680049004E00430048000100010001000D00
      0A006300640073005F00500072006F0064004C00690073007400500072006F00
      6400750063007400430061007400650067006F00720079004E0061006D006500
      0100500072006F006400750063007400430061007400650067006F0072007900
      4E0061006D0065000100010001000D000A006300640073005F00500072006F00
      64004C00690073007400500072006F0064007500630074004100630074000100
      500072006F0064007500630074004100630074000100010001000D000A006300
      640073005F00500072006F0064004C00690073007400500072006F0064007500
      63007400470072006F00750070004100630074000100500072006F0064007500
      63007400470072006F00750070004100630074000100010001000D000A006300
      640073005F00500072006F0064004C0069007300740053007000650063006900
      6500730041006300740001005300700065006300690065007300410063007400
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      740053007500720066006100630069006E006700410063007400010053007500
      720066006100630069006E0067004100630074000100010001000D000A006300
      640073005F00500072006F0064004C0069007300740049006D00700041006300
      7400010049006D0070004100630074000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074004700720061006400650041006300
      74000100470072006100640065004100630074000100010001000D000A006300
      640073005F005300700065006300690065007300530070006500630069006500
      73004E006F00010053007000650063006900650073004E006F00010001000100
      0D000A006300640073005F005300700065006300690065007300530070006500
      63006900650073004E0061006D00650001005300700065006300690065007300
      4E0061006D0065000100010001000D000A006300640073005F00530070006500
      63006900650073004C0061006E006700750061006700650043006F0064006500
      01004C0061006E006700750061006700650043006F0064006500010001000100
      0D000A006300640073005F005300700065006300690065007300530065007100
      750065006E00630065004E006F000100530065007100750065006E0063006500
      4E006F000100010001000D000A006300640073005F0053007000650063006900
      6500730043007200650061007400650064005500730065007200010043007200
      6500610074006500640055007300650072000100010001000D000A0063006400
      73005F0053007000650063006900650073004D006F0064006900660069006500
      6400550073006500720001004D006F0064006900660069006500640055007300
      650072000100010001000D000A006300640073005F0053007000650063006900
      6500730044006100740065004300720065006100740065006400010044006100
      7400650043007200650061007400650064000100010001000D000A0063006400
      73005F0053007000650063006900650073004100630074000100410063007400
      0100010001000D000A006300640073005F005300700065006300690065007300
      530070006500630069006500730043006F006400650001005300700065006300
      69006500730043006F00640065000100010001000D000A006300640073005F00
      5300700065006300690065007300530070006500630069006500730053006800
      6F00720074004E0061006D006500010053007000650063006900650073005300
      68006F00720074004E0061006D0065000100010001000D000A00630064007300
      5F00530070006500630069006500730044004B0043006F006400650001004400
      4B0043006F00640065000100010001000D000A006300640073005F0053007000
      65006300690065007300530070006500630069006500730043006F0064006500
      4E0061006D0065000100530070006500630069006500730043006F0064006500
      4E0061006D0065000100010001000D000A006300640073005F00670072006100
      64006500470072006100640065004E006F000100470072006100640065004E00
      6F000100010001000D000A006300640073005F00670072006100640065004700
      72006100640065004E0061006D0065000100470072006100640065004E006100
      6D0065000100010001000D000A006300640073005F0067007200610064006500
      4C0061006E006700750061006700650043006F006400650001004C0061006E00
      6700750061006700650043006F00640065000100010001000D000A0063006400
      73005F0067007200610064006500530065007100750065006E00630065004E00
      6F000100530065007100750065006E00630065004E006F000100010001000D00
      0A006300640073005F0067007200610064006500430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      72000100010001000D000A006300640073005F00670072006100640065004D00
      6F00640069006600690065006400550073006500720001004D006F0064006900
      660069006500640055007300650072000100010001000D000A00630064007300
      5F00670072006100640065004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000100
      0D000A006300640073005F00670072006100640065004D00610069006E004700
      72006100640065004E006F0001004D00610069006E0047007200610064006500
      4E006F000100010001000D000A006300640073005F0067007200610064006500
      41006300740001004100630074000100010001000D000A006300640073005F00
      670072006100640065004700720061006400650043006F006400650001004700
      720061006400650043006F00640065000100010001000D000A00630064007300
      5F006700720061006400650044004B0043006F0064006500010044004B004300
      6F00640065000100010001000D000A006300640073005F006700720061006400
      65004700720061006400650043006F00640065004E0061006D00650001004700
      720061006400650043006F00640065004E0061006D0065000100010001000D00
      0A006300640073005F0053007500720066006100630069006E00670053007500
      720066006100630069006E0067004E006F000100530075007200660061006300
      69006E0067004E006F000100010001000D000A006300640073005F0053007500
      720066006100630069006E00670053007500720066006100630069006E006700
      4E0061006D006500010053007500720066006100630069006E0067004E006100
      6D0065000100010001000D000A006300640073005F0053007500720066006100
      630069006E0067004C0061006E006700750061006700650043006F0064006500
      01004C0061006E006700750061006700650043006F0064006500010001000100
      0D000A006300640073005F0053007500720066006100630069006E0067005300
      65007100750065006E00630065004E006F000100530065007100750065006E00
      630065004E006F000100010001000D000A006300640073005F00530075007200
      66006100630069006E0067004300720065006100740065006400550073006500
      7200010043007200650061007400650064005500730065007200010001000100
      0D000A006300640073005F0053007500720066006100630069006E0067004D00
      6F00640069006600690065006400550073006500720001004D006F0064006900
      660069006500640055007300650072000100010001000D000A00630064007300
      5F0053007500720066006100630069006E006700440061007400650043007200
      6500610074006500640001004400610074006500430072006500610074006500
      64000100010001000D000A006300640073005F00530075007200660061006300
      69006E00670041006300740001004100630074000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067005300750072006600
      6100630069006E00670043006F00640065000100530075007200660061006300
      69006E00670043006F00640065000100010001000D000A006300640073005F00
      53007500720066006100630069006E00670044004B0043006F00640065000100
      44004B0043006F00640065000100010001000D000A006300640073005F005300
      7500720066006100630069006E0067004B006F00720074004E0061006D006E00
      01004B006F00720074004E0061006D006E000100010001000D000A0063006400
      73005F0053007500720066006100630069006E00670053007500720066006100
      630069006E00670043006F00640065004E0061006D0065000100530075007200
      66006100630069006E00670043006F00640065004E0061006D00650001000100
      01000D000A006300640073005F00500072006F00640043006100740067005000
      72006F006400750063007400430061007400650067006F00720079004E006F00
      0100500072006F006400750063007400430061007400650067006F0072007900
      4E006F000100010001000D000A006300640073005F00500072006F0064004300
      610074006700500072006F006400750063007400430061007400650067006F00
      720079004E0061006D0065000100500072006F00640075006300740043006100
      7400650067006F00720079004E0061006D0065000100010001000D000A006300
      640073005F00500072006F0064004300610074006700500072006F0064007500
      63007400430061007400650067006F0072007900450078007400650072006E00
      61006C0043006F00640065000100500072006F00640075006300740043006100
      7400650067006F0072007900450078007400650072006E0061006C0043006F00
      640065000100010001000D000A006300640073005F00500072006F0064004300
      610074006700530065007100750065006E00630065004E006F00010053006500
      7100750065006E00630065004E006F000100010001000D000A00630064007300
      5F00500072006F00640043006100740067004300720065006100740065006400
      5500730065007200010043007200650061007400650064005500730065007200
      0100010001000D000A006300640073005F00500072006F006400430061007400
      67004D006F00640069006600690065006400550073006500720001004D006F00
      64006900660069006500640055007300650072000100010001000D000A006300
      640073005F00500072006F006400430061007400670044006100740065004300
      7200650061007400650064000100440061007400650043007200650061007400
      650064000100010001000D000A006300640073005F00500072006F0064004300
      61007400670041006300740001004100630074000100010001000D000A006300
      640073005F00500072006F006400430061007400670049006D00700043006F00
      64006500010049006D00700043006F00640065000100010001000D000A006300
      640073005F00500072006F006400430061007400670049006D00700072006500
      670049006E00500072006F0064004E0061006D006500010049006D0070007200
      6500670049006E00500072006F0064004E0061006D0065000100010001000D00
      0A006300640073005F00500072006F00640043006100740067004C0061006E00
      6700750061006700650043006F006400650001004C0061006E00670075006100
      6700650043006F00640065000100010001000D000A006300640073005F005000
      72006F006400430061007400670044004B0043006F0064006500010044004B00
      43006F00640065000100010001000D000A006300640073005F00500072006F00
      6400430061007400670049006D00700043006F00640065004E0061006D006500
      010049006D00700043006F00640065004E0061006D0065000100010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D00470065007400500072006F0064005F0049004900
      01004D0053002000530061006E00730020005300650072006900660001000100
      01000D000A00500061006E0065006C00340001004D0053002000530061006E00
      73002000530065007200690066000100010001000D000A0070006D0050007200
      6F00640075006B0074004C0069007300740001005300650067006F0065002000
      550049000100010001000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A00640078004200610072004D0061006E00
      610067006500720031002E00430061007400650067006F007200690065007300
      0100440065006600610075006C0074000100010001000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      4900440053005F0030000100500072006F00640075006B00740065006E002000
      E400720020006100760061006B00740069007600650072006100640001000100
      01000D000A004900440053005F0031000100500072006F00640075006B007400
      6700720075007000700065006E002000E400720020006100760061006B007400
      6900760065007200610064000100010001000D000A004900440053005F003200
      010054007200E40073006C0061006700650074002000E4007200200061007600
      61006B0074006900760065007200610064000100010001000D000A0049004400
      53005F0033000100550074006600F600720061006E006400650074002000E400
      720020006100760061006B007400690076006500720061006400010001000100
      0D000A004900440053005F003400010049006D0070007200650067006E006500
      720069006E006700730074007900700065006E002000E4007200200061007600
      61006B0074006900760065007200610064000100010001000D000A0049004400
      53005F00350001004B00760061006C00690074006500740065006E002000E400
      720020006100760061006B007400690076006500720061006400010001000100
      0D000A004900440053005F00360001005600E4006C006A002000650074007400
      2000760061007200750073006C006100670021000100010001000D000A004900
      440053005F00370001004400690061006D006500740065007200280063006D00
      29000100010001000D000A004900440053005F00380001004C00E4006E006700
      6400280063006D0029000100010001000D000A004900440053005F0039000100
      42007200650064006400280063006D0029000100010001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006C006300470072006100640065002E0050007200
      6F0070006500720074006900650073002E004B00650079004600690065006C00
      64004E0061006D00650073000100470072006100640065004E006F0001000100
      01000D000A006C006300470072006100640065002E00500072006F0070006500
      720074006900650073002E004C006900730074004600690065006C0064004E00
      61006D006500730001004700720061006400650043006F00640065004E006100
      6D0065000100010001000D000A006C0063005300700065006300690065007300
      2E00500072006F0070006500720074006900650073002E004B00650079004600
      690065006C0064004E0061006D00650073000100530070006500630069006500
      73004E006F000100010001000D000A006C006300530070006500630069006500
      73002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D006500730001005300700065006300
      69006500730043006F00640065004E0061006D0065000100010001000D000A00
      6C00630053007500720066006100630069006E0067002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D0065007300010053007500720066006100630069006E0067004E006F00
      0100010001000D000A006C00630053007500720066006100630069006E006700
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010053007500720066006100
      630069006E00670043006F00640065004E0061006D0065000100010001000D00
      0A006C00630049006D0070007200650067002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      650073000100500072006F006400750063007400430061007400650067006F00
      720079004E006F000100010001000D000A006C00630049006D00700072006500
      67002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D0065007300010049006D0070004300
      6F00640065004E0061006D0065000100010001000D000A006700720064005000
      72006F0064004C00690073007400440042005400610062006C00650056006900
      650077003100500072006F0064007500630074004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      6900650073000100010001000D000A00670072006400500072006F0064004C00
      690073007400440042005400610062006C006500560069006500770031005000
      72006F006400750063007400470072006F00750070004E006F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      74006900650073000100010001000D000A00670072006400500072006F006400
      4C00690073007400440042005400610062006C00650056006900650077003100
      470072006100640065004E0061006D0065002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      0100010001000D000A00670072006400500072006F0064004C00690073007400
      440042005400610062006C006500560069006500770031005300700065006300
      6900650073004E0061006D0065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100530075007200660061006300
      69006E0067004E0061006D0065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      7400430061007400650067006F00720079004E0061006D0065002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      74006900650073000100010001000D000A00670072006400500072006F006400
      4C00690073007400440042005400610062006C00650056006900650077003100
      410063007400750061006C0054006800690063006B006E006500730073004D00
      4D002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F0070006500720074006900650073000100010001000D000A00670072006400
      500072006F0064004C00690073007400440042005400610062006C0065005600
      6900650077003100410063007400750061006C00570069006400740068004D00
      4D002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F0070006500720074006900650073000100010001000D000A00670072006400
      500072006F0064004C00690073007400440042005400610062006C0065005600
      69006500770031004E006F006D0069006E0061006C0054006800690063006B00
      6E006500730073004D004D002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031004E006F006D0069006E0061006C00
      570069006400740068004D004D002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      6900650073000100010001000D000A00670072006400500072006F0064004C00
      690073007400440042005400610062006C006500560069006500770031004700
      72006100640065004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031005300700065006300690065007300
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F0070006500720074006900650073000100010001000D000A0067007200
      6400500072006F0064004C00690073007400440042005400610062006C006500
      56006900650077003100500072006F0064007500630074004300610074006500
      67006F00720079004E006F002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031005300750072006600610063006900
      6E0067004E006F002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F0070006500720074006900650073000100010001000D000A00
      670072006400500072006F0064004C0069007300740044004200540061006200
      6C006500560069006500770031004E006F006D0069006E0061006C0054006800
      690063006B006E0065007300730049004E00430048002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      650073000100010001000D000A00670072006400500072006F0064004C006900
      73007400440042005400610062006C006500560069006500770031004E006F00
      6D0069006E0061006C005700690064007400680049004E00430048002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      720074006900650073000100010001000D000A00670072006400530065006C00
      65006300740065006400500072006F0064007500630074007300440042005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F0070006500720074006900650073000100010001000D000A0067007200
      6400530065006C0065006300740065006400500072006F006400750063007400
      7300440042005400610062006C00650056006900650077003100500072006F00
      640075006B0074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F0070006500720074006900650073000100010001000D000A00
      670072006400530065006C0065006300740065006400500072006F0064007500
      630074007300440042005400610062006C006500560069006500770031005000
      72006F0064007500630074004C0065006E006700740068004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      720074006900650073000100010001000D000A00670072006400530065006C00
      65006300740065006400500072006F0064007500630074007300440042005400
      610062006C006500560069006500770031005400610062002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      6900650073000100010001000D000A00670072006400530065006C0065006300
      740065006400500072006F006400750063007400730044004200540061006200
      6C00650056006900650077003100500072006F00640075006300740047007200
      6F00750070004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000D00
      0A00670072006400530065006C0065006300740065006400500072006F006400
      7500630074007300440042005400610062006C00650056006900650077003100
      4E0054002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F0070006500720074006900650073000100010001000D000A0067007200
      6400530065006C0065006300740065006400500072006F006400750063007400
      7300440042005400610062006C006500560069006500770031004E0042002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      6500720074006900650073000100010001000D000A0067007200640053006500
      6C0065006300740065006400500072006F006400750063007400730044004200
      5400610062006C00650056006900650077003100500052004F00440055004B00
      540044004500530043002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000D00
      0A0063007800530070006C006900740074006500720031002E0048006F007400
      5A006F006E00650043006C006100730073004E0061006D006500010054006300
      78004D00650064006900610050006C0061007900650072003800530074007900
      6C0065000100010001000D000A006D007400500072006F006400750063007400
      2E00560065007200730069006F006E00010037002E00360033002E0030003000
      20005300740061006E0064006100720064002000450064006900740069006F00
      6E000100010001000D000A006300640073005F00500072006F0064004C006900
      730074002E0043006F006E006E0065006300740069006F006E004E0061006D00
      650001005600490053000100010001000D000A006300640073005F0050007200
      6F0064004C00690073007400530065007100750065006E00630065004E006F00
      2E004F0072006900670069006E000100530065007100750065006E0063006500
      4E006F000100010001000D000A006300640073005F00500072006F0064004C00
      690073007400500072006F0064007500630074004E006F002E004F0072006900
      670069006E000100500072006F0064007500630074004E006F00010001000100
      0D000A006300640073005F00500072006F0064004C0069007300740050007200
      6F006400750063007400470072006F00750070004E006F002E004F0072006900
      670069006E000100500072006F006400750063007400470072006F0075007000
      4E006F000100010001000D000A006300640073005F00500072006F0064004C00
      690073007400470072006100640065004E0061006D0065002E004F0072006900
      670069006E000100470072006100640065004E0061006D006500010001000100
      0D000A006300640073005F00500072006F0064004C0069007300740053007000
      650063006900650073004E0061006D0065002E004F0072006900670069006E00
      010053007000650063006900650073004E0061006D0065000100010001000D00
      0A006300640073005F00500072006F0064004C00690073007400530075007200
      66006100630069006E0067004E0061006D0065002E004F007200690067006900
      6E00010053007500720066006100630069006E0067004E0061006D0065000100
      010001000D000A006300640073005F00500072006F0064004C00690073007400
      410063007400750061006C0054006800690063006B006E006500730073004D00
      4D002E004F0072006900670069006E000100410063007400750061006C005400
      6800690063006B006E006500730073004D004D000100010001000D000A006300
      640073005F00500072006F0064004C0069007300740041006300740075006100
      6C00570069006400740068004D004D002E004F0072006900670069006E000100
      410063007400750061006C00570069006400740068004D004D00010001000100
      0D000A006300640073005F00500072006F0064004C006900730074004E006F00
      6D0069006E0061006C0054006800690063006B006E006500730073004D004D00
      2E004F0072006900670069006E0001004E006F006D0069006E0061006C005400
      6800690063006B006E006500730073004D004D000100010001000D000A006300
      640073005F00500072006F0064004C006900730074004E006F006D0069006E00
      61006C00570069006400740068004D004D002E004F0072006900670069006E00
      01004E006F006D0069006E0061006C00570069006400740068004D004D000100
      010001000D000A006300640073005F00500072006F0064004C00690073007400
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065002E004F0072006900670069006E000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000D00
      0A006300640073005F00500072006F0064004C00690073007400470072006100
      640065004E006F002E004F0072006900670069006E0001004700720061006400
      65004E006F000100010001000D000A006300640073005F00500072006F006400
      4C0069007300740053007000650063006900650073004E006F002E004F007200
      6900670069006E00010053007000650063006900650073004E006F0001000100
      01000D000A006300640073005F00500072006F0064004C006900730074005000
      72006F006400750063007400430061007400650067006F00720079004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F000100010001000D000A0063006400
      73005F00500072006F0064004C00690073007400530075007200660061006300
      69006E0067004E006F002E004F0072006900670069006E000100530075007200
      66006100630069006E0067004E006F000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074004E006F006D0069006E0061006C00
      54006800690063006B006E0065007300730049004E00430048002E004F007200
      6900670069006E0001004E006F006D0069006E0061006C005400680069006300
      6B006E0065007300730049004E00430048000100010001000D000A0063006400
      73005F00500072006F0064004C006900730074004E006F006D0069006E006100
      6C005700690064007400680049004E00430048002E004F007200690067006900
      6E0001004E006F006D0069006E0061006C005700690064007400680049004E00
      430048000100010001000D000A006300640073005F00500072006F0064004C00
      690073007400500072006F006400750063007400430061007400650067006F00
      720079004E0061006D0065002E004F0072006900670069006E00010050007200
      6F006400750063007400430061007400650067006F00720079004E0061006D00
      65000100010001000D000A006300640073005F00500072006F0064004C006900
      73007400500072006F0064007500630074004100630074002E004F0072006900
      670069006E000100500072006F00640075006300740041006300740001000100
      01000D000A006300640073005F00500072006F0064004C006900730074005000
      72006F006400750063007400470072006F00750070004100630074002E004F00
      72006900670069006E000100500072006F006400750063007400470072006F00
      750070004100630074000100010001000D000A006300640073005F0050007200
      6F0064004C006900730074005300700065006300690065007300410063007400
      2E004F0072006900670069006E00010053007000650063006900650073004100
      630074000100010001000D000A006300640073005F00500072006F0064004C00
      69007300740053007500720066006100630069006E0067004100630074002E00
      4F0072006900670069006E00010053007500720066006100630069006E006700
      4100630074000100010001000D000A006300640073005F00500072006F006400
      4C0069007300740049006D0070004100630074002E004F007200690067006900
      6E00010049006D0070004100630074000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074004700720061006400650041006300
      74002E004F0072006900670069006E0001004700720061006400650041006300
      74000100010001000D000A006300640073005F00530070006500630069006500
      73002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      01005600490053000100010001000D000A006300640073005F00530070006500
      630069006500730053007000650063006900650073004E006F002E004F007200
      6900670069006E00010053007000650063006900650073004E006F0001000100
      01000D000A006300640073005F00530070006500630069006500730053007000
      650063006900650073004E0061006D0065002E004F0072006900670069006E00
      010053007000650063006900650073004E0061006D0065000100010001000D00
      0A006300640073005F0053007000650063006900650073004C0061006E006700
      750061006700650043006F00640065002E004F0072006900670069006E000100
      4C0061006E006700750061006700650043006F00640065000100010001000D00
      0A006300640073005F0053007000650063006900650073005300650071007500
      65006E00630065004E006F002E004F0072006900670069006E00010053006500
      7100750065006E00630065004E006F000100010001000D000A00630064007300
      5F00530070006500630069006500730043007200650061007400650064005500
      7300650072002E004F0072006900670069006E00010043007200650061007400
      6500640055007300650072000100010001000D000A006300640073005F005300
      7000650063006900650073004D006F0064006900660069006500640055007300
      650072002E004F0072006900670069006E0001004D006F006400690066006900
      6500640055007300650072000100010001000D000A006300640073005F005300
      7000650063006900650073004400610074006500430072006500610074006500
      64002E004F0072006900670069006E0001004400610074006500430072006500
      61007400650064000100010001000D000A006300640073005F00530070006500
      63006900650073004100630074002E004F0072006900670069006E0001004100
      630074000100010001000D000A006300640073005F0053007000650063006900
      65007300530070006500630069006500730043006F00640065002E004F007200
      6900670069006E000100530070006500630069006500730043006F0064006500
      0100010001000D000A006300640073005F005300700065006300690065007300
      5300700065006300690065007300530068006F00720074004E0061006D006500
      2E004F0072006900670069006E00010053007000650063006900650073005300
      68006F00720074004E0061006D0065000100010001000D000A00630064007300
      5F00530070006500630069006500730044004B0043006F00640065002E004F00
      72006900670069006E00010044004B0043006F00640065000100010001000D00
      0A006300640073005F0053007000650063006900650073005300700065006300
      69006500730043006F00640065004E0061006D0065002E004F00720069006700
      69006E000100530070006500630069006500730043006F00640065004E006100
      6D0065000100010001000D000A006300640073005F0067007200610064006500
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      5600490053000100010001000D000A006300640073005F006700720061006400
      6500470072006100640065004E006F002E004F0072006900670069006E000100
      470072006100640065004E006F000100010001000D000A006300640073005F00
      67007200610064006500470072006100640065004E0061006D0065002E004F00
      72006900670069006E000100470072006100640065004E0061006D0065000100
      010001000D000A006300640073005F00670072006100640065004C0061006E00
      6700750061006700650043006F00640065002E004F0072006900670069006E00
      01004C0061006E006700750061006700650043006F0064006500010001000100
      0D000A006300640073005F006700720061006400650053006500710075006500
      6E00630065004E006F002E004F0072006900670069006E000100530065007100
      750065006E00630065004E006F000100010001000D000A006300640073005F00
      6700720061006400650043007200650061007400650064005500730065007200
      2E004F0072006900670069006E00010043007200650061007400650064005500
      7300650072000100010001000D000A006300640073005F006700720061006400
      65004D006F0064006900660069006500640055007300650072002E004F007200
      6900670069006E0001004D006F00640069006600690065006400550073006500
      72000100010001000D000A006300640073005F00670072006100640065004400
      61007400650043007200650061007400650064002E004F007200690067006900
      6E00010044006100740065004300720065006100740065006400010001000100
      0D000A006300640073005F00670072006100640065004D00610069006E004700
      72006100640065004E006F002E004F0072006900670069006E0001004D006100
      69006E00470072006100640065004E006F000100010001000D000A0063006400
      73005F00670072006100640065004100630074002E004F007200690067006900
      6E0001004100630074000100010001000D000A006300640073005F0067007200
      6100640065004700720061006400650043006F00640065002E004F0072006900
      670069006E0001004700720061006400650043006F0064006500010001000100
      0D000A006300640073005F006700720061006400650044004B0043006F006400
      65002E004F0072006900670069006E00010044004B0043006F00640065000100
      010001000D000A006300640073005F0067007200610064006500470072006100
      6400650043006F00640065004E0061006D0065002E004F007200690067006900
      6E0001004700720061006400650043006F00640065004E0061006D0065000100
      010001000D000A006300640073005F0053007500720066006100630069006E00
      67002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      01005600490053000100010001000D000A006300640073005F00530075007200
      66006100630069006E00670053007500720066006100630069006E0067004E00
      6F002E004F0072006900670069006E0001005300750072006600610063006900
      6E0067004E006F000100010001000D000A006300640073005F00530075007200
      66006100630069006E00670053007500720066006100630069006E0067004E00
      61006D0065002E004F0072006900670069006E00010053007500720066006100
      630069006E0067004E0061006D0065000100010001000D000A00630064007300
      5F0053007500720066006100630069006E0067004C0061006E00670075006100
      6700650043006F00640065002E004F0072006900670069006E0001004C006100
      6E006700750061006700650043006F00640065000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067005300650071007500
      65006E00630065004E006F002E004F0072006900670069006E00010053006500
      7100750065006E00630065004E006F000100010001000D000A00630064007300
      5F0053007500720066006100630069006E006700430072006500610074006500
      640055007300650072002E004F0072006900670069006E000100430072006500
      610074006500640055007300650072000100010001000D000A00630064007300
      5F0053007500720066006100630069006E0067004D006F006400690066006900
      6500640055007300650072002E004F0072006900670069006E0001004D006F00
      64006900660069006500640055007300650072000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067004400610074006500
      43007200650061007400650064002E004F0072006900670069006E0001004400
      61007400650043007200650061007400650064000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067004100630074002E00
      4F0072006900670069006E0001004100630074000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067005300750072006600
      6100630069006E00670043006F00640065002E004F0072006900670069006E00
      010053007500720066006100630069006E00670043006F006400650001000100
      01000D000A006300640073005F0053007500720066006100630069006E006700
      44004B0043006F00640065002E004F0072006900670069006E00010044004B00
      43006F00640065000100010001000D000A006300640073005F00530075007200
      66006100630069006E0067004B006F00720074004E0061006D006E002E004F00
      72006900670069006E0001004B006F00720074004E0061006D006E0001000100
      01000D000A006300640073005F0053007500720066006100630069006E006700
      53007500720066006100630069006E00670043006F00640065004E0061006D00
      65002E004F0072006900670069006E0001005300750072006600610063006900
      6E00670043006F00640065004E0061006D0065000100010001000D000A006300
      640073005F00500072006F00640043006100740067002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      01000D000A006300640073005F00500072006F00640043006100740067005000
      72006F006400750063007400430061007400650067006F00720079004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F000100010001000D000A0063006400
      73005F00500072006F0064004300610074006700500072006F00640075006300
      7400430061007400650067006F00720079004E0061006D0065002E004F007200
      6900670069006E000100500072006F0064007500630074004300610074006500
      67006F00720079004E0061006D0065000100010001000D000A00630064007300
      5F00500072006F0064004300610074006700500072006F006400750063007400
      430061007400650067006F0072007900450078007400650072006E0061006C00
      43006F00640065002E004F0072006900670069006E000100500072006F006400
      750063007400430061007400650067006F007200790045007800740065007200
      6E0061006C0043006F00640065000100010001000D000A006300640073005F00
      500072006F0064004300610074006700530065007100750065006E0063006500
      4E006F002E004F0072006900670069006E000100530065007100750065006E00
      630065004E006F000100010001000D000A006300640073005F00500072006F00
      6400430061007400670043007200650061007400650064005500730065007200
      2E004F0072006900670069006E00010043007200650061007400650064005500
      7300650072000100010001000D000A006300640073005F00500072006F006400
      43006100740067004D006F006400690066006900650064005500730065007200
      2E004F0072006900670069006E0001004D006F00640069006600690065006400
      55007300650072000100010001000D000A006300640073005F00500072006F00
      6400430061007400670044006100740065004300720065006100740065006400
      2E004F0072006900670069006E00010044006100740065004300720065006100
      7400650064000100010001000D000A006300640073005F00500072006F006400
      43006100740067004100630074002E004F0072006900670069006E0001004100
      630074000100010001000D000A006300640073005F00500072006F0064004300
      61007400670049006D00700043006F00640065002E004F007200690067006900
      6E00010049006D00700043006F00640065000100010001000D000A0063006400
      73005F00500072006F006400430061007400670049006D007000720065006700
      49006E00500072006F0064004E0061006D0065002E004F007200690067006900
      6E00010049006D00700072006500670049006E00500072006F0064004E006100
      6D0065000100010001000D000A006300640073005F00500072006F0064004300
      6100740067004C0061006E006700750061006700650043006F00640065002E00
      4F0072006900670069006E0001004C0061006E00670075006100670065004300
      6F00640065000100010001000D000A006300640073005F00500072006F006400
      430061007400670044004B0043006F00640065002E004F007200690067006900
      6E00010044004B0043006F00640065000100010001000D000A00630064007300
      5F00500072006F006400430061007400670049006D00700043006F0064006500
      4E0061006D0065002E004F0072006900670069006E00010049006D0070004300
      6F00640065004E0061006D0065000100010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006C006300470072006100640065002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100470072006100
      6400650043006F00640065004E0061006D0065000100010001000D000A006C00
      630053007000650063006900650073002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010053007000650063006900
      6500730043006F00640065004E0061006D0065000100010001000D000A006C00
      630053007500720066006100630069006E0067002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100530075007200
      66006100630069006E00670043006F00640065004E0061006D00650001000100
      01000D000A006C00630049006D0070007200650067002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010049006D00
      700043006F00640065004E0061006D0065000100010001000D000A0072006700
      530065007100750065006E00630065004E006F002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0030005D002E004300
      61007000740069006F006E00010026003100200054007200E400760061007200
      6F0072000100010001000D000A0072006700530065007100750065006E006300
      65004E006F002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0031005D002E00430061007000740069006F006E000100
      260032002000530074006F006C0070000100010001000D000A00720067005300
      65007100750065006E00630065004E006F002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0032005D002E0043006100
      7000740069006F006E000100260033002000500061006C006C00010001000100
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660072006D00470065007400500072006F00
      64005F00490049000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A00500061006E0065006C0034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A0070006D00500072006F00640075006B0074004C0069007300
      74000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00}
  end
end
