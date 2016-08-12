object FormExportWinbooks: TFormExportWinbooks
  Left = 435
  Top = 294
  ActiveControl = ComboBoxSelectPeriod
  Caption = 'Exportation Winbooks'
  ClientHeight = 345
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvWizardWinbooks: TJvWizard
    Left = 0
    Top = 0
    Width = 632
    Height = 345
    ActivePage = JvWizardInteriorPage1
    ButtonBarHeight = 42
    ButtonStart.Caption = 'To &Start Page'
    ButtonStart.NumGlyphs = 1
    ButtonStart.Width = 85
    ButtonLast.Caption = 'To &Last Page'
    ButtonLast.NumGlyphs = 1
    ButtonLast.Width = 85
    ButtonBack.Caption = '< &Precedant'
    ButtonBack.NumGlyphs = 1
    ButtonBack.Width = 75
    ButtonNext.Caption = '&Suivant >'
    ButtonNext.NumGlyphs = 1
    ButtonNext.Width = 75
    ButtonFinish.Caption = '&Lancer'
    ButtonFinish.NumGlyphs = 1
    ButtonFinish.Width = 75
    ButtonCancel.Caption = 'Annuler'
    ButtonCancel.NumGlyphs = 1
    ButtonCancel.ModalResult = 2
    ButtonCancel.Width = 75
    ButtonHelp.Caption = '&Help'
    ButtonHelp.NumGlyphs = 1
    ButtonHelp.Width = 75
    ShowRouteMap = True
    HeaderImages = MainForm.ImageListOutlookbar
    OnFinishButtonClick = JvWizardWinbooksFinishButtonClick
    DesignSize = (
      632
      345)
    object JvWizardInteriorPage1: TJvWizardInteriorPage
      Header.ParentFont = False
      Header.Title.Color = clNone
      Header.Title.Text = 'Selection de la periode'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 
        'Veuillez entrer la date de debut ainsi que la date de la fin de ' +
        'la periode exportee'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      ExplicitLeft = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 16
        Top = 123
        Width = 53
        Height = 13
        Caption = 'Date debut'
      end
      object Label3: TLabel
        Left = 16
        Top = 69
        Width = 36
        Height = 13
        Caption = 'Periode'
      end
      object Label2: TLabel
        Left = 231
        Top = 123
        Width = 37
        Height = 13
        Caption = 'Date fin'
      end
      object ComboBoxSelectPeriod: TComboBox
        Left = 16
        Top = 85
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Choisir periode'
        OnSelect = ComboBoxSelectPeriodSelect
        Items.Strings = (
          'Mois en cours'
          'Mois precedant'
          'Trimesre en cours'
          'Trimestre precedant')
      end
      object StartDate: TMonthCalendar
        Left = 16
        Top = 142
        Width = 190
        Height = 144
        AutoSize = True
        Date = 38239.428662627320000000
        ShowToday = False
        TabOrder = 1
      end
      object EndDate: TMonthCalendar
        Left = 231
        Top = 142
        Width = 190
        Height = 144
        AutoSize = True
        Date = 38239.428662627320000000
        ShowToday = False
        TabOrder = 2
      end
    end
    object JvWizardInteriorPage2: TJvWizardInteriorPage
      Header.ParentFont = False
      Header.Title.Color = clNone
      Header.Title.Text = 'Parametrage'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Selection des ecritures a generer et leur pieces justificatives'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      ExplicitLeft = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 7
        Top = 106
        Width = 119
        Height = 13
        Caption = 'Debut de la numerotation'
      end
      object Label5: TLabel
        Left = 7
        Top = 193
        Width = 161
        Height = 13
        Caption = 'Periode comptabe (01,02,03,04...)'
      end
      object JvSpinEditStartDocNbr: TJvSpinEdit
        Left = 134
        Top = 103
        Width = 68
        Height = 21
        TabOrder = 0
      end
      object CheckBoxsales: TCheckBox
        Left = 8
        Top = 80
        Width = 305
        Height = 17
        Caption = 'Inclure les journal financier de caisse'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBoxInvoices: TCheckBox
        Left = 7
        Top = 142
        Width = 304
        Height = 17
        Caption = 'Inclure les journal de ventes'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBoxExcel: TCheckBox
        Left = 7
        Top = 166
        Width = 304
        Height = 17
        Caption = 'Generer un tableau excel'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object ComboBoxPeriod: TcxComboBox
        Left = 173
        Top = 189
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
        TabOrder = 4
        Text = '01'
        Width = 121
      end
    end
    object JvWizardInteriorPage3: TJvWizardInteriorPage
      Header.ParentFont = False
      Header.Title.Color = clNone
      Header.Title.Text = 'Fin de l'#39'exportation'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = DEFAULT_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'MS Sans Serif'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'L'#39'exportation des donnees est en cours'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = DEFAULT_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'MS Sans Serif'
      Header.Subtitle.Font.Style = []
      VisibleButtons = [bkBack, bkFinish]
      ExplicitLeft = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ProgressBar: TProgressBar
        Left = 7
        Top = 86
        Width = 423
        Height = 17
        TabOrder = 0
        Visible = False
      end
    end
    object JvWizardRouteMapNodes1: TJvWizardRouteMapNodes
      Left = 0
      Top = 0
      Width = 193
      Height = 303
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
end
