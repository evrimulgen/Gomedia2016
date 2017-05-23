unit GlobalsUnit;

interface

uses SysUtils, DBXJSON, DBXJSONReflect;

type

  TFTPConnection = record
    Host: string;
    Dir: string;
    Login: string;
    Pass: string;
  end;

  E_Outloop = class(Exception)
  end;

var
  IsConnected: Boolean;
  POSBANK: Boolean;
  UserLevel, UserType: integer;
  StatusWeb: integer;
  StatusDBServ: integer;
  DBOKTOLAUNCH: Boolean;
  LOGINOKTOLAUNCH: Boolean;
  DBHOSTNAME, DBUSER, DBPWD, DBNAME, WEBURL, FTPHOST, FTPUSER, FTPPWD,
    FTPDIR: string;
  SmsAccountOVH, SmsLoginOVH, SmsPasswordOVH, SmsSenderOVH: string;
  CLDLogin, CLDPass: string;
  ConnectedShop: integer;
  ShopGroupID: integer;
  FTPConnection: TFTPConnection;

const

  {
    NOTIFYURL    = 'http://www.storegames.com/catalog/notify_mailer.php';
    ProductByEanURL =  'http://www.storegames.com/catalog/product_info.php?products_id=';
    ProductImageURL = 'http://www.storegames.com/catalog/images/';
    ParamRegPath = 'software\gopos\gomedia\params';
    CompanyName = 'STOREGAMES';
    DepositWarning = 'LES DEPOTS SONT VALABLES UN AN. ILS NE SONT PAS DEDUCTIBLES SUR LES CARTES PSN, CoNSOLES ET JEUX D''OCCASIONS.';
    DepositComment = 'Attention !' + chr(10) + chr(13) +
    'LES REPARATIONS SONT CONSERVEES 6 MOIS A DATE DE LA DATE DE REMISE EN MAGASIN.';

    MailDestination = 'mail.smartoys.be:465';
    MailHost            = 'mail.smartoys.be';
    MailPort            = 465;
    MailUsername        = 'Gomedia';
    MailPassword        = 'sAQach6b';
    TransferExtraDest = 'storegames@hotmail.com';
    PauseNotification  = 'storegames@hotmail.com';
    LoyaltyThreshold = 500;
    LoyaltyReward = 0;
    MarginDepositVoucher = 100;
    MarginDepositRefund = 75;
    MarginNew = 30;
  }

  NOTIFYURL = 'http://www.smartoys.be/catalog/notify_mailer.php';
  ProductByEanURL =
    'http://www.smartoys.be/catalog/product_info.php?products_id=';
  ProductImageURL = 'http://www.smartoys.be/catalog/images/';
  ParamRegPath = 'software\gopos\gomedia\params';
  CompanyName = 'SMARTOYS';
  DepositWarning =
    ' Smartoys se r�serve le droit de se d�barasser sans d�domagement des articles d�pos�s en r�paration depuis plus de 6 mois, le client est responsable de la r�cup�ration de ses produits avant cette �ch�ance.';
  DepositComment = 'Attention !' + chr(10) + chr(13) +
    ' En cas de baisse de prix officielle du produit Smartoys se r�serve le droit de modifier le prix de vente des vos articles pour les placer � 80% du nouveau prix du neuf. '
    + chr(10) + chr(13) +
    ' Smartoys se r�serve le droit de pr�lever 5� sur le produit de la vente pour remettre en �tat les disques ray�s.'
    + chr(10) + chr(13) +
    ' Smartoys se r�serve le droit de se d�barasser des invendus d�pos�s depuis plus de 12 mois, le client est responsable du suivi de son d�p�t et de la r�cup�ration de ses invendus avant cette �ch�ance.';

  MailDestination = 'mail.smartoys.be:465';
  MailHost = 'mail.smartoys.be';
  MailPort = 465;
  MailUsername = 'Gomedia';
  MailPassword = 'sAQach6b';
  TransferExtraDest = 'merchandiser@smartoys.be';
  PauseNotification = 'fred@smartoys.be;marketing@smartoys.be';
  LoyaltyThreshold = 500;
  LoyaltyReward = 5;
  MarginDepositVoucher = 90;
  MarginDepositRefund = 70;
  MarginNew = 30;
  GeoZoneTaxId = 18;
  Version = '2017-05-22';
  CheckStock = True;

implementation

end.
