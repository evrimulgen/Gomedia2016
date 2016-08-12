unit EIDLIBCTRLLib_TLB;

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

// $Rev: 41960 $
// File generated on 8/10/2014 5:15:19 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWOW64\beidlibaxctrl.dll (1)
// LIBID: {7705C6CB-5A66-4F92-B296-2B34ED21745C}
// LCID: 0
// Helpfile:
// HelpString: beidlibaxctrl 1.1 Type Library
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
// Type Libraries     : LIBID_xxxx
// CoClasses          : CLASS_xxxx
// DISPInterfaces     : DIID_xxxx
// Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  EIDLIBCTRLLibMajorVersion = 1;
  EIDLIBCTRLLibMinorVersion = 0;

  LIBID_EIDLIBCTRLLib: TGUID = '{7705C6CB-5A66-4F92-B296-2B34ED21745C}';

  DIID__IEIDlibEvents: TGUID = '{23271379-5195-4384-98DA-F54960DA8A84}';
  IID_IEIDlib: TGUID         = '{D5701A16-9D8D-46C6-8E08-B3F1BAE9C4DC}';
  CLASS_EIDlib: TGUID        = '{4E29F09E-EBCC-4A3B-BAA7-8372EC375870}';
  IID_IRetStatus: TGUID      = '{9B4AD832-6FE8-4826-BFD3-3F278A40F741}';
  IID_IMapCollection: TGUID  = '{886B55ED-4245-4FE9-B3B5-1D78B551000B}';
  IID_ICertifCheck: TGUID    = '{9233063D-D860-4CAD-AD47-BE48CC62D709}';
  IID_IPin: TGUID            = '{B7E86746-2EA7-4237-B523-5BD826A0BAF9}';
  IID_IRaw: TGUID            = '{9D5F1B11-8438-4C4E-9011-070F2E43C758}';
  CLASS_RetStatus: TGUID     = '{8923F2AE-B06E-430B-93F6-96FE1BDEEFF8}';
  CLASS_MapCollection: TGUID = '{BB91CEDA-82D5-4889-8732-3DB804619852}';
  IID_ICertif: TGUID         = '{26995400-2928-4E1B-9981-A317D486AC5A}';
  CLASS_Certif: TGUID        = '{28310B8B-0774-4483-85AF-4966EC52D8BC}';
  CLASS_CertifCheck: TGUID   = '{4CBC8AEE-7684-492E-8AA5-505943987B53}';
  CLASS_Pin: TGUID           = '{B1731EE0-BE64-4FE3-8EAC-BF37A4D96B35}';
  CLASS_Raw: TGUID           = '{79EAFF90-57D8-4A58-BC0C-0C5F7F60E65E}';

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  _IEIDlibEvents     = dispinterface;
  IEIDlib            = interface;
  IEIDlibDisp        = dispinterface;
  IRetStatus         = interface;
  IRetStatusDisp     = dispinterface;
  IMapCollection     = interface;
  IMapCollectionDisp = dispinterface;
  ICertifCheck       = interface;
  ICertifCheckDisp   = dispinterface;
  IPin               = interface;
  IPinDisp           = dispinterface;
  IRaw               = interface;
  IRawDisp           = dispinterface;
  ICertif            = interface;
  ICertifDisp        = dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  EIDlib        = IEIDlib;
  RetStatus     = IRetStatus;
  MapCollection = IMapCollection;
  Certif        = ICertif;
  CertifCheck   = ICertifCheck;
  Pin           = IPin;
  Raw           = IRaw;

  // *********************************************************************//
  // DispIntf:  _IEIDlibEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {23271379-5195-4384-98DA-F54960DA8A84}
  // *********************************************************************//
  _IEIDlibEvents = dispinterface
    ['{23271379-5195-4384-98DA-F54960DA8A84}']
  end;

  // *********************************************************************//
  // Interface: IEIDlib
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {D5701A16-9D8D-46C6-8E08-B3F1BAE9C4DC}
  // *********************************************************************//
  IEIDlib = interface(IDispatch)
    ['{D5701A16-9D8D-46C6-8E08-B3F1BAE9C4DC}']
    function Init(const strReaderName: WideString; lOCSP: Integer; lCRL: Integer; out plHandle: Integer): IRetStatus; safecall;
    function Exit: IRetStatus; safecall;
    function GetID(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; safecall;
    function GetAddress(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; safecall;
    function GetPicture(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; safecall;
    function GetVersionInfo(bSignature: Integer; out ppMapCollection: IMapCollection; out pvtSignature: OleVariant): IRetStatus; safecall;
    function BeginTransaction: IRetStatus; safecall;
    function EndTransaction: IRetStatus; safecall;
    function FlushCache: IRetStatus; safecall;
    function SelectApplication(vtApplication: OleVariant): IRetStatus; safecall;
    function SendAPDU(vtCommand: OleVariant; const pPIN: IPin; out pvtResponse: OleVariant): IRetStatus; safecall;
    function VerifyPIN(const pPIN: IPin; const bstrPin: WideString; out plTriesLeft: Integer): IRetStatus; safecall;
    function ChangePin(const pPIN: IPin; const strOldPin: WideString; const strNewPin: WideString; out plTriesLeft: Integer): IRetStatus; safecall;
    function GetPinStatus(const pPIN: IPin; bSignature: Integer; out pvtSignature: OleVariant; out plTriesLeft: Integer): IRetStatus; safecall;
    function ReadFile(const pPIN: IPin; vtFileId: OleVariant; out pvtData: OleVariant): IRetStatus; safecall;
    function WriteFile(const pPIN: IPin; vtFileId: OleVariant; vtData: OleVariant): IRetStatus; safecall;
    function SetRawData(const pRaw: IRaw): IRetStatus; safecall;
    function GetRawData(out ppRaw: IRaw): IRetStatus; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IEIDlibDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {D5701A16-9D8D-46C6-8E08-B3F1BAE9C4DC}
  // *********************************************************************//
  IEIDlibDisp = dispinterface
    ['{D5701A16-9D8D-46C6-8E08-B3F1BAE9C4DC}']
    function Init(const strReaderName: WideString; lOCSP: Integer; lCRL: Integer; out plHandle: Integer): IRetStatus; dispid 1;
    function Exit: IRetStatus; dispid 2;
    function GetID(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; dispid 3;
    function GetAddress(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; dispid 4;
    function GetPicture(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus; dispid 5;
    function GetVersionInfo(bSignature: Integer; out ppMapCollection: IMapCollection; out pvtSignature: OleVariant): IRetStatus; dispid 6;
    function BeginTransaction: IRetStatus; dispid 7;
    function EndTransaction: IRetStatus; dispid 8;
    function FlushCache: IRetStatus; dispid 9;
    function SelectApplication(vtApplication: OleVariant): IRetStatus; dispid 10;
    function SendAPDU(vtCommand: OleVariant; const pPIN: IPin; out pvtResponse: OleVariant): IRetStatus; dispid 11;
    function VerifyPIN(const pPIN: IPin; const bstrPin: WideString; out plTriesLeft: Integer): IRetStatus; dispid 12;
    function ChangePin(const pPIN: IPin; const strOldPin: WideString; const strNewPin: WideString; out plTriesLeft: Integer): IRetStatus; dispid 13;
    function GetPinStatus(const pPIN: IPin; bSignature: Integer; out pvtSignature: OleVariant; out plTriesLeft: Integer): IRetStatus; dispid 14;
    function ReadFile(const pPIN: IPin; vtFileId: OleVariant; out pvtData: OleVariant): IRetStatus; dispid 15;
    function WriteFile(const pPIN: IPin; vtFileId: OleVariant; vtData: OleVariant): IRetStatus; dispid 16;
    function SetRawData(const pRaw: IRaw): IRetStatus; dispid 17;
    function GetRawData(out ppRaw: IRaw): IRetStatus; dispid 18;
  end;

  // *********************************************************************//
  // Interface: IRetStatus
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9B4AD832-6FE8-4826-BFD3-3F278A40F741}
  // *********************************************************************//
  IRetStatus = interface(IDispatch)
    ['{9B4AD832-6FE8-4826-BFD3-3F278A40F741}']
    function GetGeneral: Integer; safecall;
    function GetPCSC: Integer; safecall;
    function GetSystem: Integer; safecall;
    procedure SetGeneral(lRetVal: Integer); safecall;
    procedure SetPCSC(lRetVal: Integer); safecall;
    procedure SetSystem(lRetVal: Integer); safecall;
    function GetCardSW: OleVariant; safecall;
    procedure SetCardSW(vtCardSW: OleVariant); safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IRetStatusDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9B4AD832-6FE8-4826-BFD3-3F278A40F741}
  // *********************************************************************//
  IRetStatusDisp = dispinterface
    ['{9B4AD832-6FE8-4826-BFD3-3F278A40F741}']
    function GetGeneral: Integer; dispid 1;
    function GetPCSC: Integer; dispid 2;
    function GetSystem: Integer; dispid 3;
    procedure SetGeneral(lRetVal: Integer); dispid 4;
    procedure SetPCSC(lRetVal: Integer); dispid 5;
    procedure SetSystem(lRetVal: Integer); dispid 6;
    function GetCardSW: OleVariant; dispid 7;
    procedure SetCardSW(vtCardSW: OleVariant); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IMapCollection
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {886B55ED-4245-4FE9-B3B5-1D78B551000B}
  // *********************************************************************//
  IMapCollection = interface(IDispatch)
    ['{886B55ED-4245-4FE9-B3B5-1D78B551000B}']
    function GetValue(const strKey: WideString): OleVariant; safecall;
    procedure SetValue(const strKey: WideString; vtValue: OleVariant); safecall;
    function GetCount: Integer; safecall;
    procedure Clear; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IMapCollectionDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {886B55ED-4245-4FE9-B3B5-1D78B551000B}
  // *********************************************************************//
  IMapCollectionDisp = dispinterface
    ['{886B55ED-4245-4FE9-B3B5-1D78B551000B}']
    function GetValue(const strKey: WideString): OleVariant; dispid 1;
    procedure SetValue(const strKey: WideString; vtValue: OleVariant); dispid 2;
    function GetCount: Integer; dispid 3;
    procedure Clear; dispid 4;
  end;

  // *********************************************************************//
  // Interface: ICertifCheck
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9233063D-D860-4CAD-AD47-BE48CC62D709}
  // *********************************************************************//
  ICertifCheck = interface(IDispatch)
    ['{9233063D-D860-4CAD-AD47-BE48CC62D709}']
    function GetPolicy: Integer; safecall;
    function GetSignatureCheck: Integer; safecall;
    function GetCertificates: OleVariant; safecall;
    procedure SetPolicy(lPolicy: Integer); safecall;
    procedure SetSignatureCheck(lSignatureCheck: Integer); safecall;
    procedure SetCertificates(vtCertificates: OleVariant); safecall;
  end;

  // *********************************************************************//
  // DispIntf:  ICertifCheckDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9233063D-D860-4CAD-AD47-BE48CC62D709}
  // *********************************************************************//
  ICertifCheckDisp = dispinterface
    ['{9233063D-D860-4CAD-AD47-BE48CC62D709}']
    function GetPolicy: Integer; dispid 1;
    function GetSignatureCheck: Integer; dispid 2;
    function GetCertificates: OleVariant; dispid 3;
    procedure SetPolicy(lPolicy: Integer); dispid 4;
    procedure SetSignatureCheck(lSignatureCheck: Integer); dispid 5;
    procedure SetCertificates(vtCertificates: OleVariant); dispid 6;
  end;

  // *********************************************************************//
  // Interface: IPin
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B7E86746-2EA7-4237-B523-5BD826A0BAF9}
  // *********************************************************************//
  IPin = interface(IDispatch)
    ['{B7E86746-2EA7-4237-B523-5BD826A0BAF9}']
    procedure SetPinType(lType: Integer); safecall;
    procedure SetID(vtID: OleVariant); safecall;
    procedure SetUsageCode(lUsageCode: Integer); safecall;
    procedure SetShortUsage(const strShortUsage: WideString); safecall;
    procedure SetLongUsage(const strLongUsage: WideString); safecall;
    function GetPinType: Integer; safecall;
    function GetID: OleVariant; safecall;
    function GetUsageCode: Integer; safecall;
    function GetShortUsage: WideString; safecall;
    function GetLongUsage: WideString; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IPinDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B7E86746-2EA7-4237-B523-5BD826A0BAF9}
  // *********************************************************************//
  IPinDisp = dispinterface
    ['{B7E86746-2EA7-4237-B523-5BD826A0BAF9}']
    procedure SetPinType(lType: Integer); dispid 1;
    procedure SetID(vtID: OleVariant); dispid 2;
    procedure SetUsageCode(lUsageCode: Integer); dispid 3;
    procedure SetShortUsage(const strShortUsage: WideString); dispid 4;
    procedure SetLongUsage(const strLongUsage: WideString); dispid 5;
    function GetPinType: Integer; dispid 6;
    function GetID: OleVariant; dispid 7;
    function GetUsageCode: Integer; dispid 8;
    function GetShortUsage: WideString; dispid 9;
    function GetLongUsage: WideString; dispid 10;
  end;

  // *********************************************************************//
  // Interface: IRaw
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9D5F1B11-8438-4C4E-9011-070F2E43C758}
  // *********************************************************************//
  IRaw = interface(IDispatch)
    ['{9D5F1B11-8438-4C4E-9011-070F2E43C758}']
    procedure SetIDData(vtID: OleVariant); safecall;
    procedure GetIDData(out pvtID: OleVariant); safecall;
    procedure SetIDSigData(vtIDSigData: OleVariant); safecall;
    procedure GetIDSigData(out pvtIDSigData: OleVariant); safecall;
    procedure SetAddrData(vtAddrData: OleVariant); safecall;
    procedure GetAddrData(out pvtAddrData: OleVariant); safecall;
    procedure SetAddrSigData(vtAddrSigData: OleVariant); safecall;
    procedure GetAddrSigData(out pvtAddrSigData: OleVariant); safecall;
    procedure SetPictureData(vtPictureData: OleVariant); safecall;
    procedure GetPictureData(out pvtPictureData: OleVariant); safecall;
    procedure SetRNData(vtRNData: OleVariant); safecall;
    procedure GetRNData(out pvtRNData: OleVariant); safecall;
    procedure SetCardData(vtCardData: OleVariant); safecall;
    procedure GetCardData(out pvtCardData: OleVariant); safecall;
    procedure SetTokenInfoData(vtTokenInfoData: OleVariant); safecall;
    procedure GetTokenInfoData(out pvtTokenInfoData: OleVariant); safecall;
    procedure SetChallengeData(vtChallengeData: OleVariant); safecall;
    procedure GetChallengeData(out pvtChallengeData: OleVariant); safecall;
    procedure SetResponseData(vtResponseData: OleVariant); safecall;
    procedure GetResponseData(out pvtResponseData: OleVariant); safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IRawDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9D5F1B11-8438-4C4E-9011-070F2E43C758}
  // *********************************************************************//
  IRawDisp = dispinterface
    ['{9D5F1B11-8438-4C4E-9011-070F2E43C758}']
    procedure SetIDData(vtID: OleVariant); dispid 1;
    procedure GetIDData(out pvtID: OleVariant); dispid 2;
    procedure SetIDSigData(vtIDSigData: OleVariant); dispid 3;
    procedure GetIDSigData(out pvtIDSigData: OleVariant); dispid 4;
    procedure SetAddrData(vtAddrData: OleVariant); dispid 5;
    procedure GetAddrData(out pvtAddrData: OleVariant); dispid 6;
    procedure SetAddrSigData(vtAddrSigData: OleVariant); dispid 7;
    procedure GetAddrSigData(out pvtAddrSigData: OleVariant); dispid 8;
    procedure SetPictureData(vtPictureData: OleVariant); dispid 9;
    procedure GetPictureData(out pvtPictureData: OleVariant); dispid 10;
    procedure SetRNData(vtRNData: OleVariant); dispid 11;
    procedure GetRNData(out pvtRNData: OleVariant); dispid 12;
    procedure SetCardData(vtCardData: OleVariant); dispid 13;
    procedure GetCardData(out pvtCardData: OleVariant); dispid 14;
    procedure SetTokenInfoData(vtTokenInfoData: OleVariant); dispid 15;
    procedure GetTokenInfoData(out pvtTokenInfoData: OleVariant); dispid 16;
    procedure SetChallengeData(vtChallengeData: OleVariant); dispid 17;
    procedure GetChallengeData(out pvtChallengeData: OleVariant); dispid 18;
    procedure SetResponseData(vtResponseData: OleVariant); dispid 19;
    procedure GetResponseData(out pvtResponseData: OleVariant); dispid 20;
  end;

  // *********************************************************************//
  // Interface: ICertif
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {26995400-2928-4E1B-9981-A317D486AC5A}
  // *********************************************************************//
  ICertif = interface(IDispatch)
    ['{26995400-2928-4E1B-9981-A317D486AC5A}']
    function GetCertif: OleVariant; safecall;
    function GetLabel: WideString; safecall;
    function GetStatus: Integer; safecall;
    procedure SetStatus(lStatus: Integer); safecall;
    procedure SetLabel(const bstrLabel: WideString); safecall;
    procedure SetCertif(vtCertif: OleVariant); safecall;
  end;

  // *********************************************************************//
  // DispIntf:  ICertifDisp
  // Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {26995400-2928-4E1B-9981-A317D486AC5A}
  // *********************************************************************//
  ICertifDisp = dispinterface
    ['{26995400-2928-4E1B-9981-A317D486AC5A}']
    function GetCertif: OleVariant; dispid 1;
    function GetLabel: WideString; dispid 2;
    function GetStatus: Integer; dispid 3;
    procedure SetStatus(lStatus: Integer); dispid 4;
    procedure SetLabel(const bstrLabel: WideString); dispid 5;
    procedure SetCertif(vtCertif: OleVariant); dispid 6;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TEIDlib
  // Help String      : EIDlib Class
  // Default Interface: IEIDlib
  // Def. Intf. DISP? : No
  // Event   Interface: _IEIDlibEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TEIDlib = class(TOleControl)
  private
    FIntf: IEIDlib;
    function GetControlInterface: IEIDlib;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function Init(const strReaderName: WideString; lOCSP: Integer; lCRL: Integer; out plHandle: Integer): IRetStatus;
    function Exit: IRetStatus;
    function GetID(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
    function GetAddress(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
    function GetPicture(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
    function GetVersionInfo(bSignature: Integer; out ppMapCollection: IMapCollection; out pvtSignature: OleVariant): IRetStatus;
    function BeginTransaction: IRetStatus;
    function EndTransaction: IRetStatus;
    function FlushCache: IRetStatus;
    function SelectApplication(vtApplication: OleVariant): IRetStatus;
    function SendAPDU(vtCommand: OleVariant; const pPIN: IPin; out pvtResponse: OleVariant): IRetStatus;
    function VerifyPIN(const pPIN: IPin; const bstrPin: WideString; out plTriesLeft: Integer): IRetStatus;
    function ChangePin(const pPIN: IPin; const strOldPin: WideString; const strNewPin: WideString; out plTriesLeft: Integer): IRetStatus;
    function GetPinStatus(const pPIN: IPin; bSignature: Integer; out pvtSignature: OleVariant; out plTriesLeft: Integer): IRetStatus;
    function ReadFile(const pPIN: IPin; vtFileId: OleVariant; out pvtData: OleVariant): IRetStatus;
    function WriteFile(const pPIN: IPin; vtFileId: OleVariant; vtData: OleVariant): IRetStatus;
    function SetRawData(const pRaw: IRaw): IRetStatus;
    function GetRawData(out ppRaw: IRaw): IRetStatus;
    property ControlInterface: IEIDlib read GetControlInterface;
    property DefaultInterface: IEIDlib read GetControlInterface;
  published
    property Anchors;
  end;

  // *********************************************************************//
  // The Class CoRetStatus provides a Create and CreateRemote method to
  // create instances of the default interface IRetStatus exposed by
  // the CoClass RetStatus. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoRetStatus = class
    class function Create: IRetStatus;
    class function CreateRemote(const MachineName: string): IRetStatus;
  end;

  // *********************************************************************//
  // The Class CoMapCollection provides a Create and CreateRemote method to
  // create instances of the default interface IMapCollection exposed by
  // the CoClass MapCollection. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoMapCollection = class
    class function Create: IMapCollection;
    class function CreateRemote(const MachineName: string): IMapCollection;
  end;

  // *********************************************************************//
  // The Class CoCertif provides a Create and CreateRemote method to
  // create instances of the default interface ICertif exposed by
  // the CoClass Certif. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCertif = class
    class function Create: ICertif;
    class function CreateRemote(const MachineName: string): ICertif;
  end;

  // *********************************************************************//
  // The Class CoCertifCheck provides a Create and CreateRemote method to
  // create instances of the default interface ICertifCheck exposed by
  // the CoClass CertifCheck. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCertifCheck = class
    class function Create: ICertifCheck;
    class function CreateRemote(const MachineName: string): ICertifCheck;
  end;

  // *********************************************************************//
  // The Class CoPin provides a Create and CreateRemote method to
  // create instances of the default interface IPin exposed by
  // the CoClass Pin. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoPin = class
    class function Create: IPin;
    class function CreateRemote(const MachineName: string): IPin;
  end;

  // *********************************************************************//
  // The Class CoRaw provides a Create and CreateRemote method to
  // create instances of the default interface IRaw exposed by
  // the CoClass Raw. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoRaw = class
    class function Create: IRaw;
    class function CreateRemote(const MachineName: string): IRaw;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TEIDlib.InitControlData;
const
  CControlData: TControlData2 = (ClassID: '{4E29F09E-EBCC-4A3B-BAA7-8372EC375870}'; EventIID: ''; EventCount: 0; EventDispIDs: nil;
    LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 500);
begin
  ControlData := @CControlData;
end;

procedure TEIDlib.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IEIDlib;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TEIDlib.GetControlInterface: IEIDlib;
begin
  CreateControl;
  Result := FIntf;
end;

function TEIDlib.Init(const strReaderName: WideString; lOCSP: Integer; lCRL: Integer; out plHandle: Integer): IRetStatus;
begin
  Result := DefaultInterface.Init(strReaderName, lOCSP, lCRL, plHandle);
end;

function TEIDlib.Exit: IRetStatus;
begin
  Result := DefaultInterface.Exit;
end;

function TEIDlib.GetID(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
begin
  Result := DefaultInterface.GetID(ppMapCollection, ppCertifCheck);
end;

function TEIDlib.GetAddress(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
begin
  Result := DefaultInterface.GetAddress(ppMapCollection, ppCertifCheck);
end;

function TEIDlib.GetPicture(out ppMapCollection: IMapCollection; out ppCertifCheck: ICertifCheck): IRetStatus;
begin
  Result := DefaultInterface.GetPicture(ppMapCollection, ppCertifCheck);
end;

function TEIDlib.GetVersionInfo(bSignature: Integer; out ppMapCollection: IMapCollection; out pvtSignature: OleVariant): IRetStatus;
begin
  Result := DefaultInterface.GetVersionInfo(bSignature, ppMapCollection, pvtSignature);
end;

function TEIDlib.BeginTransaction: IRetStatus;
begin
  Result := DefaultInterface.BeginTransaction;
end;

function TEIDlib.EndTransaction: IRetStatus;
begin
  Result := DefaultInterface.EndTransaction;
end;

function TEIDlib.FlushCache: IRetStatus;
begin
  Result := DefaultInterface.FlushCache;
end;

function TEIDlib.SelectApplication(vtApplication: OleVariant): IRetStatus;
begin
  Result := DefaultInterface.SelectApplication(vtApplication);
end;

function TEIDlib.SendAPDU(vtCommand: OleVariant; const pPIN: IPin; out pvtResponse: OleVariant): IRetStatus;
begin
  Result := DefaultInterface.SendAPDU(vtCommand, pPIN, pvtResponse);
end;

function TEIDlib.VerifyPIN(const pPIN: IPin; const bstrPin: WideString; out plTriesLeft: Integer): IRetStatus;
begin
  Result := DefaultInterface.VerifyPIN(pPIN, bstrPin, plTriesLeft);
end;

function TEIDlib.ChangePin(const pPIN: IPin; const strOldPin: WideString; const strNewPin: WideString; out plTriesLeft: Integer): IRetStatus;
begin
  Result := DefaultInterface.ChangePin(pPIN, strOldPin, strNewPin, plTriesLeft);
end;

function TEIDlib.GetPinStatus(const pPIN: IPin; bSignature: Integer; out pvtSignature: OleVariant; out plTriesLeft: Integer): IRetStatus;
begin
  Result := DefaultInterface.GetPinStatus(pPIN, bSignature, pvtSignature, plTriesLeft);
end;

function TEIDlib.ReadFile(const pPIN: IPin; vtFileId: OleVariant; out pvtData: OleVariant): IRetStatus;
begin
  Result := DefaultInterface.ReadFile(pPIN, vtFileId, pvtData);
end;

function TEIDlib.WriteFile(const pPIN: IPin; vtFileId: OleVariant; vtData: OleVariant): IRetStatus;
begin
  Result := DefaultInterface.WriteFile(pPIN, vtFileId, vtData);
end;

function TEIDlib.SetRawData(const pRaw: IRaw): IRetStatus;
begin
  Result := DefaultInterface.SetRawData(pRaw);
end;

function TEIDlib.GetRawData(out ppRaw: IRaw): IRetStatus;
begin
  Result := DefaultInterface.GetRawData(ppRaw);
end;

class function CoRetStatus.Create: IRetStatus;
begin
  Result := CreateComObject(CLASS_RetStatus) as IRetStatus;
end;

class function CoRetStatus.CreateRemote(const MachineName: string): IRetStatus;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RetStatus) as IRetStatus;
end;

class function CoMapCollection.Create: IMapCollection;
begin
  Result := CreateComObject(CLASS_MapCollection) as IMapCollection;
end;

class function CoMapCollection.CreateRemote(const MachineName: string): IMapCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MapCollection) as IMapCollection;
end;

class function CoCertif.Create: ICertif;
begin
  Result := CreateComObject(CLASS_Certif) as ICertif;
end;

class function CoCertif.CreateRemote(const MachineName: string): ICertif;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Certif) as ICertif;
end;

class function CoCertifCheck.Create: ICertifCheck;
begin
  Result := CreateComObject(CLASS_CertifCheck) as ICertifCheck;
end;

class function CoCertifCheck.CreateRemote(const MachineName: string): ICertifCheck;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertifCheck) as ICertifCheck;
end;

class function CoPin.Create: IPin;
begin
  Result := CreateComObject(CLASS_Pin) as IPin;
end;

class function CoPin.CreateRemote(const MachineName: string): IPin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Pin) as IPin;
end;

class function CoRaw.Create: IRaw;
begin
  Result := CreateComObject(CLASS_Raw) as IRaw;
end;

class function CoRaw.CreateRemote(const MachineName: string): IRaw;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Raw) as IRaw;
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TEIDlib]);
end;

end.
