unit COPTRLib_TLB;

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

// $Rev: 17244 $
// File generated on 5/08/2013 09:49:27 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\PROGRA~2\OPOS\Epson2\Coptr19.ocx (1)
// LIBID: {C9E1AFB0-1172-11D7-83AD-0050DA238ADA}
// LCID: 0
// Helpfile: C:\PROGRA~2\OPOS\Epson2\CoPtr.hlp
// HelpString: EPSON OPOS POSPrinter Control 1.9
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
// Hint: Parameter 'Type' of _DCoPtr.MarkFeed changed to 'Type_'
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
  COPTRLibMajorVersion = 1;
  COPTRLibMinorVersion = 0;

  LIBID_COPTRLib: TGUID = '{C9E1AFB0-1172-11D7-83AD-0050DA238ADA}';

  DIID__DCoPtr: TGUID         = '{C9E1AFB1-1172-11D7-83AD-0050DA238ADA}';
  DIID__DCoPtrEvents: TGUID   = '{C9E1AFB2-1172-11D7-83AD-0050DA238ADA}';
  CLASS_OPOSPOSPrinter: TGUID = '{C9E1AFB3-1172-11D7-83AD-0050DA238ADA}';

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  _DCoPtr       = dispinterface;
  _DCoPtrEvents = dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  OPOSPOSPrinter = _DCoPtr;

  // *********************************************************************//
  // Declaration of structures, unions and aliases.
  // *********************************************************************//
  PInteger1    = ^Integer; { * }
  PWideString1 = ^WideString; { * }

  // *********************************************************************//
  // DispIntf:  _DCoPtr
  // Flags:     (4112) Hidden Dispatchable
  // GUID:      {C9E1AFB1-1172-11D7-83AD-0050DA238ADA}
  // *********************************************************************//
  _DCoPtr = dispinterface
    ['{C9E1AFB1-1172-11D7-83AD-0050DA238ADA}']
    procedure AboutBox; dispid - 552;
    function PageModePrint(Control: Integer): Integer; dispid 184;
    function ClearPrintArea: Integer; dispid 183;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer; dispid 182;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; var PResult: Integer): Integer; dispid 181;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer; dispid 168;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer; dispid 167;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer; dispid 166;
    function MarkFeed(Type_: Integer): Integer; dispid 159;
    function ChangePrintSide(Side: Integer): Integer; dispid 158;
    function ReleaseDevice: Integer; dispid 157;
    function ClaimDevice(Timeout: Integer): Integer; dispid 156;
    function SOProcessID: Integer; dispid 155;
    procedure SOStatusUpdate(Data: Integer); dispid 154;
    procedure SOOutputComplete(OutputID: Integer); dispid 153;
    procedure SOError(ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer); dispid 152;
    procedure SODirectIO(EventNumber: Integer; var pData: Integer; var pString: WideString); dispid 151;
    function SetLogo(Location: Integer; const Data: WideString): Integer; dispid 150;
    function SetBitmap(BitmapNumber: Integer; Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer; dispid 149;
    function ValidateData(Station: Integer; const Data: WideString): Integer; dispid 148;
    function TransactionPrint(Station: Integer; Control: Integer): Integer; dispid 147;
    function PrintBitmap(Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer; dispid 146;
    function PrintBarCode(Station: Integer; const Data: WideString; Symbology: Integer; Height: Integer; Width: Integer; Alignment: Integer;
      TextPosition: Integer): Integer; dispid 145;
    function RotatePrint(Station: Integer; Rotation: Integer): Integer; dispid 144;
    function CutPaper(Percentage: Integer): Integer; dispid 143;
    function EndRemoval: Integer; dispid 142;
    function BeginRemoval(Timeout: Integer): Integer; dispid 141;
    function EndInsertion: Integer; dispid 140;
    function BeginInsertion(Timeout: Integer): Integer; dispid 139;
    function PrintImmediate(Station: Integer; const Data: WideString): Integer; dispid 138;
    function PrintTwoNormal(Stations: Integer; const Data1: WideString; const Data2: WideString): Integer; dispid 137;
    function PrintNormal(Station: Integer; const Data: WideString): Integer; dispid 136;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer; dispid 135;
    function ClearOutput: Integer; dispid 134;
    function CheckHealth(Level: Integer): Integer; dispid 133;
    function Release: Integer; dispid 132;
    function Claim(Timeout: Integer): Integer; dispid 131;
    function Close: Integer; dispid 130;
    function Open(const DeviceName: WideString): Integer; dispid 129;
    property DeviceName: WideString dispid 15;
    property ServiceObjectVersion: Integer dispid 13;
    property CapCharacterSet: Integer dispid 16;
    property CapConcurrentJrnRec: WordBool dispid 17;
    property DeviceDescription: WideString dispid 14;
    property CapJrn2Color: WordBool dispid 23;
    property CapTransaction: WordBool dispid 21;
    property CapConcurrentJrnSlp: WordBool dispid 18;
    property CapJrnPresent: WordBool dispid 22;
    property ErrorString: WideString dispid 71;
    property RotateSpecial: Integer dispid 75;
    property FlagWhenIdle: WordBool dispid 72;
    property ErrorStation: Integer dispid 70;
    property JrnLineSpacing: Integer dispid 79;
    property JrnLineChars: Integer dispid 76;
    property JrnLineCharsList: WideString dispid 77;
    property JrnLineWidth: Integer dispid 80;
    property JrnLineHeight: Integer dispid 78;
    property State: Integer dispid 9;
    property ResultCode: Integer dispid 7;
    property ControlObjectDescription: WideString dispid 10;
    property ControlObjectVersion: Integer dispid 11;
    property ResultCodeExtended: Integer dispid 8;
    property CapRecDwide: WordBool dispid 38;
    property CapRecBold: WordBool dispid 36;
    property CapRecDwideDhigh: WordBool dispid 39;
    property CapRecEmptySensor: WordBool dispid 40;
    property ServiceObjectDescription: WideString dispid 12;
    property DeviceEnabled: WordBool dispid 4;
    property CapConcurrentRecSlp: WordBool dispid 19;
    property CapCoverSensor: WordBool dispid 20;
    property FreezeEvents: WordBool dispid 5;
    property CheckHealthText: WideString dispid 2;
    property OutputID: Integer dispid 6;
    property Claimed: WordBool dispid 3;
    property BinaryConversion: Integer dispid 1;
    property MapMode: Integer dispid 74;
    property CapSlpEmptySensor: WordBool dispid 58;
    property CapSlpFullslip: WordBool dispid 50;
    property AsyncMode: WordBool dispid 65;
    property CharacterSet: Integer dispid 66;
    property CapSlp2Color: WordBool dispid 51;
    property CapRecUnderline: WordBool dispid 48;
    property CapSlpBarCode: WordBool dispid 52;
    property CapSlpPresent: WordBool dispid 49;
    property CapRecStamp: WordBool dispid 47;
    property CapSlpNearEndSensor: WordBool dispid 61;
    property CapSlpItalic: WordBool dispid 59;
    property CapSlpRight90: WordBool dispid 62;
    property CapSlpRotate180: WordBool dispid 63;
    property CapSlpLeft90: WordBool dispid 60;
    property ErrorLevel: Integer dispid 69;
    property CharacterSetList: WideString dispid 67;
    property CapSlpUnderline: WordBool dispid 64;
    property CoverOpen: WordBool dispid 68;
    property RecNearEnd: WordBool dispid 91;
    property RecSidewaysMaxLines: Integer dispid 92;
    property JrnNearEnd: WordBool dispid 83;
    property RecLineSpacing: Integer dispid 87;
    property RecEmpty: WordBool dispid 90;
    property JrnLetterQuality: WordBool dispid 81;
    property FontTypefaceList: WideString dispid 73;
    property RecLineWidth: Integer dispid 88;
    property RecLetterQuality: WordBool dispid 89;
    property CapSlpDhigh: WordBool dispid 55;
    property CapSlpBitmap: WordBool dispid 53;
    property CapSlpDwide: WordBool dispid 56;
    property CapSlpDwideDhigh: WordBool dispid 57;
    property CapSlpBold: WordBool dispid 54;
    property RecLineChars: Integer dispid 84;
    property JrnEmpty: WordBool dispid 82;
    property RecLineCharsList: WideString dispid 85;
    property RecLineHeight: Integer dispid 86;
    property SlpEmpty: WordBool dispid 102;
    property SlpLetterQuality: WordBool dispid 101;
    property CartridgeNotify: Integer dispid 120;
    property SlpNearEnd: WordBool dispid 103;
    property SlpMaxLines: Integer dispid 106;
    property SlpLineWidth: Integer dispid 100;
    property SlpLineChars: Integer dispid 96;
    property SlpSidewaysMaxChars: Integer dispid 105;
    property SlpSidewaysMaxLines: Integer dispid 104;
    property PageModeArea: WideString dispid 174;
    property CapUpdateFirmware: WordBool dispid 170;
    property PageModeStation: Integer dispid 179;
    property PageModePrintDirection: Integer dispid 178;
    property CapCompareFirmwareVersion: WordBool dispid 169;
    property CapRecPageMode: WordBool dispid 172;
    property CapConcurrentPageMode: WordBool dispid 171;
    property CapUpdateStatistics: WordBool dispid 165;
    property CapSlpPageMode: WordBool dispid 173;
    property CapJrnCartridgeSensor: Integer dispid 113;
    property CapPowerReporting: Integer dispid 109;
    property CapSlpCartridgeSensor: Integer dispid 118;
    property CapRecMarkFeed: Integer dispid 117;
    property SlpBarCodeRotationList: WideString dispid 108;
    property PowerState: Integer dispid 111;
    property PowerNotify: Integer dispid 110;
    property SlpLinesNearEndToEnd: Integer dispid 107;
    property OpenResult: Integer dispid 112;
    property SlpLineSpacing: Integer dispid 99;
    property SlpLineHeight: Integer dispid 98;
    property RecBarCodeRotationList: WideString dispid 95;
    property RecLinesToPaperCut: Integer dispid 94;
    property SlpLineCharsList: WideString dispid 97;
    property CapJrnColor: Integer dispid 114;
    property CapSlpColor: Integer dispid 119;
    property CapRecColor: Integer dispid 116;
    property CapRecCartridgeSensor: Integer dispid 115;
    property PageModeVerticalPosition: Integer dispid 180;
    property CapJrnBold: WordBool dispid 24;
    property CapJrnDhigh: WordBool dispid 25;
    property CapJrnEmptySensor: WordBool dispid 28;
    property CapJrnDwide: WordBool dispid 26;
    property CapJrnItalic: WordBool dispid 29;
    property CapRecPresent: WordBool dispid 32;
    property CapJrnNearEndSensor: WordBool dispid 30;
    property CapRec2Color: WordBool dispid 33;
    property CapRecBarCode: WordBool dispid 34;
    property CapRecRight90: WordBool dispid 45;
    property CapRecRotate180: WordBool dispid 46;
    property CapRecDhigh: WordBool dispid 37;
    property CapRecItalic: WordBool dispid 41;
    property CapRecPapercut: WordBool dispid 44;
    property CapRecBitmap: WordBool dispid 35;
    property CapJrnDwideDhigh: WordBool dispid 27;
    property CapRecLeft90: WordBool dispid 42;
    property CapRecNearEndSensor: WordBool dispid 43;
    property JrnCartridgeState: Integer dispid 121;
    property SlpCartridgeState: Integer dispid 126;
    property RecCartridgeState: Integer dispid 123;
    property JrnCurrentCartridge: Integer dispid 122;
    property SlpPrintSide: Integer dispid 125;
    property PageModeHorizontalPosition: Integer dispid 176;
    property PageModeDescriptor: Integer dispid 175;
    property RecCurrentCartridge: Integer dispid 124;
    property PageModePrintArea: WideString dispid 177;
    property MapCharacterSet: WordBool dispid 161;
    property CapMapCharacterSet: WordBool dispid 160;
    property CapJrnUnderline: WordBool dispid 31;
    property RecSidewaysMaxChars: Integer dispid 93;
    property CapSlpBothSidesPrint: WordBool dispid 128;
    property RecBitmapRotationList: WideString dispid 162;
    property SlpCurrentCartridge: Integer dispid 127;
    property CapStatisticsReporting: WordBool dispid 164;
    property SlpBitmapRotationList: WideString dispid 163;
  end;

  // *********************************************************************//
  // DispIntf:  _DCoPtrEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {C9E1AFB2-1172-11D7-83AD-0050DA238ADA}
  // *********************************************************************//
  _DCoPtrEvents = dispinterface
    ['{C9E1AFB2-1172-11D7-83AD-0050DA238ADA}']
    procedure DirectIOEvent(EventNumber: Integer; var pData: Integer; var pString: WideString); dispid 1;
    procedure ErrorEvent(ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer); dispid 2;
    procedure OutputCompleteEvent(OutputID: Integer); dispid 3;
    procedure StatusUpdateEvent(Data: Integer); dispid 4;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TOPOSPOSPrinter
  // Help String      : EPSON OPOS POSPrinter Control APG1.9
  // Default Interface: _DCoPtr
  // Def. Intf. DISP? : Yes
  // Event   Interface: _DCoPtrEvents
  // TypeFlags        : (34) CanCreate Control
  // *********************************************************************//
  TOPOSPOSPrinterDirectIOEvent = procedure(ASender: TObject; EventNumber: Integer; var pData: Integer; var pString: WideString) of object;
  TOPOSPOSPrinterErrorEvent = procedure(ASender: TObject; ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer)
    of object;
  TOPOSPOSPrinterOutputCompleteEvent = procedure(ASender: TObject; OutputID: Integer) of object;
  TOPOSPOSPrinterStatusUpdateEvent   = procedure(ASender: TObject; Data: Integer) of object;

  TOPOSPOSPrinter = class(TOleControl)
  private
    FOnDirectIOEvent: TOPOSPOSPrinterDirectIOEvent;
    FOnErrorEvent: TOPOSPOSPrinterErrorEvent;
    FOnOutputCompleteEvent: TOPOSPOSPrinterOutputCompleteEvent;
    FOnStatusUpdateEvent: TOPOSPOSPrinterStatusUpdateEvent;
    FIntf: _DCoPtr;
    function GetControlInterface: _DCoPtr;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure AboutBox;
    function PageModePrint(Control: Integer): Integer;
    function ClearPrintArea: Integer;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; var PResult: Integer): Integer;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer;
    function MarkFeed(Type_: Integer): Integer;
    function ChangePrintSide(Side: Integer): Integer;
    function ReleaseDevice: Integer;
    function ClaimDevice(Timeout: Integer): Integer;
    function SOProcessID: Integer;
    procedure SOStatusUpdate(Data: Integer);
    procedure SOOutputComplete(OutputID: Integer);
    procedure SOError(ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer);
    procedure SODirectIO(EventNumber: Integer; var pData: Integer; var pString: WideString);
    function SetLogo(Location: Integer; const Data: WideString): Integer;
    function SetBitmap(BitmapNumber: Integer; Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer;
    function ValidateData(Station: Integer; const Data: WideString): Integer;
    function TransactionPrint(Station: Integer; Control: Integer): Integer;
    function PrintBitmap(Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer;
    function PrintBarCode(Station: Integer; const Data: WideString; Symbology: Integer; Height: Integer; Width: Integer; Alignment: Integer;
      TextPosition: Integer): Integer;
    function RotatePrint(Station: Integer; Rotation: Integer): Integer;
    function CutPaper(Percentage: Integer): Integer;
    function EndRemoval: Integer;
    function BeginRemoval(Timeout: Integer): Integer;
    function EndInsertion: Integer;
    function BeginInsertion(Timeout: Integer): Integer;
    function PrintImmediate(Station: Integer; const Data: WideString): Integer;
    function PrintTwoNormal(Stations: Integer; const Data1: WideString; const Data2: WideString): Integer;
    function PrintNormal(Station: Integer; const Data: WideString): Integer;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
    function ClearOutput: Integer;
    function CheckHealth(Level: Integer): Integer;
    function Release: Integer;
    function Claim(Timeout: Integer): Integer;
    function Close: Integer;
    function Open(const DeviceName: WideString): Integer;
    property ControlInterface: _DCoPtr read GetControlInterface;
    property DefaultInterface: _DCoPtr read GetControlInterface;
  published
    property Anchors;
    property DeviceName: WideString index 15 read GetWideStringProp write SetWideStringProp stored False;
    property ServiceObjectVersion: Integer index 13 read GetIntegerProp write SetIntegerProp stored False;
    property CapCharacterSet: Integer index 16 read GetIntegerProp write SetIntegerProp stored False;
    property CapConcurrentJrnRec: WordBool index 17 read GetWordBoolProp write SetWordBoolProp stored False;
    property DeviceDescription: WideString index 14 read GetWideStringProp write SetWideStringProp stored False;
    property CapJrn2Color: WordBool index 23 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapTransaction: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapConcurrentJrnSlp: WordBool index 18 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnPresent: WordBool index 22 read GetWordBoolProp write SetWordBoolProp stored False;
    property ErrorString: WideString index 71 read GetWideStringProp write SetWideStringProp stored False;
    property RotateSpecial: Integer index 75 read GetIntegerProp write SetIntegerProp stored False;
    property FlagWhenIdle: WordBool index 72 read GetWordBoolProp write SetWordBoolProp stored False;
    property ErrorStation: Integer index 70 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineSpacing: Integer index 79 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineChars: Integer index 76 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineCharsList: WideString index 77 read GetWideStringProp write SetWideStringProp stored False;
    property JrnLineWidth: Integer index 80 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineHeight: Integer index 78 read GetIntegerProp write SetIntegerProp stored False;
    property State: Integer index 9 read GetIntegerProp write SetIntegerProp stored False;
    property ResultCode: Integer index 7 read GetIntegerProp write SetIntegerProp stored False;
    property ControlObjectDescription: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property ControlObjectVersion: Integer index 11 read GetIntegerProp write SetIntegerProp stored False;
    property ResultCodeExtended: Integer index 8 read GetIntegerProp write SetIntegerProp stored False;
    property CapRecDwide: WordBool index 38 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecBold: WordBool index 36 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecDwideDhigh: WordBool index 39 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecEmptySensor: WordBool index 40 read GetWordBoolProp write SetWordBoolProp stored False;
    property ServiceObjectDescription: WideString index 12 read GetWideStringProp write SetWideStringProp stored False;
    property DeviceEnabled: WordBool index 4 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapConcurrentRecSlp: WordBool index 19 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapCoverSensor: WordBool index 20 read GetWordBoolProp write SetWordBoolProp stored False;
    property FreezeEvents: WordBool index 5 read GetWordBoolProp write SetWordBoolProp stored False;
    property CheckHealthText: WideString index 2 read GetWideStringProp write SetWideStringProp stored False;
    property OutputID: Integer index 6 read GetIntegerProp write SetIntegerProp stored False;
    property Claimed: WordBool index 3 read GetWordBoolProp write SetWordBoolProp stored False;
    property BinaryConversion: Integer index 1 read GetIntegerProp write SetIntegerProp stored False;
    property MapMode: Integer index 74 read GetIntegerProp write SetIntegerProp stored False;
    property CapSlpEmptySensor: WordBool index 58 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpFullslip: WordBool index 50 read GetWordBoolProp write SetWordBoolProp stored False;
    property AsyncMode: WordBool index 65 read GetWordBoolProp write SetWordBoolProp stored False;
    property CharacterSet: Integer index 66 read GetIntegerProp write SetIntegerProp stored False;
    property CapSlp2Color: WordBool index 51 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecUnderline: WordBool index 48 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpBarCode: WordBool index 52 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpPresent: WordBool index 49 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecStamp: WordBool index 47 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpNearEndSensor: WordBool index 61 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpItalic: WordBool index 59 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpRight90: WordBool index 62 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpRotate180: WordBool index 63 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpLeft90: WordBool index 60 read GetWordBoolProp write SetWordBoolProp stored False;
    property ErrorLevel: Integer index 69 read GetIntegerProp write SetIntegerProp stored False;
    property CharacterSetList: WideString index 67 read GetWideStringProp write SetWideStringProp stored False;
    property CapSlpUnderline: WordBool index 64 read GetWordBoolProp write SetWordBoolProp stored False;
    property CoverOpen: WordBool index 68 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecNearEnd: WordBool index 91 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecSidewaysMaxLines: Integer index 92 read GetIntegerProp write SetIntegerProp stored False;
    property JrnNearEnd: WordBool index 83 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecLineSpacing: Integer index 87 read GetIntegerProp write SetIntegerProp stored False;
    property RecEmpty: WordBool index 90 read GetWordBoolProp write SetWordBoolProp stored False;
    property JrnLetterQuality: WordBool index 81 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontTypefaceList: WideString index 73 read GetWideStringProp write SetWideStringProp stored False;
    property RecLineWidth: Integer index 88 read GetIntegerProp write SetIntegerProp stored False;
    property RecLetterQuality: WordBool index 89 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpDhigh: WordBool index 55 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpBitmap: WordBool index 53 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpDwide: WordBool index 56 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpDwideDhigh: WordBool index 57 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpBold: WordBool index 54 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecLineChars: Integer index 84 read GetIntegerProp write SetIntegerProp stored False;
    property JrnEmpty: WordBool index 82 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecLineCharsList: WideString index 85 read GetWideStringProp write SetWideStringProp stored False;
    property RecLineHeight: Integer index 86 read GetIntegerProp write SetIntegerProp stored False;
    property SlpEmpty: WordBool index 102 read GetWordBoolProp write SetWordBoolProp stored False;
    property SlpLetterQuality: WordBool index 101 read GetWordBoolProp write SetWordBoolProp stored False;
    property CartridgeNotify: Integer index 120 read GetIntegerProp write SetIntegerProp stored False;
    property SlpNearEnd: WordBool index 103 read GetWordBoolProp write SetWordBoolProp stored False;
    property SlpMaxLines: Integer index 106 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLineWidth: Integer index 100 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLineChars: Integer index 96 read GetIntegerProp write SetIntegerProp stored False;
    property SlpSidewaysMaxChars: Integer index 105 read GetIntegerProp write SetIntegerProp stored False;
    property SlpSidewaysMaxLines: Integer index 104 read GetIntegerProp write SetIntegerProp stored False;
    property PageModeArea: WideString index 174 read GetWideStringProp write SetWideStringProp stored False;
    property CapUpdateFirmware: WordBool index 170 read GetWordBoolProp write SetWordBoolProp stored False;
    property PageModeStation: Integer index 179 read GetIntegerProp write SetIntegerProp stored False;
    property PageModePrintDirection: Integer index 178 read GetIntegerProp write SetIntegerProp stored False;
    property CapCompareFirmwareVersion: WordBool index 169 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecPageMode: WordBool index 172 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapConcurrentPageMode: WordBool index 171 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapUpdateStatistics: WordBool index 165 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapSlpPageMode: WordBool index 173 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnCartridgeSensor: Integer index 113 read GetIntegerProp write SetIntegerProp stored False;
    property CapPowerReporting: Integer index 109 read GetIntegerProp write SetIntegerProp stored False;
    property CapSlpCartridgeSensor: Integer index 118 read GetIntegerProp write SetIntegerProp stored False;
    property CapRecMarkFeed: Integer index 117 read GetIntegerProp write SetIntegerProp stored False;
    property SlpBarCodeRotationList: WideString index 108 read GetWideStringProp write SetWideStringProp stored False;
    property PowerState: Integer index 111 read GetIntegerProp write SetIntegerProp stored False;
    property PowerNotify: Integer index 110 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLinesNearEndToEnd: Integer index 107 read GetIntegerProp write SetIntegerProp stored False;
    property OpenResult: Integer index 112 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLineSpacing: Integer index 99 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLineHeight: Integer index 98 read GetIntegerProp write SetIntegerProp stored False;
    property RecBarCodeRotationList: WideString index 95 read GetWideStringProp write SetWideStringProp stored False;
    property RecLinesToPaperCut: Integer index 94 read GetIntegerProp write SetIntegerProp stored False;
    property SlpLineCharsList: WideString index 97 read GetWideStringProp write SetWideStringProp stored False;
    property CapJrnColor: Integer index 114 read GetIntegerProp write SetIntegerProp stored False;
    property CapSlpColor: Integer index 119 read GetIntegerProp write SetIntegerProp stored False;
    property CapRecColor: Integer index 116 read GetIntegerProp write SetIntegerProp stored False;
    property CapRecCartridgeSensor: Integer index 115 read GetIntegerProp write SetIntegerProp stored False;
    property PageModeVerticalPosition: Integer index 180 read GetIntegerProp write SetIntegerProp stored False;
    property CapJrnBold: WordBool index 24 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnDhigh: WordBool index 25 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnEmptySensor: WordBool index 28 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnDwide: WordBool index 26 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnItalic: WordBool index 29 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecPresent: WordBool index 32 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnNearEndSensor: WordBool index 30 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRec2Color: WordBool index 33 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecBarCode: WordBool index 34 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecRight90: WordBool index 45 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecRotate180: WordBool index 46 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecDhigh: WordBool index 37 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecItalic: WordBool index 41 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecPapercut: WordBool index 44 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecBitmap: WordBool index 35 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnDwideDhigh: WordBool index 27 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecLeft90: WordBool index 42 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapRecNearEndSensor: WordBool index 43 read GetWordBoolProp write SetWordBoolProp stored False;
    property JrnCartridgeState: Integer index 121 read GetIntegerProp write SetIntegerProp stored False;
    property SlpCartridgeState: Integer index 126 read GetIntegerProp write SetIntegerProp stored False;
    property RecCartridgeState: Integer index 123 read GetIntegerProp write SetIntegerProp stored False;
    property JrnCurrentCartridge: Integer index 122 read GetIntegerProp write SetIntegerProp stored False;
    property SlpPrintSide: Integer index 125 read GetIntegerProp write SetIntegerProp stored False;
    property PageModeHorizontalPosition: Integer index 176 read GetIntegerProp write SetIntegerProp stored False;
    property PageModeDescriptor: Integer index 175 read GetIntegerProp write SetIntegerProp stored False;
    property RecCurrentCartridge: Integer index 124 read GetIntegerProp write SetIntegerProp stored False;
    property PageModePrintArea: WideString index 177 read GetWideStringProp write SetWideStringProp stored False;
    property MapCharacterSet: WordBool index 161 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapMapCharacterSet: WordBool index 160 read GetWordBoolProp write SetWordBoolProp stored False;
    property CapJrnUnderline: WordBool index 31 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecSidewaysMaxChars: Integer index 93 read GetIntegerProp write SetIntegerProp stored False;
    property CapSlpBothSidesPrint: WordBool index 128 read GetWordBoolProp write SetWordBoolProp stored False;
    property RecBitmapRotationList: WideString index 162 read GetWideStringProp write SetWideStringProp stored False;
    property SlpCurrentCartridge: Integer index 127 read GetIntegerProp write SetIntegerProp stored False;
    property CapStatisticsReporting: WordBool index 164 read GetWordBoolProp write SetWordBoolProp stored False;
    property SlpBitmapRotationList: WideString index 163 read GetWideStringProp write SetWideStringProp stored False;
    property OnDirectIOEvent: TOPOSPOSPrinterDirectIOEvent read FOnDirectIOEvent write FOnDirectIOEvent;
    property OnErrorEvent: TOPOSPOSPrinterErrorEvent read FOnErrorEvent write FOnErrorEvent;
    property OnOutputCompleteEvent: TOPOSPOSPrinterOutputCompleteEvent read FOnOutputCompleteEvent write FOnOutputCompleteEvent;
    property OnStatusUpdateEvent: TOPOSPOSPrinterStatusUpdateEvent read FOnStatusUpdateEvent write FOnStatusUpdateEvent;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TOPOSPOSPrinter.InitControlData;
const
  CEventDispIDs: array [0 .. 3] of DWORD = ($00000001, $00000002, $00000003, $00000004);
  CControlData: TControlData2 = (ClassID: '{C9E1AFB3-1172-11D7-83AD-0050DA238ADA}'; EventIID: '{C9E1AFB2-1172-11D7-83AD-0050DA238ADA}'; EventCount: 4;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004005 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnDirectIOEvent) - Cardinal(Self);
end;

procedure TOPOSPOSPrinter.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DCoPtr;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TOPOSPOSPrinter.GetControlInterface: _DCoPtr;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TOPOSPOSPrinter.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

function TOPOSPOSPrinter.PageModePrint(Control: Integer): Integer;
begin
  Result := DefaultInterface.PageModePrint(Control);
end;

function TOPOSPOSPrinter.ClearPrintArea: Integer;
begin
  Result := DefaultInterface.ClearPrintArea;
end;

function TOPOSPOSPrinter.UpdateFirmware(const FirmwareFileName: WideString): Integer;
begin
  Result := DefaultInterface.UpdateFirmware(FirmwareFileName);
end;

function TOPOSPOSPrinter.CompareFirmwareVersion(const FirmwareFileName: WideString; var PResult: Integer): Integer;
begin
  Result := DefaultInterface.CompareFirmwareVersion(FirmwareFileName, Result);
end;

function TOPOSPOSPrinter.UpdateStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.UpdateStatistics(StatisticsBuffer);
end;

function TOPOSPOSPrinter.RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.RetrieveStatistics(StatisticsBuffer);
end;

function TOPOSPOSPrinter.ResetStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.ResetStatistics(StatisticsBuffer);
end;

function TOPOSPOSPrinter.MarkFeed(Type_: Integer): Integer;
begin
  Result := DefaultInterface.MarkFeed(Type_);
end;

function TOPOSPOSPrinter.ChangePrintSide(Side: Integer): Integer;
begin
  Result := DefaultInterface.ChangePrintSide(Side);
end;

function TOPOSPOSPrinter.ReleaseDevice: Integer;
begin
  Result := DefaultInterface.ReleaseDevice;
end;

function TOPOSPOSPrinter.ClaimDevice(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.ClaimDevice(Timeout);
end;

function TOPOSPOSPrinter.SOProcessID: Integer;
begin
  Result := DefaultInterface.SOProcessID;
end;

procedure TOPOSPOSPrinter.SOStatusUpdate(Data: Integer);
begin
  DefaultInterface.SOStatusUpdate(Data);
end;

procedure TOPOSPOSPrinter.SOOutputComplete(OutputID: Integer);
begin
  DefaultInterface.SOOutputComplete(OutputID);
end;

procedure TOPOSPOSPrinter.SOError(ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; var pErrorResponse: Integer);
begin
  DefaultInterface.SOError(ResultCode, ResultCodeExtended, ErrorLocus, pErrorResponse);
end;

procedure TOPOSPOSPrinter.SODirectIO(EventNumber: Integer; var pData: Integer; var pString: WideString);
begin
  DefaultInterface.SODirectIO(EventNumber, pData, pString);
end;

function TOPOSPOSPrinter.SetLogo(Location: Integer; const Data: WideString): Integer;
begin
  Result := DefaultInterface.SetLogo(Location, Data);
end;

function TOPOSPOSPrinter.SetBitmap(BitmapNumber: Integer; Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer;
begin
  Result := DefaultInterface.SetBitmap(BitmapNumber, Station, FileName, Width, Alignment);
end;

function TOPOSPOSPrinter.ValidateData(Station: Integer; const Data: WideString): Integer;
begin
  Result := DefaultInterface.ValidateData(Station, Data);
end;

function TOPOSPOSPrinter.TransactionPrint(Station: Integer; Control: Integer): Integer;
begin
  Result := DefaultInterface.TransactionPrint(Station, Control);
end;

function TOPOSPOSPrinter.PrintBitmap(Station: Integer; const FileName: WideString; Width: Integer; Alignment: Integer): Integer;
begin
  Result := DefaultInterface.PrintBitmap(Station, FileName, Width, Alignment);
end;

function TOPOSPOSPrinter.PrintBarCode(Station: Integer; const Data: WideString; Symbology: Integer; Height: Integer; Width: Integer; Alignment: Integer;
  TextPosition: Integer): Integer;
begin
  Result := DefaultInterface.PrintBarCode(Station, Data, Symbology, Height, Width, Alignment, TextPosition);
end;

function TOPOSPOSPrinter.RotatePrint(Station: Integer; Rotation: Integer): Integer;
begin
  Result := DefaultInterface.RotatePrint(Station, Rotation);
end;

function TOPOSPOSPrinter.CutPaper(Percentage: Integer): Integer;
begin
  Result := DefaultInterface.CutPaper(Percentage);
end;

function TOPOSPOSPrinter.EndRemoval: Integer;
begin
  Result := DefaultInterface.EndRemoval;
end;

function TOPOSPOSPrinter.BeginRemoval(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.BeginRemoval(Timeout);
end;

function TOPOSPOSPrinter.EndInsertion: Integer;
begin
  Result := DefaultInterface.EndInsertion;
end;

function TOPOSPOSPrinter.BeginInsertion(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.BeginInsertion(Timeout);
end;

function TOPOSPOSPrinter.PrintImmediate(Station: Integer; const Data: WideString): Integer;
begin
  Result := DefaultInterface.PrintImmediate(Station, Data);
end;

function TOPOSPOSPrinter.PrintTwoNormal(Stations: Integer; const Data1: WideString; const Data2: WideString): Integer;
begin
  Result := DefaultInterface.PrintTwoNormal(Stations, Data1, Data2);
end;

function TOPOSPOSPrinter.PrintNormal(Station: Integer; const Data: WideString): Integer;
begin
  Result := DefaultInterface.PrintNormal(Station, Data);
end;

function TOPOSPOSPrinter.DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
begin
  Result := DefaultInterface.DirectIO(Command, pData, pString);
end;

function TOPOSPOSPrinter.ClearOutput: Integer;
begin
  Result := DefaultInterface.ClearOutput;
end;

function TOPOSPOSPrinter.CheckHealth(Level: Integer): Integer;
begin
  Result := DefaultInterface.CheckHealth(Level);
end;

function TOPOSPOSPrinter.Release: Integer;
begin
  Result := DefaultInterface.Release;
end;

function TOPOSPOSPrinter.Claim(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.Claim(Timeout);
end;

function TOPOSPOSPrinter.Close: Integer;
begin
  Result := DefaultInterface.Close;
end;

function TOPOSPOSPrinter.Open(const DeviceName: WideString): Integer;
begin
  Result := DefaultInterface.Open(DeviceName);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TOPOSPOSPrinter]);
end;

end.
