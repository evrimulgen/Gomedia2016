object LoginForm: TLoginForm
  Left = 1061
  Top = 466
  AlphaBlendValue = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'GoMedia Login'
  ClientHeight = 345
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 345
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    object LabelSystem: TLabel
      Left = 6
      Top = 288
      Width = 49
      Height = 13
      Caption = 'Syst'#232'me : '
    end
    object LabelUser: TLabel
      Left = 6
      Top = 312
      Width = 55
      Height = 13
      Caption = 'Utilisateur : '
    end
    object LabelID: TLabel
      Left = 6
      Top = 264
      Width = 67
      Height = 13
      Caption = 'Windows ID : '
    end
    object LabelComputer: TLabel
      Left = 6
      Top = 240
      Width = 58
      Height = 13
      Caption = 'Ordinateur : '
    end
    object LabelCompany: TLabel
      Left = 6
      Top = 216
      Width = 45
      Height = 13
      Caption = 'Soci'#233't'#233' : '
    end
    object LabelLogin: TLabel
      Left = 5
      Top = 97
      Width = 35
      Height = 13
      Caption = 'Login : '
    end
    object LabelPassword: TLabel
      Left = 5
      Top = 120
      Width = 73
      Height = 13
      Caption = 'M'#244't de passe : '
    end
    object ImageLogo: TImage
      Left = 4
      Top = 5
      Width = 124
      Height = 50
      AutoSize = True
      Stretch = True
    end
    object LabelLedSystem: TLabel
      Left = 230
      Top = 16
      Width = 59
      Height = 13
      Caption = 'SYSTEME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelLedDbLocal: TLabel
      Left = 302
      Top = 16
      Width = 58
      Height = 13
      Caption = 'FICHIERS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelLedDBServer: TLabel
      Left = 373
      Top = 16
      Width = 60
      Height = 13
      Caption = 'SERVEUR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MessageLabel: TJvBehaviorLabel
      Left = 248
      Top = 193
      Width = 3
      Height = 13
      BehaviorOptions.Active = True
    end
    object ButQuit: TJvTransparentButton
      Left = 208
      Top = 61
      Width = 109
      Height = 25
      Caption = 'Quitter'
      FrameStyle = fsIndent
      OnClick = ButtonQuitClick
    end
    object ButLaunch: TJvTransparentButton
      Left = 323
      Top = 62
      Width = 109
      Height = 24
      Caption = 'Lancer'
      FrameStyle = fsIndent
      OnClick = BitBtn1Click
    end
    object CanLoadLed: TJvLED
      Left = 251
      Top = 33
      Status = False
    end
    object DBLocalLed: TJvLED
      Left = 323
      Top = 33
      Status = False
    end
    object DBServLed: TJvLED
      Left = 395
      Top = 33
      Status = False
    end
    object btnEdit: TJvTransparentButton
      Left = 84
      Top = 61
      Width = 109
      Height = 25
      Caption = 'Editer'
      FrameStyle = fsIndent
      OnClick = btnEditClick
    end
    object EditLogin: TcxTextEdit
      Left = 84
      Top = 92
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 0
      Width = 349
    end
    object EditCompany: TcxTextEdit
      Left = 85
      Top = 212
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 2
      Text = 'cxTextEdit1'
      Width = 349
    end
    object EditComputer: TcxTextEdit
      Left = 84
      Top = 236
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 3
      Text = 'cxTextEdit1'
      Width = 349
    end
    object EditWindowsID: TcxTextEdit
      Left = 84
      Top = 260
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 4
      Text = 'cxTextEdit1'
      Width = 349
    end
    object EditSystem: TcxTextEdit
      Left = 84
      Top = 284
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 5
      Text = 'cxTextEdit1'
      Width = 349
    end
    object EditUser: TcxTextEdit
      Left = 84
      Top = 308
      Properties.Alignment.Horz = taRightJustify
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 6
      Text = 'cxTextEdit1'
      Width = 349
    end
    object CheckEditSaveToReg: TcxCheckBox
      Left = 83
      Top = 143
      Caption = 'Sauvegarder les donn'#233'es login dans la base de registre'
      Properties.Alignment = taRightJustify
      Properties.ReadOnly = True
      State = cbsChecked
      TabOrder = 7
      Width = 345
    end
    object EditPwd: TcxMaskEdit
      Left = 84
      Top = 116
      Properties.Alignment.Horz = taRightJustify
      Properties.EchoMode = eemPassword
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      TabOrder = 1
      Width = 349
    end
    object cxchckbxForceRefresh: TcxCheckBox
      Left = 83
      Top = 169
      Caption = 'Forcer rechargement des param'#232'tres serveurs'
      Properties.Alignment = taRightJustify
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 345
    end
  end
  object StatusCheck: TTimer
    Interval = 3000
    OnTimer = StatusCheckTimer
    Left = 204
    Top = 12
  end
  object SQLDataSetLogin: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from users where field2 = :param01'
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftUnknown
        Name = 'param01'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnectionLogin
    Left = 149
    Top = 25
  end
  object JvComputerInfo: TJvComputerInfoEx
    Left = 77
    Top = 21
  end
  object SQLConnectionLogin: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'GetDriverFunc=getSQLDriverMySQLDirect'
      'LibraryName=dbexpmda40.dll'
      'VendorLib=not used'
      'BlobSize=-1'
      'HostName='
      'DataBase='
      'User_Name='
      'Password='
      'IPVersion=IPv4'
      'ProductName=DevartMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver200.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartMySqlMetaDataCommandFactory,DbxD' +
        'evartMySqlDriver200.bpl'
      'DriverUnit=DbxDevartMySql')
    Left = 24
    Top = 24
  end
  object DataEncoder: TDCP_rijndael
    Id = 9
    Algorithm = 'Rijndael'
    MaxKeySize = 256
    BlockSize = 128
    CipherMode = cmOFB
    Left = 40
    Top = 72
  end
  object DCP_sha11: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    Left = 40
    Top = 128
  end
  object CDS: TClientDataSet
    Aggregates = <>
    FileName = 'database\sales.cds'
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 216
  end
  object LocalEncoder: TDCP_3des
    Id = 24
    Algorithm = '3DES'
    MaxKeySize = 192
    BlockSize = 64
    Left = 40
    Top = 168
  end
end
