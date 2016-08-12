object CLDPushForm: TCLDPushForm
  Left = 0
  Top = 0
  Caption = 'Commande Push'
  ClientHeight = 598
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    Left = 0
    Top = 28
    Width = 778
    Height = 570
    Align = alClient
    TabOrder = 4
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    object Gridview: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = Source
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'Banque'
        end
        item
          Kind = skSum
          FieldName = 'BCT'
        end
        item
          Kind = skSum
          FieldName = 'Bon'
        end
        item
          Kind = skSum
          FieldName = 'Caisse'
        end
        item
          Kind = skSum
          FieldName = 'Cash'
        end
        item
          Kind = skSum
          FieldName = 'Nouveau'
        end
        item
          Kind = skSum
          FieldName = 'Occasion'
        end
        item
          Kind = skSum
          FieldName = 'RecId'
        end
        item
          Kind = skSum
          FieldName = 'Rembours'
        end
        item
          Kind = skSum
          FieldName = 'Retours'
        end
        item
          Kind = skSum
          FieldName = 'Services'
        end
        item
          Kind = skSum
          FieldName = 'Total'
        end
        item
          Kind = skSum
          FieldName = 'Visa'
        end
        item
          Kind = skSum
          FieldName = 'Expenses'
        end
        item
          Kind = skSum
          FieldName = 'CaisseTot'
        end
        item
          Kind = skSum
          FieldName = 'TVA21'
        end
        item
          Kind = skSum
          FieldName = 'TVA6'
        end
        item
          Kind = skSum
          FieldName = 'Depot'
        end
        item
          Kind = skSum
          FieldName = 'Rachat'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Pas de donn'#233'es'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object GridviewRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object GridviewEAN: TcxGridDBColumn
        DataBinding.FieldName = 'EAN'
        Options.Editing = False
      end
      object GridviewName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        Options.Editing = False
      end
      object GridviewRootCategoryName: TcxGridDBColumn
        DataBinding.FieldName = 'RootCategoryName'
        Options.Editing = False
      end
      object GridviewQuantity: TcxGridDBColumn
        DataBinding.FieldName = 'Quantity'
      end
      object GridviewConfirmBO: TcxGridDBColumn
        DataBinding.FieldName = 'ConfirmBO'
      end
      object GridviewGroupAvailable: TcxGridDBColumn
        Caption = 'Dispo In'
        DataBinding.FieldName = 'GroupAvailable'
      end
      object GridviewAvailable: TcxGridDBColumn
        Caption = 'Dispo Out'
        DataBinding.FieldName = 'Available'
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = Gridview
    end
  end
  object dxBarManager: TdxBarManager
    AllowReset = False
    AlwaysMerge = True
    AlwaysSaveText = True
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'BAR DB Navigator'
      'BAR DB search'
      'BAR DB Tools'
      'BAR Languages'
      'MENU DB Tool'
      'MENU DB Navigation')
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsXP
    UseSystemFont = True
    Left = 705
    Top = 65535
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManagerBar1: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 464
      FloatTop = 357
      FloatClientWidth = 23
      FloatClientHeight = 22
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonSave'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      MultiLine = True
      NotDocking = [dsLeft, dsRight, dsBottom]
      OldName = 'MainBar'
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarButtonPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
        8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
        868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
        C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
        5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
        D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
        141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
        E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
        FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
        D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
        A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
        FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
        D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
        C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
        DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
        E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
        9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = dxBarButtonPrintClick
    end
    object dxBarButtonSave: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
        9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
        D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
        4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
        E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
        D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
        4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
        DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
        CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
        6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
        A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
        97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
        3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = dxBarButtonSaveClick
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FF00FF00FAF7
        F700B0827F00986B6600B6716200AB726600AD746700FFE4DE00F5D0BB00DCA8
        8700F9F4F100E4B68F00F9F3EE00FFDCBC00FFE8D300FFF1E500EBE3DC00FED1
        A400FED3AA00FEDCBA00FEDFC000FEE5CC00FFECD900FFEFDF00FFD7AA00FED7
        AE00FFDAB200FFDEB900FEE3C600FEE9D300FEECD900FEEFDF00FEF5EA00F6BC
        7300FFE4C200DBD7CC000C8518000EA020000EA4250030C14B0044CC63002CC2
        BC0097FDFD0099FFFF009AFFFF009AFEFE009DFFFF009FFEFE00A2FFFF00A3FF
        FF007DFCFF008DFAFD00019198007EF7FF0083F9FF0087FAFF0088F5FA0066EE
        FD006BF0FE0075E5F20050E8FF0059ECFF0065ECFD0064DCEC0070E2F0004CD7
        F00051CEE5007692970021D8FF0031D2F5003DE0FF0045DCFB004AB1C5004CA7
        BA0000CCFF0008D1FF000FCEFE001CC4EE0020D6FF0025D0F7002DCFF3002EB8
        DB0034BCDD0044A9C20000C1F50000BBF00000B3E60009C9FF0021D1FF0020AF
        D70022B0D80023B1D70021A4CA002ABBE0002DB5D9004E9BAF00009CCF00009B
        CE0007A4D4000CAAD90014A7D60016ABD80000A4DB0000A0D8000099CC000098
        CB000D98C7000FA6DB00FFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000068
        6805040606060605050500006868685668050D221B1A181211036868454E4B54
        68050802020202021903683632242958682407160E151C141303682A31242447
        68242402020202021C03682E2F24282424242524200F1F1E1D03683F596B2428
        2827262524020202170368624D4C4A2424242524010A0C102303683E3D464457
        3424246C6C6C6C0505056833373A3C5068246C6C6C6C6C052100682D302B3541
        680B0909090909050000682C3B42515A655C5F49485343000000685B645E4038
        394F555566676A0000000068686868525D636061690000000000000000000068
        6868000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton1Click
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Explorer = dxPSDBBasedExplorer1
    Version = 0
    Left = 472
    Top = 72
    object dxComponentPrinterLink1: TdxGridReportLink
      Component = Grid
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39282.706050717590000000
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object dxPageSetupDialog: TdxPageSetupDialog
    Left = 536
    Top = 72
  end
  object dxPrintDialog: TdxPrintDialog
    StyleManager = dxPrintStyleManager
    Left = 440
    Top = 72
  end
  object dxPrintStyleManager: TdxPrintStyleManager
    PageSetupDialog = dxPageSetupDialog
    Version = 0
    Left = 504
    Top = 72
  end
  object dxPSDBBasedExplorer1: TdxPSDBBasedExplorer
    Left = 568
    Top = 72
  end
  object dxPSEngineController: TdxPSEngineController
    Left = 576
    Top = 136
  end
  object SaveDialog: TSaveDialog
    Left = 128
    Top = 128
  end
  object TableData: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 96
    Top = 128
    object TableDataEAN: TStringField
      FieldName = 'EAN'
      Size = 15
    end
    object TableDataNom: TStringField
      DisplayLabel = 'Nom'
      FieldName = 'Name'
      Size = 64
    end
    object TableDataRootCategoryName: TStringField
      DisplayLabel = 'Cat'#233'gorie'
      FieldName = 'RootCategoryName'
      Size = 32
    end
    object TableDataQuantity: TIntegerField
      DisplayLabel = 'Quantit'#233
      FieldName = 'Quantity'
    end
    object TableDataConfirmBO: TBooleanField
      DisplayLabel = 'BO'
      FieldName = 'ConfirmBO'
    end
    object TableDataGroupAvailable: TIntegerField
      FieldName = 'GroupAvailable'
    end
    object TableDataAvailable: TIntegerField
      FieldName = 'Available'
    end
  end
  object Source: TDataSource
    DataSet = TableData
    Left = 96
    Top = 160
  end
end
