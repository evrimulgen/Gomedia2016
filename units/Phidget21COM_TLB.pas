unit Phidget21COM_TLB;

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

// $Rev: 17252 $
// File generated on 2/06/2010 11:18:56 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Phidgets\x86\Phidget21COM.dll (1)
// LIBID: {50484945-4745-5453-0000-000000000000}
// LCID: 0
// Helpfile:
// HelpString: Phidget Library 2.1
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// Errors:
// Hint: Member 'Label' of 'IPhidget' changed to 'Label_'
// Hint: Parameter 'file' of IPhidget.EnableLogging changed to 'file_'
// Hint: Member 'repeat' of 'PhidgetIR_CodeInfo' changed to 'repeat_'
// Hint: Parameter 'repeat' of _IPhidgetIREvents.OnCode changed to 'repeat_'
// Error creating palette bitmap of (TPhidgetManager) : Registry key CLSID\{50484945-4745-5453-3000-000000000002}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetAccelerometer) : Registry key CLSID\{50484945-4745-5453-3000-000000000011}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetAdvancedServo) : Registry key CLSID\{50484945-4745-5453-3000-00000000000C}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetDictionary) : Registry key CLSID\{50484945-4745-5453-3000-000000000013}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetEncoder) : Registry key CLSID\{50484945-4745-5453-3000-00000000000E}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetInterfaceKit) : Registry key CLSID\{50484945-4745-5453-3000-000000000003}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetIR) : Registry key CLSID\{50484945-4745-5453-3000-000000000016}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetKeyListener) : Registry key CLSID\{50484945-4745-5453-3000-000000000014}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetLED) : Registry key CLSID\{50484945-4745-5453-3000-00000000000D}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetMotorControl) : Registry key CLSID\{50484945-4745-5453-3000-00000000000B}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetPHSensor) : Registry key CLSID\{50484945-4745-5453-3000-000000000015}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetRFID) : Registry key CLSID\{50484945-4745-5453-3000-000000000007}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetServo) : Registry key CLSID\{50484945-4745-5453-3000-000000000004}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetSpatial) : Registry key CLSID\{50484945-4745-5453-3000-000000000017}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetStepper) : Registry key CLSID\{50484945-4745-5453-3000-00000000000F}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetTemperatureSensor) : Registry key CLSID\{50484945-4745-5453-3000-000000000010}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetTextLCD) : Registry key CLSID\{50484945-4745-5453-3000-00000000000A}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetTextLED) : Registry key CLSID\{50484945-4745-5453-3000-000000000012}\ToolboxBitmap32 not found
// Error creating palette bitmap of (TPhidgetWeightSensor) : Registry key CLSID\{50484945-4745-5453-3000-000000000008}\ToolboxBitmap32 not found
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
  Phidget21COMMajorVersion = 2;
  Phidget21COMMinorVersion = 1;

  LIBID_Phidget21COM: TGUID = '{50484945-4745-5453-0000-000000000000}';

  IID_IPhidget: TGUID                          = '{50484945-4745-5453-1000-000000000001}';
  IID_IPhidgetManager: TGUID                   = '{50484945-4745-5453-1000-000000000002}';
  DIID__IPhidgetManagerEvents: TGUID           = '{50484945-4745-5453-2000-000000000002}';
  CLASS_PhidgetManager: TGUID                  = '{50484945-4745-5453-3000-000000000002}';
  IID_IPhidgetAccelerometer: TGUID             = '{50484945-4745-5453-1000-000000000011}';
  DIID__IPhidgetAccelerometerEvents: TGUID     = '{50484945-4745-5453-2000-000000000011}';
  CLASS_PhidgetAccelerometer: TGUID            = '{50484945-4745-5453-3000-000000000011}';
  IID_IPhidgetAdvancedServo: TGUID             = '{50484945-4745-5453-1000-00000000000C}';
  DIID__IPhidgetAdvancedServoEvents: TGUID     = '{50484945-4745-5453-2000-00000000000C}';
  CLASS_PhidgetAdvancedServo: TGUID            = '{50484945-4745-5453-3000-00000000000C}';
  IID_IPhidgetDictionary: TGUID                = '{50484945-4745-5453-1000-000000000013}';
  DIID__IPhidgetDictionaryEvents: TGUID        = '{50484945-4745-5453-2000-000000000013}';
  CLASS_PhidgetDictionary: TGUID               = '{50484945-4745-5453-3000-000000000013}';
  IID_IPhidgetEncoder: TGUID                   = '{50484945-4745-5453-1000-00000000000E}';
  DIID__IPhidgetEncoderEvents: TGUID           = '{50484945-4745-5453-2000-00000000000E}';
  CLASS_PhidgetEncoder: TGUID                  = '{50484945-4745-5453-3000-00000000000E}';
  IID_IPhidgetInterfaceKit: TGUID              = '{50484945-4745-5453-1000-000000000003}';
  DIID__IPhidgetInterfaceKitEvents: TGUID      = '{50484945-4745-5453-2000-000000000003}';
  CLASS_PhidgetInterfaceKit: TGUID             = '{50484945-4745-5453-3000-000000000003}';
  IID_IPhidgetIR: TGUID                        = '{50484945-4745-5453-1000-000000000016}';
  DIID__IPhidgetIREvents: TGUID                = '{50484945-4745-5453-2000-000000000016}';
  CLASS_PhidgetIR: TGUID                       = '{50484945-4745-5453-3000-000000000016}';
  IID_IPhidgetKeyListener: TGUID               = '{50484945-4745-5453-1000-000000000014}';
  DIID__IPhidgetKeyListenerEvents: TGUID       = '{50484945-4745-5453-2000-000000000014}';
  CLASS_PhidgetKeyListener: TGUID              = '{50484945-4745-5453-3000-000000000014}';
  IID_IPhidgetLED: TGUID                       = '{50484945-4745-5453-1000-00000000000D}';
  DIID__IPhidgetLEDEvents: TGUID               = '{50484945-4745-5453-2000-00000000000D}';
  CLASS_PhidgetLED: TGUID                      = '{50484945-4745-5453-3000-00000000000D}';
  IID_IPhidgetMotorControl: TGUID              = '{50484945-4745-5453-1000-00000000000B}';
  DIID__IPhidgetMotorControlEvents: TGUID      = '{50484945-4745-5453-2000-00000000000B}';
  CLASS_PhidgetMotorControl: TGUID             = '{50484945-4745-5453-3000-00000000000B}';
  IID_IPhidgetPHSensor: TGUID                  = '{50484945-4745-5453-1000-000000000015}';
  DIID__IPhidgetPHSensorEvents: TGUID          = '{50484945-4745-5453-2000-000000000015}';
  CLASS_PhidgetPHSensor: TGUID                 = '{50484945-4745-5453-3000-000000000015}';
  IID_IPhidgetRFID: TGUID                      = '{50484945-4745-5453-1000-000000000007}';
  DIID__IPhidgetRFIDEvents: TGUID              = '{50484945-4745-5453-2000-000000000007}';
  CLASS_PhidgetRFID: TGUID                     = '{50484945-4745-5453-3000-000000000007}';
  IID_IPhidgetServo: TGUID                     = '{50484945-4745-5453-1000-000000000004}';
  DIID__IPhidgetServoEvents: TGUID             = '{50484945-4745-5453-2000-000000000004}';
  CLASS_PhidgetServo: TGUID                    = '{50484945-4745-5453-3000-000000000004}';
  IID_IPhidgetSpatial: TGUID                   = '{50484945-4745-5453-1000-000000000017}';
  DIID__IPhidgetSpatialEvents: TGUID           = '{50484945-4745-5453-2000-000000000017}';
  CLASS_PhidgetSpatial: TGUID                  = '{50484945-4745-5453-3000-000000000017}';
  IID_IPhidgetStepper: TGUID                   = '{50484945-4745-5453-1000-00000000000F}';
  DIID__IPhidgetStepperEvents: TGUID           = '{50484945-4745-5453-2000-00000000000F}';
  CLASS_PhidgetStepper: TGUID                  = '{50484945-4745-5453-3000-00000000000F}';
  IID_IPhidgetTemperatureSensor: TGUID         = '{50484945-4745-5453-1000-000000000010}';
  DIID__IPhidgetTemperatureSensorEvents: TGUID = '{50484945-4745-5453-2000-000000000010}';
  CLASS_PhidgetTemperatureSensor: TGUID        = '{50484945-4745-5453-3000-000000000010}';
  IID_IPhidgetTextLCD: TGUID                   = '{50484945-4745-5453-1000-00000000000A}';
  DIID__IPhidgetTextLCDEvents: TGUID           = '{50484945-4745-5453-2000-00000000000A}';
  CLASS_PhidgetTextLCD: TGUID                  = '{50484945-4745-5453-3000-00000000000A}';
  IID_IPhidgetTextLED: TGUID                   = '{50484945-4745-5453-1000-000000000012}';
  DIID__IPhidgetTextLEDEvents: TGUID           = '{50484945-4745-5453-2000-000000000012}';
  CLASS_PhidgetTextLED: TGUID                  = '{50484945-4745-5453-3000-000000000012}';
  IID_IPhidgetWeightSensor: TGUID              = '{50484945-4745-5453-1000-000000000008}';
  DIID__IPhidgetWeightSensorEvents: TGUID      = '{50484945-4745-5453-2000-000000000008}';
  CLASS_PhidgetWeightSensor: TGUID             = '{50484945-4745-5453-3000-000000000008}';

  // *********************************************************************//
  // Declaration of Enumerations defined in Type Library
  // *********************************************************************//
  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0000_0001
type
  __MIDL___MIDL_itf_Phidget21COM_0000_0001 = TOleEnum;

const
  E_PHIDGETCOM_OK                   = $00000000;
  E_PHIDGETCOM_NOTFOUND             = $00000200;
  E_PHIDGETCOM_NOMEMORY             = $00000201;
  E_PHIDGETCOM_UNEXPECTED           = $00000202;
  E_PHIDGETCOM_INVALIDARG           = $00000203;
  E_PHIDGETCOM_NOTATTACHED          = $00000204;
  E_PHIDGETCOM_INTERRUPTED          = $00000205;
  E_PHIDGETCOM_INVALID              = $00000206;
  E_PHIDGETCOM_NETWORK              = $00000207;
  E_PHIDGETCOM_UNKNOWNVAL           = $00000208;
  E_PHIDGETCOM_BADPASSWORD          = $00000209;
  E_PHIDGETCOM_UNSUPPORTED          = $0000020A;
  E_PHIDGETCOM_DUPLICATE            = $0000020B;
  E_PHIDGETCOM_TIMEOUT              = $0000020C;
  E_PHIDGETCOM_OUTOFBOUNDS          = $0000020D;
  E_PHIDGETCOM_EVENT                = $0000020E;
  E_PHIDGETCOM_NETWORK_NOTCONNECTED = $0000020F;
  E_PHIDGETCOM_WRONGDEVICE          = $00000210;
  E_PHIDGETCOM_CLOSED               = $00000211;
  E_PHIDGETCOM_BADVERSION           = $00000212;
  EE_PHIDGETCOM_NETWORK             = $00008001;
  EE_PHIDGETCOM_BADPASSWORD         = $00008002;
  EE_PHIDGETCOM_BADVERSION          = $00008003;
  EE_PHIDGETCOM_OVERRUN             = $00009002;
  EE_PHIDGETCOM_PACKETLOST          = $00009003;
  EE_PHIDGETCOM_WRAP                = $00009004;
  EE_PHIDGETCOM_OVERTEMP            = $00009005;
  EE_PHIDGETCOM_OVERCURRENT         = $00009006;
  EE_PHIDGETCOM_OUTOFRANGE          = $00009007;
  EE_PHIDGETCOM_BADPOWER            = $00009008;

  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0120_0001
type
  __MIDL___MIDL_itf_Phidget21COM_0120_0001 = TOleEnum;

const
  PHIDGETCOM_SERVO_DEFAULT                   = $00000001;
  PHIDGETCOM_SERVO_RAW_us_MODE               = $00000002;
  PHIDGETCOM_SERVO_HITEC_HS322HD             = $00000003;
  PHIDGETCOM_SERVO_HITEC_HS5245MG            = $00000004;
  PHIDGETCOM_SERVO_HITEC_805BB               = $00000005;
  PHIDGETCOM_SERVO_HITEC_HS422               = $00000006;
  PHIDGETCOM_SERVO_TOWERPRO_MG90             = $00000007;
  PHIDGETCOM_SERVO_HITEC_HSR1425CR           = $00000008;
  PHIDGETCOM_SERVO_HITEC_HS785HB             = $00000009;
  PHIDGETCOM_SERVO_HITEC_HS485HB             = $0000000A;
  PHIDGETCOM_SERVO_HITEC_HS645MG             = $0000000B;
  PHIDGETCOM_SERVO_HITEC_815BB               = $0000000C;
  PHIDGETCOM_SERVO_FIRGELLI_L12_30_50_06_R   = $0000000D;
  PHIDGETCOM_SERVO_FIRGELLI_L12_50_100_06_R  = $0000000E;
  PHIDGETCOM_SERVO_FIRGELLI_L12_50_210_06_R  = $0000000F;
  PHIDGETCOM_SERVO_FIRGELLI_L12_100_50_06_R  = $00000010;
  PHIDGETCOM_SERVO_FIRGELLI_L12_100_100_06_R = $00000011;
  PHIDGETCOM_SERVO_USER_DEFINED              = $00000012;

  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0128_0001
type
  __MIDL___MIDL_itf_Phidget21COM_0128_0001 = TOleEnum;

const
  PHIDGETCOM_IR_ENCODING_UNKNOWN = $00000001;
  PHIDGETCOM_IR_ENCODING_SPACE   = $00000002;
  PHIDGETCOM_IR_ENCODING_PULSE   = $00000003;
  PHIDGETCOM_IR_ENCODING_BIPHASE = $00000004;
  PHIDGETCOM_IR_ENCODING_RC5     = $00000005;
  PHIDGETCOM_IR_ENCODING_RC6     = $00000006;

  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0128_0002
type
  __MIDL___MIDL_itf_Phidget21COM_0128_0002 = TOleEnum;

const
  PHIDGETCOM_IR_LENGTH_UNKNOWN  = $00000001;
  PHIDGETCOM_IR_LENGTH_CONSTANT = $00000002;
  PHIDGETCOM_IR_LENGTH_VARIABLE = $00000003;

  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0132_0001
type
  __MIDL___MIDL_itf_Phidget21COM_0132_0001 = TOleEnum;

const
  PHIDGETCOM_LED_VOLTAGE_1_7V  = $00000001;
  PHIDGETCOM_LED_VOLTAGE_2_75V = $00000002;
  PHIDGETCOM_LED_VOLTAGE_3_9V  = $00000003;
  PHIDGETCOM_LED_VOLTAGE_5_0V  = $00000004;

  // Constants for enum __MIDL___MIDL_itf_Phidget21COM_0132_0002
type
  __MIDL___MIDL_itf_Phidget21COM_0132_0002 = TOleEnum;

const
  PHIDGETCOM_LED_CURRENT_LIMIT_20mA = $00000001;
  PHIDGETCOM_LED_CURRENT_LIMIT_40mA = $00000002;
  PHIDGETCOM_LED_CURRENT_LIMIT_60mA = $00000003;
  PHIDGETCOM_LED_CURRENT_LIMIT_80mA = $00000004;

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  IPhidget                         = interface;
  IPhidgetDisp                     = dispinterface;
  IPhidgetManager                  = interface;
  IPhidgetManagerDisp              = dispinterface;
  _IPhidgetManagerEvents           = dispinterface;
  IPhidgetAccelerometer            = interface;
  IPhidgetAccelerometerDisp        = dispinterface;
  _IPhidgetAccelerometerEvents     = dispinterface;
  IPhidgetAdvancedServo            = interface;
  IPhidgetAdvancedServoDisp        = dispinterface;
  _IPhidgetAdvancedServoEvents     = dispinterface;
  IPhidgetDictionary               = interface;
  IPhidgetDictionaryDisp           = dispinterface;
  _IPhidgetDictionaryEvents        = dispinterface;
  IPhidgetEncoder                  = interface;
  IPhidgetEncoderDisp              = dispinterface;
  _IPhidgetEncoderEvents           = dispinterface;
  IPhidgetInterfaceKit             = interface;
  IPhidgetInterfaceKitDisp         = dispinterface;
  _IPhidgetInterfaceKitEvents      = dispinterface;
  IPhidgetIR                       = interface;
  IPhidgetIRDisp                   = dispinterface;
  _IPhidgetIREvents                = dispinterface;
  IPhidgetKeyListener              = interface;
  IPhidgetKeyListenerDisp          = dispinterface;
  _IPhidgetKeyListenerEvents       = dispinterface;
  IPhidgetLED                      = interface;
  IPhidgetLEDDisp                  = dispinterface;
  _IPhidgetLEDEvents               = dispinterface;
  IPhidgetMotorControl             = interface;
  IPhidgetMotorControlDisp         = dispinterface;
  _IPhidgetMotorControlEvents      = dispinterface;
  IPhidgetPHSensor                 = interface;
  IPhidgetPHSensorDisp             = dispinterface;
  _IPhidgetPHSensorEvents          = dispinterface;
  IPhidgetRFID                     = interface;
  IPhidgetRFIDDisp                 = dispinterface;
  _IPhidgetRFIDEvents              = dispinterface;
  IPhidgetServo                    = interface;
  IPhidgetServoDisp                = dispinterface;
  _IPhidgetServoEvents             = dispinterface;
  IPhidgetSpatial                  = interface;
  IPhidgetSpatialDisp              = dispinterface;
  _IPhidgetSpatialEvents           = dispinterface;
  IPhidgetStepper                  = interface;
  IPhidgetStepperDisp              = dispinterface;
  _IPhidgetStepperEvents           = dispinterface;
  IPhidgetTemperatureSensor        = interface;
  IPhidgetTemperatureSensorDisp    = dispinterface;
  _IPhidgetTemperatureSensorEvents = dispinterface;
  IPhidgetTextLCD                  = interface;
  IPhidgetTextLCDDisp              = dispinterface;
  _IPhidgetTextLCDEvents           = dispinterface;
  IPhidgetTextLED                  = interface;
  IPhidgetTextLEDDisp              = dispinterface;
  _IPhidgetTextLEDEvents           = dispinterface;
  IPhidgetWeightSensor             = interface;
  IPhidgetWeightSensorDisp         = dispinterface;
  _IPhidgetWeightSensorEvents      = dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  PhidgetManager           = IPhidgetManager;
  PhidgetAccelerometer     = IPhidgetAccelerometer;
  PhidgetAdvancedServo     = IPhidgetAdvancedServo;
  PhidgetDictionary        = IPhidgetDictionary;
  PhidgetEncoder           = IPhidgetEncoder;
  PhidgetInterfaceKit      = IPhidgetInterfaceKit;
  PhidgetIR                = IPhidgetIR;
  PhidgetKeyListener       = IPhidgetKeyListener;
  PhidgetLED               = IPhidgetLED;
  PhidgetMotorControl      = IPhidgetMotorControl;
  PhidgetPHSensor          = IPhidgetPHSensor;
  PhidgetRFID              = IPhidgetRFID;
  PhidgetServo             = IPhidgetServo;
  PhidgetSpatial           = IPhidgetSpatial;
  PhidgetStepper           = IPhidgetStepper;
  PhidgetTemperatureSensor = IPhidgetTemperatureSensor;
  PhidgetTextLCD           = IPhidgetTextLCD;
  PhidgetTextLED           = IPhidgetTextLED;
  PhidgetWeightSensor      = IPhidgetWeightSensor;

  // *********************************************************************//
  // Declaration of structures, unions and aliases.
  // *********************************************************************//
  PPSafeArray1 = ^PSafeArray; { * }
  PUserType1   = ^PhidgetIR_CodeInfo; { * }
  PPSafeArray2 = ^PSafeArray; { * }
  PPSafeArray3 = ^PSafeArray; { * }

  PhidgetCOM_Error     = __MIDL___MIDL_itf_Phidget21COM_0000_0001;
  PhidgetCOM_ServoType = __MIDL___MIDL_itf_Phidget21COM_0120_0001;
  PhidgetIR_Encoding   = __MIDL___MIDL_itf_Phidget21COM_0128_0001;
  PhidgetIR_Length     = __MIDL___MIDL_itf_Phidget21COM_0128_0002;

  PhidgetIR_CodeInfo = record
    bitCount: Integer;
    encoding: Integer;
    length: Integer;
    gap: Integer;
    trail: Integer;
    header: array [0 .. 1] of Integer;
    one: array [0 .. 1] of Integer;
    zero: array [0 .. 1] of Integer;
    repeat_: array [0 .. 25] of Integer;
    min_repeat: Integer;
    toggle_mask: array [0 .. 15] of Byte;
    carrierFrequency: Integer;
    dutyCycle: Integer;
  end;

  PhidgetCOM_LEDVoltage      = __MIDL___MIDL_itf_Phidget21COM_0132_0001;
  PhidgetCOM_LEDCurrentLimit = __MIDL___MIDL_itf_Phidget21COM_0132_0002;

{$ALIGN 8}

  PhidgetSpatial_SpatialEventData = record
    Acceleration: array [0 .. 2] of Double;
    angularRate: array [0 .. 2] of Double;
    magneticField: array [0 .. 2] of Double;
    time_seconds: Integer;
    time_microseconds: Integer;
  end;

  // *********************************************************************//
  // Interface: IPhidget
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000001}
  // *********************************************************************//
  IPhidget = interface(IDispatch)
    ['{50484945-4745-5453-1000-000000000001}']
    function Get_DeviceType: WideString; safecall;
    function Get_SerialNumber: SYSINT; safecall;
    function Get_Name: WideString; safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pVal: WideString); safecall;
    function Get_IsAttached: WordBool; safecall;
    function Get_DeviceVersion: SYSINT; safecall;
    function Get_LibraryVersion: WideString; safecall;
    procedure Open(SerialNumber: SYSINT); safecall;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); safecall;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); safecall;
    procedure Close; safecall;
    function Get_port: SYSINT; safecall;
    function Get_Address: WideString; safecall;
    function Get_ServerID: WideString; safecall;
    function Get_IsAttachedToServer: WordBool; safecall;
    procedure EnableLogging(level: SYSINT; const file_: WideString); safecall;
    procedure DisableLogging; safecall;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); safecall;
    procedure WaitForAttachment(milliseconds: SYSINT); safecall;
    procedure EnableVerboseErrors(state: WordBool); safecall;
    property DeviceType: WideString read Get_DeviceType;
    property SerialNumber: SYSINT read Get_SerialNumber;
    property name: WideString read Get_Name;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property IsAttached: WordBool read Get_IsAttached;
    property DeviceVersion: SYSINT read Get_DeviceVersion;
    property LibraryVersion: WideString read Get_LibraryVersion;
    property port: SYSINT read Get_port;
    property Address: WideString read Get_Address;
    property ServerID: WideString read Get_ServerID;
    property IsAttachedToServer: WordBool read Get_IsAttachedToServer;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000001}
  // *********************************************************************//
  IPhidgetDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000001}']
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // Interface: IPhidgetManager
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000002}
  // *********************************************************************//
  IPhidgetManager = interface(IDispatch)
    ['{50484945-4745-5453-1000-000000000002}']
    function Get_Count: Integer; safecall;
    procedure Open; safecall;
    procedure Close; safecall;
    function Get_DeviceType(Index: Integer): WideString; safecall;
    function Get_DeviceName(Index: Integer): WideString; safecall;
    function Get_DeviceLabel(Index: Integer): WideString; safecall;
    function Get_DeviceSerial(Index: Integer): SYSINT; safecall;
    function Get_DeviceVersion(Index: Integer): SYSINT; safecall;
    procedure OpenRemote(const ServerID: WideString; const Password: WideString); safecall;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString); safecall;
    function Get_port: SYSINT; safecall;
    function Get_Address: WideString; safecall;
    function Get_ServerID: WideString; safecall;
    function Get_IsAttachedToServer: WordBool; safecall;
    property Count: Integer read Get_Count;
    property DeviceType[index: Integer]: WideString read Get_DeviceType;
    property DeviceName[index: Integer]: WideString read Get_DeviceName;
    property DeviceLabel[index: Integer]: WideString read Get_DeviceLabel;
    property DeviceSerial[index: Integer]: SYSINT read Get_DeviceSerial;
    property DeviceVersion[index: Integer]: SYSINT read Get_DeviceVersion;
    property port: SYSINT read Get_port;
    property Address: WideString read Get_Address;
    property ServerID: WideString read Get_ServerID;
    property IsAttachedToServer: WordBool read Get_IsAttachedToServer;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetManagerDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000002}
  // *********************************************************************//
  IPhidgetManagerDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000002}']
    property Count: Integer readonly dispid 256;
    procedure Open; dispid 257;
    procedure Close; dispid 258;
    property DeviceType[index: Integer]: WideString readonly dispid 259;
    property DeviceName[index: Integer]: WideString readonly dispid 260;
    property DeviceLabel[index: Integer]: WideString readonly dispid 261;
    property DeviceSerial[index: Integer]: SYSINT readonly dispid 262;
    property DeviceVersion[index: Integer]: SYSINT readonly dispid 263;
    procedure OpenRemote(const ServerID: WideString; const Password: WideString); dispid 264;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString); dispid 265;
    property port: SYSINT readonly dispid 267;
    property Address: WideString readonly dispid 268;
    property ServerID: WideString readonly dispid 269;
    property IsAttachedToServer: WordBool readonly dispid 270;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetManagerEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000002}
  // *********************************************************************//
  _IPhidgetManagerEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000002}']
    procedure OnAttach(const DeviceType: WideString; const DeviceName: WideString; SerialNumber: Integer; DeviceVersion: Integer;
      const DeviceLabel: WideString); dispid 1;
    procedure OnDetach(const DeviceType: WideString; const DeviceName: WideString; SerialNumber: Integer; DeviceVersion: Integer;
      const DeviceLabel: WideString); dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
  end;

  // *********************************************************************//
  // Interface: IPhidgetAccelerometer
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000011}
  // *********************************************************************//
  IPhidgetAccelerometer = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000011}']
    function Get_AccelerationChangeTrigger(Index: Integer): Double; safecall;
    procedure Set_AccelerationChangeTrigger(Index: Integer; pVal: Double); safecall;
    function Get_Acceleration(Index: Integer): Double; safecall;
    function Get_AccelerationMax(Index: Integer): Double; safecall;
    function Get_AccelerationMin(Index: Integer): Double; safecall;
    function Get_AxisCount: Integer; safecall;
    function Get_NumAxis: Integer; safecall;
    property AccelerationChangeTrigger[index: Integer]: Double read Get_AccelerationChangeTrigger write Set_AccelerationChangeTrigger;
    property Acceleration[index: Integer]: Double read Get_Acceleration;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AxisCount: Integer read Get_AxisCount;
    property NumAxis: Integer read Get_NumAxis;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetAccelerometerDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000011}
  // *********************************************************************//
  IPhidgetAccelerometerDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000011}']
    property AccelerationChangeTrigger[index: Integer]: Double dispid 256;
    property Acceleration[index: Integer]: Double readonly dispid 257;
    property AccelerationMax[index: Integer]: Double readonly dispid 258;
    property AccelerationMin[index: Integer]: Double readonly dispid 259;
    property AxisCount: Integer readonly dispid 260;
    property NumAxis: Integer readonly dispid 261;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetAccelerometerEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000011}
  // *********************************************************************//
  _IPhidgetAccelerometerEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000011}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnAccelerationChange(Index: Integer; Acceleration: Double); dispid 6;
  end;

  // *********************************************************************//
  // Interface: IPhidgetAdvancedServo
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000C}
  // *********************************************************************//
  IPhidgetAdvancedServo = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000C}']
    function Get_Position(Index: Integer): Double; safecall;
    procedure Set_Position(Index: Integer; pVal: Double); safecall;
    function Get_VelocityLimit(Index: Integer): Double; safecall;
    procedure Set_VelocityLimit(Index: Integer; pVal: Double); safecall;
    function Get_Acceleration(Index: Integer): Double; safecall;
    procedure Set_Acceleration(Index: Integer; pVal: Double); safecall;
    function Get_Engaged(Index: Integer): WordBool; safecall;
    procedure Set_Engaged(Index: Integer; pVal: WordBool); safecall;
    function Get_MotorCount: Integer; safecall;
    function Get_Velocity(Index: Integer): Double; safecall;
    function Get_Current(Index: Integer): Double; safecall;
    function Get_SpeedRampingOn(Index: Integer): WordBool; safecall;
    procedure Set_SpeedRampingOn(Index: Integer; pVal: WordBool); safecall;
    function Get_AccelerationMin(Index: Integer): Double; safecall;
    function Get_AccelerationMax(Index: Integer): Double; safecall;
    function Get_PositionMin(Index: Integer): Double; safecall;
    procedure Set_PositionMin(Index: Integer; pVal: Double); safecall;
    function Get_PositionMax(Index: Integer): Double; safecall;
    procedure Set_PositionMax(Index: Integer; pVal: Double); safecall;
    function Get_VelocityMin(Index: Integer): Double; safecall;
    function Get_VelocityMax(Index: Integer): Double; safecall;
    function Get_Stopped(Index: Integer): WordBool; safecall;
    function Get_ServoType(Index: Integer): PhidgetCOM_ServoType; safecall;
    procedure Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType); safecall;
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double; VelocityMax: Double); safecall;
    property Position[index: Integer]: Double read Get_Position write Set_Position;
    property VelocityLimit[index: Integer]: Double read Get_VelocityLimit write Set_VelocityLimit;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property MotorCount: Integer read Get_MotorCount;
    property Velocity[index: Integer]: Double read Get_Velocity;
    property Current[index: Integer]: Double read Get_Current;
    property SpeedRampingOn[index: Integer]: WordBool read Get_SpeedRampingOn write Set_SpeedRampingOn;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property PositionMin[index: Integer]: Double read Get_PositionMin write Set_PositionMin;
    property PositionMax[index: Integer]: Double read Get_PositionMax write Set_PositionMax;
    property VelocityMin[index: Integer]: Double read Get_VelocityMin;
    property VelocityMax[index: Integer]: Double read Get_VelocityMax;
    property Stopped[index: Integer]: WordBool read Get_Stopped;
    property ServoType[index: Integer]: PhidgetCOM_ServoType read Get_ServoType write Set_ServoType;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetAdvancedServoDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000C}
  // *********************************************************************//
  IPhidgetAdvancedServoDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000C}']
    property Position[index: Integer]: Double dispid 256;
    property VelocityLimit[index: Integer]: Double dispid 257;
    property Acceleration[index: Integer]: Double dispid 258;
    property Engaged[index: Integer]: WordBool dispid 259;
    property MotorCount: Integer readonly dispid 260;
    property Velocity[index: Integer]: Double readonly dispid 261;
    property Current[index: Integer]: Double readonly dispid 262;
    property SpeedRampingOn[index: Integer]: WordBool dispid 263;
    property AccelerationMin[index: Integer]: Double readonly dispid 264;
    property AccelerationMax[index: Integer]: Double readonly dispid 265;
    property PositionMin[index: Integer]: Double dispid 266;
    property PositionMax[index: Integer]: Double dispid 267;
    property VelocityMin[index: Integer]: Double readonly dispid 268;
    property VelocityMax[index: Integer]: Double readonly dispid 269;
    property Stopped[index: Integer]: WordBool readonly dispid 270;
    property ServoType[index: Integer]: PhidgetCOM_ServoType dispid 271;
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double; VelocityMax: Double); dispid 272;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetAdvancedServoEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000C}
  // *********************************************************************//
  _IPhidgetAdvancedServoEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000C}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnPositionChange(Index: Integer; Position: Double); dispid 6;
    procedure OnCurrentChange(Index: Integer; Current: Double); dispid 7;
    procedure OnVelocityChange(Index: Integer; Velocity: Double); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IPhidgetDictionary
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000013}
  // *********************************************************************//
  IPhidgetDictionary = interface(IDispatch)
    ['{50484945-4745-5453-1000-000000000013}']
    procedure OpenRemote(const ServerID: WideString; const Password: WideString); safecall;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString); safecall;
    procedure Close; safecall;
    procedure Add(const Key: WideString; const Value: WideString; Persistent: WordBool); safecall;
    procedure Remove(const Pattern: WideString); safecall;
    function Get(const Key: WideString): WideString; safecall;
    function Get_Handle: SYSINT; safecall;
    function Get_port: SYSINT; safecall;
    function Get_Address: WideString; safecall;
    function Get_ServerID: WideString; safecall;
    function Get_IsAttachedToServer: WordBool; safecall;
    property Handle: SYSINT read Get_Handle;
    property port: SYSINT read Get_port;
    property Address: WideString read Get_Address;
    property ServerID: WideString read Get_ServerID;
    property IsAttachedToServer: WordBool read Get_IsAttachedToServer;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetDictionaryDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000013}
  // *********************************************************************//
  IPhidgetDictionaryDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000013}']
    procedure OpenRemote(const ServerID: WideString; const Password: WideString); dispid 256;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString); dispid 257;
    procedure Close; dispid 258;
    procedure Add(const Key: WideString; const Value: WideString; Persistent: WordBool); dispid 259;
    procedure Remove(const Pattern: WideString); dispid 260;
    function Get(const Key: WideString): WideString; dispid 261;
    property Handle: SYSINT readonly dispid 262;
    property port: SYSINT readonly dispid 263;
    property Address: WideString readonly dispid 264;
    property ServerID: WideString readonly dispid 265;
    property IsAttachedToServer: WordBool readonly dispid 266;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetDictionaryEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000013}
  // *********************************************************************//
  _IPhidgetDictionaryEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000013}']
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 1;
    procedure OnServerConnect; dispid 2;
    procedure OnServerDisconnect; dispid 3;
  end;

  // *********************************************************************//
  // Interface: IPhidgetEncoder
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000E}
  // *********************************************************************//
  IPhidgetEncoder = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000E}']
    function Get_Position(Index: Integer): Integer; safecall;
    procedure Set_Position(Index: Integer; pVal: Integer); safecall;
    function Get_InputState(Index: Integer): WordBool; safecall;
    function Get_EncoderCount: Integer; safecall;
    function Get_InputCount: Integer; safecall;
    function Get_IndexPosition(Index: Integer): Integer; safecall;
    function Get_Enabled(Index: Integer): WordBool; safecall;
    procedure Set_Enabled(Index: Integer; pVal: WordBool); safecall;
    function Get_EncoderPosition(Index: Integer): Integer; safecall;
    procedure Set_EncoderPosition(Index: Integer; pVal: Integer); safecall;
    function Get_NumEncoders: Integer; safecall;
    function Get_NumInputs: Integer; safecall;
    property Position[index: Integer]: Integer read Get_Position write Set_Position;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property EncoderCount: Integer read Get_EncoderCount;
    property InputCount: Integer read Get_InputCount;
    property IndexPosition[index: Integer]: Integer read Get_IndexPosition;
    property Enabled[index: Integer]: WordBool read Get_Enabled write Set_Enabled;
    property EncoderPosition[index: Integer]: Integer read Get_EncoderPosition write Set_EncoderPosition;
    property NumEncoders: Integer read Get_NumEncoders;
    property NumInputs: Integer read Get_NumInputs;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetEncoderDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000E}
  // *********************************************************************//
  IPhidgetEncoderDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000E}']
    property Position[index: Integer]: Integer dispid 256;
    property InputState[index: Integer]: WordBool readonly dispid 257;
    property EncoderCount: Integer readonly dispid 258;
    property InputCount: Integer readonly dispid 259;
    property IndexPosition[index: Integer]: Integer readonly dispid 263;
    property Enabled[index: Integer]: WordBool dispid 264;
    property EncoderPosition[index: Integer]: Integer dispid 260;
    property NumEncoders: Integer readonly dispid 261;
    property NumInputs: Integer readonly dispid 262;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetEncoderEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000E}
  // *********************************************************************//
  _IPhidgetEncoderEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000E}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnInputChange(Index: Integer; NewState: WordBool); dispid 6;
    procedure OnPositionChange(Index: Integer; Time: Integer; EncoderDisplacement: Integer); dispid 7;
  end;

  // *********************************************************************//
  // Interface: IPhidgetInterfaceKit
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000003}
  // *********************************************************************//
  IPhidgetInterfaceKit = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000003}']
    function Get_OutputState(Index: Integer): WordBool; safecall;
    procedure Set_OutputState(Index: Integer; pVal: WordBool); safecall;
    function Get_OutputCount: Integer; safecall;
    function Get_InputCount: Integer; safecall;
    function Get_InputState(Index: Integer): WordBool; safecall;
    function Get_SensorCount: Integer; safecall;
    function Get_SensorRawValue(Index: Integer): Integer; safecall;
    function Get_SensorChangeTrigger(Index: Integer): Integer; safecall;
    procedure Set_SensorChangeTrigger(Index: Integer; pVal: Integer); safecall;
    function Get_SensorValue(Index: Integer): Integer; safecall;
    procedure Set_Ratiometric(pVal: WordBool); safecall;
    function Get_Ratiometric: WordBool; safecall;
    function Get_NumOutputs: Integer; safecall;
    function Get_NumInputs: Integer; safecall;
    function Get_NumSensors: Integer; safecall;
    function Get_DataRate(Index: Integer): Integer; safecall;
    procedure Set_DataRate(Index: Integer; pVal: Integer); safecall;
    function Get_DataRateMin(Index: Integer): Integer; safecall;
    function Get_DataRateMax(Index: Integer): Integer; safecall;
    property OutputState[index: Integer]: WordBool read Get_OutputState write Set_OutputState;
    property OutputCount: Integer read Get_OutputCount;
    property InputCount: Integer read Get_InputCount;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property SensorCount: Integer read Get_SensorCount;
    property SensorRawValue[index: Integer]: Integer read Get_SensorRawValue;
    property SensorChangeTrigger[index: Integer]: Integer read Get_SensorChangeTrigger write Set_SensorChangeTrigger;
    property SensorValue[index: Integer]: Integer read Get_SensorValue;
    property Ratiometric: WordBool read Get_Ratiometric write Set_Ratiometric;
    property NumOutputs: Integer read Get_NumOutputs;
    property NumInputs: Integer read Get_NumInputs;
    property NumSensors: Integer read Get_NumSensors;
    property DataRate[index: Integer]: Integer read Get_DataRate write Set_DataRate;
    property DataRateMin[index: Integer]: Integer read Get_DataRateMin;
    property DataRateMax[index: Integer]: Integer read Get_DataRateMax;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetInterfaceKitDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000003}
  // *********************************************************************//
  IPhidgetInterfaceKitDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000003}']
    property OutputState[index: Integer]: WordBool dispid 256;
    property OutputCount: Integer readonly dispid 257;
    property InputCount: Integer readonly dispid 258;
    property InputState[index: Integer]: WordBool readonly dispid 259;
    property SensorCount: Integer readonly dispid 260;
    property SensorRawValue[index: Integer]: Integer readonly dispid 261;
    property SensorChangeTrigger[index: Integer]: Integer dispid 262;
    property SensorValue[index: Integer]: Integer readonly dispid 263;
    property Ratiometric: WordBool dispid 264;
    property NumOutputs: Integer readonly dispid 265;
    property NumInputs: Integer readonly dispid 266;
    property NumSensors: Integer readonly dispid 267;
    property DataRate[index: Integer]: Integer dispid 268;
    property DataRateMin[index: Integer]: Integer readonly dispid 269;
    property DataRateMax[index: Integer]: Integer readonly dispid 270;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetInterfaceKitEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000003}
  // *********************************************************************//
  _IPhidgetInterfaceKitEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000003}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnInputChange(Index: Integer; NewState: WordBool); dispid 6;
    procedure OnSensorChange(Index: Integer; SensorValue: Integer); dispid 7;
    procedure OnOutputChange(Index: Integer; NewState: WordBool); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IPhidgetIR
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000016}
  // *********************************************************************//
  IPhidgetIR = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000016}']
    procedure Transmit(var data: PSafeArray; var codeInfo: PhidgetIR_CodeInfo); safecall;
    procedure TransmitRepeat; safecall;
    procedure TransmitRaw(var data: PSafeArray; length: Integer; carrierFrequency: Integer; dutyCyle: Integer; gap: Integer); safecall;
    procedure getRawData(var data: PSafeArray; var dataLength: Integer); safecall;
    procedure getLastCode(var data: PSafeArray; var dataLength: Integer; var bitCount: Integer); safecall;
    procedure getLastLearnedCode(var data: PSafeArray; var dataLength: Integer; var codeInfo: PhidgetIR_CodeInfo); safecall;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetIRDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000016}
  // *********************************************************************//
  IPhidgetIRDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000016}']
    procedure Transmit(var data: { ??PSafeArray } OleVariant; var codeInfo: { ??PhidgetIR_CodeInfo } OleVariant); dispid 256;
    procedure TransmitRepeat; dispid 257;
    procedure TransmitRaw(var data: { ??PSafeArray } OleVariant; length: Integer; carrierFrequency: Integer; dutyCyle: Integer; gap: Integer); dispid 258;
    procedure getRawData(var data: { ??PSafeArray } OleVariant; var dataLength: Integer); dispid 259;
    procedure getLastCode(var data: { ??PSafeArray } OleVariant; var dataLength: Integer; var bitCount: Integer); dispid 260;
    procedure getLastLearnedCode(var data: { ??PSafeArray } OleVariant; var dataLength: Integer; var codeInfo: { ??PhidgetIR_CodeInfo } OleVariant); dispid 261;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetIREvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000016}
  // *********************************************************************//
  _IPhidgetIREvents = dispinterface
    ['{50484945-4745-5453-2000-000000000016}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnCode(var data: { ??PSafeArray } OleVariant; dataLength: Integer; bitCount: Integer; repeat_: WordBool); dispid 6;
    procedure OnLearn(var data: { ??PSafeArray } OleVariant; dataLength: Integer; var codeInfo: { ??PhidgetIR_CodeInfo } OleVariant); dispid 7;
    procedure OnRawData(var data: { ??PSafeArray } OleVariant; dataLength: Integer); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IPhidgetKeyListener
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000014}
  // *********************************************************************//
  IPhidgetKeyListener = interface(IDispatch)
    ['{50484945-4745-5453-1000-000000000014}']
    function Get_Pattern: WideString; safecall;
    procedure Start(const Dict: IPhidgetDictionary; const Pattern: WideString); safecall;
    procedure Stop; safecall;
    property Pattern: WideString read Get_Pattern;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetKeyListenerDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000014}
  // *********************************************************************//
  IPhidgetKeyListenerDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000014}']
    property Pattern: WideString readonly dispid 256;
    procedure Start(const Dict: IPhidgetDictionary; const Pattern: WideString); dispid 257;
    procedure Stop; dispid 258;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetKeyListenerEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000014}
  // *********************************************************************//
  _IPhidgetKeyListenerEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000014}']
    procedure OnKeyChange(const Key: WideString; const Value: WideString); dispid 1;
    procedure OnKeyRemoval(const Key: WideString; const Value: WideString); dispid 2;
  end;

  // *********************************************************************//
  // Interface: IPhidgetLED
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000D}
  // *********************************************************************//
  IPhidgetLED = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000D}']
    procedure Set_DiscreteLED(Index: Integer; pVal: Integer); safecall;
    function Get_DiscreteLED(Index: Integer): Integer; safecall;
    function Get_LEDCount: Integer; safecall;
    function Get_Voltage: PhidgetCOM_LEDVoltage; safecall;
    procedure Set_Voltage(pVal: PhidgetCOM_LEDVoltage); safecall;
    function Get_CurrentLimit: PhidgetCOM_LEDCurrentLimit; safecall;
    procedure Set_CurrentLimit(pVal: PhidgetCOM_LEDCurrentLimit); safecall;
    function Get_NumLEDs: Integer; safecall;
    property DiscreteLED[index: Integer]: Integer read Get_DiscreteLED write Set_DiscreteLED;
    property LEDCount: Integer read Get_LEDCount;
    property Voltage: PhidgetCOM_LEDVoltage read Get_Voltage write Set_Voltage;
    property CurrentLimit: PhidgetCOM_LEDCurrentLimit read Get_CurrentLimit write Set_CurrentLimit;
    property NumLEDs: Integer read Get_NumLEDs;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetLEDDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000D}
  // *********************************************************************//
  IPhidgetLEDDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000D}']
    property DiscreteLED[index: Integer]: Integer dispid 256;
    property LEDCount: Integer readonly dispid 257;
    property Voltage: PhidgetCOM_LEDVoltage dispid 258;
    property CurrentLimit: PhidgetCOM_LEDCurrentLimit dispid 259;
    property NumLEDs: Integer readonly dispid 260;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetLEDEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000D}
  // *********************************************************************//
  _IPhidgetLEDEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000D}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
  end;

  // *********************************************************************//
  // Interface: IPhidgetMotorControl
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000B}
  // *********************************************************************//
  IPhidgetMotorControl = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000B}']
    function Get_Velocity(Index: Integer): Double; safecall;
    procedure Set_Velocity(Index: Integer; pVal: Double); safecall;
    function Get_Acceleration(Index: Integer): Double; safecall;
    procedure Set_Acceleration(Index: Integer; pVal: Double); safecall;
    function Get_MotorCount: Integer; safecall;
    function Get_InputCount: Integer; safecall;
    function Get_InputState(Index: Integer): WordBool; safecall;
    function Get_Current(Index: Integer): Double; safecall;
    function Get_AccelerationMin(Index: Integer): Double; safecall;
    function Get_AccelerationMax(Index: Integer): Double; safecall;
    function Get_MotorSpeed(Index: Integer): Double; safecall;
    procedure Set_MotorSpeed(Index: Integer; pVal: Double); safecall;
    function Get_NumMotors: Integer; safecall;
    function Get_NumInputs: Integer; safecall;
    property Velocity[index: Integer]: Double read Get_Velocity write Set_Velocity;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property MotorCount: Integer read Get_MotorCount;
    property InputCount: Integer read Get_InputCount;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property Current[index: Integer]: Double read Get_Current;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property MotorSpeed[index: Integer]: Double read Get_MotorSpeed write Set_MotorSpeed;
    property NumMotors: Integer read Get_NumMotors;
    property NumInputs: Integer read Get_NumInputs;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetMotorControlDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000B}
  // *********************************************************************//
  IPhidgetMotorControlDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000B}']
    property Velocity[index: Integer]: Double dispid 256;
    property Acceleration[index: Integer]: Double dispid 257;
    property MotorCount: Integer readonly dispid 258;
    property InputCount: Integer readonly dispid 259;
    property InputState[index: Integer]: WordBool readonly dispid 260;
    property Current[index: Integer]: Double readonly dispid 261;
    property AccelerationMin[index: Integer]: Double readonly dispid 262;
    property AccelerationMax[index: Integer]: Double readonly dispid 263;
    property MotorSpeed[index: Integer]: Double dispid 264;
    property NumMotors: Integer readonly dispid 265;
    property NumInputs: Integer readonly dispid 266;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetMotorControlEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000B}
  // *********************************************************************//
  _IPhidgetMotorControlEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000B}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnInputChange(Index: Integer; NewState: WordBool); dispid 6;
    procedure OnVelocityChange(Index: Integer; newVal: Double); dispid 7;
    procedure OnMotorChange(Index: Integer; newVal: Double); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IPhidgetPHSensor
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000015}
  // *********************************************************************//
  IPhidgetPHSensor = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000015}']
    function Get_PHChangeTrigger: Double; safecall;
    procedure Set_PHChangeTrigger(pVal: Double); safecall;
    function Get_PH: Double; safecall;
    function Get_Potential: Double; safecall;
    procedure Set_Temperature(Param1: Double); safecall;
    function Get_PHMin: Double; safecall;
    function Get_PHMax: Double; safecall;
    function Get_PotentialMin: Double; safecall;
    function Get_PotentialMax: Double; safecall;
    property PHChangeTrigger: Double read Get_PHChangeTrigger write Set_PHChangeTrigger;
    property PH: Double read Get_PH;
    property Potential: Double read Get_Potential;
    property Temperature: Double write Set_Temperature;
    property PHMin: Double read Get_PHMin;
    property PHMax: Double read Get_PHMax;
    property PotentialMin: Double read Get_PotentialMin;
    property PotentialMax: Double read Get_PotentialMax;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetPHSensorDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000015}
  // *********************************************************************//
  IPhidgetPHSensorDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000015}']
    property PHChangeTrigger: Double dispid 256;
    property PH: Double readonly dispid 257;
    property Potential: Double readonly dispid 258;
    property Temperature: Double writeonly dispid 259;
    property PHMin: Double readonly dispid 260;
    property PHMax: Double readonly dispid 261;
    property PotentialMin: Double readonly dispid 262;
    property PotentialMax: Double readonly dispid 263;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetPHSensorEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000015}
  // *********************************************************************//
  _IPhidgetPHSensorEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000015}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnPHChange(PH: Double); dispid 6;
  end;

  // *********************************************************************//
  // Interface: IPhidgetRFID
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000007}
  // *********************************************************************//
  IPhidgetRFID = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000007}']
    function Get_OutputState(Index: Integer): WordBool; safecall;
    procedure Set_OutputState(Index: Integer; pVal: WordBool); safecall;
    function Get_OutputCount: Integer; safecall;
    function Get_AntennaOn: WordBool; safecall;
    procedure Set_AntennaOn(pVal: WordBool); safecall;
    function Get_LEDOn: WordBool; safecall;
    procedure Set_LEDOn(pVal: WordBool); safecall;
    function Get_LastTag: WideString; safecall;
    function Get_TagStatus: WordBool; safecall;
    function Get_NumOutputs: Integer; safecall;
    property OutputState[index: Integer]: WordBool read Get_OutputState write Set_OutputState;
    property OutputCount: Integer read Get_OutputCount;
    property AntennaOn: WordBool read Get_AntennaOn write Set_AntennaOn;
    property LEDOn: WordBool read Get_LEDOn write Set_LEDOn;
    property LastTag: WideString read Get_LastTag;
    property TagStatus: WordBool read Get_TagStatus;
    property NumOutputs: Integer read Get_NumOutputs;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetRFIDDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000007}
  // *********************************************************************//
  IPhidgetRFIDDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000007}']
    property OutputState[index: Integer]: WordBool dispid 256;
    property OutputCount: Integer readonly dispid 257;
    property AntennaOn: WordBool dispid 258;
    property LEDOn: WordBool dispid 259;
    property LastTag: WideString readonly dispid 260;
    property TagStatus: WordBool readonly dispid 261;
    property NumOutputs: Integer readonly dispid 262;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetRFIDEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000007}
  // *********************************************************************//
  _IPhidgetRFIDEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000007}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnTag(const TagNumber: WideString); dispid 6;
    procedure OnTagLost(const TagNumber: WideString); dispid 7;
    procedure OnOutputChange(Index: Integer; NewState: WordBool); dispid 8;
  end;

  // *********************************************************************//
  // Interface: IPhidgetServo
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000004}
  // *********************************************************************//
  IPhidgetServo = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000004}']
    function Get_Position(Index: Integer): Double; safecall;
    procedure Set_Position(Index: Integer; pVal: Double); safecall;
    function Get_MotorCount: Integer; safecall;
    function Get_Engaged(Index: Integer): WordBool; safecall;
    procedure Set_Engaged(Index: Integer; pVal: WordBool); safecall;
    function Get_PositionMin(Index: Integer): Double; safecall;
    function Get_PositionMax(Index: Integer): Double; safecall;
    function Get_ServoType(Index: Integer): PhidgetCOM_ServoType; safecall;
    procedure Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType); safecall;
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double); safecall;
    function Get_MotorPosition(Index: Integer): Double; safecall;
    procedure Set_MotorPosition(Index: Integer; pVal: Double); safecall;
    function Get_NumMotors: Integer; safecall;
    function Get_MotorOn(Index: Integer): WordBool; safecall;
    procedure Set_MotorOn(Index: Integer; pVal: WordBool); safecall;
    function Get_MotorPositionMin(Index: Integer): Double; safecall;
    function Get_MotorPositionMax(Index: Integer): Double; safecall;
    property Position[index: Integer]: Double read Get_Position write Set_Position;
    property MotorCount: Integer read Get_MotorCount;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property PositionMin[index: Integer]: Double read Get_PositionMin;
    property PositionMax[index: Integer]: Double read Get_PositionMax;
    property ServoType[index: Integer]: PhidgetCOM_ServoType read Get_ServoType write Set_ServoType;
    property MotorPosition[index: Integer]: Double read Get_MotorPosition write Set_MotorPosition;
    property NumMotors: Integer read Get_NumMotors;
    property MotorOn[index: Integer]: WordBool read Get_MotorOn write Set_MotorOn;
    property MotorPositionMin[index: Integer]: Double read Get_MotorPositionMin;
    property MotorPositionMax[index: Integer]: Double read Get_MotorPositionMax;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetServoDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000004}
  // *********************************************************************//
  IPhidgetServoDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000004}']
    property Position[index: Integer]: Double dispid 256;
    property MotorCount: Integer readonly dispid 257;
    property Engaged[index: Integer]: WordBool dispid 258;
    property PositionMin[index: Integer]: Double readonly dispid 259;
    property PositionMax[index: Integer]: Double readonly dispid 260;
    property ServoType[index: Integer]: PhidgetCOM_ServoType dispid 266;
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double); dispid 267;
    property MotorPosition[index: Integer]: Double dispid 261;
    property NumMotors: Integer readonly dispid 262;
    property MotorOn[index: Integer]: WordBool dispid 263;
    property MotorPositionMin[index: Integer]: Double readonly dispid 264;
    property MotorPositionMax[index: Integer]: Double readonly dispid 265;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetServoEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000004}
  // *********************************************************************//
  _IPhidgetServoEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000004}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnPositionChange(Index: Integer; NewState: Double); dispid 6;
    procedure OnMotorPositionChange(Index: Integer; NewState: Double); dispid 7;
  end;

  // *********************************************************************//
  // Interface: IPhidgetSpatial
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000017}
  // *********************************************************************//
  IPhidgetSpatial = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000017}']
    function Get_AccelerationAxisCount: Integer; safecall;
    function Get_GyroAxisCount: Integer; safecall;
    function Get_CompassAxisCount: Integer; safecall;
    function Get_Acceleration(Index: Integer): Double; safecall;
    function Get_AccelerationMin(Index: Integer): Double; safecall;
    function Get_AccelerationMax(Index: Integer): Double; safecall;
    function Get_angularRate(Index: Integer): Double; safecall;
    function Get_AngularRateMin(Index: Integer): Double; safecall;
    function Get_AngularRateMax(Index: Integer): Double; safecall;
    function Get_magneticField(Index: Integer): Double; safecall;
    function Get_MagneticFieldMin(Index: Integer): Double; safecall;
    function Get_MagneticFieldMax(Index: Integer): Double; safecall;
    function Get_DataRate: Integer; safecall;
    procedure Set_DataRate(pVal: Integer); safecall;
    function Get_DataRateMin: Integer; safecall;
    function Get_DataRateMax: Integer; safecall;
    procedure Set_CompassCorrectionParameters(magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double; gain2: Double;
      T0: Double; T1: Double; T2: Double; T3: Double; T4: Double; Param13: Double); safecall;
    procedure zeroGyro; safecall;
    procedure resetCompassCorrectionParameters; safecall;
    property AccelerationAxisCount: Integer read Get_AccelerationAxisCount;
    property GyroAxisCount: Integer read Get_GyroAxisCount;
    property CompassAxisCount: Integer read Get_CompassAxisCount;
    property Acceleration[index: Integer]: Double read Get_Acceleration;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property angularRate[index: Integer]: Double read Get_angularRate;
    property AngularRateMin[index: Integer]: Double read Get_AngularRateMin;
    property AngularRateMax[index: Integer]: Double read Get_AngularRateMax;
    property magneticField[index: Integer]: Double read Get_magneticField;
    property MagneticFieldMin[index: Integer]: Double read Get_MagneticFieldMin;
    property MagneticFieldMax[index: Integer]: Double read Get_MagneticFieldMax;
    property DataRate: Integer read Get_DataRate write Set_DataRate;
    property DataRateMin: Integer read Get_DataRateMin;
    property DataRateMax: Integer read Get_DataRateMax;
    property CompassCorrectionParameters[magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double; gain2: Double;
      T0: Double; T1: Double; T2: Double; T3: Double; T4: Double]: Double write Set_CompassCorrectionParameters;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetSpatialDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000017}
  // *********************************************************************//
  IPhidgetSpatialDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000017}']
    property AccelerationAxisCount: Integer readonly dispid 256;
    property GyroAxisCount: Integer readonly dispid 257;
    property CompassAxisCount: Integer readonly dispid 258;
    property Acceleration[index: Integer]: Double readonly dispid 259;
    property AccelerationMin[index: Integer]: Double readonly dispid 260;
    property AccelerationMax[index: Integer]: Double readonly dispid 261;
    property angularRate[index: Integer]: Double readonly dispid 262;
    property AngularRateMin[index: Integer]: Double readonly dispid 263;
    property AngularRateMax[index: Integer]: Double readonly dispid 264;
    property magneticField[index: Integer]: Double readonly dispid 265;
    property MagneticFieldMin[index: Integer]: Double readonly dispid 266;
    property MagneticFieldMax[index: Integer]: Double readonly dispid 267;
    property DataRate: Integer dispid 268;
    property DataRateMin: Integer readonly dispid 269;
    property DataRateMax: Integer readonly dispid 270;
    property CompassCorrectionParameters[magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double; gain2: Double;
      T0: Double; T1: Double; T2: Double; T3: Double; T4: Double]: Double writeonly dispid 271;
    procedure zeroGyro; dispid 272;
    procedure resetCompassCorrectionParameters; dispid 273;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetSpatialEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000017}
  // *********************************************************************//
  _IPhidgetSpatialEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000017}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnSpatialData(var data: { ??PSafeArray } OleVariant; dataCount: Integer); dispid 6;
  end;

  // *********************************************************************//
  // Interface: IPhidgetStepper
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000F}
  // *********************************************************************//
  IPhidgetStepper = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000F}']
    function Get_CurrentPosition(Index: Integer): Integer; safecall;
    procedure Set_CurrentPosition(Index: Integer; pVal: Integer); safecall;
    function Get_TargetPosition(Index: Integer): Integer; safecall;
    procedure Set_TargetPosition(Index: Integer; pVal: Integer); safecall;
    function Get_Acceleration(Index: Integer): Double; safecall;
    procedure Set_Acceleration(Index: Integer; pVal: Double); safecall;
    function Get_VelocityLimit(Index: Integer): Double; safecall;
    procedure Set_VelocityLimit(Index: Integer; pVal: Double); safecall;
    function Get_CurrentLimit(Index: Integer): Double; safecall;
    procedure Set_CurrentLimit(Index: Integer; pVal: Double); safecall;
    function Get_Current(Index: Integer): Double; safecall;
    function Get_MotorCount: Integer; safecall;
    function Get_InputCount: Integer; safecall;
    function Get_InputState(Index: Integer): WordBool; safecall;
    function Get_PositionMin(Index: Integer): Integer; safecall;
    function Get_PositionMax(Index: Integer): Integer; safecall;
    function Get_AccelerationMin(Index: Integer): Double; safecall;
    function Get_AccelerationMax(Index: Integer): Double; safecall;
    function Get_VelocityMin(Index: Integer): Double; safecall;
    function Get_VelocityMax(Index: Integer): Double; safecall;
    function Get_Velocity(Index: Integer): Double; safecall;
    function Get_Engaged(Index: Integer): WordBool; safecall;
    procedure Set_Engaged(Index: Integer; pVal: WordBool); safecall;
    function Get_Stopped(Index: Integer): WordBool; safecall;
    function Get_CurrentMin(Index: Integer): Double; safecall;
    function Get_CurrentMax(Index: Integer): Double; safecall;
    property CurrentPosition[index: Integer]: Integer read Get_CurrentPosition write Set_CurrentPosition;
    property TargetPosition[index: Integer]: Integer read Get_TargetPosition write Set_TargetPosition;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property VelocityLimit[index: Integer]: Double read Get_VelocityLimit write Set_VelocityLimit;
    property CurrentLimit[index: Integer]: Double read Get_CurrentLimit write Set_CurrentLimit;
    property Current[index: Integer]: Double read Get_Current;
    property MotorCount: Integer read Get_MotorCount;
    property InputCount: Integer read Get_InputCount;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property PositionMin[index: Integer]: Integer read Get_PositionMin;
    property PositionMax[index: Integer]: Integer read Get_PositionMax;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property VelocityMin[index: Integer]: Double read Get_VelocityMin;
    property VelocityMax[index: Integer]: Double read Get_VelocityMax;
    property Velocity[index: Integer]: Double read Get_Velocity;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property Stopped[index: Integer]: WordBool read Get_Stopped;
    property CurrentMin[index: Integer]: Double read Get_CurrentMin;
    property CurrentMax[index: Integer]: Double read Get_CurrentMax;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetStepperDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000F}
  // *********************************************************************//
  IPhidgetStepperDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000F}']
    property CurrentPosition[index: Integer]: Integer dispid 256;
    property TargetPosition[index: Integer]: Integer dispid 257;
    property Acceleration[index: Integer]: Double dispid 258;
    property VelocityLimit[index: Integer]: Double dispid 259;
    property CurrentLimit[index: Integer]: Double dispid 260;
    property Current[index: Integer]: Double readonly dispid 261;
    property MotorCount: Integer readonly dispid 262;
    property InputCount: Integer readonly dispid 263;
    property InputState[index: Integer]: WordBool readonly dispid 264;
    property PositionMin[index: Integer]: Integer readonly dispid 265;
    property PositionMax[index: Integer]: Integer readonly dispid 266;
    property AccelerationMin[index: Integer]: Double readonly dispid 267;
    property AccelerationMax[index: Integer]: Double readonly dispid 268;
    property VelocityMin[index: Integer]: Double readonly dispid 269;
    property VelocityMax[index: Integer]: Double readonly dispid 270;
    property Velocity[index: Integer]: Double readonly dispid 271;
    property Engaged[index: Integer]: WordBool dispid 272;
    property Stopped[index: Integer]: WordBool readonly dispid 273;
    property CurrentMin[index: Integer]: Double readonly dispid 274;
    property CurrentMax[index: Integer]: Double readonly dispid 275;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetStepperEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000F}
  // *********************************************************************//
  _IPhidgetStepperEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000F}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnInputChange(Index: Integer; NewState: WordBool); dispid 6;
    procedure OnPositionChange(Index: Integer; newVal: Integer); dispid 7;
    procedure OnCurrentChange(Index: Integer; newVal: Double); dispid 8;
    procedure OnVelocityChange(Index: Integer; newVal: Double); dispid 9;
  end;

  // *********************************************************************//
  // Interface: IPhidgetTemperatureSensor
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000010}
  // *********************************************************************//
  IPhidgetTemperatureSensor = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000010}']
    function Get_TemperatureChangeTrigger(Index: Integer): Double; safecall;
    procedure Set_TemperatureChangeTrigger(Index: Integer; pVal: Double); safecall;
    function Get_Temperature(Index: Integer): Double; safecall;
    function Get_AmbientTemperature: Double; safecall;
    function Get_TemperatureInputCount: Integer; safecall;
    function Get_Potential(Index: Integer): Double; safecall;
    function Get_ThermocoupleType(Index: Integer): Integer; safecall;
    procedure Set_ThermocoupleType(Index: Integer; pVal: Integer); safecall;
    function Get_TemperatureMin(Index: Integer): Double; safecall;
    function Get_TemperatureMax(Index: Integer): Double; safecall;
    function Get_AmbientTemperatureMin: Double; safecall;
    function Get_AmbientTemperatureMax: Double; safecall;
    function Get_PotentialMin(Index: Integer): Double; safecall;
    function Get_PotentialMax(Index: Integer): Double; safecall;
    function Get_NumTemperatureInputs: Integer; safecall;
    property TemperatureChangeTrigger[index: Integer]: Double read Get_TemperatureChangeTrigger write Set_TemperatureChangeTrigger;
    property Temperature[index: Integer]: Double read Get_Temperature;
    property AmbientTemperature: Double read Get_AmbientTemperature;
    property TemperatureInputCount: Integer read Get_TemperatureInputCount;
    property Potential[index: Integer]: Double read Get_Potential;
    property ThermocoupleType[index: Integer]: Integer read Get_ThermocoupleType write Set_ThermocoupleType;
    property TemperatureMin[index: Integer]: Double read Get_TemperatureMin;
    property TemperatureMax[index: Integer]: Double read Get_TemperatureMax;
    property AmbientTemperatureMin: Double read Get_AmbientTemperatureMin;
    property AmbientTemperatureMax: Double read Get_AmbientTemperatureMax;
    property PotentialMin[index: Integer]: Double read Get_PotentialMin;
    property PotentialMax[index: Integer]: Double read Get_PotentialMax;
    property NumTemperatureInputs: Integer read Get_NumTemperatureInputs;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetTemperatureSensorDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000010}
  // *********************************************************************//
  IPhidgetTemperatureSensorDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000010}']
    property TemperatureChangeTrigger[index: Integer]: Double dispid 256;
    property Temperature[index: Integer]: Double readonly dispid 257;
    property AmbientTemperature: Double readonly dispid 258;
    property TemperatureInputCount: Integer readonly dispid 259;
    property Potential[index: Integer]: Double readonly dispid 260;
    property ThermocoupleType[index: Integer]: Integer dispid 261;
    property TemperatureMin[index: Integer]: Double readonly dispid 262;
    property TemperatureMax[index: Integer]: Double readonly dispid 263;
    property AmbientTemperatureMin: Double readonly dispid 264;
    property AmbientTemperatureMax: Double readonly dispid 265;
    property PotentialMin[index: Integer]: Double readonly dispid 266;
    property PotentialMax[index: Integer]: Double readonly dispid 267;
    property NumTemperatureInputs: Integer readonly dispid 268;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetTemperatureSensorEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000010}
  // *********************************************************************//
  _IPhidgetTemperatureSensorEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000010}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnTemperatureChange(Index: Integer; Temperature: Double); dispid 6;
  end;

  // *********************************************************************//
  // Interface: IPhidgetTextLCD
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000A}
  // *********************************************************************//
  IPhidgetTextLCD = interface(IPhidget)
    ['{50484945-4745-5453-1000-00000000000A}']
    procedure Set_DisplayString(Row: Integer; const Param2: WideString); safecall;
    function Get_RowCount: Integer; safecall;
    function Get_ColumnCount: Integer; safecall;
    function Get_Backlight: WordBool; safecall;
    procedure Set_Backlight(pVal: WordBool); safecall;
    function Get_CursorOn: WordBool; safecall;
    procedure Set_CursorOn(pVal: WordBool); safecall;
    function Get_CursorBlink: WordBool; safecall;
    procedure Set_CursorBlink(pVal: WordBool); safecall;
    function Get_Contrast: Integer; safecall;
    procedure Set_Contrast(pVal: Integer); safecall;
    procedure Set_CustomCharacter(Index: Integer; Val1: Integer; Param3: Integer); safecall;
    procedure Set_DisplayCharacter(Row: Integer; Column: Integer; const Param3: WideString); safecall;
    function Get_Brightness: Integer; safecall;
    procedure Set_Brightness(pVal: Integer); safecall;
    function Get_NumRows: Integer; safecall;
    function Get_NumColumns: Integer; safecall;
    property DisplayString[Row: Integer]: WideString write Set_DisplayString;
    property RowCount: Integer read Get_RowCount;
    property ColumnCount: Integer read Get_ColumnCount;
    property Backlight: WordBool read Get_Backlight write Set_Backlight;
    property CursorOn: WordBool read Get_CursorOn write Set_CursorOn;
    property CursorBlink: WordBool read Get_CursorBlink write Set_CursorBlink;
    property Contrast: Integer read Get_Contrast write Set_Contrast;
    property CustomCharacter[index: Integer; Val1: Integer]: Integer write Set_CustomCharacter;
    property DisplayCharacter[Row: Integer; Column: Integer]: WideString write Set_DisplayCharacter;
    property Brightness: Integer read Get_Brightness write Set_Brightness;
    property NumRows: Integer read Get_NumRows;
    property NumColumns: Integer read Get_NumColumns;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetTextLCDDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-00000000000A}
  // *********************************************************************//
  IPhidgetTextLCDDisp = dispinterface
    ['{50484945-4745-5453-1000-00000000000A}']
    property DisplayString[Row: Integer]: WideString writeonly dispid 256;
    property RowCount: Integer readonly dispid 257;
    property ColumnCount: Integer readonly dispid 258;
    property Backlight: WordBool dispid 259;
    property CursorOn: WordBool dispid 260;
    property CursorBlink: WordBool dispid 261;
    property Contrast: Integer dispid 262;
    property CustomCharacter[index: Integer; Val1: Integer]: Integer writeonly dispid 263;
    property DisplayCharacter[Row: Integer; Column: Integer]: WideString writeonly dispid 266;
    property Brightness: Integer dispid 267;
    property NumRows: Integer readonly dispid 264;
    property NumColumns: Integer readonly dispid 265;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetTextLCDEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-00000000000A}
  // *********************************************************************//
  _IPhidgetTextLCDEvents = dispinterface
    ['{50484945-4745-5453-2000-00000000000A}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
  end;

  // *********************************************************************//
  // Interface: IPhidgetTextLED
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000012}
  // *********************************************************************//
  IPhidgetTextLED = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000012}']
    procedure Set_DisplayString(Row: Integer; const Param2: WideString); safecall;
    function Get_RowCount: Integer; safecall;
    function Get_ColumnCount: Integer; safecall;
    function Get_Brightness: Integer; safecall;
    procedure Set_Brightness(pVal: Integer); safecall;
    function Get_NumRows: Integer; safecall;
    function Get_NumColumns: Integer; safecall;
    property DisplayString[Row: Integer]: WideString write Set_DisplayString;
    property RowCount: Integer read Get_RowCount;
    property ColumnCount: Integer read Get_ColumnCount;
    property Brightness: Integer read Get_Brightness write Set_Brightness;
    property NumRows: Integer read Get_NumRows;
    property NumColumns: Integer read Get_NumColumns;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetTextLEDDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000012}
  // *********************************************************************//
  IPhidgetTextLEDDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000012}']
    property DisplayString[Row: Integer]: WideString writeonly dispid 256;
    property RowCount: Integer readonly dispid 257;
    property ColumnCount: Integer readonly dispid 258;
    property Brightness: Integer dispid 259;
    property NumRows: Integer readonly dispid 260;
    property NumColumns: Integer readonly dispid 261;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetTextLEDEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000012}
  // *********************************************************************//
  _IPhidgetTextLEDEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000012}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
  end;

  // *********************************************************************//
  // Interface: IPhidgetWeightSensor
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000008}
  // *********************************************************************//
  IPhidgetWeightSensor = interface(IPhidget)
    ['{50484945-4745-5453-1000-000000000008}']
    function Get_WeightChangeTrigger: Double; safecall;
    procedure Set_WeightChangeTrigger(pVal: Double); safecall;
    function Get_Weight: Double; safecall;
    property WeightChangeTrigger: Double read Get_WeightChangeTrigger write Set_WeightChangeTrigger;
    property Weight: Double read Get_Weight;
  end;

  // *********************************************************************//
  // DispIntf:  IPhidgetWeightSensorDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {50484945-4745-5453-1000-000000000008}
  // *********************************************************************//
  IPhidgetWeightSensorDisp = dispinterface
    ['{50484945-4745-5453-1000-000000000008}']
    property WeightChangeTrigger: Double dispid 256;
    property Weight: Double readonly dispid 257;
    property DeviceType: WideString readonly dispid 512;
    property SerialNumber: SYSINT readonly dispid 513;
    property name: WideString readonly dispid 514;
    property Label_: WideString dispid 515;
    property IsAttached: WordBool readonly dispid 516;
    property DeviceVersion: SYSINT readonly dispid 517;
    property LibraryVersion: WideString readonly dispid 518;
    procedure Open(SerialNumber: SYSINT); dispid 519;
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString); dispid 520;
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString); dispid 521;
    procedure Close; dispid 522;
    property port: SYSINT readonly dispid 523;
    property Address: WideString readonly dispid 524;
    property ServerID: WideString readonly dispid 525;
    property IsAttachedToServer: WordBool readonly dispid 526;
    procedure EnableLogging(level: SYSINT; const file_: WideString); dispid 527;
    procedure DisableLogging; dispid 528;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString); dispid 529;
    procedure WaitForAttachment(milliseconds: SYSINT); dispid 530;
    procedure EnableVerboseErrors(state: WordBool); dispid 531;
  end;

  // *********************************************************************//
  // DispIntf:  _IPhidgetWeightSensorEvents
  // Flags:     (4096) Dispatchable
  // GUID:      {50484945-4745-5453-2000-000000000008}
  // *********************************************************************//
  _IPhidgetWeightSensorEvents = dispinterface
    ['{50484945-4745-5453-2000-000000000008}']
    procedure OnAttach; dispid 1;
    procedure OnDetach; dispid 2;
    procedure OnError(const Description: WideString; SCODE: PhidgetCOM_Error); dispid 3;
    procedure OnServerConnect; dispid 4;
    procedure OnServerDisconnect; dispid 5;
    procedure OnWeightChange(Weight: Double); dispid 6;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetManager
  // Help String      : Provides centralized access for all phidgets on the system.
  // Default Interface: IPhidgetManager
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetManagerEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetManagerOnAttach = procedure(ASender: TObject; const DeviceType: WideString; const DeviceName: WideString; SerialNumber: Integer;
    DeviceVersion: Integer; const DeviceLabel: WideString) of object;
  TPhidgetManagerOnDetach = procedure(ASender: TObject; const DeviceType: WideString; const DeviceName: WideString; SerialNumber: Integer;
    DeviceVersion: Integer; const DeviceLabel: WideString) of object;
  TPhidgetManagerOnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;

  TPhidgetManager = class(TOleControl)
  private
    FOnAttach: TPhidgetManagerOnAttach;
    FOnDetach: TPhidgetManagerOnDetach;
    FOnError: TPhidgetManagerOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FIntf: IPhidgetManager;
    function GetControlInterface: IPhidgetManager;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_DeviceType(Index: Integer): WideString;
    function Get_DeviceName(Index: Integer): WideString;
    function Get_DeviceLabel(Index: Integer): WideString;
    function Get_DeviceSerial(Index: Integer): SYSINT;
    function Get_DeviceVersion(Index: Integer): SYSINT;
  public
    procedure Open;
    procedure Close;
    procedure OpenRemote(const ServerID: WideString; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString);
    property ControlInterface: IPhidgetManager read GetControlInterface;
    property DefaultInterface: IPhidgetManager read GetControlInterface;
    property Count: Integer index 256 read GetIntegerProp;
    property DeviceType[index: Integer]: WideString read Get_DeviceType;
    property DeviceName[index: Integer]: WideString read Get_DeviceName;
    property DeviceLabel[index: Integer]: WideString read Get_DeviceLabel;
    property DeviceSerial[index: Integer]: SYSINT read Get_DeviceSerial;
    property DeviceVersion[index: Integer]: SYSINT read Get_DeviceVersion;
    property port: Integer index 267 read GetIntegerProp;
    property Address: WideString index 268 read GetWideStringProp;
    property ServerID: WideString index 269 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 270 read GetWordBoolProp;
  published
    property Anchors;
    property OnAttach: TPhidgetManagerOnAttach read FOnAttach write FOnAttach;
    property OnDetach: TPhidgetManagerOnDetach read FOnDetach write FOnDetach;
    property OnError: TPhidgetManagerOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetAccelerometer
  // Help String      : PhidgetAccelerometer Class.
  // Default Interface: IPhidgetAccelerometer
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetAccelerometerEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetAccelerometerOnError              = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetAccelerometerOnAccelerationChange = procedure(ASender: TObject; Index: Integer; Acceleration: Double) of object;

  TPhidgetAccelerometer = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetAccelerometerOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnAccelerationChange: TPhidgetAccelerometerOnAccelerationChange;
    FIntf: IPhidgetAccelerometer;
    function GetControlInterface: IPhidgetAccelerometer;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_AccelerationChangeTrigger(Index: Integer): Double;
    procedure Set_AccelerationChangeTrigger(Index: Integer; pVal: Double);
    function Get_Acceleration(Index: Integer): Double;
    function Get_AccelerationMax(Index: Integer): Double;
    function Get_AccelerationMin(Index: Integer): Double;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetAccelerometer read GetControlInterface;
    property DefaultInterface: IPhidgetAccelerometer read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property AccelerationChangeTrigger[index: Integer]: Double read Get_AccelerationChangeTrigger write Set_AccelerationChangeTrigger;
    property Acceleration[index: Integer]: Double read Get_Acceleration;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AxisCount: Integer index 260 read GetIntegerProp;
    property NumAxis: Integer index 261 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetAccelerometerOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnAccelerationChange: TPhidgetAccelerometerOnAccelerationChange read FOnAccelerationChange write FOnAccelerationChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetAdvancedServo
  // Help String      : PhidgetAdvancedServo Class.
  // Default Interface: IPhidgetAdvancedServo
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetAdvancedServoEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetAdvancedServoOnError          = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetAdvancedServoOnPositionChange = procedure(ASender: TObject; Index: Integer; Position: Double) of object;
  TPhidgetAdvancedServoOnCurrentChange  = procedure(ASender: TObject; Index: Integer; Current: Double) of object;
  TPhidgetAdvancedServoOnVelocityChange = procedure(ASender: TObject; Index: Integer; Velocity: Double) of object;

  TPhidgetAdvancedServo = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetAdvancedServoOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnPositionChange: TPhidgetAdvancedServoOnPositionChange;
    FOnCurrentChange: TPhidgetAdvancedServoOnCurrentChange;
    FOnVelocityChange: TPhidgetAdvancedServoOnVelocityChange;
    FIntf: IPhidgetAdvancedServo;
    function GetControlInterface: IPhidgetAdvancedServo;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Position(Index: Integer): Double;
    procedure Set_Position(Index: Integer; pVal: Double);
    function Get_VelocityLimit(Index: Integer): Double;
    procedure Set_VelocityLimit(Index: Integer; pVal: Double);
    function Get_Acceleration(Index: Integer): Double;
    procedure Set_Acceleration(Index: Integer; pVal: Double);
    function Get_Engaged(Index: Integer): WordBool;
    procedure Set_Engaged(Index: Integer; pVal: WordBool);
    function Get_Velocity(Index: Integer): Double;
    function Get_Current(Index: Integer): Double;
    function Get_SpeedRampingOn(Index: Integer): WordBool;
    procedure Set_SpeedRampingOn(Index: Integer; pVal: WordBool);
    function Get_AccelerationMin(Index: Integer): Double;
    function Get_AccelerationMax(Index: Integer): Double;
    function Get_PositionMin(Index: Integer): Double;
    procedure Set_PositionMin(Index: Integer; pVal: Double);
    function Get_PositionMax(Index: Integer): Double;
    procedure Set_PositionMax(Index: Integer; pVal: Double);
    function Get_VelocityMin(Index: Integer): Double;
    function Get_VelocityMax(Index: Integer): Double;
    function Get_Stopped(Index: Integer): WordBool;
    function Get_ServoType(Index: Integer): PhidgetCOM_ServoType;
    procedure Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double; VelocityMax: Double);
    property ControlInterface: IPhidgetAdvancedServo read GetControlInterface;
    property DefaultInterface: IPhidgetAdvancedServo read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property Position[index: Integer]: Double read Get_Position write Set_Position;
    property VelocityLimit[index: Integer]: Double read Get_VelocityLimit write Set_VelocityLimit;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property MotorCount: Integer index 260 read GetIntegerProp;
    property Velocity[index: Integer]: Double read Get_Velocity;
    property Current[index: Integer]: Double read Get_Current;
    property SpeedRampingOn[index: Integer]: WordBool read Get_SpeedRampingOn write Set_SpeedRampingOn;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property PositionMin[index: Integer]: Double read Get_PositionMin write Set_PositionMin;
    property PositionMax[index: Integer]: Double read Get_PositionMax write Set_PositionMax;
    property VelocityMin[index: Integer]: Double read Get_VelocityMin;
    property VelocityMax[index: Integer]: Double read Get_VelocityMax;
    property Stopped[index: Integer]: WordBool read Get_Stopped;
    property ServoType[index: Integer]: PhidgetCOM_ServoType read Get_ServoType write Set_ServoType;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetAdvancedServoOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnPositionChange: TPhidgetAdvancedServoOnPositionChange read FOnPositionChange write FOnPositionChange;
    property OnCurrentChange: TPhidgetAdvancedServoOnCurrentChange read FOnCurrentChange write FOnCurrentChange;
    property OnVelocityChange: TPhidgetAdvancedServoOnVelocityChange read FOnVelocityChange write FOnVelocityChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetDictionary
  // Help String      : Provides access to the Dictionary on a PhidgetWebService
  // Default Interface: IPhidgetDictionary
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetDictionaryEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetDictionaryOnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;

  TPhidgetDictionary = class(TOleControl)
  private
    FOnError: TPhidgetDictionaryOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FIntf: IPhidgetDictionary;
    function GetControlInterface: IPhidgetDictionary;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure OpenRemote(const ServerID: WideString; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString);
    procedure Close;
    procedure Add(const Key: WideString; const Value: WideString; Persistent: WordBool);
    procedure Remove(const Pattern: WideString);
    function Get(const Key: WideString): WideString;
    property ControlInterface: IPhidgetDictionary read GetControlInterface;
    property DefaultInterface: IPhidgetDictionary read GetControlInterface;
    property Handle: Integer index 262 read GetIntegerProp;
    property port: Integer index 263 read GetIntegerProp;
    property Address: WideString index 264 read GetWideStringProp;
    property ServerID: WideString index 265 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 266 read GetWordBoolProp;
  published
    property Anchors;
    property OnError: TPhidgetDictionaryOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetEncoder
  // Help String      : PhidgetEncoder Class.
  // Default Interface: IPhidgetEncoder
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetEncoderEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetEncoderOnError          = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetEncoderOnInputChange    = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;
  TPhidgetEncoderOnPositionChange = procedure(ASender: TObject; Index: Integer; Time: Integer; EncoderDisplacement: Integer) of object;

  TPhidgetEncoder = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetEncoderOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnInputChange: TPhidgetEncoderOnInputChange;
    FOnPositionChange: TPhidgetEncoderOnPositionChange;
    FIntf: IPhidgetEncoder;
    function GetControlInterface: IPhidgetEncoder;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Position(Index: Integer): Integer;
    procedure Set_Position(Index: Integer; pVal: Integer);
    function Get_InputState(Index: Integer): WordBool;
    function Get_IndexPosition(Index: Integer): Integer;
    function Get_Enabled(Index: Integer): WordBool;
    procedure Set_Enabled(Index: Integer; pVal: WordBool);
    function Get_EncoderPosition(Index: Integer): Integer;
    procedure Set_EncoderPosition(Index: Integer; pVal: Integer);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetEncoder read GetControlInterface;
    property DefaultInterface: IPhidgetEncoder read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property Position[index: Integer]: Integer read Get_Position write Set_Position;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property EncoderCount: Integer index 258 read GetIntegerProp;
    property InputCount: Integer index 259 read GetIntegerProp;
    property IndexPosition[index: Integer]: Integer read Get_IndexPosition;
    property Enabled[index: Integer]: WordBool read Get_Enabled write Set_Enabled;
    property EncoderPosition[index: Integer]: Integer read Get_EncoderPosition write Set_EncoderPosition;
    property NumEncoders: Integer index 261 read GetIntegerProp;
    property NumInputs: Integer index 262 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetEncoderOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnInputChange: TPhidgetEncoderOnInputChange read FOnInputChange write FOnInputChange;
    property OnPositionChange: TPhidgetEncoderOnPositionChange read FOnPositionChange write FOnPositionChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetInterfaceKit
  // Help String      : PhidgetInterfaceKit Class
  // Default Interface: IPhidgetInterfaceKit
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetInterfaceKitEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetInterfaceKitOnError        = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetInterfaceKitOnInputChange  = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;
  TPhidgetInterfaceKitOnSensorChange = procedure(ASender: TObject; Index: Integer; SensorValue: Integer) of object;
  TPhidgetInterfaceKitOnOutputChange = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;

  TPhidgetInterfaceKit = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetInterfaceKitOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnInputChange: TPhidgetInterfaceKitOnInputChange;
    FOnSensorChange: TPhidgetInterfaceKitOnSensorChange;
    FOnOutputChange: TPhidgetInterfaceKitOnOutputChange;
    FIntf: IPhidgetInterfaceKit;
    function GetControlInterface: IPhidgetInterfaceKit;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_OutputState(Index: Integer): WordBool;
    procedure Set_OutputState(Index: Integer; pVal: WordBool);
    function Get_InputState(Index: Integer): WordBool;
    function Get_SensorRawValue(Index: Integer): Integer;
    function Get_SensorChangeTrigger(Index: Integer): Integer;
    procedure Set_SensorChangeTrigger(Index: Integer; pVal: Integer);
    function Get_SensorValue(Index: Integer): Integer;
    function Get_DataRate(Index: Integer): Integer;
    procedure Set_DataRate(Index: Integer; pVal: Integer);
    function Get_DataRateMin(Index: Integer): Integer;
    function Get_DataRateMax(Index: Integer): Integer;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetInterfaceKit read GetControlInterface;
    property DefaultInterface: IPhidgetInterfaceKit read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property OutputState[index: Integer]: WordBool read Get_OutputState write Set_OutputState;
    property OutputCount: Integer index 257 read GetIntegerProp;
    property InputCount: Integer index 258 read GetIntegerProp;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property SensorCount: Integer index 260 read GetIntegerProp;
    property SensorRawValue[index: Integer]: Integer read Get_SensorRawValue;
    property SensorChangeTrigger[index: Integer]: Integer read Get_SensorChangeTrigger write Set_SensorChangeTrigger;
    property SensorValue[index: Integer]: Integer read Get_SensorValue;
    property NumOutputs: Integer index 265 read GetIntegerProp;
    property NumInputs: Integer index 266 read GetIntegerProp;
    property NumSensors: Integer index 267 read GetIntegerProp;
    property DataRate[index: Integer]: Integer read Get_DataRate write Set_DataRate;
    property DataRateMin[index: Integer]: Integer read Get_DataRateMin;
    property DataRateMax[index: Integer]: Integer read Get_DataRateMax;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property Ratiometric: WordBool index 264 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetInterfaceKitOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnInputChange: TPhidgetInterfaceKitOnInputChange read FOnInputChange write FOnInputChange;
    property OnSensorChange: TPhidgetInterfaceKitOnSensorChange read FOnSensorChange write FOnSensorChange;
    property OnOutputChange: TPhidgetInterfaceKitOnOutputChange read FOnOutputChange write FOnOutputChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetIR
  // Help String      : PhidgetIR Class
  // Default Interface: IPhidgetIR
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetIREvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetIROnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetIROnCode  = procedure(ASender: TObject; var data: { ??PSafeArray } OleVariant; dataLength: Integer; bitCount: Integer; repeat_: WordBool) of object;
  TPhidgetIROnLearn = procedure(ASender: TObject; var data: { ??PSafeArray } OleVariant; dataLength: Integer; var codeInfo: { ??PhidgetIR_CodeInfo } OleVariant)
    of object;
  TPhidgetIROnRawData = procedure(ASender: TObject; var data: { ??PSafeArray } OleVariant; dataLength: Integer) of object;

  TPhidgetIR = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetIROnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnCode: TPhidgetIROnCode;
    FOnLearn: TPhidgetIROnLearn;
    FOnRawData: TPhidgetIROnRawData;
    FIntf: IPhidgetIR;
    function GetControlInterface: IPhidgetIR;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    procedure Transmit(var data: PSafeArray; var codeInfo: PhidgetIR_CodeInfo);
    procedure TransmitRepeat;
    procedure TransmitRaw(var data: PSafeArray; length: Integer; carrierFrequency: Integer; dutyCyle: Integer; gap: Integer);
    procedure getRawData(var data: PSafeArray; var dataLength: Integer);
    procedure getLastCode(var data: PSafeArray; var dataLength: Integer; var bitCount: Integer);
    procedure getLastLearnedCode(var data: PSafeArray; var dataLength: Integer; var codeInfo: PhidgetIR_CodeInfo);
    property ControlInterface: IPhidgetIR read GetControlInterface;
    property DefaultInterface: IPhidgetIR read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetIROnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnCode: TPhidgetIROnCode read FOnCode write FOnCode;
    property OnLearn: TPhidgetIROnLearn read FOnLearn write FOnLearn;
    property OnRawData: TPhidgetIROnRawData read FOnRawData write FOnRawData;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetKeyListener
  // Help String      : Provides Key listening events for the Dictionary.
  // Default Interface: IPhidgetKeyListener
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetKeyListenerEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetKeyListenerOnKeyChange  = procedure(ASender: TObject; const Key: WideString; const Value: WideString) of object;
  TPhidgetKeyListenerOnKeyRemoval = procedure(ASender: TObject; const Key: WideString; const Value: WideString) of object;

  TPhidgetKeyListener = class(TOleControl)
  private
    FOnKeyChange: TPhidgetKeyListenerOnKeyChange;
    FOnKeyRemoval: TPhidgetKeyListenerOnKeyRemoval;
    FIntf: IPhidgetKeyListener;
    function GetControlInterface: IPhidgetKeyListener;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure Start(const Dict: IPhidgetDictionary; const Pattern: WideString);
    procedure Stop;
    property ControlInterface: IPhidgetKeyListener read GetControlInterface;
    property DefaultInterface: IPhidgetKeyListener read GetControlInterface;
    property Pattern: WideString index 256 read GetWideStringProp;
  published
    property Anchors;
    property OnKeyChange: TPhidgetKeyListenerOnKeyChange read FOnKeyChange write FOnKeyChange;
    property OnKeyRemoval: TPhidgetKeyListenerOnKeyRemoval read FOnKeyRemoval write FOnKeyRemoval;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetLED
  // Help String      : PhidgetLED Class.
  // Default Interface: IPhidgetLED
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetLEDEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetLEDOnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;

  TPhidgetLED = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetLEDOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FIntf: IPhidgetLED;
    function GetControlInterface: IPhidgetLED;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    procedure Set_DiscreteLED(Index: Integer; pVal: Integer);
    function Get_DiscreteLED(Index: Integer): Integer;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetLED read GetControlInterface;
    property DefaultInterface: IPhidgetLED read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property DiscreteLED[index: Integer]: Integer read Get_DiscreteLED write Set_DiscreteLED;
    property LEDCount: Integer index 257 read GetIntegerProp;
    property NumLEDs: Integer index 260 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property Voltage: TOleEnum index 258 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property CurrentLimit: TOleEnum index 259 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetLEDOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetMotorControl
  // Help String      : PhidgetMotorControl Class.
  // Default Interface: IPhidgetMotorControl
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetMotorControlEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetMotorControlOnError          = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetMotorControlOnInputChange    = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;
  TPhidgetMotorControlOnVelocityChange = procedure(ASender: TObject; Index: Integer; newVal: Double) of object;
  TPhidgetMotorControlOnMotorChange    = procedure(ASender: TObject; Index: Integer; newVal: Double) of object;

  TPhidgetMotorControl = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetMotorControlOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnInputChange: TPhidgetMotorControlOnInputChange;
    FOnVelocityChange: TPhidgetMotorControlOnVelocityChange;
    FOnMotorChange: TPhidgetMotorControlOnMotorChange;
    FIntf: IPhidgetMotorControl;
    function GetControlInterface: IPhidgetMotorControl;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Velocity(Index: Integer): Double;
    procedure Set_Velocity(Index: Integer; pVal: Double);
    function Get_Acceleration(Index: Integer): Double;
    procedure Set_Acceleration(Index: Integer; pVal: Double);
    function Get_InputState(Index: Integer): WordBool;
    function Get_Current(Index: Integer): Double;
    function Get_AccelerationMin(Index: Integer): Double;
    function Get_AccelerationMax(Index: Integer): Double;
    function Get_MotorSpeed(Index: Integer): Double;
    procedure Set_MotorSpeed(Index: Integer; pVal: Double);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetMotorControl read GetControlInterface;
    property DefaultInterface: IPhidgetMotorControl read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property Velocity[index: Integer]: Double read Get_Velocity write Set_Velocity;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property MotorCount: Integer index 258 read GetIntegerProp;
    property InputCount: Integer index 259 read GetIntegerProp;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property Current[index: Integer]: Double read Get_Current;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property MotorSpeed[index: Integer]: Double read Get_MotorSpeed write Set_MotorSpeed;
    property NumMotors: Integer index 265 read GetIntegerProp;
    property NumInputs: Integer index 266 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetMotorControlOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnInputChange: TPhidgetMotorControlOnInputChange read FOnInputChange write FOnInputChange;
    property OnVelocityChange: TPhidgetMotorControlOnVelocityChange read FOnVelocityChange write FOnVelocityChange;
    property OnMotorChange: TPhidgetMotorControlOnMotorChange read FOnMotorChange write FOnMotorChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetPHSensor
  // Help String      : PhidgetPHSensor Class
  // Default Interface: IPhidgetPHSensor
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetPHSensorEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetPHSensorOnError    = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetPHSensorOnPHChange = procedure(ASender: TObject; PH: Double) of object;

  TPhidgetPHSensor = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetPHSensorOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnPHChange: TPhidgetPHSensorOnPHChange;
    FIntf: IPhidgetPHSensor;
    function GetControlInterface: IPhidgetPHSensor;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetPHSensor read GetControlInterface;
    property DefaultInterface: IPhidgetPHSensor read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property PH: Double index 257 read GetDoubleProp;
    property Potential: Double index 258 read GetDoubleProp;
    property Temperature: Double index 259 write SetDoubleProp;
    property PHMin: Double index 260 read GetDoubleProp;
    property PHMax: Double index 261 read GetDoubleProp;
    property PotentialMin: Double index 262 read GetDoubleProp;
    property PotentialMax: Double index 263 read GetDoubleProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property PHChangeTrigger: Double index 256 read GetDoubleProp write SetDoubleProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetPHSensorOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnPHChange: TPhidgetPHSensorOnPHChange read FOnPHChange write FOnPHChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetRFID
  // Help String      : PhidgetRFID Class
  // Default Interface: IPhidgetRFID
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetRFIDEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetRFIDOnError        = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetRFIDOnTag          = procedure(ASender: TObject; const TagNumber: WideString) of object;
  TPhidgetRFIDOnTagLost      = procedure(ASender: TObject; const TagNumber: WideString) of object;
  TPhidgetRFIDOnOutputChange = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;

  TPhidgetRFID = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetRFIDOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnTag: TPhidgetRFIDOnTag;
    FOnTagLost: TPhidgetRFIDOnTagLost;
    FOnOutputChange: TPhidgetRFIDOnOutputChange;
    FIntf: IPhidgetRFID;
    function GetControlInterface: IPhidgetRFID;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_OutputState(Index: Integer): WordBool;
    procedure Set_OutputState(Index: Integer; pVal: WordBool);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetRFID read GetControlInterface;
    property DefaultInterface: IPhidgetRFID read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property OutputState[index: Integer]: WordBool read Get_OutputState write Set_OutputState;
    property OutputCount: Integer index 257 read GetIntegerProp;
    property LastTag: WideString index 260 read GetWideStringProp;
    property TagStatus: WordBool index 261 read GetWordBoolProp;
    property NumOutputs: Integer index 262 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property AntennaOn: WordBool index 258 read GetWordBoolProp write SetWordBoolProp stored False;
    property LEDOn: WordBool index 259 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetRFIDOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnTag: TPhidgetRFIDOnTag read FOnTag write FOnTag;
    property OnTagLost: TPhidgetRFIDOnTagLost read FOnTagLost write FOnTagLost;
    property OnOutputChange: TPhidgetRFIDOnOutputChange read FOnOutputChange write FOnOutputChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetServo
  // Help String      : PhidgetServo Class.
  // Default Interface: IPhidgetServo
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetServoEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetServoOnError               = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetServoOnPositionChange      = procedure(ASender: TObject; Index: Integer; NewState: Double) of object;
  TPhidgetServoOnMotorPositionChange = procedure(ASender: TObject; Index: Integer; NewState: Double) of object;

  TPhidgetServo = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetServoOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnPositionChange: TPhidgetServoOnPositionChange;
    FOnMotorPositionChange: TPhidgetServoOnMotorPositionChange;
    FIntf: IPhidgetServo;
    function GetControlInterface: IPhidgetServo;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Position(Index: Integer): Double;
    procedure Set_Position(Index: Integer; pVal: Double);
    function Get_Engaged(Index: Integer): WordBool;
    procedure Set_Engaged(Index: Integer; pVal: WordBool);
    function Get_PositionMin(Index: Integer): Double;
    function Get_PositionMax(Index: Integer): Double;
    function Get_ServoType(Index: Integer): PhidgetCOM_ServoType;
    procedure Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType);
    function Get_MotorPosition(Index: Integer): Double;
    procedure Set_MotorPosition(Index: Integer; pVal: Double);
    function Get_MotorOn(Index: Integer): WordBool;
    procedure Set_MotorOn(Index: Integer; pVal: WordBool);
    function Get_MotorPositionMin(Index: Integer): Double;
    function Get_MotorPositionMax(Index: Integer): Double;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    procedure SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double);
    property ControlInterface: IPhidgetServo read GetControlInterface;
    property DefaultInterface: IPhidgetServo read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property Position[index: Integer]: Double read Get_Position write Set_Position;
    property MotorCount: Integer index 257 read GetIntegerProp;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property PositionMin[index: Integer]: Double read Get_PositionMin;
    property PositionMax[index: Integer]: Double read Get_PositionMax;
    property ServoType[index: Integer]: PhidgetCOM_ServoType read Get_ServoType write Set_ServoType;
    property MotorPosition[index: Integer]: Double read Get_MotorPosition write Set_MotorPosition;
    property NumMotors: Integer index 262 read GetIntegerProp;
    property MotorOn[index: Integer]: WordBool read Get_MotorOn write Set_MotorOn;
    property MotorPositionMin[index: Integer]: Double read Get_MotorPositionMin;
    property MotorPositionMax[index: Integer]: Double read Get_MotorPositionMax;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetServoOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnPositionChange: TPhidgetServoOnPositionChange read FOnPositionChange write FOnPositionChange;
    property OnMotorPositionChange: TPhidgetServoOnMotorPositionChange read FOnMotorPositionChange write FOnMotorPositionChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetSpatial
  // Help String      : PhidgetSpatial Class
  // Default Interface: IPhidgetSpatial
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetSpatialEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetSpatialOnError       = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetSpatialOnSpatialData = procedure(ASender: TObject; var data: { ??PSafeArray } OleVariant; dataCount: Integer) of object;

  TPhidgetSpatial = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetSpatialOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnSpatialData: TPhidgetSpatialOnSpatialData;
    FIntf: IPhidgetSpatial;
    function GetControlInterface: IPhidgetSpatial;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_Acceleration(Index: Integer): Double;
    function Get_AccelerationMin(Index: Integer): Double;
    function Get_AccelerationMax(Index: Integer): Double;
    function Get_angularRate(Index: Integer): Double;
    function Get_AngularRateMin(Index: Integer): Double;
    function Get_AngularRateMax(Index: Integer): Double;
    function Get_magneticField(Index: Integer): Double;
    function Get_MagneticFieldMin(Index: Integer): Double;
    function Get_MagneticFieldMax(Index: Integer): Double;
    procedure Set_CompassCorrectionParameters(magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double; gain2: Double;
      T0: Double; T1: Double; T2: Double; T3: Double; T4: Double; Param13: Double);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    procedure zeroGyro;
    procedure resetCompassCorrectionParameters;
    property ControlInterface: IPhidgetSpatial read GetControlInterface;
    property DefaultInterface: IPhidgetSpatial read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property AccelerationAxisCount: Integer index 256 read GetIntegerProp;
    property GyroAxisCount: Integer index 257 read GetIntegerProp;
    property CompassAxisCount: Integer index 258 read GetIntegerProp;
    property Acceleration[index: Integer]: Double read Get_Acceleration;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property angularRate[index: Integer]: Double read Get_angularRate;
    property AngularRateMin[index: Integer]: Double read Get_AngularRateMin;
    property AngularRateMax[index: Integer]: Double read Get_AngularRateMax;
    property magneticField[index: Integer]: Double read Get_magneticField;
    property MagneticFieldMin[index: Integer]: Double read Get_MagneticFieldMin;
    property MagneticFieldMax[index: Integer]: Double read Get_MagneticFieldMax;
    property DataRateMin: Integer index 269 read GetIntegerProp;
    property DataRateMax: Integer index 270 read GetIntegerProp;
    property CompassCorrectionParameters[magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double; gain2: Double;
      T0: Double; T1: Double; T2: Double; T3: Double; T4: Double]: Double write Set_CompassCorrectionParameters;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property DataRate: Integer index 268 read GetIntegerProp write SetIntegerProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetSpatialOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnSpatialData: TPhidgetSpatialOnSpatialData read FOnSpatialData write FOnSpatialData;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetStepper
  // Help String      : PhidgetStepper Class.
  // Default Interface: IPhidgetStepper
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetStepperEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetStepperOnError          = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetStepperOnInputChange    = procedure(ASender: TObject; Index: Integer; NewState: WordBool) of object;
  TPhidgetStepperOnPositionChange = procedure(ASender: TObject; Index: Integer; newVal: Integer) of object;
  TPhidgetStepperOnCurrentChange  = procedure(ASender: TObject; Index: Integer; newVal: Double) of object;
  TPhidgetStepperOnVelocityChange = procedure(ASender: TObject; Index: Integer; newVal: Double) of object;

  TPhidgetStepper = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetStepperOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnInputChange: TPhidgetStepperOnInputChange;
    FOnPositionChange: TPhidgetStepperOnPositionChange;
    FOnCurrentChange: TPhidgetStepperOnCurrentChange;
    FOnVelocityChange: TPhidgetStepperOnVelocityChange;
    FIntf: IPhidgetStepper;
    function GetControlInterface: IPhidgetStepper;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_CurrentPosition(Index: Integer): Integer;
    procedure Set_CurrentPosition(Index: Integer; pVal: Integer);
    function Get_TargetPosition(Index: Integer): Integer;
    procedure Set_TargetPosition(Index: Integer; pVal: Integer);
    function Get_Acceleration(Index: Integer): Double;
    procedure Set_Acceleration(Index: Integer; pVal: Double);
    function Get_VelocityLimit(Index: Integer): Double;
    procedure Set_VelocityLimit(Index: Integer; pVal: Double);
    function Get_CurrentLimit(Index: Integer): Double;
    procedure Set_CurrentLimit(Index: Integer; pVal: Double);
    function Get_Current(Index: Integer): Double;
    function Get_InputState(Index: Integer): WordBool;
    function Get_PositionMin(Index: Integer): Integer;
    function Get_PositionMax(Index: Integer): Integer;
    function Get_AccelerationMin(Index: Integer): Double;
    function Get_AccelerationMax(Index: Integer): Double;
    function Get_VelocityMin(Index: Integer): Double;
    function Get_VelocityMax(Index: Integer): Double;
    function Get_Velocity(Index: Integer): Double;
    function Get_Engaged(Index: Integer): WordBool;
    procedure Set_Engaged(Index: Integer; pVal: WordBool);
    function Get_Stopped(Index: Integer): WordBool;
    function Get_CurrentMin(Index: Integer): Double;
    function Get_CurrentMax(Index: Integer): Double;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetStepper read GetControlInterface;
    property DefaultInterface: IPhidgetStepper read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property CurrentPosition[index: Integer]: Integer read Get_CurrentPosition write Set_CurrentPosition;
    property TargetPosition[index: Integer]: Integer read Get_TargetPosition write Set_TargetPosition;
    property Acceleration[index: Integer]: Double read Get_Acceleration write Set_Acceleration;
    property VelocityLimit[index: Integer]: Double read Get_VelocityLimit write Set_VelocityLimit;
    property CurrentLimit[index: Integer]: Double read Get_CurrentLimit write Set_CurrentLimit;
    property Current[index: Integer]: Double read Get_Current;
    property MotorCount: Integer index 262 read GetIntegerProp;
    property InputCount: Integer index 263 read GetIntegerProp;
    property InputState[index: Integer]: WordBool read Get_InputState;
    property PositionMin[index: Integer]: Integer read Get_PositionMin;
    property PositionMax[index: Integer]: Integer read Get_PositionMax;
    property AccelerationMin[index: Integer]: Double read Get_AccelerationMin;
    property AccelerationMax[index: Integer]: Double read Get_AccelerationMax;
    property VelocityMin[index: Integer]: Double read Get_VelocityMin;
    property VelocityMax[index: Integer]: Double read Get_VelocityMax;
    property Velocity[index: Integer]: Double read Get_Velocity;
    property Engaged[index: Integer]: WordBool read Get_Engaged write Set_Engaged;
    property Stopped[index: Integer]: WordBool read Get_Stopped;
    property CurrentMin[index: Integer]: Double read Get_CurrentMin;
    property CurrentMax[index: Integer]: Double read Get_CurrentMax;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetStepperOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnInputChange: TPhidgetStepperOnInputChange read FOnInputChange write FOnInputChange;
    property OnPositionChange: TPhidgetStepperOnPositionChange read FOnPositionChange write FOnPositionChange;
    property OnCurrentChange: TPhidgetStepperOnCurrentChange read FOnCurrentChange write FOnCurrentChange;
    property OnVelocityChange: TPhidgetStepperOnVelocityChange read FOnVelocityChange write FOnVelocityChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetTemperatureSensor
  // Help String      : PhidgetTemperatureSensor Class.
  // Default Interface: IPhidgetTemperatureSensor
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetTemperatureSensorEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetTemperatureSensorOnError             = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetTemperatureSensorOnTemperatureChange = procedure(ASender: TObject; Index: Integer; Temperature: Double) of object;

  TPhidgetTemperatureSensor = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetTemperatureSensorOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnTemperatureChange: TPhidgetTemperatureSensorOnTemperatureChange;
    FIntf: IPhidgetTemperatureSensor;
    function GetControlInterface: IPhidgetTemperatureSensor;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_TemperatureChangeTrigger(Index: Integer): Double;
    procedure Set_TemperatureChangeTrigger(Index: Integer; pVal: Double);
    function Get_Temperature(Index: Integer): Double;
    function Get_Potential(Index: Integer): Double;
    function Get_ThermocoupleType(Index: Integer): Integer;
    procedure Set_ThermocoupleType(Index: Integer; pVal: Integer);
    function Get_TemperatureMin(Index: Integer): Double;
    function Get_TemperatureMax(Index: Integer): Double;
    function Get_PotentialMin(Index: Integer): Double;
    function Get_PotentialMax(Index: Integer): Double;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetTemperatureSensor read GetControlInterface;
    property DefaultInterface: IPhidgetTemperatureSensor read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property TemperatureChangeTrigger[index: Integer]: Double read Get_TemperatureChangeTrigger write Set_TemperatureChangeTrigger;
    property Temperature[index: Integer]: Double read Get_Temperature;
    property AmbientTemperature: Double index 258 read GetDoubleProp;
    property TemperatureInputCount: Integer index 259 read GetIntegerProp;
    property Potential[index: Integer]: Double read Get_Potential;
    property ThermocoupleType[index: Integer]: Integer read Get_ThermocoupleType write Set_ThermocoupleType;
    property TemperatureMin[index: Integer]: Double read Get_TemperatureMin;
    property TemperatureMax[index: Integer]: Double read Get_TemperatureMax;
    property AmbientTemperatureMin: Double index 264 read GetDoubleProp;
    property AmbientTemperatureMax: Double index 265 read GetDoubleProp;
    property PotentialMin[index: Integer]: Double read Get_PotentialMin;
    property PotentialMax[index: Integer]: Double read Get_PotentialMax;
    property NumTemperatureInputs: Integer index 268 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetTemperatureSensorOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnTemperatureChange: TPhidgetTemperatureSensorOnTemperatureChange read FOnTemperatureChange write FOnTemperatureChange;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetTextLCD
  // Help String      : PhidgetTextLCD Class.
  // Default Interface: IPhidgetTextLCD
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetTextLCDEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetTextLCDOnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;

  TPhidgetTextLCD = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetTextLCDOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FIntf: IPhidgetTextLCD;
    function GetControlInterface: IPhidgetTextLCD;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    procedure Set_DisplayString(Row: Integer; const Param2: WideString);
    procedure Set_CustomCharacter(Index: Integer; Val1: Integer; Param3: Integer);
    procedure Set_DisplayCharacter(Row: Integer; Column: Integer; const Param3: WideString);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetTextLCD read GetControlInterface;
    property DefaultInterface: IPhidgetTextLCD read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property DisplayString[Row: Integer]: WideString write Set_DisplayString;
    property RowCount: Integer index 257 read GetIntegerProp;
    property ColumnCount: Integer index 258 read GetIntegerProp;
    property CustomCharacter[index: Integer; Val1: Integer]: Integer write Set_CustomCharacter;
    property DisplayCharacter[Row: Integer; Column: Integer]: WideString write Set_DisplayCharacter;
    property NumRows: Integer index 264 read GetIntegerProp;
    property NumColumns: Integer index 265 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property Backlight: WordBool index 259 read GetWordBoolProp write SetWordBoolProp stored False;
    property CursorOn: WordBool index 260 read GetWordBoolProp write SetWordBoolProp stored False;
    property CursorBlink: WordBool index 261 read GetWordBoolProp write SetWordBoolProp stored False;
    property Contrast: Integer index 262 read GetIntegerProp write SetIntegerProp stored False;
    property Brightness: Integer index 267 read GetIntegerProp write SetIntegerProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetTextLCDOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetTextLED
  // Help String      : PhidgetTextLED Class.
  // Default Interface: IPhidgetTextLED
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetTextLEDEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetTextLEDOnError = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;

  TPhidgetTextLED = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetTextLEDOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FIntf: IPhidgetTextLED;
    function GetControlInterface: IPhidgetTextLED;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    procedure Set_DisplayString(Row: Integer; const Param2: WideString);
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetTextLED read GetControlInterface;
    property DefaultInterface: IPhidgetTextLED read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property DisplayString[Row: Integer]: WideString write Set_DisplayString;
    property RowCount: Integer index 257 read GetIntegerProp;
    property ColumnCount: Integer index 258 read GetIntegerProp;
    property NumRows: Integer index 260 read GetIntegerProp;
    property NumColumns: Integer index 261 read GetIntegerProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property Brightness: Integer index 259 read GetIntegerProp write SetIntegerProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetTextLEDOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
  end;

  // *********************************************************************//
  // OLE Control Proxy class declaration
  // Control Name     : TPhidgetWeightSensor
  // Help String      : PhidgetWeightSensor Class
  // Default Interface: IPhidgetWeightSensor
  // Def. Intf. DISP? : No
  // Event   Interface: _IPhidgetWeightSensorEvents
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
  TPhidgetWeightSensorOnError        = procedure(ASender: TObject; const Description: WideString; SCODE: PhidgetCOM_Error) of object;
  TPhidgetWeightSensorOnWeightChange = procedure(ASender: TObject; Weight: Double) of object;

  TPhidgetWeightSensor = class(TOleControl)
  private
    FOnAttach: TNotifyEvent;
    FOnDetach: TNotifyEvent;
    FOnError: TPhidgetWeightSensorOnError;
    FOnServerConnect: TNotifyEvent;
    FOnServerDisconnect: TNotifyEvent;
    FOnWeightChange: TPhidgetWeightSensorOnWeightChange;
    FIntf: IPhidgetWeightSensor;
    function GetControlInterface: IPhidgetWeightSensor;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure Open(SerialNumber: SYSINT);
    procedure OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
    procedure OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
    procedure Close;
    procedure EnableLogging(level: SYSINT; const file_: WideString);
    procedure DisableLogging;
    procedure Log(level: SYSINT; const ident: WideString; const Log: WideString);
    procedure WaitForAttachment(milliseconds: SYSINT);
    procedure EnableVerboseErrors(state: WordBool);
    property ControlInterface: IPhidgetWeightSensor read GetControlInterface;
    property DefaultInterface: IPhidgetWeightSensor read GetControlInterface;
    property DeviceType: WideString index 512 read GetWideStringProp;
    property SerialNumber: Integer index 513 read GetIntegerProp;
    property name: WideString index 514 read GetWideStringProp;
    property IsAttached: WordBool index 516 read GetWordBoolProp;
    property DeviceVersion: Integer index 517 read GetIntegerProp;
    property LibraryVersion: WideString index 518 read GetWideStringProp;
    property port: Integer index 523 read GetIntegerProp;
    property Address: WideString index 524 read GetWideStringProp;
    property ServerID: WideString index 525 read GetWideStringProp;
    property IsAttachedToServer: WordBool index 526 read GetWordBoolProp;
    property Weight: Double index 257 read GetDoubleProp;
  published
    property Anchors;
    property Label_: WideString index 515 read GetWideStringProp write SetWideStringProp stored False;
    property WeightChangeTrigger: Double index 256 read GetDoubleProp write SetDoubleProp stored False;
    property OnAttach: TNotifyEvent read FOnAttach write FOnAttach;
    property OnDetach: TNotifyEvent read FOnDetach write FOnDetach;
    property OnError: TPhidgetWeightSensorOnError read FOnError write FOnError;
    property OnServerConnect: TNotifyEvent read FOnServerConnect write FOnServerConnect;
    property OnServerDisconnect: TNotifyEvent read FOnServerDisconnect write FOnServerDisconnect;
    property OnWeightChange: TPhidgetWeightSensorOnWeightChange read FOnWeightChange write FOnWeightChange;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TPhidgetManager.InitControlData;
const
  CEventDispIDs: array [0 .. 4] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000002}'; EventIID: '{50484945-4745-5453-2000-000000000002}'; EventCount: 5;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetManager.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetManager;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetManager.GetControlInterface: IPhidgetManager;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetManager.Get_DeviceType(Index: Integer): WideString;
begin
  Result := DefaultInterface.DeviceType[index];
end;

function TPhidgetManager.Get_DeviceName(Index: Integer): WideString;
begin
  Result := DefaultInterface.DeviceName[index];
end;

function TPhidgetManager.Get_DeviceLabel(Index: Integer): WideString;
begin
  Result := DefaultInterface.DeviceLabel[index];
end;

function TPhidgetManager.Get_DeviceSerial(Index: Integer): SYSINT;
begin
  Result := DefaultInterface.DeviceSerial[index];
end;

function TPhidgetManager.Get_DeviceVersion(Index: Integer): SYSINT;
begin
  Result := DefaultInterface.DeviceVersion[index];
end;

procedure TPhidgetManager.Open;
begin
  DefaultInterface.Open;
end;

procedure TPhidgetManager.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetManager.OpenRemote(const ServerID: WideString; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, Password);
end;

procedure TPhidgetManager.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, Password);
end;

procedure TPhidgetAccelerometer.InitControlData;
const
  CEventDispIDs: array [0 .. 5] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000011}'; EventIID: '{50484945-4745-5453-2000-000000000011}'; EventCount: 6;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetAccelerometer.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetAccelerometer;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetAccelerometer.GetControlInterface: IPhidgetAccelerometer;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetAccelerometer.Get_AccelerationChangeTrigger(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationChangeTrigger[index];
end;

procedure TPhidgetAccelerometer.Set_AccelerationChangeTrigger(Index: Integer; pVal: Double);
begin
  DefaultInterface.AccelerationChangeTrigger[index] := pVal;
end;

function TPhidgetAccelerometer.Get_Acceleration(Index: Integer): Double;
begin
  Result := DefaultInterface.Acceleration[index];
end;

function TPhidgetAccelerometer.Get_AccelerationMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMax[index];
end;

function TPhidgetAccelerometer.Get_AccelerationMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMin[index];
end;

procedure TPhidgetAccelerometer.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetAccelerometer.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetAccelerometer.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetAccelerometer.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetAccelerometer.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetAccelerometer.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetAccelerometer.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetAccelerometer.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetAccelerometer.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetAdvancedServo.InitControlData;
const
  CEventDispIDs: array [0 .. 7] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000C}'; EventIID: '{50484945-4745-5453-2000-00000000000C}'; EventCount: 8;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetAdvancedServo.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetAdvancedServo;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetAdvancedServo.GetControlInterface: IPhidgetAdvancedServo;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetAdvancedServo.Get_Position(Index: Integer): Double;
begin
  Result := DefaultInterface.Position[index];
end;

procedure TPhidgetAdvancedServo.Set_Position(Index: Integer; pVal: Double);
begin
  DefaultInterface.Position[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_VelocityLimit(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityLimit[index];
end;

procedure TPhidgetAdvancedServo.Set_VelocityLimit(Index: Integer; pVal: Double);
begin
  DefaultInterface.VelocityLimit[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_Acceleration(Index: Integer): Double;
begin
  Result := DefaultInterface.Acceleration[index];
end;

procedure TPhidgetAdvancedServo.Set_Acceleration(Index: Integer; pVal: Double);
begin
  DefaultInterface.Acceleration[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_Engaged(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Engaged[index];
end;

procedure TPhidgetAdvancedServo.Set_Engaged(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.Engaged[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_Velocity(Index: Integer): Double;
begin
  Result := DefaultInterface.Velocity[index];
end;

function TPhidgetAdvancedServo.Get_Current(Index: Integer): Double;
begin
  Result := DefaultInterface.Current[index];
end;

function TPhidgetAdvancedServo.Get_SpeedRampingOn(Index: Integer): WordBool;
begin
  Result := DefaultInterface.SpeedRampingOn[index];
end;

procedure TPhidgetAdvancedServo.Set_SpeedRampingOn(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.SpeedRampingOn[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_AccelerationMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMin[index];
end;

function TPhidgetAdvancedServo.Get_AccelerationMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMax[index];
end;

function TPhidgetAdvancedServo.Get_PositionMin(Index: Integer): Double;
begin
  Result := DefaultInterface.PositionMin[index];
end;

procedure TPhidgetAdvancedServo.Set_PositionMin(Index: Integer; pVal: Double);
begin
  DefaultInterface.PositionMin[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_PositionMax(Index: Integer): Double;
begin
  Result := DefaultInterface.PositionMax[index];
end;

procedure TPhidgetAdvancedServo.Set_PositionMax(Index: Integer; pVal: Double);
begin
  DefaultInterface.PositionMax[index] := pVal;
end;

function TPhidgetAdvancedServo.Get_VelocityMin(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityMin[index];
end;

function TPhidgetAdvancedServo.Get_VelocityMax(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityMax[index];
end;

function TPhidgetAdvancedServo.Get_Stopped(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Stopped[index];
end;

function TPhidgetAdvancedServo.Get_ServoType(Index: Integer): PhidgetCOM_ServoType;
begin
  Result := DefaultInterface.ServoType[index];
end;

procedure TPhidgetAdvancedServo.Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType);
begin
  DefaultInterface.ServoType[index] := pVal;
end;

procedure TPhidgetAdvancedServo.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetAdvancedServo.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetAdvancedServo.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetAdvancedServo.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetAdvancedServo.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetAdvancedServo.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetAdvancedServo.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetAdvancedServo.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetAdvancedServo.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetAdvancedServo.SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double; VelocityMax: Double);
begin
  DefaultInterface.SetServoParameters(index, MinUs, MaxUs, Degrees, VelocityMax);
end;

procedure TPhidgetDictionary.InitControlData;
const
  CEventDispIDs: array [0 .. 2] of DWORD = ($00000001, $00000002, $00000003);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000013}'; EventIID: '{50484945-4745-5453-2000-000000000013}'; EventCount: 3;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnError) - Cardinal(Self);
end;

procedure TPhidgetDictionary.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetDictionary;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetDictionary.GetControlInterface: IPhidgetDictionary;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetDictionary.OpenRemote(const ServerID: WideString; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, Password);
end;

procedure TPhidgetDictionary.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, Password);
end;

procedure TPhidgetDictionary.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetDictionary.Add(const Key: WideString; const Value: WideString; Persistent: WordBool);
begin
  DefaultInterface.Add(Key, Value, Persistent);
end;

procedure TPhidgetDictionary.Remove(const Pattern: WideString);
begin
  DefaultInterface.Remove(Pattern);
end;

function TPhidgetDictionary.Get(const Key: WideString): WideString;
begin
  Result := DefaultInterface.Get(Key);
end;

procedure TPhidgetEncoder.InitControlData;
const
  CEventDispIDs: array [0 .. 6] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000E}'; EventIID: '{50484945-4745-5453-2000-00000000000E}'; EventCount: 7;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetEncoder.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetEncoder;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetEncoder.GetControlInterface: IPhidgetEncoder;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetEncoder.Get_Position(Index: Integer): Integer;
begin
  Result := DefaultInterface.Position[index];
end;

procedure TPhidgetEncoder.Set_Position(Index: Integer; pVal: Integer);
begin
  DefaultInterface.Position[index] := pVal;
end;

function TPhidgetEncoder.Get_InputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.InputState[index];
end;

function TPhidgetEncoder.Get_IndexPosition(Index: Integer): Integer;
begin
  Result := DefaultInterface.IndexPosition[index];
end;

function TPhidgetEncoder.Get_Enabled(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Enabled[index];
end;

procedure TPhidgetEncoder.Set_Enabled(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.Enabled[index] := pVal;
end;

function TPhidgetEncoder.Get_EncoderPosition(Index: Integer): Integer;
begin
  Result := DefaultInterface.EncoderPosition[index];
end;

procedure TPhidgetEncoder.Set_EncoderPosition(Index: Integer; pVal: Integer);
begin
  DefaultInterface.EncoderPosition[index] := pVal;
end;

procedure TPhidgetEncoder.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetEncoder.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetEncoder.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetEncoder.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetEncoder.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetEncoder.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetEncoder.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetEncoder.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetEncoder.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetInterfaceKit.InitControlData;
const
  CEventDispIDs: array [0 .. 7] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000003}'; EventIID: '{50484945-4745-5453-2000-000000000003}'; EventCount: 8;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetInterfaceKit.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetInterfaceKit;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetInterfaceKit.GetControlInterface: IPhidgetInterfaceKit;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetInterfaceKit.Get_OutputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.OutputState[index];
end;

procedure TPhidgetInterfaceKit.Set_OutputState(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.OutputState[index] := pVal;
end;

function TPhidgetInterfaceKit.Get_InputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.InputState[index];
end;

function TPhidgetInterfaceKit.Get_SensorRawValue(Index: Integer): Integer;
begin
  Result := DefaultInterface.SensorRawValue[index];
end;

function TPhidgetInterfaceKit.Get_SensorChangeTrigger(Index: Integer): Integer;
begin
  Result := DefaultInterface.SensorChangeTrigger[index];
end;

procedure TPhidgetInterfaceKit.Set_SensorChangeTrigger(Index: Integer; pVal: Integer);
begin
  DefaultInterface.SensorChangeTrigger[index] := pVal;
end;

function TPhidgetInterfaceKit.Get_SensorValue(Index: Integer): Integer;
begin
  Result := DefaultInterface.SensorValue[index];
end;

function TPhidgetInterfaceKit.Get_DataRate(Index: Integer): Integer;
begin
  Result := DefaultInterface.DataRate[index];
end;

procedure TPhidgetInterfaceKit.Set_DataRate(Index: Integer; pVal: Integer);
begin
  DefaultInterface.DataRate[index] := pVal;
end;

function TPhidgetInterfaceKit.Get_DataRateMin(Index: Integer): Integer;
begin
  Result := DefaultInterface.DataRateMin[index];
end;

function TPhidgetInterfaceKit.Get_DataRateMax(Index: Integer): Integer;
begin
  Result := DefaultInterface.DataRateMax[index];
end;

procedure TPhidgetInterfaceKit.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetInterfaceKit.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetInterfaceKit.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetInterfaceKit.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetInterfaceKit.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetInterfaceKit.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetInterfaceKit.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetInterfaceKit.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetInterfaceKit.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetIR.InitControlData;
const
  CEventDispIDs: array [0 .. 7] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000016}'; EventIID: '{50484945-4745-5453-2000-000000000016}'; EventCount: 8;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetIR.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetIR;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetIR.GetControlInterface: IPhidgetIR;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetIR.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetIR.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetIR.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetIR.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetIR.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetIR.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetIR.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetIR.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetIR.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetIR.Transmit(var data: PSafeArray; var codeInfo: PhidgetIR_CodeInfo);
begin
  DefaultInterface.Transmit(data, codeInfo);
end;

procedure TPhidgetIR.TransmitRepeat;
begin
  DefaultInterface.TransmitRepeat;
end;

procedure TPhidgetIR.TransmitRaw(var data: PSafeArray; length: Integer; carrierFrequency: Integer; dutyCyle: Integer; gap: Integer);
begin
  DefaultInterface.TransmitRaw(data, length, carrierFrequency, dutyCyle, gap);
end;

procedure TPhidgetIR.getRawData(var data: PSafeArray; var dataLength: Integer);
begin
  DefaultInterface.getRawData(data, dataLength);
end;

procedure TPhidgetIR.getLastCode(var data: PSafeArray; var dataLength: Integer; var bitCount: Integer);
begin
  DefaultInterface.getLastCode(data, dataLength, bitCount);
end;

procedure TPhidgetIR.getLastLearnedCode(var data: PSafeArray; var dataLength: Integer; var codeInfo: PhidgetIR_CodeInfo);
begin
  DefaultInterface.getLastLearnedCode(data, dataLength, codeInfo);
end;

procedure TPhidgetKeyListener.InitControlData;
const
  CEventDispIDs: array [0 .. 1] of DWORD = ($00000001, $00000002);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000014}'; EventIID: '{50484945-4745-5453-2000-000000000014}'; EventCount: 2;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnKeyChange) - Cardinal(Self);
end;

procedure TPhidgetKeyListener.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetKeyListener;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetKeyListener.GetControlInterface: IPhidgetKeyListener;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetKeyListener.Start(const Dict: IPhidgetDictionary; const Pattern: WideString);
begin
  DefaultInterface.Start(Dict, Pattern);
end;

procedure TPhidgetKeyListener.Stop;
begin
  DefaultInterface.Stop;
end;

procedure TPhidgetLED.InitControlData;
const
  CEventDispIDs: array [0 .. 4] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000D}'; EventIID: '{50484945-4745-5453-2000-00000000000D}'; EventCount: 5;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetLED.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetLED;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetLED.GetControlInterface: IPhidgetLED;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetLED.Set_DiscreteLED(Index: Integer; pVal: Integer);
begin
  DefaultInterface.DiscreteLED[index] := pVal;
end;

function TPhidgetLED.Get_DiscreteLED(Index: Integer): Integer;
begin
  Result := DefaultInterface.DiscreteLED[index];
end;

procedure TPhidgetLED.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetLED.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetLED.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetLED.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetLED.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetLED.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetLED.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetLED.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetLED.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetMotorControl.InitControlData;
const
  CEventDispIDs: array [0 .. 7] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000B}'; EventIID: '{50484945-4745-5453-2000-00000000000B}'; EventCount: 8;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetMotorControl.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetMotorControl;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetMotorControl.GetControlInterface: IPhidgetMotorControl;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetMotorControl.Get_Velocity(Index: Integer): Double;
begin
  Result := DefaultInterface.Velocity[index];
end;

procedure TPhidgetMotorControl.Set_Velocity(Index: Integer; pVal: Double);
begin
  DefaultInterface.Velocity[index] := pVal;
end;

function TPhidgetMotorControl.Get_Acceleration(Index: Integer): Double;
begin
  Result := DefaultInterface.Acceleration[index];
end;

procedure TPhidgetMotorControl.Set_Acceleration(Index: Integer; pVal: Double);
begin
  DefaultInterface.Acceleration[index] := pVal;
end;

function TPhidgetMotorControl.Get_InputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.InputState[index];
end;

function TPhidgetMotorControl.Get_Current(Index: Integer): Double;
begin
  Result := DefaultInterface.Current[index];
end;

function TPhidgetMotorControl.Get_AccelerationMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMin[index];
end;

function TPhidgetMotorControl.Get_AccelerationMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMax[index];
end;

function TPhidgetMotorControl.Get_MotorSpeed(Index: Integer): Double;
begin
  Result := DefaultInterface.MotorSpeed[index];
end;

procedure TPhidgetMotorControl.Set_MotorSpeed(Index: Integer; pVal: Double);
begin
  DefaultInterface.MotorSpeed[index] := pVal;
end;

procedure TPhidgetMotorControl.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetMotorControl.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetMotorControl.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetMotorControl.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetMotorControl.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetMotorControl.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetMotorControl.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetMotorControl.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetMotorControl.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetPHSensor.InitControlData;
const
  CEventDispIDs: array [0 .. 5] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000015}'; EventIID: '{50484945-4745-5453-2000-000000000015}'; EventCount: 6;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetPHSensor.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetPHSensor;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetPHSensor.GetControlInterface: IPhidgetPHSensor;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetPHSensor.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetPHSensor.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetPHSensor.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetPHSensor.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetPHSensor.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetPHSensor.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetPHSensor.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetPHSensor.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetPHSensor.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetRFID.InitControlData;
const
  CEventDispIDs: array [0 .. 7] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000007}'; EventIID: '{50484945-4745-5453-2000-000000000007}'; EventCount: 8;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetRFID.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetRFID;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetRFID.GetControlInterface: IPhidgetRFID;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetRFID.Get_OutputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.OutputState[index];
end;

procedure TPhidgetRFID.Set_OutputState(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.OutputState[index] := pVal;
end;

procedure TPhidgetRFID.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetRFID.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetRFID.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetRFID.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetRFID.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetRFID.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetRFID.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetRFID.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetRFID.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetServo.InitControlData;
const
  CEventDispIDs: array [0 .. 6] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000004}'; EventIID: '{50484945-4745-5453-2000-000000000004}'; EventCount: 7;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetServo.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetServo;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetServo.GetControlInterface: IPhidgetServo;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetServo.Get_Position(Index: Integer): Double;
begin
  Result := DefaultInterface.Position[index];
end;

procedure TPhidgetServo.Set_Position(Index: Integer; pVal: Double);
begin
  DefaultInterface.Position[index] := pVal;
end;

function TPhidgetServo.Get_Engaged(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Engaged[index];
end;

procedure TPhidgetServo.Set_Engaged(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.Engaged[index] := pVal;
end;

function TPhidgetServo.Get_PositionMin(Index: Integer): Double;
begin
  Result := DefaultInterface.PositionMin[index];
end;

function TPhidgetServo.Get_PositionMax(Index: Integer): Double;
begin
  Result := DefaultInterface.PositionMax[index];
end;

function TPhidgetServo.Get_ServoType(Index: Integer): PhidgetCOM_ServoType;
begin
  Result := DefaultInterface.ServoType[index];
end;

procedure TPhidgetServo.Set_ServoType(Index: Integer; pVal: PhidgetCOM_ServoType);
begin
  DefaultInterface.ServoType[index] := pVal;
end;

function TPhidgetServo.Get_MotorPosition(Index: Integer): Double;
begin
  Result := DefaultInterface.MotorPosition[index];
end;

procedure TPhidgetServo.Set_MotorPosition(Index: Integer; pVal: Double);
begin
  DefaultInterface.MotorPosition[index] := pVal;
end;

function TPhidgetServo.Get_MotorOn(Index: Integer): WordBool;
begin
  Result := DefaultInterface.MotorOn[index];
end;

procedure TPhidgetServo.Set_MotorOn(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.MotorOn[index] := pVal;
end;

function TPhidgetServo.Get_MotorPositionMin(Index: Integer): Double;
begin
  Result := DefaultInterface.MotorPositionMin[index];
end;

function TPhidgetServo.Get_MotorPositionMax(Index: Integer): Double;
begin
  Result := DefaultInterface.MotorPositionMax[index];
end;

procedure TPhidgetServo.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetServo.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetServo.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetServo.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetServo.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetServo.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetServo.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetServo.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetServo.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetServo.SetServoParameters(Index: Integer; MinUs: Double; MaxUs: Double; Degrees: Double);
begin
  DefaultInterface.SetServoParameters(index, MinUs, MaxUs, Degrees);
end;

procedure TPhidgetSpatial.InitControlData;
const
  CEventDispIDs: array [0 .. 5] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000017}'; EventIID: '{50484945-4745-5453-2000-000000000017}'; EventCount: 6;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetSpatial.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetSpatial;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetSpatial.GetControlInterface: IPhidgetSpatial;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetSpatial.Get_Acceleration(Index: Integer): Double;
begin
  Result := DefaultInterface.Acceleration[index];
end;

function TPhidgetSpatial.Get_AccelerationMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMin[index];
end;

function TPhidgetSpatial.Get_AccelerationMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMax[index];
end;

function TPhidgetSpatial.Get_angularRate(Index: Integer): Double;
begin
  Result := DefaultInterface.angularRate[index];
end;

function TPhidgetSpatial.Get_AngularRateMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AngularRateMin[index];
end;

function TPhidgetSpatial.Get_AngularRateMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AngularRateMax[index];
end;

function TPhidgetSpatial.Get_magneticField(Index: Integer): Double;
begin
  Result := DefaultInterface.magneticField[index];
end;

function TPhidgetSpatial.Get_MagneticFieldMin(Index: Integer): Double;
begin
  Result := DefaultInterface.MagneticFieldMin[index];
end;

function TPhidgetSpatial.Get_MagneticFieldMax(Index: Integer): Double;
begin
  Result := DefaultInterface.MagneticFieldMax[index];
end;

procedure TPhidgetSpatial.Set_CompassCorrectionParameters(magField: Double; offset0: Double; offset1: Double; offset2: Double; gain0: Double; gain1: Double;
  gain2: Double; T0: Double; T1: Double; T2: Double; T3: Double; T4: Double; Param13: Double);
begin
  DefaultInterface.CompassCorrectionParameters[magField, offset0, offset1, offset2, gain0, gain1, gain2, T0, T1, T2, T3, T4] := Param13;
end;

procedure TPhidgetSpatial.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetSpatial.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetSpatial.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetSpatial.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetSpatial.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetSpatial.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetSpatial.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetSpatial.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetSpatial.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetSpatial.zeroGyro;
begin
  DefaultInterface.zeroGyro;
end;

procedure TPhidgetSpatial.resetCompassCorrectionParameters;
begin
  DefaultInterface.resetCompassCorrectionParameters;
end;

procedure TPhidgetStepper.InitControlData;
const
  CEventDispIDs: array [0 .. 8] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006, $00000007, $00000008, $00000009);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000F}'; EventIID: '{50484945-4745-5453-2000-00000000000F}'; EventCount: 9;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetStepper.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetStepper;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetStepper.GetControlInterface: IPhidgetStepper;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetStepper.Get_CurrentPosition(Index: Integer): Integer;
begin
  Result := DefaultInterface.CurrentPosition[index];
end;

procedure TPhidgetStepper.Set_CurrentPosition(Index: Integer; pVal: Integer);
begin
  DefaultInterface.CurrentPosition[index] := pVal;
end;

function TPhidgetStepper.Get_TargetPosition(Index: Integer): Integer;
begin
  Result := DefaultInterface.TargetPosition[index];
end;

procedure TPhidgetStepper.Set_TargetPosition(Index: Integer; pVal: Integer);
begin
  DefaultInterface.TargetPosition[index] := pVal;
end;

function TPhidgetStepper.Get_Acceleration(Index: Integer): Double;
begin
  Result := DefaultInterface.Acceleration[index];
end;

procedure TPhidgetStepper.Set_Acceleration(Index: Integer; pVal: Double);
begin
  DefaultInterface.Acceleration[index] := pVal;
end;

function TPhidgetStepper.Get_VelocityLimit(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityLimit[index];
end;

procedure TPhidgetStepper.Set_VelocityLimit(Index: Integer; pVal: Double);
begin
  DefaultInterface.VelocityLimit[index] := pVal;
end;

function TPhidgetStepper.Get_CurrentLimit(Index: Integer): Double;
begin
  Result := DefaultInterface.CurrentLimit[index];
end;

procedure TPhidgetStepper.Set_CurrentLimit(Index: Integer; pVal: Double);
begin
  DefaultInterface.CurrentLimit[index] := pVal;
end;

function TPhidgetStepper.Get_Current(Index: Integer): Double;
begin
  Result := DefaultInterface.Current[index];
end;

function TPhidgetStepper.Get_InputState(Index: Integer): WordBool;
begin
  Result := DefaultInterface.InputState[index];
end;

function TPhidgetStepper.Get_PositionMin(Index: Integer): Integer;
begin
  Result := DefaultInterface.PositionMin[index];
end;

function TPhidgetStepper.Get_PositionMax(Index: Integer): Integer;
begin
  Result := DefaultInterface.PositionMax[index];
end;

function TPhidgetStepper.Get_AccelerationMin(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMin[index];
end;

function TPhidgetStepper.Get_AccelerationMax(Index: Integer): Double;
begin
  Result := DefaultInterface.AccelerationMax[index];
end;

function TPhidgetStepper.Get_VelocityMin(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityMin[index];
end;

function TPhidgetStepper.Get_VelocityMax(Index: Integer): Double;
begin
  Result := DefaultInterface.VelocityMax[index];
end;

function TPhidgetStepper.Get_Velocity(Index: Integer): Double;
begin
  Result := DefaultInterface.Velocity[index];
end;

function TPhidgetStepper.Get_Engaged(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Engaged[index];
end;

procedure TPhidgetStepper.Set_Engaged(Index: Integer; pVal: WordBool);
begin
  DefaultInterface.Engaged[index] := pVal;
end;

function TPhidgetStepper.Get_Stopped(Index: Integer): WordBool;
begin
  Result := DefaultInterface.Stopped[index];
end;

function TPhidgetStepper.Get_CurrentMin(Index: Integer): Double;
begin
  Result := DefaultInterface.CurrentMin[index];
end;

function TPhidgetStepper.Get_CurrentMax(Index: Integer): Double;
begin
  Result := DefaultInterface.CurrentMax[index];
end;

procedure TPhidgetStepper.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetStepper.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetStepper.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetStepper.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetStepper.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetStepper.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetStepper.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetStepper.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetStepper.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetTemperatureSensor.InitControlData;
const
  CEventDispIDs: array [0 .. 5] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000010}'; EventIID: '{50484945-4745-5453-2000-000000000010}'; EventCount: 6;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetTemperatureSensor.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetTemperatureSensor;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetTemperatureSensor.GetControlInterface: IPhidgetTemperatureSensor;
begin
  CreateControl;
  Result := FIntf;
end;

function TPhidgetTemperatureSensor.Get_TemperatureChangeTrigger(Index: Integer): Double;
begin
  Result := DefaultInterface.TemperatureChangeTrigger[index];
end;

procedure TPhidgetTemperatureSensor.Set_TemperatureChangeTrigger(Index: Integer; pVal: Double);
begin
  DefaultInterface.TemperatureChangeTrigger[index] := pVal;
end;

function TPhidgetTemperatureSensor.Get_Temperature(Index: Integer): Double;
begin
  Result := DefaultInterface.Temperature[index];
end;

function TPhidgetTemperatureSensor.Get_Potential(Index: Integer): Double;
begin
  Result := DefaultInterface.Potential[index];
end;

function TPhidgetTemperatureSensor.Get_ThermocoupleType(Index: Integer): Integer;
begin
  Result := DefaultInterface.ThermocoupleType[index];
end;

procedure TPhidgetTemperatureSensor.Set_ThermocoupleType(Index: Integer; pVal: Integer);
begin
  DefaultInterface.ThermocoupleType[index] := pVal;
end;

function TPhidgetTemperatureSensor.Get_TemperatureMin(Index: Integer): Double;
begin
  Result := DefaultInterface.TemperatureMin[index];
end;

function TPhidgetTemperatureSensor.Get_TemperatureMax(Index: Integer): Double;
begin
  Result := DefaultInterface.TemperatureMax[index];
end;

function TPhidgetTemperatureSensor.Get_PotentialMin(Index: Integer): Double;
begin
  Result := DefaultInterface.PotentialMin[index];
end;

function TPhidgetTemperatureSensor.Get_PotentialMax(Index: Integer): Double;
begin
  Result := DefaultInterface.PotentialMax[index];
end;

procedure TPhidgetTemperatureSensor.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetTemperatureSensor.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetTemperatureSensor.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetTemperatureSensor.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetTemperatureSensor.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetTemperatureSensor.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetTemperatureSensor.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetTemperatureSensor.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetTemperatureSensor.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetTextLCD.InitControlData;
const
  CEventDispIDs: array [0 .. 4] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-00000000000A}'; EventIID: '{50484945-4745-5453-2000-00000000000A}'; EventCount: 5;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetTextLCD.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetTextLCD;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetTextLCD.GetControlInterface: IPhidgetTextLCD;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetTextLCD.Set_DisplayString(Row: Integer; const Param2: WideString);
{ Warning: The property DisplayString has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.DisplayString := Param2;
end;

procedure TPhidgetTextLCD.Set_CustomCharacter(Index: Integer; Val1: Integer; Param3: Integer);
begin
  DefaultInterface.CustomCharacter[index, Val1] := Param3;
end;

procedure TPhidgetTextLCD.Set_DisplayCharacter(Row: Integer; Column: Integer; const Param3: WideString);
{ Warning: The property DisplayCharacter has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                  := DefaultInterface;
  InterfaceVariant.DisplayCharacter := Param3;
end;

procedure TPhidgetTextLCD.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetTextLCD.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetTextLCD.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetTextLCD.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetTextLCD.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetTextLCD.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetTextLCD.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetTextLCD.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetTextLCD.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetTextLED.InitControlData;
const
  CEventDispIDs: array [0 .. 4] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000012}'; EventIID: '{50484945-4745-5453-2000-000000000012}'; EventCount: 5;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetTextLED.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetTextLED;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetTextLED.GetControlInterface: IPhidgetTextLED;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetTextLED.Set_DisplayString(Row: Integer; const Param2: WideString);
{ Warning: The property DisplayString has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.DisplayString := Param2;
end;

procedure TPhidgetTextLED.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetTextLED.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetTextLED.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetTextLED.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetTextLED.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetTextLED.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetTextLED.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetTextLED.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetTextLED.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure TPhidgetWeightSensor.InitControlData;
const
  CEventDispIDs: array [0 .. 5] of DWORD = ($00000001, $00000002, $00000003, $00000004, $00000005, $00000006);
  CControlData: TControlData2 = (ClassID: '{50484945-4745-5453-3000-000000000008}'; EventIID: '{50484945-4745-5453-2000-000000000008}'; EventCount: 6;
    EventDispIDs: @CEventDispIDs; LicenseKey: nil (* HR:$80004002 *); Flags: $00000000; Version: 401);
begin
  ControlData                               := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnAttach) - Cardinal(Self);
end;

procedure TPhidgetWeightSensor.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IPhidgetWeightSensor;
  end;

begin
  if FIntf = nil then
    DoCreate;
end;

function TPhidgetWeightSensor.GetControlInterface: IPhidgetWeightSensor;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TPhidgetWeightSensor.Open(SerialNumber: SYSINT);
begin
  DefaultInterface.Open(SerialNumber);
end;

procedure TPhidgetWeightSensor.OpenRemote(const ServerID: WideString; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemote(ServerID, SerialNumber, Password);
end;

procedure TPhidgetWeightSensor.OpenRemoteIP(const IPAddress: WideString; port: SYSINT; SerialNumber: SYSINT; const Password: WideString);
begin
  DefaultInterface.OpenRemoteIP(IPAddress, port, SerialNumber, Password);
end;

procedure TPhidgetWeightSensor.Close;
begin
  DefaultInterface.Close;
end;

procedure TPhidgetWeightSensor.EnableLogging(level: SYSINT; const file_: WideString);
begin
  DefaultInterface.EnableLogging(level, file_);
end;

procedure TPhidgetWeightSensor.DisableLogging;
begin
  DefaultInterface.DisableLogging;
end;

procedure TPhidgetWeightSensor.Log(level: SYSINT; const ident: WideString; const Log: WideString);
begin
  DefaultInterface.Log(level, ident, Log);
end;

procedure TPhidgetWeightSensor.WaitForAttachment(milliseconds: SYSINT);
begin
  DefaultInterface.WaitForAttachment(milliseconds);
end;

procedure TPhidgetWeightSensor.EnableVerboseErrors(state: WordBool);
begin
  DefaultInterface.EnableVerboseErrors(state);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TPhidgetManager, TPhidgetAccelerometer, TPhidgetAdvancedServo, TPhidgetDictionary, TPhidgetEncoder, TPhidgetInterfaceKit,
    TPhidgetIR, TPhidgetKeyListener, TPhidgetLED, TPhidgetMotorControl, TPhidgetPHSensor, TPhidgetRFID, TPhidgetServo, TPhidgetSpatial, TPhidgetStepper,
    TPhidgetTemperatureSensor, TPhidgetTextLCD, TPhidgetTextLED, TPhidgetWeightSensor]);
end;

end.