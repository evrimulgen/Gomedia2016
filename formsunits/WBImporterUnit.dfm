object FormWBImporterMain: TFormWBImporterMain
  Left = 0
  Top = 0
  Caption = 'WB Importer'
  ClientHeight = 699
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 878
    Height = 699
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Import'
      object Label3: TLabel
        Left = 504
        Top = 3
        Width = 36
        Height = 13
        Caption = 'Periode'
      end
      object Label4: TLabel
        Left = 503
        Top = 57
        Width = 169
        Height = 13
        Caption = 'Periode comptabe (01,02,03,04...)'
      end
      object Label1: TLabel
        Left = 16
        Top = 3
        Width = 54
        Height = 13
        Caption = 'Date debut'
      end
      object Label2: TLabel
        Left = 263
        Top = 3
        Width = 38
        Height = 13
        Caption = 'Date fin'
      end
      object LabelNew21: TLabel
        Left = 380
        Top = 205
        Width = 38
        Height = 13
        Caption = 'Neuf 21'
      end
      object LabelNew6: TLabel
        Left = 380
        Top = 256
        Width = 32
        Height = 13
        Caption = 'Neuf 6'
      end
      object LabelSH0: TLabel
        Left = 380
        Top = 365
        Width = 22
        Height = 13
        Caption = 'SH 0'
      end
      object LabelNew0: TLabel
        Left = 380
        Top = 311
        Width = 32
        Height = 13
        Caption = 'Neuf 0'
      end
      object LabelSH21: TLabel
        Left = 380
        Top = 421
        Width = 28
        Height = 13
        Caption = 'SH 21'
      end
      object LabelDeposit: TLabel
        Left = 380
        Top = 477
        Width = 28
        Height = 13
        Caption = 'DP 21'
      end
      object LabelStatus: TLabel
        Left = 687
        Top = 399
        Width = 3
        Height = 13
      end
      object ButtonImportSelected: TButton
        Left = 687
        Top = 272
        Width = 169
        Height = 25
        Caption = 'Create DBF  Selected'
        TabOrder = 0
        OnClick = ButtonImportSelectedClick
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 189
        Width = 321
        Height = 341
        Align = alCustom
        DataSource = DSShops
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object StartDate: TMonthCalendar
        Left = 16
        Top = 22
        Width = 225
        Height = 143
        AutoSize = True
        Date = 38239.716642719900000000
        ShowToday = False
        TabOrder = 2
      end
      object EndDate: TMonthCalendar
        Left = 263
        Top = 22
        Width = 225
        Height = 143
        AutoSize = True
        Date = 38239.716642719900000000
        ShowToday = False
        TabOrder = 3
      end
      object ComboBoxSelectPeriod: TComboBox
        Left = 504
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Choisir periode'
        OnSelect = ComboBoxSelectPeriodSelect
        Items.Strings = (
          'Mois en cours'
          'Mois precedant'
          'Trimesre en cours'
          'Trimestre precedant')
      end
      object ComboBoxPeriod: TcxComboBox
        Left = 504
        Top = 76
        Properties.Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
        TabOrder = 5
        Text = '01'
        Width = 121
      end
      object ButtonImportAllFromSelected: TButton
        Left = 687
        Top = 334
        Width = 169
        Height = 25
        Caption = 'Import All from selected'
        TabOrder = 6
        OnClick = ButtonImportAllFromSelectedClick
      end
      object ButtonImport: TButton
        Left = 687
        Top = 489
        Width = 121
        Height = 25
        Caption = 'Import DBF Only'
        TabOrder = 7
        OnClick = ButtonImportClick
      end
      object ButtonOpenTMPACT: TButton
        Left = 687
        Top = 520
        Width = 121
        Height = 25
        Caption = 'Open TMP Act'
        TabOrder = 8
        OnClick = ButtonOpenTMPACTClick
      end
      object ButtonDBFVCO: TButton
        Left = 687
        Top = 303
        Width = 169
        Height = 25
        Caption = 'Create DBF with VCO  Selected'
        TabOrder = 9
        OnClick = ButtonDBFVCOClick
      end
      object EditDP21: TEdit
        Left = 424
        Top = 474
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 10
      end
      object EditSH21: TEdit
        Left = 424
        Top = 418
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 11
      end
      object EditSH0: TEdit
        Left = 424
        Top = 362
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 12
      end
      object EditNew0: TEdit
        Left = 424
        Top = 308
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 13
      end
      object EditNew6: TEdit
        Left = 424
        Top = 253
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 14
      end
      object EditNew21: TEdit
        Left = 424
        Top = 202
        Width = 153
        Height = 21
        Alignment = taRightJustify
        TabOrder = 15
      end
      object ProgressBar: TProgressBar
        Left = 687
        Top = 376
        Width = 169
        Height = 17
        TabOrder = 16
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configuration'
      ImageIndex = 1
      object ParamTree: TParamTreeview
        Left = 0
        Top = 0
        Width = 870
        Height = 671
        AdvanceOnReturn = False
        EditAutoSize = True
        EmptyParam = '?'
        ItemHeight = 16
        LineSpacing = 2
        SelectionColor = clHighlight
        SelectionFontColor = clHighlightText
        ParamHint = True
        ShadowColor = clGray
        ShadowOffset = 1
        Version = '1.3.3.10'
        WordWrap = False
        Align = alClient
        Indent = 18
        Items.NodeData = {
          0304000000500000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          000400000001193C0049004D00470020007300720063003D0022006900640078
          003A003100380022003E00200045002D004D00610069006C00B2000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000014A53004D0054
          00500020003C006100200068007200650066003D00220045006D00610069006C
          0053004D00540050002200200063006C006100730073003D0022004500440049
          00540022002000680069006E0074003D00220041006400720065007300730065
          0020006400750020007300650072007600650075007200200073006D00740070
          0022003E0030003C002F0061003E00B20000000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFF0000000000000000014A50004F005000330020003C00610020
          0068007200650066003D00220045006D00610069006C0050006F007000330022
          00200063006C006100730073003D002200450044004900540022002000680069
          006E0074003D0022004100640072006500730073006500200064007500200073
          00650072007600650075007200200070006F007000330022003E0030003C002F
          0061003E00D80000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          0000000000015D4C006F00670069006E0020003C006100200068007200650066
          003D00220045006D00610069006C004C006F00670069006E002200200063006C
          006100730073003D002200450044004900540022002000680069006E0074003D
          0022004E006F006D002000640027007500740069006C00690073006100740065
          007500720020006100750070007200E800730020006400750020007300650072
          00760065007500720020006D00610069006C0022003E0030003C002F0061003E
          00DA0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          00015E500061007300730077006F007200640020003C00610020006800720065
          0066003D00220045006D00610069006C00500061007300730077006F00720064
          002200200063006C006100730073003D00220045004400490054002200200068
          0069006E0074003D0022004D006F007400200064006500200070006100730073
          00650020006100750070007200E8007300200064007500200073006500720076
          0065007500720020006D00610069006C0022003E0030003C002F0061003E0054
          0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000600000001
          1B3C0049004D00470020007300720063003D0022006900640078003A00330033
          0022003E002000570069006E0062006F006F006B007300C20000000000000000
          000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000001524C006F00670069
          006E0020003A0020003C006100200068007200650066003D002200570042004C
          006F00670069006E002200200063006C006100730073003D0022004500440049
          00540022002000760061006C00750065003D0022005500730065007200220020
          00680069006E0074003D0022004C006F00670069006E002000570069006E0062
          0062006F006B00730022003E0055007300650072003C002F0041003E00CE0000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000015850
          0061007300730077006F007200640020003A00200020003C0061002000680072
          00650066003D0022005700420050007100730073002200200063006C00610073
          0073003D002200450044004900540022002000760061006C00750065003D0022
          00500061007300730022002000680069006E0074003D00220050006100730073
          0077006F00720064002000570069006E0062006F006F006B00730022003E0050
          006100730073003C002F0041003E00DC0000000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFF0000000000000000015F44006F007300730069006500720020
          003A00200020003C006100200068007200650066003D0022005700420044006F
          00730073006900650072002200200063006C006100730073003D002200450044
          004900540022002000760061006C00750065003D00220044006F007300730069
          006500720022002000680069006E0074003D00220044006F0073007300690065
          0072002000570069006E00620062006F006B00730022003E0044006F00730073
          006900650072003C002F0041003E00020100000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFF0000000000000000017242006F006F006B0079006500610072
          0020003A00200020003C006100200068007200650066003D0022005700420042
          006F006F006B0079006500610072002200200063006C006100730073003D0022
          00450044004900540022002000760061006C00750065003D00220042006F006F
          006B00790065006100720022002000680069006E0074003D0022004500780065
          00720063006900630065002000640027006500780070006F0072007400610074
          0069006F006E002000570069006E00620062006F006B00730022003E0042006F
          006F006B0079006500610072003C002F0041003E00D600000000000000000000
          00FFFFFFFFFFFFFFFF000000000000000000000000015C500061007400680020
          003A0020003C006100200068007200650066003D002200410043005400500041
          00540048002200200063006C006100730073003D002200450044004900540022
          002000760061006C00750065003D002200550073006500720022002000680069
          006E0074003D005000610074006800200054006F002000570042002000410043
          005400200044004200460022003E004100430054004400420046002000500061
          007400630068003C002F0041003E00D20000000000000000000000FFFFFFFFFF
          FFFFFF000000000000000000000000015A42006F006F006B0059006500610072
          0043006F006400650020003A0020003C006100200068007200650066003D0022
          0042004F004F004B00590045004100520043004F00440045002200200063006C
          006100730073003D002200450044004900540022002000760061006C00750065
          003D002200550073006500720022002000680069006E0074003D0042006F006F
          006B0020005900650061007200200063006F006400650022003E0044003C002F
          0041003E00520000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          0001000000011A3C0049004D00470020007300720063003D0022006900640078
          003A003300360022003E00200049006E0066006F005700650062002400000000
          00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000002000000010343004C
          004400BA0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
          000000014E4C006F00670069006E0020003A0020003C00610020006800720065
          0066003D00220043004C0044004C006F00670069006E002200200063006C0061
          00730073003D002200450044004900540022002000760061006C00750065003D
          002200550073006500720022002000680069006E0074003D0022004C006F0067
          0069006E00200043004C00440022003E0055007300650072003C002F0041003E
          00D60000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          00015C500061007300730077006F007200640020003A00200020003C00610020
          0068007200650066003D00220043004C00440050006100730073002200200063
          006C006100730073003D002200450044004900540022002000760061006C0075
          0065003D002200500061007300730022002000680069006E0074003D00220050
          0061007300730077006F0072006400200043006C00640022003E004D006F0074
          002000640065002000700061007300730065003C002F0041003E005C00000000
          00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000001000000011F3C0049
          004D00470020007300720063003D0022006900640078003A003100340022003E
          0020004D00610072006B006500740050006C0061006300650073005A00000000
          00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000005000000011E3C0049
          004D00470020007300720063003D0022006900640078003A003100360022003E
          002000320078004D006F0069006E0073004300680065007200D6000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000015C4600540050
          0020004C006F00670069006E0020003A0020003C006100200068007200650066
          003D0022004D00320058004C006F00670069006E002200200063006C00610073
          0073003D002200450044004900540022002000760061006C00750065003D0022
          00550073006500720022002000680069006E0074003D0022004C006F00670069
          006E0020003200780020006D006F0069006E0073002000630068006500720022
          003E0055007300650072003C002F0041003E00E20000000000000000000000FF
          FFFFFFFFFFFFFFFFFFFFFF000000000000000001624600540050002000500061
          007300730077006F007200640020003A00200020003C00610020006800720065
          0066003D0022004D003200580050006100730073002200200063006C00610073
          0073003D002200450044004900540022002000760061006C00750065003D0022
          00500061007300730022002000680069006E0074003D00220050006100730073
          0077006F007200640020003200780020004D006F0069006E0073002000430068
          006500720022003E0050006100730073003C002F0041003E00E8000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000001654600540050
          002000500061007300730077006F007200640020003A00200020003C00610020
          0068007200650066003D0022004D003200580048006F00730074002200200063
          006C006100730073003D002200450044004900540022002000760061006C0075
          0065003D002200500061007300730022002000680069006E0074003D00220048
          006F007300740020003200780020004D006F0069006E00730020004300680065
          00720022003E006600740070002E007800780078002E0063006F006D003C002F
          0041003E001A0100000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          0000000000017E49006E00740065007200760061006C006C00650020003C0061
          00200068007200650066003D0022004D0032005800540069006D006500220020
          0063006C006100730073003D0022004D00410053004B002200200061006C0069
          0067006E003D0022007200690067006800740022002000700072006F00700073
          003D00220023003900390022002000680069006E0074003D00220049006E0074
          0065007200760061006C006C006500200065006E007400720065002000320020
          00730079006E006300680072006F006E00690073006100740069006F006E0073
          0022003E003100380030003C002F0041003E0020006D0069006E007500740065
          007300020100000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
          000000017241006300740069007600E90020003A0020003C0061002000680072
          00650066003D0022004D003200580045006E00610062006C0065006400220020
          0063006C006100730073003D00220054004F00470047004C0045002200200070
          0072006F00700073003D0022004F00750069007C004E006F006E002200200048
          0069006E0074003D002200410063007400690076006500720020006C00610020
          00730079006E006300680072006F006E00690073006100740069006F006E0020
          006100750074006F006D0061007400690071007500650022003E004E006F006E
          003C002F0061003E00}
        ParamListSorted = False
        TabOrder = 0
        ToolTips = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Erreurs ACT'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 870
        Height = 671
        Align = alClient
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object WBACT: TVKDBFNTX
    SetDeleted = False
    FastPostRecord = False
    LookupOptions = []
    TrimInLocate = False
    TrimCType = False
    StorageType = pstFile
    DBFFileName = 'c:\SMART_ACT.dbf'
    AccessMode.AccessMode = 2
    AccessMode.OpenRead = False
    AccessMode.OpenWrite = False
    AccessMode.OpenReadWrite = True
    AccessMode.ShareExclusive = False
    AccessMode.ShareDenyWrite = False
    AccessMode.ShareDenyNone = False
    Crypt.Active = False
    Crypt.CryptMethod = cmNone
    BufferSize = 4096
    WaitBusyRes = 3000
    CreateNow = False
    DbfVersion = xBaseIII
    LobBlockSize = 512
    LockProtocol = lpNone
    LobLockProtocol = lpNone
    FoxTableFlag.TableFlag = 1
    FoxTableFlag.HasGotIndex = True
    FoxTableFlag.HasGotMemo = False
    FoxTableFlag.ItIsDatabase = False
    Left = 424
    Top = 632
    DBFFieldDefs = <
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DBKCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DBKTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCNUMBER'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCORDER'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 3
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'OPCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 5
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ACCOUNTGL'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ACCOUNTRP'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 10
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'BOOKYEAR'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'PERIOD'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 2
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DATEDOC'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DUEDATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'COMMENT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 40
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'COMMENTEXT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 35
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'AMOUNT'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'AMOUNTEUR'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATBASE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRAMOUNT'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 3
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CUREURBASE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATTAX'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 17
        dec = 3
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATIMPUT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRATE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 12
        dec = 5
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'REMINDLEV'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'MATCHNO'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'OLDDATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISMATCHED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISLOCKED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISIMPORTED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISPOSITIVE'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISTEMP'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'MEMOTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISDOC'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCSTATUS'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DICFROM'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 16
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CODAKEY'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 3
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end>
  end
  object DataSource1: TDataSource
    DataSet = ACT
    Left = 576
    Top = 632
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = WBACT
    Left = 360
    Top = 632
  end
  object ACT: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DOCTYPE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DBKCODE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DBKTYPE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOCNUMBER'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DOCORDER'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OPCODE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ACCOUNTGL'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACCOUNTRP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BOOKYEAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERIOD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DATE'
        DataType = ftDate
      end
      item
        Name = 'DATEDOC'
        DataType = ftDate
      end
      item
        Name = 'DUEDATE'
        DataType = ftDate
      end
      item
        Name = 'COMMENT'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COMMENTEXT'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'AMOUNTEUR'
        DataType = ftFloat
      end
      item
        Name = 'VATBASE'
        DataType = ftFloat
      end
      item
        Name = 'VATCODE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CURRAMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'CURRCODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CUREURBASE'
        DataType = ftFloat
      end
      item
        Name = 'VATTAX'
        DataType = ftFloat
      end
      item
        Name = 'VATIMPUT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CURRATE'
        DataType = ftFloat
      end
      item
        Name = 'REMINDLEV'
        DataType = ftInteger
      end
      item
        Name = 'MATCHNO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'OLDDATE'
        DataType = ftDate
      end
      item
        Name = 'ISMATCHED'
        DataType = ftBoolean
      end
      item
        Name = 'ISLOCKED'
        DataType = ftBoolean
      end
      item
        Name = 'ISIMPORTED'
        DataType = ftBoolean
      end
      item
        Name = 'ISPOSITIVE'
        DataType = ftBoolean
      end
      item
        Name = 'ISTEMP'
        DataType = ftBoolean
      end
      item
        Name = 'MEMOTYPE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ISDOC'
        DataType = ftBoolean
      end
      item
        Name = 'DOCSTATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DICFROM'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CODAKEY'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'ACTIndex1'
        Options = [ixDescending]
      end>
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    OnCalcFields = ACTCalcFields
    Left = 480
    Top = 632
    object ACTDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Size = 1
    end
    object ACTDBKCODE: TStringField
      FieldName = 'DBKCODE'
      Size = 6
    end
    object ACTDBKTYPE: TStringField
      FieldName = 'DBKTYPE'
      Size = 1
    end
    object ACTDOCNUMBER: TStringField
      FieldName = 'DOCNUMBER'
      Size = 8
    end
    object ACTDOCORDER: TStringField
      FieldName = 'DOCORDER'
      Size = 3
    end
    object ACTOPCODE: TStringField
      FieldName = 'OPCODE'
      Size = 5
    end
    object ACTACCOUNTGL: TStringField
      FieldName = 'ACCOUNTGL'
      Size = 8
    end
    object ACTACCOUNTRP: TStringField
      FieldName = 'ACCOUNTRP'
      Size = 10
    end
    object ACTBOOKYEAR: TStringField
      FieldName = 'BOOKYEAR'
      Size = 1
    end
    object ACTPERIOD: TStringField
      FieldName = 'PERIOD'
      Size = 2
    end
    object ACTDATE: TDateField
      FieldName = 'DATE'
    end
    object ACTDATEDOC: TDateField
      FieldName = 'DATEDOC'
    end
    object ACTDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object ACTCOMMENT: TStringField
      FieldName = 'COMMENT'
      Size = 40
    end
    object ACTCOMMENTEXT: TStringField
      FieldName = 'COMMENTEXT'
      Size = 35
    end
    object ACTAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object ACTAMOUNTEUR: TFloatField
      FieldName = 'AMOUNTEUR'
    end
    object ACTVATBASE: TFloatField
      FieldName = 'VATBASE'
    end
    object ACTVATCODE: TStringField
      FieldName = 'VATCODE'
      Size = 6
    end
    object ACTCURRAMOUNT: TFloatField
      FieldName = 'CURRAMOUNT'
    end
    object ACTCURRCODE: TStringField
      FieldName = 'CURRCODE'
      Size = 3
    end
    object ACTCUREURBASE: TFloatField
      FieldName = 'CUREURBASE'
    end
    object ACTVATTAX: TFloatField
      FieldName = 'VATTAX'
    end
    object ACTVATIMPUT: TStringField
      FieldName = 'VATIMPUT'
      Size = 6
    end
    object ACTCURRATE: TFloatField
      FieldName = 'CURRATE'
    end
    object ACTREMINDLEV: TIntegerField
      FieldName = 'REMINDLEV'
    end
    object ACTMATCHNO: TStringField
      FieldName = 'MATCHNO'
      Size = 8
    end
    object ACTOLDDATE: TDateField
      FieldName = 'OLDDATE'
    end
    object ACTISMATCHED: TBooleanField
      FieldName = 'ISMATCHED'
    end
    object ACTISLOCKED: TBooleanField
      FieldName = 'ISLOCKED'
    end
    object ACTISIMPORTED: TBooleanField
      FieldName = 'ISIMPORTED'
    end
    object ACTISPOSITIVE: TBooleanField
      FieldName = 'ISPOSITIVE'
    end
    object ACTISTEMP: TBooleanField
      FieldName = 'ISTEMP'
    end
    object ACTMEMOTYPE: TStringField
      FieldName = 'MEMOTYPE'
      Size = 1
    end
    object ACTISDOC: TBooleanField
      FieldName = 'ISDOC'
    end
    object ACTDOCSTATUS: TStringField
      FieldName = 'DOCSTATUS'
      Size = 1
    end
    object ACTDICFROM: TStringField
      FieldName = 'DICFROM'
      Size = 16
    end
    object ACTCODAKEY: TStringField
      FieldName = 'CODAKEY'
      Size = 3
    end
    object ACTDOCSORT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DOCSORT'
      Calculated = True
    end
  end
  object SQLDataSetShops: TSQLDataSet
    SchemaName = 'gomedia'
    CommandText = 
      'SELECT * FROM netshop_shops ns WHERE ns.shops_visible=1 AND ns.s' +
      'hops_group_id=1'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 80
    Top = 640
  end
  object DPShops: TDataSetProvider
    DataSet = SQLDataSetShops
    Left = 152
    Top = 640
  end
  object CDSShops: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPShops'
    Left = 216
    Top = 640
    object CDSShopsshops_id: TIntegerField
      FieldName = 'shops_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSShopsshops_name: TStringField
      FieldName = 'shops_name'
      Size = 50
    end
    object CDSShopsshops_customers_id: TIntegerField
      FieldName = 'shops_customers_id'
    end
    object CDSShopsshops_title: TStringField
      FieldName = 'shops_title'
      Size = 50
    end
    object CDSShopsshops_adress_one: TStringField
      FieldName = 'shops_adress_one'
      Size = 50
    end
    object CDSShopsshops_postcode: TStringField
      FieldName = 'shops_postcode'
      Size = 16
    end
    object CDSShopsshops_adress_two: TStringField
      FieldName = 'shops_adress_two'
      Size = 50
    end
    object CDSShopsshops_phone: TStringField
      FieldName = 'shops_phone'
    end
    object CDSShopsshops_map_url: TMemoField
      FieldName = 'shops_map_url'
      BlobType = ftMemo
      Size = 1
    end
    object CDSShopsshops_schedule_1: TStringField
      FieldName = 'shops_schedule_1'
      Size = 32
    end
    object CDSShopsshops_schedule_2: TStringField
      FieldName = 'shops_schedule_2'
      Size = 32
    end
    object CDSShopsshops_schedule_3: TStringField
      FieldName = 'shops_schedule_3'
      Size = 32
    end
    object CDSShopsshops_schedule_4: TStringField
      FieldName = 'shops_schedule_4'
      Size = 32
    end
    object CDSShopsshops_schedule_5: TStringField
      FieldName = 'shops_schedule_5'
      Size = 32
    end
    object CDSShopsshops_schedule_6: TStringField
      FieldName = 'shops_schedule_6'
      Size = 32
    end
    object CDSShopsshops_schedule_7: TStringField
      FieldName = 'shops_schedule_7'
      Size = 32
    end
    object CDSShopsshops_manager_name: TStringField
      FieldName = 'shops_manager_name'
      Size = 30
    end
    object CDSShopsshops_manager_email: TStringField
      FieldName = 'shops_manager_email'
      Size = 30
    end
    object CDSShopsshops_picture_url: TStringField
      FieldName = 'shops_picture_url'
      Size = 50
    end
    object CDSShopsshops_zone_id: TIntegerField
      FieldName = 'shops_zone_id'
    end
    object CDSShopsshops_country_id: TIntegerField
      FieldName = 'shops_country_id'
    end
    object CDSShopsshops_logo_url: TStringField
      FieldName = 'shops_logo_url'
      Size = 50
    end
    object CDSShopsshops_group_id: TIntegerField
      FieldName = 'shops_group_id'
    end
    object CDSShopsshops_details: TMemoField
      FieldName = 'shops_details'
      BlobType = ftMemo
      Size = 1
    end
    object CDSShopsshops_TVA: TStringField
      FieldName = 'shops_TVA'
      Size = 32
    end
    object CDSShopsshops_registry: TStringField
      FieldName = 'shops_registry'
      Size = 32
    end
    object CDSShopsshops_bank: TStringField
      FieldName = 'shops_bank'
      Size = 32
    end
    object CDSShopsshops_sort_order: TIntegerField
      FieldName = 'shops_sort_order'
      Required = True
    end
    object CDSShopsshops_visible: TIntegerField
      FieldName = 'shops_visible'
      Required = True
    end
    object CDSShopsshops_cld_id: TStringField
      FieldName = 'shops_cld_id'
      Required = True
      Size = 32
    end
    object CDSShopslat: TSingleField
      FieldName = 'lat'
      Required = True
    end
    object CDSShopslng: TSingleField
      FieldName = 'lng'
      Required = True
    end
    object CDSShopsshops_region: TIntegerField
      FieldName = 'shops_region'
    end
    object CDSShopsshops_voip_nbr: TIntegerField
      FieldName = 'shops_voip_nbr'
    end
    object CDSShopsshops_wb_custacc: TStringField
      FieldName = 'shops_wb_custacc'
      Size = 6
    end
    object CDSShopsshops_wb_cashbook: TStringField
      FieldName = 'shops_wb_cashbook'
      Size = 3
    end
    object CDSShopsshops_wb_bctacc: TIntegerField
      FieldName = 'shops_wb_bctacc'
    end
    object CDSShopsshops_wb_invbook: TStringField
      FieldName = 'shops_wb_invbook'
      Size = 3
    end
    object CDSShopsshops_wb_cashacc: TIntegerField
      FieldName = 'shops_wb_cashacc'
    end
    object CDSShopsshops_language_id: TIntegerField
      FieldName = 'shops_language_id'
      Required = True
    end
  end
  object DSShops: TDataSource
    DataSet = CDSShops
    Left = 288
    Top = 640
  end
  object VKDBFNTXACT: TVKDBFNTX
    SetDeleted = False
    FastPostRecord = False
    LookupOptions = []
    TrimInLocate = False
    TrimCType = False
    StorageType = pstFile
    DBFFileName = 'c:\tmp\ACT.DBF'
    AccessMode.AccessMode = 2
    AccessMode.OpenRead = False
    AccessMode.OpenWrite = False
    AccessMode.OpenReadWrite = True
    AccessMode.ShareExclusive = False
    AccessMode.ShareDenyWrite = False
    AccessMode.ShareDenyNone = False
    Crypt.Active = False
    Crypt.CryptMethod = cmNone
    BufferSize = 4096
    WaitBusyRes = 3000
    CreateNow = False
    DbfVersion = xBaseIII
    LobBlockSize = 512
    LockProtocol = lpNone
    LobLockProtocol = lpNone
    FoxTableFlag.TableFlag = 1
    FoxTableFlag.HasGotIndex = True
    FoxTableFlag.HasGotMemo = False
    FoxTableFlag.ItIsDatabase = False
    Left = 728
    Top = 632
    DBFFieldDefs = <
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DBKCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DBKTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCNUMBER'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCORDER'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 3
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'OPCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 5
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ACCOUNTGL'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ACCOUNTRP'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 10
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'BOOKYEAR'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'PERIOD'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 2
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DATEDOC'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DUEDATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'COMMENT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 40
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'COMMENTEXT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 35
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'AMOUNT'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'AMOUNTEUR'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATBASE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRAMOUNT'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRCODE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 3
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CUREURBASE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATTAX'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 11
        dec = 4
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'VATIMPUT'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 6
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'CURRATE'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 8
        dec = 5
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'REMINDLEV'
        field_type = 'N'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'MATCHNO'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'OLDDATE'
        field_type = 'D'
        extend_type = dbftUndefined
        len = 8
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISMATCHED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISLOCKED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISIMPORTED'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISPOSITIVE'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISTEMP'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'MEMOTYPE'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'ISDOC'
        field_type = 'L'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'DOCSTATUS'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 1
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end>
  end
  object DataSource2: TDataSource
    DataSet = VKDBFNTXACT
    Left = 808
    Top = 632
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 648
    Top = 632
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver200.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=20.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=sql.smartoys.be'
      'Database=c_smartoys'
      'User_Name=gomedia'
      'Password=DhQKR79Lyce56vtB'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 72
    Top = 584
  end
end
