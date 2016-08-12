unit LoginFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Registry,
  Buttons, ImgList,

  DB, SqlExpr, FMTBcd,
  cxCheckBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, JvExControls, JvButton, JvTransparentButton,
  JvComputerInfoEx, JvExStdCtrls, JvBehaviorLabel, JvComponentBase, JvLED,
  WideStrings, DBClient,
  DBXDynalink, DBXMySQL, DCPcrypt2, DCPblockciphers,
  DCPrijndael, DCPsha1, DCPdes, catalog, XMLDoc, SOAPHTTPClient, DCPBase64,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, DbxDevartMySql,IdHTTP,uLkJSON;

type
  TLoginForm = class(TForm)
    StatusCheck: TTimer;
    SQLDataSetLogin: TSQLDataSet;
    PanelMain: TPanel;
    LabelSystem: TLabel;
    LabelUser: TLabel;
    LabelID: TLabel;
    LabelComputer: TLabel;
    LabelCompany: TLabel;
    LabelLogin: TLabel;
    LabelPassword: TLabel;
    ImageLogo: TImage;
    EditLogin: TcxTextEdit;
    EditCompany: TcxTextEdit;
    EditComputer: TcxTextEdit;
    EditWindowsID: TcxTextEdit;
    EditSystem: TcxTextEdit;
    EditUser: TcxTextEdit;
    CheckEditSaveToReg: TcxCheckBox;
    EditPwd: TcxMaskEdit;
    LabelLedSystem: TLabel;
    LabelLedDbLocal: TLabel;
    LabelLedDBServer: TLabel;
    JvComputerInfo: TJvComputerInfoEx;
    MessageLabel: TJvBehaviorLabel;
    ButQuit: TJvTransparentButton;
    ButLaunch: TJvTransparentButton;
    CanLoadLed: TJvLED;
    DBLocalLed: TJvLED;
    DBServLed: TJvLED;
    SQLConnectionLogin: TSQLConnection;
    DataEncoder: TDCP_rijndael;
    DCP_sha11: TDCP_sha1;
    CDS: TClientDataSet;
    LocalEncoder: TDCP_3des;
    btnEdit: TJvTransparentButton;
    cxchckbxForceRefresh: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure StatusCheckTimer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ButtonQuitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    procedure SaveREgistry;
    procedure Decrypt(const aKey: AnsiString; aPVector: Pointer; const aInData: AnsiString; var aOutData: AnsiString);
    function DecryptData(Data: string; aKey, AIv: AnsiString): string;
    function Base64DecodeBytes(Input: TBytes): TBytes;
    function DecryptStringDES(ASource: string): string;
    function EncryptStringDES(Source: string): string;
    function EncryptData(Data: string; aKey, AIv: AnsiString): string;
    function Base64EncodeBytes(Input: TBytes): TBytes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

const
  LoginRegPath    = 'software\adaptec\2010\login';
  UserDataRegPath = 'software\adaptec\2010\userdata';
  Debug           = False;

implementation

uses clientDMunit, GlobalsUnit, EncdDecd;

{$R *.dfm}

var
  Days: string;

const
  USERDBLogin = 'SgfR7hztJDlJd4T3eQ6n';
  USERDBPwd   = 'WE8sUzQYmME=';
  USERDBHost  = 'WFEUDYlqzuPnK7GxZ2u4';
  USERDBName  = 'SBuinQU8sw==';

procedure TLoginForm.FormCreate(Sender: TObject);
var
  LoginReg: Tregistry;
  DecodeString: string;
begin
  EditCompany.Text   := JvComputerInfo.Identification.RegisteredCompany;
  EditComputer.Text  := JvComputerInfo.Identification.LocalComputerName;
  EditUser.Text      := JvComputerInfo.Identification.RegisteredOwner;
  EditWindowsID.Text := JvComputerInfo.Os.ProductID;
  EditSystem.Text    := JvComputerInfo.Os.ProductName;

  StatusCheckTimer(nil);

  DataEncoder.InitStr('smartoys.be', TDCP_sha1);
  LocalEncoder.InitStr('Video_Games', TDCP_sha1);

  LoginReg         := Tregistry.Create;
  LoginReg.RootKey := HKEY_CURRENT_USER;
  try
    if True then
    begin
      LoginReg.OpenKey(LoginRegPath, True);
      Days := LoginReg.ReadString('PrinterMode');
      DataEncoder.Reset;
      if Days = '' then
        Days := '0'
      else
        Days := DataEncoder.DecryptString(LoginReg.ReadString('PrinterMode'));
      if LoginReg.ValueExists('saved') then
      begin
        if LoginReg.ReadBool('saved') = True then
        begin
          DataEncoder.Reset;
          EditLogin.Text := DataEncoder.DecryptString(LoginReg.ReadString('login'));
          DataEncoder.Reset;
          EditPwd.Text := DataEncoder.DecryptString(LoginReg.ReadString('pass'));
        end;
        CheckEditSaveToReg.Checked := LoginReg.ReadBool('saved');
      end;
    end;
  finally
    LoginReg.CloseKey;
    LoginReg.Free;
  end;

  ChDir(ExtractFilePath(ParamStr(0)));
  if FileExists(CDS.filename) then
  begin

    CDS.Open;
    CDS.Last;
    if Now < CDS.FieldByName('sales_date_time').AsFloat then
    begin
      ShowMessage('Erreur avec la date syst�me !');
      Application.Terminate;
      CDS.Free;
    end;
    CDS.Free;
  end;

end;

procedure TLoginForm.StatusCheckTimer(Sender: TObject);
begin
  if Debug then
  begin
    CanLoadLed.Status := True;
    ButLaunch.Enabled := CanLoadLed.Status;
    Exit;
  end;
  if RemoteDB.IsConnected then
    DBServLed.Status := True
  else
    DBServLed.Status := False;
  if RemoteDB.DBIsOndisk then
    DBLocalLed.Status := True
  else
    DBLocalLed.Status := False;
  CanLoadLed.Status   := DBServLed.Status or DBLocalLed.Status;
  ButLaunch.Enabled   := CanLoadLed.Status;
end;

procedure TLoginForm.BitBtn1Click(Sender: TObject);
var
  ReceivedUserPass, ReceivedHost, ReceivedLogin, ReceivedPwd, ReceivedDB, ReceivedID, ReceivedURL, ReceivedGroupID, ReceivedFTPHost, ReceivedFTPUser,
    ReceivedFTPPwd, ReceivedFTPDir, ReceivedUserLevel, ReceivedUserType: string;

  ReceivedSmsAccount,ReceivedSmsLogin,ReceivedSmsPassword,ReceivedCLDLogin,ReceivedCLDCLDPass:string;

  UserDataReg: Tregistry;
  LoginReg: Tregistry;
  LoginSuccess: Boolean;
  IdHTTP1 : TIdHttp;
  json : TlkJSONcustomlist;
  SQLDataset: TSQLDataSet;
  test,str: string;
begin
  MessageLabel.Caption := '';
  LoginSuccess         := False;

  if Debug then
  begin
    DBUSER        := 'smartdebug';
    DBPWD         := 'villalaan';
    DBHOSTNAME    := 'localhost';
    DBNAME        := 'c_smartoys';
    WEBURL        := 'WWW.LOCAL.COM';
    CONNECTEDSHOP := 1;
    SHOPGROUPID   := 1;
    FTPHost       := 'localhost';
    FTPUser       := 'root';
    FTPPwd        := 'triadpass';
    FTPDir        := '/';
    DBOKTOLAUNCH  := True;
    ModalResult   := mrYES;
    Exit;
  end;

  if (DBServLed.Status = True) then
  begin
    ///
    /// Constantes Cod�es en Hard
    ///
    ///
    LoginReg         := Tregistry.Create;
    LoginReg.RootKey := HKEY_CURRENT_USER;
    LoginReg.OpenKey(LoginRegPath, True);

    DataEncoder.Reset;
    SQLConnectionLogin.Params.Values['User_Name'] := DataEncoder.DecryptString(USERDBLogin);

    DataEncoder.Reset;
    SQLConnectionLogin.Params.Values['Password'] := DataEncoder.DecryptString(USERDBPwd);

    DataEncoder.Reset;
    SQLConnectionLogin.Params.Values['HostName'] := DataEncoder.DecryptString(USERDBHost);
    // howmessage(SQLConnectionLogin.Params.Values['HostName']);
    DataEncoder.Reset;
    SQLConnectionLogin.Params.Values['Database'] := DataEncoder.DecryptString(USERDBName);
    // wMessage( SQLConnectionLogin.Params.Values['Password'])  ;
    SQLConnectionLogin.Params.Values['Encrypted']  := 'True';
    SQLConnectionLogin.Params.Values['Compressed'] := 'True';

    // Validate Offline mode
    SQLConnectionLogin.Open;
    SQLDataSetLogin.Params.ParamByName('param01').Value := EditLogin.Text;
    SQLDataSetLogin.Open;
    if SQLDataSetLogin.FieldByName('field3').Value <> Null then
    begin
      DataEncoder.Reset;
      ReceivedUserPass := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field3').AsString);
      if EditPwd.Text = ReceivedUserPass then
      begin
        DataEncoder.Reset;
        LoginReg.WriteString('PrinterMode', DataEncoder.EncryptString(IntToStr(Round(Now))));
      end;
    end;
    LoginReg.CloseKey;
    LoginReg.Free;

  end;

  if (DBLocalLed.Status = True) and (Round(Now) <= strtoint(Days) + 7) then
  begin
    /// /
    /// / Read Login Data In the Registry
    /// /
    UserDataReg         := Tregistry.Create;
    UserDataReg.RootKey := HKEY_CURRENT_USER;
    try
      if UserDataReg.OpenKey(UserDataRegPath, False) then
      begin
        if UserDataReg.ReadString('Userdata2') = EditLogin.Text then
        begin
          DataEncoder.Reset;
          if LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata3'))) = EditPwd.Text then
          begin
            DataEncoder.Reset;
            ReceivedHost := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata4')));
            DataEncoder.Reset;
            ReceivedLogin := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata5')));
            DataEncoder.Reset;
            ReceivedPwd := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata6')));
            DataEncoder.Reset;
            ReceivedDB := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata7')));
            DataEncoder.Reset;
            ReceivedID := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata8')));
            DataEncoder.Reset;
            ReceivedURL := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata9')));
            DataEncoder.Reset;
            ReceivedGroupID := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata10')));
            DataEncoder.Reset;
            ReceivedFTPHost := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata11')));
            DataEncoder.Reset;
            ReceivedFTPUser := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata12')));
            DataEncoder.Reset;
            ReceivedFTPPwd := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata13')));
            DataEncoder.Reset;
            ReceivedFTPDir := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata14')));
            DataEncoder.Reset;
            ReceivedUserLevel := Trim(UserDataReg.ReadString('Userdata15'));
            // 0 regular
            // 3 readonly
            // 2 poweruser
            ReceivedUserType := Trim(UserDataReg.ReadString('Userdata16'));

            ReceivedSmsAccount := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata17')));
            DataEncoder.Reset;
            ReceivedSmsLogin := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata18')));
            DataEncoder.Reset;
            ReceivedSmsPassword := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata19')));
            DataEncoder.Reset;
            ReceivedCLDLogin := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata20')));
            DataEncoder.Reset;
            ReceivedCLDCLDPass := LocalEncoder.DecryptString((UserDataReg.ReadString('Userdata21')));
            DataEncoder.Reset;
            LoginSuccess     := True;
          end else begin
            MessageLabel.Caption := 'Mauvaise combinaison login / m�t de passe';
          end;
        end else begin
          MessageLabel.Caption := 'Mauvaise combinaison login / m�t de passe';
        end;
      end else begin
        MessageLabel.Caption := 'Registre corrompu, veuillez r�-installer le programme';
      end;
    finally
      UserDataReg.CloseKey;
      UserDataReg.Free;
    end;
  end;

  if (DBServLed.Status = True) and ( (Round(Now) > strtoint(Days) + 7) or (DBLocalLed.Status = False) or (cxchckbxForceRefresh.Checked) ) then
  begin

    SQLConnectionLogin.Open;
    SQLDataSetLogin.Params.ParamByName('param01').Value := EditLogin.Text;
    SQLDataSetLogin.Open;
    if SQLDataSetLogin.FieldByName('field3').Value <> Null then
    begin
      DataEncoder.Reset;
      ReceivedUserPass := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field3').AsString);
      if EditPwd.Text = ReceivedUserPass then
      begin
        DataEncoder.Reset;
        ReceivedHost := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field4').AsString);
        DataEncoder.Reset;
        ReceivedLogin := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field5').AsString);
        DataEncoder.Reset;
        ReceivedPwd := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field6').AsString);
        DataEncoder.Reset;
        ReceivedDB := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field7').AsString);
        DataEncoder.Reset;
        ReceivedID := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field8').AsString);
        DataEncoder.Reset;
        ReceivedURL := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field9').AsString);
        DataEncoder.Reset;
        ReceivedGroupID := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field10').AsString);
        DataEncoder.Reset;
        ReceivedFTPHost := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field11').AsString);
        DataEncoder.Reset;
        ReceivedFTPUser := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field12').AsString);
        DataEncoder.Reset;
        ReceivedFTPPwd := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field13').AsString);
        DataEncoder.Reset;
        ReceivedFTPDir := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('field14').AsString);
        DataEncoder.Reset;
        ReceivedUserLevel := Trim((SQLDataSetLogin.FieldByName('field15').AsString));
        ReceivedUserType  := Trim((SQLDataSetLogin.FieldByName('field16').AsString));

        ReceivedSmsAccount := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('SmsAccount').AsString);
        DataEncoder.Reset;
        ReceivedSmsLogin := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('SmsLogin').AsString);
        DataEncoder.Reset;
        ReceivedSmsPassword := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('SmsPassword').AsString);
        DataEncoder.Reset;
        ReceivedCLDLogin := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('CLDLogin').AsString);
        DataEncoder.Reset;
        ReceivedCLDCLDPass := DataEncoder.DecryptString(SQLDataSetLogin.FieldByName('CLDPass').AsString);
        DataEncoder.Reset;

        LoginSuccess      := True;
        SQLDataSetLogin.Close;
        SQLConnectionLogin.Close;
        /// /
        /// / Save Retreived Data In the Registry
        /// /
        UserDataReg         := Tregistry.Create;
        UserDataReg.RootKey := HKEY_CURRENT_USER;
        try
          UserDataReg.OpenKey(UserDataRegPath, True);
          UserDataReg.WriteString('Userdata2', EditLogin.Text);
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata3', LocalEncoder.EncryptString((ReceivedUserPass)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata4', LocalEncoder.EncryptString((ReceivedHost)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata5', LocalEncoder.EncryptString((ReceivedLogin)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata6', LocalEncoder.EncryptString((ReceivedPwd)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata7', LocalEncoder.EncryptString((ReceivedDB)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata8', LocalEncoder.EncryptString((ReceivedID)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata9', LocalEncoder.EncryptString((ReceivedURL)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata10', LocalEncoder.EncryptString((ReceivedGroupID)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata11', LocalEncoder.EncryptString((ReceivedFTPHost)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata12', LocalEncoder.EncryptString((ReceivedFTPUser)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata13', LocalEncoder.EncryptString((ReceivedFTPPwd)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata14', LocalEncoder.EncryptString((ReceivedFTPDir)));
          DataEncoder.Reset;

          UserDataReg.WriteString('Userdata15', ReceivedUserLevel);
          UserDataReg.WriteString('Userdata16', ReceivedUserType);

          UserDataReg.WriteString('Userdata17', LocalEncoder.EncryptString((ReceivedSmsAccount)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata18', LocalEncoder.EncryptString((ReceivedSmsLogin)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata19', LocalEncoder.EncryptString((ReceivedSmsPassword)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata20', LocalEncoder.EncryptString((ReceivedCLDLogin)));
          DataEncoder.Reset;
          UserDataReg.WriteString('Userdata21', LocalEncoder.EncryptString((ReceivedCLDCLDPass)));
          DataEncoder.Reset;
        finally
          UserDataReg.CloseKey;
          UserDataReg.Free;
        end;
      end else begin
        MessageLabel.Caption := 'Mauvaise combinaison login / m�t de passe';
        SQLDataSetLogin.Close;
        SQLConnectionLogin.Close;
      end;
    end else begin
      MessageLabel.Caption := 'Mauvaise combinaison login / m�t de passe';
      SQLDataSetLogin.Close;
      SQLConnectionLogin.Close;
    end;
  end;

  if LoginSuccess then str:='1' else str:='0';


  IdHTTP1 :=  TIdHTTP.Create(self);
  IdHTTP1.AllowCookies:= True;
  SQLDataset               := TSQLDataSet.Create(nil);
  try
  try
  json := TlkJSON.ParseText(IdHTTP1.Get('http://ipinfo.io/json')) as TlkJSONobject;
  SQLDataset.SQLConnection := SQLConnectionLogin;
  SQLConnectionLogin.Open;
  SQLDataset.CommandText := 'INSERT INTO `logins`(`clientdate`,`user`, `success`, `ip`, `hostname`, `city`, `region`, `country`, `loc`, `org`, `postal`, `company`, `computer`, `windowsid`)';
  SQLDataset.CommandText := SQLDataset.CommandText + ' VALUES ('+QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss',now))+','+QuotedStr(EditLogin.Text)+','+str+','+QuotedStr(json.Field['ip'].Value)+','+QuotedStr(json.Field['hostname'].Value)+','+QuotedStr(json.Field['city'].Value)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(json.Field['region'].Value)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(json.Field['country'].Value)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(json.Field['loc'].Value)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr('')+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr('')+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(EditCompany.Text)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(EditComputer.Text)+',';
  SQLDataset.CommandText := SQLDataset.CommandText + QuotedStr(EditWindowsID.Text)+')';
  SQLDataset.ExecSQL(False);
  except
  end
  finally
     IdHTTP1.Free;
     SQLDataset.Close;
     SQLConnectionLogin.Close;
     SQLDataset.Free;
  end;

  if LoginSuccess then
  begin
    SaveREgistry;
    DBUSER              := ReceivedLogin;
    DBPWD               := ReceivedPwd;
    DBHOSTNAME          := ReceivedHost;
    DBNAME              := ReceivedDB;
    WEBURL              := ReceivedURL;
    CONNECTEDSHOP       := strtoint(ReceivedID);
    UserLevel           := strtoint(ReceivedUserLevel);
    UserType            := strtoint(ReceivedUserType);
    SHOPGROUPID         := strtoint(ReceivedGroupID);
    FTPConnection.Host  := ReceivedFTPHost;
    FTPConnection.Dir   := ReceivedFTPDir;
    FTPConnection.Login := ReceivedFTPUser;
    FTPConnection.Pass  := ReceivedFTPPwd;
    FTPHost             := ReceivedFTPHost;
    FTPUser             := ReceivedFTPUser;
    FTPPwd              := ReceivedFTPPwd;
    FTPDir              := ReceivedFTPDir;
    SmsAccountOVH       := ReceivedSmsAccount;
    SmsLoginOVH         := ReceivedSmsLogin;
    SmsPasswordOVH      := ReceivedSmsPassword;
    CLDLogin            := ReceivedCLDLogin;
    CLDPass             := ReceivedCLDCLDPass;
    DBOKTOLAUNCH        := True;
    ModalResult         := mrYES;
  end else begin
    ShowMessage('Impossible lancer Gomedia, veuillez v�rifier votre connection internet ou contacter Smartoys SA afin de v�rifier votre compte');
  end;
end;

procedure TLoginForm.btnEditClick(Sender: TObject);
begin
 EditLogin.Properties.ReadOnly:=False;
 EditPwd.Properties.ReadOnly:=False;
 CheckEditSaveToReg.Properties.ReadOnly:=False;
 cxchckbxForceRefresh.Properties.ReadOnly := False;
end;

procedure TLoginForm.ButtonQuitClick(Sender: TObject);
begin
  SaveREgistry;
  ModalResult := mrNO;
end;

procedure TLoginForm.SaveREgistry;
var
  LoginReg: Tregistry;

begin
  LoginReg         := Tregistry.Create;
  LoginReg.RootKey := HKEY_CURRENT_USER;

  try
    if CheckEditSaveToReg.Checked then
    begin
      LoginReg.OpenKey(LoginRegPath, True);
      DataEncoder.Reset;
      LoginReg.WriteString('login', DataEncoder.EncryptString(EditLogin.Text));
      DataEncoder.Reset;
      LoginReg.WriteString('pass', DataEncoder.EncryptString(EditPwd.Text));
      LoginReg.WriteBool('saved', CheckEditSaveToReg.Checked);
    end else begin
      LoginReg.OpenKey(LoginRegPath, True);
      LoginReg.WriteString('login', '');
      LoginReg.WriteString('pass', '');
      LoginReg.WriteBool('saved', False);
    end
  finally
    LoginReg.CloseKey;
    LoginReg.Free;
  end;
end;

procedure TLoginForm.SpeedButton1Click(Sender: TObject);
var
  aCatalogSoap: CatalogSoap;
  Data: ShowProductByCLDIDResult;
  test: string;
  loggedin: Boolean;
  din, dout: AnsiString;
  IV: array [0 .. 15] of byte;
  StringToEncrypt, StringToDecrypt, DecryptedString, EncryptedString: AnsiString;
  XMLDoc: TXMLDocument;
  aHTTPRIO: THTTPRIO;
begin
  // DBDebugExecute(Self);
  aHTTPRIO     := THTTPRIO.Create(self);
  aCatalogSoap := GetCatalogSoap(False, 'http://service.cld.be/catalog.asmx', aHTTPRIO);
  loggedin     := aCatalogSoap.Identify('SMARTOYS', 'bebechifon');
  test         := aCatalogSoap.HelloWorld;

  din := 'ikwzb5UMqVAsxdlFD1dsKw==';

  // DCP_blowfish1.DecryptECB(din,dout);

  EncryptedString := EncryptStringDES('this is a motherfucking super test');
  DecryptedString := DecryptStringDES(EncryptedString);
  ShowMessage(DecryptedString);

end;

function TLoginForm.EncryptStringDES(Source: string): string;
var
  des: TDCP_des;
  src, enc, b64: TBytes;
  index, slen, bsize, padsize: integer;
begin
  des := TDCP_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), TDCP_sha1);

    src  := TEncoding.UTF8.GetBytes(Source);
    slen := Length(src);
    // Add padding
    bsize   := des.BlockSize div 8;
    padsize := bsize - (slen mod bsize);
    Inc(slen, padsize);
    SetLength(src, slen);
    for index := padsize downto 1 do
    begin
      src[slen - index] := padsize;
    end;

    SetLength(enc, slen);
    des.EncryptCBC(src[0], enc[0], slen);
    result := EncdDecd.EncodeBase64(@enc[0], Length(enc));
  finally
    des.Free;
  end;
end;

function TLoginForm.DecryptStringDES(ASource: string): string;
var
  des: TDCP_des;
  key, src, dec, b64: TBytes;
  pad, slen: integer;
begin
  des := TDCP_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), TDCP_sha1);

    src  := EncdDecd.DecodeBase64(AnsiString(ASource));
    slen := Length(src);
    SetLength(dec, slen);
    des.DecryptCBC(src[0], dec[0], slen);

    // Remove padding
    pad := dec[slen - 1];
    SetLength(dec, slen - pad);

    result := TEncoding.UTF8.GetString(dec);
  finally
    des.Free;
  end;
end;

procedure TLoginForm.Decrypt(const aKey: AnsiString; aPVector: Pointer; const aInData: AnsiString; var aOutData: AnsiString);
var
  Cipher: TDCP_rijndael;
begin
  Cipher := TDCP_rijndael.Create(nil);
  try
    Cipher.Init(aKey, Length(aKey) * 8, aPVector);
    Cipher.CipherMode := cmCBC;
    aOutData          := Cipher.DecryptString(aInData);
  finally
    Cipher.Burn;
    Cipher.Free;
  end;
end;

function TLoginForm.Base64EncodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: integer;
begin
  ilen := Length(Input);
  SetLength(result, (ilen div 3) * 4);
  rlen := Base64Encode(@Input[0], @result[0], ilen);
  SetLength(result, rlen);
end;

function TLoginForm.Base64DecodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: integer;
begin
  ilen := Length(Input);
  SetLength(result, (ilen div 4) * 3);
  rlen := Base64Decode(@Input[0], @result[0], ilen);
  // Adjust the length of the output buffer according to the number of valid
  // b64 characters
  SetLength(result, rlen);
end;

function TLoginForm.DecryptData(Data: string; aKey: AnsiString; AIv: AnsiString): string;
var
  key, IV, src, dest: TBytes;
  Cipher: TDCP_rijndael;
  slen, pad: integer;
begin
  // key := Base64DecodeBytes(TEncoding.UTF8.GetBytes(AKey));
  // iv := Base64DecodeBytes(TEncoding.UTF8.GetBytes(AIv));
  key := TEncoding.ASCII.GetBytes(aKey);
  IV  := TEncoding.ASCII.GetBytes(AIv);

  src := Base64DecodeBytes(TEncoding.UTF8.GetBytes(Data));

  Cipher := TDCP_rijndael.Create(nil);
  try
    Cipher.CipherMode := cmCBC;
    slen              := Length(src);
    SetLength(dest, slen);
    Cipher.Init(key[0], 256, @IV[0]); // DCP uses key size in BITS not BYTES
    Cipher.Decrypt(src[0], dest[0], slen);
    // Remove the padding. Get the numerical value of the last byte and remove
    // that number of bytes
    pad := dest[slen - 1];
    SetLength(dest, slen - pad);

    // Base64 encode it
    result := TEncoding.Default.GetString(dest);
  finally
    Cipher.Free;
  end;
end;

function TLoginForm.EncryptData(Data: string; aKey: AnsiString; AIv: AnsiString): string;
var
  Cipher: TDCP_rijndael;
  key, IV, src, dest, b64: TBytes;
  index, slen, bsize, pad: integer;
begin
  // key := Base64DecodeBytes(TEncoding.UTF8.GetBytes(AKey));
  // iv := Base64DecodeBytes(TEncoding.UTF8.GetBytes(AIv));
  key := TEncoding.ASCII.GetBytes(aKey);
  IV  := TEncoding.ASCII.GetBytes(AIv);

  src := TEncoding.UTF8.GetBytes(Data);

  Cipher := TDCP_rijndael.Create(nil);
  try
    Cipher.CipherMode := cmCBC;
    // Add padding.
    // Resize the Value array to make it a multiple of the block length.
    // If it's already an exact multiple then add a full block of padding.
    slen  := Length(src);
    bsize := (Cipher.BlockSize div 8);
    pad   := bsize - (slen mod bsize);
    Inc(slen, pad);
    SetLength(src, slen);
    for index := pad downto 1 do
    begin
      src[slen - index] := pad;
    end;

    SetLength(dest, slen);
    Cipher.Init(key[0], 256, @IV[0]); // DCP uses key size in BITS not BYTES
    Cipher.Encrypt(src[0], dest[0], slen);

    b64    := Base64EncodeBytes(dest);
    result := TEncoding.Default.GetString(b64);
  finally
    Cipher.Free;
  end;
end;

end.
