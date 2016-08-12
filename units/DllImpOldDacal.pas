// -----------------------------------------------------------------------------
// Unit Name:   DllImp
// Author:      LEE,WEI-BIN.
// Create:      8/27/2002 5:41:20 PM
// $Revision: 2 $
// $Date: 9/04/02 10:23a $
// Purpose:     unit for use DACAL USBCDDLL.DLL library, use static link
// History:
// -----------------------------------------------------------------------------

unit DllImpOldDacal;

interface

uses
  Windows;

const
  DEVICE_COMMANDOK   = 0;
  DEVICE_IDERROR     = 1;
  DEVICE_BUSY        = 2;
  DEVICE_UNKNOWERROR = 3;

const
  DLLNAME = 'USBCDDLL.DLL';

type
  TCallBackProc = procedure(DeviceCount: Integer); stdcall;

procedure InitUSBCDLibrary; stdcall; external DLLNAME name 'InitUSBCDLibrary';
procedure CloseUSBCDLibrary; stdcall; external DLLNAME name 'CloseUSBCDLibrary';
procedure SetCDCallbackProc(iProc: FARPROC); stdcall; external DLLNAME name 'SetCDCallbackProc';
function GetDeviceNumber: Integer; stdcall; external DLLNAME name 'GetDeviceNumber';
function EnumDevice(iIndex: Integer): Integer; stdcall; external DLLNAME name 'EnumDevice';

// CD Device Operate function below
function USBCDReset(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDReset';
function USBCDMoveto(ID: Integer; Index: Integer): Integer; stdcall; external DLLNAME name 'USBCDMoveto';
function USBCDGetCDDown(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDGetCDDown';
function USBCDLEDON(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDLEDON';
function USBCDLEDOFF(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDLEDOFF';
function USBCDGetStatus(ID: Integer): Integer; stdcall; external DLLNAME name 'USBCDGetStatus';

implementation

end.