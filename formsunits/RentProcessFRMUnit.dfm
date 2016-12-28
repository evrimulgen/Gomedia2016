object FormProcessRent: TFormProcessRent
  Left = 394
  Top = 324
  BorderIcons = []
  Caption = 'Finaliser d'#233'part Location'
  ClientHeight = 317
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    509
    317)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxSalesexeccustomer: TGroupBox
    Left = 4
    Top = 0
    Width = 249
    Height = 149
    Caption = 'Client'
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 23
      Width = 43
      Height = 15
      Caption = 'Num'#233'ro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 47
      Width = 25
      Height = 15
      Caption = 'Nom'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 119
      Width = 33
      Height = 15
      Caption = 'Points'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 95
      Width = 34
      Height = 15
      Caption = 'Credit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 71
      Width = 41
      Height = 15
      Caption = 'Pr'#233'nom'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditCustomerNbr: TcxDBTextEdit
      Left = 76
      Top = 20
      DataBinding.DataField = 'customers_nbr'
      DataBinding.DataSource = RemoteDB.CustomersSRC
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.StyleController = MainForm.cxEditStyleController1
      TabOrder = 0
      Width = 165
    end
    object DBEditCustomerName: TcxDBTextEdit
      Left = 76
      Top = 44
      DataBinding.DataField = 'customers_lastname'
      DataBinding.DataSource = RemoteDB.CustomersSRC
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.StyleController = MainForm.cxEditStyleController1
      TabOrder = 1
      Width = 165
    end
    object DBEditCustomerFirstName: TcxDBTextEdit
      Left = 76
      Top = 68
      DataBinding.DataField = 'customers_firstname'
      DataBinding.DataSource = RemoteDB.CustomersSRC
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.StyleController = MainForm.cxEditStyleController1
      TabOrder = 2
      Width = 165
    end
    object DBEditCustomerVoucher: TcxDBTextEdit
      Left = 76
      Top = 92
      DataBinding.DataField = 'customers_credit'
      DataBinding.DataSource = RemoteDB.CustomersSRC
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.StyleController = MainForm.cxEditStyleController1
      TabOrder = 3
      Width = 165
    end
    object DBEditCustomerPoints: TcxDBTextEdit
      Left = 76
      Top = 116
      DataBinding.DataField = 'customers_points'
      DataBinding.DataSource = RemoteDB.CustomersSRC
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.StyleController = MainForm.cxEditStyleController1
      TabOrder = 4
      Width = 165
    end
  end
  object BitBtnRentClear: TBitBtn
    Left = 383
    Top = 13
    Width = 121
    Height = 57
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Annuler'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnRentClearClick
  end
  object BitBtnRentExec: TBitBtn
    Left = 383
    Top = 77
    Width = 121
    Height = 57
    Anchors = [akTop, akRight]
    Caption = 'Ex'#233'cuter'
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
    TabOrder = 1
    OnClick = BitBtnRentExecClick
  end
  object DBAdvGrid1: TDBAdvGrid
    Left = 0
    Top = 155
    Width = 509
    Height = 162
    Cursor = crDefault
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 3
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 5
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = 9758459
    ActiveCellColorTo = 1414638
    AutoNumAlign = True
    AutoSize = True
    AutoThemeAdapt = True
    ColumnSize.Stretch = True
    ColumnSize.StretchColumn = 0
    ControlLook.FixedGradientFrom = clWhite
    ControlLook.FixedGradientTo = clWhite
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedColWidth = 367
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    ScrollWidth = 16
    SearchFooter.Color = 15524577
    SearchFooter.ColorTo = 11769496
    SearchFooter.FindNextCaption = 'Find next'
    SearchFooter.FindPrevCaption = 'Find previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SortSettings.DefaultFormat = ssAutomatic
    Version = '2.3.8.6'
    AutoCreateColumns = True
    AutoRemoveColumns = True
    Columns = <
      item
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'rent_transaction_product_name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Nom du produit'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 367
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'rent_transaction_start_display'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Date d'#233'part'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 70
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'rent_transaction_due_display'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = 'Date retour'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        Width = 68
      end>
    DataSource = RemoteDB.RentTransactionSrc
    InvalidPicture.Data = {
      055449636F6E0000010001002020100000000000A80800001600000028000000
      2000000040000000010010000000000000080000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5563146
      EF3DAD35AD35EF3D3146B5560000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B556EF41945218637B6F
      BD77FF7FFF7FBD777B6F18639452EF41B5560000000000000000000000000000
      000000000000000000000000000000000000D65A3146F75EBD777B77D66E3166
      6B59E654A5502959CE61946A5A77BD77F75E3146D65A00000000000000000000
      00000000000000000000000000000000524AF75EBD771773CF618450424C4250
      215421542158215C215C425842504A5DB56EBD77F75E524A0000000000000000
      0000000000000000000000000000524A396B39770859424C424C214C214C2150
      215021582158215C2160216021644264425429593977396B524A000000000000
      00000000000000000000000031467B6FB56E8450424C214C214C214C214C2150
      2154215421582158215C216021642164216442688454D66E7B6F524A00000000
      00000000000000000000524A396BB56E6350424C214C2148214C214C214C2150
      21502154215821580060006021642164216C216C42686354B56E396B524A0000
      0000000000000000D65AF75E39778450424C214C214C214C2148214C214C2150
      2154215421542158215C215C0060215C00602164216C426884543977F75EB556
      00000000000000003146BD7708594250214C214C214CC650F766E74C214C2150
      21502150215421582158215CA560B572296100602164216442640859BD77524A
      000000000000B556F75E736A635021502150214CC650F75E9C6FBD77E74C214C
      215021542154215421588458396FFF7FDE7B085D215C2164216442541773F75E
      B55600000000EF419C7308594254215021508450F766396718639C73BD77E74C
      214C215021542154A554186BBD6FBD77FF7FBD77A5600060006021603166BD77
      10420000000094525A73E7584254215021544254B5667B67396739639C73DE77
      0851214C21508454D65E7B675A6F9C73DE775A7763600060215C216084545A77
      94520000B556F75E1773E758C6582158215021544254D6665A67396718639C73
      BD77E7508450B55A396318635A677B6F3977845C2158215C215C215C2154946A
      1863B55631465A6F736AE75CE75CA55C2154215421506354D66A5A6739673963
      9C73BD77B55A185FF75E18633967186BA558215421582158215C21582158CE61
      7B6F3146EF3DBD77EF61E75CE75CE75C845C2158215421546354D66A7B673967
      1863396318631863F75E185FF766A55821542154215821582154215821582955
      BD77EF3DAD35FF7F8C61C660C660A560E75CA55C4258215421546354B56A5A67
      396B3967186318631863D66AA55821502154215421502154215421502154C650
      FF7FAD35AD35FF7F6B5DE764E764C660C660C660E75C845C21582154295D396B
      396B396B39671863DE776B59214C21542150215021502150215021542150A550
      FF7FAD35EF3DBD770F66E764E764E764E764E760C660E7606358296139779C6F
      7B6B396B396B39679C73DE7B0851214C21502150215021502150215021500859
      BD77EF3D31467B6F736A2965E768E764E764E764E760A55C6B659C77DE779C73
      7B6F9C6F7B6B396739639C73DE7BE750214C215021502150215021504250AD61
      7B6F3146B556186317734A65086DE7680865E764A5606B69BD7FFF7FDE77BD77
      DE775A73F76A7B6B5A6739679C73DE7BE750214C21502150215021506350736A
      1863B556000094527B77AD65086D086D086DC6648C6DDE7FFF7FFF7FFF7FFF7F
      9C772965295D17737B6F396B396BBD6FDE7BE750214C21502150424CA5545A73
      945200000000EF41BD77B56E8C6D086DE7684B6DDE7FFF7FFF7FFF7FFF7FBD7F
      6B69A55CA55C296138739C6F7B6B396B9C77DE7B29598454A554A5546B5DBD77
      EF4100000000B556F75E3973EF6D296D086D4B6DBD7FFF7FFF7FFF7FBD7F6B69
      A560E764E764A560296138739C6F396B7B6B396F295D8454C654C654946A175F
      B5560000000000003146BD77526AEF712971086D6B71BD7FFF7FBD7F6B69C664
      086D0865E760E764A56029653873BD6F5A734A61A558C658C6584A5DBD773146
      0000000000000000D65AF75E3977316E8C712971086D8C75D67A8C75E768086D
      0865086D086508650865A660296573726B65A55CE75CE75CE7583977F75ED65A
      00000000000000000000524A396BD67273728C7149710871076D086D296D296D
      296D086D0865086D08650865E760C660C660E760E75C0859B56E396B524A0000
      000000000000000000000000524A9C73D6729472CF714B6D497129712971296D
      296D2969296929690865296908650865E764295D085DB56E9C73524A00000000
      00000000000000000000000000003146396B5A77B57273768C754B6D49712971
      2971296D4A69296D29692969296929652961316A39775A6B3146000000000000
      00000000000000000000000000000000524AF75E9C771873B5727376AD716B71
      4B6D4B6D29714A694A654A656B65946A38739C77F75E524A0000000000000000
      000000000000000000000000000000000000B55A524AF762BD775A771873956E
      316E116AEF65316A7372F8727B77BD77F75E3146D65A00000000000000000000
      00000000000000000000000000000000000000000000B55610429452F7627B6F
      BD77FF7FFF7FBD777B6F18639452EF41B5560000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5563146
      EF3DAD35AD35EF3D524AB5560000000000000000000000000000000000000000
      00000000FFF00FFFFF8001FFFE00007FFC00003FF800001FF000000FE0000007
      C0000003C0000003800000018000000180000001000000000000000000000000
      0000000000000000000000000000000000000000800000018000000180000001
      C0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF8001FF
      FFF00FFF}
    ShowUnicode = False
    ColWidths = (
      367
      70
      68)
  end
end
