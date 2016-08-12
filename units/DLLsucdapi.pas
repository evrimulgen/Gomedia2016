unit DLLsucdapi;


interface

uses
  Windows;

const
  DEVICE_COMMANDOK   = 0;
  DEVICE_IDERROR     = 1;
  DEVICE_BUSY        = 2;
  DEVICE_UNKNOWERROR = 3;


const
  DLLNAME = 'sucdapi.DLL';

type

TCallBackProc = procedure(DeviceCount: Integer); stdcall;
USBCDchanged = function():Integer; stdcall;

// Functions to init USB CD Library
procedure InitUSBCDLibrary; stdcall; external DLLNAME name 'InitUSBCDLibrary';
procedure CloseUSBCDLibrary; stdcall; external DLLNAME name 'CloseUSBCDLibrary';
function GetDeviceNumber: Integer; stdcall; external DLLNAME name 'GetDeviceNumber';
function EnumDevice(iIndex: Integer): Integer; stdcall; external DLLNAME name 'EnumDevice';

// CD Device Operate function below
function USBCDReset(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDReset';
function USBCDMoveto(ID: Integer; Index: Integer): Integer; stdcall; external DLLNAME name 'USBCDMoveto';
function USBCDGetCDDown(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDGetCDDown';
function USBCDLEDON(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDLEDON';
function USBCDLEDOFF(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDLEDOFF';
function USBCDGetStatus(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDGetStatus';

function USBCDGetType(ID: Integer; str:String;var Len:Integer): Integer; stdcall; external DLLNAME name 'USBCDGetType';
function USBCDGetDriveCD(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDGetDriveCD';
function USBCDMovetoDrive(ID: Integer; Index: Integer): Integer; stdcall; external DLLNAME name 'USBCDMovetoDrive';
function USBCDEject(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDEject';
function GetDriveCounter(ID: Integer; driveCounter: Integer): Integer; stdcall; external DLLNAME name 'GetDriveCounter';
function ClearDriveCounter(ID: Integer): Integer; stdcall; external DLLNAME name 'ClearDriveCounter';

implementation

end.
