object MainForm: TMainForm
  Left = 624
  Top = 385
  Caption = 'GoMedia Account Manager'
  ClientHeight = 680
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel
    Left = 532
    Top = 180
    Width = 48
    Height = 13
    Caption = 'Dimanche'
  end
  object PanelCustomerData: TPanel
    Left = 0
    Top = 400
    Width = 1071
    Height = 280
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 54
      Height = 13
      Caption = 'Login client'
    end
    object Label2: TLabel
      Left = 12
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Pass client'
    end
    object Label7: TLabel
      Left = 12
      Top = 68
      Width = 50
      Height = 13
      Caption = 'URL client'
    end
    object Label8: TLabel
      Left = 12
      Top = 96
      Width = 40
      Height = 13
      Caption = 'ID Client'
    end
    object Label9: TLabel
      Left = 12
      Top = 124
      Width = 52
      Height = 13
      Caption = 'ID Groupe '
    end
    object Label3: TLabel
      Left = 12
      Top = 152
      Width = 40
      Height = 13
      Caption = 'DB Host'
    end
    object Label4: TLabel
      Left = 12
      Top = 180
      Width = 46
      Height = 13
      Caption = 'DB Name'
    end
    object Label5: TLabel
      Left = 12
      Top = 208
      Width = 44
      Height = 13
      Caption = 'DB Login'
    end
    object Label6: TLabel
      Left = 12
      Top = 238
      Width = 41
      Height = 13
      Caption = 'DB Pass'
    end
    object Label10: TLabel
      Left = 456
      Top = 12
      Width = 25
      Height = 13
      Caption = 'Nom '
    end
    object Label11: TLabel
      Left = 456
      Top = 40
      Width = 21
      Height = 13
      Caption = 'Titre'
    end
    object Label12: TLabel
      Left = 456
      Top = 68
      Width = 38
      Height = 13
      Caption = 'Adresse'
    end
    object Label13: TLabel
      Left = 456
      Top = 96
      Width = 45
      Height = 13
      Caption = 'CP + Ville'
    end
    object Label14: TLabel
      Left = 456
      Top = 124
      Width = 28
      Height = 13
      Caption = 'Email '
    end
    object Label15: TLabel
      Left = 456
      Top = 152
      Width = 32
      Height = 13
      Caption = 'G'#233'rant'
    end
    object Label16: TLabel
      Left = 456
      Top = 180
      Width = 37
      Height = 13
      Caption = 'Url Plan'
    end
    object Label17: TLabel
      Left = 456
      Top = 208
      Width = 43
      Height = 13
      Caption = 'Url Logo '
    end
    object Label18: TLabel
      Left = 456
      Top = 236
      Width = 44
      Height = 13
      Caption = 'Url Photo'
    end
    object Label19: TLabel
      Left = 532
      Top = 12
      Width = 26
      Height = 13
      Caption = 'Lundi'
    end
    object Label20: TLabel
      Left = 532
      Top = 40
      Width = 26
      Height = 13
      Caption = 'Mardi'
    end
    object Label21: TLabel
      Left = 532
      Top = 68
      Width = 41
      Height = 13
      Caption = 'Mercredi'
    end
    object Label22: TLabel
      Left = 532
      Top = 96
      Width = 25
      Height = 13
      Caption = 'Jeudi'
    end
    object Label23: TLabel
      Left = 532
      Top = 124
      Width = 42
      Height = 13
      Caption = 'Vendredi'
    end
    object Label24: TLabel
      Left = 532
      Top = 152
      Width = 35
      Height = 13
      Caption = 'Samedi'
    end
    object Label25: TLabel
      Left = 532
      Top = 180
      Width = 48
      Height = 13
      Caption = 'Dimanche'
    end
    object Label26: TLabel
      Left = 532
      Top = 208
      Width = 23
      Height = 13
      Caption = 'Pays'
    end
    object Label28: TLabel
      Left = 532
      Top = 236
      Width = 34
      Height = 13
      Caption = 'R'#233'gion'
    end
    object Label29: TLabel
      Left = 229
      Top = 152
      Width = 45
      Height = 13
      Caption = 'FTP Host'
    end
    object Label30: TLabel
      Left = 228
      Top = 180
      Width = 45
      Height = 13
      Caption = 'FTP User'
    end
    object Label31: TLabel
      Left = 228
      Top = 208
      Width = 44
      Height = 13
      Caption = 'FTP Pwd'
    end
    object Label32: TLabel
      Left = 228
      Top = 238
      Width = 36
      Height = 13
      Caption = 'FTP Dir'
    end
    object Label33: TLabel
      Left = 229
      Top = 80
      Width = 46
      Height = 13
      Caption = 'UserType'
    end
    object Label34: TLabel
      Left = 228
      Top = 108
      Width = 29
      Height = 13
      Caption = 'Admin'
    end
    object EditCustLogin: TEdit
      Left = 72
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'EditCustLogin'
    end
    object EditCustPass: TEdit
      Left = 72
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'EditCustLogin'
    end
    object EditCustUrl: TEdit
      Left = 72
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'EditCustLogin'
    end
    object EditCustID: TEdit
      Left = 72
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'EditCustLogin'
    end
    object EditCustGroupId: TEdit
      Left = 72
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'EditCustLogin'
    end
    object EditFTPHost: TEdit
      Left = 280
      Top = 149
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'EditCustLogin'
    end
    object EditDBNAme: TEdit
      Left = 72
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'EditCustLogin'
    end
    object EditDBLogin: TEdit
      Left = 72
      Top = 200
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'EditCustLogin'
    end
    object EditDBPass: TEdit
      Left = 72
      Top = 232
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'EditCustLogin'
    end
    object EditDBHost: TEdit
      Left = 72
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'EditCustLogin'
    end
    object EditFTPUser: TEdit
      Left = 280
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 10
      Text = 'EditCustLogin'
    end
    object EditFTPPwd: TEdit
      Left = 280
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'EditCustLogin'
    end
    object EditFTPDir: TEdit
      Left = 280
      Top = 232
      Width = 121
      Height = 21
      TabOrder = 12
      Text = 'EditCustLogin'
    end
    object Edit1: TEdit
      Left = 767
      Top = 33
      Width = 98
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 13
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 767
      Top = 57
      Width = 98
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 14
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 767
      Top = 81
      Width = 98
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 15
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 767
      Top = 106
      Width = 98
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 16
      Text = 'Edit4'
    end
    object EditUserType: TEdit
      Left = 281
      Top = 77
      Width = 121
      Height = 21
      TabOrder = 17
      Text = '1'
    end
    object EditAdmin: TEdit
      Left = 280
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 18
      Text = '0'
    end
  end
  object PanelDbGrid: TPanel
    Left = 0
    Top = 28
    Width = 1071
    Height = 372
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'PanelDbGrid'
    TabOrder = 5
    object PageControlGrids: TPageControl
      Left = 2
      Top = 2
      Width = 1067
      Height = 368
      ActivePage = TabSheetUsers
      Align = alClient
      HotTrack = True
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControlGridsChange
      object TabSheetUsers: TTabSheet
        Caption = 'Utilisateurs'
        object cxgrd1: TcxGrid
          Left = 0
          Top = 0
          Width = 1059
          Height = 337
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxgrdbtblvwGrid1DBTableView1CustomDrawCell
            OnEditing = cxgrdbtblvwGrid1DBTableView1Editing
            OnEditValueChanged = cxgrdbtblvwGrid1DBTableView1EditValueChanged
            OnInitEdit = cxgrdbtblvwGrid1DBTableView1InitEdit
            DataController.DataSource = DSUsers
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsView.ColumnAutoWidth = True
            object cxgrdbclmnGrid1DBTableView1field1: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'field1'
            end
            object cxgrdbclmnGrid1DBTableView1field2: TcxGridDBColumn
              Caption = 'login'
              DataBinding.FieldName = 'field2'
            end
            object cxgrdbclmnGrid1DBTableView1field3: TcxGridDBColumn
              Caption = 'Passwd'
              DataBinding.FieldName = 'field3'
            end
            object cxgrdbclmnGrid1DBTableView1field4: TcxGridDBColumn
              Caption = 'DBHost'
              DataBinding.FieldName = 'field4'
            end
            object cxgrdbclmnGrid1DBTableView1field5: TcxGridDBColumn
              Caption = 'DBLogin'
              DataBinding.FieldName = 'field5'
            end
            object cxgrdbclmnGrid1DBTableView1field6: TcxGridDBColumn
              Caption = 'DBPasswd'
              DataBinding.FieldName = 'field6'
            end
            object cxgrdbclmnGrid1DBTableView1field7: TcxGridDBColumn
              Caption = 'DBName'
              DataBinding.FieldName = 'field7'
            end
            object cxgrdbclmnGrid1DBTableView1field8: TcxGridDBColumn
              Caption = 'ShopID'
              DataBinding.FieldName = 'field8'
            end
            object cxgrdbclmnGrid1DBTableView1field9: TcxGridDBColumn
              Caption = 'ShopURL'
              DataBinding.FieldName = 'field9'
            end
            object cxgrdbclmnGrid1DBTableView1field10: TcxGridDBColumn
              Caption = 'GrpID'
              DataBinding.FieldName = 'field10'
            end
            object cxgrdbclmnGrid1DBTableView1field11: TcxGridDBColumn
              Caption = 'FTPHost'
              DataBinding.FieldName = 'field11'
              Visible = False
            end
            object cxgrdbclmnGrid1DBTableView1field12: TcxGridDBColumn
              Caption = 'FTPLogin'
              DataBinding.FieldName = 'field12'
              Visible = False
            end
            object cxgrdbclmnGrid1DBTableView1field13: TcxGridDBColumn
              Caption = 'FTPPasswd'
              DataBinding.FieldName = 'field13'
              Visible = False
            end
            object cxgrdbclmnGrid1DBTableView1field14: TcxGridDBColumn
              Caption = 'FTPDir'
              DataBinding.FieldName = 'field14'
              Visible = False
            end
            object cxgrdbclmnGrid1DBTableView1Field15: TcxGridDBColumn
              Caption = 'UserLevel'
              DataBinding.FieldName = 'Field15'
            end
            object cxgrdbclmnGrid1DBTableView1field16: TcxGridDBColumn
              Caption = 'UserType'
              DataBinding.FieldName = 'field16'
            end
            object cxgrdbclmnGrid1DBTableView1SmsAccount: TcxGridDBColumn
              DataBinding.FieldName = 'SmsAccount'
            end
            object cxgrdbclmnGrid1DBTableView1SmsLogin: TcxGridDBColumn
              DataBinding.FieldName = 'SmsLogin'
            end
            object cxgrdbclmnGrid1DBTableView1SmsPassword: TcxGridDBColumn
              Caption = 'SmsPasswd'
              DataBinding.FieldName = 'SmsPassword'
            end
            object cxgrdbclmnGrid1DBTableView1CLDLogin: TcxGridDBColumn
              DataBinding.FieldName = 'CLDLogin'
            end
            object cxgrdbclmnGrid1DBTableView1CLDPass: TcxGridDBColumn
              DataBinding.FieldName = 'CLDPass'
            end
          end
          object cxgrdlvlGrid1Level1: TcxGridLevel
            GridView = cxgrdbtblvwGrid1DBTableView1
          end
        end
      end
      object TabSheetShops: TTabSheet
        Caption = 'Magasins'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 308
        object DBGridShops: TDBGrid
          Left = 0
          Top = 0
          Width = 1059
          Height = 337
          Align = alClient
          Ctl3D = False
          DataSource = DSShops
          Options = [dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  object DSUsers: TDataSource
    DataSet = CDUsers
    Left = 996
    Top = 144
  end
  object Servers: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'servers.cds'
    Params = <>
    Left = 884
    Top = 108
    Data = {
      160A00009619E0BD0100000018000000090014000000030000005B020B536572
      766572734E616D6501004900000001000557494454480200020020000D536572
      766572734442486F737401004900000001000557494454480200020020000D53
      65727665727344424E616D650100490000000100055749445448020002002000
      0D53657276657273444255736572010049000000010005574944544802000200
      20000D5365727665727344425061737301004900000001000557494454480200
      020020000E53657276657273465450486F737401004900000001000557494454
      480200020040000E536572766572734654505573657201004900000001000557
      494454480200020040000D536572766572734654505077640100490000000100
      0557494454480200020040000D53657276657273465450446972010049000000
      010005574944544802000200400001000A4348414E47455F4C4F47040082003F
      0000000100000000000000040000000200000001000000080000000300000000
      0000000400000004000000000000000400000005000000030000000800000006
      0000000000000004000000070000000600000008000000080000000700000008
      0000000900000002000000080000000A00000009000000080000000B00000008
      000000080000000C0000000A000000080000000D00000000000000040000000E
      0000000D000000080000000F0000000B00000008000000100000000000000004
      0000001100000010000000080000001200000000000000040000001300000012
      000000080000001400000013000000080000000C000000000000000200000005
      00020013536D6172746F79732050726F64756374696F6E0B736D6172746F7973
      2E62650A635F736D6172746F79730A635F736D6172746F79730F6674702E736D
      6172746F79732E62650764736F6E6E657406736D61727478042F7765620D0000
      0013536D6172746F79732050726F64756374696F6E0B736D6172746F79732E62
      650A635F736D6172746F79730A635F736D6172746F7973084642354132316144
      0F6674702E736D6172746F79732E62650764736F6E6E657406736D6172747804
      2F776562050000000C54656D706F205068704E65740E3231322E34332E323435
      2E3132330864736F6E6E6574310864736F6E6E6574310A76326A327176696C6C
      610E6674702E7068706E65742E6F72670764736F6E6E65740A76326A32717669
      6C6C61042F77777704000000054C6F63616C096C6F63616C686F73740A635F73
      6D6172746F79730764736F6E6E65740976696C6C616C61616E0F6674702E736D
      6172746F79732E62650764736F6E6E657406736D61727478042F7765620C0000
      000C54656D706F205068704E65740F3139352E3133372E3234392E3132330864
      736F6E6E6574310864736F6E6E6574310A76326A327176696C6C610E6674702E
      7068706E65742E6F72670764736F6E6E65740A76326A327176696C6C61042F77
      7777050000000C5043657373656E7469616C730F7063657373656E7469616C73
      2E62650B766963746F725F73686F700B766963746F725F73686F70076D797374
      657279136674702E7063657373656E7469616C732E62650B766963746F725F73
      686F70046E6F6E65042F7777770D0000000C5043657373656E7469616C730F70
      63657373656E7469616C732E62650B766963746F725F73686F700B766963746F
      725F73686F70076D797374657279136674702E7063657373656E7469616C732E
      626506766963746F72076D797374657279042F7777770D0000000C5043657373
      656E7469616C730F7063657373656E7469616C732E62650B766963746F725F73
      686F700B766963746F725F73686F70076D797374657279136674702E70636573
      73656E7469616C732E626506766963746F72076D797374657279112F7075626C
      69635F68746D6C2F73686F700D00000013536D6172746F79732050726F647563
      74696F6E0B736D6172746F79732E62650A635F736D6172746F79730A635F736D
      6172746F79730846423541323161440F6674702E736D6172746F79732E626508
      736D6172746F7973057271767476042F7777770D00000013536D6172746F7973
      2050726F64756374696F6E0B736D6172746F79732E62650A635F736D6172746F
      79730A635F736D6172746F79730846423541323161440B736D6172746F79732E
      626508736D6172746F7973057271767476042F7777770D0000000C5043657373
      656E7469616C730F7063657373656E7469616C732E62650B766963746F725F73
      686F700B766963746F725F73686F70076D797374657279136674702E70636573
      73656E7469616C732E626506766963746F72076D797374657279112F7075626C
      69635F68746D6C2F73686F700E00000013536D6172746F79732050726F647563
      74696F6E0B736D6172746F79732E62650A635F736D6172746F79730A635F736D
      6172746F79730846423541323161440B736D6172746F79732E626508736D6172
      746F79730572717674760C2F7777772F636174616C6F670500AA0215536D6172
      746F79732050726F64756374696F6E20320B736D6172746F79732E62650A635F
      736D6172746F79730A635F736D6172746F79730C00000015536D6172746F7973
      2050726F64756374696F6E20320B736D6172746F79732E62650A635F736D6172
      746F79730A635F736D6172746F79730846423541323161440B736D6172746F79
      732E626508736D617274696D67087761476539753561012F0C0000000C504365
      7373656E7469616C730F7063657373656E7469616C732E626508706365737365
      6E74087063657373656E740A706365737362786C32380F7063657373656E7469
      616C732E6265087063657373656E740A706365737362786C3238042F77777705
      0A00000A73746F726567616D65730A73746F726567616D65730C715538745568
      5563484154720E73746F726567616D65732E636F6D0873746F726567616D0C71
      55387455685563484154720C2F7777772F636174616C6F670C0000000A53746F
      726567616D65730E73746F726567616D65732E636F6D0A73746F726567616D65
      730A73746F726567616D65730C7155387455685563484154720E73746F726567
      616D65732E636F6D0873746F726567616D0C7155387455685563484154720C2F
      7777772F636174616C6F670500AA0215536D6172746F79732050726F64756374
      696F6E20330F73716C2E736D6172746F79732E62650A635F736D6172746F7973
      0A635F736D6172746F79730D00800215536D6172746F79732050726F64756374
      696F6E20330F73716C2E736D6172746F79732E62650A635F736D6172746F7973
      0A635F736D6172746F79730846423541323161440F6674702E736D6172746F79
      732E626508736D617274696D670C00000015536D6172746F79732050726F6475
      6374696F6E20330F73716C2E736D6172746F79732E62650A635F736D6172746F
      79730A635F736D6172746F79730846423541323161440F6674702E736D617274
      6F79732E626508736D617274696D67087761476539753561012F}
    object ServersServersName: TStringField
      FieldName = 'ServersName'
      Size = 32
    end
    object ServersServersDBHost: TStringField
      FieldName = 'ServersDBHost'
      Size = 32
    end
    object ServersServersDBName: TStringField
      FieldName = 'ServersDBName'
      Size = 32
    end
    object ServersServersDBUser: TStringField
      FieldName = 'ServersDBUser'
      Size = 32
    end
    object ServersServersDBPass: TStringField
      FieldName = 'ServersDBPass'
      Size = 32
    end
    object ServersServersFTPHost: TStringField
      FieldName = 'ServersFTPHost'
      Size = 64
    end
    object ServersServersFTPUser: TStringField
      FieldName = 'ServersFTPUser'
      Size = 64
    end
    object ServersServersFTPPwd: TStringField
      FieldName = 'ServersFTPPwd'
      Size = 64
    end
    object ServersServersFTPDir: TStringField
      FieldName = 'ServersFTPDir'
      Size = 64
    end
  end
  object DataSourceServers: TDataSource
    DataSet = Servers
    Left = 884
    Top = 160
  end
  object ImageList: TImageList
    Left = 892
    Top = 224
    Bitmap = {
      494C010103001800200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000000000008484840000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000FFFF0000FFFF000084840000848400000000008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000FFFF000084840000FFFF0000848400008484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000FFFF0000FFFF0000FFFF000084840000848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008484
      84008484840000FFFF0000FFFF000084840000FFFF0000848400008484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000008484
      840000FFFF0000FFFF0000840000848484000000000000848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484008484840084848400FFFF
      FF0000FFFF0000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF008484840000FF
      FF00FFFFFF008484840000FFFF0000FFFF00FFFFFF0000FFFF00848484000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF008484
      840000FFFF00000000008484840000FFFF008484840084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00000000008484
      8400FFFFFF000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008484
      840000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFF7FFFFFFFF0000FFDBFFFFC0010000
      FFE1C00780010000FFE1C00780010000FC1DC00780010000F80EC00780010000
      F00EC00780010000F001C00780010000600FC00780010000200FC00780010000
      C00FC00780010000000FC00780010000001FC00F80010000843FC01F80050000
      26FFC03F8001000067FFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActionClear
            Caption = '&Nouvelle Fiche'
            ImageIndex = 1
          end
          item
            Action = ActionCreateAccount
            Caption = '&Cr'#233'er compte'
            ImageIndex = 2
          end
          item
            Caption = '-'
          end
          item
            Action = ActionManageServers
            Caption = '&Gestion serveurs'
            ImageIndex = 0
          end>
      end
      item
      end>
    Images = ImageList
    Left = 884
    Top = 280
    StyleName = 'XP Style'
    object ActionClear: TAction
      Caption = 'Nouvelle Fiche'
      ImageIndex = 1
      OnExecute = ActionClearExecute
    end
    object ActionCreateAccount: TAction
      Caption = 'Cr'#233'er compte'
      ImageIndex = 2
      OnExecute = ActionCreateAccountExecute
    end
    object ActionManageServers: TAction
      Caption = 'Gestion serveurs'
      ImageIndex = 0
      OnExecute = ActionManageServersExecute
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Usersmanagement'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    FlatCloseButton = True
    ImageOptions.Images = ImageList
    MenuAnimations = maUnfold
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 912
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 582
      FloatTop = 126
      FloatClientWidth = 171
      FloatClientHeight = 153
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonClear'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'serverlookup'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavEdit1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButtonCreateAccount'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      MultiLine = True
      OldName = 'Main'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButtonClear: TdxBarButton
      Action = ActionClear
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButtonCreateAccount: TdxBarButton
      Action = ActionCreateAccount
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButtonGenerateData: TdxBarButton
      Caption = 'Ins'#233'rer les donn'#233'es du serveur'
      Category = 0
      Hint = 'Ins'#233'rer les donn'#233'es du serveur'
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
    end
    object serverlookup: TdxBarLookupCombo
      Caption = 'Configuration'
      Category = 0
      Hint = 'Configuration'
      Visible = ivAlways
      OnChange = serverlookupChange
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000D0FFFF0FFFFFFFF0D0F77F0F777777F0D0CCCC0CCCCCC
        CC0D0C77C0C777777C0D0CCCC0CCCCCCCC0D0F77F0F777777F0D0FFFF0FFFFFF
        FF0D0F77F0F777777F0D0FFFF0FFFFFFFF0D000000000000000D0FFFCCCCFFF0
        DDDD0F777777FFF0DDDD0FFFCCCCFFF0DDDD000000000000DDDD}
      ShowCaption = True
      KeyField = 'ServersName'
      ListField = 'ServersName'
      ListSource = DataSourceServers
      RowCount = 5
    end
    object dxBarButton1: TdxBarButton
      Action = ActionManageServers
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Maj Utilisateurs'
      Category = 0
      Hint = 'Maj Utilisateurs'
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777000777
        7777777777000777777777777700077777777770000000007777777000000000
        7777777000000000777777777700077777777777770007777777777777000777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777770000000000777777000000000
        0777777000000000077777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarDBNavEdit1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777700000000007777777000000007777777770000007
        7777777777000077777777777770077777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777007777700
        7777777000777000777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777770007770007777777007777700
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777770777777
        7777777700077777777777700000777777777700070007777777770077700077
        7777777777770007777777777777700077777777777777000777777777777770
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton
      Category = 1
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
  end
  object DSShops: TDataSource
    DataSet = CDShops
    Left = 948
    Top = 150
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DSUsers
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnDelete, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 880
    Top = 2
  end
  object DPShops: TDataSetProvider
    DataSet = SQLDSShops
    Left = 952
    Top = 74
  end
  object SQLDSShops: TSQLDataSet
    CommandText = 'netshop_shops'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectionMainDB
    Left = 952
    Top = 42
  end
  object CDShops: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPShops'
    Left = 944
    Top = 106
  end
  object SQLDSUsers: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from users'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = conCredentials
    Left = 992
    Top = 42
    object SQLDSUsersfield1: TIntegerField
      FieldName = 'field1'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLDSUsersfield2: TStringField
      FieldName = 'field2'
      Size = 15
    end
    object SQLDSUsersfield3: TStringField
      FieldName = 'field3'
      Size = 120
    end
    object SQLDSUsersfield4: TStringField
      FieldName = 'field4'
      Size = 120
    end
    object SQLDSUsersfield5: TStringField
      FieldName = 'field5'
      Size = 120
    end
    object SQLDSUsersfield6: TStringField
      FieldName = 'field6'
      Size = 120
    end
    object SQLDSUsersfield7: TStringField
      FieldName = 'field7'
      Size = 120
    end
    object SQLDSUsersfield8: TStringField
      FieldName = 'field8'
      Size = 120
    end
    object SQLDSUsersfield9: TStringField
      FieldName = 'field9'
      Size = 120
    end
    object SQLDSUsersfield10: TStringField
      FieldName = 'field10'
      Size = 120
    end
    object SQLDSUsersfield11: TStringField
      FieldName = 'field11'
      Size = 120
    end
    object SQLDSUsersfield12: TStringField
      FieldName = 'field12'
      Size = 120
    end
    object SQLDSUsersfield13: TStringField
      FieldName = 'field13'
      Size = 120
    end
    object SQLDSUsersfield14: TStringField
      FieldName = 'field14'
      Size = 120
    end
    object SQLDSUsersField15: TIntegerField
      FieldName = 'Field15'
      Required = True
    end
    object SQLDSUsersfield16: TShortintField
      FieldName = 'field16'
      Required = True
    end
    object strngfldSQLDSUsersSmsAccount: TStringField
      FieldName = 'SmsAccount'
      Size = 32
    end
    object strngfldSQLDSUsersSmsLogin: TStringField
      FieldName = 'SmsLogin'
      Size = 32
    end
    object strngfldSQLDSUsersSmsPassword: TStringField
      FieldName = 'SmsPassword'
      Size = 32
    end
    object strngfldSQLDSUsersCLDLogin: TStringField
      FieldName = 'CLDLogin'
      Size = 32
    end
    object strngfldSQLDSUsersCLDPass: TStringField
      FieldName = 'CLDPass'
      Size = 32
    end
  end
  object DPUsers: TDataSetProvider
    DataSet = SQLDSUsers
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DPUsersBeforeUpdateRecord
    Left = 992
    Top = 74
  end
  object CDUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPUsers'
    Left = 992
    Top = 106
    object CDUsersfield1: TIntegerField
      FieldName = 'field1'
      Required = True
    end
    object CDUsersfield2: TStringField
      FieldName = 'field2'
      Size = 15
    end
    object CDUsersfield3: TStringField
      FieldName = 'field3'
      Size = 120
    end
    object CDUsersfield4: TStringField
      FieldName = 'field4'
      Size = 120
    end
    object CDUsersfield5: TStringField
      FieldName = 'field5'
      Size = 120
    end
    object CDUsersfield6: TStringField
      FieldName = 'field6'
      Size = 120
    end
    object CDUsersfield7: TStringField
      FieldName = 'field7'
      Size = 120
    end
    object CDUsersfield8: TStringField
      FieldName = 'field8'
      Size = 120
    end
    object CDUsersfield9: TStringField
      FieldName = 'field9'
      Size = 120
    end
    object CDUsersfield10: TStringField
      FieldName = 'field10'
      Size = 120
    end
    object CDUsersfield11: TStringField
      FieldName = 'field11'
      Size = 120
    end
    object CDUsersfield12: TStringField
      FieldName = 'field12'
      Size = 120
    end
    object CDUsersfield13: TStringField
      FieldName = 'field13'
      Size = 120
    end
    object CDUsersfield14: TStringField
      FieldName = 'field14'
      Size = 120
    end
    object CDUsersField15: TIntegerField
      FieldName = 'Field15'
      Required = True
    end
    object CDUsersfield16: TShortintField
      FieldName = 'field16'
      Required = True
    end
    object strngfldCDUsersSmsAccount: TStringField
      FieldName = 'SmsAccount'
      Size = 32
    end
    object strngfldCDUsersSmsLogin: TStringField
      FieldName = 'SmsLogin'
      Size = 32
    end
    object strngfldCDUsersSmsPassword: TStringField
      FieldName = 'SmsPassword'
      Size = 32
    end
    object strngfldCDUsersCLDLogin: TStringField
      FieldName = 'CLDLogin'
      Size = 32
    end
    object strngfldCDUsersCLDPass: TStringField
      FieldName = 'CLDPass'
      Size = 32
    end
  end
  object SQLConnectionMainDB: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=sql.smartoys.be'
      'Database=c_smartoys'
      'User_Name=gomedia'
      'Password=DhQKR79Lyce56vtB'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=True'
      'Encrypted=False')
    Connected = True
    Left = 728
    Top = 272
  end
  object conCredentials: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=sql.smartoys.be'
      'Database=catalog'
      'User_Name=account_creator'
      'Password=sonnetx2'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False')
    Connected = True
    Left = 736
    Top = 192
  end
  object DCPCipher: TDCP_rijndael
    Id = 9
    Algorithm = 'Rijndael'
    MaxKeySize = 256
    BlockSize = 128
    Left = 104
    Top = 65224
  end
  object DCP_sha11: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    Left = 968
    Top = 512
  end
end