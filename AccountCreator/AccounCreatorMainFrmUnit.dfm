object MainForm: TMainForm
  Left = 210
  Top = 184
  Width = 1156
  Height = 713
  Caption = 'JonaMedia Account Creator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 72
    Width = 54
    Height = 13
    Caption = 'Login client'
  end
  object Label2: TLabel
    Left = 20
    Top = 100
    Width = 51
    Height = 13
    Caption = 'Pass client'
  end
  object Label3: TLabel
    Left = 20
    Top = 212
    Width = 40
    Height = 13
    Caption = 'DB Host'
  end
  object Label4: TLabel
    Left = 20
    Top = 240
    Width = 46
    Height = 13
    Caption = 'DB Name'
  end
  object Label5: TLabel
    Left = 20
    Top = 268
    Width = 44
    Height = 13
    Caption = 'DB Login'
  end
  object Label6: TLabel
    Left = 20
    Top = 296
    Width = 41
    Height = 13
    Caption = 'DB Pass'
  end
  object Label7: TLabel
    Left = 20
    Top = 128
    Width = 50
    Height = 13
    Caption = 'URL client'
  end
  object Label8: TLabel
    Left = 20
    Top = 156
    Width = 40
    Height = 13
    Caption = 'ID Client'
  end
  object Label9: TLabel
    Left = 20
    Top = 184
    Width = 52
    Height = 13
    Caption = 'ID Groupe '
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 349
    Width = 1148
    Height = 337
    Align = alBottom
    DataSource = DataSource1
    Options = [dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBAdvNavigator1: TDBAdvNavigator
    Left = 0
    Top = 324
    Width = 1148
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    Color = clBtnFace
    ColorDown = 14210002
    ColorHot = 13289415
    TabOrder = 1
  end
  object EditCustLogin: TdxEdit
    Left = 84
    Top = 68
    Width = 121
    TabOrder = 2
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditCustGroupID: TdxMaskEdit
    Left = 84
    Top = 180
    Width = 121
    TabOrder = 3
    Alignment = taRightJustify
    EditMask = '####'
    IgnoreMaskBlank = False
    StyleController = dxEditStyleController1
    Text = '0000'
    StoredValues = 5
  end
  object EditCustPass: TdxEdit
    Left = 84
    Top = 96
    Width = 121
    TabOrder = 4
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditDBHost: TdxEdit
    Left = 84
    Top = 208
    Width = 121
    TabOrder = 5
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditDBName: TdxEdit
    Left = 84
    Top = 236
    Width = 121
    TabOrder = 6
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditDBLogin: TdxEdit
    Left = 84
    Top = 264
    Width = 121
    TabOrder = 7
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditDBPass: TdxEdit
    Left = 84
    Top = 292
    Width = 121
    TabOrder = 8
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditCustUrl: TdxEdit
    Left = 84
    Top = 124
    Width = 121
    TabOrder = 9
    Alignment = taRightJustify
    StyleController = dxEditStyleController1
    StoredValues = 1
  end
  object EditCustID: TdxMaskEdit
    Left = 84
    Top = 152
    Width = 121
    TabOrder = 10
    Alignment = taRightJustify
    EditMask = '####'
    IgnoreMaskBlank = False
    StyleController = dxEditStyleController1
    Text = '0000'
    StoredValues = 5
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 216
    Top = 96
    Width = 145
    Height = 21
    DataField = 'ServersDBName'
    DataSource = DataSourceServers
    EnableValues = False
    ItemHeight = 13
    TabOrder = 11
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 1148
    Height = 26
    ActionManager = ActionManager1
    Caption = 'General'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object ZConnection: TZConnection
    Protocol = 'mysql-3.23'
    Port = 0
    AutoCommit = True
    ReadOnly = False
    TransactIsolationLevel = tiNone
    Connected = False
    Left = 1108
    Top = 4
  end
  object ZQueryTable: TZQuery
    Connection = ZConnection
    RequestLive = True
    UpdateObject = ZUpdateSQL
    CachedUpdates = False
    SQL.Strings = (
      'select * from Users')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utModified, utInserted, utUnmodified]
    Left = 1108
    Top = 36
    object ZQueryTablefield1: TIntegerField
      DisplayWidth = 5
      FieldName = 'field1'
      Required = True
    end
    object ZQueryTablefield2: TStringField
      DisplayWidth = 15
      FieldName = 'field2'
      Size = 120
    end
    object ZQueryTablefield3: TStringField
      DisplayWidth = 20
      FieldName = 'field3'
      Size = 120
    end
    object ZQueryTablefield4: TStringField
      DisplayWidth = 20
      FieldName = 'field4'
      Size = 120
    end
    object ZQueryTablefield5: TStringField
      DisplayWidth = 20
      FieldName = 'field5'
      Size = 120
    end
    object ZQueryTablefield6: TStringField
      DisplayWidth = 20
      FieldName = 'field6'
      Size = 120
    end
    object ZQueryTablefield7: TStringField
      DisplayWidth = 20
      FieldName = 'field7'
      Size = 120
    end
    object ZQueryTablefield8: TStringField
      DisplayWidth = 20
      FieldName = 'field8'
      Size = 120
    end
    object ZQueryTablefield9: TStringField
      DisplayWidth = 20
      FieldName = 'field9'
      Size = 120
    end
    object ZQueryTablefield10: TStringField
      DisplayWidth = 20
      FieldName = 'field10'
      Size = 120
    end
  end
  object ZUpdateSQL: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM Users WHERE field1=:FIELD1')
    InsertSQL.Strings = (
      'INSERT INTO Users'
      
        '(field1,field2,field3,field4,field5,field6,Field7,Field8,Field9,' +
        'Field10) '
      'VALUES'
      
        '(:field1,:field2,:field3,:field4,:field5,:field6,:Field7,:Field8' +
        ',:Field9,:Field10) ')
    ModifySQL.Strings = (
      
        'UPDATE Users SET field1=:FIELD1,field2=:FIELD2,field3=:FIELD3,fi' +
        'eld4=:FIELD4,'
      
        'field5=:FIELD5,field6=:FIELD6,field7=:FIELD7,field8=:FIELD8,fiel' +
        'd9=:FIELD9,field10=:FIELD10')
    Left = 1108
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FIELD1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIELD10'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = ZQueryTable
    Left = 1108
    Top = 104
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsFlat
    Left = 1072
    Top = 8
  end
  object Servers: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'servers.cds'
    FieldDefs = <
      item
        Name = 'ServersName'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ServersDBHost'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ServersDBName'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ServersDBUser'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ServersDBPass'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1108
    Top = 140
    Data = {
      C20000009619E0BD010000001800000005000000000003000000C2000B536572
      766572734E616D6501004900000001000557494454480200020020000D536572
      766572734442486F737401004900000001000557494454480200020020000D53
      65727665727344424E616D650100490000000100055749445448020002002000
      0D53657276657273444255736572010049000000010005574944544802000200
      20000D5365727665727344425061737301004900000001000557494454480200
      020020000000}
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
  end
  object DataSourceServers: TDataSource
    DataSet = Servers
    Left = 1108
    Top = 176
  end
  object ImageList: TImageList
    Left = 1108
    Top = 208
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000008080800000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000FFFF0000FFFF000080800000808000000000008080
      800000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0000FFFF000080800000FFFF0000808000008080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000FFFF0000FFFF0000FFFF000080800000808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008080
      80008080800000FFFF0000FFFF000080800000FFFF0000808000008080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00000000008080
      800000FFFF0000FFFF0000800000808080000000000000808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080008080800080808000FFFF
      FF0000FFFF0000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF008080800000FF
      FF00FFFFFF008080800000FFFF0000FFFF00FFFFFF0000FFFF00808080000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000FFFF008080
      800000FFFF00000000008080800000FFFF008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000FFFF00000000008080
      8000FFFFFF000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008080
      800000FFFF000000000000000000000000000000000000000000000000000000
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
      26FFC03F8001000067FFFFFFFFFF0000}
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
            Action = Action2
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
        ActionBar = ActionToolBar1
      end
      item
      end>
    Images = ImageList
    Left = 1108
    Top = 240
    StyleName = 'XP Style'
    object ActionClear: TAction
      Caption = 'Nouvelle Fiche'
      ImageIndex = 1
      OnExecute = ActionClearExecute
    end
    object Action2: TAction
      Caption = 'Cr'#233'er compte'
      ImageIndex = 2
      OnExecute = Action2Execute
    end
    object ActionManageServers: TAction
      Caption = 'Gestion serveurs'
      ImageIndex = 0
    end
  end
end
