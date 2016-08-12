object FormPrepareOrderWizard: TFormPrepareOrderWizard
  Left = 789
  Top = 418
  ActiveControl = ListBoxAvailableManufacturers
  Caption = 'Preparation Commande'
  ClientHeight = 615
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object JvWizardPrepareOrder: TJvWizard
    Left = 0
    Top = 0
    Width = 910
    Height = 615
    ActivePage = JvWizardIPSelectSupplier
    ButtonBarHeight = 42
    ButtonStart.Caption = 'To &Start Page'
    ButtonStart.NumGlyphs = 1
    ButtonStart.Width = 85
    ButtonLast.Caption = 'To &Last Page'
    ButtonLast.NumGlyphs = 1
    ButtonLast.Width = 85
    ButtonBack.Caption = '< &Back'
    ButtonBack.NumGlyphs = 1
    ButtonBack.Width = 75
    ButtonNext.Caption = '&Next >'
    ButtonNext.NumGlyphs = 1
    ButtonNext.Width = 75
    ButtonFinish.Caption = '&Finish'
    ButtonFinish.NumGlyphs = 1
    ButtonFinish.Width = 75
    ButtonCancel.Caption = 'Cancel'
    ButtonCancel.NumGlyphs = 1
    ButtonCancel.ModalResult = 2
    ButtonCancel.Width = 75
    ButtonHelp.Caption = '&Help'
    ButtonHelp.NumGlyphs = 1
    ButtonHelp.Width = 75
    ShowRouteMap = True
    DesignSize = (
      910
      615)
    object JvWizardIPSelectSupplier: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Selection du fournisseur'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 
        'Veuillez selectionner le fournisseur pour lequel vous souhaitez ' +
        'preparer un commande ainsi que les editeurs concernes'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      object PanelManufacturersSelection: TPanel
        Left = 0
        Top = 110
        Width = 765
        Height = 463
        Align = alClient
        TabOrder = 0
        object ListBoxAvailableManufacturers: TListBox
          Left = 1
          Top = 1
          Width = 763
          Height = 240
          Align = alTop
          ItemHeight = 13
          MultiSelect = True
          TabOrder = 0
        end
        object ListBoxSelectedManufacturers: TListBox
          Left = 1
          Top = 241
          Width = 763
          Height = 221
          Align = alClient
          ItemHeight = 13
          MultiSelect = True
          TabOrder = 1
        end
      end
      object PanelButtonsCat: TPanel
        Left = 0
        Top = 70
        Width = 765
        Height = 40
        Hint = 'Sauver le profil editeur - fournisseur'
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SBAddAll: TSpeedButton
          Left = 56
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Ajouter tout'
          Glyph.Data = {
            1A030000424D1A030000000000001A0200002800000010000000100000000100
            08000000000000010000120B0000120B0000790000007900000000000000FFFF
            FF00FF00FF00FDF9F600FEF5ED00FF7E0000FC7D0000FA7C0000F87B0000F479
            0000F2780000F0770000EE760000EC750000E8730000E2700000E06F0000DE6E
            0000DA6C0000D86B0000D66A0000D4690000D2680000CE660000CA640000C863
            0000C6620000C4610000C2600000C05F0000BE5E0000BC5D0000BA5C0000B85B
            0000B4590000B2580000AA540000A04F00009C4D0000984B0000944900009047
            00008E4600008A440000884300007A3C000074390000723800006C3500006A34
            0000663200006431000062300000602F0000502800004C260000BB5D0200FF81
            0500BB5F0500FC810800FF840B00FF850D00D36F0E00FF881300FF8A1700FF8E
            1F00FC8D2000C06B1800FF912500D67B2200FF952D00FF983300FF9B3900FF9E
            3F00FF9F4100FFA04300CD843C00F09C4A00ED9B4B00E8984A00E0954A00CE8B
            4900FFAC5B00FFAD5D00D0905200D3935400D89A5D00FFB87300D69F6A00FFBF
            8100FFC58D00F5BF8900DCAD8000FFC99500FFCA9600FFCA9700DFB48A00E2B9
            9200E2BA9300FFD2A700FFD3A900E6C4A300FFDCB900E8C9AA00FEDDBD00FFDF
            BF00FEDEBE00FDDDBD00FEDFC000F9DABC00FFE3C700ECD3BA00FFE9D300F7ED
            E300FDFAF700FEFCFA00FFEFDE00FBF7F200FCF9F500FDFBF800FEFEFD000202
            02020237352F2F34360202020202020202333327211F1F202630300202020202
            2E2C1D1C1F211F1F1D1C2B360202022E2816191F21586F43201F1C2B3002022E
            1113181F5475016538201F1C30022D220B131C55030101016138201D26352D10
            0B1156727877787301603A1E23352908070704015B6D015C7101621F1F312544
            3C06745E0566014C5176671E1F2F254A4709423B066B015016453E1921322547
            59050A060668014F121216182432020D64530E0B066A014E121417152A02020D
            4B6E52070C6C014D0F11101B2A0202021653705F49413D3F3F39142B02020202
            0247475D69635A5748101002020202020202020E404644061A0202020202}
          OnClick = SBAddAllClick
        end
        object SBRemoveAll: TSpeedButton
          Left = 88
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Supprimer Tout'
          Glyph.Data = {
            12030000424D1203000000000000120200002800000010000000100000000100
            08000000000000010000120B0000120B0000770000007700000000000000FFFF
            FF00FF00FF00FFFBF800FFFAF600FFF8F200FF7E0000FC7D0000FA7C0000F87B
            0000F4790000F2780000F0770000EE760000EC750000EA740000E8730000E270
            0000E06F0000DE6E0000D86B0000D66A0000D4690000D2680000CE660000CA64
            0000C8630000C6620000C4610000C2600000C05F0000BE5E0000BC5D0000BA5C
            0000B85B0000B4590000B2580000AA540000A04F00009C4D0000984B00009449
            0000904700008E4600008A440000884300007A3C000074390000723800006C35
            00006A340000663200006431000062300000602F0000502800004C260000DA6D
            0200FF810500D16A0500BE620800FF840B00FF850D00BE650E00FF881300FF8A
            1700EC811800FF8E1F00FF912500CA742000C3722200FF952D00FF983300FF9B
            3900FF9E3F00FF9F4100FFA04300C9823C00FDA75200FDA85400CE8B4900FFAC
            5B00CE8B4A00FFAD5D00CE8C4B00FDAC5D00FCB26A00FFB87300FFBF8100FFC3
            8900FFC58D00DFAF8000FFC99500FFCA9700E9B98A00EFC09200F3C49600E2BA
            9300FFD2A700FFD3A900F6CCA300FEDCBA00E8C9AA00FFDDBC00F9D9B900FFDF
            BF00FFE3C700EED5BD00EDD5BD00EDD5BE00EDD6C000FFE9D300FCEDDE00F7ED
            E300FFF6ED00FFFBF700FEFCFA00FFFEFD00FCF9F50002020202023836303035
            3702020202020202023434282220202127313102020202022F2D1E1D20222020
            1E1D2C370202022F29171A20226E015221201D2C3102022F13141920216D0154
            2121201D31022E230C141D1F216C01522121211E27362E120C13453C1F6B0152
            21463F1F24362A09080870600F68014D50766620203226443D0772015967015B
            7101611F2030264B480A557375037574015E3B1A2233264858060B4F04010101
            5F3917192533020E6353100C4E050164391518162B02020E4C6A51080D566542
            1113121C2B02020217536F5D4A433E40403A152C020202020248485C69625A57
            491212020202020202020210414744071B0202020202}
          OnClick = SBRemoveAllClick
        end
        object SBRemoveSelected: TSpeedButton
          Left = 120
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Supprimer la selection'
          Glyph.Data = {
            D2030000424DD203000000000000D20200002800000010000000100000000100
            08000000000000010000120B0000120B0000A7000000A700000000000000FFFF
            FF00FF00FF00FBFEFB00044D0600044C06000449060005610A0005600900055B
            0900045D090005680C0005650B000784100007831000055E0A00066D0D00066C
            0C0006670C0008721000C0EBC30007B2160007B1160008B4180008B4190008B1
            190008AB17000796140009BA1A0009B91A0009B81A0009B51A0009B4190009B3
            190009B31A0009B2190009B21A0008A3170009B1190009B01800089413000AB4
            1A00089113000BB61C000BB31B000CB31C000A7F150012B4210017B626002ABC
            380041C34D004FC85A0050C85C0051C95D0097DE9E00ADE5B200BFEBC300C0EB
            C400C2ECC6000BB21C000A8517000A6A15000F911D000B6A15000F821C002DBD
            3E0085D98E00E4F7E6000AB21F000EB4250010BA290011B727000F7C1F00138D
            230025AE3900F5FCF60011B82B0014C0300014B730000F85220016BD340018B7
            360016AE34001DB93D0032B74E0037B6500095DEA4001AB93E001BBD40001DBA
            41001FC1460024A342001DBB450020BE490020BD48001B9A3A0052C46F0066CD
            8100A5E4B500E4F7E900F9FDFA0022BD4D0022BC4B0021B6490023BC4D002AC0
            530043B9640067CC830071D28C009FE2B100C5EED0002FB157005DC87D0061CB
            800024BE56002AC65B0039CB6A0084D89F00B1E8C3002AB65B002CC565002FC2
            670036C56A0037C26C003DC76F0048CB780058CC83006BD493006FD2930082DB
            A40028C063002DC2670030C3690031C3690033C76C0036C46D0037C56E0038C6
            700042C9770044C9780049CA7B0052CC81005FD38D0078D89D007AD89E0080DA
            A3008ADDAA00A3E5BD00AFE8C600C9EFD800CBF0DA00F1FBF500F8FDFA0064D4
            920091E2B3009BE5BA00ADE8C500F5FCF800A6E7C200BAEDD100BCEDD200D2F4
            E100CCF2DE00F9FDFB00FDFFFE00DBF7EA00FDFEFE000202020202060911110F
            05020202020202020208082A272221261B0B0B02020202023D2E2B1D17152120
            1E1D0E040202023F4F50473B163A013423201C0D1202023F5D584E4423390135
            2323211C1202135F735C452C243801342323231E280A13777865412F2D140134
            2331301F1A0A407B867A6362696E0132334B3718210C497E8A88970193960142
            4301362921103E808E859164A4A3A6030156534C19073E6B9B89849098010101
            6D5E574625070255A08182798F9D01766659514D3C0202556CA191878392957C
            72685A523C0202024A75A5947F8D8B8C7D746748020202020261619CA29F9E9A
            996F6F0202020202020202546071706A5B0202020202}
          OnClick = SBRemoveSelectedClick
        end
        object SBAddSelected: TSpeedButton
          Left = 24
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Ajouter la selection'
          Glyph.Data = {
            D6030000424DD603000000000000D60200002800000010000000100000000100
            08000000000000010000120B0000120B0000A8000000A800000000000000FFFF
            FF00FF00FF00FAFDFA00FDFEFD00044D0600044C06000449060005610A000560
            0900055B0900045D090005680C0005650B000784100007831000055E0A00066D
            0D00066C0C0006670C000872100007B2160007B1160008B4180008B4190008B1
            190008AB17000796140009BA1A0009B91A0009B81A0009B51A0009B4190009B3
            190009B31A0009B2190008A3170009B1190009B01800089413000AB41A000891
            13000BB61C000BB31B000EB41E000A7F150020B92F0044C5510058CB63005BCC
            66006FD1770083D88B008EDC950096DE9D0097DE9E00A6E3AC00ADE5B2000BB2
            1C000A8517000A6A15000F911D000B6A15000F821C004FC85C0067CF7300BCEA
            C100E4F7E600F2FBF3000AB21F000EB4250010BA290011B727000F7C1F00138D
            230025AE3900F5FCF60011B82B0014C0300014B730000F852200F7FDF800F6FC
            F70016BD340018B7360016AE340025BC440032B74E0037C1530037B65000F8FD
            F9001AB93E001BBD40001DBA41001FC1460024A342005CCE76001DBB45001EBC
            470020BE49001B9A3A0052C46F0066CD81001EBC490020BB4A0022BD4D0021B6
            490023BC4D0043B9640061D0810067CC830071D28C009CE2AF00C7EED2002FB1
            57005DC87D0061CB8000F0FAF30024BE56002AC65B0039CB6A0067D2890084D8
            9F002AB65B002CC565002FC2670036C56A0037C26C0048CB780058CC830067D3
            8E006BD493006FD2930082DBA400CAF0D800CBF0D90028C063002DC2670030C3
            690031C3690033C76C0036C46D0037C56E0038C6700038C56F003DC7730042C9
            770044C9780049CA7B0050CC800052CC81005FD38D0080DAA300ADE8C400AFE8
            C600CDF1DB00CCF0DA00E6F8ED0064D4920091E2B3009BE5BA00ADE8C500C9F0
            D900A6E7C200BAEDD100BCEDD200D2F4E100CCF2DE00DBF7EA00020202020207
            0A121210060202020202020202090929262221251B0C0C02020202023B2D2A1D
            171521201E1D0F050202023D4F5247391632412E23201C0E1302023D625B4E44
            304301372B23211C130214637660453151010101352B231E270B147A7B684050
            0459040301342C1F1A0B3E7E8B7D74016F70013342013618210D4980918D9C98
            8EA1012F3F4B382821113C83968A94908F85015F5A57554C19083C6D9F8E898F
            8F86016C66615A4624080258A484877C8F9B0178675C534D3A0202586EA5978C
            889A0181756A5D543A0202024A79A799829592937F77694802020202026565A0
            A6A3A29E9D71710202020202020202566473726B5E0202020202}
          OnClick = SBAddSelectedClick
        end
        object SBSaveSupplierProfile: TSpeedButton
          Left = 296
          Top = 8
          Width = 23
          Height = 22
          Hint = 'Ajouter la selection'
          Glyph.Data = {
            62020000424D6202000000000000620100002800000010000000100000000100
            08000000000000010000120B0000120B00004B0000004B00000000000000FFFF
            FF00FF00FF00E2DDDE00A6393A00AD4C4D00AE4E4F00C5595A00C0585900CB60
            6100B2585900B55C5D00AD585900A63B3A00A53F3F009D454400CD646400C865
            6500A9585700A35756009F555400C76D6D00C8717100C3727200CA787800CB80
            7F00A4686800D38D8C00B57A7A00D28E8E00D28F8E00A5787800E6C7C700EEDC
            DC00E2DCDC00E2DDDD00DDD9D900DBD7D700EAE8E800D5918F00C2858400D09C
            9A00E4C5C400D2B6B500B6635E00C16F6B00C4716D00C3726E00EED8D700B1A1
            A000B6635D00B7645E00E6CCCA00E5D9D800EFDAD800EEDCDA00CBBEBC00EFE3
            E100E6E2E100E5E2E100E4E1E000F1EDEB00DBD9D800F1EEEB00F0EFEE00EBEA
            E900EFEFEE00EBEBEA00E5E5E400E6E7E600E5E6E500F2F6F500F3F8F700E8E9
            E900E6E7E7000202020202020202081F383F46130E02020202020202022E101A
            0F3501120D0B020202020202022F091C14313D0C040B02020202081F382D0716
            19171815110A0202022E101A0F2C2921373630391B060202022F091C14323448
            264143471E050202022D0716192C2A4525243E491D0502081F2C292137332042
            3C3A3B4027052E101A32344826412B4A2223034428022F091C2C2A4525243E49
            1D05020202022D07163320423C3A3B402705020202022C2921372B4A22230344
            280202020202323448264143471E05020202020202022C2A4525243E491D0502
            0202020202023320423C3A3B40270502020202020202022B4A22230344280202
            020202020202}
          OnClick = SBSaveSupplierProfileClick
        end
        object ComboBoxSuppliers: TComboBox
          Left = 152
          Top = 11
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Text = 'Choisir fournisseur'
          OnChange = ComboBoxSuppliersChange
        end
      end
    end
    object JvWizardIPSelectFilters: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Restreindre selection'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Veuillez selectionner un categorie pour les commandes'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      Caption = 'JvWizardIPSelectFilters'
      object AdminStockCatTree: TdxDBTreeView
        Left = 0
        Top = 192
        Width = 765
        Height = 381
        ShowNodeHint = True
        DataSource = RemoteDB.CategoriesSRC
        DisplayField = 'categories_name'
        KeyField = 'categories_id'
        ListField = 'categories_name'
        ParentField = 'parent_id'
        RootValue = '0'
        SeparatedSt = ' - '
        RaiseOnError = True
        Indent = 19
        Align = alBottom
        ParentColor = False
        Options = [trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        SelectedIndex = -1
        TabOrder = 0
      end
      object CheckBoxOnlyEmpty: TCheckBox
        Left = 16
        Top = 80
        Width = 145
        Height = 17
        Caption = 'Uniquement Stock null'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBoxSkipDiscontinued: TCheckBox
        Left = 16
        Top = 104
        Width = 169
        Height = 17
        Caption = 'Sauter les produits obsoletes'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBoxShowStock: TCheckBox
        Left = 16
        Top = 128
        Width = 169
        Height = 17
        Caption = 'Afficher stock'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBoxShowSalesRecords: TCheckBox
        Left = 16
        Top = 152
        Width = 169
        Height = 17
        Caption = 'Afficher ventes / semaines :'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBoxShowSalesRecordsClick
      end
      object JvSpinEditSalesRecordsWeeks: TJvSpinEdit
        Left = 176
        Top = 152
        Width = 41
        Height = 21
        MaxValue = 52.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        TabOrder = 5
      end
    end
    object JvWizardIPShowGrid: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Title'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Subtitle'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      Caption = 'JvWizardIPShowGrid'
      OnPage = JvWizardIPShowGridPage
      object PanelAdminStockGrid: TPanel
        Left = 0
        Top = 125
        Width = 765
        Height = 448
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object StringGridAdminOrder: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 765
          Height = 448
          Cursor = crDefault
          Align = alClient
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          OnCellValidate = StringGridAdminOrderCellValidate
          SortSettings.Show = True
          ControlLook.ControlStyle = csTheme
          ControlLook.ProgressXP = True
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          CellNode.TreeColor = clSilver
          FixedColWidth = 20
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          Filter = <>
          Version = '3.3.0.4'
          ColWidths = (
            20
            20
            20
            20
            20)
        end
      end
      object PanelAdminStockButtons: TPanel
        Left = 0
        Top = 70
        Width = 765
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object JvExpressButtonAdminOrderSave: TJvExpressButton
          Left = 162
          Top = 0
          Width = 81
          Height = 55
          Align = alLeft
          ButtonBorder = bbMono
          Caption = 'Sauver'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clBlack
          HighlightFont.Height = -11
          HighlightFont.Name = 'MS Sans Serif'
          HighlightFont.Style = []
          ImageIndex = 35
          Offset = 2
          ParentImageSize = False
          Spacing = 8
          OnClick = JvExpressButtonAdminOrderSaveClick
        end
        object JvExpressButtonOrderSheet: TJvExpressButton
          Left = 0
          Top = 0
          Width = 81
          Height = 55
          Align = alLeft
          ButtonBorder = bbMono
          Caption = 'Niveau sock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clBlack
          HighlightFont.Height = -11
          HighlightFont.Name = 'MS Sans Serif'
          HighlightFont.Style = []
          ImageIndex = 7
          Offset = 2
          ParentImageSize = False
          Spacing = 8
          OnClick = JvExpressButtonOrderSheetClick
        end
        object JvExpressButtonAdminOrderPrint: TJvExpressButton
          Left = 81
          Top = 0
          Width = 81
          Height = 55
          Align = alLeft
          ButtonBorder = bbMono
          Caption = 'Impression'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clBlack
          HighlightFont.Height = -11
          HighlightFont.Name = 'MS Sans Serif'
          HighlightFont.Style = []
          ImageIndex = 21
          Offset = 2
          ParentImageSize = False
          Spacing = 8
          OnClick = JvExpressButtonAdminOrderPrintClick
        end
        object JVEBDicontinued: TJvExpressButton
          Left = 243
          Top = 0
          Width = 81
          Height = 55
          Align = alLeft
          ButtonBorder = bbMono
          Caption = 'Obsolete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HighlightFont.Charset = DEFAULT_CHARSET
          HighlightFont.Color = clBlack
          HighlightFont.Height = -11
          HighlightFont.Name = 'MS Sans Serif'
          HighlightFont.Style = []
          ImageIndex = 35
          Offset = 2
          ParentImageSize = False
          Spacing = 8
          OnClick = JVEBDicontinuedClick
        end
      end
    end
    object JvWizardRouteMapNodes1: TJvWizardRouteMapNodes
      Left = 0
      Top = 0
      Width = 145
      Height = 573
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
end
