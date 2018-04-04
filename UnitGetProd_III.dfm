object frmGetProd_III: TfrmGetProd_III
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
          Font.Height = -12
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
    UseSystemFont = False
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
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'ListField')
    Left = 520
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00470065007400500072006F0064005F00
      4900490049000100500052004F00440055004B0054004C004900530054004100
      0100500052004F00440055004B0054004C004900530054004100010050005200
      4F0044005500430054004C004900530054000100500052004F00440055004B00
      54004C00490053005400410001000D000A00620062004F004B00010026004F00
      4B00010001004F004B00010001000D000A0062006200430061006E0063006500
      6C0001002600430061006E00630065006C000100410076006200720079007400
      0100010041007600620072007900740001000D000A004C006100620065006C00
      31000100410054003A0001004100540001004100540001004100540001000D00
      0A004C006100620065006C0032000100410042003A0001004100420001004100
      570001004100420001000D000A004C006100620065006C00330001004B005600
      3A0001004B00760061006C006900740065007400010047007200610064006500
      01004B00760061006C00690074006500740001000D000A004C00610062006500
      6C0034000100550054003A000100550074006600F600720061006E0064006500
      010053007500720066006100630069006E0067000100550074006600F6007200
      61006E006400650001000D000A004C006100620065006C003500010054005300
      3A00010054007200E40073006C00610067000100530070006500630069006500
      7300010054007200E40073006C006100670001000D000A004C00610062006500
      6C003600010049004D0050002E00010049006D0070007200650067006E006500
      720069006E0067000100540072006500610074006D0065006E00740001004900
      6D0070007200650067006E006500720069006E00670001000D000A0072006700
      530065007100750065006E00630065004E006F00010020005600610072007500
      73006C006100670020000100010043006F006D006D006F006400690074007900
      010001000D000A0074007300500072006F00640075006B0074004C0069007300
      740061000100500072006F00640075006B007400650072000100010050007200
      6F0064007500630074007300010001000D000A00670072006400500072006F00
      64004C00690073007400440042005400610062006C0065005600690065007700
      3100500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F0001000100010001000D000A00670072006400500072006F00
      64004C00690073007400440042005400610062006C0065005600690065007700
      3100500072006F006400750063007400470072006F00750070004E006F000100
      500072006F006400750063007400470072006F00750070004E006F0001000100
      010001000D000A00670072006400500072006F0064004C006900730074004400
      42005400610062006C0065005600690065007700310047007200610064006500
      4E0061006D00650001004B00560001004B00760061006C006900740065007400
      01004700720061006400650001004B00760061006C0069007400650074000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031005300700065006300690065007300
      4E0061006D006500010054005300010054007200E40073006C00610067000100
      5300700065006300690065007300010054007200E40073006C00610067000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C006500560069006500770031005300750072006600610063006900
      6E0067004E0061006D0065000100550054000100550074006600F60072006100
      6E0064006500010053007500720066006100630069006E006700010055007400
      6600F600720061006E006400650001000D000A00670072006400500072006F00
      64004C00690073007400440042005400610062006C0065005600690065007700
      3100500072006F006400750063007400430061007400650067006F0072007900
      4E0061006D006500010049004D005000010049006D0070007200650067006E00
      6500720069006E0067000100540072006500610074006D0065006E0074000100
      49006D0070007200650067006E006500720069006E00670001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      650056006900650077003100410063007400750061006C005400680069006300
      6B006E006500730073004D004D00010041005400010001004100540001000100
      0D000A00670072006400500072006F0064004C00690073007400440042005400
      610062006C00650056006900650077003100410063007400750061006C005700
      69006400740068004D004D000100410042000100010041005700010001000D00
      0A00670072006400500072006F0064004C006900730074004400420054006100
      62006C006500560069006500770031004E006F006D0069006E0061006C005400
      6800690063006B006E006500730073004D004D0001004E005400010001004E00
      5400010001000D000A00670072006400500072006F0064004C00690073007400
      440042005400610062006C006500560069006500770031004E006F006D006900
      6E0061006C00570069006400740068004D004D0001004E004200010001004E00
      5700010001000D000A00670072006400500072006F0064004C00690073007400
      440042005400610062006C00650056006900650077003100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001005000
      72006F00640075006B00740001000100500072006F0064007500630074000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C00650056006900650077003100470072006100640065004E00
      6F000100470072006100640065004E006F0001000100010001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      65005600690065007700310053007000650063006900650073004E006F000100
      53007000650063006900650073004E006F0001000100010001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      650056006900650077003100500072006F006400750063007400430061007400
      650067006F00720079004E006F000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F0001000100010001000D000A006700
      72006400500072006F0064004C00690073007400440042005400610062006C00
      65005600690065007700310053007500720066006100630069006E0067004E00
      6F00010053007500720066006100630069006E0067004E006F00010001000100
      01000D000A00670072006400500072006F0064004C0069007300740044004200
      5400610062006C006500560069006500770031004E006F006D0069006E006100
      6C0054006800690063006B006E0065007300730049004E004300480001005400
      540001000100010001000D000A00670072006400500072006F0064004C006900
      73007400440042005400610062006C006500560069006500770031004E006F00
      6D0069006E0061006C005700690064007400680049004E004300480001005400
      42000100010054005700010001000D000A00740073004B0075006E0064005000
      72006F00640075006B0074006500720001004B0075006E006400730070006500
      63006900660069006B0061002000700072006F00640075006B00740065007200
      0100010043007500730074006F006D00650072002000700072006F0064007500
      630074007300010001000D000A00500061006E0065006C00340001004B007500
      6E0064002000700072006F00640075006B007400650072000100010043007500
      730074006F006D00650072002000700072006F00640075006300740073000100
      01000D000A0067007200640043006C00690065006E007400500072006F006400
      440042005400610062006C00650056006900650077003100500052004F004400
      55004B0054000100500052004F00440055004B0054000100500052004F004400
      55004B0054000100500052004F0044005500430054000100500052004F004400
      55004B00540001000D000A0067007200640043006C00690065006E0074005000
      72006F006400440042005400610062006C006500560069006500770031004C00
      4E004700440001004C00C4004E0047004400010001004C0045004E0047005400
      4800010001000D000A0067007200640043006C00690065006E00740050007200
      6F006400440042005400610062006C0065005600690065007700310050004B00
      54004B004F004400010050004B0054004B004F0044000100010050004B004700
      200043004F00440045000100500041004C004C004B004F00440001000D000A00
      67007200640043006C00690065006E007400500072006F006400440042005400
      610062006C0065005600690065007700310049004E005400500052004F004400
      55004B005400010049004E005400500052004F00440055004B00540001000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C0065005600690065007700310043006C006900
      65006E0074004E006F00010043006C00690065006E0074004E006F0001000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A0067007200640043006C00690065006E0074005000
      72006F006400440042005400610062006C006500560069006500770031005000
      72006F006400750063007400470072006F00750070004E006F00010050007200
      6F006400750063007400470072006F00750070004E006F000100010001000100
      0D000A0067007200640043006C00690065006E007400500072006F0064004400
      42005400610062006C00650056006900650077003100500072006F0064007500
      630074004C0065006E006700740068004E006F000100500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      67007200640043006C00690065006E007400500072006F006400440042005400
      610062006C0065005600690065007700310043007500730074006F006D005400
      6800690063006B006E00650073007300010043007500730074006F006D005400
      6800690063006B006E0065007300730001000100010001000D000A0067007200
      640043006C00690065006E007400500072006F00640044004200540061006200
      6C0065005600690065007700310043007500730074006F006D00570069006400
      74006800010043007500730074006F006D005700690064007400680001000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C00650056006900650077003100430075007300
      74006F006D004C0065006E00670074006800010043007500730074006F006D00
      4C0065006E0067007400680001000100010001000D000A006700720064004300
      6C00690065006E007400500072006F006400440042005400610062006C006500
      5600690065007700310050006300730050006500720050006B00670001005000
      6300730050006500720050006B00670001000100010001000D000A0067007200
      640043006C00690065006E007400500072006F00640044004200540061006200
      6C006500560069006500770031005000720069006300650055006E0069007400
      4E006F0001005000720069006300650055006E00690074004E006F0001000100
      010001000D000A0067007200640043006C00690065006E007400500072006F00
      6400440042005400610062006C0065005600690065007700310056006F006C00
      75006D00650055006E00690074004E006F00010056006F006C0075006D006500
      55006E00690074004E006F0001000100010001000D000A006700720064004300
      6C00690065006E007400500072006F006400440042005400610062006C006500
      560069006500770031005000610063006B006100670065005400790070006500
      4E006F0001005000610063006B0061006700650054007900700065004E006F00
      01000100010001000D000A0067007200640043006C00690065006E0074005000
      72006F006400440042005400610062006C006500560069006500770031005000
      72006F00640049006E0073007400720075004E006F000100500072006F006400
      49006E0073007400720075004E006F0001000100010001000D000A0074007300
      41006E007000610073007300610064004C006900730074006100010041006E00
      70006100730073006100640065002000700072006F00640075006B0074006500
      72000100010041006400610070007400650064002000700072006F0064007500
      630074007300010001000D000A00670072006400430075007300740044006900
      6D00500072006F006400440042005400610062006C0065005600690065007700
      31004E00540001005300700065006300690061006C0020004E00540001000100
      5300700065006300690061006C0020004E005400010001000D000A0067007200
      64004300750073007400440069006D00500072006F0064004400420054006100
      62006C006500560069006500770031004E005700010053007000650063006900
      61006C0020004E004200010001005300700065006300690061006C0020004E00
      5700010001000D000A006700720064004300750073007400440069006D005000
      72006F006400440042005400610062006C006500560069006500770031004700
      72006100640065004E0061006D00650001004B00560001004B00760061006C00
      690074006500740001004700720061006400650001004B00760061006C006900
      74006500740001000D000A006700720064004300750073007400440069006D00
      500072006F006400440042005400610062006C00650056006900650077003100
      53007000650063006900650073004E0061006D00650001005400530001005400
      7200E40073006C00610067000100530070006500630069006500730001005400
      7200E40073006C006100670001000D000A006700720064004300750073007400
      440069006D00500072006F006400440042005400610062006C00650056006900
      65007700310053007500720066006100630069006E0067004E0061006D006500
      0100550054000100550074006600F600720061006E0064006500010053007500
      720066006100630069006E0067000100550074006600F600720061006E006400
      650001000D000A006700720064004300750073007400440069006D0050007200
      6F006400440042005400610062006C0065005600690065007700310050007200
      6F006400750063007400430061007400650067006F00720079004E0061006D00
      6500010049004D005000010049006D0070007200650067006E00650072006900
      6E0067000100540072006500610074006D0065006E007400010049006D007000
      7200650067006E006500720069006E00670001000D000A006700720064004300
      750073007400440069006D00500072006F006400440042005400610062006C00
      650056006900650077003100410063007400750061006C005400680069006300
      6B006E006500730073004D004D00010041005400010001004100540001000100
      0D000A006700720064004300750073007400440069006D00500072006F006400
      440042005400610062006C006500560069006500770031004100630074007500
      61006C00570069006400740068004D004D000100410042000100010041005700
      010001000D000A006700720064004300750073007400440069006D0050007200
      6F006400440042005400610062006C006500560069006500770031004E006F00
      6D0069006E0061006C0054006800690063006B006E006500730073004D004D00
      010049004E0054002E004E0054000100010049004E0054002E004E0054000100
      01000D000A006700720064004300750073007400440069006D00500072006F00
      6400440042005400610062006C006500560069006500770031004E006F006D00
      69006E0061006C00570069006400740068004D004D00010049004E0054002E00
      4E0042000100010049004E0054002E004E005700010001000D000A0067007200
      64004300750073007400440069006D00500072006F0064004400420054006100
      62006C00650056006900650077003100500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500052004F0044005500
      4B0054000100500052004F00440055004B0054000100500052004F0044005500
      430054000100500052004F00440055004B00540001000D000A00670072006400
      4300750073007400440069006D00500072006F00640044004200540061006200
      6C006500560069006500770031004E006F006D0069006E0061006C0054006800
      690063006B006E0065007300730049004E004300480001005400540001000100
      010001000D000A006700720064004300750073007400440069006D0050007200
      6F006400440042005400610062006C006500560069006500770031004E006F00
      6D0069006E0061006C005700690064007400680049004E004300480001005400
      42000100010054005700010001000D000A006700720064004300750073007400
      440069006D00500072006F006400440042005400610062006C00650056006900
      650077003100470072006100640065004E006F00010047007200610064006500
      4E006F0001000100010001000D000A0067007200640043007500730074004400
      69006D00500072006F006400440042005400610062006C006500560069006500
      7700310053007000650063006900650073004E006F0001005300700065006300
      6900650073004E006F0001000100010001000D000A0067007200640043007500
      73007400440069006D00500072006F006400440042005400610062006C006500
      56006900650077003100500072006F0064007500630074004300610074006500
      67006F00720079004E006F000100500072006F00640075006300740043006100
      7400650067006F00720079004E006F0001000100010001000D000A0067007200
      64004300750073007400440069006D00500072006F0064004400420054006100
      62006C0065005600690065007700310053007500720066006100630069006E00
      67004E006F00010053007500720066006100630069006E0067004E006F000100
      0100010001000D000A006700720064004300750073007400440069006D005000
      72006F006400440042005400610062006C006500560069006500770031005000
      72006F006400750063007400470072006F00750070004E006F00010050007200
      6F006400750063007400470072006F00750070004E006F000100010001000100
      0D000A006700720064004300750073007400440069006D00500072006F006400
      440042005400610062006C00650056006900650077003100500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A00500061006E0065006C0036000100560061006C006400
      61002000700072006F00640075006B0074006500720001000100530065006C00
      650063007400650064002000700072006F006400750063007400730001000100
      0D000A00670072006400530065006C0065006300740065006400500072006F00
      64007500630074007300440042005400610062006C0065005600690065007700
      3100500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F0001000100010001000D000A00670072006400530065006C00
      65006300740065006400500072006F0064007500630074007300440042005400
      610062006C00650056006900650077003100500072006F00640075006B007400
      0100500072006F00640075006B00740001000100500072006F00640075006300
      7400010001000D000A00670072006400530065006C0065006300740065006400
      500072006F0064007500630074007300440042005400610062006C0065005600
      6900650077003100500072006F0064007500630074004C0065006E0067007400
      68004E006F000100500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A00670072006400530065006C006500
      6300740065006400500072006F00640075006300740073004400420054006100
      62006C0065005600690065007700310054006100620001005400610062000100
      0100540061006200010001000D000A00670072006400530065006C0065006300
      740065006400500072006F006400750063007400730044004200540061006200
      6C00650056006900650077003100500072006F00640075006300740047007200
      6F00750070004E006F000100500072006F006400750063007400470072006F00
      750070004E006F0001000100010001000D000A00670072006400530065006C00
      65006300740065006400500072006F0064007500630074007300440042005400
      610062006C006500560069006500770031004E00540001004E00540001000100
      4E005400010001000D000A00670072006400530065006C006500630074006500
      6400500072006F0064007500630074007300440042005400610062006C006500
      560069006500770031004E00420001004E004200010001004E00570001000100
      0D000A00670072006400530065006C0065006300740065006400500072006F00
      64007500630074007300440042005400610062006C0065005600690065007700
      3100500052004F00440055004B00540044004500530043000100500052004F00
      440055004B00540044004500530043000100500052004F00440055004B005400
      4200450053004B005200490056004E0049004E0047000100500052004F004400
      55004300540020004400450053004300520049005000540049004F004E000100
      500052004F00440055004B0054004200450053004B005200490056004E004900
      4E00470001000D000A0061006300440065006C00650074006500530065006C00
      65006300740065006400500072006F0064007500630074000100540061002000
      62006F0072007400200072006100640001000100440065006C00650074006500
      20006C0069006E006500010001000D000A006100630053006500610072006300
      6800010026005300F6006B000100010053006500610072006300680001000100
      0D000A0061006300500072006F00640075006300740052006500670069007300
      7400650072000100260053006B006100700061002000700072006F0064007500
      6B007400010001004300720065006100740065002000700072006F0064007500
      63007400010001000D000A00610063004F004B00010026004F004B0001000100
      4F004B00010001000D000A006100630043006C00650061007200460069006C00
      74006500720001002600520065006E00730061002000460069006C0074006500
      72000100520065006E00730061002000660069006C0074006500720001004300
      6C006500610072002000660069006C007400650072000100520065006E007300
      61002000660069006C0074006500720001000D000A0061006300430072006500
      610074006500500072006F006400750063007400010053006B00610070006100
      2000700072006F00640075006B00740001000100430072006500610074006500
      2000700072006F006400750063007400010001000D000A006100630045006400
      69007400500072006F00640075006B0074000100C4006E006400720061002000
      700072006F00640075006B007400010001004300680061006E00670065002000
      700072006F006400750063007400010001000D000A004700740069006C006C00
      4100540066006C00740065007400310001004700E5002000740069006C006C00
      20004100540020006600E4006C007400650074000100010047006F0074006F00
      20004100540020006600690065006C006400010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A006D007400500072006F006400750063007400
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F0001000100010001000D000A006D007400500072006F0064007500
      63007400470072006100640065005300740061006D0070004E006F0001004700
      72006100640065005300740061006D0070004E006F0001000100010001000D00
      0A006D007400500072006F00640075006300740042006100720043006F006400
      65004E006F00010042006100720043006F00640065004E006F00010001000100
      01000D000A006D007400500072006F00640075006300740054006F0074006100
      6C00500063007300010054006F00740061006C00500063007300010001000100
      01000D000A006D007400500072006F006400750063007400500072006F006400
      750063007400470072006F00750070004E006F000100500072006F0064007500
      63007400470072006F00750070004E006F0001000100010001000D000A006D00
      7400500072006F00640075006300740041005400010041005400010001004100
      5400010001000D000A006D007400500072006F00640075006300740041004200
      0100410042000100010041005700010001000D000A006D007400500072006F00
      640075006300740053007000650063006900650073004E006F00010053007000
      650063006900650073004E006F0001000100010001000D000A006D0074005000
      72006F00640075006300740053007500720066006100630069006E0067004E00
      6F00010053007500720066006100630069006E0067004E006F00010001000100
      01000D000A006D007400500072006F0064007500630074004700720061006400
      65004E006F000100470072006100640065004E006F0001000100010001000D00
      0A006D007400500072006F0064007500630074004E00540001004E0054000100
      01004E005400010001000D000A006D007400500072006F006400750063007400
      4E00420001004E004200010001004E005700010001000D000A006D0074005000
      72006F006400750063007400500072006F006400750063007400430061007400
      650067006F00720079004E006F000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F0001000100010001000D000A006D00
      7400500072006F0064007500630074004D00610072006B006500740052006500
      670069006F006E004E006F0001004D00610072006B0065007400520065006700
      69006F006E004E006F0001000100010001000D000A006D007400500072006F00
      64007500630074005400610067004E006F0001005400610067004E006F000100
      0100010001000D000A006D007400500072006F0064007500630074004D006100
      72006B006E0061006400730052006500670069006F006E0001004D0061007200
      6B006E0061006400730052006500670069006F006E0001000100010001000D00
      0A006D007400500072006F006400750063007400410063007400690076006500
      010041006300740069007600650001000100010001000D000A006D0074005000
      72006F006400750063007400530069007A00650046006F0072006D0061007400
      0100530069007A00650046006F0072006D006100740001000100530069007A00
      6500200066006F0072006D0061007400010001000D000A006D00740050007200
      6F0064007500630074004C0065006E0067007400680046006F0072006D006100
      740001004C0065006E0067007400680046006F0072006D006100740001000100
      010001000D000A006D007400500072006F00640075006300740056006F006C00
      75006D00650046006F0072006D0061007400010056006F006C0075006D006500
      46006F0072006D006100740001000100010001000D000A006D00740050007200
      6F0064007500630074004C0061006E006700750061006700650043006F006400
      650001004C0061006E006700750061006700650043006F006400650001000100
      010001000D000A006D007400500072006F006400750063007400560061007200
      750053006C00610067000100560061007200750053006C006100670001005600
      61007200750073006C0061006700010043006F006D006D006F00640069007400
      79000100560061007200750073006C006100670001000D000A00630064007300
      5F00500072006F0064004C00690073007400530065007100750065006E006300
      65004E006F000100530065007100750065006E00630065004E006F0001000100
      010001000D000A006300640073005F00500072006F0064004C00690073007400
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F0001000100010001000D000A006300640073005F00500072006F00
      64004C00690073007400500072006F006400750063007400470072006F007500
      70004E006F000100500072006F006400750063007400470072006F0075007000
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      4C00690073007400470072006100640065004E0061006D006500010047007200
      6100640065004E0061006D00650001000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074005300700065006300690065007300
      4E0061006D006500010053007000650063006900650073004E0061006D006500
      01000100010001000D000A006300640073005F00500072006F0064004C006900
      7300740053007500720066006100630069006E0067004E0061006D0065000100
      53007500720066006100630069006E0067004E0061006D006500010001000100
      01000D000A006300640073005F00500072006F0064004C006900730074004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      0100410063007400750061006C0054006800690063006B006E00650073007300
      4D004D0001000100010001000D000A006300640073005F00500072006F006400
      4C00690073007400410063007400750061006C00570069006400740068004D00
      4D000100410063007400750061006C00570069006400740068004D004D000100
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      74004E006F006D0069006E0061006C0054006800690063006B006E0065007300
      73004D004D0001004E006F006D0069006E0061006C0054006800690063006B00
      6E006500730073004D004D0001000100010001000D000A006300640073005F00
      500072006F0064004C006900730074004E006F006D0069006E0061006C005700
      69006400740068004D004D0001004E006F006D0069006E0061006C0057006900
      6400740068004D004D0001000100010001000D000A006300640073005F005000
      72006F0064004C00690073007400500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F0064004C0069007300740047007200
      6100640065004E006F000100470072006100640065004E006F00010001000100
      01000D000A006300640073005F00500072006F0064004C006900730074005300
      7000650063006900650073004E006F0001005300700065006300690065007300
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      4C00690073007400500072006F00640075006300740043006100740065006700
      6F00720079004E006F000100500072006F006400750063007400430061007400
      650067006F00720079004E006F0001000100010001000D000A00630064007300
      5F00500072006F0064004C006900730074005300750072006600610063006900
      6E0067004E006F00010053007500720066006100630069006E0067004E006F00
      01000100010001000D000A006300640073005F00500072006F0064004C006900
      730074004E006F006D0069006E0061006C0054006800690063006B006E006500
      7300730049004E004300480001004E006F006D0069006E0061006C0054006800
      690063006B006E0065007300730049004E004300480001000100010001000D00
      0A006300640073005F00500072006F0064004C006900730074004E006F006D00
      69006E0061006C005700690064007400680049004E004300480001004E006F00
      6D0069006E0061006C005700690064007400680049004E004300480001000100
      010001000D000A006300640073005F00500072006F0064004C00690073007400
      500072006F006400750063007400430061007400650067006F00720079004E00
      61006D0065000100500072006F00640075006300740043006100740065006700
      6F00720079004E0061006D00650001000100010001000D000A00630064007300
      5F00500072006F0064004C00690073007400500072006F006400750063007400
      4100630074000100500072006F00640075006300740041006300740001000100
      010001000D000A006300640073005F00500072006F0064004C00690073007400
      500072006F006400750063007400470072006F00750070004100630074000100
      500072006F006400750063007400470072006F00750070004100630074000100
      0100010001000D000A006300640073005F00500072006F0064004C0069007300
      7400530070006500630069006500730041006300740001005300700065006300
      69006500730041006300740001000100010001000D000A006300640073005F00
      500072006F0064004C0069007300740053007500720066006100630069006E00
      6700410063007400010053007500720066006100630069006E00670041006300
      740001000100010001000D000A006300640073005F00500072006F0064004C00
      69007300740049006D007000410063007400010049006D007000410063007400
      01000100010001000D000A006300640073005F00500072006F0064004C006900
      7300740047007200610064006500410063007400010047007200610064006500
      41006300740001000100010001000D000A006300640073005F00530070006500
      630069006500730053007000650063006900650073004E006F00010053007000
      650063006900650073004E006F0001000100010001000D000A00630064007300
      5F00530070006500630069006500730053007000650063006900650073004E00
      61006D006500010053007000650063006900650073004E0061006D0065000100
      0100010001000D000A006300640073005F005300700065006300690065007300
      4C0061006E006700750061006700650043006F006400650001004C0061006E00
      6700750061006700650043006F006400650001000100010001000D000A006300
      640073005F005300700065006300690065007300530065007100750065006E00
      630065004E006F000100530065007100750065006E00630065004E006F000100
      0100010001000D000A006300640073005F005300700065006300690065007300
      4300720065006100740065006400550073006500720001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F0053007000650063006900650073004D006F006400690066006900
      65006400550073006500720001004D006F006400690066006900650064005500
      7300650072000100C4006E00640072006100640020006100760001000100C400
      6E00640072006100640020006100760001000D000A006300640073005F005300
      7000650063006900650073004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F00530070006500630069006500730041006300
      7400010041006300740001000100010001000D000A006300640073005F005300
      700065006300690065007300530070006500630069006500730043006F006400
      65000100530070006500630069006500730043006F0064006500010001000100
      01000D000A006300640073005F00530070006500630069006500730053007000
      65006300690065007300530068006F00720074004E0061006D00650001005300
      700065006300690065007300530068006F00720074004E0061006D0065000100
      0100010001000D000A006300640073005F005300700065006300690065007300
      44004B0043006F0064006500010044004B0043006F0064006500010044004B00
      20006B006F0064000100010044004B0020006B006F00640001000D000A006300
      640073005F005300700065006300690065007300530070006500630069006500
      730043006F00640065004E0061006D0065000100530070006500630069006500
      730043006F00640065004E0061006D00650001000100010001000D000A006300
      640073005F0067007200610064006500470072006100640065004E006F000100
      470072006100640065004E006F0001000100010001000D000A00630064007300
      5F0067007200610064006500470072006100640065004E0061006D0065000100
      470072006100640065004E0061006D00650001000100010001000D000A006300
      640073005F00670072006100640065004C0061006E0067007500610067006500
      43006F006400650001004C0061006E006700750061006700650043006F006400
      650001000100010001000D000A006300640073005F0067007200610064006500
      530065007100750065006E00630065004E006F00010053006500710075006500
      6E00630065004E006F0001000100010001000D000A006300640073005F006700
      7200610064006500430072006500610074006500640055007300650072000100
      43007200650061007400650064005500730065007200010053006B0061007000
      610064002000610076000100010053006B006100700061006400200061007600
      01000D000A006300640073005F00670072006100640065004D006F0064006900
      6600690065006400550073006500720001004D006F0064006900660069006500
      640055007300650072000100C4006E0064007200610064002000610076000100
      0100C4006E00640072006100640020006100760001000D000A00630064007300
      5F00670072006100640065004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F00670072006100640065004D00610069006E00
      470072006100640065004E006F0001004D00610069006E004700720061006400
      65004E006F0001000100010001000D000A006300640073005F00670072006100
      64006500410063007400010041006300740001000100010001000D000A006300
      640073005F00670072006100640065004700720061006400650043006F006400
      650001004700720061006400650043006F006400650001000100010001000D00
      0A006300640073005F006700720061006400650044004B0043006F0064006500
      010044004B0043006F0064006500010044004B0020006B006F00640001000100
      44004B0020006B006F00640001000D000A006300640073005F00670072006100
      640065004700720061006400650043006F00640065004E0061006D0065000100
      4700720061006400650043006F00640065004E0061006D006500010001000100
      01000D000A006300640073005F0053007500720066006100630069006E006700
      53007500720066006100630069006E0067004E006F0001005300750072006600
      6100630069006E0067004E006F0001000100010001000D000A00630064007300
      5F0053007500720066006100630069006E006700530075007200660061006300
      69006E0067004E0061006D006500010053007500720066006100630069006E00
      67004E0061006D00650001000100010001000D000A006300640073005F005300
      7500720066006100630069006E0067004C0061006E0067007500610067006500
      43006F006400650001004C0061006E006700750061006700650043006F006400
      650001000100010001000D000A006300640073005F0053007500720066006100
      630069006E006700530065007100750065006E00630065004E006F0001005300
      65007100750065006E00630065004E006F0001000100010001000D000A006300
      640073005F0053007500720066006100630069006E0067004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      730065007200010053006B006100700061006400200061007600010001005300
      6B00610070006100640020006100760001000D000A006300640073005F005300
      7500720066006100630069006E0067004D006F00640069006600690065006400
      550073006500720001004D006F00640069006600690065006400550073006500
      72000100C4006E00640072006100640020006100760001000100C4006E006400
      72006100640020006100760001000D000A006300640073005F00530075007200
      66006100630069006E0067004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F0053007500720066006100630069006E006700
      410063007400010041006300740001000100010001000D000A00630064007300
      5F0053007500720066006100630069006E006700530075007200660061006300
      69006E00670043006F0064006500010053007500720066006100630069006E00
      670043006F006400650001000100010001000D000A006300640073005F005300
      7500720066006100630069006E00670044004B0043006F006400650001004400
      4B0043006F0064006500010044004B0020006B006F0064000100010044004B00
      20006B006F00640001000D000A006300640073005F0053007500720066006100
      630069006E0067004B006F00720074004E0061006D006E0001004B006F007200
      74004E0061006D006E0001005300F6006B006E0061006D006E00010053006500
      610072006300680020006E0061006D00650001005300F6006B006E0061006D00
      6E0001000D000A006300640073005F0053007500720066006100630069006E00
      670053007500720066006100630069006E00670043006F00640065004E006100
      6D006500010053007500720066006100630069006E00670043006F0064006500
      4E0061006D00650001000100010001000D000A006300640073005F0050007200
      6F0064004300610074006700500072006F006400750063007400430061007400
      650067006F00720079004E006F000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F0001000100010001000D000A006300
      640073005F00500072006F0064004300610074006700500072006F0064007500
      63007400430061007400650067006F00720079004E0061006D00650001005000
      72006F006400750063007400430061007400650067006F00720079004E006100
      6D00650001000100010001000D000A006300640073005F00500072006F006400
      4300610074006700500072006F00640075006300740043006100740065006700
      6F0072007900450078007400650072006E0061006C0043006F00640065000100
      500072006F006400750063007400430061007400650067006F00720079004500
      78007400650072006E0061006C0043006F006400650001000100010001000D00
      0A006300640073005F00500072006F0064004300610074006700530065007100
      750065006E00630065004E006F000100530065007100750065006E0063006500
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      4300610074006700430072006500610074006500640055007300650072000100
      43007200650061007400650064005500730065007200010053006B0061007000
      610064002000610076000100010053006B006100700061006400200061007600
      01000D000A006300640073005F00500072006F00640043006100740067004D00
      6F00640069006600690065006400550073006500720001004D006F0064006900
      660069006500640055007300650072000100C4006E0064007200610064002000
      6100760001000100C4006E00640072006100640020006100760001000D000A00
      6300640073005F00500072006F00640043006100740067004400610074006500
      4300720065006100740065006400010044006100740065004300720065006100
      74006500640001000100010001000D000A006300640073005F00500072006F00
      6400430061007400670041006300740001004100630074000100010001000100
      0D000A006300640073005F00500072006F006400430061007400670049006D00
      700043006F0064006500010049006D00700043006F0064006500010001000100
      01000D000A006300640073005F00500072006F00640043006100740067004900
      6D00700072006500670049006E00500072006F0064004E0061006D0065000100
      49006D00700072006500670049006E00500072006F0064004E0061006D006500
      01000100010001000D000A006300640073005F00500072006F00640043006100
      740067004C0061006E006700750061006700650043006F006400650001004C00
      61006E006700750061006700650043006F006400650001000100010001000D00
      0A006300640073005F00500072006F006400430061007400670044004B004300
      6F0064006500010044004B0043006F0064006500010044004B0020006B006F00
      64000100010044004B0020006B006F00640001000D000A006300640073005F00
      500072006F006400430061007400670049006D00700043006F00640065004E00
      61006D006500010049006D00700043006F00640065004E0061006D0065000100
      0100010001000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660072006D00470065007400500072006F00
      64005F0049004900490001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00500061006E0065006C0034000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A0070006D00500072006F00640075006B0074004C00690073007400
      01005300650067006F00650020005500490001000100010001000D000A006400
      78004200610072004D0061006E00610067006500720031000100530065006700
      6F00650020005500490001000100010001000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A004900440053005F0030000100500072006F00640075006B00
      740065006E002000E400720020006100760061006B0074006900760065007200
      6100640001000100500072006F00640075006300740020006900730020004E00
      6F006E00410063007400690076006500010001000D000A004900440053005F00
      31000100500072006F00640075006B0074006700720075007000700065006E00
      2000E400720020006100760061006B0074006900760065007200610064000100
      0100500072006F0064007500630074002000670072006F007500700020006900
      730020004E006F006E00410063007400690076006500010001000D000A004900
      440053005F003200010054007200E40073006C0061006700650074002000E400
      720020006100760061006B007400690076006500720061006400010001005300
      70006500630069006500730020006900730020004E006F006E00410063007400
      690076006500010001000D000A004900440053005F0033000100550074006600
      F600720061006E006400650074002000E400720020006100760061006B007400
      6900760065007200610064000100010054006800650020007300750072006600
      6100630069006E00670020006900730020004E006F006E004100630074006900
      76006500010001000D000A004900440053005F003400010049006D0070007200
      650067006E006500720069006E006700730074007900700065006E002000E400
      720020006100760061006B007400690076006500720061006400010001005400
      72006500610074006D0065006E00740020007400790070006500200069007300
      2000640069007300610062006C0065006400010001000D000A00490044005300
      5F00350001004B00760061006C00690074006500740065006E002000E4007200
      20006100760061006B0074006900760065007200610064000100010047007200
      6100640065002000690073002000640069007300610062006C00650064000100
      01000D000A004900440053005F00360001005600E4006C006A00200065007400
      74002000760061007200750073006C0061006700210001000100530065006C00
      65006300740020006100200063006F006D006D006F0064006900740079000100
      01000D000A004900440053005F00370001004400690061006D00650074006500
      7200280063006D00290001000100010001000D000A004900440053005F003800
      01004C00E4006E0067006400280063006D00290001004C00E4006E0067006400
      200063006D0001004C0065006E00670068007400200063006D0001004C00E400
      6E0067006400200063006D0001000D000A004900440053005F00390001004200
      7200650064006400280063006D00290001000100570069006400740068002800
      63006D002900010001000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A006C006300470072006100640065002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4700720061006400650043006F00640065004E0061006D006500010001000100
      01000D000A006C00630053007000650063006900650073002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001005300
      70006500630069006500730043006F00640065004E0061006D00650001000100
      010001000D000A006C00630053007500720066006100630069006E0067002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E00010053007500720066006100630069006E00670043006F00640065004E00
      61006D00650001000100010001000D000A006C00630049006D00700072006500
      67002E00500072006F0070006500720074006900650073002E004C0069007300
      740043006F006C0075006D006E0073005B0030005D002E004300610070007400
      69006F006E00010049006D00700043006F00640065004E0061006D0065000100
      0100010001000D000A0072006700530065007100750065006E00630065004E00
      6F002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E00430061007000740069006F006E00010026003100
      200054007200E4007600610072006F007200010001003100200057006F006F00
      6400700072006F0064007500630074007300010001000D000A00720067005300
      65007100750065006E00630065004E006F002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0031005D002E0043006100
      7000740069006F006E000100260032002000530074006F006C00700001000100
      010001000D000A0072006700530065007100750065006E00630065004E006F00
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0032005D002E00430061007000740069006F006E000100260033002000
      500061006C006C000100010033002000500061006C006C006500740073000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660072006D0047006500740050007200
      6F0064005F004900490049000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00500061006E006500
      6C0034000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A0070006D00500072006F00640075006B00
      74004C006900730074000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0064007800420061007200
      4D0061006E00610067006500720031000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
  end
end
