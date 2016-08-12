unit SMS_COMAPILib_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 7/6/2004 3:15:11 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\System32\SMS_COMAPI.dll (1)
// LIBID: {B8AD23B5-6449-4797-A90A-A8698D226600}
// LCID: 0
// Helpfile:
// HelpString: SMS_COMAPI 1.0 Type Library
// DepndLst:
// (1) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
// Errors:
// Hint: Parameter 'To' of ISMS.SendMsg changed to 'To_'
// Hint: Parameter 'To' of ISMS.SendSimpleSMS changed to 'To_'
// Hint: Parameter 'To' of ISMS.SendBatchItem changed to 'To_'
// Hint: Parameter 'To' of ISMS.QuickBatchSend changed to 'To_'
// Hint: Parameter 'To' of ISMS.Activate changed to 'To_'
// Hint: Parameter 'To' of ISMS.QueryCoverage changed to 'To_'
// Error creating palette bitmap of (TSMS) : Server C:\WINDOWS\System32\SMS_COMAPI.dll contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties
// which return objects that may need to be explicitly created via a function
// call prior to any access via the property. These items have been disabled
// in order to prevent accidental use from within the object inspector. You
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively
// removing them from the $IFDEF blocks. However, such items must still be
// programmatically created via a method of the appropriate CoClass before
// they can be used.
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}

interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
// Type Libraries     : LIBID_xxxx
// CoClasses          : CLASS_xxxx
// DISPInterfaces     : DIID_xxxx
// Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SMS_COMAPILibMajorVersion = 1;
  SMS_COMAPILibMinorVersion = 0;

  LIBID_SMS_COMAPILib: TGUID = '{B8AD23B5-6449-4797-A90A-A8698D226600}';

  DIID__ISMSEvents: TGUID = '{941A0129-BF4B-469B-8667-30BC0C34D5C5}';
  IID_ISMS: TGUID         = '{EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}';
  CLASS_SMS: TGUID        = '{231CD7E4-908C-45C0-B357-34FE860BED1D}';

  // *********************************************************************//
  // Declaration of Enumerations defined in Type Library
  // *********************************************************************//
  // Constants for enum eSMSErrors
type
  eSMSErrors = TOleEnum;

const
  SMS_ERR_NONE                      = $00000000;
  SMS_ERR_AUTH_FAILED               = $00000001;
  SMS_ERR_INV_USER_PASSWD           = $00000002;
  SMS_ERR_SESSION_EXP               = $00000003;
  SMS_ERR_ACC_FROZEN                = $00000004;
  SMS_ERR_MISS_SESSION_ID           = $00000005;
  SMS_ERR_BASE_URL_INV_URL          = $00000061;
  SMS_ERR_BASE_URL_INV_HASH_KEY     = $00000062;
  SMS_ERR_COMMUNICATION             = $00000063;
  SMS_ERR_INV_PARAMETER             = $00000065;
  SMS_ERR_INV_UDH                   = $00000066;
  SMS_ERR_UNKNOWN_APIMSGID          = $00000067;
  SMS_ERR_UNKNOWN_CLIMSGID          = $00000068;
  SMS_ERR_INV_DEST_ADDR             = $00000069;
  SMS_ERR_INV_SRC_ADDR              = $0000006A;
  SMS_ERR_EMPTY_MESSAGE             = $0000006B;
  SMS_ERR_INV_APIID                 = $0000006C;
  SMS_ERR_MISS_MSG_ID               = $0000006D;
  SMS_ERR_EMAIL_MSG                 = $0000006E;
  SMS_ERR_INVALID_PROTOCOL          = $0000006F;
  SMS_ERR_INVALID_MSG_TYPE          = $00000070;
  SMS_ERR_MAX_PARTS_EXCEEDED        = $00000071;
  SMS_ERR_CANNOT_ROUTE_MSG          = $00000072;
  SMS_ERR_MSG_EXPIRED               = $00000073;
  SMS_ERR_THROTTLE_LIMIT_EXCEEDED   = $00000075;
  SMS_ERR_INV_BATCH_ID              = $000000C9;
  SMS_ERR_NO_BATCH_TEMPLATE         = $000000CA;
  SMS_ERR_NO_CREDIT_LEFT            = $0000012D;
  SMS_ERR_MAX_ALLOWED_CREDIT        = $0000012E;
  SMS_ERR_INVALID_TOKEN             = $0000025E;
  SMS_ERR_EXPIRED_TOKEN             = $0000025F;
  SMS_ERR_ACCOUNT_ALREADY_ACTIVATED = $00000262;
  SMS_ERR_ACTIVATION_FAILED         = $00000263;
  SMS_ERR_INVALID_PARAMETERS        = $000002BC;
  SMS_ERR_DUPLICATE_USERNAME        = $000002BD;

  // Constants for enum eSMSMsgStatus
type
  eSMSMsgStatus = TOleEnum;

const
  SMS_MSG_UNKNOWN            = $00000001;
  SMS_MSG_QUEUED             = $00000002;
  SMS_MSG_DELIVERED          = $00000003;
  SMS_MSG_RECEIVED           = $00000004;
  SMS_MSG_ERR_WITH_MSG       = $00000005;
  SMS_MSG_CANCELLED          = $00000006;
  SMS_MSG_ERR_DELIVERING_MSG = $00000007;
  SMS_MSG_OK                 = $00000008;
  SMS_MSG_ROUTING_ERROR      = $00000009;
  SMS_MSG_EXPIRED            = $0000000A;
  SMS_MSG_QUEUED_LATER_DELIV = $0000000B;

  // Constants for enum eSMSMsgType
type
  eSMSMsgType = TOleEnum;

const
  SMS_TYPE_TEXT             = $00000000;
  SMS_TYPE_FLASH            = $00000001;
  SMS_TYPE_NOKIA_OLOGO      = $00000003;
  SMS_TYPE_NOKIA_GLOGO      = $00000004;
  SMS_TYPE_NOKIA_PICMSG     = $00000005;
  SMS_TYPE_NOKIA_RINGTONE   = $00000006;
  SMS_TYPE_NOKIA_CLEAN_LOGO = $00000007;
  SMS_TYPE_NOKIA_VCARD      = $00000008;
  SMS_TYPE_NOKIA_EVENT_CAL  = $00000009;
  SMS_TYPE_NOKIA_RTTL       = $0000000A;

  // Constants for enum eSMSConcatType
type
  eSMSConcatType = TOleEnum;

const
  SMS_CONCAT_NONE  = $00000000;
  SMS_CONCAT_1_MSG = $00000001;
  SMS_CONCAT_2_MSG = $00000002;
  SMS_CONCAT_3_MSG = $00000003;

  // Constants for enum eSMSCallbackType
type
  eSMSCallbackType = TOleEnum;

const
  SMS_CALLBACK_NONE  = $00000000;
  SMS_CALLBACK_SMSC  = $00000001;
  SMS_CALLBACK_DELIV = $00000002;
  SMS_CALLBACK_BOTH  = $00000003;

  // Constants for enum eSMSCommunicationType
type
  eSMSCommunicationType = TOleEnum;

const
  SMS_COMMS_HTTP = $00000000;
  SMS_COMMS_SSL  = $00000001;

  // Constants for enum eSMSAPIorCLI_ID
type
  eSMSAPIorCLI_ID = TOleEnum;

const
  SMS_API_ID = $00000001;
  SMS_CLI_ID = $00000002;

  // Constants for enum eSMSInetConnection
type
  eSMSInetConnection = TOleEnum;

const
  SMS_INET_DIRECT           = $00000001;
  SMS_INET_PRECONFIG        = $00000002;
  SMS_INET_PRECONFIG_NO_RUN = $00000003;
  SMS_INET_PROXY            = $00000004;

  // Constants for enum eSMSSendQueue
type
  eSMSSendQueue = TOleEnum;

const
  SMS_QUEUE_1ST     = $00000001;
  SMS_QUEUE_2ND     = $00000002;
  SMS_QUEUE_3RD     = $00000003;
  SMS_QUEUE_DEFAULT = $00000003;

  // Constants for enum eSMSEscalate
type
  eSMSEscalate = TOleEnum;

const
  SMS_ESCALATE_OFF           = $00000000;
  SMS_ESCALATE_WITHIN_60SECS = $00000001;
  SMS_ESCALATE_WITHIN_30SECS = $00000002;

  // Constants for enum eSMSReqFeatures
type
  eSMSReqFeatures = TOleEnum;

const
  SMS_REQ_FEAT_TEXT     = $00000001;
  SMS_REQ_FEAT_8BIT     = $00000002;
  SMS_REQ_FEAT_UDH      = $00000004;
  SMS_REQ_FEAT_UCS2     = $00000008;
  SMS_REQ_FEAT_ALPHA    = $00000010;
  SMS_REQ_FEAT_NUMER    = $00000020;
  SMS_REQ_FEAT_FLASH    = $00000200;
  SMS_REQ_FEAT_DELIVACK = $00002000;
  SMS_REQ_FEAT_CONCAT   = $00004000;
  SMS_REQ_FEAT_DEFAULT  = $00000003;

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  _ISMSEvents = dispinterface;
  ISMS        = interface;
  ISMSDisp    = dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  SMS = ISMS;

  // *********************************************************************//
  // DispIntf:  _ISMSEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {941A0129-BF4B-469B-8667-30BC0C34D5C5}
  // *********************************************************************//
  _ISMSEvents = dispinterface
    ['{941A0129-BF4B-469B-8667-30BC0C34D5C5}']
  end;

  // *********************************************************************//
  // Interface: ISMS
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}
  // *********************************************************************//
  ISMS = interface(IDispatch)
    ['{EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}']
    function Authenticate(const API_ID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString; safecall;
    function SendMsg(bUseSessionID: WordBool; const Msg: WideString; const To_: WideString): WideString; safecall;
    function SendSimpleSMS(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const MsgText: WideString)
      : WideString; safecall;
    function QueryMsgAPIID(const lApiMsgID: WideString): WideString; safecall;
    function QueryMsgCLIID(const CliMsgID: WideString): WideString; safecall;
    function QueryMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString; safecall;
    function StopMsgAPIID(const ApiMsgID: WideString): WideString; safecall;
    function StopMsgCLIID(const CliMsgID: WideString): WideString; safecall;
    function StopMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString; safecall;
    function StartBatch(const Template: WideString): WideString; safecall;
    function SendBatchItem(const To_: WideString; const Field1: WideString; const Field2: WideString; const Field3: WideString; const Field4: WideString;
      const Field5: WideString; const Field6: WideString; const Field7: WideString; const Field8: WideString; const Field9: WideString): WideString; safecall;
    function QuickBatchSend(const To_: WideString): WideString; safecall;
    function EndBatch: WideString; safecall;
    function Ping: WideString; safecall;
    function QueryBalance: WideString; safecall;
    procedure ResetSMS; safecall;
    function EncodeToUnicode(const StringToConvert: WideString): WideString; safecall;
    function TokenPay(const Token: WideString): WideString; safecall;
    function AuthenticateClient(const ClientID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString; safecall;
    function ChangePassword(const Password: WideString): WideString; safecall;
    function RecoverPassword(const Username: WideString; const Email: WideString): WideString; safecall;
    function ConfigureProxy(eInetType: eSMSInetConnection; const Proxy: WideString; const Port: WideString): WideString; safecall;
    function client_reg(const ClientID: WideString; const Username: WideString; const Password: WideString; const Firstname: WideString;
      const Surname: WideString; const Email: WideString; const Prefix: WideString; const Mobile: WideString; GetStats: WordBool; Encoded: WordBool)
      : WideString; safecall;
    function mpro_reg(const Firstname: WideString; const Surname: WideString; const Username: WideString; const Password: WideString; const Company: WideString;
      const Email: WideString; const CellPhone: WideString; const Telephone: WideString; const Title: WideString; GetNews: WordBool; GetStats: WordBool;
      const CountryID: WideString; const CurrencyID: WideString; const Prefix: WideString; Encoded: WordBool): WideString; safecall;
    function SetConnectTimeout(Timeout: Integer): Integer; safecall;
    function SetReceiveTimeout(Timeout: Integer): Integer; safecall;
    function how_dat(const Serial: WideString; const API_ID: WideString; const User: WideString; const Password: WideString; Encoded: WordBool)
      : WideString; safecall;
    function Activate(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const ActCode: WideString)
      : WideString; safecall;
    function QueryCoverage(const To_: WideString): WideString; safecall;
    function SetBaseURL(bResetOnly: WordBool; const NewURL: WideString; HashKey: Integer): WideString; safecall;
    function Get_smsAPI_ID: WideString; safecall;
    procedure Set_smsAPI_ID(const pVal: WideString); safecall;
    function Get_smsUSER: WideString; safecall;
    procedure Set_smsUSER(const pVal: WideString); safecall;
    function Get_smsPASSWORD: WideString; safecall;
    procedure Set_smsPASSWORD(const pVal: WideString); safecall;
    function Get_smsIsLoggedIn: WordBool; safecall;
    function Get_smsSESSION_ID: WideString; safecall;
    function Get_smsERROR: eSMSErrors; safecall;
    function Get_smsFROM: WideString; safecall;
    procedure Set_smsFROM(const pVal: WideString); safecall;
    function Get_smsTO: WideString; safecall;
    procedure Set_smsTO(const pVal: WideString); safecall;
    function Get_smsVAL_PERIOD: Integer; safecall;
    procedure Set_smsVAL_PERIOD(pVal: Integer); safecall;
    function Get_smsDELIVERY_ACK: WordBool; safecall;
    procedure Set_smsDELIVERY_ACK(pVal: WordBool); safecall;
    function Get_smsDELIVERY_TIME: Integer; safecall;
    procedure Set_smsDELIVERY_TIME(pVal: Integer); safecall;
    function Get_smsCONCAT: eSMSConcatType; safecall;
    procedure Set_smsCONCAT(pVal: eSMSConcatType); safecall;
    function Get_smsCLI_MSG_ID: WideString; safecall;
    procedure Set_smsCLI_MSG_ID(const pVal: WideString); safecall;
    function Get_smsCALLBACK: eSMSCallbackType; safecall;
    procedure Set_smsCALLBACK(pVal: eSMSCallbackType); safecall;
    function Get_smsMSG_TYPE: eSMSMsgType; safecall;
    procedure Set_smsMSG_TYPE(pVal: eSMSMsgType); safecall;
    function Get_smsUDH: WideString; safecall;
    procedure Set_smsUDH(const pVal: WideString); safecall;
    function Get_smsTEXT: WideString; safecall;
    procedure Set_smsTEXT(const pVal: WideString); safecall;
    function Get_smsBATCH_ID: WideString; safecall;
    function Get_smsERROR_DESC: WideString; safecall;
    function Get_ThrowError: WordBool; safecall;
    procedure Set_ThrowError(pVal: WordBool); safecall;
    function Get_smsCommunicationType: eSMSCommunicationType; safecall;
    procedure Set_smsCommunicationType(pVal: eSMSCommunicationType); safecall;
    function Get_smsUNICODE: WordBool; safecall;
    procedure Set_smsUNICODE(pVal: WordBool); safecall;
    function Get_CanSendViaSSL: WordBool; safecall;
    function Get_smsMO: WordBool; safecall;
    procedure Set_smsMO(pVal: WordBool); safecall;
    function Get_smsMAX_CREDITS: Integer; safecall;
    procedure Set_smsMAX_CREDITS(pVal: Integer); safecall;
    function Get_smsQUEUE: eSMSSendQueue; safecall;
    procedure Set_smsQUEUE(pVal: eSMSSendQueue); safecall;
    function Get_smsESCALATE: eSMSEscalate; safecall;
    procedure Set_smsESCALATE(pVal: eSMSEscalate); safecall;
    function Get_smsREQUIRED_FEATURES: Integer; safecall;
    procedure Set_smsREQUIRED_FEATURES(pVal: Integer); safecall;
    property smsAPI_ID: WideString read Get_smsAPI_ID write Set_smsAPI_ID;
    property smsUSER: WideString read Get_smsUSER write Set_smsUSER;
    property smsPASSWORD: WideString read Get_smsPASSWORD write Set_smsPASSWORD;
    property smsIsLoggedIn: WordBool read Get_smsIsLoggedIn;
    property smsSESSION_ID: WideString read Get_smsSESSION_ID;
    property smsERROR: eSMSErrors read Get_smsERROR;
    property smsFROM: WideString read Get_smsFROM write Set_smsFROM;
    property smsTO: WideString read Get_smsTO write Set_smsTO;
    property smsVAL_PERIOD: Integer read Get_smsVAL_PERIOD write Set_smsVAL_PERIOD;
    property smsDELIVERY_ACK: WordBool read Get_smsDELIVERY_ACK write Set_smsDELIVERY_ACK;
    property smsDELIVERY_TIME: Integer read Get_smsDELIVERY_TIME write Set_smsDELIVERY_TIME;
    property smsCONCAT: eSMSConcatType read Get_smsCONCAT write Set_smsCONCAT;
    property smsCLI_MSG_ID: WideString read Get_smsCLI_MSG_ID write Set_smsCLI_MSG_ID;
    property smsCALLBACK: eSMSCallbackType read Get_smsCALLBACK write Set_smsCALLBACK;
    property smsMSG_TYPE: eSMSMsgType read Get_smsMSG_TYPE write Set_smsMSG_TYPE;
    property smsUDH: WideString read Get_smsUDH write Set_smsUDH;
    property smsTEXT: WideString read Get_smsTEXT write Set_smsTEXT;
    property smsBATCH_ID: WideString read Get_smsBATCH_ID;
    property smsERROR_DESC: WideString read Get_smsERROR_DESC;
    property ThrowError: WordBool read Get_ThrowError write Set_ThrowError;
    property smsCommunicationType: eSMSCommunicationType read Get_smsCommunicationType write Set_smsCommunicationType;
    property smsUNICODE: WordBool read Get_smsUNICODE write Set_smsUNICODE;
    property CanSendViaSSL: WordBool read Get_CanSendViaSSL;
    property smsMO: WordBool read Get_smsMO write Set_smsMO;
    property smsMAX_CREDITS: Integer read Get_smsMAX_CREDITS write Set_smsMAX_CREDITS;
    property smsQUEUE: eSMSSendQueue read Get_smsQUEUE write Set_smsQUEUE;
    property smsESCALATE: eSMSEscalate read Get_smsESCALATE write Set_smsESCALATE;
    property smsREQUIRED_FEATURES: Integer read Get_smsREQUIRED_FEATURES write Set_smsREQUIRED_FEATURES;
  end;

  // *********************************************************************//
  // DispIntf:  ISMSDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}
  // *********************************************************************//
  ISMSDisp = dispinterface
    ['{EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}']
    function Authenticate(const API_ID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString; dispid 1;
    function SendMsg(bUseSessionID: WordBool; const Msg: WideString; const To_: WideString): WideString; dispid 36;
    function SendSimpleSMS(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const MsgText: WideString)
      : WideString; dispid 39;
    function QueryMsgAPIID(const lApiMsgID: WideString): WideString; dispid 22;
    function QueryMsgCLIID(const CliMsgID: WideString): WideString; dispid 23;
    function QueryMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString; dispid 24;
    function StopMsgAPIID(const ApiMsgID: WideString): WideString; dispid 25;
    function StopMsgCLIID(const CliMsgID: WideString): WideString; dispid 26;
    function StopMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString; dispid 27;
    function StartBatch(const Template: WideString): WideString; dispid 28;
    function SendBatchItem(const To_: WideString; const Field1: WideString; const Field2: WideString; const Field3: WideString; const Field4: WideString;
      const Field5: WideString; const Field6: WideString; const Field7: WideString; const Field8: WideString; const Field9: WideString): WideString; dispid 32;
    function QuickBatchSend(const To_: WideString): WideString; dispid 33;
    function EndBatch: WideString; dispid 29;
    function Ping: WideString; dispid 34;
    function QueryBalance: WideString; dispid 35;
    procedure ResetSMS; dispid 37;
    function EncodeToUnicode(const StringToConvert: WideString): WideString; dispid 42;
    function TokenPay(const Token: WideString): WideString; dispid 44;
    function AuthenticateClient(const ClientID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString; dispid 45;
    function ChangePassword(const Password: WideString): WideString; dispid 48;
    function RecoverPassword(const Username: WideString; const Email: WideString): WideString; dispid 49;
    function ConfigureProxy(eInetType: eSMSInetConnection; const Proxy: WideString; const Port: WideString): WideString; dispid 50;
    function client_reg(const ClientID: WideString; const Username: WideString; const Password: WideString; const Firstname: WideString;
      const Surname: WideString; const Email: WideString; const Prefix: WideString; const Mobile: WideString; GetStats: WordBool; Encoded: WordBool)
      : WideString; dispid 51;
    function mpro_reg(const Firstname: WideString; const Surname: WideString; const Username: WideString; const Password: WideString; const Company: WideString;
      const Email: WideString; const CellPhone: WideString; const Telephone: WideString; const Title: WideString; GetNews: WordBool; GetStats: WordBool;
      const CountryID: WideString; const CurrencyID: WideString; const Prefix: WideString; Encoded: WordBool): WideString; dispid 52;
    function SetConnectTimeout(Timeout: Integer): Integer; dispid 53;
    function SetReceiveTimeout(Timeout: Integer): Integer; dispid 54;
    function how_dat(const Serial: WideString; const API_ID: WideString; const User: WideString; const Password: WideString; Encoded: WordBool): WideString;
      dispid 47;
    function Activate(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const ActCode: WideString)
      : WideString; dispid 56;
    function QueryCoverage(const To_: WideString): WideString; dispid 62;
    function SetBaseURL(bResetOnly: WordBool; const NewURL: WideString; HashKey: Integer): WideString; dispid 63;
    property smsAPI_ID: WideString dispid 2;
    property smsUSER: WideString dispid 3;
    property smsPASSWORD: WideString dispid 4;
    property smsIsLoggedIn: WordBool readonly dispid 5;
    property smsSESSION_ID: WideString readonly dispid 6;
    property smsERROR: eSMSErrors readonly dispid 7;
    property smsFROM: WideString dispid 9;
    property smsTO: WideString dispid 10;
    property smsVAL_PERIOD: Integer dispid 12;
    property smsDELIVERY_ACK: WordBool dispid 13;
    property smsDELIVERY_TIME: Integer dispid 14;
    property smsCONCAT: eSMSConcatType dispid 16;
    property smsCLI_MSG_ID: WideString dispid 17;
    property smsCALLBACK: eSMSCallbackType dispid 18;
    property smsMSG_TYPE: eSMSMsgType dispid 19;
    property smsUDH: WideString dispid 20;
    property smsTEXT: WideString dispid 21;
    property smsBATCH_ID: WideString readonly dispid 30;
    property smsERROR_DESC: WideString readonly dispid 31;
    property ThrowError: WordBool dispid 38;
    property smsCommunicationType: eSMSCommunicationType dispid 40;
    property smsUNICODE: WordBool dispid 41;
    property CanSendViaSSL: WordBool readonly dispid 43;
    property smsMO: WordBool dispid 55;
    property smsMAX_CREDITS: Integer dispid 58;
    property smsQUEUE: eSMSSendQueue dispid 59;
    property smsESCALATE: eSMSEscalate dispid 60;
    property smsREQUIRED_FEATURES: Integer dispid 61;
  end;

  // *********************************************************************//
  // The Class CoSMS provides a Create and CreateRemote method to
  // create instances of the default interface ISMS exposed by
  // the CoClass SMS. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSMS = class
    class function Create: ISMS;
    class function CreateRemote(const MachineName: string): ISMS;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TSMS
  // Help String      : SMS Class
  // Default Interface: ISMS
  // Def. Intf. DISP? : No
  // Event   Interface: _ISMSEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TSMSProperties = class;
{$ENDIF}

  TSMS = class(TOleServer)
  private
    FIntf: ISMS;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSMSProperties;
    function GetServerProperties: TSMSProperties;
{$ENDIF}
    function GetDefaultInterface: ISMS;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(dispid: TDispID; var Params: TVariantArray); override;
    function Get_smsAPI_ID: WideString;
    procedure Set_smsAPI_ID(const pVal: WideString);
    function Get_smsUSER: WideString;
    procedure Set_smsUSER(const pVal: WideString);
    function Get_smsPASSWORD: WideString;
    procedure Set_smsPASSWORD(const pVal: WideString);
    function Get_smsIsLoggedIn: WordBool;
    function Get_smsSESSION_ID: WideString;
    function Get_smsERROR: eSMSErrors;
    function Get_smsFROM: WideString;
    procedure Set_smsFROM(const pVal: WideString);
    function Get_smsTO: WideString;
    procedure Set_smsTO(const pVal: WideString);
    function Get_smsVAL_PERIOD: Integer;
    procedure Set_smsVAL_PERIOD(pVal: Integer);
    function Get_smsDELIVERY_ACK: WordBool;
    procedure Set_smsDELIVERY_ACK(pVal: WordBool);
    function Get_smsDELIVERY_TIME: Integer;
    procedure Set_smsDELIVERY_TIME(pVal: Integer);
    function Get_smsCONCAT: eSMSConcatType;
    procedure Set_smsCONCAT(pVal: eSMSConcatType);
    function Get_smsCLI_MSG_ID: WideString;
    procedure Set_smsCLI_MSG_ID(const pVal: WideString);
    function Get_smsCALLBACK: eSMSCallbackType;
    procedure Set_smsCALLBACK(pVal: eSMSCallbackType);
    function Get_smsMSG_TYPE: eSMSMsgType;
    procedure Set_smsMSG_TYPE(pVal: eSMSMsgType);
    function Get_smsUDH: WideString;
    procedure Set_smsUDH(const pVal: WideString);
    function Get_smsTEXT: WideString;
    procedure Set_smsTEXT(const pVal: WideString);
    function Get_smsBATCH_ID: WideString;
    function Get_smsERROR_DESC: WideString;
    function Get_ThrowError: WordBool;
    procedure Set_ThrowError(pVal: WordBool);
    function Get_smsCommunicationType: eSMSCommunicationType;
    procedure Set_smsCommunicationType(pVal: eSMSCommunicationType);
    function Get_smsUNICODE: WordBool;
    procedure Set_smsUNICODE(pVal: WordBool);
    function Get_CanSendViaSSL: WordBool;
    function Get_smsMO: WordBool;
    procedure Set_smsMO(pVal: WordBool);
    function Get_smsMAX_CREDITS: Integer;
    procedure Set_smsMAX_CREDITS(pVal: Integer);
    function Get_smsQUEUE: eSMSSendQueue;
    procedure Set_smsQUEUE(pVal: eSMSSendQueue);
    function Get_smsESCALATE: eSMSEscalate;
    procedure Set_smsESCALATE(pVal: eSMSEscalate);
    function Get_smsREQUIRED_FEATURES: Integer;
    procedure Set_smsREQUIRED_FEATURES(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISMS);
    procedure Disconnect; override;
    function Authenticate(const API_ID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString;
    function SendMsg(bUseSessionID: WordBool; const Msg: WideString; const To_: WideString): WideString;
    function SendSimpleSMS(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const MsgText: WideString)
      : WideString;
    function QueryMsgAPIID(const lApiMsgID: WideString): WideString;
    function QueryMsgCLIID(const CliMsgID: WideString): WideString;
    function QueryMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString;
    function StopMsgAPIID(const ApiMsgID: WideString): WideString;
    function StopMsgCLIID(const CliMsgID: WideString): WideString;
    function StopMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString;
    function StartBatch(const Template: WideString): WideString;
    function SendBatchItem(const To_: WideString; const Field1: WideString; const Field2: WideString; const Field3: WideString; const Field4: WideString;
      const Field5: WideString; const Field6: WideString; const Field7: WideString; const Field8: WideString; const Field9: WideString): WideString;
    function QuickBatchSend(const To_: WideString): WideString;
    function EndBatch: WideString;
    function Ping: WideString;
    function QueryBalance: WideString;
    procedure ResetSMS;
    function EncodeToUnicode(const StringToConvert: WideString): WideString;
    function TokenPay(const Token: WideString): WideString;
    function AuthenticateClient(const ClientID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString;
    function ChangePassword(const Password: WideString): WideString;
    function RecoverPassword(const Username: WideString; const Email: WideString): WideString;
    function ConfigureProxy(eInetType: eSMSInetConnection; const Proxy: WideString; const Port: WideString): WideString;
    function client_reg(const ClientID: WideString; const Username: WideString; const Password: WideString; const Firstname: WideString;
      const Surname: WideString; const Email: WideString; const Prefix: WideString; const Mobile: WideString; GetStats: WordBool; Encoded: WordBool)
      : WideString;
    function mpro_reg(const Firstname: WideString; const Surname: WideString; const Username: WideString; const Password: WideString; const Company: WideString;
      const Email: WideString; const CellPhone: WideString; const Telephone: WideString; const Title: WideString; GetNews: WordBool; GetStats: WordBool;
      const CountryID: WideString; const CurrencyID: WideString; const Prefix: WideString; Encoded: WordBool): WideString;
    function SetConnectTimeout(Timeout: Integer): Integer;
    function SetReceiveTimeout(Timeout: Integer): Integer;
    function how_dat(const Serial: WideString; const API_ID: WideString; const User: WideString; const Password: WideString; Encoded: WordBool): WideString;
    function Activate(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const ActCode: WideString)
      : WideString;
    function QueryCoverage(const To_: WideString): WideString;
    function SetBaseURL(bResetOnly: WordBool; const NewURL: WideString; HashKey: Integer): WideString;
    property DefaultInterface: ISMS read GetDefaultInterface;
    property smsIsLoggedIn: WordBool read Get_smsIsLoggedIn;
    property smsSESSION_ID: WideString read Get_smsSESSION_ID;
    property smsERROR: eSMSErrors read Get_smsERROR;
    property smsBATCH_ID: WideString read Get_smsBATCH_ID;
    property smsERROR_DESC: WideString read Get_smsERROR_DESC;
    property CanSendViaSSL: WordBool read Get_CanSendViaSSL;
    property smsAPI_ID: WideString read Get_smsAPI_ID write Set_smsAPI_ID;
    property smsUSER: WideString read Get_smsUSER write Set_smsUSER;
    property smsPASSWORD: WideString read Get_smsPASSWORD write Set_smsPASSWORD;
    property smsFROM: WideString read Get_smsFROM write Set_smsFROM;
    property smsTO: WideString read Get_smsTO write Set_smsTO;
    property smsVAL_PERIOD: Integer read Get_smsVAL_PERIOD write Set_smsVAL_PERIOD;
    property smsDELIVERY_ACK: WordBool read Get_smsDELIVERY_ACK write Set_smsDELIVERY_ACK;
    property smsDELIVERY_TIME: Integer read Get_smsDELIVERY_TIME write Set_smsDELIVERY_TIME;
    property smsCONCAT: eSMSConcatType read Get_smsCONCAT write Set_smsCONCAT;
    property smsCLI_MSG_ID: WideString read Get_smsCLI_MSG_ID write Set_smsCLI_MSG_ID;
    property smsCALLBACK: eSMSCallbackType read Get_smsCALLBACK write Set_smsCALLBACK;
    property smsMSG_TYPE: eSMSMsgType read Get_smsMSG_TYPE write Set_smsMSG_TYPE;
    property smsUDH: WideString read Get_smsUDH write Set_smsUDH;
    property smsTEXT: WideString read Get_smsTEXT write Set_smsTEXT;
    property ThrowError: WordBool read Get_ThrowError write Set_ThrowError;
    property smsCommunicationType: eSMSCommunicationType read Get_smsCommunicationType write Set_smsCommunicationType;
    property smsUNICODE: WordBool read Get_smsUNICODE write Set_smsUNICODE;
    property smsMO: WordBool read Get_smsMO write Set_smsMO;
    property smsMAX_CREDITS: Integer read Get_smsMAX_CREDITS write Set_smsMAX_CREDITS;
    property smsQUEUE: eSMSSendQueue read Get_smsQUEUE write Set_smsQUEUE;
    property smsESCALATE: eSMSEscalate read Get_smsESCALATE write Set_smsESCALATE;
    property smsREQUIRED_FEATURES: Integer read Get_smsREQUIRED_FEATURES write Set_smsREQUIRED_FEATURES;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSMSProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TSMS
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TSMSProperties = class(TPersistent)
  private
    FServer: TSMS;
    function GetDefaultInterface: ISMS;
    constructor Create(AServer: TSMS);
  protected
    function Get_smsAPI_ID: WideString;
    procedure Set_smsAPI_ID(const pVal: WideString);
    function Get_smsUSER: WideString;
    procedure Set_smsUSER(const pVal: WideString);
    function Get_smsPASSWORD: WideString;
    procedure Set_smsPASSWORD(const pVal: WideString);
    function Get_smsIsLoggedIn: WordBool;
    function Get_smsSESSION_ID: WideString;
    function Get_smsERROR: eSMSErrors;
    function Get_smsFROM: WideString;
    procedure Set_smsFROM(const pVal: WideString);
    function Get_smsTO: WideString;
    procedure Set_smsTO(const pVal: WideString);
    function Get_smsVAL_PERIOD: Integer;
    procedure Set_smsVAL_PERIOD(pVal: Integer);
    function Get_smsDELIVERY_ACK: WordBool;
    procedure Set_smsDELIVERY_ACK(pVal: WordBool);
    function Get_smsDELIVERY_TIME: Integer;
    procedure Set_smsDELIVERY_TIME(pVal: Integer);
    function Get_smsCONCAT: eSMSConcatType;
    procedure Set_smsCONCAT(pVal: eSMSConcatType);
    function Get_smsCLI_MSG_ID: WideString;
    procedure Set_smsCLI_MSG_ID(const pVal: WideString);
    function Get_smsCALLBACK: eSMSCallbackType;
    procedure Set_smsCALLBACK(pVal: eSMSCallbackType);
    function Get_smsMSG_TYPE: eSMSMsgType;
    procedure Set_smsMSG_TYPE(pVal: eSMSMsgType);
    function Get_smsUDH: WideString;
    procedure Set_smsUDH(const pVal: WideString);
    function Get_smsTEXT: WideString;
    procedure Set_smsTEXT(const pVal: WideString);
    function Get_smsBATCH_ID: WideString;
    function Get_smsERROR_DESC: WideString;
    function Get_ThrowError: WordBool;
    procedure Set_ThrowError(pVal: WordBool);
    function Get_smsCommunicationType: eSMSCommunicationType;
    procedure Set_smsCommunicationType(pVal: eSMSCommunicationType);
    function Get_smsUNICODE: WordBool;
    procedure Set_smsUNICODE(pVal: WordBool);
    function Get_CanSendViaSSL: WordBool;
    function Get_smsMO: WordBool;
    procedure Set_smsMO(pVal: WordBool);
    function Get_smsMAX_CREDITS: Integer;
    procedure Set_smsMAX_CREDITS(pVal: Integer);
    function Get_smsQUEUE: eSMSSendQueue;
    procedure Set_smsQUEUE(pVal: eSMSSendQueue);
    function Get_smsESCALATE: eSMSEscalate;
    procedure Set_smsESCALATE(pVal: eSMSEscalate);
    function Get_smsREQUIRED_FEATURES: Integer;
    procedure Set_smsREQUIRED_FEATURES(pVal: Integer);
  public
    property DefaultInterface: ISMS read GetDefaultInterface;
  published
    property smsAPI_ID: WideString read Get_smsAPI_ID write Set_smsAPI_ID;
    property smsUSER: WideString read Get_smsUSER write Set_smsUSER;
    property smsPASSWORD: WideString read Get_smsPASSWORD write Set_smsPASSWORD;
    property smsFROM: WideString read Get_smsFROM write Set_smsFROM;
    property smsTO: WideString read Get_smsTO write Set_smsTO;
    property smsVAL_PERIOD: Integer read Get_smsVAL_PERIOD write Set_smsVAL_PERIOD;
    property smsDELIVERY_ACK: WordBool read Get_smsDELIVERY_ACK write Set_smsDELIVERY_ACK;
    property smsDELIVERY_TIME: Integer read Get_smsDELIVERY_TIME write Set_smsDELIVERY_TIME;
    property smsCONCAT: eSMSConcatType read Get_smsCONCAT write Set_smsCONCAT;
    property smsCLI_MSG_ID: WideString read Get_smsCLI_MSG_ID write Set_smsCLI_MSG_ID;
    property smsCALLBACK: eSMSCallbackType read Get_smsCALLBACK write Set_smsCALLBACK;
    property smsMSG_TYPE: eSMSMsgType read Get_smsMSG_TYPE write Set_smsMSG_TYPE;
    property smsUDH: WideString read Get_smsUDH write Set_smsUDH;
    property smsTEXT: WideString read Get_smsTEXT write Set_smsTEXT;
    property ThrowError: WordBool read Get_ThrowError write Set_ThrowError;
    property smsCommunicationType: eSMSCommunicationType read Get_smsCommunicationType write Set_smsCommunicationType;
    property smsUNICODE: WordBool read Get_smsUNICODE write Set_smsUNICODE;
    property smsMO: WordBool read Get_smsMO write Set_smsMO;
    property smsMAX_CREDITS: Integer read Get_smsMAX_CREDITS write Set_smsMAX_CREDITS;
    property smsQUEUE: eSMSSendQueue read Get_smsQUEUE write Set_smsQUEUE;
    property smsESCALATE: eSMSEscalate read Get_smsESCALATE write Set_smsESCALATE;
    property smsREQUIRED_FEATURES: Integer read Get_smsREQUIRED_FEATURES write Set_smsREQUIRED_FEATURES;
  end;
{$ENDIF}

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoSMS.Create: ISMS;
begin
  Result := CreateComObject(CLASS_SMS) as ISMS;
end;

class function CoSMS.CreateRemote(const MachineName: string): ISMS;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SMS) as ISMS;
end;

procedure TSMS.InitServerData;
const
  CServerData: TServerData = (ClassID: '{231CD7E4-908C-45C0-B357-34FE860BED1D}'; IntfIID: '{EEFFA403-0DD7-4D83-A9ED-CA22DAD7C388}';
    EventIID: '{941A0129-BF4B-469B-8667-30BC0C34D5C5}'; LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSMS.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    FIntf := punk as ISMS;
  end;
end;

procedure TSMS.ConnectTo(svrIntf: ISMS);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TSMS.Disconnect;
begin
  if FIntf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TSMS.GetDefaultInterface: ISMS;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSMS.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSMSProperties.Create(Self);
{$ENDIF}
end;

destructor TSMS.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TSMS.GetServerProperties: TSMSProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TSMS.InvokeEvent(dispid: TDispID; var Params: TVariantArray);
begin
  case dispid of
    - 1:
      Exit; // DISPID_UNKNOWN
  end; { case DispID }
end;

function TSMS.Get_smsAPI_ID: WideString;
begin
  Result := DefaultInterface.smsAPI_ID;
end;

procedure TSMS.Set_smsAPI_ID(const pVal: WideString);
{ Warning: The property smsAPI_ID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.smsAPI_ID := pVal;
end;

function TSMS.Get_smsUSER: WideString;
begin
  Result := DefaultInterface.smsUSER;
end;

procedure TSMS.Set_smsUSER(const pVal: WideString);
{ Warning: The property smsUSER has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsUSER := pVal;
end;

function TSMS.Get_smsPASSWORD: WideString;
begin
  Result := DefaultInterface.smsPASSWORD;
end;

procedure TSMS.Set_smsPASSWORD(const pVal: WideString);
{ Warning: The property smsPASSWORD has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.smsPASSWORD := pVal;
end;

function TSMS.Get_smsIsLoggedIn: WordBool;
begin
  Result := DefaultInterface.smsIsLoggedIn;
end;

function TSMS.Get_smsSESSION_ID: WideString;
begin
  Result := DefaultInterface.smsSESSION_ID;
end;

function TSMS.Get_smsERROR: eSMSErrors;
begin
  Result := DefaultInterface.smsERROR;
end;

function TSMS.Get_smsFROM: WideString;
begin
  Result := DefaultInterface.smsFROM;
end;

procedure TSMS.Set_smsFROM(const pVal: WideString);
{ Warning: The property smsFROM has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsFROM := pVal;
end;

function TSMS.Get_smsTO: WideString;
begin
  Result := DefaultInterface.smsTO;
end;

procedure TSMS.Set_smsTO(const pVal: WideString);
{ Warning: The property smsTO has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.smsTO := pVal;
end;

function TSMS.Get_smsVAL_PERIOD: Integer;
begin
  Result := DefaultInterface.smsVAL_PERIOD;
end;

procedure TSMS.Set_smsVAL_PERIOD(pVal: Integer);
begin
  DefaultInterface.Set_smsVAL_PERIOD(pVal);
end;

function TSMS.Get_smsDELIVERY_ACK: WordBool;
begin
  Result := DefaultInterface.smsDELIVERY_ACK;
end;

procedure TSMS.Set_smsDELIVERY_ACK(pVal: WordBool);
begin
  DefaultInterface.Set_smsDELIVERY_ACK(pVal);
end;

function TSMS.Get_smsDELIVERY_TIME: Integer;
begin
  Result := DefaultInterface.smsDELIVERY_TIME;
end;

procedure TSMS.Set_smsDELIVERY_TIME(pVal: Integer);
begin
  DefaultInterface.Set_smsDELIVERY_TIME(pVal);
end;

function TSMS.Get_smsCONCAT: eSMSConcatType;
begin
  Result := DefaultInterface.smsCONCAT;
end;

procedure TSMS.Set_smsCONCAT(pVal: eSMSConcatType);
begin
  DefaultInterface.Set_smsCONCAT(pVal);
end;

function TSMS.Get_smsCLI_MSG_ID: WideString;
begin
  Result := DefaultInterface.smsCLI_MSG_ID;
end;

procedure TSMS.Set_smsCLI_MSG_ID(const pVal: WideString);
{ Warning: The property smsCLI_MSG_ID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.smsCLI_MSG_ID := pVal;
end;

function TSMS.Get_smsCALLBACK: eSMSCallbackType;
begin
  Result := DefaultInterface.smsCALLBACK;
end;

procedure TSMS.Set_smsCALLBACK(pVal: eSMSCallbackType);
begin
  DefaultInterface.Set_smsCALLBACK(pVal);
end;

function TSMS.Get_smsMSG_TYPE: eSMSMsgType;
begin
  Result := DefaultInterface.smsMSG_TYPE;
end;

procedure TSMS.Set_smsMSG_TYPE(pVal: eSMSMsgType);
begin
  DefaultInterface.Set_smsMSG_TYPE(pVal);
end;

function TSMS.Get_smsUDH: WideString;
begin
  Result := DefaultInterface.smsUDH;
end;

procedure TSMS.Set_smsUDH(const pVal: WideString);
{ Warning: The property smsUDH has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.smsUDH := pVal;
end;

function TSMS.Get_smsTEXT: WideString;
begin
  Result := DefaultInterface.smsTEXT;
end;

procedure TSMS.Set_smsTEXT(const pVal: WideString);
{ Warning: The property smsTEXT has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsTEXT := pVal;
end;

function TSMS.Get_smsBATCH_ID: WideString;
begin
  Result := DefaultInterface.smsBATCH_ID;
end;

function TSMS.Get_smsERROR_DESC: WideString;
begin
  Result := DefaultInterface.smsERROR_DESC;
end;

function TSMS.Get_ThrowError: WordBool;
begin
  Result := DefaultInterface.ThrowError;
end;

procedure TSMS.Set_ThrowError(pVal: WordBool);
begin
  DefaultInterface.Set_ThrowError(pVal);
end;

function TSMS.Get_smsCommunicationType: eSMSCommunicationType;
begin
  Result := DefaultInterface.smsCommunicationType;
end;

procedure TSMS.Set_smsCommunicationType(pVal: eSMSCommunicationType);
begin
  DefaultInterface.Set_smsCommunicationType(pVal);
end;

function TSMS.Get_smsUNICODE: WordBool;
begin
  Result := DefaultInterface.smsUNICODE;
end;

procedure TSMS.Set_smsUNICODE(pVal: WordBool);
begin
  DefaultInterface.Set_smsUNICODE(pVal);
end;

function TSMS.Get_CanSendViaSSL: WordBool;
begin
  Result := DefaultInterface.CanSendViaSSL;
end;

function TSMS.Get_smsMO: WordBool;
begin
  Result := DefaultInterface.smsMO;
end;

procedure TSMS.Set_smsMO(pVal: WordBool);
begin
  DefaultInterface.Set_smsMO(pVal);
end;

function TSMS.Get_smsMAX_CREDITS: Integer;
begin
  Result := DefaultInterface.smsMAX_CREDITS;
end;

procedure TSMS.Set_smsMAX_CREDITS(pVal: Integer);
begin
  DefaultInterface.Set_smsMAX_CREDITS(pVal);
end;

function TSMS.Get_smsQUEUE: eSMSSendQueue;
begin
  Result := DefaultInterface.smsQUEUE;
end;

procedure TSMS.Set_smsQUEUE(pVal: eSMSSendQueue);
begin
  DefaultInterface.Set_smsQUEUE(pVal);
end;

function TSMS.Get_smsESCALATE: eSMSEscalate;
begin
  Result := DefaultInterface.smsESCALATE;
end;

procedure TSMS.Set_smsESCALATE(pVal: eSMSEscalate);
begin
  DefaultInterface.Set_smsESCALATE(pVal);
end;

function TSMS.Get_smsREQUIRED_FEATURES: Integer;
begin
  Result := DefaultInterface.smsREQUIRED_FEATURES;
end;

procedure TSMS.Set_smsREQUIRED_FEATURES(pVal: Integer);
begin
  DefaultInterface.Set_smsREQUIRED_FEATURES(pVal);
end;

function TSMS.Authenticate(const API_ID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString;
begin
  Result := DefaultInterface.Authenticate(API_ID, pUser, pPassword, Encoded);
end;

function TSMS.SendMsg(bUseSessionID: WordBool; const Msg: WideString; const To_: WideString): WideString;
begin
  Result := DefaultInterface.SendMsg(bUseSessionID, Msg, To_);
end;

function TSMS.SendSimpleSMS(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const MsgText: WideString)
  : WideString;
begin
  Result := DefaultInterface.SendSimpleSMS(API_ID, User, Password, To_, MsgText);
end;

function TSMS.QueryMsgAPIID(const lApiMsgID: WideString): WideString;
begin
  Result := DefaultInterface.QueryMsgAPIID(lApiMsgID);
end;

function TSMS.QueryMsgCLIID(const CliMsgID: WideString): WideString;
begin
  Result := DefaultInterface.QueryMsgCLIID(CliMsgID);
end;

function TSMS.QueryMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString;
begin
  Result := DefaultInterface.QueryMsg(MsgID, eIDType);
end;

function TSMS.StopMsgAPIID(const ApiMsgID: WideString): WideString;
begin
  Result := DefaultInterface.StopMsgAPIID(ApiMsgID);
end;

function TSMS.StopMsgCLIID(const CliMsgID: WideString): WideString;
begin
  Result := DefaultInterface.StopMsgCLIID(CliMsgID);
end;

function TSMS.StopMsg(const MsgID: WideString; eIDType: eSMSAPIorCLI_ID): WideString;
begin
  Result := DefaultInterface.StopMsg(MsgID, eIDType);
end;

function TSMS.StartBatch(const Template: WideString): WideString;
begin
  Result := DefaultInterface.StartBatch(Template);
end;

function TSMS.SendBatchItem(const To_: WideString; const Field1: WideString; const Field2: WideString; const Field3: WideString; const Field4: WideString;
  const Field5: WideString; const Field6: WideString; const Field7: WideString; const Field8: WideString; const Field9: WideString): WideString;
begin
  Result := DefaultInterface.SendBatchItem(To_, Field1, Field2, Field3, Field4, Field5, Field6, Field7, Field8, Field9);
end;

function TSMS.QuickBatchSend(const To_: WideString): WideString;
begin
  Result := DefaultInterface.QuickBatchSend(To_);
end;

function TSMS.EndBatch: WideString;
begin
  Result := DefaultInterface.EndBatch;
end;

function TSMS.Ping: WideString;
begin
  Result := DefaultInterface.Ping;
end;

function TSMS.QueryBalance: WideString;
begin
  Result := DefaultInterface.QueryBalance;
end;

procedure TSMS.ResetSMS;
begin
  DefaultInterface.ResetSMS;
end;

function TSMS.EncodeToUnicode(const StringToConvert: WideString): WideString;
begin
  Result := DefaultInterface.EncodeToUnicode(StringToConvert);
end;

function TSMS.TokenPay(const Token: WideString): WideString;
begin
  Result := DefaultInterface.TokenPay(Token);
end;

function TSMS.AuthenticateClient(const ClientID: WideString; const pUser: WideString; const pPassword: WideString; Encoded: WordBool): WideString;
begin
  Result := DefaultInterface.AuthenticateClient(ClientID, pUser, pPassword, Encoded);
end;

function TSMS.ChangePassword(const Password: WideString): WideString;
begin
  Result := DefaultInterface.ChangePassword(Password);
end;

function TSMS.RecoverPassword(const Username: WideString; const Email: WideString): WideString;
begin
  Result := DefaultInterface.RecoverPassword(Username, Email);
end;

function TSMS.ConfigureProxy(eInetType: eSMSInetConnection; const Proxy: WideString; const Port: WideString): WideString;
begin
  Result := DefaultInterface.ConfigureProxy(eInetType, Proxy, Port);
end;

function TSMS.client_reg(const ClientID: WideString; const Username: WideString; const Password: WideString; const Firstname: WideString;
  const Surname: WideString; const Email: WideString; const Prefix: WideString; const Mobile: WideString; GetStats: WordBool; Encoded: WordBool): WideString;
begin
  Result := DefaultInterface.client_reg(ClientID, Username, Password, Firstname, Surname, Email, Prefix, Mobile, GetStats, Encoded);
end;

function TSMS.mpro_reg(const Firstname: WideString; const Surname: WideString; const Username: WideString; const Password: WideString;
  const Company: WideString; const Email: WideString; const CellPhone: WideString; const Telephone: WideString; const Title: WideString; GetNews: WordBool;
  GetStats: WordBool; const CountryID: WideString; const CurrencyID: WideString; const Prefix: WideString; Encoded: WordBool): WideString;
begin
  Result := DefaultInterface.mpro_reg(Firstname, Surname, Username, Password, Company, Email, CellPhone, Telephone, Title, GetNews, GetStats, CountryID,
    CurrencyID, Prefix, Encoded);
end;

function TSMS.SetConnectTimeout(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.SetConnectTimeout(Timeout);
end;

function TSMS.SetReceiveTimeout(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.SetReceiveTimeout(Timeout);
end;

function TSMS.how_dat(const Serial: WideString; const API_ID: WideString; const User: WideString; const Password: WideString; Encoded: WordBool): WideString;
begin
  Result := DefaultInterface.how_dat(Serial, API_ID, User, Password, Encoded);
end;

function TSMS.Activate(const API_ID: WideString; const User: WideString; const Password: WideString; const To_: WideString; const ActCode: WideString)
  : WideString;
begin
  Result := DefaultInterface.Activate(API_ID, User, Password, To_, ActCode);
end;

function TSMS.QueryCoverage(const To_: WideString): WideString;
begin
  Result := DefaultInterface.QueryCoverage(To_);
end;

function TSMS.SetBaseURL(bResetOnly: WordBool; const NewURL: WideString; HashKey: Integer): WideString;
begin
  Result := DefaultInterface.SetBaseURL(bResetOnly, NewURL, HashKey);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TSMSProperties.Create(AServer: TSMS);
begin
  inherited Create;
  FServer := AServer;
end;

function TSMSProperties.GetDefaultInterface: ISMS;
begin
  Result := FServer.DefaultInterface;
end;

function TSMSProperties.Get_smsAPI_ID: WideString;
begin
  Result := DefaultInterface.smsAPI_ID;
end;

procedure TSMSProperties.Set_smsAPI_ID(const pVal: WideString);
{ Warning: The property smsAPI_ID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.smsAPI_ID := pVal;
end;

function TSMSProperties.Get_smsUSER: WideString;
begin
  Result := DefaultInterface.smsUSER;
end;

procedure TSMSProperties.Set_smsUSER(const pVal: WideString);
{ Warning: The property smsUSER has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsUSER := pVal;
end;

function TSMSProperties.Get_smsPASSWORD: WideString;
begin
  Result := DefaultInterface.smsPASSWORD;
end;

procedure TSMSProperties.Set_smsPASSWORD(const pVal: WideString);
{ Warning: The property smsPASSWORD has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.smsPASSWORD := pVal;
end;

function TSMSProperties.Get_smsIsLoggedIn: WordBool;
begin
  Result := DefaultInterface.smsIsLoggedIn;
end;

function TSMSProperties.Get_smsSESSION_ID: WideString;
begin
  Result := DefaultInterface.smsSESSION_ID;
end;

function TSMSProperties.Get_smsERROR: eSMSErrors;
begin
  Result := DefaultInterface.smsERROR;
end;

function TSMSProperties.Get_smsFROM: WideString;
begin
  Result := DefaultInterface.smsFROM;
end;

procedure TSMSProperties.Set_smsFROM(const pVal: WideString);
{ Warning: The property smsFROM has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsFROM := pVal;
end;

function TSMSProperties.Get_smsTO: WideString;
begin
  Result := DefaultInterface.smsTO;
end;

procedure TSMSProperties.Set_smsTO(const pVal: WideString);
{ Warning: The property smsTO has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.smsTO := pVal;
end;

function TSMSProperties.Get_smsVAL_PERIOD: Integer;
begin
  Result := DefaultInterface.smsVAL_PERIOD;
end;

procedure TSMSProperties.Set_smsVAL_PERIOD(pVal: Integer);
begin
  DefaultInterface.Set_smsVAL_PERIOD(pVal);
end;

function TSMSProperties.Get_smsDELIVERY_ACK: WordBool;
begin
  Result := DefaultInterface.smsDELIVERY_ACK;
end;

procedure TSMSProperties.Set_smsDELIVERY_ACK(pVal: WordBool);
begin
  DefaultInterface.Set_smsDELIVERY_ACK(pVal);
end;

function TSMSProperties.Get_smsDELIVERY_TIME: Integer;
begin
  Result := DefaultInterface.smsDELIVERY_TIME;
end;

procedure TSMSProperties.Set_smsDELIVERY_TIME(pVal: Integer);
begin
  DefaultInterface.Set_smsDELIVERY_TIME(pVal);
end;

function TSMSProperties.Get_smsCONCAT: eSMSConcatType;
begin
  Result := DefaultInterface.smsCONCAT;
end;

procedure TSMSProperties.Set_smsCONCAT(pVal: eSMSConcatType);
begin
  DefaultInterface.Set_smsCONCAT(pVal);
end;

function TSMSProperties.Get_smsCLI_MSG_ID: WideString;
begin
  Result := DefaultInterface.smsCLI_MSG_ID;
end;

procedure TSMSProperties.Set_smsCLI_MSG_ID(const pVal: WideString);
{ Warning: The property smsCLI_MSG_ID has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.smsCLI_MSG_ID := pVal;
end;

function TSMSProperties.Get_smsCALLBACK: eSMSCallbackType;
begin
  Result := DefaultInterface.smsCALLBACK;
end;

procedure TSMSProperties.Set_smsCALLBACK(pVal: eSMSCallbackType);
begin
  DefaultInterface.Set_smsCALLBACK(pVal);
end;

function TSMSProperties.Get_smsMSG_TYPE: eSMSMsgType;
begin
  Result := DefaultInterface.smsMSG_TYPE;
end;

procedure TSMSProperties.Set_smsMSG_TYPE(pVal: eSMSMsgType);
begin
  DefaultInterface.Set_smsMSG_TYPE(pVal);
end;

function TSMSProperties.Get_smsUDH: WideString;
begin
  Result := DefaultInterface.smsUDH;
end;

procedure TSMSProperties.Set_smsUDH(const pVal: WideString);
{ Warning: The property smsUDH has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.smsUDH := pVal;
end;

function TSMSProperties.Get_smsTEXT: WideString;
begin
  Result := DefaultInterface.smsTEXT;
end;

procedure TSMSProperties.Set_smsTEXT(const pVal: WideString);
{ Warning: The property smsTEXT has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.smsTEXT := pVal;
end;

function TSMSProperties.Get_smsBATCH_ID: WideString;
begin
  Result := DefaultInterface.smsBATCH_ID;
end;

function TSMSProperties.Get_smsERROR_DESC: WideString;
begin
  Result := DefaultInterface.smsERROR_DESC;
end;

function TSMSProperties.Get_ThrowError: WordBool;
begin
  Result := DefaultInterface.ThrowError;
end;

procedure TSMSProperties.Set_ThrowError(pVal: WordBool);
begin
  DefaultInterface.Set_ThrowError(pVal);
end;

function TSMSProperties.Get_smsCommunicationType: eSMSCommunicationType;
begin
  Result := DefaultInterface.smsCommunicationType;
end;

procedure TSMSProperties.Set_smsCommunicationType(pVal: eSMSCommunicationType);
begin
  DefaultInterface.Set_smsCommunicationType(pVal);
end;

function TSMSProperties.Get_smsUNICODE: WordBool;
begin
  Result := DefaultInterface.smsUNICODE;
end;

procedure TSMSProperties.Set_smsUNICODE(pVal: WordBool);
begin
  DefaultInterface.Set_smsUNICODE(pVal);
end;

function TSMSProperties.Get_CanSendViaSSL: WordBool;
begin
  Result := DefaultInterface.CanSendViaSSL;
end;

function TSMSProperties.Get_smsMO: WordBool;
begin
  Result := DefaultInterface.smsMO;
end;

procedure TSMSProperties.Set_smsMO(pVal: WordBool);
begin
  DefaultInterface.Set_smsMO(pVal);
end;

function TSMSProperties.Get_smsMAX_CREDITS: Integer;
begin
  Result := DefaultInterface.smsMAX_CREDITS;
end;

procedure TSMSProperties.Set_smsMAX_CREDITS(pVal: Integer);
begin
  DefaultInterface.Set_smsMAX_CREDITS(pVal);
end;

function TSMSProperties.Get_smsQUEUE: eSMSSendQueue;
begin
  Result := DefaultInterface.smsQUEUE;
end;

procedure TSMSProperties.Set_smsQUEUE(pVal: eSMSSendQueue);
begin
  DefaultInterface.Set_smsQUEUE(pVal);
end;

function TSMSProperties.Get_smsESCALATE: eSMSEscalate;
begin
  Result := DefaultInterface.smsESCALATE;
end;

procedure TSMSProperties.Set_smsESCALATE(pVal: eSMSEscalate);
begin
  DefaultInterface.Set_smsESCALATE(pVal);
end;

function TSMSProperties.Get_smsREQUIRED_FEATURES: Integer;
begin
  Result := DefaultInterface.smsREQUIRED_FEATURES;
end;

procedure TSMSProperties.Set_smsREQUIRED_FEATURES(pVal: Integer);
begin
  DefaultInterface.Set_smsREQUIRED_FEATURES(pVal);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TSMS]);
end;

end.