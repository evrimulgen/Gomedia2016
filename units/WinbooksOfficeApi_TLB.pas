unit WinbooksOfficeApi_TLB;

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
// File generated on 21/01/2010 15:48:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWOW64\WinbooksOfficeApi.dll (1)
// LIBID: {4C377DA0-FFAE-413F-BA40-C741D1F4B0BD}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// Errors:
// Error creating palette bitmap of (TFieldDef) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TPeriods) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TFatalErrors) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TFatalError) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TWarnings) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TQueries) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TTablesUser) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TTables) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TWarning) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TErrorCodes) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TFields) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TBookYears) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TBookYear) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TPeriod) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TSocAnalyticalParam) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TErrorCode) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TImport) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TDbClassApi) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TCompte) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TTableUser) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TComptes) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TDossier) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TOptions) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TField) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TAnaLytique) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TWbApiUtilities) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TSqlError) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TUser) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TDossiers) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TApiIni) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TWinbooksObject) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TSqlClass) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TParam) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TTransactions) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TAnalytiques) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
// Error creating palette bitmap of (TTransaction) : Server C:\Windows\SysWOW64\WinbooksOfficeApi.dll contains no icons
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
  WinbooksOfficeApiMajorVersion = 15;
  WinbooksOfficeApiMinorVersion = 0;

  LIBID_WinbooksOfficeApi: TGUID = '{4C377DA0-FFAE-413F-BA40-C741D1F4B0BD}';

  IID__FieldDef: TGUID            = '{486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}';
  CLASS_FieldDef: TGUID           = '{A34930DA-384B-4069-B20D-6BC4C26271DB}';
  IID__Periods: TGUID             = '{1092CFBD-2DC9-4ED7-B92A-B51823054557}';
  CLASS_Periods: TGUID            = '{0E6494B9-10AC-48C0-A288-45A6F75187C6}';
  IID__FatalErrors: TGUID         = '{78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}';
  CLASS_FatalErrors: TGUID        = '{EBF5276A-68D3-48B0-96EF-3CDCB2D42C76}';
  IID__FatalError: TGUID          = '{BA1778B2-EBB0-4F92-8007-B5DA01D8612C}';
  CLASS_FatalError: TGUID         = '{15C99B60-EFF0-417A-99A3-2C9ED67EA67C}';
  IID__Warnings: TGUID            = '{DBC8894B-EF33-4780-A021-B796DDC31491}';
  CLASS_Warnings: TGUID           = '{520D4A52-D494-4E4D-A9A2-62E117E0252B}';
  IID__Queries: TGUID             = '{FFAE05BF-32D4-4666-9331-587377D866D9}';
  CLASS_Queries: TGUID            = '{E6F7158B-6BA4-4754-8441-804E463FB43D}';
  IID__TablesUser: TGUID          = '{7F525544-EE76-4A3F-B6F0-58420C36790D}';
  CLASS_TablesUser: TGUID         = '{215B53FC-49C1-49E3-B4DF-F1E0A652CB3E}';
  IID__Tables: TGUID              = '{0634AD47-2178-4E8A-90E7-C0F8838C862C}';
  CLASS_Tables: TGUID             = '{5DBE4BC9-7EE2-4279-9922-6DF7F36D8EC5}';
  IID__Warning: TGUID             = '{B01333D2-9497-4AC2-ADD4-7FD612E6F320}';
  CLASS_Warning: TGUID            = '{2D7A39AA-CB4C-4A97-B4FC-CE9DBC8A4DD5}';
  IID__ErrorCodes: TGUID          = '{3EE802AB-9C25-4818-9ACA-D167F702297D}';
  CLASS_ErrorCodes: TGUID         = '{184F390B-1EA2-4CC0-B89D-4EA873B2F649}';
  IID__Fields: TGUID              = '{BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}';
  CLASS_Fields: TGUID             = '{300F29DE-87B0-4E62-8B8C-CAF1CB264E0F}';
  IID__BookYears: TGUID           = '{5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}';
  CLASS_BookYears: TGUID          = '{268F50EF-CC4B-4813-9E04-CAE3F19C6B75}';
  IID__BookYear: TGUID            = '{1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}';
  CLASS_BookYear: TGUID           = '{DDF3767C-CB2F-429B-BC2E-A4622E20B748}';
  IID__Period: TGUID              = '{DFC7FAF8-21DF-44EB-B02B-3EED989DB860}';
  CLASS_Period: TGUID             = '{7FEC6EF4-EC37-48E0-918B-78A4AA0E69C1}';
  IID__SocAnalyticalParam: TGUID  = '{1409CADE-5A05-47C9-971B-F603BAA3CBC9}';
  CLASS_SocAnalyticalParam: TGUID = '{209411EA-5621-42FA-A99E-BCE0A06E0642}';
  IID__ErrorCode: TGUID           = '{9F5C353E-FB46-4D19-B4E3-E08C3C60B710}';
  CLASS_ErrorCode: TGUID          = '{5BC8AA2E-0E42-4784-8133-F6DFDAB20DA5}';
  IID__Import: TGUID              = '{76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}';
  CLASS_Import: TGUID             = '{923C7ED7-E415-42CB-BDEA-6EB070C96BD9}';
  IID__DbClassApi: TGUID          = '{32338ECD-D93E-420D-91A8-883E55B377D5}';
  CLASS_DbClassApi: TGUID         = '{61E5DE91-C300-4C05-97BB-5A4BD68589BC}';
  IID__Compte: TGUID              = '{0160E272-89CA-466B-A2A1-706B0027FEA5}';
  CLASS_Compte: TGUID             = '{48F3777C-6A93-49E9-8356-F0A6D20FB28A}';
  IID__TableUser: TGUID           = '{E77CFE56-9254-4F26-A270-01FECB1458D2}';
  CLASS_TableUser: TGUID          = '{C2C9C138-51C3-4BB4-9F43-4C5006B23644}';
  IID__Comptes: TGUID             = '{A550F779-9D65-431C-8423-6A191A123F9C}';
  CLASS_Comptes: TGUID            = '{DA36E857-BB5A-4534-A29B-147DA9891BA3}';
  IID__Dossier: TGUID             = '{85FD7C04-A8B8-4795-9890-0E89911DC530}';
  CLASS_Dossier: TGUID            = '{7A5CABDC-4D00-4C7A-A9F3-0845AC81E465}';
  IID__Options: TGUID             = '{E667C7A2-7F84-4C41-A337-126AD043478C}';
  CLASS_Options: TGUID            = '{FD92BEAC-82DA-4AA8-BA93-EAA8C312512E}';
  IID__Field: TGUID               = '{F105E093-D911-46A0-81AF-92B336CF4A83}';
  CLASS_Field: TGUID              = '{FE3AC3CC-0C53-403F-8C8E-1A1FDDEE9F5B}';
  IID__AnaLytique: TGUID          = '{7001AA94-00C5-4538-982B-229B29AEF8B2}';
  CLASS_AnaLytique: TGUID         = '{6A32FF54-31A4-4A29-BBAC-484B0E3F5D74}';
  IID__WbApiUtilities: TGUID      = '{013A3107-0813-411A-AF5E-474D7850B4E5}';
  CLASS_WbApiUtilities: TGUID     = '{71979598-9C60-4F06-BC21-5827860DB27B}';
  IID__SqlError: TGUID            = '{8C45D26C-2723-401D-852F-9928C0502573}';
  CLASS_SqlError: TGUID           = '{E67D7428-EECE-4624-9CA3-D9B5F985789A}';
  IID__User: TGUID                = '{5096A48E-51B7-4FA0-B779-95DF959F94E8}';
  CLASS_User: TGUID               = '{EA8B7735-B14B-40BD-A5ED-16239F6F9A80}';
  IID__Dossiers: TGUID            = '{7AA31EBA-863F-4397-B7EC-9E00BB941C97}';
  CLASS_Dossiers: TGUID           = '{02FD2AEF-1046-4C4A-97B3-6E4DFD79CD94}';
  IID__ApiIni: TGUID              = '{B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}';
  CLASS_ApiIni: TGUID             = '{32E39920-91ED-4ECE-A14C-0F9E11BE4126}';
  IID__WinbooksObject: TGUID      = '{834C9818-ACFE-4420-9E30-7E5A63161D14}';
  CLASS_WinbooksObject: TGUID     = '{B67F206D-2887-4898-89D8-8AD5691B6DF0}';
  IID__SqlClass: TGUID            = '{53B092BD-10D4-4F44-B8C4-8137951306D3}';
  DIID___SqlClass: TGUID          = '{22157BF3-9288-4011-BF76-7A3E4B8AD5CA}';
  IID__Param: TGUID               = '{FAB874C8-E379-4AB3-AA5E-7CCC088B2160}';
  CLASS_Param: TGUID              = '{BEEA7825-9F20-4A2F-B0D8-64ADC5E450CD}';
  IID__Transactions: TGUID        = '{36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}';
  CLASS_Transactions: TGUID       = '{3EFFC1A5-6784-471E-B92B-72A2AD941286}';
  IID__Analytiques: TGUID         = '{72E29583-AE9F-41C8-8A52-7D02AACD690B}';
  CLASS_Analytiques: TGUID        = '{EDC584A4-AB62-4BAB-94CF-13BC7D350961}';
  IID__Transaction: TGUID         = '{04261072-CDDD-4655-BD4E-D79C36F1A776}';
  CLASS_Transaction: TGUID        = '{DCCB2DE6-FA2A-430D-A79D-F79B258FF15A}';
  CLASS_SqlClass: TGUID           = '{CEA217D2-2E26-4E20-A7E4-094A55E3C421}';

  // *********************************************************************//
  // Declaration of Enumerations defined in Type Library
  // *********************************************************************//
  // Constants for enum TableQuery
type
  TableQuery = TOleEnum;

const
  wbCSF     = $00000000;
  wbACF     = $00000001;
  wbACT     = $00000002;
  wbEXPCSF  = $00000003;
  wbEXPACF  = $00000004;
  wbEXPDBK  = $00000005;
  wbEXPMEMO = $00000006;
  wbEXPVAT  = $00000007;
  wbMEMO    = $00000008;
  wbEXPACT  = $00000009;
  wbDBK     = $0000000A;
  wbCODEVAT = $0000000B;

  // Constants for enum FormatLink
type
  FormatLink = TOleEnum;

const
  wbWinbooks = $00000000;
  wbCubic    = $00000001;

  // Constants for enum LangueforVat
type
  LangueforVat = TOleEnum;

const
  wbFrench     = $00000000;
  wbNetherland = $00000001;

  // Constants for enum LanguageDll
type
  LanguageDll = TOleEnum;

const
  FRANCAIS   = $00000000;
  NEEDERLANS = $00000001;

  // Constants for enum TypeSolution
type
  TypeSolution = TOleEnum;

const
  wbToResolve   = $00000000;
  wbAccept      = $00000001;
  wbReplace     = $00000002;
  wbBlankRecord = $00000003;
  wbIgnore      = $00000004;
  WbDontCopy    = $00000005;
  wbEraseAll    = $00000006;
  wbInformation = $00000007;

  // Constants for enum FileType
type
  FileType = TOleEnum;

const
  Excelfile = $00000000;
  dbffile   = $00000001;
  txtfile   = $00000002;

  // Constants for enum MODE
type
  MODE = TOleEnum;

const
  Overwrite = $00000000;
  Append    = $00000001;

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  _FieldDef               = interface;
  _FieldDefDisp           = dispinterface;
  _Periods                = interface;
  _PeriodsDisp            = dispinterface;
  _FatalErrors            = interface;
  _FatalErrorsDisp        = dispinterface;
  _FatalError             = interface;
  _FatalErrorDisp         = dispinterface;
  _Warnings               = interface;
  _WarningsDisp           = dispinterface;
  _Queries                = interface;
  _QueriesDisp            = dispinterface;
  _TablesUser             = interface;
  _TablesUserDisp         = dispinterface;
  _Tables                 = interface;
  _TablesDisp             = dispinterface;
  _Warning                = interface;
  _WarningDisp            = dispinterface;
  _ErrorCodes             = interface;
  _ErrorCodesDisp         = dispinterface;
  _Fields                 = interface;
  _FieldsDisp             = dispinterface;
  _BookYears              = interface;
  _BookYearsDisp          = dispinterface;
  _BookYear               = interface;
  _BookYearDisp           = dispinterface;
  _Period                 = interface;
  _PeriodDisp             = dispinterface;
  _SocAnalyticalParam     = interface;
  _SocAnalyticalParamDisp = dispinterface;
  _ErrorCode              = interface;
  _ErrorCodeDisp          = dispinterface;
  _Import                 = interface;
  _ImportDisp             = dispinterface;
  _DbClassApi             = interface;
  _DbClassApiDisp         = dispinterface;
  _Compte                 = interface;
  _CompteDisp             = dispinterface;
  _TableUser              = interface;
  _TableUserDisp          = dispinterface;
  _Comptes                = interface;
  _ComptesDisp            = dispinterface;
  _Dossier                = interface;
  _DossierDisp            = dispinterface;
  _Options                = interface;
  _OptionsDisp            = dispinterface;
  _Field                  = interface;
  _FieldDisp              = dispinterface;
  _AnaLytique             = interface;
  _AnaLytiqueDisp         = dispinterface;
  _WbApiUtilities         = interface;
  _WbApiUtilitiesDisp     = dispinterface;
  _SqlError               = interface;
  _SqlErrorDisp           = dispinterface;
  _User                   = interface;
  _UserDisp               = dispinterface;
  _Dossiers               = interface;
  _DossiersDisp           = dispinterface;
  _ApiIni                 = interface;
  _ApiIniDisp             = dispinterface;
  _WinbooksObject         = interface;
  _WinbooksObjectDisp     = dispinterface;
  _SqlClass               = interface;
  _SqlClassDisp           = dispinterface;
  __SqlClass              = dispinterface;
  _Param                  = interface;
  _ParamDisp              = dispinterface;
  _Transactions           = interface;
  _TransactionsDisp       = dispinterface;
  _Analytiques            = interface;
  _AnalytiquesDisp        = dispinterface;
  _Transaction            = interface;
  _TransactionDisp        = dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  FieldDef           = _FieldDef;
  Periods            = _Periods;
  FatalErrors        = _FatalErrors;
  FatalError         = _FatalError;
  Warnings           = _Warnings;
  Queries            = _Queries;
  TablesUser         = _TablesUser;
  Tables             = _Tables;
  Warning            = _Warning;
  ErrorCodes         = _ErrorCodes;
  Fields             = _Fields;
  BookYears          = _BookYears;
  BookYear           = _BookYear;
  Period             = _Period;
  SocAnalyticalParam = _SocAnalyticalParam;
  ErrorCode          = _ErrorCode;
  Import             = _Import;
  DbClassApi         = _DbClassApi;
  Compte             = _Compte;
  TableUser          = _TableUser;
  Comptes            = _Comptes;
  Dossier            = _Dossier;
  Options            = _Options;
  Field              = _Field;
  AnaLytique         = _AnaLytique;
  WbApiUtilities     = _WbApiUtilities;
  SqlError           = _SqlError;
  User               = _User;
  Dossiers           = _Dossiers;
  ApiIni             = _ApiIni;
  WinbooksObject     = _WinbooksObject;
  Param              = _Param;
  Transactions       = _Transactions;
  Analytiques        = _Analytiques;
  Transaction        = _Transaction;
  SqlClass           = _SqlClass;

  // *********************************************************************//
  // Interface: _FieldDef
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}
  // *********************************************************************//
  _FieldDef = interface(IDispatch)
    ['{486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Name: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Caption: WideString); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Visible: WordBool); safecall;
    function Get_Format: WideString; safecall;
    procedure Set_Format(const Format: WideString); safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Expression(const Expression: WideString); safecall;
    function Get_Decimals: WideString; safecall;
    procedure Set_Decimals(const Decimals: WideString); safecall;
    function Get_Width: WideString; safecall;
    procedure Set_Width(const Width: WideString); safecall;
    function Get_GetFieldType: WideString; safecall;
    procedure Set_GetFieldType(const GetFieldType: WideString); safecall;
    property name: WideString read Get_Name write Set_Name;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Format: WideString read Get_Format write Set_Format;
    property Expression: WideString read Get_Expression write Set_Expression;
    property Decimals: WideString read Get_Decimals write Set_Decimals;
    property Width: WideString read Get_Width write Set_Width;
    property GetFieldType: WideString read Get_GetFieldType write Set_GetFieldType;
  end;

  // *********************************************************************//
  // DispIntf:  _FieldDefDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}
  // *********************************************************************//
  _FieldDefDisp = dispinterface
    ['{486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}']
    property name: WideString dispid 1073938432;
    property Caption: WideString dispid 1073938433;
    property Visible: WordBool dispid 1073938434;
    property Format: WideString dispid 1073938435;
    property Expression: WideString dispid 1073938436;
    property Decimals: WideString dispid 1073938437;
    property Width: WideString dispid 1073938438;
    property GetFieldType: WideString dispid 1073938439;
  end;

  // *********************************************************************//
  // Interface: _Periods
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1092CFBD-2DC9-4ED7-B92A-B51823054557}
  // *********************************************************************//
  _Periods = interface(IDispatch)
    ['{1092CFBD-2DC9-4ED7-B92A-B51823054557}']
    function Get_Count: Smallint; safecall;
    function Item(index: Smallint): _Period; safecall;
    property Count: Smallint read Get_Count;
  end;

  // *********************************************************************//
  // DispIntf:  _PeriodsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1092CFBD-2DC9-4ED7-B92A-B51823054557}
  // *********************************************************************//
  _PeriodsDisp = dispinterface
    ['{1092CFBD-2DC9-4ED7-B92A-B51823054557}']
    property Count: Smallint readonly dispid 1745027073;
    function Item(index: Smallint): _Period; dispid 0;
  end;

  // *********************************************************************//
  // Interface: _FatalErrors
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}
  // *********************************************************************//
  _FatalErrors = interface(IDispatch)
    ['{78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}']
    function Item(Range: Smallint): _FatalError; safecall;
    function Count: Smallint; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  _FatalErrorsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}
  // *********************************************************************//
  _FatalErrorsDisp = dispinterface
    ['{78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}']
    function Item(Range: Smallint): _FatalError; dispid 0;
    function Count: Smallint; dispid 1610809344;
  end;

  // *********************************************************************//
  // Interface: _FatalError
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {BA1778B2-EBB0-4F92-8007-B5DA01D8612C}
  // *********************************************************************//
  _FatalError = interface(IDispatch)
    ['{BA1778B2-EBB0-4F92-8007-B5DA01D8612C}']
    function Get_Param: WideString; safecall;
    function Get_Code: WideString; safecall;
    property Param: WideString read Get_Param;
    property Code: WideString read Get_Code;
  end;

  // *********************************************************************//
  // DispIntf:  _FatalErrorDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {BA1778B2-EBB0-4F92-8007-B5DA01D8612C}
  // *********************************************************************//
  _FatalErrorDisp = dispinterface
    ['{BA1778B2-EBB0-4F92-8007-B5DA01D8612C}']
    property Param: WideString readonly dispid 1745027072;
    property Code: WideString readonly dispid 1745027073;
  end;

  // *********************************************************************//
  // Interface: _Warnings
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {DBC8894B-EF33-4780-A021-B796DDC31491}
  // *********************************************************************//
  _Warnings = interface(IDispatch)
    ['{DBC8894B-EF33-4780-A021-B796DDC31491}']
    function Item(Range: Smallint): _Warning; safecall;
    function Count: Smallint; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  _WarningsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {DBC8894B-EF33-4780-A021-B796DDC31491}
  // *********************************************************************//
  _WarningsDisp = dispinterface
    ['{DBC8894B-EF33-4780-A021-B796DDC31491}']
    function Item(Range: Smallint): _Warning; dispid 0;
    function Count: Smallint; dispid 1610809344;
  end;

  // *********************************************************************//
  // Interface: _Queries
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {FFAE05BF-32D4-4666-9331-587377D866D9}
  // *********************************************************************//
  _Queries = interface(IDispatch)
    ['{FFAE05BF-32D4-4666-9331-587377D866D9}']
  end;

  // *********************************************************************//
  // DispIntf:  _QueriesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {FFAE05BF-32D4-4666-9331-587377D866D9}
  // *********************************************************************//
  _QueriesDisp = dispinterface
    ['{FFAE05BF-32D4-4666-9331-587377D866D9}']
  end;

  // *********************************************************************//
  // Interface: _TablesUser
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7F525544-EE76-4A3F-B6F0-58420C36790D}
  // *********************************************************************//
  _TablesUser = interface(IDispatch)
    ['{7F525544-EE76-4A3F-B6F0-58420C36790D}']
    function Get_Fields: _Fields; safecall;
    procedure GhostMethod__TablesUser_32_1; safecall;
    procedure _Set_Fields(const Fields: _Fields); safecall;
    procedure Set_OnlyUsed(Param1: WordBool); safecall;
    function Get_OnlyUsed: WordBool; safecall;
    function Item(const Range: WideString): _TableUser; safecall;
    procedure Set_SortOrder(var Param1: Smallint); safecall;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property OnlyUsed: WordBool read Get_OnlyUsed write Set_OnlyUsed;
    property SortOrder: Smallint write Set_SortOrder;
  end;

  // *********************************************************************//
  // DispIntf:  _TablesUserDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7F525544-EE76-4A3F-B6F0-58420C36790D}
  // *********************************************************************//
  _TablesUserDisp = dispinterface
    ['{7F525544-EE76-4A3F-B6F0-58420C36790D}']
    property Fields: _Fields dispid 1073938432;
    procedure GhostMethod__TablesUser_32_1; dispid 1610743809;
    property OnlyUsed: WordBool dispid 1745027074;
    function Item(const Range: WideString): _TableUser; dispid 0;
    property SortOrder: Smallint writeonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _Tables
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {0634AD47-2178-4E8A-90E7-C0F8838C862C}
  // *********************************************************************//
  _Tables = interface(IDispatch)
    ['{0634AD47-2178-4E8A-90E7-C0F8838C862C}']
    function Get_ZipCode: _TablesUser; safecall;
    procedure GhostMethod__Tables_32_1; safecall;
    procedure _Set_ZipCode(const ZipCode: _TablesUser); safecall;
    function Get_Countries: _TablesUser; safecall;
    procedure GhostMethod__Tables_44_2; safecall;
    procedure _Set_Countries(const Countries: _TablesUser); safecall;
    function Get_Civilities: _TablesUser; safecall;
    procedure GhostMethod__Tables_56_3; safecall;
    procedure _Set_Civilities(const Civilities: _TablesUser); safecall;
    function Get_Languages: _TablesUser; safecall;
    procedure GhostMethod__Tables_68_4; safecall;
    procedure _Set_Languages(const Languages: _TablesUser); safecall;
    function Get_PayCodes: _TablesUser; safecall;
    procedure GhostMethod__Tables_80_5; safecall;
    procedure _Set_PayCodes(const PayCodes: _TablesUser); safecall;
    function Get_MoneyRates: _TablesUser; safecall;
    procedure GhostMethod__Tables_92_6; safecall;
    procedure _Set_MoneyRates(const MoneyRates: _TablesUser); safecall;
    function Get_Diaries: _TablesUser; safecall;
    procedure GhostMethod__Tables_104_7; safecall;
    procedure _Set_Diaries(const Diaries: _TablesUser); safecall;
    function Get_CatAccountGen: _TablesUser; safecall;
    procedure GhostMethod__Tables_116_8; safecall;
    procedure _Set_CatAccountGen(const CatAccountGen: _TablesUser); safecall;
    function Get_CatCustomer: _TablesUser; safecall;
    procedure GhostMethod__Tables_128_9; safecall;
    procedure _Set_CatCustomer(const CatCustomer: _TablesUser); safecall;
    function Get_CatSupplier: _TablesUser; safecall;
    procedure GhostMethod__Tables_140_10; safecall;
    procedure _Set_CatSupplier(const CatSupplier: _TablesUser); safecall;
    function Get_CatAnalytique: _TablesUser; safecall;
    procedure GhostMethod__Tables_152_11; safecall;
    procedure _Set_CatAnalytique(const CatAnalytique: _TablesUser); safecall;
    function Get_CatAssets: _TablesUser; safecall;
    procedure GhostMethod__Tables_164_12; safecall;
    procedure _Set_CatAssets(const CatAssets: _TablesUser); safecall;
    property ZipCode: _TablesUser read Get_ZipCode write _Set_ZipCode;
    property Countries: _TablesUser read Get_Countries write _Set_Countries;
    property Civilities: _TablesUser read Get_Civilities write _Set_Civilities;
    property Languages: _TablesUser read Get_Languages write _Set_Languages;
    property PayCodes: _TablesUser read Get_PayCodes write _Set_PayCodes;
    property MoneyRates: _TablesUser read Get_MoneyRates write _Set_MoneyRates;
    property Diaries: _TablesUser read Get_Diaries write _Set_Diaries;
    property CatAccountGen: _TablesUser read Get_CatAccountGen write _Set_CatAccountGen;
    property CatCustomer: _TablesUser read Get_CatCustomer write _Set_CatCustomer;
    property CatSupplier: _TablesUser read Get_CatSupplier write _Set_CatSupplier;
    property CatAnalytique: _TablesUser read Get_CatAnalytique write _Set_CatAnalytique;
    property CatAssets: _TablesUser read Get_CatAssets write _Set_CatAssets;
  end;

  // *********************************************************************//
  // DispIntf:  _TablesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {0634AD47-2178-4E8A-90E7-C0F8838C862C}
  // *********************************************************************//
  _TablesDisp = dispinterface
    ['{0634AD47-2178-4E8A-90E7-C0F8838C862C}']
    property ZipCode: _TablesUser dispid 1073938432;
    procedure GhostMethod__Tables_32_1; dispid 1610743809;
    property Countries: _TablesUser dispid 1073938433;
    procedure GhostMethod__Tables_44_2; dispid 1610743812;
    property Civilities: _TablesUser dispid 1073938434;
    procedure GhostMethod__Tables_56_3; dispid 1610743815;
    property Languages: _TablesUser dispid 1073938435;
    procedure GhostMethod__Tables_68_4; dispid 1610743818;
    property PayCodes: _TablesUser dispid 1073938436;
    procedure GhostMethod__Tables_80_5; dispid 1610743821;
    property MoneyRates: _TablesUser dispid 1073938437;
    procedure GhostMethod__Tables_92_6; dispid 1610743824;
    property Diaries: _TablesUser dispid 1073938438;
    procedure GhostMethod__Tables_104_7; dispid 1610743827;
    property CatAccountGen: _TablesUser dispid 1073938439;
    procedure GhostMethod__Tables_116_8; dispid 1610743830;
    property CatCustomer: _TablesUser dispid 1073938440;
    procedure GhostMethod__Tables_128_9; dispid 1610743833;
    property CatSupplier: _TablesUser dispid 1073938441;
    procedure GhostMethod__Tables_140_10; dispid 1610743836;
    property CatAnalytique: _TablesUser dispid 1073938442;
    procedure GhostMethod__Tables_152_11; dispid 1610743839;
    property CatAssets: _TablesUser dispid 1073938443;
    procedure GhostMethod__Tables_164_12; dispid 1610743842;
  end;

  // *********************************************************************//
  // Interface: _Warning
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B01333D2-9497-4AC2-ADD4-7FD612E6F320}
  // *********************************************************************//
  _Warning = interface(IDispatch)
    ['{B01333D2-9497-4AC2-ADD4-7FD612E6F320}']
    function Get_Param: WideString; safecall;
    function Get_Code: WideString; safecall;
    procedure Set_SetResolution(var Param1: TypeSolution); safecall;
    function Get_GetResolution: Smallint; safecall;
    property Param: WideString read Get_Param;
    property Code: WideString read Get_Code;
    property SetResolution: TypeSolution write Set_SetResolution;
    property GetResolution: Smallint read Get_GetResolution;
  end;

  // *********************************************************************//
  // DispIntf:  _WarningDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B01333D2-9497-4AC2-ADD4-7FD612E6F320}
  // *********************************************************************//
  _WarningDisp = dispinterface
    ['{B01333D2-9497-4AC2-ADD4-7FD612E6F320}']
    property Param: WideString readonly dispid 1745027075;
    property Code: WideString readonly dispid 1745027076;
    property SetResolution: TypeSolution writeonly dispid 1745027073;
    property GetResolution: Smallint readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _ErrorCodes
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {3EE802AB-9C25-4818-9ACA-D167F702297D}
  // *********************************************************************//
  _ErrorCodes = interface(IDispatch)
    ['{3EE802AB-9C25-4818-9ACA-D167F702297D}']
    function Item(const The_Error: WideString): _ErrorCode; safecall;
    function Count: Smallint; safecall;
  end;

  // *********************************************************************//
  // DispIntf:  _ErrorCodesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {3EE802AB-9C25-4818-9ACA-D167F702297D}
  // *********************************************************************//
  _ErrorCodesDisp = dispinterface
    ['{3EE802AB-9C25-4818-9ACA-D167F702297D}']
    function Item(const The_Error: WideString): _ErrorCode; dispid 0;
    function Count: Smallint; dispid 1610809344;
  end;

  // *********************************************************************//
  // Interface: _Fields
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}
  // *********************************************************************//
  _Fields = interface(IDispatch)
    ['{BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}']
    function Item(const FieldNameorFieldNum: WideString): _Field; safecall;
    function Get_Count: Smallint; safecall;
    function GetIndiceInCollection(const FieldName: WideString): Smallint; safecall;
    property Count: Smallint read Get_Count;
  end;

  // *********************************************************************//
  // DispIntf:  _FieldsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}
  // *********************************************************************//
  _FieldsDisp = dispinterface
    ['{BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}']
    function Item(const FieldNameorFieldNum: WideString): _Field; dispid 0;
    property Count: Smallint readonly dispid 1745027072;
    function GetIndiceInCollection(const FieldName: WideString): Smallint; dispid 1610809347;
  end;

  // *********************************************************************//
  // Interface: _BookYears
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}
  // *********************************************************************//
  _BookYears = interface(IDispatch)
    ['{5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}']
    function Get_Count: Smallint; safecall;
    function Item(index: Smallint): _BookYear; safecall;
    property Count: Smallint read Get_Count;
  end;

  // *********************************************************************//
  // DispIntf:  _BookYearsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}
  // *********************************************************************//
  _BookYearsDisp = dispinterface
    ['{5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}']
    property Count: Smallint readonly dispid 1745027072;
    function Item(index: Smallint): _BookYear; dispid 0;
  end;

  // *********************************************************************//
  // Interface: _BookYear
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}
  // *********************************************************************//
  _BookYear = interface(IDispatch)
    ['{1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}']
    function Get_Periods: _Periods; safecall;
    procedure GhostMethod__BookYear_32_1; safecall;
    procedure _Set_Periods(const Periods: _Periods); safecall;
    function Get_ShortName: WideString; safecall;
    function Get_LongName: WideString; safecall;
    function Get_SigIndiceOfYear(var BookYearNum: Smallint): OleVariant; safecall;
    property Periods: _Periods read Get_Periods write _Set_Periods;
    property ShortName: WideString read Get_ShortName;
    property LongName: WideString read Get_LongName;
    property SigIndiceOfYear[var BookYearNum: Smallint]: OleVariant read Get_SigIndiceOfYear;
  end;

  // *********************************************************************//
  // DispIntf:  _BookYearDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}
  // *********************************************************************//
  _BookYearDisp = dispinterface
    ['{1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}']
    property Periods: _Periods dispid 1073938433;
    procedure GhostMethod__BookYear_32_1; dispid 1610743809;
    property ShortName: WideString readonly dispid 1745027074;
    property LongName: WideString readonly dispid 1745027073;
    property SigIndiceOfYear[var BookYearNum: Smallint]: OleVariant readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _Period
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {DFC7FAF8-21DF-44EB-B02B-3EED989DB860}
  // *********************************************************************//
  _Period = interface(IDispatch)
    ['{DFC7FAF8-21DF-44EB-B02B-3EED989DB860}']
    function Get_Name: WideString; safecall;
    function NumOfPeriod(const NamePeriod: WideString): WideString; safecall;
    function Get_ListOfPeriods: WideString; safecall;
    property name: WideString read Get_Name;
    property ListOfPeriods: WideString read Get_ListOfPeriods;
  end;

  // *********************************************************************//
  // DispIntf:  _PeriodDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {DFC7FAF8-21DF-44EB-B02B-3EED989DB860}
  // *********************************************************************//
  _PeriodDisp = dispinterface
    ['{DFC7FAF8-21DF-44EB-B02B-3EED989DB860}']
    property name: WideString readonly dispid 1745027074;
    function NumOfPeriod(const NamePeriod: WideString): WideString; dispid 1610809348;
    property ListOfPeriods: WideString readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _SocAnalyticalParam
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1409CADE-5A05-47C9-971B-F603BAA3CBC9}
  // *********************************************************************//
  _SocAnalyticalParam = interface(IDispatch)
    ['{1409CADE-5A05-47C9-971B-F603BAA3CBC9}']
    function SectionName(SectionNum: Smallint): WideString; safecall;
    function SectionType(SectionNum: Smallint): WideString; safecall;
    function SectionLength(SectionNum: Smallint): WideString; safecall;
    function SectionsCount: Smallint; safecall;
    function Get_IsInstalled: WordBool; safecall;
    property IsInstalled: WordBool read Get_IsInstalled;
  end;

  // *********************************************************************//
  // DispIntf:  _SocAnalyticalParamDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {1409CADE-5A05-47C9-971B-F603BAA3CBC9}
  // *********************************************************************//
  _SocAnalyticalParamDisp = dispinterface
    ['{1409CADE-5A05-47C9-971B-F603BAA3CBC9}']
    function SectionName(SectionNum: Smallint): WideString; dispid 1610809345;
    function SectionType(SectionNum: Smallint): WideString; dispid 1610809346;
    function SectionLength(SectionNum: Smallint): WideString; dispid 1610809347;
    function SectionsCount: Smallint; dispid 1610809348;
    property IsInstalled: WordBool readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _ErrorCode
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9F5C353E-FB46-4D19-B4E3-E08C3C60B710}
  // *********************************************************************//
  _ErrorCode = interface(IDispatch)
    ['{9F5C353E-FB46-4D19-B4E3-E08C3C60B710}']
    procedure Set_SetResolution(Param1: TypeSolution); safecall;
    function Get_GetResolution: Smallint; safecall;
    function Get_Description: WideString; safecall;
    function Get_AllowableActions: WideString; safecall;
    property SetResolution: TypeSolution write Set_SetResolution;
    property GetResolution: Smallint read Get_GetResolution;
    property Description: WideString read Get_Description;
    property AllowableActions: WideString read Get_AllowableActions;
  end;

  // *********************************************************************//
  // DispIntf:  _ErrorCodeDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {9F5C353E-FB46-4D19-B4E3-E08C3C60B710}
  // *********************************************************************//
  _ErrorCodeDisp = dispinterface
    ['{9F5C353E-FB46-4D19-B4E3-E08C3C60B710}']
    property SetResolution: TypeSolution writeonly dispid 1745027075;
    property GetResolution: Smallint readonly dispid 1745027074;
    property Description: WideString readonly dispid 1745027073;
    property AllowableActions: WideString readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _Import
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}
  // *********************************************************************//
  _Import = interface(IDispatch)
    ['{76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}']
    function Get_ErrorCodes: _ErrorCodes; safecall;
    procedure GhostMethod__Import_32_1; safecall;
    procedure _Set_ErrorCodes(const ErrorCodes: _ErrorCodes); safecall;
    function Get_Warnings: _Warnings; safecall;
    procedure GhostMethod__Import_44_2; safecall;
    procedure _Set_Warnings(const Warnings: _Warnings); safecall;
    function Get_FatalErrors: _FatalErrors; safecall;
    procedure GhostMethod__Import_56_3; safecall;
    procedure _Set_FatalErrors(const FatalErrors: _FatalErrors); safecall;
    procedure Set_LinkFormat(var Param1: FormatLink); safecall;
    function Get_LinkFormat: FormatLink; safecall;
    function SetDefaultPeriod(const sNewPeriod: WideString): WordBool; safecall;
    function FileFormat(const FileType: WideString): WordBool; safecall;
    function Directory(const vNewValue: WideString): WordBool; safecall;
    function Backup(var WayForBackup: WideString; var EraseExisting: WordBool): WordBool; safecall;
    function SigFieldToExclude(const sigFieldString: WideString): WordBool; safecall;
    function SigParamFieldLink(const sigFieldString: WideString): WordBool; safecall;
    function Execute: Smallint; safecall;
    function test: WordBool; safecall;
    property ErrorCodes: _ErrorCodes read Get_ErrorCodes write _Set_ErrorCodes;
    property Warnings: _Warnings read Get_Warnings write _Set_Warnings;
    property FatalErrors: _FatalErrors read Get_FatalErrors write _Set_FatalErrors;
    property LinkFormat: FormatLink read Get_LinkFormat write Set_LinkFormat;
  end;

  // *********************************************************************//
  // DispIntf:  _ImportDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}
  // *********************************************************************//
  _ImportDisp = dispinterface
    ['{76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}']
    property ErrorCodes: _ErrorCodes dispid 1073938432;
    procedure GhostMethod__Import_32_1; dispid 1610743809;
    property Warnings: _Warnings dispid 1073938433;
    procedure GhostMethod__Import_44_2; dispid 1610743812;
    property FatalErrors: _FatalErrors dispid 1073938434;
    procedure GhostMethod__Import_56_3; dispid 1610743815;
    property LinkFormat: FormatLink dispid 1745027072;
    function SetDefaultPeriod(const sNewPeriod: WideString): WordBool; dispid 1610809345;
    function FileFormat(const FileType: WideString): WordBool; dispid 1610809346;
    function Directory(const vNewValue: WideString): WordBool; dispid 1610809347;
    function Backup(var WayForBackup: WideString; var EraseExisting: WordBool): WordBool; dispid 1610809348;
    function SigFieldToExclude(const sigFieldString: WideString): WordBool; dispid 1610809349;
    function SigParamFieldLink(const sigFieldString: WideString): WordBool; dispid 1610809350;
    function Execute: Smallint; dispid 1610809351;
    function test: WordBool; dispid 1610809352;
  end;

  // *********************************************************************//
  // Interface: _DbClassApi
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {32338ECD-D93E-420D-91A8-883E55B377D5}
  // *********************************************************************//
  _DbClassApi = interface(IDispatch)
    ['{32338ECD-D93E-420D-91A8-883E55B377D5}']
  end;

  // *********************************************************************//
  // DispIntf:  _DbClassApiDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {32338ECD-D93E-420D-91A8-883E55B377D5}
  // *********************************************************************//
  _DbClassApiDisp = dispinterface
    ['{32338ECD-D93E-420D-91A8-883E55B377D5}']
  end;

  // *********************************************************************//
  // Interface: _Compte
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {0160E272-89CA-466B-A2A1-706B0027FEA5}
  // *********************************************************************//
  _Compte = interface(IDispatch)
    ['{0160E272-89CA-466B-A2A1-706B0027FEA5}']
    function Get_ListCount: Integer; safecall;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant; safecall;
    procedure InitializeCancel; safecall;
    procedure CancelOperation; safecall;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); safecall;
    procedure ExportXL; safecall;
    function Balance: Double; safecall;
    property ListCount: Integer read Get_ListCount;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  end;

  // *********************************************************************//
  // DispIntf:  _CompteDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {0160E272-89CA-466B-A2A1-706B0027FEA5}
  // *********************************************************************//
  _CompteDisp = dispinterface
    ['{0160E272-89CA-466B-A2A1-706B0027FEA5}']
    property ListCount: Integer readonly dispid 1745027073;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant readonly dispid 1745027072;
    procedure InitializeCancel; dispid 1610809349;
    procedure CancelOperation; dispid 1610809350;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); dispid 1610809351;
    procedure ExportXL; dispid 1610809352;
    function Balance: Double; dispid 1610809353;
  end;

  // *********************************************************************//
  // Interface: _TableUser
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {E77CFE56-9254-4F26-A270-01FECB1458D2}
  // *********************************************************************//
  _TableUser = interface(IDispatch)
    ['{E77CFE56-9254-4F26-A270-01FECB1458D2}']
    function Get_Number: WideString; safecall;
    function Get_SortOrder: Smallint; safecall;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant; safecall;
    procedure ExportXL; safecall;
    property Number: WideString read Get_Number;
    property SortOrder: Smallint read Get_SortOrder;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  end;

  // *********************************************************************//
  // DispIntf:  _TableUserDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {E77CFE56-9254-4F26-A270-01FECB1458D2}
  // *********************************************************************//
  _TableUserDisp = dispinterface
    ['{E77CFE56-9254-4F26-A270-01FECB1458D2}']
    property Number: WideString readonly dispid 1745027074;
    property SortOrder: Smallint readonly dispid 1745027073;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant readonly dispid 1745027072;
    procedure ExportXL; dispid 1610809349;
  end;

  // *********************************************************************//
  // Interface: _Comptes
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {A550F779-9D65-431C-8423-6A191A123F9C}
  // *********************************************************************//
  _Comptes = interface(IDispatch)
    ['{A550F779-9D65-431C-8423-6A191A123F9C}']
    function Get_Fields: _Fields; safecall;
    procedure GhostMethod__Comptes_32_1; safecall;
    procedure _Set_Fields(const Fields: _Fields); safecall;
    function Item(const Range: WideString): _Compte; safecall;
    function Get_OnlyBooked: WordBool; safecall;
    procedure Set_OnlyBooked(Param1: WordBool); safecall;
    function Get_CalcSum: WordBool; safecall;
    procedure Set_CalcSum(var Param1: WordBool); safecall;
    function Get_SortOrder: Smallint; safecall;
    procedure Set_SortOrder(Param1: Smallint); safecall;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  end;

  // *********************************************************************//
  // DispIntf:  _ComptesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {A550F779-9D65-431C-8423-6A191A123F9C}
  // *********************************************************************//
  _ComptesDisp = dispinterface
    ['{A550F779-9D65-431C-8423-6A191A123F9C}']
    property Fields: _Fields dispid 1073938434;
    procedure GhostMethod__Comptes_32_1; dispid 1610743809;
    function Item(const Range: WideString): _Compte; dispid 0;
    property OnlyBooked: WordBool dispid 1745027074;
    property CalcSum: WordBool dispid 1745027073;
    property SortOrder: Smallint dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _Dossier
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {85FD7C04-A8B8-4795-9890-0E89911DC530}
  // *********************************************************************//
  _Dossier = interface(IDispatch)
    ['{85FD7C04-A8B8-4795-9890-0E89911DC530}']
    function Get_Name: WideString; safecall;
    function Get_Path: WideString; safecall;
    property name: WideString read Get_Name;
    property Path: WideString read Get_Path;
  end;

  // *********************************************************************//
  // DispIntf:  _DossierDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {85FD7C04-A8B8-4795-9890-0E89911DC530}
  // *********************************************************************//
  _DossierDisp = dispinterface
    ['{85FD7C04-A8B8-4795-9890-0E89911DC530}']
    property name: WideString readonly dispid 1745027073;
    property Path: WideString readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _Options
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {E667C7A2-7F84-4C41-A337-126AD043478C}
  // *********************************************************************//
  _Options = interface(IDispatch)
    ['{E667C7A2-7F84-4C41-A337-126AD043478C}']
    procedure Set_NewSheet(Param1: WordBool); safecall;
    function Get_NewSheet: WordBool; safecall;
    procedure Set_ClearSheet(Param1: WordBool); safecall;
    function Get_ClearSheet: WordBool; safecall;
    procedure Set_WithTitle(Param1: WordBool); safecall;
    function Get_WithTitle: WordBool; safecall;
    procedure Set_Lang(const Param1: WideString); safecall;
    function Get_Lang: WideString; safecall;
    procedure Save; safecall;
    procedure LoadDefault; safecall;
    property NewSheet: WordBool read Get_NewSheet write Set_NewSheet;
    property ClearSheet: WordBool read Get_ClearSheet write Set_ClearSheet;
    property WithTitle: WordBool read Get_WithTitle write Set_WithTitle;
    property Lang: WideString read Get_Lang write Set_Lang;
  end;

  // *********************************************************************//
  // DispIntf:  _OptionsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {E667C7A2-7F84-4C41-A337-126AD043478C}
  // *********************************************************************//
  _OptionsDisp = dispinterface
    ['{E667C7A2-7F84-4C41-A337-126AD043478C}']
    property NewSheet: WordBool dispid 0;
    property ClearSheet: WordBool dispid 1745027074;
    property WithTitle: WordBool dispid 1745027073;
    property Lang: WideString dispid 1745027072;
    procedure Save; dispid 1610809347;
    procedure LoadDefault; dispid 1610809348;
  end;

  // *********************************************************************//
  // Interface: _Field
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {F105E093-D911-46A0-81AF-92B336CF4A83}
  // *********************************************************************//
  _Field = interface(IDispatch)
    ['{F105E093-D911-46A0-81AF-92B336CF4A83}']
    function Get_indice: Smallint; safecall;
    procedure Set_indice(var Param1: Smallint); safecall;
    function Get_Decimals: Smallint; safecall;
    function Get_Width: Smallint; safecall;
    function Get_GetFieldType: WideString; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Visible(Param1: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Expression(const Param1: WideString); safecall;
    property indice: Smallint read Get_indice write Set_indice;
    property Decimals: Smallint read Get_Decimals;
    property Width: Smallint read Get_Width;
    property GetFieldType: WideString read Get_GetFieldType;
    property Caption: WideString read Get_Caption;
    property name: WideString read Get_Name;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Expression: WideString read Get_Expression write Set_Expression;
  end;

  // *********************************************************************//
  // DispIntf:  _FieldDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {F105E093-D911-46A0-81AF-92B336CF4A83}
  // *********************************************************************//
  _FieldDisp = dispinterface
    ['{F105E093-D911-46A0-81AF-92B336CF4A83}']
    property indice: Smallint dispid 1745027081;
    property Decimals: Smallint readonly dispid 1745027078;
    property Width: Smallint readonly dispid 1745027077;
    property GetFieldType: WideString readonly dispid 1745027076;
    property Caption: WideString readonly dispid 1745027075;
    property name: WideString readonly dispid 1745027074;
    property Visible: WordBool dispid 1745027073;
    property Expression: WideString dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _AnaLytique
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7001AA94-00C5-4538-982B-229B29AEF8B2}
  // *********************************************************************//
  _AnaLytique = interface(IDispatch)
    ['{7001AA94-00C5-4538-982B-229B29AEF8B2}']
    procedure Set_DeterminePlan(var Param1: Smallint); safecall;
    procedure Set_PeriodStart(const Param1: WideString); safecall;
    procedure Set_PeriodEnd(const Param1: WideString); safecall;
    procedure Set_AllBookyear(Param1: WordBool); safecall;
    procedure InitializeCancel; safecall;
    procedure CancelOperation; safecall;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); safecall;
    procedure ExportXL; safecall;
    procedure ExportBalAna(const Deb_per: WideString; const End_per: WideString); safecall;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant; safecall;
    property DeterminePlan: Smallint write Set_DeterminePlan;
    property PeriodStart: WideString write Set_PeriodStart;
    property PeriodEnd: WideString write Set_PeriodEnd;
    property AllBookyear: WordBool write Set_AllBookyear;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  end;

  // *********************************************************************//
  // DispIntf:  _AnaLytiqueDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7001AA94-00C5-4538-982B-229B29AEF8B2}
  // *********************************************************************//
  _AnaLytiqueDisp = dispinterface
    ['{7001AA94-00C5-4538-982B-229B29AEF8B2}']
    property DeterminePlan: Smallint writeonly dispid 1745027077;
    property PeriodStart: WideString writeonly dispid 1745027076;
    property PeriodEnd: WideString writeonly dispid 1745027075;
    property AllBookyear: WordBool writeonly dispid 1745027074;
    procedure InitializeCancel; dispid 1610809353;
    procedure CancelOperation; dispid 1610809354;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); dispid 1610809355;
    procedure ExportXL; dispid 1610809356;
    procedure ExportBalAna(const Deb_per: WideString; const End_per: WideString); dispid 1610809357;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _WbApiUtilities
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {013A3107-0813-411A-AF5E-474D7850B4E5}
  // *********************************************************************//
  _WbApiUtilities = interface(IDispatch)
    ['{013A3107-0813-411A-AF5E-474D7850B4E5}']
    procedure FillTreeView(var obj_treeview: IDispatch; var obj_nod: IDispatch); safecall;
    function SaveNewQuery(const Id_query: WideString; const ID_statement: WideString): WordBool; safecall;
    function SaveExistingQuery(const Id_query: WideString; const ID_statement: WideString): WordBool; safecall;
    function DeleteQuery(const Id_query: WideString): WordBool; safecall;
    function InitializeTime: Double; safecall;
    function Get_GetTime: Double; safecall;
    function GetFieldCommentForTreeView(var the_objNOd: IDispatch): WideString; safecall;
    function LoadExistingQuery(var Obj_To_fill: IDispatch): WordBool; safecall;
    function SeekSelectedQuery(const Id_query: WideString): WideString; safecall;
    function QueryExist(const ID_statement: WideString): WideString; safecall;
    property GetTime: Double read Get_GetTime;
  end;

  // *********************************************************************//
  // DispIntf:  _WbApiUtilitiesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {013A3107-0813-411A-AF5E-474D7850B4E5}
  // *********************************************************************//
  _WbApiUtilitiesDisp = dispinterface
    ['{013A3107-0813-411A-AF5E-474D7850B4E5}']
    procedure FillTreeView(var obj_treeview: IDispatch; var obj_nod: IDispatch); dispid 1610809345;
    function SaveNewQuery(const Id_query: WideString; const ID_statement: WideString): WordBool; dispid 1610809346;
    function SaveExistingQuery(const Id_query: WideString; const ID_statement: WideString): WordBool; dispid 1610809349;
    function DeleteQuery(const Id_query: WideString): WordBool; dispid 1610809350;
    function InitializeTime: Double; dispid 1610809351;
    property GetTime: Double readonly dispid 1745027072;
    function GetFieldCommentForTreeView(var the_objNOd: IDispatch): WideString; dispid 1610809352;
    function LoadExistingQuery(var Obj_To_fill: IDispatch): WordBool; dispid 1610809353;
    function SeekSelectedQuery(const Id_query: WideString): WideString; dispid 1610809354;
    function QueryExist(const ID_statement: WideString): WideString; dispid 1610809355;
  end;

  // *********************************************************************//
  // Interface: _SqlError
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {8C45D26C-2723-401D-852F-9928C0502573}
  // *********************************************************************//
  _SqlError = interface(IDispatch)
    ['{8C45D26C-2723-401D-852F-9928C0502573}']
    function Get_Description: WideString; safecall;
    procedure Clear; safecall;
    property Description: WideString read Get_Description;
  end;

  // *********************************************************************//
  // DispIntf:  _SqlErrorDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {8C45D26C-2723-401D-852F-9928C0502573}
  // *********************************************************************//
  _SqlErrorDisp = dispinterface
    ['{8C45D26C-2723-401D-852F-9928C0502573}']
    property Description: WideString readonly dispid 1745027072;
    procedure Clear; dispid 1610809345;
  end;

  // *********************************************************************//
  // Interface: _User
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {5096A48E-51B7-4FA0-B779-95DF959F94E8}
  // *********************************************************************//
  _User = interface(IDispatch)
    ['{5096A48E-51B7-4FA0-B779-95DF959F94E8}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Param1: WideString); safecall;
    function CheckAccess(const SocName: WideString; const SocDirectory: WideString; const UserName: WideString): Smallint; safecall;
    procedure Register(const SocDirectory: WideString; const UserName: WideString; const UserLanguage: WideString; const UserPassword: WideString;
      const UserRights: WideString); safecall;
    function Get_Level: WideString; safecall;
    function Get_Language: WideString; safecall;
    procedure Set_Language(const Param1: WideString); safecall;
    function Get_Rights: WideString; safecall;
    procedure Set_Rights(const Param1: WideString); safecall;
    procedure UnRegister; safecall;
    function Get_PrefsPath: WideString; safecall;
    function IsUserLoggedInDossier(const UserName: WideString; const SocPathName: WideString): Smallint; safecall;
    function IsAdministrator: WordBool; safecall;
    function IsAccess(const ModuleItemName: WideString): WordBool; safecall;
    function GetAlternateUsernameAndDossier(const UserName: WideString; ForceRecalculation: WordBool): WideString; safecall;
    function CheckPasswordOfUser(const UserName: WideString; const the_soc: WideString): WordBool; safecall;
    function GetLanguageOfCurrentUser(const UserName: WideString): WideString; safecall;
    property name: WideString read Get_Name write Set_Name;
    property Level: WideString read Get_Level;
    property Language: WideString read Get_Language write Set_Language;
    property Rights: WideString read Get_Rights write Set_Rights;
    property PrefsPath: WideString read Get_PrefsPath;
  end;

  // *********************************************************************//
  // DispIntf:  _UserDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {5096A48E-51B7-4FA0-B779-95DF959F94E8}
  // *********************************************************************//
  _UserDisp = dispinterface
    ['{5096A48E-51B7-4FA0-B779-95DF959F94E8}']
    property name: WideString dispid 1745027077;
    function CheckAccess(const SocName: WideString; const SocDirectory: WideString; const UserName: WideString): Smallint; dispid 1610809350;
    procedure Register(const SocDirectory: WideString; const UserName: WideString; const UserLanguage: WideString; const UserPassword: WideString;
      const UserRights: WideString); dispid 1610809351;
    property Level: WideString readonly dispid 1745027076;
    property Language: WideString dispid 1745027075;
    property Rights: WideString dispid 1745027073;
    procedure UnRegister; dispid 1610809352;
    property PrefsPath: WideString readonly dispid 1745027072;
    function IsUserLoggedInDossier(const UserName: WideString; const SocPathName: WideString): Smallint; dispid 1610809353;
    function IsAdministrator: WordBool; dispid 1610809354;
    function IsAccess(const ModuleItemName: WideString): WordBool; dispid 1610809355;
    function GetAlternateUsernameAndDossier(const UserName: WideString; ForceRecalculation: WordBool): WideString; dispid 1610809356;
    function CheckPasswordOfUser(const UserName: WideString; const the_soc: WideString): WordBool; dispid 1610809357;
    function GetLanguageOfCurrentUser(const UserName: WideString): WideString; dispid 1610809359;
  end;

  // *********************************************************************//
  // Interface: _Dossiers
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7AA31EBA-863F-4397-B7EC-9E00BB941C97}
  // *********************************************************************//
  _Dossiers = interface(IDispatch)
    ['{7AA31EBA-863F-4397-B7EC-9E00BB941C97}']
    function Get_Count: Smallint; safecall;
    function GetAllCompanies: PSafeArray; safecall;
    function GetCompanyListSorted: OleVariant; safecall;
    function IsLocalDossierExist(const PathInUsersFile: WideString; const MyShortName: WideString): WordBool; safecall;
    function Item(index: Smallint): _Dossier; safecall;
    function Get_ShowArchivedBookyears: WordBool; safecall;
    procedure Set_ShowArchivedBookyears(Param1: WordBool); safecall;
    property Count: Smallint read Get_Count;
    property ShowArchivedBookyears: WordBool read Get_ShowArchivedBookyears write Set_ShowArchivedBookyears;
  end;

  // *********************************************************************//
  // DispIntf:  _DossiersDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {7AA31EBA-863F-4397-B7EC-9E00BB941C97}
  // *********************************************************************//
  _DossiersDisp = dispinterface
    ['{7AA31EBA-863F-4397-B7EC-9E00BB941C97}']
    property Count: Smallint readonly dispid 1745027073;
    function GetAllCompanies: { ??PSafeArray } OleVariant; dispid 1610809346;
    function GetCompanyListSorted: OleVariant; dispid 1610809347;
    function IsLocalDossierExist(const PathInUsersFile: WideString; const MyShortName: WideString): WordBool; dispid 1610809349;
    function Item(index: Smallint): _Dossier; dispid 0;
    property ShowArchivedBookyears: WordBool dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _ApiIni
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}
  // *********************************************************************//
  _ApiIni = interface(IDispatch)
    ['{B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}']
    function ReadINI(var Section: WideString; var Key: WideString): OleVariant; safecall;
    procedure WriteINI(var Section: WideString; var Key: WideString; var Text: WideString); safecall;
    function IsSpecifiedKeyExist(const Section: WideString; const Key: WideString; const IniFileName: WideString): WordBool; safecall;
    function Get_INIfile: WideString; safecall;
    procedure Set_INIfile(const Param1: WideString); safecall;
    function GetUserDbfPath: WideString; safecall;
    property INIfile: WideString read Get_INIfile write Set_INIfile;
  end;

  // *********************************************************************//
  // DispIntf:  _ApiIniDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}
  // *********************************************************************//
  _ApiIniDisp = dispinterface
    ['{B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}']
    function ReadINI(var Section: WideString; var Key: WideString): OleVariant; dispid 1610809345;
    procedure WriteINI(var Section: WideString; var Key: WideString; var Text: WideString); dispid 1610809346;
    function IsSpecifiedKeyExist(const Section: WideString; const Key: WideString; const IniFileName: WideString): WordBool; dispid 1610809347;
    property INIfile: WideString dispid 1745027072;
    function GetUserDbfPath: WideString; dispid 1610809348;
  end;

  // *********************************************************************//
  // Interface: _WinbooksObject
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {834C9818-ACFE-4420-9E30-7E5A63161D14}
  // *********************************************************************//
  _WinbooksObject = interface(IDispatch)
    ['{834C9818-ACFE-4420-9E30-7E5A63161D14}']
    function Get_Customers: _Comptes; safecall;
    procedure GhostMethod__WinbooksObject_32_1; safecall;
    procedure _Set_Customers(const Customers: _Comptes); safecall;
    function Get_Suppliers: _Comptes; safecall;
    procedure GhostMethod__WinbooksObject_44_2; safecall;
    procedure _Set_Suppliers(const Suppliers: _Comptes); safecall;
    function Get_Accounts: _Comptes; safecall;
    procedure GhostMethod__WinbooksObject_56_3; safecall;
    procedure _Set_Accounts(const Accounts: _Comptes); safecall;
    function Get_Analytical: _SocAnalyticalParam; safecall;
    procedure GhostMethod__WinbooksObject_68_4; safecall;
    procedure _Set_Analytical(const Analytical: _SocAnalyticalParam); safecall;
    function Get_CustomerTrans: _Transactions; safecall;
    procedure GhostMethod__WinbooksObject_80_5; safecall;
    procedure _Set_CustomerTrans(const CustomerTrans: _Transactions); safecall;
    function Get_CustTrans: _Transaction; safecall;
    procedure GhostMethod__WinbooksObject_92_6; safecall;
    procedure _Set_CustTrans(const CustTrans: _Transaction); safecall;
    function Get_SupplierTrans: _Transactions; safecall;
    procedure GhostMethod__WinbooksObject_104_7; safecall;
    procedure _Set_SupplierTrans(const SupplierTrans: _Transactions); safecall;
    function Get_AccountTrans: _Transactions; safecall;
    procedure GhostMethod__WinbooksObject_116_8; safecall;
    procedure _Set_AccountTrans(const AccountTrans: _Transactions); safecall;
    function Get_AnalyticalTrans: _Analytiques; safecall;
    procedure GhostMethod__WinbooksObject_128_9; safecall;
    procedure _Set_AnalyticalTrans(const AnalyticalTrans: _Analytiques); safecall;
    function Get_Tables: _Tables; safecall;
    procedure GhostMethod__WinbooksObject_140_10; safecall;
    procedure _Set_Tables(const Tables: _Tables); safecall;
    function Get_Import: _Import; safecall;
    procedure GhostMethod__WinbooksObject_152_11; safecall;
    procedure _Set_Import(const Import: _Import); safecall;
    function Get_BookYear: _BookYears; safecall;
    procedure GhostMethod__WinbooksObject_164_12; safecall;
    procedure _Set_BookYear(const BookYear: _BookYears); safecall;
    function Get_Options: _Options; safecall;
    procedure GhostMethod__WinbooksObject_176_13; safecall;
    procedure _Set_Options(const Options: _Options); safecall;
    function Get_Sql: _SqlClass; safecall;
    procedure GhostMethod__WinbooksObject_188_14; safecall;
    procedure _Set_Sql(const Sql: _SqlClass); safecall;
    function Get_Param: _Param; safecall;
    procedure GhostMethod__WinbooksObject_200_15; safecall;
    procedure _Set_Param(const Param: _Param); safecall;
    function Get_Utilities: _WbApiUtilities; safecall;
    procedure GhostMethod__WinbooksObject_212_16; safecall;
    procedure _Set_Utilities(const Utilities: _WbApiUtilities); safecall;
    function Get_Companies: _Dossiers; safecall;
    procedure GhostMethod__WinbooksObject_224_17; safecall;
    procedure _Set_Companies(const Companies: _Dossiers); safecall;
    function Get_LastErrorMessage: WideString; safecall;
    procedure Set_ActiveLanguage(Param1: LanguageDll); safecall;
    function ReturnLanguage: WideString; safecall;
    function Init: Smallint; safecall;
    function InitLocal: Smallint; safecall;
    function Login(const UserName: WideString; const UserPassword: WideString; const UserLanguage: WideString): Smallint; safecall;
    function OpenDossier(const ShortName: WideString): Smallint; safecall;
    procedure LoadFieldDefs; safecall;
    function OpenBookYear(const BookYearShortName: WideString): Smallint; safecall;
    procedure Set_SetPath(const Param1: WideString); safecall;
    procedure CloseDossier; safecall;
    function GetDossierPath(const ShortName: WideString): WideString; safecall;
    procedure FreeClipBoard; safecall;
    procedure PutInClipBoard(const Str_buffer1: WideString); safecall;
    function Get_Version: WideString; safecall;
    function GetDllVersion: WideString; safecall;
    function GetDllCompilDate: WideString; safecall;
    function GetDllInstallationPath: WideString; safecall;
    procedure Set_GetEncryptionPwd(const Param1: WideString); safecall;
    function Get_IsFullAccess: WordBool; safecall;
    property Customers: _Comptes read Get_Customers write _Set_Customers;
    property Suppliers: _Comptes read Get_Suppliers write _Set_Suppliers;
    property Accounts: _Comptes read Get_Accounts write _Set_Accounts;
    property Analytical: _SocAnalyticalParam read Get_Analytical write _Set_Analytical;
    property CustomerTrans: _Transactions read Get_CustomerTrans write _Set_CustomerTrans;
    property CustTrans: _Transaction read Get_CustTrans write _Set_CustTrans;
    property SupplierTrans: _Transactions read Get_SupplierTrans write _Set_SupplierTrans;
    property AccountTrans: _Transactions read Get_AccountTrans write _Set_AccountTrans;
    property AnalyticalTrans: _Analytiques read Get_AnalyticalTrans write _Set_AnalyticalTrans;
    property Tables: _Tables read Get_Tables write _Set_Tables;
    property Import: _Import read Get_Import write _Set_Import;
    property BookYear: _BookYears read Get_BookYear write _Set_BookYear;
    property Options: _Options read Get_Options write _Set_Options;
    property Sql: _SqlClass read Get_Sql write _Set_Sql;
    property Param: _Param read Get_Param write _Set_Param;
    property Utilities: _WbApiUtilities read Get_Utilities write _Set_Utilities;
    property Companies: _Dossiers read Get_Companies write _Set_Companies;
    property LastErrorMessage: WideString read Get_LastErrorMessage;
    property ActiveLanguage: LanguageDll write Set_ActiveLanguage;
    property SetPath: WideString write Set_SetPath;
    property Version: WideString read Get_Version;
    property GetEncryptionPwd: WideString write Set_GetEncryptionPwd;
    property IsFullAccess: WordBool read Get_IsFullAccess;
  end;

  // *********************************************************************//
  // DispIntf:  _WinbooksObjectDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {834C9818-ACFE-4420-9E30-7E5A63161D14}
  // *********************************************************************//
  _WinbooksObjectDisp = dispinterface
    ['{834C9818-ACFE-4420-9E30-7E5A63161D14}']
    property Customers: _Comptes dispid 1073938432;
    procedure GhostMethod__WinbooksObject_32_1; dispid 1610743809;
    property Suppliers: _Comptes dispid 1073938433;
    procedure GhostMethod__WinbooksObject_44_2; dispid 1610743812;
    property Accounts: _Comptes dispid 1073938434;
    procedure GhostMethod__WinbooksObject_56_3; dispid 1610743815;
    property Analytical: _SocAnalyticalParam dispid 1073938435;
    procedure GhostMethod__WinbooksObject_68_4; dispid 1610743818;
    property CustomerTrans: _Transactions dispid 1073938436;
    procedure GhostMethod__WinbooksObject_80_5; dispid 1610743821;
    property CustTrans: _Transaction dispid 1073938437;
    procedure GhostMethod__WinbooksObject_92_6; dispid 1610743824;
    property SupplierTrans: _Transactions dispid 1073938438;
    procedure GhostMethod__WinbooksObject_104_7; dispid 1610743827;
    property AccountTrans: _Transactions dispid 1073938439;
    procedure GhostMethod__WinbooksObject_116_8; dispid 1610743830;
    property AnalyticalTrans: _Analytiques dispid 1073938440;
    procedure GhostMethod__WinbooksObject_128_9; dispid 1610743833;
    property Tables: _Tables dispid 1073938441;
    procedure GhostMethod__WinbooksObject_140_10; dispid 1610743836;
    property Import: _Import dispid 1073938442;
    procedure GhostMethod__WinbooksObject_152_11; dispid 1610743839;
    property BookYear: _BookYears dispid 1073938443;
    procedure GhostMethod__WinbooksObject_164_12; dispid 1610743842;
    property Options: _Options dispid 1073938444;
    procedure GhostMethod__WinbooksObject_176_13; dispid 1610743845;
    property Sql: _SqlClass dispid 1073938445;
    procedure GhostMethod__WinbooksObject_188_14; dispid 1610743848;
    property Param: _Param dispid 1073938446;
    procedure GhostMethod__WinbooksObject_200_15; dispid 1610743851;
    property Utilities: _WbApiUtilities dispid 1073938447;
    procedure GhostMethod__WinbooksObject_212_16; dispid 1610743854;
    property Companies: _Dossiers dispid 1073938448;
    procedure GhostMethod__WinbooksObject_224_17; dispid 1610743857;
    property LastErrorMessage: WideString readonly dispid 1745027077;
    property ActiveLanguage: LanguageDll writeonly dispid 1745027076;
    function ReturnLanguage: WideString; dispid 1610809350;
    function Init: Smallint; dispid 1610809351;
    function InitLocal: Smallint; dispid 1610809352;
    function Login(const UserName: WideString; const UserPassword: WideString; const UserLanguage: WideString): Smallint; dispid 1610809353;
    function OpenDossier(const ShortName: WideString): Smallint; dispid 1610809354;
    procedure LoadFieldDefs; dispid 1610809356;
    function OpenBookYear(const BookYearShortName: WideString): Smallint; dispid 1610809358;
    property SetPath: WideString writeonly dispid 1745027075;
    procedure CloseDossier; dispid 1610809362;
    function GetDossierPath(const ShortName: WideString): WideString; dispid 1610809363;
    procedure FreeClipBoard; dispid 1610809364;
    procedure PutInClipBoard(const Str_buffer1: WideString); dispid 1610809365;
    property Version: WideString readonly dispid 1745027074;
    function GetDllVersion: WideString; dispid 1610809367;
    function GetDllCompilDate: WideString; dispid 1610809368;
    function GetDllInstallationPath: WideString; dispid 1610809369;
    property GetEncryptionPwd: WideString writeonly dispid 1745027073;
    property IsFullAccess: WordBool readonly dispid 1745027072;
  end;

  // *********************************************************************//
  // Interface: _SqlClass
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {53B092BD-10D4-4F44-B8C4-8137951306D3}
  // *********************************************************************//
  _SqlClass = interface(IDispatch)
    ['{53B092BD-10D4-4F44-B8C4-8137951306D3}']
    function Get_Error: _SqlError; safecall;
    procedure GhostMethod__SqlClass_32_1; safecall;
    procedure _Set_Error(const Error: _SqlError); safecall;
    procedure Set_OutputFileFormat(Param1: FileType); safecall;
    procedure Set_OutputFileName(const Param1: WideString); safecall;
    procedure Set_OutputFileMode(Param1: MODE); safecall;
    function Get_GetExecutionTime: Double; safecall;
    procedure Initialize; safecall;
    function WbSqlFunction(const QueryStatement: WideString; var WithCallBack: WordBool): OleVariant; safecall;
    function ExecuteSqlQuery(const QueryStatement: WideString; var WithCallBack: WordBool): Smallint; safecall;
    function WanTotCallBack: WordBool; safecall;
    function ValidateQueryStatement(SqlStatement: OleVariant): WordBool; safecall;
    function Get_LastQueryRecCount: Integer; safecall;
    property Error: _SqlError read Get_Error write _Set_Error;
    property OutputFileFormat: FileType write Set_OutputFileFormat;
    property OutputFileName: WideString write Set_OutputFileName;
    property OutputFileMode: MODE write Set_OutputFileMode;
    property GetExecutionTime: Double read Get_GetExecutionTime;
    property LastQueryRecCount: Integer read Get_LastQueryRecCount;
  end;

  // *********************************************************************//
  // DispIntf:  _SqlClassDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {53B092BD-10D4-4F44-B8C4-8137951306D3}
  // *********************************************************************//
  _SqlClassDisp = dispinterface
    ['{53B092BD-10D4-4F44-B8C4-8137951306D3}']
    property Error: _SqlError dispid 1073938445;
    procedure GhostMethod__SqlClass_32_1; dispid 1610743809;
    property OutputFileFormat: FileType writeonly dispid 1745027078;
    property OutputFileName: WideString writeonly dispid 1745027077;
    property OutputFileMode: MODE writeonly dispid 1745027076;
    property GetExecutionTime: Double readonly dispid 1745027075;
    procedure Initialize; dispid 1610809352;
    function WbSqlFunction(const QueryStatement: WideString; var WithCallBack: WordBool): OleVariant; dispid 1610809353;
    function ExecuteSqlQuery(const QueryStatement: WideString; var WithCallBack: WordBool): Smallint; dispid 1610809354;
    function WanTotCallBack: WordBool; dispid 1610809355;
    function ValidateQueryStatement(SqlStatement: OleVariant): WordBool; dispid 1610809360;
    property LastQueryRecCount: Integer readonly dispid 1745027074;
  end;

  // *********************************************************************//
  // DispIntf:  __SqlClass
  // Flags:     (4240) Hidden NonExtensible Dispatchable
  // GUID:      {22157BF3-9288-4011-BF76-7A3E4B8AD5CA}
  // *********************************************************************//
  __SqlClass = dispinterface
    ['{22157BF3-9288-4011-BF76-7A3E4B8AD5CA}']
    procedure OnExecute(ExecutionTime: Double; var Cancel: WordBool); dispid 1;
    procedure OnFillOutputFile(NbrRecOutput: Integer; NbrRecCount: Integer; var Cancel: WordBool); dispid 2;
  end;

  // *********************************************************************//
  // Interface: _Param
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {FAB874C8-E379-4AB3-AA5E-7CCC088B2160}
  // *********************************************************************//
  _Param = interface(IDispatch)
    ['{FAB874C8-E379-4AB3-AA5E-7CCC088B2160}']
    function Get_BookYears: _BookYears; safecall;
    procedure GhostMethod__Param_32_1; safecall;
    procedure _Set_BookYears(const BookYears: _BookYears); safecall;
    function Get_ShortName: WideString; safecall;
    function Get_PathName: WideString; safecall;
    function Get_PathExcel: WideString; safecall;
    function Get_CurrentBookYearNumber: Smallint; safecall;
    function Get_CurrentBookYearNumBis(const ExName: WideString): Smallint; safecall;
    function Get_Value(const ParamName: WideString): WideString; safecall;
    function GetParamValue(const StrID: WideString): WideString; safecall;
    function VATInternalCode(const CodeUser: WideString; const CliFou: WideString; var Langue: WideString): WideString; safecall;
    function PeriodInternalCode(ccDate: TDateTime): WideString; safecall;
    function IsFolderOpen: WordBool; safecall;
    function IsNetwork: WideString; safecall;
    function IsAsset: WordBool; safecall;
    function VatRate(const InternCodeVat: WideString): OleVariant; safecall;
    function VatAcc1(const InternCodeVat: WideString): WideString; safecall;
    function VatAcc2(const InternCodeVat: WideString): WideString; safecall;
    function VATExternalCode(const InternalCode: WideString; lLanguage: LangueforVat): OleVariant; safecall;
    property BookYears: _BookYears read Get_BookYears write _Set_BookYears;
    property ShortName: WideString read Get_ShortName;
    property PathName: WideString read Get_PathName;
    property PathExcel: WideString read Get_PathExcel;
    property CurrentBookYearNumber: Smallint read Get_CurrentBookYearNumber;
    property CurrentBookYearNumBis[const ExName: WideString]: Smallint read Get_CurrentBookYearNumBis;
    property Value[const ParamName: WideString]: WideString read Get_Value;
  end;

  // *********************************************************************//
  // DispIntf:  _ParamDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {FAB874C8-E379-4AB3-AA5E-7CCC088B2160}
  // *********************************************************************//
  _ParamDisp = dispinterface
    ['{FAB874C8-E379-4AB3-AA5E-7CCC088B2160}']
    property BookYears: _BookYears dispid 1073938432;
    procedure GhostMethod__Param_32_1; dispid 1610743809;
    property ShortName: WideString readonly dispid 1745027077;
    property PathName: WideString readonly dispid 1745027076;
    property PathExcel: WideString readonly dispid 1745027075;
    property CurrentBookYearNumber: Smallint readonly dispid 1745027074;
    property CurrentBookYearNumBis[const ExName: WideString]: Smallint readonly dispid 1745027073;
    property Value[const ParamName: WideString]: WideString readonly dispid 1745027072;
    function GetParamValue(const StrID: WideString): WideString; dispid 1610809350;
    function VATInternalCode(const CodeUser: WideString; const CliFou: WideString; var Langue: WideString): WideString; dispid 1610809351;
    function PeriodInternalCode(ccDate: TDateTime): WideString; dispid 1610809352;
    function IsFolderOpen: WordBool; dispid 1610809353;
    function IsNetwork: WideString; dispid 1610809354;
    function IsAsset: WordBool; dispid 1610809355;
    function VatRate(const InternCodeVat: WideString): OleVariant; dispid 1610809356;
    function VatAcc1(const InternCodeVat: WideString): WideString; dispid 1610809357;
    function VatAcc2(const InternCodeVat: WideString): WideString; dispid 1610809358;
    function VATExternalCode(const InternalCode: WideString; lLanguage: LangueforVat): OleVariant; dispid 1610809359;
  end;

  // *********************************************************************//
  // Interface: _Transactions
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}
  // *********************************************************************//
  _Transactions = interface(IDispatch)
    ['{36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}']
    function Get_Fields: _Fields; safecall;
    procedure GhostMethod__Transactions_32_1; safecall;
    procedure _Set_Fields(const Fields: _Fields); safecall;
    function Item(const Range: WideString): _Transaction; safecall;
    function Get_WithMatched: WordBool; safecall;
    procedure Set_WithMatched(Param1: WordBool); safecall;
    function Get_CategoryFilter: WideString; safecall;
    procedure Set_CategoryFilter(const Param1: WideString); safecall;
    function Get_PeriodRange: WideString; safecall;
    procedure Set_PeriodRange(const Param1: WideString); safecall;
    function GetPathOfactFile: WideString; safecall;
    function GetThePathofExisintFile: WideString; safecall;
    function PrecCalcACT(var TypeChoice: Byte; var Obj: IDispatch): WordBool; safecall;
    function IsFileTotPerExist: WordBool; safecall;
    procedure Set_YearTransaction(const Param1: WideString); safecall;
    function Get_CalcSum: WordBool; safecall;
    procedure Set_CalcSum(var Param1: WordBool); safecall;
    function Get_SortOrder: Smallint; safecall;
    procedure Set_SortOrder(var Param1: Smallint); safecall;
    function WichAccount(const Account: WideString; var ty: Smallint): _Transaction; safecall;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property WithMatched: WordBool read Get_WithMatched write Set_WithMatched;
    property CategoryFilter: WideString read Get_CategoryFilter write Set_CategoryFilter;
    property PeriodRange: WideString read Get_PeriodRange write Set_PeriodRange;
    property YearTransaction: WideString write Set_YearTransaction;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  end;

  // *********************************************************************//
  // DispIntf:  _TransactionsDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}
  // *********************************************************************//
  _TransactionsDisp = dispinterface
    ['{36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}']
    property Fields: _Fields dispid 1073938435;
    procedure GhostMethod__Transactions_32_1; dispid 1610743809;
    function Item(const Range: WideString): _Transaction; dispid 0;
    property WithMatched: WordBool dispid 1745027077;
    property CategoryFilter: WideString dispid 1745027076;
    property PeriodRange: WideString dispid 1745027075;
    function GetPathOfactFile: WideString; dispid 1610809353;
    function GetThePathofExisintFile: WideString; dispid 1610809354;
    function PrecCalcACT(var TypeChoice: Byte; var Obj: IDispatch): WordBool; dispid 1610809355;
    function IsFileTotPerExist: WordBool; dispid 1610809356;
    property YearTransaction: WideString writeonly dispid 1745027074;
    property CalcSum: WordBool dispid 1745027073;
    property SortOrder: Smallint dispid 1745027072;
    function WichAccount(const Account: WideString; var ty: Smallint): _Transaction; dispid 1610809357;
  end;

  // *********************************************************************//
  // Interface: _Analytiques
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {72E29583-AE9F-41C8-8A52-7D02AACD690B}
  // *********************************************************************//
  _Analytiques = interface(IDispatch)
    ['{72E29583-AE9F-41C8-8A52-7D02AACD690B}']
    function Get_Fields: _Fields; safecall;
    procedure GhostMethod__Analytiques_32_1; safecall;
    procedure _Set_Fields(const Fields: _Fields); safecall;
    function Item(const Range: WideString): _AnaLytique; safecall;
    function Get_SortOrder: Smallint; safecall;
    procedure Set_SortOrder(Param1: Smallint); safecall;
    function Get_OnlyBooked: WordBool; safecall;
    procedure Set_OnlyBooked(Param1: WordBool); safecall;
    function Wichplan(strindex: Smallint): _AnaLytique; safecall;
    function WichSectionPlan(const Section: WideString; const Plan: WideString): _AnaLytique; safecall;
    function FromWichNumber(const tipe: WideString): OleVariant; safecall;
    function FromWichAccount: OleVariant; safecall;
    function EnumCategory: OleVariant; safecall;
    procedure Set_PeriodRange(const Param1: WideString); safecall;
    function FromPeriods: OleVariant; safecall;
    function BalanceCum(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var TypeOfbal: Byte): Currency; safecall;
    function BalancePerEx(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var PlanAna2: WideString; var StartAccount2: WideString; var EndAccount2: WideString;
      var TypeOfbal: Byte): Currency; safecall;
    procedure ExportListeOfAnalyticalPlan(SectionAna: Smallint; var StartAccount: WideString; var EndAccount: WideString; var Category: WideString); safecall;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
    property PeriodRange: WideString write Set_PeriodRange;
  end;

  // *********************************************************************//
  // DispIntf:  _AnalytiquesDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {72E29583-AE9F-41C8-8A52-7D02AACD690B}
  // *********************************************************************//
  _AnalytiquesDisp = dispinterface
    ['{72E29583-AE9F-41C8-8A52-7D02AACD690B}']
    property Fields: _Fields dispid 1073938434;
    procedure GhostMethod__Analytiques_32_1; dispid 1610743809;
    function Item(const Range: WideString): _AnaLytique; dispid 1610809349;
    property SortOrder: Smallint dispid 1745027076;
    property OnlyBooked: WordBool dispid 1745027073;
    function Wichplan(strindex: Smallint): _AnaLytique; dispid 1610809350;
    function WichSectionPlan(const Section: WideString; const Plan: WideString): _AnaLytique; dispid 1610809351;
    function FromWichNumber(const tipe: WideString): OleVariant; dispid 1610809352;
    function FromWichAccount: OleVariant; dispid 1610809353;
    function EnumCategory: OleVariant; dispid 1610809354;
    property PeriodRange: WideString writeonly dispid 1745027072;
    function FromPeriods: OleVariant; dispid 1610809355;
    function BalanceCum(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var TypeOfbal: Byte): Currency; dispid 1610809356;
    function BalancePerEx(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var PlanAna2: WideString; var StartAccount2: WideString; var EndAccount2: WideString;
      var TypeOfbal: Byte): Currency; dispid 1610809357;
    procedure ExportListeOfAnalyticalPlan(SectionAna: Smallint; var StartAccount: WideString; var EndAccount: WideString; var Category: WideString);
      dispid 1610809359;
  end;

  // *********************************************************************//
  // Interface: _Transaction
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {04261072-CDDD-4655-BD4E-D79C36F1A776}
  // *********************************************************************//
  _Transaction = interface(IDispatch)
    ['{04261072-CDDD-4655-BD4E-D79C36F1A776}']
    function Get_ListCount: Integer; safecall;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant; safecall;
    procedure InitializeCancel; safecall;
    procedure CancelOperation; safecall;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); safecall;
    procedure ExportXL; safecall;
    procedure ExportExcelWithReport; safecall;
    function FastBalance: OleVariant; safecall;
    function Balance: OleVariant; safecall;
    function Turnover: OleVariant; safecall;
    function TurnoverAcc: OleVariant; safecall;
    function BalanceCur: OleVariant; safecall;
    function CliFouBalCur: Currency; safecall;
    property ListCount: Integer read Get_ListCount;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  end;

  // *********************************************************************//
  // DispIntf:  _TransactionDisp
  // Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
  // GUID:      {04261072-CDDD-4655-BD4E-D79C36F1A776}
  // *********************************************************************//
  _TransactionDisp = dispinterface
    ['{04261072-CDDD-4655-BD4E-D79C36F1A776}']
    property ListCount: Integer readonly dispid 1745027074;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant readonly dispid 1745027073;
    procedure InitializeCancel; dispid 1610809350;
    procedure CancelOperation; dispid 1610809351;
    procedure InitializeCallBack(var ObjCallBack: IDispatch); dispid 1610809352;
    procedure ExportXL; dispid 1610809353;
    procedure ExportExcelWithReport; dispid 1610809355;
    function FastBalance: OleVariant; dispid 1610809358;
    function Balance: OleVariant; dispid 1610809359;
    function Turnover: OleVariant; dispid 1610809360;
    function TurnoverAcc: OleVariant; dispid 1610809361;
    function BalanceCur: OleVariant; dispid 1610809365;
    function CliFouBalCur: Currency; dispid 1610809366;
  end;

  // *********************************************************************//
  // The Class CoFieldDef provides a Create and CreateRemote method to
  // create instances of the default interface _FieldDef exposed by
  // the CoClass FieldDef. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoFieldDef = class
    class function Create: _FieldDef;
    class function CreateRemote(const MachineName: string): _FieldDef;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TFieldDef
  // Help String      :
  // Default Interface: _FieldDef
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TFieldDefProperties = class;
{$ENDIF}

  TFieldDef = class(TOleServer)
  private
    FIntf: _FieldDef;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFieldDefProperties;
    function GetServerProperties: TFieldDefProperties;
{$ENDIF}
    function GetDefaultInterface: _FieldDef;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_Caption: WideString;
    procedure Set_Caption(const Caption: WideString);
    function Get_Visible: WordBool;
    procedure Set_Visible(Visible: WordBool);
    function Get_Format: WideString;
    procedure Set_Format(const Format: WideString);
    function Get_Expression: WideString;
    procedure Set_Expression(const Expression: WideString);
    function Get_Decimals: WideString;
    procedure Set_Decimals(const Decimals: WideString);
    function Get_Width: WideString;
    procedure Set_Width(const Width: WideString);
    function Get_GetFieldType: WideString;
    procedure Set_GetFieldType(const GetFieldType: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _FieldDef);
    procedure Disconnect; override;
    property DefaultInterface: _FieldDef read GetDefaultInterface;
    property name: WideString read Get_Name write Set_Name;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Format: WideString read Get_Format write Set_Format;
    property Expression: WideString read Get_Expression write Set_Expression;
    property Decimals: WideString read Get_Decimals write Set_Decimals;
    property Width: WideString read Get_Width write Set_Width;
    property GetFieldType: WideString read Get_GetFieldType write Set_GetFieldType;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFieldDefProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TFieldDef
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TFieldDefProperties = class(TPersistent)
  private
    FServer: TFieldDef;
    function GetDefaultInterface: _FieldDef;
    constructor Create(AServer: TFieldDef);
  protected
    function Get_Name: WideString;
    procedure Set_Name(const Name: WideString);
    function Get_Caption: WideString;
    procedure Set_Caption(const Caption: WideString);
    function Get_Visible: WordBool;
    procedure Set_Visible(Visible: WordBool);
    function Get_Format: WideString;
    procedure Set_Format(const Format: WideString);
    function Get_Expression: WideString;
    procedure Set_Expression(const Expression: WideString);
    function Get_Decimals: WideString;
    procedure Set_Decimals(const Decimals: WideString);
    function Get_Width: WideString;
    procedure Set_Width(const Width: WideString);
    function Get_GetFieldType: WideString;
    procedure Set_GetFieldType(const GetFieldType: WideString);
  public
    property DefaultInterface: _FieldDef read GetDefaultInterface;
  published
    property name: WideString read Get_Name write Set_Name;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Format: WideString read Get_Format write Set_Format;
    property Expression: WideString read Get_Expression write Set_Expression;
    property Decimals: WideString read Get_Decimals write Set_Decimals;
    property Width: WideString read Get_Width write Set_Width;
    property GetFieldType: WideString read Get_GetFieldType write Set_GetFieldType;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoPeriods provides a Create and CreateRemote method to
  // create instances of the default interface _Periods exposed by
  // the CoClass Periods. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoPeriods = class
    class function Create: _Periods;
    class function CreateRemote(const MachineName: string): _Periods;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TPeriods
  // Help String      :
  // Default Interface: _Periods
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TPeriodsProperties = class;
{$ENDIF}

  TPeriods = class(TOleServer)
  private
    FIntf: _Periods;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPeriodsProperties;
    function GetServerProperties: TPeriodsProperties;
{$ENDIF}
    function GetDefaultInterface: _Periods;
  protected
    procedure InitServerData; override;
    function Get_Count: Smallint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Periods);
    procedure Disconnect; override;
    function Item(index: Smallint): _Period;
    property DefaultInterface: _Periods read GetDefaultInterface;
    property Count: Smallint read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPeriodsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TPeriods
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TPeriodsProperties = class(TPersistent)
  private
    FServer: TPeriods;
    function GetDefaultInterface: _Periods;
    constructor Create(AServer: TPeriods);
  protected
    function Get_Count: Smallint;
  public
    property DefaultInterface: _Periods read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoFatalErrors provides a Create and CreateRemote method to
  // create instances of the default interface _FatalErrors exposed by
  // the CoClass FatalErrors. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoFatalErrors = class
    class function Create: _FatalErrors;
    class function CreateRemote(const MachineName: string): _FatalErrors;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TFatalErrors
  // Help String      :
  // Default Interface: _FatalErrors
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TFatalErrorsProperties = class;
{$ENDIF}

  TFatalErrors = class(TOleServer)
  private
    FIntf: _FatalErrors;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFatalErrorsProperties;
    function GetServerProperties: TFatalErrorsProperties;
{$ENDIF}
    function GetDefaultInterface: _FatalErrors;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _FatalErrors);
    procedure Disconnect; override;
    function Item(Range: Smallint): _FatalError;
    function Count: Smallint;
    property DefaultInterface: _FatalErrors read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFatalErrorsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TFatalErrors
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TFatalErrorsProperties = class(TPersistent)
  private
    FServer: TFatalErrors;
    function GetDefaultInterface: _FatalErrors;
    constructor Create(AServer: TFatalErrors);
  protected
  public
    property DefaultInterface: _FatalErrors read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoFatalError provides a Create and CreateRemote method to
  // create instances of the default interface _FatalError exposed by
  // the CoClass FatalError. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoFatalError = class
    class function Create: _FatalError;
    class function CreateRemote(const MachineName: string): _FatalError;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TFatalError
  // Help String      :
  // Default Interface: _FatalError
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TFatalErrorProperties = class;
{$ENDIF}

  TFatalError = class(TOleServer)
  private
    FIntf: _FatalError;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFatalErrorProperties;
    function GetServerProperties: TFatalErrorProperties;
{$ENDIF}
    function GetDefaultInterface: _FatalError;
  protected
    procedure InitServerData; override;
    function Get_Param: WideString;
    function Get_Code: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _FatalError);
    procedure Disconnect; override;
    property DefaultInterface: _FatalError read GetDefaultInterface;
    property Param: WideString read Get_Param;
    property Code: WideString read Get_Code;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFatalErrorProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TFatalError
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TFatalErrorProperties = class(TPersistent)
  private
    FServer: TFatalError;
    function GetDefaultInterface: _FatalError;
    constructor Create(AServer: TFatalError);
  protected
    function Get_Param: WideString;
    function Get_Code: WideString;
  public
    property DefaultInterface: _FatalError read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoWarnings provides a Create and CreateRemote method to
  // create instances of the default interface _Warnings exposed by
  // the CoClass Warnings. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoWarnings = class
    class function Create: _Warnings;
    class function CreateRemote(const MachineName: string): _Warnings;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TWarnings
  // Help String      :
  // Default Interface: _Warnings
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TWarningsProperties = class;
{$ENDIF}

  TWarnings = class(TOleServer)
  private
    FIntf: _Warnings;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWarningsProperties;
    function GetServerProperties: TWarningsProperties;
{$ENDIF}
    function GetDefaultInterface: _Warnings;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Warnings);
    procedure Disconnect; override;
    function Item(Range: Smallint): _Warning;
    function Count: Smallint;
    property DefaultInterface: _Warnings read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWarningsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TWarnings
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TWarningsProperties = class(TPersistent)
  private
    FServer: TWarnings;
    function GetDefaultInterface: _Warnings;
    constructor Create(AServer: TWarnings);
  protected
  public
    property DefaultInterface: _Warnings read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoQueries provides a Create and CreateRemote method to
  // create instances of the default interface _Queries exposed by
  // the CoClass Queries. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoQueries = class
    class function Create: _Queries;
    class function CreateRemote(const MachineName: string): _Queries;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TQueries
  // Help String      :
  // Default Interface: _Queries
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TQueriesProperties = class;
{$ENDIF}

  TQueries = class(TOleServer)
  private
    FIntf: _Queries;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TQueriesProperties;
    function GetServerProperties: TQueriesProperties;
{$ENDIF}
    function GetDefaultInterface: _Queries;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Queries);
    procedure Disconnect; override;
    property DefaultInterface: _Queries read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TQueriesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TQueries
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TQueriesProperties = class(TPersistent)
  private
    FServer: TQueries;
    function GetDefaultInterface: _Queries;
    constructor Create(AServer: TQueries);
  protected
  public
    property DefaultInterface: _Queries read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoTablesUser provides a Create and CreateRemote method to
  // create instances of the default interface _TablesUser exposed by
  // the CoClass TablesUser. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoTablesUser = class
    class function Create: _TablesUser;
    class function CreateRemote(const MachineName: string): _TablesUser;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TTablesUser
  // Help String      :
  // Default Interface: _TablesUser
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TTablesUserProperties = class;
{$ENDIF}

  TTablesUser = class(TOleServer)
  private
    FIntf: _TablesUser;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTablesUserProperties;
    function GetServerProperties: TTablesUserProperties;
{$ENDIF}
    function GetDefaultInterface: _TablesUser;
  protected
    procedure InitServerData; override;
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    procedure Set_OnlyUsed(Param1: WordBool);
    function Get_OnlyUsed: WordBool;
    procedure Set_SortOrder(var Param1: Smallint);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _TablesUser);
    procedure Disconnect; override;
    function Item(const Range: WideString): _TableUser;
    property DefaultInterface: _TablesUser read GetDefaultInterface;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property SortOrder: Smallint write Set_SortOrder;
    property OnlyUsed: WordBool read Get_OnlyUsed write Set_OnlyUsed;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTablesUserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TTablesUser
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TTablesUserProperties = class(TPersistent)
  private
    FServer: TTablesUser;
    function GetDefaultInterface: _TablesUser;
    constructor Create(AServer: TTablesUser);
  protected
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    procedure Set_OnlyUsed(Param1: WordBool);
    function Get_OnlyUsed: WordBool;
    procedure Set_SortOrder(var Param1: Smallint);
  public
    property DefaultInterface: _TablesUser read GetDefaultInterface;
  published
    property OnlyUsed: WordBool read Get_OnlyUsed write Set_OnlyUsed;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoTables provides a Create and CreateRemote method to
  // create instances of the default interface _Tables exposed by
  // the CoClass Tables. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoTables = class
    class function Create: _Tables;
    class function CreateRemote(const MachineName: string): _Tables;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TTables
  // Help String      :
  // Default Interface: _Tables
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TTablesProperties = class;
{$ENDIF}

  TTables = class(TOleServer)
  private
    FIntf: _Tables;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTablesProperties;
    function GetServerProperties: TTablesProperties;
{$ENDIF}
    function GetDefaultInterface: _Tables;
  protected
    procedure InitServerData; override;
    function Get_ZipCode: _TablesUser;
    procedure _Set_ZipCode(const ZipCode: _TablesUser);
    function Get_Countries: _TablesUser;
    procedure _Set_Countries(const Countries: _TablesUser);
    function Get_Civilities: _TablesUser;
    procedure _Set_Civilities(const Civilities: _TablesUser);
    function Get_Languages: _TablesUser;
    procedure _Set_Languages(const Languages: _TablesUser);
    function Get_PayCodes: _TablesUser;
    procedure _Set_PayCodes(const PayCodes: _TablesUser);
    function Get_MoneyRates: _TablesUser;
    procedure _Set_MoneyRates(const MoneyRates: _TablesUser);
    function Get_Diaries: _TablesUser;
    procedure _Set_Diaries(const Diaries: _TablesUser);
    function Get_CatAccountGen: _TablesUser;
    procedure _Set_CatAccountGen(const CatAccountGen: _TablesUser);
    function Get_CatCustomer: _TablesUser;
    procedure _Set_CatCustomer(const CatCustomer: _TablesUser);
    function Get_CatSupplier: _TablesUser;
    procedure _Set_CatSupplier(const CatSupplier: _TablesUser);
    function Get_CatAnalytique: _TablesUser;
    procedure _Set_CatAnalytique(const CatAnalytique: _TablesUser);
    function Get_CatAssets: _TablesUser;
    procedure _Set_CatAssets(const CatAssets: _TablesUser);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Tables);
    procedure Disconnect; override;
    property DefaultInterface: _Tables read GetDefaultInterface;
    property ZipCode: _TablesUser read Get_ZipCode write _Set_ZipCode;
    property Countries: _TablesUser read Get_Countries write _Set_Countries;
    property Civilities: _TablesUser read Get_Civilities write _Set_Civilities;
    property Languages: _TablesUser read Get_Languages write _Set_Languages;
    property PayCodes: _TablesUser read Get_PayCodes write _Set_PayCodes;
    property MoneyRates: _TablesUser read Get_MoneyRates write _Set_MoneyRates;
    property Diaries: _TablesUser read Get_Diaries write _Set_Diaries;
    property CatAccountGen: _TablesUser read Get_CatAccountGen write _Set_CatAccountGen;
    property CatCustomer: _TablesUser read Get_CatCustomer write _Set_CatCustomer;
    property CatSupplier: _TablesUser read Get_CatSupplier write _Set_CatSupplier;
    property CatAnalytique: _TablesUser read Get_CatAnalytique write _Set_CatAnalytique;
    property CatAssets: _TablesUser read Get_CatAssets write _Set_CatAssets;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTablesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TTables
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TTablesProperties = class(TPersistent)
  private
    FServer: TTables;
    function GetDefaultInterface: _Tables;
    constructor Create(AServer: TTables);
  protected
    function Get_ZipCode: _TablesUser;
    procedure _Set_ZipCode(const ZipCode: _TablesUser);
    function Get_Countries: _TablesUser;
    procedure _Set_Countries(const Countries: _TablesUser);
    function Get_Civilities: _TablesUser;
    procedure _Set_Civilities(const Civilities: _TablesUser);
    function Get_Languages: _TablesUser;
    procedure _Set_Languages(const Languages: _TablesUser);
    function Get_PayCodes: _TablesUser;
    procedure _Set_PayCodes(const PayCodes: _TablesUser);
    function Get_MoneyRates: _TablesUser;
    procedure _Set_MoneyRates(const MoneyRates: _TablesUser);
    function Get_Diaries: _TablesUser;
    procedure _Set_Diaries(const Diaries: _TablesUser);
    function Get_CatAccountGen: _TablesUser;
    procedure _Set_CatAccountGen(const CatAccountGen: _TablesUser);
    function Get_CatCustomer: _TablesUser;
    procedure _Set_CatCustomer(const CatCustomer: _TablesUser);
    function Get_CatSupplier: _TablesUser;
    procedure _Set_CatSupplier(const CatSupplier: _TablesUser);
    function Get_CatAnalytique: _TablesUser;
    procedure _Set_CatAnalytique(const CatAnalytique: _TablesUser);
    function Get_CatAssets: _TablesUser;
    procedure _Set_CatAssets(const CatAssets: _TablesUser);
  public
    property DefaultInterface: _Tables read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoWarning provides a Create and CreateRemote method to
  // create instances of the default interface _Warning exposed by
  // the CoClass Warning. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoWarning = class
    class function Create: _Warning;
    class function CreateRemote(const MachineName: string): _Warning;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TWarning
  // Help String      :
  // Default Interface: _Warning
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TWarningProperties = class;
{$ENDIF}

  TWarning = class(TOleServer)
  private
    FIntf: _Warning;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWarningProperties;
    function GetServerProperties: TWarningProperties;
{$ENDIF}
    function GetDefaultInterface: _Warning;
  protected
    procedure InitServerData; override;
    function Get_Param: WideString;
    function Get_Code: WideString;
    procedure Set_SetResolution(var Param1: TypeSolution);
    function Get_GetResolution: Smallint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Warning);
    procedure Disconnect; override;
    property DefaultInterface: _Warning read GetDefaultInterface;
    property Param: WideString read Get_Param;
    property Code: WideString read Get_Code;
    property SetResolution: TypeSolution write Set_SetResolution;
    property GetResolution: Smallint read Get_GetResolution;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWarningProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TWarning
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TWarningProperties = class(TPersistent)
  private
    FServer: TWarning;
    function GetDefaultInterface: _Warning;
    constructor Create(AServer: TWarning);
  protected
    function Get_Param: WideString;
    function Get_Code: WideString;
    procedure Set_SetResolution(var Param1: TypeSolution);
    function Get_GetResolution: Smallint;
  public
    property DefaultInterface: _Warning read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoErrorCodes provides a Create and CreateRemote method to
  // create instances of the default interface _ErrorCodes exposed by
  // the CoClass ErrorCodes. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoErrorCodes = class
    class function Create: _ErrorCodes;
    class function CreateRemote(const MachineName: string): _ErrorCodes;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TErrorCodes
  // Help String      :
  // Default Interface: _ErrorCodes
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TErrorCodesProperties = class;
{$ENDIF}

  TErrorCodes = class(TOleServer)
  private
    FIntf: _ErrorCodes;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TErrorCodesProperties;
    function GetServerProperties: TErrorCodesProperties;
{$ENDIF}
    function GetDefaultInterface: _ErrorCodes;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ErrorCodes);
    procedure Disconnect; override;
    function Item(const The_Error: WideString): _ErrorCode;
    function Count: Smallint;
    property DefaultInterface: _ErrorCodes read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TErrorCodesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TErrorCodes
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TErrorCodesProperties = class(TPersistent)
  private
    FServer: TErrorCodes;
    function GetDefaultInterface: _ErrorCodes;
    constructor Create(AServer: TErrorCodes);
  protected
  public
    property DefaultInterface: _ErrorCodes read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoFields provides a Create and CreateRemote method to
  // create instances of the default interface _Fields exposed by
  // the CoClass Fields. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoFields = class
    class function Create: _Fields;
    class function CreateRemote(const MachineName: string): _Fields;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TFields
  // Help String      :
  // Default Interface: _Fields
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TFieldsProperties = class;
{$ENDIF}

  TFields = class(TOleServer)
  private
    FIntf: _Fields;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFieldsProperties;
    function GetServerProperties: TFieldsProperties;
{$ENDIF}
    function GetDefaultInterface: _Fields;
  protected
    procedure InitServerData; override;
    function Get_Count: Smallint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Fields);
    procedure Disconnect; override;
    function Item(const FieldNameorFieldNum: WideString): _Field;
    function GetIndiceInCollection(const FieldName: WideString): Smallint;
    property DefaultInterface: _Fields read GetDefaultInterface;
    property Count: Smallint read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFieldsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TFields
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TFieldsProperties = class(TPersistent)
  private
    FServer: TFields;
    function GetDefaultInterface: _Fields;
    constructor Create(AServer: TFields);
  protected
    function Get_Count: Smallint;
  public
    property DefaultInterface: _Fields read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoBookYears provides a Create and CreateRemote method to
  // create instances of the default interface _BookYears exposed by
  // the CoClass BookYears. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoBookYears = class
    class function Create: _BookYears;
    class function CreateRemote(const MachineName: string): _BookYears;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TBookYears
  // Help String      :
  // Default Interface: _BookYears
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TBookYearsProperties = class;
{$ENDIF}

  TBookYears = class(TOleServer)
  private
    FIntf: _BookYears;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBookYearsProperties;
    function GetServerProperties: TBookYearsProperties;
{$ENDIF}
    function GetDefaultInterface: _BookYears;
  protected
    procedure InitServerData; override;
    function Get_Count: Smallint;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _BookYears);
    procedure Disconnect; override;
    function Item(index: Smallint): _BookYear;
    property DefaultInterface: _BookYears read GetDefaultInterface;
    property Count: Smallint read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBookYearsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TBookYears
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TBookYearsProperties = class(TPersistent)
  private
    FServer: TBookYears;
    function GetDefaultInterface: _BookYears;
    constructor Create(AServer: TBookYears);
  protected
    function Get_Count: Smallint;
  public
    property DefaultInterface: _BookYears read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoBookYear provides a Create and CreateRemote method to
  // create instances of the default interface _BookYear exposed by
  // the CoClass BookYear. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoBookYear = class
    class function Create: _BookYear;
    class function CreateRemote(const MachineName: string): _BookYear;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TBookYear
  // Help String      :
  // Default Interface: _BookYear
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TBookYearProperties = class;
{$ENDIF}

  TBookYear = class(TOleServer)
  private
    FIntf: _BookYear;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBookYearProperties;
    function GetServerProperties: TBookYearProperties;
{$ENDIF}
    function GetDefaultInterface: _BookYear;
  protected
    procedure InitServerData; override;
    function Get_Periods: _Periods;
    procedure _Set_Periods(const Periods: _Periods);
    function Get_ShortName: WideString;
    function Get_LongName: WideString;
    function Get_SigIndiceOfYear(var BookYearNum: Smallint): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _BookYear);
    procedure Disconnect; override;
    property DefaultInterface: _BookYear read GetDefaultInterface;
    property Periods: _Periods read Get_Periods write _Set_Periods;
    property ShortName: WideString read Get_ShortName;
    property LongName: WideString read Get_LongName;
    property SigIndiceOfYear[var BookYearNum: Smallint]: OleVariant read Get_SigIndiceOfYear;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBookYearProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TBookYear
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TBookYearProperties = class(TPersistent)
  private
    FServer: TBookYear;
    function GetDefaultInterface: _BookYear;
    constructor Create(AServer: TBookYear);
  protected
    function Get_Periods: _Periods;
    procedure _Set_Periods(const Periods: _Periods);
    function Get_ShortName: WideString;
    function Get_LongName: WideString;
    function Get_SigIndiceOfYear(var BookYearNum: Smallint): OleVariant;
  public
    property DefaultInterface: _BookYear read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoPeriod provides a Create and CreateRemote method to
  // create instances of the default interface _Period exposed by
  // the CoClass Period. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoPeriod = class
    class function Create: _Period;
    class function CreateRemote(const MachineName: string): _Period;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TPeriod
  // Help String      :
  // Default Interface: _Period
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TPeriodProperties = class;
{$ENDIF}

  TPeriod = class(TOleServer)
  private
    FIntf: _Period;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPeriodProperties;
    function GetServerProperties: TPeriodProperties;
{$ENDIF}
    function GetDefaultInterface: _Period;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_ListOfPeriods: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Period);
    procedure Disconnect; override;
    function NumOfPeriod(const NamePeriod: WideString): WideString;
    property DefaultInterface: _Period read GetDefaultInterface;
    property name: WideString read Get_Name;
    property ListOfPeriods: WideString read Get_ListOfPeriods;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPeriodProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TPeriod
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TPeriodProperties = class(TPersistent)
  private
    FServer: TPeriod;
    function GetDefaultInterface: _Period;
    constructor Create(AServer: TPeriod);
  protected
    function Get_Name: WideString;
    function Get_ListOfPeriods: WideString;
  public
    property DefaultInterface: _Period read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoSocAnalyticalParam provides a Create and CreateRemote method to
  // create instances of the default interface _SocAnalyticalParam exposed by
  // the CoClass SocAnalyticalParam. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSocAnalyticalParam = class
    class function Create: _SocAnalyticalParam;
    class function CreateRemote(const MachineName: string): _SocAnalyticalParam;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TSocAnalyticalParam
  // Help String      :
  // Default Interface: _SocAnalyticalParam
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TSocAnalyticalParamProperties = class;
{$ENDIF}

  TSocAnalyticalParam = class(TOleServer)
  private
    FIntf: _SocAnalyticalParam;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSocAnalyticalParamProperties;
    function GetServerProperties: TSocAnalyticalParamProperties;
{$ENDIF}
    function GetDefaultInterface: _SocAnalyticalParam;
  protected
    procedure InitServerData; override;
    function Get_IsInstalled: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _SocAnalyticalParam);
    procedure Disconnect; override;
    function SectionName(SectionNum: Smallint): WideString;
    function SectionType(SectionNum: Smallint): WideString;
    function SectionLength(SectionNum: Smallint): WideString;
    function SectionsCount: Smallint;
    property DefaultInterface: _SocAnalyticalParam read GetDefaultInterface;
    property IsInstalled: WordBool read Get_IsInstalled;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSocAnalyticalParamProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TSocAnalyticalParam
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TSocAnalyticalParamProperties = class(TPersistent)
  private
    FServer: TSocAnalyticalParam;
    function GetDefaultInterface: _SocAnalyticalParam;
    constructor Create(AServer: TSocAnalyticalParam);
  protected
    function Get_IsInstalled: WordBool;
  public
    property DefaultInterface: _SocAnalyticalParam read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoErrorCode provides a Create and CreateRemote method to
  // create instances of the default interface _ErrorCode exposed by
  // the CoClass ErrorCode. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoErrorCode = class
    class function Create: _ErrorCode;
    class function CreateRemote(const MachineName: string): _ErrorCode;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TErrorCode
  // Help String      :
  // Default Interface: _ErrorCode
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TErrorCodeProperties = class;
{$ENDIF}

  TErrorCode = class(TOleServer)
  private
    FIntf: _ErrorCode;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TErrorCodeProperties;
    function GetServerProperties: TErrorCodeProperties;
{$ENDIF}
    function GetDefaultInterface: _ErrorCode;
  protected
    procedure InitServerData; override;
    procedure Set_SetResolution(Param1: TypeSolution);
    function Get_GetResolution: Smallint;
    function Get_Description: WideString;
    function Get_AllowableActions: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ErrorCode);
    procedure Disconnect; override;
    property DefaultInterface: _ErrorCode read GetDefaultInterface;
    property SetResolution: TypeSolution write Set_SetResolution;
    property GetResolution: Smallint read Get_GetResolution;
    property Description: WideString read Get_Description;
    property AllowableActions: WideString read Get_AllowableActions;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TErrorCodeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TErrorCode
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TErrorCodeProperties = class(TPersistent)
  private
    FServer: TErrorCode;
    function GetDefaultInterface: _ErrorCode;
    constructor Create(AServer: TErrorCode);
  protected
    procedure Set_SetResolution(Param1: TypeSolution);
    function Get_GetResolution: Smallint;
    function Get_Description: WideString;
    function Get_AllowableActions: WideString;
  public
    property DefaultInterface: _ErrorCode read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoImport provides a Create and CreateRemote method to
  // create instances of the default interface _Import exposed by
  // the CoClass Import. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoImport = class
    class function Create: _Import;
    class function CreateRemote(const MachineName: string): _Import;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TImport
  // Help String      :
  // Default Interface: _Import
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TImportProperties = class;
{$ENDIF}

  TImport = class(TOleServer)
  private
    FIntf: _Import;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TImportProperties;
    function GetServerProperties: TImportProperties;
{$ENDIF}
    function GetDefaultInterface: _Import;
  protected
    procedure InitServerData; override;
    function Get_ErrorCodes: _ErrorCodes;
    procedure _Set_ErrorCodes(const ErrorCodes: _ErrorCodes);
    function Get_Warnings: _Warnings;
    procedure _Set_Warnings(const Warnings: _Warnings);
    function Get_FatalErrors: _FatalErrors;
    procedure _Set_FatalErrors(const FatalErrors: _FatalErrors);
    procedure Set_LinkFormat(var Param1: FormatLink);
    function Get_LinkFormat: FormatLink;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Import);
    procedure Disconnect; override;
    function SetDefaultPeriod(const sNewPeriod: WideString): WordBool;
    function FileFormat(const FileType: WideString): WordBool;
    function Directory(const vNewValue: WideString): WordBool;
    function Backup(var WayForBackup: WideString; var EraseExisting: WordBool): WordBool;
    function SigFieldToExclude(const sigFieldString: WideString): WordBool;
    function SigParamFieldLink(const sigFieldString: WideString): WordBool;
    function Execute: Smallint;
    function test: WordBool;
    property DefaultInterface: _Import read GetDefaultInterface;
    property ErrorCodes: _ErrorCodes read Get_ErrorCodes write _Set_ErrorCodes;
    property Warnings: _Warnings read Get_Warnings write _Set_Warnings;
    property FatalErrors: _FatalErrors read Get_FatalErrors write _Set_FatalErrors;
    property LinkFormat: FormatLink read Get_LinkFormat write Set_LinkFormat;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TImportProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TImport
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TImportProperties = class(TPersistent)
  private
    FServer: TImport;
    function GetDefaultInterface: _Import;
    constructor Create(AServer: TImport);
  protected
    function Get_ErrorCodes: _ErrorCodes;
    procedure _Set_ErrorCodes(const ErrorCodes: _ErrorCodes);
    function Get_Warnings: _Warnings;
    procedure _Set_Warnings(const Warnings: _Warnings);
    function Get_FatalErrors: _FatalErrors;
    procedure _Set_FatalErrors(const FatalErrors: _FatalErrors);
    procedure Set_LinkFormat(var Param1: FormatLink);
    function Get_LinkFormat: FormatLink;
  public
    property DefaultInterface: _Import read GetDefaultInterface;
  published
    property LinkFormat: FormatLink read Get_LinkFormat write Set_LinkFormat;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoDbClassApi provides a Create and CreateRemote method to
  // create instances of the default interface _DbClassApi exposed by
  // the CoClass DbClassApi. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoDbClassApi = class
    class function Create: _DbClassApi;
    class function CreateRemote(const MachineName: string): _DbClassApi;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TDbClassApi
  // Help String      :
  // Default Interface: _DbClassApi
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (0)
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TDbClassApiProperties = class;
{$ENDIF}

  TDbClassApi = class(TOleServer)
  private
    FIntf: _DbClassApi;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDbClassApiProperties;
    function GetServerProperties: TDbClassApiProperties;
{$ENDIF}
    function GetDefaultInterface: _DbClassApi;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _DbClassApi);
    procedure Disconnect; override;
    property DefaultInterface: _DbClassApi read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDbClassApiProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TDbClassApi
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TDbClassApiProperties = class(TPersistent)
  private
    FServer: TDbClassApi;
    function GetDefaultInterface: _DbClassApi;
    constructor Create(AServer: TDbClassApi);
  protected
  public
    property DefaultInterface: _DbClassApi read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoCompte provides a Create and CreateRemote method to
  // create instances of the default interface _Compte exposed by
  // the CoClass Compte. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCompte = class
    class function Create: _Compte;
    class function CreateRemote(const MachineName: string): _Compte;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TCompte
  // Help String      :
  // Default Interface: _Compte
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TCompteProperties = class;
{$ENDIF}

  TCompte = class(TOleServer)
  private
    FIntf: _Compte;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCompteProperties;
    function GetServerProperties: TCompteProperties;
{$ENDIF}
    function GetDefaultInterface: _Compte;
  protected
    procedure InitServerData; override;
    function Get_ListCount: Integer;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Compte);
    procedure Disconnect; override;
    procedure InitializeCancel;
    procedure CancelOperation;
    procedure InitializeCallBack(var ObjCallBack: IDispatch);
    procedure ExportXL;
    function Balance: Double;
    property DefaultInterface: _Compte read GetDefaultInterface;
    property ListCount: Integer read Get_ListCount;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCompteProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TCompte
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TCompteProperties = class(TPersistent)
  private
    FServer: TCompte;
    function GetDefaultInterface: _Compte;
    constructor Create(AServer: TCompte);
  protected
    function Get_ListCount: Integer;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    property DefaultInterface: _Compte read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoTableUser provides a Create and CreateRemote method to
  // create instances of the default interface _TableUser exposed by
  // the CoClass TableUser. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoTableUser = class
    class function Create: _TableUser;
    class function CreateRemote(const MachineName: string): _TableUser;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TTableUser
  // Help String      :
  // Default Interface: _TableUser
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TTableUserProperties = class;
{$ENDIF}

  TTableUser = class(TOleServer)
  private
    FIntf: _TableUser;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTableUserProperties;
    function GetServerProperties: TTableUserProperties;
{$ENDIF}
    function GetDefaultInterface: _TableUser;
  protected
    procedure InitServerData; override;
    function Get_Number: WideString;
    function Get_SortOrder: Smallint;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _TableUser);
    procedure Disconnect; override;
    procedure ExportXL;
    property DefaultInterface: _TableUser read GetDefaultInterface;
    property Number: WideString read Get_Number;
    property SortOrder: Smallint read Get_SortOrder;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTableUserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TTableUser
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TTableUserProperties = class(TPersistent)
  private
    FServer: TTableUser;
    function GetDefaultInterface: _TableUser;
    constructor Create(AServer: TTableUser);
  protected
    function Get_Number: WideString;
    function Get_SortOrder: Smallint;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    property DefaultInterface: _TableUser read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoComptes provides a Create and CreateRemote method to
  // create instances of the default interface _Comptes exposed by
  // the CoClass Comptes. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoComptes = class
    class function Create: _Comptes;
    class function CreateRemote(const MachineName: string): _Comptes;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TComptes
  // Help String      :
  // Default Interface: _Comptes
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TComptesProperties = class;
{$ENDIF}

  TComptes = class(TOleServer)
  private
    FIntf: _Comptes;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TComptesProperties;
    function GetServerProperties: TComptesProperties;
{$ENDIF}
    function GetDefaultInterface: _Comptes;
  protected
    procedure InitServerData; override;
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_OnlyBooked: WordBool;
    procedure Set_OnlyBooked(Param1: WordBool);
    function Get_CalcSum: WordBool;
    procedure Set_CalcSum(var Param1: WordBool);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(Param1: Smallint);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Comptes);
    procedure Disconnect; override;
    function Item(const Range: WideString): _Compte;
    property DefaultInterface: _Comptes read GetDefaultInterface;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TComptesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TComptes
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TComptesProperties = class(TPersistent)
  private
    FServer: TComptes;
    function GetDefaultInterface: _Comptes;
    constructor Create(AServer: TComptes);
  protected
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_OnlyBooked: WordBool;
    procedure Set_OnlyBooked(Param1: WordBool);
    function Get_CalcSum: WordBool;
    procedure Set_CalcSum(var Param1: WordBool);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(Param1: Smallint);
  public
    property DefaultInterface: _Comptes read GetDefaultInterface;
  published
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoDossier provides a Create and CreateRemote method to
  // create instances of the default interface _Dossier exposed by
  // the CoClass Dossier. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoDossier = class
    class function Create: _Dossier;
    class function CreateRemote(const MachineName: string): _Dossier;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TDossier
  // Help String      :
  // Default Interface: _Dossier
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TDossierProperties = class;
{$ENDIF}

  TDossier = class(TOleServer)
  private
    FIntf: _Dossier;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDossierProperties;
    function GetServerProperties: TDossierProperties;
{$ENDIF}
    function GetDefaultInterface: _Dossier;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_Path: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Dossier);
    procedure Disconnect; override;
    property DefaultInterface: _Dossier read GetDefaultInterface;
    property name: WideString read Get_Name;
    property Path: WideString read Get_Path;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDossierProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TDossier
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TDossierProperties = class(TPersistent)
  private
    FServer: TDossier;
    function GetDefaultInterface: _Dossier;
    constructor Create(AServer: TDossier);
  protected
    function Get_Name: WideString;
    function Get_Path: WideString;
  public
    property DefaultInterface: _Dossier read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoOptions provides a Create and CreateRemote method to
  // create instances of the default interface _Options exposed by
  // the CoClass Options. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoOptions = class
    class function Create: _Options;
    class function CreateRemote(const MachineName: string): _Options;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TOptions
  // Help String      :
  // Default Interface: _Options
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TOptionsProperties = class;
{$ENDIF}

  TOptions = class(TOleServer)
  private
    FIntf: _Options;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TOptionsProperties;
    function GetServerProperties: TOptionsProperties;
{$ENDIF}
    function GetDefaultInterface: _Options;
  protected
    procedure InitServerData; override;
    procedure Set_NewSheet(Param1: WordBool);
    function Get_NewSheet: WordBool;
    procedure Set_ClearSheet(Param1: WordBool);
    function Get_ClearSheet: WordBool;
    procedure Set_WithTitle(Param1: WordBool);
    function Get_WithTitle: WordBool;
    procedure Set_Lang(const Param1: WideString);
    function Get_Lang: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Options);
    procedure Disconnect; override;
    procedure Save;
    procedure LoadDefault;
    property DefaultInterface: _Options read GetDefaultInterface;
    property NewSheet: WordBool read Get_NewSheet write Set_NewSheet;
    property ClearSheet: WordBool read Get_ClearSheet write Set_ClearSheet;
    property WithTitle: WordBool read Get_WithTitle write Set_WithTitle;
    property Lang: WideString read Get_Lang write Set_Lang;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TOptionsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TOptions
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TOptionsProperties = class(TPersistent)
  private
    FServer: TOptions;
    function GetDefaultInterface: _Options;
    constructor Create(AServer: TOptions);
  protected
    procedure Set_NewSheet(Param1: WordBool);
    function Get_NewSheet: WordBool;
    procedure Set_ClearSheet(Param1: WordBool);
    function Get_ClearSheet: WordBool;
    procedure Set_WithTitle(Param1: WordBool);
    function Get_WithTitle: WordBool;
    procedure Set_Lang(const Param1: WideString);
    function Get_Lang: WideString;
  public
    property DefaultInterface: _Options read GetDefaultInterface;
  published
    property NewSheet: WordBool read Get_NewSheet write Set_NewSheet;
    property ClearSheet: WordBool read Get_ClearSheet write Set_ClearSheet;
    property WithTitle: WordBool read Get_WithTitle write Set_WithTitle;
    property Lang: WideString read Get_Lang write Set_Lang;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoField provides a Create and CreateRemote method to
  // create instances of the default interface _Field exposed by
  // the CoClass Field. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoField = class
    class function Create: _Field;
    class function CreateRemote(const MachineName: string): _Field;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TField
  // Help String      :
  // Default Interface: _Field
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TFieldProperties = class;
{$ENDIF}

  TField = class(TOleServer)
  private
    FIntf: _Field;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFieldProperties;
    function GetServerProperties: TFieldProperties;
{$ENDIF}
    function GetDefaultInterface: _Field;
  protected
    procedure InitServerData; override;
    function Get_indice: Smallint;
    procedure Set_indice(var Param1: Smallint);
    function Get_Decimals: Smallint;
    function Get_Width: Smallint;
    function Get_GetFieldType: WideString;
    function Get_Caption: WideString;
    function Get_Name: WideString;
    procedure Set_Visible(Param1: WordBool);
    function Get_Visible: WordBool;
    function Get_Expression: WideString;
    procedure Set_Expression(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Field);
    procedure Disconnect; override;
    property DefaultInterface: _Field read GetDefaultInterface;
    property Decimals: Smallint read Get_Decimals;
    property Width: Smallint read Get_Width;
    property GetFieldType: WideString read Get_GetFieldType;
    property Caption: WideString read Get_Caption;
    property name: WideString read Get_Name;
    property indice: Smallint read Get_indice write Set_indice;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Expression: WideString read Get_Expression write Set_Expression;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFieldProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TField
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TFieldProperties = class(TPersistent)
  private
    FServer: TField;
    function GetDefaultInterface: _Field;
    constructor Create(AServer: TField);
  protected
    function Get_indice: Smallint;
    procedure Set_indice(var Param1: Smallint);
    function Get_Decimals: Smallint;
    function Get_Width: Smallint;
    function Get_GetFieldType: WideString;
    function Get_Caption: WideString;
    function Get_Name: WideString;
    procedure Set_Visible(Param1: WordBool);
    function Get_Visible: WordBool;
    function Get_Expression: WideString;
    procedure Set_Expression(const Param1: WideString);
  public
    property DefaultInterface: _Field read GetDefaultInterface;
  published
    property indice: Smallint read Get_indice write Set_indice;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Expression: WideString read Get_Expression write Set_Expression;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoAnaLytique provides a Create and CreateRemote method to
  // create instances of the default interface _AnaLytique exposed by
  // the CoClass AnaLytique. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoAnaLytique = class
    class function Create: _AnaLytique;
    class function CreateRemote(const MachineName: string): _AnaLytique;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TAnaLytique
  // Help String      :
  // Default Interface: _AnaLytique
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TAnaLytiqueProperties = class;
{$ENDIF}

  TAnaLytique = class(TOleServer)
  private
    FIntf: _AnaLytique;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAnaLytiqueProperties;
    function GetServerProperties: TAnaLytiqueProperties;
{$ENDIF}
    function GetDefaultInterface: _AnaLytique;
  protected
    procedure InitServerData; override;
    procedure Set_DeterminePlan(var Param1: Smallint);
    procedure Set_PeriodStart(const Param1: WideString);
    procedure Set_PeriodEnd(const Param1: WideString);
    procedure Set_AllBookyear(Param1: WordBool);
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AnaLytique);
    procedure Disconnect; override;
    procedure InitializeCancel;
    procedure CancelOperation;
    procedure InitializeCallBack(var ObjCallBack: IDispatch);
    procedure ExportXL;
    procedure ExportBalAna(const Deb_per: WideString; const End_per: WideString);
    property DefaultInterface: _AnaLytique read GetDefaultInterface;
    property DeterminePlan: Smallint write Set_DeterminePlan;
    property PeriodStart: WideString write Set_PeriodStart;
    property PeriodEnd: WideString write Set_PeriodEnd;
    property AllBookyear: WordBool write Set_AllBookyear;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnaLytiqueProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TAnaLytique
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TAnaLytiqueProperties = class(TPersistent)
  private
    FServer: TAnaLytique;
    function GetDefaultInterface: _AnaLytique;
    constructor Create(AServer: TAnaLytique);
  protected
    procedure Set_DeterminePlan(var Param1: Smallint);
    procedure Set_PeriodStart(const Param1: WideString);
    procedure Set_PeriodEnd(const Param1: WideString);
    procedure Set_AllBookyear(Param1: WordBool);
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    property DefaultInterface: _AnaLytique read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoWbApiUtilities provides a Create and CreateRemote method to
  // create instances of the default interface _WbApiUtilities exposed by
  // the CoClass WbApiUtilities. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoWbApiUtilities = class
    class function Create: _WbApiUtilities;
    class function CreateRemote(const MachineName: string): _WbApiUtilities;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TWbApiUtilities
  // Help String      :
  // Default Interface: _WbApiUtilities
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TWbApiUtilitiesProperties = class;
{$ENDIF}

  TWbApiUtilities = class(TOleServer)
  private
    FIntf: _WbApiUtilities;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWbApiUtilitiesProperties;
    function GetServerProperties: TWbApiUtilitiesProperties;
{$ENDIF}
    function GetDefaultInterface: _WbApiUtilities;
  protected
    procedure InitServerData; override;
    function Get_GetTime: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _WbApiUtilities);
    procedure Disconnect; override;
    procedure FillTreeView(var obj_treeview: IDispatch; var obj_nod: IDispatch);
    function SaveNewQuery(const Id_query: WideString; const ID_statement: WideString): WordBool;
    function SaveExistingQuery(const Id_query: WideString; const ID_statement: WideString): WordBool;
    function DeleteQuery(const Id_query: WideString): WordBool;
    function InitializeTime: Double;
    function GetFieldCommentForTreeView(var the_objNOd: IDispatch): WideString;
    function LoadExistingQuery(var Obj_To_fill: IDispatch): WordBool;
    function SeekSelectedQuery(const Id_query: WideString): WideString;
    function QueryExist(const ID_statement: WideString): WideString;
    property DefaultInterface: _WbApiUtilities read GetDefaultInterface;
    property GetTime: Double read Get_GetTime;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWbApiUtilitiesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TWbApiUtilities
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TWbApiUtilitiesProperties = class(TPersistent)
  private
    FServer: TWbApiUtilities;
    function GetDefaultInterface: _WbApiUtilities;
    constructor Create(AServer: TWbApiUtilities);
  protected
    function Get_GetTime: Double;
  public
    property DefaultInterface: _WbApiUtilities read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoSqlError provides a Create and CreateRemote method to
  // create instances of the default interface _SqlError exposed by
  // the CoClass SqlError. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSqlError = class
    class function Create: _SqlError;
    class function CreateRemote(const MachineName: string): _SqlError;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TSqlError
  // Help String      :
  // Default Interface: _SqlError
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (0)
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TSqlErrorProperties = class;
{$ENDIF}

  TSqlError = class(TOleServer)
  private
    FIntf: _SqlError;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSqlErrorProperties;
    function GetServerProperties: TSqlErrorProperties;
{$ENDIF}
    function GetDefaultInterface: _SqlError;
  protected
    procedure InitServerData; override;
    function Get_Description: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _SqlError);
    procedure Disconnect; override;
    procedure Clear;
    property DefaultInterface: _SqlError read GetDefaultInterface;
    property Description: WideString read Get_Description;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSqlErrorProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TSqlError
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TSqlErrorProperties = class(TPersistent)
  private
    FServer: TSqlError;
    function GetDefaultInterface: _SqlError;
    constructor Create(AServer: TSqlError);
  protected
    function Get_Description: WideString;
  public
    property DefaultInterface: _SqlError read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoUser provides a Create and CreateRemote method to
  // create instances of the default interface _User exposed by
  // the CoClass User. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoUser = class
    class function Create: _User;
    class function CreateRemote(const MachineName: string): _User;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TUser
  // Help String      :
  // Default Interface: _User
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TUserProperties = class;
{$ENDIF}

  TUser = class(TOleServer)
  private
    FIntf: _User;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TUserProperties;
    function GetServerProperties: TUserProperties;
{$ENDIF}
    function GetDefaultInterface: _User;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    procedure Set_Name(const Param1: WideString);
    function Get_Level: WideString;
    function Get_Language: WideString;
    procedure Set_Language(const Param1: WideString);
    function Get_Rights: WideString;
    procedure Set_Rights(const Param1: WideString);
    function Get_PrefsPath: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _User);
    procedure Disconnect; override;
    function CheckAccess(const SocName: WideString; const SocDirectory: WideString; const UserName: WideString): Smallint;
    procedure Register(const SocDirectory: WideString; const UserName: WideString; const UserLanguage: WideString; const UserPassword: WideString;
      const UserRights: WideString);
    procedure UnRegister;
    function IsUserLoggedInDossier(const UserName: WideString; const SocPathName: WideString): Smallint;
    function IsAdministrator: WordBool;
    function IsAccess(const ModuleItemName: WideString): WordBool;
    function GetAlternateUsernameAndDossier(const UserName: WideString; ForceRecalculation: WordBool): WideString;
    function CheckPasswordOfUser(const UserName: WideString; const the_soc: WideString): WordBool;
    function GetLanguageOfCurrentUser(const UserName: WideString): WideString;
    property DefaultInterface: _User read GetDefaultInterface;
    property Level: WideString read Get_Level;
    property PrefsPath: WideString read Get_PrefsPath;
    property name: WideString read Get_Name write Set_Name;
    property Language: WideString read Get_Language write Set_Language;
    property Rights: WideString read Get_Rights write Set_Rights;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TUserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TUser
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TUserProperties = class(TPersistent)
  private
    FServer: TUser;
    function GetDefaultInterface: _User;
    constructor Create(AServer: TUser);
  protected
    function Get_Name: WideString;
    procedure Set_Name(const Param1: WideString);
    function Get_Level: WideString;
    function Get_Language: WideString;
    procedure Set_Language(const Param1: WideString);
    function Get_Rights: WideString;
    procedure Set_Rights(const Param1: WideString);
    function Get_PrefsPath: WideString;
  public
    property DefaultInterface: _User read GetDefaultInterface;
  published
    property name: WideString read Get_Name write Set_Name;
    property Language: WideString read Get_Language write Set_Language;
    property Rights: WideString read Get_Rights write Set_Rights;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoDossiers provides a Create and CreateRemote method to
  // create instances of the default interface _Dossiers exposed by
  // the CoClass Dossiers. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoDossiers = class
    class function Create: _Dossiers;
    class function CreateRemote(const MachineName: string): _Dossiers;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TDossiers
  // Help String      :
  // Default Interface: _Dossiers
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TDossiersProperties = class;
{$ENDIF}

  TDossiers = class(TOleServer)
  private
    FIntf: _Dossiers;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDossiersProperties;
    function GetServerProperties: TDossiersProperties;
{$ENDIF}
    function GetDefaultInterface: _Dossiers;
  protected
    procedure InitServerData; override;
    function Get_Count: Smallint;
    function Get_ShowArchivedBookyears: WordBool;
    procedure Set_ShowArchivedBookyears(Param1: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Dossiers);
    procedure Disconnect; override;
    function GetAllCompanies: PSafeArray;
    function GetCompanyListSorted: OleVariant;
    function IsLocalDossierExist(const PathInUsersFile: WideString; const MyShortName: WideString): WordBool;
    function Item(index: Smallint): _Dossier;
    property DefaultInterface: _Dossiers read GetDefaultInterface;
    property Count: Smallint read Get_Count;
    property ShowArchivedBookyears: WordBool read Get_ShowArchivedBookyears write Set_ShowArchivedBookyears;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDossiersProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TDossiers
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TDossiersProperties = class(TPersistent)
  private
    FServer: TDossiers;
    function GetDefaultInterface: _Dossiers;
    constructor Create(AServer: TDossiers);
  protected
    function Get_Count: Smallint;
    function Get_ShowArchivedBookyears: WordBool;
    procedure Set_ShowArchivedBookyears(Param1: WordBool);
  public
    property DefaultInterface: _Dossiers read GetDefaultInterface;
  published
    property ShowArchivedBookyears: WordBool read Get_ShowArchivedBookyears write Set_ShowArchivedBookyears;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoApiIni provides a Create and CreateRemote method to
  // create instances of the default interface _ApiIni exposed by
  // the CoClass ApiIni. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoApiIni = class
    class function Create: _ApiIni;
    class function CreateRemote(const MachineName: string): _ApiIni;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TApiIni
  // Help String      :
  // Default Interface: _ApiIni
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TApiIniProperties = class;
{$ENDIF}

  TApiIni = class(TOleServer)
  private
    FIntf: _ApiIni;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TApiIniProperties;
    function GetServerProperties: TApiIniProperties;
{$ENDIF}
    function GetDefaultInterface: _ApiIni;
  protected
    procedure InitServerData; override;
    function Get_INIfile: WideString;
    procedure Set_INIfile(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ApiIni);
    procedure Disconnect; override;
    function ReadINI(var Section: WideString; var Key: WideString): OleVariant;
    procedure WriteINI(var Section: WideString; var Key: WideString; var Text: WideString);
    function IsSpecifiedKeyExist(const Section: WideString; const Key: WideString; const IniFileName: WideString): WordBool;
    function GetUserDbfPath: WideString;
    property DefaultInterface: _ApiIni read GetDefaultInterface;
    property INIfile: WideString read Get_INIfile write Set_INIfile;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TApiIniProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TApiIni
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TApiIniProperties = class(TPersistent)
  private
    FServer: TApiIni;
    function GetDefaultInterface: _ApiIni;
    constructor Create(AServer: TApiIni);
  protected
    function Get_INIfile: WideString;
    procedure Set_INIfile(const Param1: WideString);
  public
    property DefaultInterface: _ApiIni read GetDefaultInterface;
  published
    property INIfile: WideString read Get_INIfile write Set_INIfile;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoWinbooksObject provides a Create and CreateRemote method to
  // create instances of the default interface _WinbooksObject exposed by
  // the CoClass WinbooksObject. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoWinbooksObject = class
    class function Create: _WinbooksObject;
    class function CreateRemote(const MachineName: string): _WinbooksObject;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TWinbooksObject
  // Help String      :
  // Default Interface: _WinbooksObject
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TWinbooksObjectProperties = class;
{$ENDIF}

  TWinbooksObject = class(TOleServer)
  private
    FIntf: _WinbooksObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWinbooksObjectProperties;
    function GetServerProperties: TWinbooksObjectProperties;
{$ENDIF}
    function GetDefaultInterface: _WinbooksObject;
  protected
    procedure InitServerData; override;
    function Get_Customers: _Comptes;
    procedure _Set_Customers(const Customers: _Comptes);
    function Get_Suppliers: _Comptes;
    procedure _Set_Suppliers(const Suppliers: _Comptes);
    function Get_Accounts: _Comptes;
    procedure _Set_Accounts(const Accounts: _Comptes);
    function Get_Analytical: _SocAnalyticalParam;
    procedure _Set_Analytical(const Analytical: _SocAnalyticalParam);
    function Get_CustomerTrans: _Transactions;
    procedure _Set_CustomerTrans(const CustomerTrans: _Transactions);
    function Get_CustTrans: _Transaction;
    procedure _Set_CustTrans(const CustTrans: _Transaction);
    function Get_SupplierTrans: _Transactions;
    procedure _Set_SupplierTrans(const SupplierTrans: _Transactions);
    function Get_AccountTrans: _Transactions;
    procedure _Set_AccountTrans(const AccountTrans: _Transactions);
    function Get_AnalyticalTrans: _Analytiques;
    procedure _Set_AnalyticalTrans(const AnalyticalTrans: _Analytiques);
    function Get_Tables: _Tables;
    procedure _Set_Tables(const Tables: _Tables);
    function Get_Import: _Import;
    procedure _Set_Import(const Import: _Import);
    function Get_BookYear: _BookYears;
    procedure _Set_BookYear(const BookYear: _BookYears);
    function Get_Options: _Options;
    procedure _Set_Options(const Options: _Options);
    function Get_Sql: _SqlClass;
    procedure _Set_Sql(const Sql: _SqlClass);
    function Get_Param: _Param;
    procedure _Set_Param(const Param: _Param);
    function Get_Utilities: _WbApiUtilities;
    procedure _Set_Utilities(const Utilities: _WbApiUtilities);
    function Get_Companies: _Dossiers;
    procedure _Set_Companies(const Companies: _Dossiers);
    function Get_LastErrorMessage: WideString;
    procedure Set_ActiveLanguage(Param1: LanguageDll);
    procedure Set_SetPath(const Param1: WideString);
    function Get_Version: WideString;
    procedure Set_GetEncryptionPwd(const Param1: WideString);
    function Get_IsFullAccess: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _WinbooksObject);
    procedure Disconnect; override;
    function ReturnLanguage: WideString;
    function Init: Smallint;
    function InitLocal: Smallint;
    function Login(const UserName: WideString; const UserPassword: WideString; const UserLanguage: WideString): Smallint;
    function OpenDossier(const ShortName: WideString): Smallint;
    procedure LoadFieldDefs;
    function OpenBookYear(const BookYearShortName: WideString): Smallint;
    procedure CloseDossier;
    function GetDossierPath(const ShortName: WideString): WideString;
    procedure FreeClipBoard;
    procedure PutInClipBoard(const Str_buffer1: WideString);
    function GetDllVersion: WideString;
    function GetDllCompilDate: WideString;
    function GetDllInstallationPath: WideString;
    property DefaultInterface: _WinbooksObject read GetDefaultInterface;
    property Customers: _Comptes read Get_Customers write _Set_Customers;
    property Suppliers: _Comptes read Get_Suppliers write _Set_Suppliers;
    property Accounts: _Comptes read Get_Accounts write _Set_Accounts;
    property Analytical: _SocAnalyticalParam read Get_Analytical write _Set_Analytical;
    property CustomerTrans: _Transactions read Get_CustomerTrans write _Set_CustomerTrans;
    property CustTrans: _Transaction read Get_CustTrans write _Set_CustTrans;
    property SupplierTrans: _Transactions read Get_SupplierTrans write _Set_SupplierTrans;
    property AccountTrans: _Transactions read Get_AccountTrans write _Set_AccountTrans;
    property AnalyticalTrans: _Analytiques read Get_AnalyticalTrans write _Set_AnalyticalTrans;
    property Tables: _Tables read Get_Tables write _Set_Tables;
    property Import: _Import read Get_Import write _Set_Import;
    property BookYear: _BookYears read Get_BookYear write _Set_BookYear;
    property Options: _Options read Get_Options write _Set_Options;
    property Sql: _SqlClass read Get_Sql write _Set_Sql;
    property Param: _Param read Get_Param write _Set_Param;
    property Utilities: _WbApiUtilities read Get_Utilities write _Set_Utilities;
    property Companies: _Dossiers read Get_Companies write _Set_Companies;
    property LastErrorMessage: WideString read Get_LastErrorMessage;
    property ActiveLanguage: LanguageDll write Set_ActiveLanguage;
    property SetPath: WideString write Set_SetPath;
    property Version: WideString read Get_Version;
    property GetEncryptionPwd: WideString write Set_GetEncryptionPwd;
    property IsFullAccess: WordBool read Get_IsFullAccess;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWinbooksObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TWinbooksObject
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TWinbooksObjectProperties = class(TPersistent)
  private
    FServer: TWinbooksObject;
    function GetDefaultInterface: _WinbooksObject;
    constructor Create(AServer: TWinbooksObject);
  protected
    function Get_Customers: _Comptes;
    procedure _Set_Customers(const Customers: _Comptes);
    function Get_Suppliers: _Comptes;
    procedure _Set_Suppliers(const Suppliers: _Comptes);
    function Get_Accounts: _Comptes;
    procedure _Set_Accounts(const Accounts: _Comptes);
    function Get_Analytical: _SocAnalyticalParam;
    procedure _Set_Analytical(const Analytical: _SocAnalyticalParam);
    function Get_CustomerTrans: _Transactions;
    procedure _Set_CustomerTrans(const CustomerTrans: _Transactions);
    function Get_CustTrans: _Transaction;
    procedure _Set_CustTrans(const CustTrans: _Transaction);
    function Get_SupplierTrans: _Transactions;
    procedure _Set_SupplierTrans(const SupplierTrans: _Transactions);
    function Get_AccountTrans: _Transactions;
    procedure _Set_AccountTrans(const AccountTrans: _Transactions);
    function Get_AnalyticalTrans: _Analytiques;
    procedure _Set_AnalyticalTrans(const AnalyticalTrans: _Analytiques);
    function Get_Tables: _Tables;
    procedure _Set_Tables(const Tables: _Tables);
    function Get_Import: _Import;
    procedure _Set_Import(const Import: _Import);
    function Get_BookYear: _BookYears;
    procedure _Set_BookYear(const BookYear: _BookYears);
    function Get_Options: _Options;
    procedure _Set_Options(const Options: _Options);
    function Get_Sql: _SqlClass;
    procedure _Set_Sql(const Sql: _SqlClass);
    function Get_Param: _Param;
    procedure _Set_Param(const Param: _Param);
    function Get_Utilities: _WbApiUtilities;
    procedure _Set_Utilities(const Utilities: _WbApiUtilities);
    function Get_Companies: _Dossiers;
    procedure _Set_Companies(const Companies: _Dossiers);
    function Get_LastErrorMessage: WideString;
    procedure Set_ActiveLanguage(Param1: LanguageDll);
    procedure Set_SetPath(const Param1: WideString);
    function Get_Version: WideString;
    procedure Set_GetEncryptionPwd(const Param1: WideString);
    function Get_IsFullAccess: WordBool;
  public
    property DefaultInterface: _WinbooksObject read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoParam provides a Create and CreateRemote method to
  // create instances of the default interface _Param exposed by
  // the CoClass Param. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoParam = class
    class function Create: _Param;
    class function CreateRemote(const MachineName: string): _Param;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TParam
  // Help String      :
  // Default Interface: _Param
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TParamProperties = class;
{$ENDIF}

  TParam = class(TOleServer)
  private
    FIntf: _Param;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TParamProperties;
    function GetServerProperties: TParamProperties;
{$ENDIF}
    function GetDefaultInterface: _Param;
  protected
    procedure InitServerData; override;
    function Get_BookYears: _BookYears;
    procedure _Set_BookYears(const BookYears: _BookYears);
    function Get_ShortName: WideString;
    function Get_PathName: WideString;
    function Get_PathExcel: WideString;
    function Get_CurrentBookYearNumber: Smallint;
    function Get_CurrentBookYearNumBis(const ExName: WideString): Smallint;
    function Get_Value(const ParamName: WideString): WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Param);
    procedure Disconnect; override;
    function GetParamValue(const StrID: WideString): WideString;
    function VATInternalCode(const CodeUser: WideString; const CliFou: WideString; var Langue: WideString): WideString;
    function PeriodInternalCode(ccDate: TDateTime): WideString;
    function IsFolderOpen: WordBool;
    function IsNetwork: WideString;
    function IsAsset: WordBool;
    function VatRate(const InternCodeVat: WideString): OleVariant;
    function VatAcc1(const InternCodeVat: WideString): WideString;
    function VatAcc2(const InternCodeVat: WideString): WideString;
    function VATExternalCode(const InternalCode: WideString; lLanguage: LangueforVat): OleVariant;
    property DefaultInterface: _Param read GetDefaultInterface;
    property BookYears: _BookYears read Get_BookYears write _Set_BookYears;
    property ShortName: WideString read Get_ShortName;
    property PathName: WideString read Get_PathName;
    property PathExcel: WideString read Get_PathExcel;
    property CurrentBookYearNumber: Smallint read Get_CurrentBookYearNumber;
    property CurrentBookYearNumBis[const ExName: WideString]: Smallint read Get_CurrentBookYearNumBis;
    property Value[const ParamName: WideString]: WideString read Get_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TParamProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TParam
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TParamProperties = class(TPersistent)
  private
    FServer: TParam;
    function GetDefaultInterface: _Param;
    constructor Create(AServer: TParam);
  protected
    function Get_BookYears: _BookYears;
    procedure _Set_BookYears(const BookYears: _BookYears);
    function Get_ShortName: WideString;
    function Get_PathName: WideString;
    function Get_PathExcel: WideString;
    function Get_CurrentBookYearNumber: Smallint;
    function Get_CurrentBookYearNumBis(const ExName: WideString): Smallint;
    function Get_Value(const ParamName: WideString): WideString;
  public
    property DefaultInterface: _Param read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoTransactions provides a Create and CreateRemote method to
  // create instances of the default interface _Transactions exposed by
  // the CoClass Transactions. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoTransactions = class
    class function Create: _Transactions;
    class function CreateRemote(const MachineName: string): _Transactions;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TTransactions
  // Help String      :
  // Default Interface: _Transactions
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TTransactionsProperties = class;
{$ENDIF}

  TTransactions = class(TOleServer)
  private
    FIntf: _Transactions;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTransactionsProperties;
    function GetServerProperties: TTransactionsProperties;
{$ENDIF}
    function GetDefaultInterface: _Transactions;
  protected
    procedure InitServerData; override;
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_WithMatched: WordBool;
    procedure Set_WithMatched(Param1: WordBool);
    function Get_CategoryFilter: WideString;
    procedure Set_CategoryFilter(const Param1: WideString);
    function Get_PeriodRange: WideString;
    procedure Set_PeriodRange(const Param1: WideString);
    procedure Set_YearTransaction(const Param1: WideString);
    function Get_CalcSum: WordBool;
    procedure Set_CalcSum(var Param1: WordBool);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(var Param1: Smallint);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Transactions);
    procedure Disconnect; override;
    function Item(const Range: WideString): _Transaction;
    function GetPathOfactFile: WideString;
    function GetThePathofExisintFile: WideString;
    function PrecCalcACT(var TypeChoice: Byte; var Obj: IDispatch): WordBool;
    function IsFileTotPerExist: WordBool;
    function WichAccount(const Account: WideString; var ty: Smallint): _Transaction;
    property DefaultInterface: _Transactions read GetDefaultInterface;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property YearTransaction: WideString write Set_YearTransaction;
    property WithMatched: WordBool read Get_WithMatched write Set_WithMatched;
    property CategoryFilter: WideString read Get_CategoryFilter write Set_CategoryFilter;
    property PeriodRange: WideString read Get_PeriodRange write Set_PeriodRange;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTransactionsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TTransactions
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TTransactionsProperties = class(TPersistent)
  private
    FServer: TTransactions;
    function GetDefaultInterface: _Transactions;
    constructor Create(AServer: TTransactions);
  protected
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_WithMatched: WordBool;
    procedure Set_WithMatched(Param1: WordBool);
    function Get_CategoryFilter: WideString;
    procedure Set_CategoryFilter(const Param1: WideString);
    function Get_PeriodRange: WideString;
    procedure Set_PeriodRange(const Param1: WideString);
    procedure Set_YearTransaction(const Param1: WideString);
    function Get_CalcSum: WordBool;
    procedure Set_CalcSum(var Param1: WordBool);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(var Param1: Smallint);
  public
    property DefaultInterface: _Transactions read GetDefaultInterface;
  published
    property WithMatched: WordBool read Get_WithMatched write Set_WithMatched;
    property CategoryFilter: WideString read Get_CategoryFilter write Set_CategoryFilter;
    property PeriodRange: WideString read Get_PeriodRange write Set_PeriodRange;
    property CalcSum: WordBool read Get_CalcSum write Set_CalcSum;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoAnalytiques provides a Create and CreateRemote method to
  // create instances of the default interface _Analytiques exposed by
  // the CoClass Analytiques. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoAnalytiques = class
    class function Create: _Analytiques;
    class function CreateRemote(const MachineName: string): _Analytiques;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TAnalytiques
  // Help String      :
  // Default Interface: _Analytiques
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TAnalytiquesProperties = class;
{$ENDIF}

  TAnalytiques = class(TOleServer)
  private
    FIntf: _Analytiques;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAnalytiquesProperties;
    function GetServerProperties: TAnalytiquesProperties;
{$ENDIF}
    function GetDefaultInterface: _Analytiques;
  protected
    procedure InitServerData; override;
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(Param1: Smallint);
    function Get_OnlyBooked: WordBool;
    procedure Set_OnlyBooked(Param1: WordBool);
    procedure Set_PeriodRange(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Analytiques);
    procedure Disconnect; override;
    function Item(const Range: WideString): _AnaLytique;
    function Wichplan(strindex: Smallint): _AnaLytique;
    function WichSectionPlan(const Section: WideString; const Plan: WideString): _AnaLytique;
    function FromWichNumber(const tipe: WideString): OleVariant;
    function FromWichAccount: OleVariant;
    function EnumCategory: OleVariant;
    function FromPeriods: OleVariant;
    function BalanceCum(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var TypeOfbal: Byte): Currency;
    function BalancePerEx(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
      var StartaccountG: WideString; var EndAccountG: WideString; var PlanAna2: WideString; var StartAccount2: WideString; var EndAccount2: WideString;
      var TypeOfbal: Byte): Currency;
    procedure ExportListeOfAnalyticalPlan(SectionAna: Smallint; var StartAccount: WideString; var EndAccount: WideString; var Category: WideString);
    property DefaultInterface: _Analytiques read GetDefaultInterface;
    property Fields: _Fields read Get_Fields write _Set_Fields;
    property PeriodRange: WideString write Set_PeriodRange;
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAnalytiquesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TAnalytiques
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TAnalytiquesProperties = class(TPersistent)
  private
    FServer: TAnalytiques;
    function GetDefaultInterface: _Analytiques;
    constructor Create(AServer: TAnalytiques);
  protected
    function Get_Fields: _Fields;
    procedure _Set_Fields(const Fields: _Fields);
    function Get_SortOrder: Smallint;
    procedure Set_SortOrder(Param1: Smallint);
    function Get_OnlyBooked: WordBool;
    procedure Set_OnlyBooked(Param1: WordBool);
    procedure Set_PeriodRange(const Param1: WideString);
  public
    property DefaultInterface: _Analytiques read GetDefaultInterface;
  published
    property SortOrder: Smallint read Get_SortOrder write Set_SortOrder;
    property OnlyBooked: WordBool read Get_OnlyBooked write Set_OnlyBooked;
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoTransaction provides a Create and CreateRemote method to
  // create instances of the default interface _Transaction exposed by
  // the CoClass Transaction. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoTransaction = class
    class function Create: _Transaction;
    class function CreateRemote(const MachineName: string): _Transaction;
  end;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TTransaction
  // Help String      :
  // Default Interface: _Transaction
  // Def. Intf. DISP? : No
  // Event   Interface:
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  TTransactionProperties = class;
{$ENDIF}

  TTransaction = class(TOleServer)
  private
    FIntf: _Transaction;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTransactionProperties;
    function GetServerProperties: TTransactionProperties;
{$ENDIF}
    function GetDefaultInterface: _Transaction;
  protected
    procedure InitServerData; override;
    function Get_ListCount: Integer;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Transaction);
    procedure Disconnect; override;
    procedure InitializeCancel;
    procedure CancelOperation;
    procedure InitializeCallBack(var ObjCallBack: IDispatch);
    procedure ExportXL;
    procedure ExportExcelWithReport;
    function FastBalance: OleVariant;
    function Balance: OleVariant;
    function Turnover: OleVariant;
    function TurnoverAcc: OleVariant;
    function BalanceCur: OleVariant;
    function CliFouBalCur: Currency;
    property DefaultInterface: _Transaction read GetDefaultInterface;
    property ListCount: Integer read Get_ListCount;
    property FieldValue[const FieldNameorNum: WideString]: OleVariant read Get_FieldValue;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTransactionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TTransaction
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TTransactionProperties = class(TPersistent)
  private
    FServer: TTransaction;
    function GetDefaultInterface: _Transaction;
    constructor Create(AServer: TTransaction);
  protected
    function Get_ListCount: Integer;
    function Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
  public
    property DefaultInterface: _Transaction read GetDefaultInterface;
  published
  end;
{$ENDIF}

  // *********************************************************************//
  // The Class CoSqlClass provides a Create and CreateRemote method to
  // create instances of the default interface _SqlClass exposed by
  // the CoClass SqlClass. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSqlClass = class
    class function Create: _SqlClass;
    class function CreateRemote(const MachineName: string): _SqlClass;
  end;

  TSqlClassOnExecute        = procedure(ASender: TObject; ExecutionTime: Double; var Cancel: WordBool) of object;
  TSqlClassOnFillOutputFile = procedure(ASender: TObject; NbrRecOutput: Integer; NbrRecCount: Integer; var Cancel: WordBool) of object;


  // *********************************************************************//
  // OLE Server Proxy class declaration
  // Server Object    : TSqlClass
  // Help String      :
  // Default Interface: _SqlClass
  // Def. Intf. DISP? : No
  // Event   Interface: __SqlClass
  // TypeFlags        : (2) CanCreate
  // *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSqlClassProperties = class;
{$ENDIF}

  TSqlClass = class(TOleServer)
  private
    FOnExecute: TSqlClassOnExecute;
    FOnFillOutputFile: TSqlClassOnFillOutputFile;
    FIntf: _SqlClass;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSqlClassProperties;
    function GetServerProperties: TSqlClassProperties;
{$ENDIF}
    function GetDefaultInterface: _SqlClass;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(dispid: TDispID; var Params: TVariantArray); override;
    function Get_Error: _SqlError;
    procedure _Set_Error(const Error: _SqlError);
    procedure Set_OutputFileFormat(Param1: FileType);
    procedure Set_OutputFileName(const Param1: WideString);
    procedure Set_OutputFileMode(Param1: MODE);
    function Get_GetExecutionTime: Double;
    function Get_LastQueryRecCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _SqlClass);
    procedure Disconnect; override;
    procedure Initialize;
    function WbSqlFunction(const QueryStatement: WideString; var WithCallBack: WordBool): OleVariant;
    function ExecuteSqlQuery(const QueryStatement: WideString; var WithCallBack: WordBool): Smallint;
    function WanTotCallBack: WordBool;
    function ValidateQueryStatement(SqlStatement: OleVariant): WordBool;
    property DefaultInterface: _SqlClass read GetDefaultInterface;
    property Error: _SqlError read Get_Error write _Set_Error;
    property OutputFileFormat: FileType write Set_OutputFileFormat;
    property OutputFileName: WideString write Set_OutputFileName;
    property OutputFileMode: MODE write Set_OutputFileMode;
    property GetExecutionTime: Double read Get_GetExecutionTime;
    property LastQueryRecCount: Integer read Get_LastQueryRecCount;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSqlClassProperties read GetServerProperties;
{$ENDIF}
    property OnExecute: TSqlClassOnExecute read FOnExecute write FOnExecute;
    property OnFillOutputFile: TSqlClassOnFillOutputFile read FOnFillOutputFile write FOnFillOutputFile;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

  // *********************************************************************//
  // OLE Server Properties Proxy Class
  // Server Object    : TSqlClass
  // (This object is used by the IDE's Property Inspector to allow editing
  // of the properties of this server)
  // *********************************************************************//
  TSqlClassProperties = class(TPersistent)
  private
    FServer: TSqlClass;
    function GetDefaultInterface: _SqlClass;
    constructor Create(AServer: TSqlClass);
  protected
    function Get_Error: _SqlError;
    procedure _Set_Error(const Error: _SqlError);
    procedure Set_OutputFileFormat(Param1: FileType);
    procedure Set_OutputFileName(const Param1: WideString);
    procedure Set_OutputFileMode(Param1: MODE);
    function Get_GetExecutionTime: Double;
    function Get_LastQueryRecCount: Integer;
  public
    property DefaultInterface: _SqlClass read GetDefaultInterface;
  published
  end;
{$ENDIF}

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoFieldDef.Create: _FieldDef;
begin
  Result := CreateComObject(CLASS_FieldDef) as _FieldDef;
end;

class function CoFieldDef.CreateRemote(const MachineName: string): _FieldDef;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FieldDef) as _FieldDef;
end;

procedure TFieldDef.InitServerData;
const
  CServerData: TServerData = (ClassID: '{A34930DA-384B-4069-B20D-6BC4C26271DB}'; IntfIID: '{486E1C6B-FDAC-4500-9BB0-9E54FAB3D314}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFieldDef.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _FieldDef;
  end;
end;

procedure TFieldDef.ConnectTo(svrIntf: _FieldDef);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFieldDef.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFieldDef.GetDefaultInterface: _FieldDef;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFieldDef.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFieldDefProperties.Create(Self);
{$ENDIF}
end;

destructor TFieldDef.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TFieldDef.GetServerProperties: TFieldDefProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFieldDef.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TFieldDef.Set_Name(const Name: WideString);
{ Warning: The property Name has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Name := name;
end;

function TFieldDef.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFieldDef.Set_Caption(const Caption: WideString);
{ Warning: The property Caption has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Caption := Caption;
end;

function TFieldDef.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TFieldDef.Set_Visible(Visible: WordBool);
begin
  DefaultInterface.Set_Visible(Visible);
end;

function TFieldDef.Get_Format: WideString;
begin
  Result := DefaultInterface.Format;
end;

procedure TFieldDef.Set_Format(const Format: WideString);
{ Warning: The property Format has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Format := Format;
end;

function TFieldDef.Get_Expression: WideString;
begin
  Result := DefaultInterface.Expression;
end;

procedure TFieldDef.Set_Expression(const Expression: WideString);
{ Warning: The property Expression has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Expression := Expression;
end;

function TFieldDef.Get_Decimals: WideString;
begin
  Result := DefaultInterface.Decimals;
end;

procedure TFieldDef.Set_Decimals(const Decimals: WideString);
{ Warning: The property Decimals has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Decimals := Decimals;
end;

function TFieldDef.Get_Width: WideString;
begin
  Result := DefaultInterface.Width;
end;

procedure TFieldDef.Set_Width(const Width: WideString);
{ Warning: The property Width has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Width := Width;
end;

function TFieldDef.Get_GetFieldType: WideString;
begin
  Result := DefaultInterface.GetFieldType;
end;

procedure TFieldDef.Set_GetFieldType(const GetFieldType: WideString);
{ Warning: The property GetFieldType has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant              := DefaultInterface;
  InterfaceVariant.GetFieldType := GetFieldType;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TFieldDefProperties.Create(AServer: TFieldDef);
begin
  inherited Create;
  FServer := AServer;
end;

function TFieldDefProperties.GetDefaultInterface: _FieldDef;
begin
  Result := FServer.DefaultInterface;
end;

function TFieldDefProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TFieldDefProperties.Set_Name(const Name: WideString);
{ Warning: The property Name has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Name := name;
end;

function TFieldDefProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

procedure TFieldDefProperties.Set_Caption(const Caption: WideString);
{ Warning: The property Caption has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Caption := Caption;
end;

function TFieldDefProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

procedure TFieldDefProperties.Set_Visible(Visible: WordBool);
begin
  DefaultInterface.Set_Visible(Visible);
end;

function TFieldDefProperties.Get_Format: WideString;
begin
  Result := DefaultInterface.Format;
end;

procedure TFieldDefProperties.Set_Format(const Format: WideString);
{ Warning: The property Format has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Format := Format;
end;

function TFieldDefProperties.Get_Expression: WideString;
begin
  Result := DefaultInterface.Expression;
end;

procedure TFieldDefProperties.Set_Expression(const Expression: WideString);
{ Warning: The property Expression has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Expression := Expression;
end;

function TFieldDefProperties.Get_Decimals: WideString;
begin
  Result := DefaultInterface.Decimals;
end;

procedure TFieldDefProperties.Set_Decimals(const Decimals: WideString);
{ Warning: The property Decimals has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Decimals := Decimals;
end;

function TFieldDefProperties.Get_Width: WideString;
begin
  Result := DefaultInterface.Width;
end;

procedure TFieldDefProperties.Set_Width(const Width: WideString);
{ Warning: The property Width has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Width := Width;
end;

function TFieldDefProperties.Get_GetFieldType: WideString;
begin
  Result := DefaultInterface.GetFieldType;
end;

procedure TFieldDefProperties.Set_GetFieldType(const GetFieldType: WideString);
{ Warning: The property GetFieldType has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant              := DefaultInterface;
  InterfaceVariant.GetFieldType := GetFieldType;
end;

{$ENDIF}

class function CoPeriods.Create: _Periods;
begin
  Result := CreateComObject(CLASS_Periods) as _Periods;
end;

class function CoPeriods.CreateRemote(const MachineName: string): _Periods;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Periods) as _Periods;
end;

procedure TPeriods.InitServerData;
const
  CServerData: TServerData = (ClassID: '{0E6494B9-10AC-48C0-A288-45A6F75187C6}'; IntfIID: '{1092CFBD-2DC9-4ED7-B92A-B51823054557}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPeriods.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Periods;
  end;
end;

procedure TPeriods.ConnectTo(svrIntf: _Periods);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPeriods.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPeriods.GetDefaultInterface: _Periods;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPeriods.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPeriodsProperties.Create(Self);
{$ENDIF}
end;

destructor TPeriods.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TPeriods.GetServerProperties: TPeriodsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPeriods.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

function TPeriods.Item(index: Smallint): _Period;
begin
  Result := DefaultInterface.Item(index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TPeriodsProperties.Create(AServer: TPeriods);
begin
  inherited Create;
  FServer := AServer;
end;

function TPeriodsProperties.GetDefaultInterface: _Periods;
begin
  Result := FServer.DefaultInterface;
end;

function TPeriodsProperties.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoFatalErrors.Create: _FatalErrors;
begin
  Result := CreateComObject(CLASS_FatalErrors) as _FatalErrors;
end;

class function CoFatalErrors.CreateRemote(const MachineName: string): _FatalErrors;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FatalErrors) as _FatalErrors;
end;

procedure TFatalErrors.InitServerData;
const
  CServerData: TServerData = (ClassID: '{EBF5276A-68D3-48B0-96EF-3CDCB2D42C76}'; IntfIID: '{78D7C2FE-C8A0-4875-A8C9-C575A34F9A3F}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFatalErrors.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _FatalErrors;
  end;
end;

procedure TFatalErrors.ConnectTo(svrIntf: _FatalErrors);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFatalErrors.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFatalErrors.GetDefaultInterface: _FatalErrors;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFatalErrors.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFatalErrorsProperties.Create(Self);
{$ENDIF}
end;

destructor TFatalErrors.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TFatalErrors.GetServerProperties: TFatalErrorsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFatalErrors.Item(Range: Smallint): _FatalError;
begin
  Result := DefaultInterface.Item(Range);
end;

function TFatalErrors.Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TFatalErrorsProperties.Create(AServer: TFatalErrors);
begin
  inherited Create;
  FServer := AServer;
end;

function TFatalErrorsProperties.GetDefaultInterface: _FatalErrors;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoFatalError.Create: _FatalError;
begin
  Result := CreateComObject(CLASS_FatalError) as _FatalError;
end;

class function CoFatalError.CreateRemote(const MachineName: string): _FatalError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FatalError) as _FatalError;
end;

procedure TFatalError.InitServerData;
const
  CServerData: TServerData = (ClassID: '{15C99B60-EFF0-417A-99A3-2C9ED67EA67C}'; IntfIID: '{BA1778B2-EBB0-4F92-8007-B5DA01D8612C}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFatalError.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _FatalError;
  end;
end;

procedure TFatalError.ConnectTo(svrIntf: _FatalError);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFatalError.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFatalError.GetDefaultInterface: _FatalError;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFatalError.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFatalErrorProperties.Create(Self);
{$ENDIF}
end;

destructor TFatalError.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TFatalError.GetServerProperties: TFatalErrorProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFatalError.Get_Param: WideString;
begin
  Result := DefaultInterface.Param;
end;

function TFatalError.Get_Code: WideString;
begin
  Result := DefaultInterface.Code;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TFatalErrorProperties.Create(AServer: TFatalError);
begin
  inherited Create;
  FServer := AServer;
end;

function TFatalErrorProperties.GetDefaultInterface: _FatalError;
begin
  Result := FServer.DefaultInterface;
end;

function TFatalErrorProperties.Get_Param: WideString;
begin
  Result := DefaultInterface.Param;
end;

function TFatalErrorProperties.Get_Code: WideString;
begin
  Result := DefaultInterface.Code;
end;

{$ENDIF}

class function CoWarnings.Create: _Warnings;
begin
  Result := CreateComObject(CLASS_Warnings) as _Warnings;
end;

class function CoWarnings.CreateRemote(const MachineName: string): _Warnings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Warnings) as _Warnings;
end;

procedure TWarnings.InitServerData;
const
  CServerData: TServerData = (ClassID: '{520D4A52-D494-4E4D-A9A2-62E117E0252B}'; IntfIID: '{DBC8894B-EF33-4780-A021-B796DDC31491}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWarnings.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Warnings;
  end;
end;

procedure TWarnings.ConnectTo(svrIntf: _Warnings);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWarnings.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWarnings.GetDefaultInterface: _Warnings;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWarnings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWarningsProperties.Create(Self);
{$ENDIF}
end;

destructor TWarnings.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TWarnings.GetServerProperties: TWarningsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWarnings.Item(Range: Smallint): _Warning;
begin
  Result := DefaultInterface.Item(Range);
end;

function TWarnings.Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TWarningsProperties.Create(AServer: TWarnings);
begin
  inherited Create;
  FServer := AServer;
end;

function TWarningsProperties.GetDefaultInterface: _Warnings;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoQueries.Create: _Queries;
begin
  Result := CreateComObject(CLASS_Queries) as _Queries;
end;

class function CoQueries.CreateRemote(const MachineName: string): _Queries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Queries) as _Queries;
end;

procedure TQueries.InitServerData;
const
  CServerData: TServerData = (ClassID: '{E6F7158B-6BA4-4754-8441-804E463FB43D}'; IntfIID: '{FFAE05BF-32D4-4666-9331-587377D866D9}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQueries.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Queries;
  end;
end;

procedure TQueries.ConnectTo(svrIntf: _Queries);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQueries.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQueries.GetDefaultInterface: _Queries;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQueries.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TQueriesProperties.Create(Self);
{$ENDIF}
end;

destructor TQueries.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TQueries.GetServerProperties: TQueriesProperties;
begin
  Result := FProps;
end;
{$ENDIF}
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TQueriesProperties.Create(AServer: TQueries);
begin
  inherited Create;
  FServer := AServer;
end;

function TQueriesProperties.GetDefaultInterface: _Queries;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoTablesUser.Create: _TablesUser;
begin
  Result := CreateComObject(CLASS_TablesUser) as _TablesUser;
end;

class function CoTablesUser.CreateRemote(const MachineName: string): _TablesUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TablesUser) as _TablesUser;
end;

procedure TTablesUser.InitServerData;
const
  CServerData: TServerData = (ClassID: '{215B53FC-49C1-49E3-B4DF-F1E0A652CB3E}'; IntfIID: '{7F525544-EE76-4A3F-B6F0-58420C36790D}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTablesUser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _TablesUser;
  end;
end;

procedure TTablesUser.ConnectTo(svrIntf: _TablesUser);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTablesUser.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTablesUser.GetDefaultInterface: _TablesUser;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTablesUser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTablesUserProperties.Create(Self);
{$ENDIF}
end;

destructor TTablesUser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TTablesUser.GetServerProperties: TTablesUserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTablesUser.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TTablesUser._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

procedure TTablesUser.Set_OnlyUsed(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyUsed(Param1);
end;

function TTablesUser.Get_OnlyUsed: WordBool;
begin
  Result := DefaultInterface.OnlyUsed;
end;

procedure TTablesUser.Set_SortOrder(var Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

function TTablesUser.Item(const Range: WideString): _TableUser;
begin
  Result := DefaultInterface.Item(Range);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TTablesUserProperties.Create(AServer: TTablesUser);
begin
  inherited Create;
  FServer := AServer;
end;

function TTablesUserProperties.GetDefaultInterface: _TablesUser;
begin
  Result := FServer.DefaultInterface;
end;

function TTablesUserProperties.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TTablesUserProperties._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

procedure TTablesUserProperties.Set_OnlyUsed(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyUsed(Param1);
end;

function TTablesUserProperties.Get_OnlyUsed: WordBool;
begin
  Result := DefaultInterface.OnlyUsed;
end;

procedure TTablesUserProperties.Set_SortOrder(var Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

{$ENDIF}

class function CoTables.Create: _Tables;
begin
  Result := CreateComObject(CLASS_Tables) as _Tables;
end;

class function CoTables.CreateRemote(const MachineName: string): _Tables;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tables) as _Tables;
end;

procedure TTables.InitServerData;
const
  CServerData: TServerData = (ClassID: '{5DBE4BC9-7EE2-4279-9922-6DF7F36D8EC5}'; IntfIID: '{0634AD47-2178-4E8A-90E7-C0F8838C862C}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTables.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Tables;
  end;
end;

procedure TTables.ConnectTo(svrIntf: _Tables);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTables.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTables.GetDefaultInterface: _Tables;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTables.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTablesProperties.Create(Self);
{$ENDIF}
end;

destructor TTables.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TTables.GetServerProperties: TTablesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTables.Get_ZipCode: _TablesUser;
begin
  Result := DefaultInterface.ZipCode;
end;

procedure TTables._Set_ZipCode(const ZipCode: _TablesUser);
{ Warning: The property ZipCode has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.ZipCode := ZipCode;
end;

function TTables.Get_Countries: _TablesUser;
begin
  Result := DefaultInterface.Countries;
end;

procedure TTables._Set_Countries(const Countries: _TablesUser);
{ Warning: The property Countries has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Countries := Countries;
end;

function TTables.Get_Civilities: _TablesUser;
begin
  Result := DefaultInterface.Civilities;
end;

procedure TTables._Set_Civilities(const Civilities: _TablesUser);
{ Warning: The property Civilities has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Civilities := Civilities;
end;

function TTables.Get_Languages: _TablesUser;
begin
  Result := DefaultInterface.Languages;
end;

procedure TTables._Set_Languages(const Languages: _TablesUser);
{ Warning: The property Languages has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Languages := Languages;
end;

function TTables.Get_PayCodes: _TablesUser;
begin
  Result := DefaultInterface.PayCodes;
end;

procedure TTables._Set_PayCodes(const PayCodes: _TablesUser);
{ Warning: The property PayCodes has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.PayCodes := PayCodes;
end;

function TTables.Get_MoneyRates: _TablesUser;
begin
  Result := DefaultInterface.MoneyRates;
end;

procedure TTables._Set_MoneyRates(const MoneyRates: _TablesUser);
{ Warning: The property MoneyRates has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.MoneyRates := MoneyRates;
end;

function TTables.Get_Diaries: _TablesUser;
begin
  Result := DefaultInterface.Diaries;
end;

procedure TTables._Set_Diaries(const Diaries: _TablesUser);
{ Warning: The property Diaries has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Diaries := Diaries;
end;

function TTables.Get_CatAccountGen: _TablesUser;
begin
  Result := DefaultInterface.CatAccountGen;
end;

procedure TTables._Set_CatAccountGen(const CatAccountGen: _TablesUser);
{ Warning: The property CatAccountGen has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CatAccountGen := CatAccountGen;
end;

function TTables.Get_CatCustomer: _TablesUser;
begin
  Result := DefaultInterface.CatCustomer;
end;

procedure TTables._Set_CatCustomer(const CatCustomer: _TablesUser);
{ Warning: The property CatCustomer has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.CatCustomer := CatCustomer;
end;

function TTables.Get_CatSupplier: _TablesUser;
begin
  Result := DefaultInterface.CatSupplier;
end;

procedure TTables._Set_CatSupplier(const CatSupplier: _TablesUser);
{ Warning: The property CatSupplier has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.CatSupplier := CatSupplier;
end;

function TTables.Get_CatAnalytique: _TablesUser;
begin
  Result := DefaultInterface.CatAnalytique;
end;

procedure TTables._Set_CatAnalytique(const CatAnalytique: _TablesUser);
{ Warning: The property CatAnalytique has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CatAnalytique := CatAnalytique;
end;

function TTables.Get_CatAssets: _TablesUser;
begin
  Result := DefaultInterface.CatAssets;
end;

procedure TTables._Set_CatAssets(const CatAssets: _TablesUser);
{ Warning: The property CatAssets has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.CatAssets := CatAssets;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TTablesProperties.Create(AServer: TTables);
begin
  inherited Create;
  FServer := AServer;
end;

function TTablesProperties.GetDefaultInterface: _Tables;
begin
  Result := FServer.DefaultInterface;
end;

function TTablesProperties.Get_ZipCode: _TablesUser;
begin
  Result := DefaultInterface.ZipCode;
end;

procedure TTablesProperties._Set_ZipCode(const ZipCode: _TablesUser);
{ Warning: The property ZipCode has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.ZipCode := ZipCode;
end;

function TTablesProperties.Get_Countries: _TablesUser;
begin
  Result := DefaultInterface.Countries;
end;

procedure TTablesProperties._Set_Countries(const Countries: _TablesUser);
{ Warning: The property Countries has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Countries := Countries;
end;

function TTablesProperties.Get_Civilities: _TablesUser;
begin
  Result := DefaultInterface.Civilities;
end;

procedure TTablesProperties._Set_Civilities(const Civilities: _TablesUser);
{ Warning: The property Civilities has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Civilities := Civilities;
end;

function TTablesProperties.Get_Languages: _TablesUser;
begin
  Result := DefaultInterface.Languages;
end;

procedure TTablesProperties._Set_Languages(const Languages: _TablesUser);
{ Warning: The property Languages has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Languages := Languages;
end;

function TTablesProperties.Get_PayCodes: _TablesUser;
begin
  Result := DefaultInterface.PayCodes;
end;

procedure TTablesProperties._Set_PayCodes(const PayCodes: _TablesUser);
{ Warning: The property PayCodes has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.PayCodes := PayCodes;
end;

function TTablesProperties.Get_MoneyRates: _TablesUser;
begin
  Result := DefaultInterface.MoneyRates;
end;

procedure TTablesProperties._Set_MoneyRates(const MoneyRates: _TablesUser);
{ Warning: The property MoneyRates has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.MoneyRates := MoneyRates;
end;

function TTablesProperties.Get_Diaries: _TablesUser;
begin
  Result := DefaultInterface.Diaries;
end;

procedure TTablesProperties._Set_Diaries(const Diaries: _TablesUser);
{ Warning: The property Diaries has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Diaries := Diaries;
end;

function TTablesProperties.Get_CatAccountGen: _TablesUser;
begin
  Result := DefaultInterface.CatAccountGen;
end;

procedure TTablesProperties._Set_CatAccountGen(const CatAccountGen: _TablesUser);
{ Warning: The property CatAccountGen has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CatAccountGen := CatAccountGen;
end;

function TTablesProperties.Get_CatCustomer: _TablesUser;
begin
  Result := DefaultInterface.CatCustomer;
end;

procedure TTablesProperties._Set_CatCustomer(const CatCustomer: _TablesUser);
{ Warning: The property CatCustomer has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.CatCustomer := CatCustomer;
end;

function TTablesProperties.Get_CatSupplier: _TablesUser;
begin
  Result := DefaultInterface.CatSupplier;
end;

procedure TTablesProperties._Set_CatSupplier(const CatSupplier: _TablesUser);
{ Warning: The property CatSupplier has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.CatSupplier := CatSupplier;
end;

function TTablesProperties.Get_CatAnalytique: _TablesUser;
begin
  Result := DefaultInterface.CatAnalytique;
end;

procedure TTablesProperties._Set_CatAnalytique(const CatAnalytique: _TablesUser);
{ Warning: The property CatAnalytique has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CatAnalytique := CatAnalytique;
end;

function TTablesProperties.Get_CatAssets: _TablesUser;
begin
  Result := DefaultInterface.CatAssets;
end;

procedure TTablesProperties._Set_CatAssets(const CatAssets: _TablesUser);
{ Warning: The property CatAssets has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.CatAssets := CatAssets;
end;

{$ENDIF}

class function CoWarning.Create: _Warning;
begin
  Result := CreateComObject(CLASS_Warning) as _Warning;
end;

class function CoWarning.CreateRemote(const MachineName: string): _Warning;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Warning) as _Warning;
end;

procedure TWarning.InitServerData;
const
  CServerData: TServerData = (ClassID: '{2D7A39AA-CB4C-4A97-B4FC-CE9DBC8A4DD5}'; IntfIID: '{B01333D2-9497-4AC2-ADD4-7FD612E6F320}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWarning.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Warning;
  end;
end;

procedure TWarning.ConnectTo(svrIntf: _Warning);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWarning.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWarning.GetDefaultInterface: _Warning;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWarning.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWarningProperties.Create(Self);
{$ENDIF}
end;

destructor TWarning.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TWarning.GetServerProperties: TWarningProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWarning.Get_Param: WideString;
begin
  Result := DefaultInterface.Param;
end;

function TWarning.Get_Code: WideString;
begin
  Result := DefaultInterface.Code;
end;

procedure TWarning.Set_SetResolution(var Param1: TypeSolution);
begin
  DefaultInterface.Set_SetResolution(Param1);
end;

function TWarning.Get_GetResolution: Smallint;
begin
  Result := DefaultInterface.GetResolution;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TWarningProperties.Create(AServer: TWarning);
begin
  inherited Create;
  FServer := AServer;
end;

function TWarningProperties.GetDefaultInterface: _Warning;
begin
  Result := FServer.DefaultInterface;
end;

function TWarningProperties.Get_Param: WideString;
begin
  Result := DefaultInterface.Param;
end;

function TWarningProperties.Get_Code: WideString;
begin
  Result := DefaultInterface.Code;
end;

procedure TWarningProperties.Set_SetResolution(var Param1: TypeSolution);
begin
  DefaultInterface.Set_SetResolution(Param1);
end;

function TWarningProperties.Get_GetResolution: Smallint;
begin
  Result := DefaultInterface.GetResolution;
end;

{$ENDIF}

class function CoErrorCodes.Create: _ErrorCodes;
begin
  Result := CreateComObject(CLASS_ErrorCodes) as _ErrorCodes;
end;

class function CoErrorCodes.CreateRemote(const MachineName: string): _ErrorCodes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ErrorCodes) as _ErrorCodes;
end;

procedure TErrorCodes.InitServerData;
const
  CServerData: TServerData = (ClassID: '{184F390B-1EA2-4CC0-B89D-4EA873B2F649}'; IntfIID: '{3EE802AB-9C25-4818-9ACA-D167F702297D}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TErrorCodes.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _ErrorCodes;
  end;
end;

procedure TErrorCodes.ConnectTo(svrIntf: _ErrorCodes);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TErrorCodes.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TErrorCodes.GetDefaultInterface: _ErrorCodes;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TErrorCodes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TErrorCodesProperties.Create(Self);
{$ENDIF}
end;

destructor TErrorCodes.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TErrorCodes.GetServerProperties: TErrorCodesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TErrorCodes.Item(const The_Error: WideString): _ErrorCode;
begin
  Result := DefaultInterface.Item(The_Error);
end;

function TErrorCodes.Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TErrorCodesProperties.Create(AServer: TErrorCodes);
begin
  inherited Create;
  FServer := AServer;
end;

function TErrorCodesProperties.GetDefaultInterface: _ErrorCodes;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoFields.Create: _Fields;
begin
  Result := CreateComObject(CLASS_Fields) as _Fields;
end;

class function CoFields.CreateRemote(const MachineName: string): _Fields;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Fields) as _Fields;
end;

procedure TFields.InitServerData;
const
  CServerData: TServerData = (ClassID: '{300F29DE-87B0-4E62-8B8C-CAF1CB264E0F}'; IntfIID: '{BF9CFF11-A57E-4366-8ACB-48259AC3DBB7}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFields.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Fields;
  end;
end;

procedure TFields.ConnectTo(svrIntf: _Fields);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFields.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFields.GetDefaultInterface: _Fields;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFields.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFieldsProperties.Create(Self);
{$ENDIF}
end;

destructor TFields.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TFields.GetServerProperties: TFieldsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFields.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

function TFields.Item(const FieldNameorFieldNum: WideString): _Field;
begin
  Result := DefaultInterface.Item(FieldNameorFieldNum);
end;

function TFields.GetIndiceInCollection(const FieldName: WideString): Smallint;
begin
  Result := DefaultInterface.GetIndiceInCollection(FieldName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TFieldsProperties.Create(AServer: TFields);
begin
  inherited Create;
  FServer := AServer;
end;

function TFieldsProperties.GetDefaultInterface: _Fields;
begin
  Result := FServer.DefaultInterface;
end;

function TFieldsProperties.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoBookYears.Create: _BookYears;
begin
  Result := CreateComObject(CLASS_BookYears) as _BookYears;
end;

class function CoBookYears.CreateRemote(const MachineName: string): _BookYears;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BookYears) as _BookYears;
end;

procedure TBookYears.InitServerData;
const
  CServerData: TServerData = (ClassID: '{268F50EF-CC4B-4813-9E04-CAE3F19C6B75}'; IntfIID: '{5DEF4379-FB79-4D6E-9A6A-C9A4432ACE05}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBookYears.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _BookYears;
  end;
end;

procedure TBookYears.ConnectTo(svrIntf: _BookYears);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBookYears.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBookYears.GetDefaultInterface: _BookYears;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBookYears.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBookYearsProperties.Create(Self);
{$ENDIF}
end;

destructor TBookYears.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TBookYears.GetServerProperties: TBookYearsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBookYears.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

function TBookYears.Item(index: Smallint): _BookYear;
begin
  Result := DefaultInterface.Item(index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TBookYearsProperties.Create(AServer: TBookYears);
begin
  inherited Create;
  FServer := AServer;
end;

function TBookYearsProperties.GetDefaultInterface: _BookYears;
begin
  Result := FServer.DefaultInterface;
end;

function TBookYearsProperties.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoBookYear.Create: _BookYear;
begin
  Result := CreateComObject(CLASS_BookYear) as _BookYear;
end;

class function CoBookYear.CreateRemote(const MachineName: string): _BookYear;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BookYear) as _BookYear;
end;

procedure TBookYear.InitServerData;
const
  CServerData: TServerData = (ClassID: '{DDF3767C-CB2F-429B-BC2E-A4622E20B748}'; IntfIID: '{1A4570BF-C4D6-4ECB-8D1A-255CE6BC81D2}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBookYear.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _BookYear;
  end;
end;

procedure TBookYear.ConnectTo(svrIntf: _BookYear);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBookYear.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBookYear.GetDefaultInterface: _BookYear;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBookYear.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBookYearProperties.Create(Self);
{$ENDIF}
end;

destructor TBookYear.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TBookYear.GetServerProperties: TBookYearProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBookYear.Get_Periods: _Periods;
begin
  Result := DefaultInterface.Periods;
end;

procedure TBookYear._Set_Periods(const Periods: _Periods);
{ Warning: The property Periods has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Periods := Periods;
end;

function TBookYear.Get_ShortName: WideString;
begin
  Result := DefaultInterface.ShortName;
end;

function TBookYear.Get_LongName: WideString;
begin
  Result := DefaultInterface.LongName;
end;

function TBookYear.Get_SigIndiceOfYear(var BookYearNum: Smallint): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.SigIndiceOfYear[BookYearNum];
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TBookYearProperties.Create(AServer: TBookYear);
begin
  inherited Create;
  FServer := AServer;
end;

function TBookYearProperties.GetDefaultInterface: _BookYear;
begin
  Result := FServer.DefaultInterface;
end;

function TBookYearProperties.Get_Periods: _Periods;
begin
  Result := DefaultInterface.Periods;
end;

procedure TBookYearProperties._Set_Periods(const Periods: _Periods);
{ Warning: The property Periods has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Periods := Periods;
end;

function TBookYearProperties.Get_ShortName: WideString;
begin
  Result := DefaultInterface.ShortName;
end;

function TBookYearProperties.Get_LongName: WideString;
begin
  Result := DefaultInterface.LongName;
end;

function TBookYearProperties.Get_SigIndiceOfYear(var BookYearNum: Smallint): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.SigIndiceOfYear[BookYearNum];
end;

{$ENDIF}

class function CoPeriod.Create: _Period;
begin
  Result := CreateComObject(CLASS_Period) as _Period;
end;

class function CoPeriod.CreateRemote(const MachineName: string): _Period;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Period) as _Period;
end;

procedure TPeriod.InitServerData;
const
  CServerData: TServerData = (ClassID: '{7FEC6EF4-EC37-48E0-918B-78A4AA0E69C1}'; IntfIID: '{DFC7FAF8-21DF-44EB-B02B-3EED989DB860}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPeriod.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Period;
  end;
end;

procedure TPeriod.ConnectTo(svrIntf: _Period);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPeriod.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPeriod.GetDefaultInterface: _Period;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPeriod.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPeriodProperties.Create(Self);
{$ENDIF}
end;

destructor TPeriod.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TPeriod.GetServerProperties: TPeriodProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPeriod.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TPeriod.Get_ListOfPeriods: WideString;
begin
  Result := DefaultInterface.ListOfPeriods;
end;

function TPeriod.NumOfPeriod(const NamePeriod: WideString): WideString;
begin
  Result := DefaultInterface.NumOfPeriod(NamePeriod);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TPeriodProperties.Create(AServer: TPeriod);
begin
  inherited Create;
  FServer := AServer;
end;

function TPeriodProperties.GetDefaultInterface: _Period;
begin
  Result := FServer.DefaultInterface;
end;

function TPeriodProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TPeriodProperties.Get_ListOfPeriods: WideString;
begin
  Result := DefaultInterface.ListOfPeriods;
end;

{$ENDIF}

class function CoSocAnalyticalParam.Create: _SocAnalyticalParam;
begin
  Result := CreateComObject(CLASS_SocAnalyticalParam) as _SocAnalyticalParam;
end;

class function CoSocAnalyticalParam.CreateRemote(const MachineName: string): _SocAnalyticalParam;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SocAnalyticalParam) as _SocAnalyticalParam;
end;

procedure TSocAnalyticalParam.InitServerData;
const
  CServerData: TServerData = (ClassID: '{209411EA-5621-42FA-A99E-BCE0A06E0642}'; IntfIID: '{1409CADE-5A05-47C9-971B-F603BAA3CBC9}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSocAnalyticalParam.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _SocAnalyticalParam;
  end;
end;

procedure TSocAnalyticalParam.ConnectTo(svrIntf: _SocAnalyticalParam);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSocAnalyticalParam.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSocAnalyticalParam.GetDefaultInterface: _SocAnalyticalParam;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSocAnalyticalParam.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSocAnalyticalParamProperties.Create(Self);
{$ENDIF}
end;

destructor TSocAnalyticalParam.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TSocAnalyticalParam.GetServerProperties: TSocAnalyticalParamProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSocAnalyticalParam.Get_IsInstalled: WordBool;
begin
  Result := DefaultInterface.IsInstalled;
end;

function TSocAnalyticalParam.SectionName(SectionNum: Smallint): WideString;
begin
  Result := DefaultInterface.SectionName(SectionNum);
end;

function TSocAnalyticalParam.SectionType(SectionNum: Smallint): WideString;
begin
  Result := DefaultInterface.SectionType(SectionNum);
end;

function TSocAnalyticalParam.SectionLength(SectionNum: Smallint): WideString;
begin
  Result := DefaultInterface.SectionLength(SectionNum);
end;

function TSocAnalyticalParam.SectionsCount: Smallint;
begin
  Result := DefaultInterface.SectionsCount;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TSocAnalyticalParamProperties.Create(AServer: TSocAnalyticalParam);
begin
  inherited Create;
  FServer := AServer;
end;

function TSocAnalyticalParamProperties.GetDefaultInterface: _SocAnalyticalParam;
begin
  Result := FServer.DefaultInterface;
end;

function TSocAnalyticalParamProperties.Get_IsInstalled: WordBool;
begin
  Result := DefaultInterface.IsInstalled;
end;

{$ENDIF}

class function CoErrorCode.Create: _ErrorCode;
begin
  Result := CreateComObject(CLASS_ErrorCode) as _ErrorCode;
end;

class function CoErrorCode.CreateRemote(const MachineName: string): _ErrorCode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ErrorCode) as _ErrorCode;
end;

procedure TErrorCode.InitServerData;
const
  CServerData: TServerData = (ClassID: '{5BC8AA2E-0E42-4784-8133-F6DFDAB20DA5}'; IntfIID: '{9F5C353E-FB46-4D19-B4E3-E08C3C60B710}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TErrorCode.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _ErrorCode;
  end;
end;

procedure TErrorCode.ConnectTo(svrIntf: _ErrorCode);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TErrorCode.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TErrorCode.GetDefaultInterface: _ErrorCode;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TErrorCode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TErrorCodeProperties.Create(Self);
{$ENDIF}
end;

destructor TErrorCode.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TErrorCode.GetServerProperties: TErrorCodeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TErrorCode.Set_SetResolution(Param1: TypeSolution);
begin
  DefaultInterface.Set_SetResolution(Param1);
end;

function TErrorCode.Get_GetResolution: Smallint;
begin
  Result := DefaultInterface.GetResolution;
end;

function TErrorCode.Get_Description: WideString;
begin
  Result := DefaultInterface.Description;
end;

function TErrorCode.Get_AllowableActions: WideString;
begin
  Result := DefaultInterface.AllowableActions;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TErrorCodeProperties.Create(AServer: TErrorCode);
begin
  inherited Create;
  FServer := AServer;
end;

function TErrorCodeProperties.GetDefaultInterface: _ErrorCode;
begin
  Result := FServer.DefaultInterface;
end;

procedure TErrorCodeProperties.Set_SetResolution(Param1: TypeSolution);
begin
  DefaultInterface.Set_SetResolution(Param1);
end;

function TErrorCodeProperties.Get_GetResolution: Smallint;
begin
  Result := DefaultInterface.GetResolution;
end;

function TErrorCodeProperties.Get_Description: WideString;
begin
  Result := DefaultInterface.Description;
end;

function TErrorCodeProperties.Get_AllowableActions: WideString;
begin
  Result := DefaultInterface.AllowableActions;
end;

{$ENDIF}

class function CoImport.Create: _Import;
begin
  Result := CreateComObject(CLASS_Import) as _Import;
end;

class function CoImport.CreateRemote(const MachineName: string): _Import;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Import) as _Import;
end;

procedure TImport.InitServerData;
const
  CServerData: TServerData = (ClassID: '{923C7ED7-E415-42CB-BDEA-6EB070C96BD9}'; IntfIID: '{76AF0DAA-A211-4884-BBCF-FCA0E7F17C2E}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TImport.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Import;
  end;
end;

procedure TImport.ConnectTo(svrIntf: _Import);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TImport.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TImport.GetDefaultInterface: _Import;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TImport.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TImportProperties.Create(Self);
{$ENDIF}
end;

destructor TImport.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TImport.GetServerProperties: TImportProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TImport.Get_ErrorCodes: _ErrorCodes;
begin
  Result := DefaultInterface.ErrorCodes;
end;

procedure TImport._Set_ErrorCodes(const ErrorCodes: _ErrorCodes);
{ Warning: The property ErrorCodes has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.ErrorCodes := ErrorCodes;
end;

function TImport.Get_Warnings: _Warnings;
begin
  Result := DefaultInterface.Warnings;
end;

procedure TImport._Set_Warnings(const Warnings: _Warnings);
{ Warning: The property Warnings has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Warnings := Warnings;
end;

function TImport.Get_FatalErrors: _FatalErrors;
begin
  Result := DefaultInterface.FatalErrors;
end;

procedure TImport._Set_FatalErrors(const FatalErrors: _FatalErrors);
{ Warning: The property FatalErrors has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.FatalErrors := FatalErrors;
end;

procedure TImport.Set_LinkFormat(var Param1: FormatLink);
begin
  DefaultInterface.Set_LinkFormat(Param1);
end;

function TImport.Get_LinkFormat: FormatLink;
begin
  Result := DefaultInterface.LinkFormat;
end;

function TImport.SetDefaultPeriod(const sNewPeriod: WideString): WordBool;
begin
  Result := DefaultInterface.SetDefaultPeriod(sNewPeriod);
end;

function TImport.FileFormat(const FileType: WideString): WordBool;
begin
  Result := DefaultInterface.FileFormat(FileType);
end;

function TImport.Directory(const vNewValue: WideString): WordBool;
begin
  Result := DefaultInterface.Directory(vNewValue);
end;

function TImport.Backup(var WayForBackup: WideString; var EraseExisting: WordBool): WordBool;
begin
  Result := DefaultInterface.Backup(WayForBackup, EraseExisting);
end;

function TImport.SigFieldToExclude(const sigFieldString: WideString): WordBool;
begin
  Result := DefaultInterface.SigFieldToExclude(sigFieldString);
end;

function TImport.SigParamFieldLink(const sigFieldString: WideString): WordBool;
begin
  Result := DefaultInterface.SigParamFieldLink(sigFieldString);
end;

function TImport.Execute: Smallint;
begin
  Result := DefaultInterface.Execute;
end;

function TImport.test: WordBool;
begin
  Result := DefaultInterface.test;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TImportProperties.Create(AServer: TImport);
begin
  inherited Create;
  FServer := AServer;
end;

function TImportProperties.GetDefaultInterface: _Import;
begin
  Result := FServer.DefaultInterface;
end;

function TImportProperties.Get_ErrorCodes: _ErrorCodes;
begin
  Result := DefaultInterface.ErrorCodes;
end;

procedure TImportProperties._Set_ErrorCodes(const ErrorCodes: _ErrorCodes);
{ Warning: The property ErrorCodes has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.ErrorCodes := ErrorCodes;
end;

function TImportProperties.Get_Warnings: _Warnings;
begin
  Result := DefaultInterface.Warnings;
end;

procedure TImportProperties._Set_Warnings(const Warnings: _Warnings);
{ Warning: The property Warnings has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Warnings := Warnings;
end;

function TImportProperties.Get_FatalErrors: _FatalErrors;
begin
  Result := DefaultInterface.FatalErrors;
end;

procedure TImportProperties._Set_FatalErrors(const FatalErrors: _FatalErrors);
{ Warning: The property FatalErrors has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.FatalErrors := FatalErrors;
end;

procedure TImportProperties.Set_LinkFormat(var Param1: FormatLink);
begin
  DefaultInterface.Set_LinkFormat(Param1);
end;

function TImportProperties.Get_LinkFormat: FormatLink;
begin
  Result := DefaultInterface.LinkFormat;
end;

{$ENDIF}

class function CoDbClassApi.Create: _DbClassApi;
begin
  Result := CreateComObject(CLASS_DbClassApi) as _DbClassApi;
end;

class function CoDbClassApi.CreateRemote(const MachineName: string): _DbClassApi;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DbClassApi) as _DbClassApi;
end;

procedure TDbClassApi.InitServerData;
const
  CServerData: TServerData = (ClassID: '{61E5DE91-C300-4C05-97BB-5A4BD68589BC}'; IntfIID: '{32338ECD-D93E-420D-91A8-883E55B377D5}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDbClassApi.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _DbClassApi;
  end;
end;

procedure TDbClassApi.ConnectTo(svrIntf: _DbClassApi);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDbClassApi.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDbClassApi.GetDefaultInterface: _DbClassApi;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDbClassApi.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDbClassApiProperties.Create(Self);
{$ENDIF}
end;

destructor TDbClassApi.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TDbClassApi.GetServerProperties: TDbClassApiProperties;
begin
  Result := FProps;
end;
{$ENDIF}
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TDbClassApiProperties.Create(AServer: TDbClassApi);
begin
  inherited Create;
  FServer := AServer;
end;

function TDbClassApiProperties.GetDefaultInterface: _DbClassApi;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCompte.Create: _Compte;
begin
  Result := CreateComObject(CLASS_Compte) as _Compte;
end;

class function CoCompte.CreateRemote(const MachineName: string): _Compte;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Compte) as _Compte;
end;

procedure TCompte.InitServerData;
const
  CServerData: TServerData = (ClassID: '{48F3777C-6A93-49E9-8356-F0A6D20FB28A}'; IntfIID: '{0160E272-89CA-466B-A2A1-706B0027FEA5}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCompte.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Compte;
  end;
end;

procedure TCompte.ConnectTo(svrIntf: _Compte);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCompte.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCompte.GetDefaultInterface: _Compte;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCompte.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCompteProperties.Create(Self);
{$ENDIF}
end;

destructor TCompte.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TCompte.GetServerProperties: TCompteProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCompte.Get_ListCount: Integer;
begin
  Result := DefaultInterface.ListCount;
end;

function TCompte.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

procedure TCompte.InitializeCancel;
begin
  DefaultInterface.InitializeCancel;
end;

procedure TCompte.CancelOperation;
begin
  DefaultInterface.CancelOperation;
end;

procedure TCompte.InitializeCallBack(var ObjCallBack: IDispatch);
begin
  DefaultInterface.InitializeCallBack(ObjCallBack);
end;

procedure TCompte.ExportXL;
begin
  DefaultInterface.ExportXL;
end;

function TCompte.Balance: Double;
begin
  Result := DefaultInterface.Balance;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TCompteProperties.Create(AServer: TCompte);
begin
  inherited Create;
  FServer := AServer;
end;

function TCompteProperties.GetDefaultInterface: _Compte;
begin
  Result := FServer.DefaultInterface;
end;

function TCompteProperties.Get_ListCount: Integer;
begin
  Result := DefaultInterface.ListCount;
end;

function TCompteProperties.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

{$ENDIF}

class function CoTableUser.Create: _TableUser;
begin
  Result := CreateComObject(CLASS_TableUser) as _TableUser;
end;

class function CoTableUser.CreateRemote(const MachineName: string): _TableUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TableUser) as _TableUser;
end;

procedure TTableUser.InitServerData;
const
  CServerData: TServerData = (ClassID: '{C2C9C138-51C3-4BB4-9F43-4C5006B23644}'; IntfIID: '{E77CFE56-9254-4F26-A270-01FECB1458D2}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTableUser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _TableUser;
  end;
end;

procedure TTableUser.ConnectTo(svrIntf: _TableUser);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTableUser.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTableUser.GetDefaultInterface: _TableUser;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTableUser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTableUserProperties.Create(Self);
{$ENDIF}
end;

destructor TTableUser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TTableUser.GetServerProperties: TTableUserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTableUser.Get_Number: WideString;
begin
  Result := DefaultInterface.Number;
end;

function TTableUser.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

function TTableUser.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

procedure TTableUser.ExportXL;
begin
  DefaultInterface.ExportXL;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TTableUserProperties.Create(AServer: TTableUser);
begin
  inherited Create;
  FServer := AServer;
end;

function TTableUserProperties.GetDefaultInterface: _TableUser;
begin
  Result := FServer.DefaultInterface;
end;

function TTableUserProperties.Get_Number: WideString;
begin
  Result := DefaultInterface.Number;
end;

function TTableUserProperties.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

function TTableUserProperties.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

{$ENDIF}

class function CoComptes.Create: _Comptes;
begin
  Result := CreateComObject(CLASS_Comptes) as _Comptes;
end;

class function CoComptes.CreateRemote(const MachineName: string): _Comptes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Comptes) as _Comptes;
end;

procedure TComptes.InitServerData;
const
  CServerData: TServerData = (ClassID: '{DA36E857-BB5A-4534-A29B-147DA9891BA3}'; IntfIID: '{A550F779-9D65-431C-8423-6A191A123F9C}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TComptes.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Comptes;
  end;
end;

procedure TComptes.ConnectTo(svrIntf: _Comptes);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TComptes.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TComptes.GetDefaultInterface: _Comptes;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TComptes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TComptesProperties.Create(Self);
{$ENDIF}
end;

destructor TComptes.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TComptes.GetServerProperties: TComptesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TComptes.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TComptes._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TComptes.Get_OnlyBooked: WordBool;
begin
  Result := DefaultInterface.OnlyBooked;
end;

procedure TComptes.Set_OnlyBooked(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyBooked(Param1);
end;

function TComptes.Get_CalcSum: WordBool;
begin
  Result := DefaultInterface.CalcSum;
end;

procedure TComptes.Set_CalcSum(var Param1: WordBool);
begin
  DefaultInterface.Set_CalcSum(Param1);
end;

function TComptes.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TComptes.Set_SortOrder(Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

function TComptes.Item(const Range: WideString): _Compte;
begin
  Result := DefaultInterface.Item(Range);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TComptesProperties.Create(AServer: TComptes);
begin
  inherited Create;
  FServer := AServer;
end;

function TComptesProperties.GetDefaultInterface: _Comptes;
begin
  Result := FServer.DefaultInterface;
end;

function TComptesProperties.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TComptesProperties._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TComptesProperties.Get_OnlyBooked: WordBool;
begin
  Result := DefaultInterface.OnlyBooked;
end;

procedure TComptesProperties.Set_OnlyBooked(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyBooked(Param1);
end;

function TComptesProperties.Get_CalcSum: WordBool;
begin
  Result := DefaultInterface.CalcSum;
end;

procedure TComptesProperties.Set_CalcSum(var Param1: WordBool);
begin
  DefaultInterface.Set_CalcSum(Param1);
end;

function TComptesProperties.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TComptesProperties.Set_SortOrder(Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

{$ENDIF}

class function CoDossier.Create: _Dossier;
begin
  Result := CreateComObject(CLASS_Dossier) as _Dossier;
end;

class function CoDossier.CreateRemote(const MachineName: string): _Dossier;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Dossier) as _Dossier;
end;

procedure TDossier.InitServerData;
const
  CServerData: TServerData = (ClassID: '{7A5CABDC-4D00-4C7A-A9F3-0845AC81E465}'; IntfIID: '{85FD7C04-A8B8-4795-9890-0E89911DC530}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDossier.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Dossier;
  end;
end;

procedure TDossier.ConnectTo(svrIntf: _Dossier);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDossier.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDossier.GetDefaultInterface: _Dossier;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDossier.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDossierProperties.Create(Self);
{$ENDIF}
end;

destructor TDossier.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TDossier.GetServerProperties: TDossierProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDossier.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TDossier.Get_Path: WideString;
begin
  Result := DefaultInterface.Path;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TDossierProperties.Create(AServer: TDossier);
begin
  inherited Create;
  FServer := AServer;
end;

function TDossierProperties.GetDefaultInterface: _Dossier;
begin
  Result := FServer.DefaultInterface;
end;

function TDossierProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TDossierProperties.Get_Path: WideString;
begin
  Result := DefaultInterface.Path;
end;

{$ENDIF}

class function CoOptions.Create: _Options;
begin
  Result := CreateComObject(CLASS_Options) as _Options;
end;

class function CoOptions.CreateRemote(const MachineName: string): _Options;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Options) as _Options;
end;

procedure TOptions.InitServerData;
const
  CServerData: TServerData = (ClassID: '{FD92BEAC-82DA-4AA8-BA93-EAA8C312512E}'; IntfIID: '{E667C7A2-7F84-4C41-A337-126AD043478C}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOptions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Options;
  end;
end;

procedure TOptions.ConnectTo(svrIntf: _Options);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOptions.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOptions.GetDefaultInterface: _Options;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TOptionsProperties.Create(Self);
{$ENDIF}
end;

destructor TOptions.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TOptions.GetServerProperties: TOptionsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TOptions.Set_NewSheet(Param1: WordBool);
begin
  DefaultInterface.Set_NewSheet(Param1);
end;

function TOptions.Get_NewSheet: WordBool;
begin
  Result := DefaultInterface.NewSheet;
end;

procedure TOptions.Set_ClearSheet(Param1: WordBool);
begin
  DefaultInterface.Set_ClearSheet(Param1);
end;

function TOptions.Get_ClearSheet: WordBool;
begin
  Result := DefaultInterface.ClearSheet;
end;

procedure TOptions.Set_WithTitle(Param1: WordBool);
begin
  DefaultInterface.Set_WithTitle(Param1);
end;

function TOptions.Get_WithTitle: WordBool;
begin
  Result := DefaultInterface.WithTitle;
end;

procedure TOptions.Set_Lang(const Param1: WideString);
{ Warning: The property Lang has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Lang := Param1;
end;

function TOptions.Get_Lang: WideString;
begin
  Result := DefaultInterface.Lang;
end;

procedure TOptions.Save;
begin
  DefaultInterface.Save;
end;

procedure TOptions.LoadDefault;
begin
  DefaultInterface.LoadDefault;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TOptionsProperties.Create(AServer: TOptions);
begin
  inherited Create;
  FServer := AServer;
end;

function TOptionsProperties.GetDefaultInterface: _Options;
begin
  Result := FServer.DefaultInterface;
end;

procedure TOptionsProperties.Set_NewSheet(Param1: WordBool);
begin
  DefaultInterface.Set_NewSheet(Param1);
end;

function TOptionsProperties.Get_NewSheet: WordBool;
begin
  Result := DefaultInterface.NewSheet;
end;

procedure TOptionsProperties.Set_ClearSheet(Param1: WordBool);
begin
  DefaultInterface.Set_ClearSheet(Param1);
end;

function TOptionsProperties.Get_ClearSheet: WordBool;
begin
  Result := DefaultInterface.ClearSheet;
end;

procedure TOptionsProperties.Set_WithTitle(Param1: WordBool);
begin
  DefaultInterface.Set_WithTitle(Param1);
end;

function TOptionsProperties.Get_WithTitle: WordBool;
begin
  Result := DefaultInterface.WithTitle;
end;

procedure TOptionsProperties.Set_Lang(const Param1: WideString);
{ Warning: The property Lang has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Lang := Param1;
end;

function TOptionsProperties.Get_Lang: WideString;
begin
  Result := DefaultInterface.Lang;
end;

{$ENDIF}

class function CoField.Create: _Field;
begin
  Result := CreateComObject(CLASS_Field) as _Field;
end;

class function CoField.CreateRemote(const MachineName: string): _Field;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Field) as _Field;
end;

procedure TField.InitServerData;
const
  CServerData: TServerData = (ClassID: '{FE3AC3CC-0C53-403F-8C8E-1A1FDDEE9F5B}'; IntfIID: '{F105E093-D911-46A0-81AF-92B336CF4A83}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TField.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Field;
  end;
end;

procedure TField.ConnectTo(svrIntf: _Field);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TField.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TField.GetDefaultInterface: _Field;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TField.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFieldProperties.Create(Self);
{$ENDIF}
end;

destructor TField.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TField.GetServerProperties: TFieldProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TField.Get_indice: Smallint;
begin
  Result := DefaultInterface.indice;
end;

procedure TField.Set_indice(var Param1: Smallint);
begin
  DefaultInterface.Set_indice(Param1);
end;

function TField.Get_Decimals: Smallint;
begin
  Result := DefaultInterface.Decimals;
end;

function TField.Get_Width: Smallint;
begin
  Result := DefaultInterface.Width;
end;

function TField.Get_GetFieldType: WideString;
begin
  Result := DefaultInterface.GetFieldType;
end;

function TField.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

function TField.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TField.Set_Visible(Param1: WordBool);
begin
  DefaultInterface.Set_Visible(Param1);
end;

function TField.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

function TField.Get_Expression: WideString;
begin
  Result := DefaultInterface.Expression;
end;

procedure TField.Set_Expression(const Param1: WideString);
{ Warning: The property Expression has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Expression := Param1;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TFieldProperties.Create(AServer: TField);
begin
  inherited Create;
  FServer := AServer;
end;

function TFieldProperties.GetDefaultInterface: _Field;
begin
  Result := FServer.DefaultInterface;
end;

function TFieldProperties.Get_indice: Smallint;
begin
  Result := DefaultInterface.indice;
end;

procedure TFieldProperties.Set_indice(var Param1: Smallint);
begin
  DefaultInterface.Set_indice(Param1);
end;

function TFieldProperties.Get_Decimals: Smallint;
begin
  Result := DefaultInterface.Decimals;
end;

function TFieldProperties.Get_Width: Smallint;
begin
  Result := DefaultInterface.Width;
end;

function TFieldProperties.Get_GetFieldType: WideString;
begin
  Result := DefaultInterface.GetFieldType;
end;

function TFieldProperties.Get_Caption: WideString;
begin
  Result := DefaultInterface.Caption;
end;

function TFieldProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TFieldProperties.Set_Visible(Param1: WordBool);
begin
  DefaultInterface.Set_Visible(Param1);
end;

function TFieldProperties.Get_Visible: WordBool;
begin
  Result := DefaultInterface.Visible;
end;

function TFieldProperties.Get_Expression: WideString;
begin
  Result := DefaultInterface.Expression;
end;

procedure TFieldProperties.Set_Expression(const Param1: WideString);
{ Warning: The property Expression has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Expression := Param1;
end;

{$ENDIF}

class function CoAnaLytique.Create: _AnaLytique;
begin
  Result := CreateComObject(CLASS_AnaLytique) as _AnaLytique;
end;

class function CoAnaLytique.CreateRemote(const MachineName: string): _AnaLytique;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AnaLytique) as _AnaLytique;
end;

procedure TAnaLytique.InitServerData;
const
  CServerData: TServerData = (ClassID: '{6A32FF54-31A4-4A29-BBAC-484B0E3F5D74}'; IntfIID: '{7001AA94-00C5-4538-982B-229B29AEF8B2}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnaLytique.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _AnaLytique;
  end;
end;

procedure TAnaLytique.ConnectTo(svrIntf: _AnaLytique);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAnaLytique.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAnaLytique.GetDefaultInterface: _AnaLytique;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAnaLytique.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnaLytiqueProperties.Create(Self);
{$ENDIF}
end;

destructor TAnaLytique.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TAnaLytique.GetServerProperties: TAnaLytiqueProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TAnaLytique.Set_DeterminePlan(var Param1: Smallint);
begin
  DefaultInterface.Set_DeterminePlan(Param1);
end;

procedure TAnaLytique.Set_PeriodStart(const Param1: WideString);
{ Warning: The property PeriodStart has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodStart := Param1;
end;

procedure TAnaLytique.Set_PeriodEnd(const Param1: WideString);
{ Warning: The property PeriodEnd has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.PeriodEnd := Param1;
end;

procedure TAnaLytique.Set_AllBookyear(Param1: WordBool);
begin
  DefaultInterface.Set_AllBookyear(Param1);
end;

function TAnaLytique.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

procedure TAnaLytique.InitializeCancel;
begin
  DefaultInterface.InitializeCancel;
end;

procedure TAnaLytique.CancelOperation;
begin
  DefaultInterface.CancelOperation;
end;

procedure TAnaLytique.InitializeCallBack(var ObjCallBack: IDispatch);
begin
  DefaultInterface.InitializeCallBack(ObjCallBack);
end;

procedure TAnaLytique.ExportXL;
begin
  DefaultInterface.ExportXL;
end;

procedure TAnaLytique.ExportBalAna(const Deb_per: WideString; const End_per: WideString);
begin
  DefaultInterface.ExportBalAna(Deb_per, End_per);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TAnaLytiqueProperties.Create(AServer: TAnaLytique);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnaLytiqueProperties.GetDefaultInterface: _AnaLytique;
begin
  Result := FServer.DefaultInterface;
end;

procedure TAnaLytiqueProperties.Set_DeterminePlan(var Param1: Smallint);
begin
  DefaultInterface.Set_DeterminePlan(Param1);
end;

procedure TAnaLytiqueProperties.Set_PeriodStart(const Param1: WideString);
{ Warning: The property PeriodStart has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodStart := Param1;
end;

procedure TAnaLytiqueProperties.Set_PeriodEnd(const Param1: WideString);
{ Warning: The property PeriodEnd has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.PeriodEnd := Param1;
end;

procedure TAnaLytiqueProperties.Set_AllBookyear(Param1: WordBool);
begin
  DefaultInterface.Set_AllBookyear(Param1);
end;

function TAnaLytiqueProperties.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

{$ENDIF}

class function CoWbApiUtilities.Create: _WbApiUtilities;
begin
  Result := CreateComObject(CLASS_WbApiUtilities) as _WbApiUtilities;
end;

class function CoWbApiUtilities.CreateRemote(const MachineName: string): _WbApiUtilities;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WbApiUtilities) as _WbApiUtilities;
end;

procedure TWbApiUtilities.InitServerData;
const
  CServerData: TServerData = (ClassID: '{71979598-9C60-4F06-BC21-5827860DB27B}'; IntfIID: '{013A3107-0813-411A-AF5E-474D7850B4E5}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWbApiUtilities.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _WbApiUtilities;
  end;
end;

procedure TWbApiUtilities.ConnectTo(svrIntf: _WbApiUtilities);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWbApiUtilities.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWbApiUtilities.GetDefaultInterface: _WbApiUtilities;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWbApiUtilities.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWbApiUtilitiesProperties.Create(Self);
{$ENDIF}
end;

destructor TWbApiUtilities.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TWbApiUtilities.GetServerProperties: TWbApiUtilitiesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWbApiUtilities.Get_GetTime: Double;
begin
  Result := DefaultInterface.GetTime;
end;

procedure TWbApiUtilities.FillTreeView(var obj_treeview: IDispatch; var obj_nod: IDispatch);
begin
  DefaultInterface.FillTreeView(obj_treeview, obj_nod);
end;

function TWbApiUtilities.SaveNewQuery(const Id_query: WideString; const ID_statement: WideString): WordBool;
begin
  Result := DefaultInterface.SaveNewQuery(Id_query, ID_statement);
end;

function TWbApiUtilities.SaveExistingQuery(const Id_query: WideString; const ID_statement: WideString): WordBool;
begin
  Result := DefaultInterface.SaveExistingQuery(Id_query, ID_statement);
end;

function TWbApiUtilities.DeleteQuery(const Id_query: WideString): WordBool;
begin
  Result := DefaultInterface.DeleteQuery(Id_query);
end;

function TWbApiUtilities.InitializeTime: Double;
begin
  Result := DefaultInterface.InitializeTime;
end;

function TWbApiUtilities.GetFieldCommentForTreeView(var the_objNOd: IDispatch): WideString;
begin
  Result := DefaultInterface.GetFieldCommentForTreeView(the_objNOd);
end;

function TWbApiUtilities.LoadExistingQuery(var Obj_To_fill: IDispatch): WordBool;
begin
  Result := DefaultInterface.LoadExistingQuery(Obj_To_fill);
end;

function TWbApiUtilities.SeekSelectedQuery(const Id_query: WideString): WideString;
begin
  Result := DefaultInterface.SeekSelectedQuery(Id_query);
end;

function TWbApiUtilities.QueryExist(const ID_statement: WideString): WideString;
begin
  Result := DefaultInterface.QueryExist(ID_statement);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TWbApiUtilitiesProperties.Create(AServer: TWbApiUtilities);
begin
  inherited Create;
  FServer := AServer;
end;

function TWbApiUtilitiesProperties.GetDefaultInterface: _WbApiUtilities;
begin
  Result := FServer.DefaultInterface;
end;

function TWbApiUtilitiesProperties.Get_GetTime: Double;
begin
  Result := DefaultInterface.GetTime;
end;

{$ENDIF}

class function CoSqlError.Create: _SqlError;
begin
  Result := CreateComObject(CLASS_SqlError) as _SqlError;
end;

class function CoSqlError.CreateRemote(const MachineName: string): _SqlError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SqlError) as _SqlError;
end;

procedure TSqlError.InitServerData;
const
  CServerData: TServerData = (ClassID: '{E67D7428-EECE-4624-9CA3-D9B5F985789A}'; IntfIID: '{8C45D26C-2723-401D-852F-9928C0502573}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSqlError.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _SqlError;
  end;
end;

procedure TSqlError.ConnectTo(svrIntf: _SqlError);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSqlError.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSqlError.GetDefaultInterface: _SqlError;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSqlError.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSqlErrorProperties.Create(Self);
{$ENDIF}
end;

destructor TSqlError.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TSqlError.GetServerProperties: TSqlErrorProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSqlError.Get_Description: WideString;
begin
  Result := DefaultInterface.Description;
end;

procedure TSqlError.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TSqlErrorProperties.Create(AServer: TSqlError);
begin
  inherited Create;
  FServer := AServer;
end;

function TSqlErrorProperties.GetDefaultInterface: _SqlError;
begin
  Result := FServer.DefaultInterface;
end;

function TSqlErrorProperties.Get_Description: WideString;
begin
  Result := DefaultInterface.Description;
end;

{$ENDIF}

class function CoUser.Create: _User;
begin
  Result := CreateComObject(CLASS_User) as _User;
end;

class function CoUser.CreateRemote(const MachineName: string): _User;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as _User;
end;

procedure TUser.InitServerData;
const
  CServerData: TServerData = (ClassID: '{EA8B7735-B14B-40BD-A5ED-16239F6F9A80}'; IntfIID: '{5096A48E-51B7-4FA0-B779-95DF959F94E8}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _User;
  end;
end;

procedure TUser.ConnectTo(svrIntf: _User);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUser.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUser.GetDefaultInterface: _User;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TUserProperties.Create(Self);
{$ENDIF}
end;

destructor TUser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TUser.GetServerProperties: TUserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TUser.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TUser.Set_Name(const Param1: WideString);
{ Warning: The property Name has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Name := Param1;
end;

function TUser.Get_Level: WideString;
begin
  Result := DefaultInterface.Level;
end;

function TUser.Get_Language: WideString;
begin
  Result := DefaultInterface.Language;
end;

procedure TUser.Set_Language(const Param1: WideString);
{ Warning: The property Language has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Language := Param1;
end;

function TUser.Get_Rights: WideString;
begin
  Result := DefaultInterface.Rights;
end;

procedure TUser.Set_Rights(const Param1: WideString);
{ Warning: The property Rights has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Rights := Param1;
end;

function TUser.Get_PrefsPath: WideString;
begin
  Result := DefaultInterface.PrefsPath;
end;

function TUser.CheckAccess(const SocName: WideString; const SocDirectory: WideString; const UserName: WideString): Smallint;
begin
  Result := DefaultInterface.CheckAccess(SocName, SocDirectory, UserName);
end;

procedure TUser.Register(const SocDirectory: WideString; const UserName: WideString; const UserLanguage: WideString; const UserPassword: WideString;
  const UserRights: WideString);
begin
  DefaultInterface.Register(SocDirectory, UserName, UserLanguage, UserPassword, UserRights);
end;

procedure TUser.UnRegister;
begin
  DefaultInterface.UnRegister;
end;

function TUser.IsUserLoggedInDossier(const UserName: WideString; const SocPathName: WideString): Smallint;
begin
  Result := DefaultInterface.IsUserLoggedInDossier(UserName, SocPathName);
end;

function TUser.IsAdministrator: WordBool;
begin
  Result := DefaultInterface.IsAdministrator;
end;

function TUser.IsAccess(const ModuleItemName: WideString): WordBool;
begin
  Result := DefaultInterface.IsAccess(ModuleItemName);
end;

function TUser.GetAlternateUsernameAndDossier(const UserName: WideString; ForceRecalculation: WordBool): WideString;
begin
  Result := DefaultInterface.GetAlternateUsernameAndDossier(UserName, ForceRecalculation);
end;

function TUser.CheckPasswordOfUser(const UserName: WideString; const the_soc: WideString): WordBool;
begin
  Result := DefaultInterface.CheckPasswordOfUser(UserName, the_soc);
end;

function TUser.GetLanguageOfCurrentUser(const UserName: WideString): WideString;
begin
  Result := DefaultInterface.GetLanguageOfCurrentUser(UserName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TUserProperties.Create(AServer: TUser);
begin
  inherited Create;
  FServer := AServer;
end;

function TUserProperties.GetDefaultInterface: _User;
begin
  Result := FServer.DefaultInterface;
end;

function TUserProperties.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TUserProperties.Set_Name(const Param1: WideString);
{ Warning: The property Name has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant      := DefaultInterface;
  InterfaceVariant.Name := Param1;
end;

function TUserProperties.Get_Level: WideString;
begin
  Result := DefaultInterface.Level;
end;

function TUserProperties.Get_Language: WideString;
begin
  Result := DefaultInterface.Language;
end;

procedure TUserProperties.Set_Language(const Param1: WideString);
{ Warning: The property Language has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Language := Param1;
end;

function TUserProperties.Get_Rights: WideString;
begin
  Result := DefaultInterface.Rights;
end;

procedure TUserProperties.Set_Rights(const Param1: WideString);
{ Warning: The property Rights has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Rights := Param1;
end;

function TUserProperties.Get_PrefsPath: WideString;
begin
  Result := DefaultInterface.PrefsPath;
end;

{$ENDIF}

class function CoDossiers.Create: _Dossiers;
begin
  Result := CreateComObject(CLASS_Dossiers) as _Dossiers;
end;

class function CoDossiers.CreateRemote(const MachineName: string): _Dossiers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Dossiers) as _Dossiers;
end;

procedure TDossiers.InitServerData;
const
  CServerData: TServerData = (ClassID: '{02FD2AEF-1046-4C4A-97B3-6E4DFD79CD94}'; IntfIID: '{7AA31EBA-863F-4397-B7EC-9E00BB941C97}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDossiers.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Dossiers;
  end;
end;

procedure TDossiers.ConnectTo(svrIntf: _Dossiers);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDossiers.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDossiers.GetDefaultInterface: _Dossiers;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDossiers.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDossiersProperties.Create(Self);
{$ENDIF}
end;

destructor TDossiers.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TDossiers.GetServerProperties: TDossiersProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDossiers.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

function TDossiers.Get_ShowArchivedBookyears: WordBool;
begin
  Result := DefaultInterface.ShowArchivedBookyears;
end;

procedure TDossiers.Set_ShowArchivedBookyears(Param1: WordBool);
begin
  DefaultInterface.Set_ShowArchivedBookyears(Param1);
end;

function TDossiers.GetAllCompanies: PSafeArray;
begin
  Result := DefaultInterface.GetAllCompanies;
end;

function TDossiers.GetCompanyListSorted: OleVariant;
begin
  Result := DefaultInterface.GetCompanyListSorted;
end;

function TDossiers.IsLocalDossierExist(const PathInUsersFile: WideString; const MyShortName: WideString): WordBool;
begin
  Result := DefaultInterface.IsLocalDossierExist(PathInUsersFile, MyShortName);
end;

function TDossiers.Item(index: Smallint): _Dossier;
begin
  Result := DefaultInterface.Item(index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TDossiersProperties.Create(AServer: TDossiers);
begin
  inherited Create;
  FServer := AServer;
end;

function TDossiersProperties.GetDefaultInterface: _Dossiers;
begin
  Result := FServer.DefaultInterface;
end;

function TDossiersProperties.Get_Count: Smallint;
begin
  Result := DefaultInterface.Count;
end;

function TDossiersProperties.Get_ShowArchivedBookyears: WordBool;
begin
  Result := DefaultInterface.ShowArchivedBookyears;
end;

procedure TDossiersProperties.Set_ShowArchivedBookyears(Param1: WordBool);
begin
  DefaultInterface.Set_ShowArchivedBookyears(Param1);
end;

{$ENDIF}

class function CoApiIni.Create: _ApiIni;
begin
  Result := CreateComObject(CLASS_ApiIni) as _ApiIni;
end;

class function CoApiIni.CreateRemote(const MachineName: string): _ApiIni;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ApiIni) as _ApiIni;
end;

procedure TApiIni.InitServerData;
const
  CServerData: TServerData = (ClassID: '{32E39920-91ED-4ECE-A14C-0F9E11BE4126}'; IntfIID: '{B17D41BA-16F6-4405-933B-9E3AE2F9EBB3}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TApiIni.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _ApiIni;
  end;
end;

procedure TApiIni.ConnectTo(svrIntf: _ApiIni);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TApiIni.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TApiIni.GetDefaultInterface: _ApiIni;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TApiIni.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TApiIniProperties.Create(Self);
{$ENDIF}
end;

destructor TApiIni.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TApiIni.GetServerProperties: TApiIniProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TApiIni.Get_INIfile: WideString;
begin
  Result := DefaultInterface.INIfile;
end;

procedure TApiIni.Set_INIfile(const Param1: WideString);
{ Warning: The property INIfile has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.INIfile := Param1;
end;

function TApiIni.ReadINI(var Section: WideString; var Key: WideString): OleVariant;
begin
  Result := DefaultInterface.ReadINI(Section, Key);
end;

procedure TApiIni.WriteINI(var Section: WideString; var Key: WideString; var Text: WideString);
begin
  DefaultInterface.WriteINI(Section, Key, Text);
end;

function TApiIni.IsSpecifiedKeyExist(const Section: WideString; const Key: WideString; const IniFileName: WideString): WordBool;
begin
  Result := DefaultInterface.IsSpecifiedKeyExist(Section, Key, IniFileName);
end;

function TApiIni.GetUserDbfPath: WideString;
begin
  Result := DefaultInterface.GetUserDbfPath;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TApiIniProperties.Create(AServer: TApiIni);
begin
  inherited Create;
  FServer := AServer;
end;

function TApiIniProperties.GetDefaultInterface: _ApiIni;
begin
  Result := FServer.DefaultInterface;
end;

function TApiIniProperties.Get_INIfile: WideString;
begin
  Result := DefaultInterface.INIfile;
end;

procedure TApiIniProperties.Set_INIfile(const Param1: WideString);
{ Warning: The property INIfile has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.INIfile := Param1;
end;

{$ENDIF}

class function CoWinbooksObject.Create: _WinbooksObject;
begin
  Result := CreateComObject(CLASS_WinbooksObject) as _WinbooksObject;
end;

class function CoWinbooksObject.CreateRemote(const MachineName: string): _WinbooksObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WinbooksObject) as _WinbooksObject;
end;

procedure TWinbooksObject.InitServerData;
const
  CServerData: TServerData = (ClassID: '{B67F206D-2887-4898-89D8-8AD5691B6DF0}'; IntfIID: '{834C9818-ACFE-4420-9E30-7E5A63161D14}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWinbooksObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _WinbooksObject;
  end;
end;

procedure TWinbooksObject.ConnectTo(svrIntf: _WinbooksObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWinbooksObject.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWinbooksObject.GetDefaultInterface: _WinbooksObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWinbooksObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWinbooksObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TWinbooksObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TWinbooksObject.GetServerProperties: TWinbooksObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TWinbooksObject.Get_Customers: _Comptes;
begin
  Result := DefaultInterface.Customers;
end;

procedure TWinbooksObject._Set_Customers(const Customers: _Comptes);
{ Warning: The property Customers has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Customers := Customers;
end;

function TWinbooksObject.Get_Suppliers: _Comptes;
begin
  Result := DefaultInterface.Suppliers;
end;

procedure TWinbooksObject._Set_Suppliers(const Suppliers: _Comptes);
{ Warning: The property Suppliers has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Suppliers := Suppliers;
end;

function TWinbooksObject.Get_Accounts: _Comptes;
begin
  Result := DefaultInterface.Accounts;
end;

procedure TWinbooksObject._Set_Accounts(const Accounts: _Comptes);
{ Warning: The property Accounts has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Accounts := Accounts;
end;

function TWinbooksObject.Get_Analytical: _SocAnalyticalParam;
begin
  Result := DefaultInterface.Analytical;
end;

procedure TWinbooksObject._Set_Analytical(const Analytical: _SocAnalyticalParam);
{ Warning: The property Analytical has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Analytical := Analytical;
end;

function TWinbooksObject.Get_CustomerTrans: _Transactions;
begin
  Result := DefaultInterface.CustomerTrans;
end;

procedure TWinbooksObject._Set_CustomerTrans(const CustomerTrans: _Transactions);
{ Warning: The property CustomerTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CustomerTrans := CustomerTrans;
end;

function TWinbooksObject.Get_CustTrans: _Transaction;
begin
  Result := DefaultInterface.CustTrans;
end;

procedure TWinbooksObject._Set_CustTrans(const CustTrans: _Transaction);
{ Warning: The property CustTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.CustTrans := CustTrans;
end;

function TWinbooksObject.Get_SupplierTrans: _Transactions;
begin
  Result := DefaultInterface.SupplierTrans;
end;

procedure TWinbooksObject._Set_SupplierTrans(const SupplierTrans: _Transactions);
{ Warning: The property SupplierTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.SupplierTrans := SupplierTrans;
end;

function TWinbooksObject.Get_AccountTrans: _Transactions;
begin
  Result := DefaultInterface.AccountTrans;
end;

procedure TWinbooksObject._Set_AccountTrans(const AccountTrans: _Transactions);
{ Warning: The property AccountTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant              := DefaultInterface;
  InterfaceVariant.AccountTrans := AccountTrans;
end;

function TWinbooksObject.Get_AnalyticalTrans: _Analytiques;
begin
  Result := DefaultInterface.AnalyticalTrans;
end;

procedure TWinbooksObject._Set_AnalyticalTrans(const AnalyticalTrans: _Analytiques);
{ Warning: The property AnalyticalTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                 := DefaultInterface;
  InterfaceVariant.AnalyticalTrans := AnalyticalTrans;
end;

function TWinbooksObject.Get_Tables: _Tables;
begin
  Result := DefaultInterface.Tables;
end;

procedure TWinbooksObject._Set_Tables(const Tables: _Tables);
{ Warning: The property Tables has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Tables := Tables;
end;

function TWinbooksObject.Get_Import: _Import;
begin
  Result := DefaultInterface.Import;
end;

procedure TWinbooksObject._Set_Import(const Import: _Import);
{ Warning: The property Import has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Import := Import;
end;

function TWinbooksObject.Get_BookYear: _BookYears;
begin
  Result := DefaultInterface.BookYear;
end;

procedure TWinbooksObject._Set_BookYear(const BookYear: _BookYears);
{ Warning: The property BookYear has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.BookYear := BookYear;
end;

function TWinbooksObject.Get_Options: _Options;
begin
  Result := DefaultInterface.Options;
end;

procedure TWinbooksObject._Set_Options(const Options: _Options);
{ Warning: The property Options has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Options := Options;
end;

function TWinbooksObject.Get_Sql: _SqlClass;
begin
  Result := DefaultInterface.Sql;
end;

procedure TWinbooksObject._Set_Sql(const Sql: _SqlClass);
{ Warning: The property Sql has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant     := DefaultInterface;
  InterfaceVariant.Sql := Sql;
end;

function TWinbooksObject.Get_Param: _Param;
begin
  Result := DefaultInterface.Param;
end;

procedure TWinbooksObject._Set_Param(const Param: _Param);
{ Warning: The property Param has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Param := Param;
end;

function TWinbooksObject.Get_Utilities: _WbApiUtilities;
begin
  Result := DefaultInterface.Utilities;
end;

procedure TWinbooksObject._Set_Utilities(const Utilities: _WbApiUtilities);
{ Warning: The property Utilities has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Utilities := Utilities;
end;

function TWinbooksObject.Get_Companies: _Dossiers;
begin
  Result := DefaultInterface.Companies;
end;

procedure TWinbooksObject._Set_Companies(const Companies: _Dossiers);
{ Warning: The property Companies has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Companies := Companies;
end;

function TWinbooksObject.Get_LastErrorMessage: WideString;
begin
  Result := DefaultInterface.LastErrorMessage;
end;

procedure TWinbooksObject.Set_ActiveLanguage(Param1: LanguageDll);
begin
  DefaultInterface.Set_ActiveLanguage(Param1);
end;

procedure TWinbooksObject.Set_SetPath(const Param1: WideString);
{ Warning: The property SetPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.SetPath := Param1;
end;

function TWinbooksObject.Get_Version: WideString;
begin
  Result := DefaultInterface.Version;
end;

procedure TWinbooksObject.Set_GetEncryptionPwd(const Param1: WideString);
{ Warning: The property GetEncryptionPwd has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                  := DefaultInterface;
  InterfaceVariant.GetEncryptionPwd := Param1;
end;

function TWinbooksObject.Get_IsFullAccess: WordBool;
begin
  Result := DefaultInterface.IsFullAccess;
end;

function TWinbooksObject.ReturnLanguage: WideString;
begin
  Result := DefaultInterface.ReturnLanguage;
end;

function TWinbooksObject.Init: Smallint;
begin
  Result := DefaultInterface.Init;
end;

function TWinbooksObject.InitLocal: Smallint;
begin
  Result := DefaultInterface.InitLocal;
end;

function TWinbooksObject.Login(const UserName: WideString; const UserPassword: WideString; const UserLanguage: WideString): Smallint;
begin
  Result := DefaultInterface.Login(UserName, UserPassword, UserLanguage);
end;

function TWinbooksObject.OpenDossier(const ShortName: WideString): Smallint;
begin
  Result := DefaultInterface.OpenDossier(ShortName);
end;

procedure TWinbooksObject.LoadFieldDefs;
begin
  DefaultInterface.LoadFieldDefs;
end;

function TWinbooksObject.OpenBookYear(const BookYearShortName: WideString): Smallint;
begin
  Result := DefaultInterface.OpenBookYear(BookYearShortName);
end;

procedure TWinbooksObject.CloseDossier;
begin
  DefaultInterface.CloseDossier;
end;

function TWinbooksObject.GetDossierPath(const ShortName: WideString): WideString;
begin
  Result := DefaultInterface.GetDossierPath(ShortName);
end;

procedure TWinbooksObject.FreeClipBoard;
begin
  DefaultInterface.FreeClipBoard;
end;

procedure TWinbooksObject.PutInClipBoard(const Str_buffer1: WideString);
begin
  DefaultInterface.PutInClipBoard(Str_buffer1);
end;

function TWinbooksObject.GetDllVersion: WideString;
begin
  Result := DefaultInterface.GetDllVersion;
end;

function TWinbooksObject.GetDllCompilDate: WideString;
begin
  Result := DefaultInterface.GetDllCompilDate;
end;

function TWinbooksObject.GetDllInstallationPath: WideString;
begin
  Result := DefaultInterface.GetDllInstallationPath;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TWinbooksObjectProperties.Create(AServer: TWinbooksObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TWinbooksObjectProperties.GetDefaultInterface: _WinbooksObject;
begin
  Result := FServer.DefaultInterface;
end;

function TWinbooksObjectProperties.Get_Customers: _Comptes;
begin
  Result := DefaultInterface.Customers;
end;

procedure TWinbooksObjectProperties._Set_Customers(const Customers: _Comptes);
{ Warning: The property Customers has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Customers := Customers;
end;

function TWinbooksObjectProperties.Get_Suppliers: _Comptes;
begin
  Result := DefaultInterface.Suppliers;
end;

procedure TWinbooksObjectProperties._Set_Suppliers(const Suppliers: _Comptes);
{ Warning: The property Suppliers has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Suppliers := Suppliers;
end;

function TWinbooksObjectProperties.Get_Accounts: _Comptes;
begin
  Result := DefaultInterface.Accounts;
end;

procedure TWinbooksObjectProperties._Set_Accounts(const Accounts: _Comptes);
{ Warning: The property Accounts has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.Accounts := Accounts;
end;

function TWinbooksObjectProperties.Get_Analytical: _SocAnalyticalParam;
begin
  Result := DefaultInterface.Analytical;
end;

procedure TWinbooksObjectProperties._Set_Analytical(const Analytical: _SocAnalyticalParam);
{ Warning: The property Analytical has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant            := DefaultInterface;
  InterfaceVariant.Analytical := Analytical;
end;

function TWinbooksObjectProperties.Get_CustomerTrans: _Transactions;
begin
  Result := DefaultInterface.CustomerTrans;
end;

procedure TWinbooksObjectProperties._Set_CustomerTrans(const CustomerTrans: _Transactions);
{ Warning: The property CustomerTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.CustomerTrans := CustomerTrans;
end;

function TWinbooksObjectProperties.Get_CustTrans: _Transaction;
begin
  Result := DefaultInterface.CustTrans;
end;

procedure TWinbooksObjectProperties._Set_CustTrans(const CustTrans: _Transaction);
{ Warning: The property CustTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.CustTrans := CustTrans;
end;

function TWinbooksObjectProperties.Get_SupplierTrans: _Transactions;
begin
  Result := DefaultInterface.SupplierTrans;
end;

procedure TWinbooksObjectProperties._Set_SupplierTrans(const SupplierTrans: _Transactions);
{ Warning: The property SupplierTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant               := DefaultInterface;
  InterfaceVariant.SupplierTrans := SupplierTrans;
end;

function TWinbooksObjectProperties.Get_AccountTrans: _Transactions;
begin
  Result := DefaultInterface.AccountTrans;
end;

procedure TWinbooksObjectProperties._Set_AccountTrans(const AccountTrans: _Transactions);
{ Warning: The property AccountTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant              := DefaultInterface;
  InterfaceVariant.AccountTrans := AccountTrans;
end;

function TWinbooksObjectProperties.Get_AnalyticalTrans: _Analytiques;
begin
  Result := DefaultInterface.AnalyticalTrans;
end;

procedure TWinbooksObjectProperties._Set_AnalyticalTrans(const AnalyticalTrans: _Analytiques);
{ Warning: The property AnalyticalTrans has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                 := DefaultInterface;
  InterfaceVariant.AnalyticalTrans := AnalyticalTrans;
end;

function TWinbooksObjectProperties.Get_Tables: _Tables;
begin
  Result := DefaultInterface.Tables;
end;

procedure TWinbooksObjectProperties._Set_Tables(const Tables: _Tables);
{ Warning: The property Tables has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Tables := Tables;
end;

function TWinbooksObjectProperties.Get_Import: _Import;
begin
  Result := DefaultInterface.Import;
end;

procedure TWinbooksObjectProperties._Set_Import(const Import: _Import);
{ Warning: The property Import has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Import := Import;
end;

function TWinbooksObjectProperties.Get_BookYear: _BookYears;
begin
  Result := DefaultInterface.BookYear;
end;

procedure TWinbooksObjectProperties._Set_BookYear(const BookYear: _BookYears);
{ Warning: The property BookYear has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant          := DefaultInterface;
  InterfaceVariant.BookYear := BookYear;
end;

function TWinbooksObjectProperties.Get_Options: _Options;
begin
  Result := DefaultInterface.Options;
end;

procedure TWinbooksObjectProperties._Set_Options(const Options: _Options);
{ Warning: The property Options has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.Options := Options;
end;

function TWinbooksObjectProperties.Get_Sql: _SqlClass;
begin
  Result := DefaultInterface.Sql;
end;

procedure TWinbooksObjectProperties._Set_Sql(const Sql: _SqlClass);
{ Warning: The property Sql has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant     := DefaultInterface;
  InterfaceVariant.Sql := Sql;
end;

function TWinbooksObjectProperties.Get_Param: _Param;
begin
  Result := DefaultInterface.Param;
end;

procedure TWinbooksObjectProperties._Set_Param(const Param: _Param);
{ Warning: The property Param has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Param := Param;
end;

function TWinbooksObjectProperties.Get_Utilities: _WbApiUtilities;
begin
  Result := DefaultInterface.Utilities;
end;

procedure TWinbooksObjectProperties._Set_Utilities(const Utilities: _WbApiUtilities);
{ Warning: The property Utilities has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Utilities := Utilities;
end;

function TWinbooksObjectProperties.Get_Companies: _Dossiers;
begin
  Result := DefaultInterface.Companies;
end;

procedure TWinbooksObjectProperties._Set_Companies(const Companies: _Dossiers);
{ Warning: The property Companies has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.Companies := Companies;
end;

function TWinbooksObjectProperties.Get_LastErrorMessage: WideString;
begin
  Result := DefaultInterface.LastErrorMessage;
end;

procedure TWinbooksObjectProperties.Set_ActiveLanguage(Param1: LanguageDll);
begin
  DefaultInterface.Set_ActiveLanguage(Param1);
end;

procedure TWinbooksObjectProperties.Set_SetPath(const Param1: WideString);
{ Warning: The property SetPath has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant         := DefaultInterface;
  InterfaceVariant.SetPath := Param1;
end;

function TWinbooksObjectProperties.Get_Version: WideString;
begin
  Result := DefaultInterface.Version;
end;

procedure TWinbooksObjectProperties.Set_GetEncryptionPwd(const Param1: WideString);
{ Warning: The property GetEncryptionPwd has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                  := DefaultInterface;
  InterfaceVariant.GetEncryptionPwd := Param1;
end;

function TWinbooksObjectProperties.Get_IsFullAccess: WordBool;
begin
  Result := DefaultInterface.IsFullAccess;
end;

{$ENDIF}

class function CoParam.Create: _Param;
begin
  Result := CreateComObject(CLASS_Param) as _Param;
end;

class function CoParam.CreateRemote(const MachineName: string): _Param;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Param) as _Param;
end;

procedure TParam.InitServerData;
const
  CServerData: TServerData = (ClassID: '{BEEA7825-9F20-4A2F-B0D8-64ADC5E450CD}'; IntfIID: '{FAB874C8-E379-4AB3-AA5E-7CCC088B2160}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TParam.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Param;
  end;
end;

procedure TParam.ConnectTo(svrIntf: _Param);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TParam.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TParam.GetDefaultInterface: _Param;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TParam.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TParamProperties.Create(Self);
{$ENDIF}
end;

destructor TParam.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TParam.GetServerProperties: TParamProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TParam.Get_BookYears: _BookYears;
begin
  Result := DefaultInterface.BookYears;
end;

procedure TParam._Set_BookYears(const BookYears: _BookYears);
{ Warning: The property BookYears has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.BookYears := BookYears;
end;

function TParam.Get_ShortName: WideString;
begin
  Result := DefaultInterface.ShortName;
end;

function TParam.Get_PathName: WideString;
begin
  Result := DefaultInterface.PathName;
end;

function TParam.Get_PathExcel: WideString;
begin
  Result := DefaultInterface.PathExcel;
end;

function TParam.Get_CurrentBookYearNumber: Smallint;
begin
  Result := DefaultInterface.CurrentBookYearNumber;
end;

function TParam.Get_CurrentBookYearNumBis(const ExName: WideString): Smallint;
begin
  Result := DefaultInterface.CurrentBookYearNumBis[ExName];
end;

function TParam.Get_Value(const ParamName: WideString): WideString;
begin
  Result := DefaultInterface.Value[ParamName];
end;

function TParam.GetParamValue(const StrID: WideString): WideString;
begin
  Result := DefaultInterface.GetParamValue(StrID);
end;

function TParam.VATInternalCode(const CodeUser: WideString; const CliFou: WideString; var Langue: WideString): WideString;
begin
  Result := DefaultInterface.VATInternalCode(CodeUser, CliFou, Langue);
end;

function TParam.PeriodInternalCode(ccDate: TDateTime): WideString;
begin
  Result := DefaultInterface.PeriodInternalCode(ccDate);
end;

function TParam.IsFolderOpen: WordBool;
begin
  Result := DefaultInterface.IsFolderOpen;
end;

function TParam.IsNetwork: WideString;
begin
  Result := DefaultInterface.IsNetwork;
end;

function TParam.IsAsset: WordBool;
begin
  Result := DefaultInterface.IsAsset;
end;

function TParam.VatRate(const InternCodeVat: WideString): OleVariant;
begin
  Result := DefaultInterface.VatRate(InternCodeVat);
end;

function TParam.VatAcc1(const InternCodeVat: WideString): WideString;
begin
  Result := DefaultInterface.VatAcc1(InternCodeVat);
end;

function TParam.VatAcc2(const InternCodeVat: WideString): WideString;
begin
  Result := DefaultInterface.VatAcc2(InternCodeVat);
end;

function TParam.VATExternalCode(const InternalCode: WideString; lLanguage: LangueforVat): OleVariant;
begin
  Result := DefaultInterface.VATExternalCode(InternalCode, lLanguage);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TParamProperties.Create(AServer: TParam);
begin
  inherited Create;
  FServer := AServer;
end;

function TParamProperties.GetDefaultInterface: _Param;
begin
  Result := FServer.DefaultInterface;
end;

function TParamProperties.Get_BookYears: _BookYears;
begin
  Result := DefaultInterface.BookYears;
end;

procedure TParamProperties._Set_BookYears(const BookYears: _BookYears);
{ Warning: The property BookYears has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant           := DefaultInterface;
  InterfaceVariant.BookYears := BookYears;
end;

function TParamProperties.Get_ShortName: WideString;
begin
  Result := DefaultInterface.ShortName;
end;

function TParamProperties.Get_PathName: WideString;
begin
  Result := DefaultInterface.PathName;
end;

function TParamProperties.Get_PathExcel: WideString;
begin
  Result := DefaultInterface.PathExcel;
end;

function TParamProperties.Get_CurrentBookYearNumber: Smallint;
begin
  Result := DefaultInterface.CurrentBookYearNumber;
end;

function TParamProperties.Get_CurrentBookYearNumBis(const ExName: WideString): Smallint;
begin
  Result := DefaultInterface.CurrentBookYearNumBis[ExName];
end;

function TParamProperties.Get_Value(const ParamName: WideString): WideString;
begin
  Result := DefaultInterface.Value[ParamName];
end;

{$ENDIF}

class function CoTransactions.Create: _Transactions;
begin
  Result := CreateComObject(CLASS_Transactions) as _Transactions;
end;

class function CoTransactions.CreateRemote(const MachineName: string): _Transactions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Transactions) as _Transactions;
end;

procedure TTransactions.InitServerData;
const
  CServerData: TServerData = (ClassID: '{3EFFC1A5-6784-471E-B92B-72A2AD941286}'; IntfIID: '{36B3C7F9-AEFA-407D-B52B-FEDCB7DC2553}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTransactions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Transactions;
  end;
end;

procedure TTransactions.ConnectTo(svrIntf: _Transactions);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTransactions.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTransactions.GetDefaultInterface: _Transactions;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTransactions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTransactionsProperties.Create(Self);
{$ENDIF}
end;

destructor TTransactions.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TTransactions.GetServerProperties: TTransactionsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTransactions.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TTransactions._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TTransactions.Get_WithMatched: WordBool;
begin
  Result := DefaultInterface.WithMatched;
end;

procedure TTransactions.Set_WithMatched(Param1: WordBool);
begin
  DefaultInterface.Set_WithMatched(Param1);
end;

function TTransactions.Get_CategoryFilter: WideString;
begin
  Result := DefaultInterface.CategoryFilter;
end;

procedure TTransactions.Set_CategoryFilter(const Param1: WideString);
{ Warning: The property CategoryFilter has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                := DefaultInterface;
  InterfaceVariant.CategoryFilter := Param1;
end;

function TTransactions.Get_PeriodRange: WideString;
begin
  Result := DefaultInterface.PeriodRange;
end;

procedure TTransactions.Set_PeriodRange(const Param1: WideString);
{ Warning: The property PeriodRange has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodRange := Param1;
end;

procedure TTransactions.Set_YearTransaction(const Param1: WideString);
{ Warning: The property YearTransaction has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                 := DefaultInterface;
  InterfaceVariant.YearTransaction := Param1;
end;

function TTransactions.Get_CalcSum: WordBool;
begin
  Result := DefaultInterface.CalcSum;
end;

procedure TTransactions.Set_CalcSum(var Param1: WordBool);
begin
  DefaultInterface.Set_CalcSum(Param1);
end;

function TTransactions.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TTransactions.Set_SortOrder(var Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

function TTransactions.Item(const Range: WideString): _Transaction;
begin
  Result := DefaultInterface.Item(Range);
end;

function TTransactions.GetPathOfactFile: WideString;
begin
  Result := DefaultInterface.GetPathOfactFile;
end;

function TTransactions.GetThePathofExisintFile: WideString;
begin
  Result := DefaultInterface.GetThePathofExisintFile;
end;

function TTransactions.PrecCalcACT(var TypeChoice: Byte; var Obj: IDispatch): WordBool;
begin
  Result := DefaultInterface.PrecCalcACT(TypeChoice, Obj);
end;

function TTransactions.IsFileTotPerExist: WordBool;
begin
  Result := DefaultInterface.IsFileTotPerExist;
end;

function TTransactions.WichAccount(const Account: WideString; var ty: Smallint): _Transaction;
begin
  Result := DefaultInterface.WichAccount(Account, ty);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TTransactionsProperties.Create(AServer: TTransactions);
begin
  inherited Create;
  FServer := AServer;
end;

function TTransactionsProperties.GetDefaultInterface: _Transactions;
begin
  Result := FServer.DefaultInterface;
end;

function TTransactionsProperties.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TTransactionsProperties._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TTransactionsProperties.Get_WithMatched: WordBool;
begin
  Result := DefaultInterface.WithMatched;
end;

procedure TTransactionsProperties.Set_WithMatched(Param1: WordBool);
begin
  DefaultInterface.Set_WithMatched(Param1);
end;

function TTransactionsProperties.Get_CategoryFilter: WideString;
begin
  Result := DefaultInterface.CategoryFilter;
end;

procedure TTransactionsProperties.Set_CategoryFilter(const Param1: WideString);
{ Warning: The property CategoryFilter has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                := DefaultInterface;
  InterfaceVariant.CategoryFilter := Param1;
end;

function TTransactionsProperties.Get_PeriodRange: WideString;
begin
  Result := DefaultInterface.PeriodRange;
end;

procedure TTransactionsProperties.Set_PeriodRange(const Param1: WideString);
{ Warning: The property PeriodRange has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodRange := Param1;
end;

procedure TTransactionsProperties.Set_YearTransaction(const Param1: WideString);
{ Warning: The property YearTransaction has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                 := DefaultInterface;
  InterfaceVariant.YearTransaction := Param1;
end;

function TTransactionsProperties.Get_CalcSum: WordBool;
begin
  Result := DefaultInterface.CalcSum;
end;

procedure TTransactionsProperties.Set_CalcSum(var Param1: WordBool);
begin
  DefaultInterface.Set_CalcSum(Param1);
end;

function TTransactionsProperties.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TTransactionsProperties.Set_SortOrder(var Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

{$ENDIF}

class function CoAnalytiques.Create: _Analytiques;
begin
  Result := CreateComObject(CLASS_Analytiques) as _Analytiques;
end;

class function CoAnalytiques.CreateRemote(const MachineName: string): _Analytiques;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Analytiques) as _Analytiques;
end;

procedure TAnalytiques.InitServerData;
const
  CServerData: TServerData = (ClassID: '{EDC584A4-AB62-4BAB-94CF-13BC7D350961}'; IntfIID: '{72E29583-AE9F-41C8-8A52-7D02AACD690B}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAnalytiques.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Analytiques;
  end;
end;

procedure TAnalytiques.ConnectTo(svrIntf: _Analytiques);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAnalytiques.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAnalytiques.GetDefaultInterface: _Analytiques;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAnalytiques.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAnalytiquesProperties.Create(Self);
{$ENDIF}
end;

destructor TAnalytiques.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TAnalytiques.GetServerProperties: TAnalytiquesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAnalytiques.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TAnalytiques._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TAnalytiques.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TAnalytiques.Set_SortOrder(Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

function TAnalytiques.Get_OnlyBooked: WordBool;
begin
  Result := DefaultInterface.OnlyBooked;
end;

procedure TAnalytiques.Set_OnlyBooked(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyBooked(Param1);
end;

procedure TAnalytiques.Set_PeriodRange(const Param1: WideString);
{ Warning: The property PeriodRange has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodRange := Param1;
end;

function TAnalytiques.Item(const Range: WideString): _AnaLytique;
begin
  Result := DefaultInterface.Item(Range);
end;

function TAnalytiques.Wichplan(strindex: Smallint): _AnaLytique;
begin
  Result := DefaultInterface.Wichplan(strindex);
end;

function TAnalytiques.WichSectionPlan(const Section: WideString; const Plan: WideString): _AnaLytique;
begin
  Result := DefaultInterface.WichSectionPlan(Section, Plan);
end;

function TAnalytiques.FromWichNumber(const tipe: WideString): OleVariant;
begin
  Result := DefaultInterface.FromWichNumber(tipe);
end;

function TAnalytiques.FromWichAccount: OleVariant;
begin
  Result := DefaultInterface.FromWichAccount;
end;

function TAnalytiques.EnumCategory: OleVariant;
begin
  Result := DefaultInterface.EnumCategory;
end;

function TAnalytiques.FromPeriods: OleVariant;
begin
  Result := DefaultInterface.FromPeriods;
end;

function TAnalytiques.BalanceCum(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
  var StartaccountG: WideString; var EndAccountG: WideString; var TypeOfbal: Byte): Currency;
begin
  Result := DefaultInterface.BalanceCum(PlanAna, Periode, StartAccount, EndAccount, StartaccountG, EndAccountG, TypeOfbal);
end;

function TAnalytiques.BalancePerEx(var PlanAna: WideString; var Periode: WideString; var StartAccount: WideString; var EndAccount: WideString;
  var StartaccountG: WideString; var EndAccountG: WideString; var PlanAna2: WideString; var StartAccount2: WideString; var EndAccount2: WideString;
  var TypeOfbal: Byte): Currency;
begin
  Result := DefaultInterface.BalancePerEx(PlanAna, Periode, StartAccount, EndAccount, StartaccountG, EndAccountG, PlanAna2, StartAccount2, EndAccount2,
    TypeOfbal);
end;

procedure TAnalytiques.ExportListeOfAnalyticalPlan(SectionAna: Smallint; var StartAccount: WideString; var EndAccount: WideString; var Category: WideString);
begin
  DefaultInterface.ExportListeOfAnalyticalPlan(SectionAna, StartAccount, EndAccount, Category);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TAnalytiquesProperties.Create(AServer: TAnalytiques);
begin
  inherited Create;
  FServer := AServer;
end;

function TAnalytiquesProperties.GetDefaultInterface: _Analytiques;
begin
  Result := FServer.DefaultInterface;
end;

function TAnalytiquesProperties.Get_Fields: _Fields;
begin
  Result := DefaultInterface.Fields;
end;

procedure TAnalytiquesProperties._Set_Fields(const Fields: _Fields);
{ Warning: The property Fields has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant        := DefaultInterface;
  InterfaceVariant.Fields := Fields;
end;

function TAnalytiquesProperties.Get_SortOrder: Smallint;
begin
  Result := DefaultInterface.SortOrder;
end;

procedure TAnalytiquesProperties.Set_SortOrder(Param1: Smallint);
begin
  DefaultInterface.Set_SortOrder(Param1);
end;

function TAnalytiquesProperties.Get_OnlyBooked: WordBool;
begin
  Result := DefaultInterface.OnlyBooked;
end;

procedure TAnalytiquesProperties.Set_OnlyBooked(Param1: WordBool);
begin
  DefaultInterface.Set_OnlyBooked(Param1);
end;

procedure TAnalytiquesProperties.Set_PeriodRange(const Param1: WideString);
{ Warning: The property PeriodRange has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant             := DefaultInterface;
  InterfaceVariant.PeriodRange := Param1;
end;

{$ENDIF}

class function CoTransaction.Create: _Transaction;
begin
  Result := CreateComObject(CLASS_Transaction) as _Transaction;
end;

class function CoTransaction.CreateRemote(const MachineName: string): _Transaction;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Transaction) as _Transaction;
end;

procedure TTransaction.InitServerData;
const
  CServerData: TServerData = (ClassID: '{DCCB2DE6-FA2A-430D-A79D-F79B258FF15A}'; IntfIID: '{04261072-CDDD-4655-BD4E-D79C36F1A776}'; EventIID: '';
    LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTransaction.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk  := GetServer;
    FIntf := punk as _Transaction;
  end;
end;

procedure TTransaction.ConnectTo(svrIntf: _Transaction);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTransaction.Disconnect;
begin
  if FIntf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTransaction.GetDefaultInterface: _Transaction;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTransaction.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTransactionProperties.Create(Self);
{$ENDIF}
end;

destructor TTransaction.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TTransaction.GetServerProperties: TTransactionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTransaction.Get_ListCount: Integer;
begin
  Result := DefaultInterface.ListCount;
end;

function TTransaction.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

procedure TTransaction.InitializeCancel;
begin
  DefaultInterface.InitializeCancel;
end;

procedure TTransaction.CancelOperation;
begin
  DefaultInterface.CancelOperation;
end;

procedure TTransaction.InitializeCallBack(var ObjCallBack: IDispatch);
begin
  DefaultInterface.InitializeCallBack(ObjCallBack);
end;

procedure TTransaction.ExportXL;
begin
  DefaultInterface.ExportXL;
end;

procedure TTransaction.ExportExcelWithReport;
begin
  DefaultInterface.ExportExcelWithReport;
end;

function TTransaction.FastBalance: OleVariant;
begin
  Result := DefaultInterface.FastBalance;
end;

function TTransaction.Balance: OleVariant;
begin
  Result := DefaultInterface.Balance;
end;

function TTransaction.Turnover: OleVariant;
begin
  Result := DefaultInterface.Turnover;
end;

function TTransaction.TurnoverAcc: OleVariant;
begin
  Result := DefaultInterface.TurnoverAcc;
end;

function TTransaction.BalanceCur: OleVariant;
begin
  Result := DefaultInterface.BalanceCur;
end;

function TTransaction.CliFouBalCur: Currency;
begin
  Result := DefaultInterface.CliFouBalCur;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TTransactionProperties.Create(AServer: TTransaction);
begin
  inherited Create;
  FServer := AServer;
end;

function TTransactionProperties.GetDefaultInterface: _Transaction;
begin
  Result := FServer.DefaultInterface;
end;

function TTransactionProperties.Get_ListCount: Integer;
begin
  Result := DefaultInterface.ListCount;
end;

function TTransactionProperties.Get_FieldValue(const FieldNameorNum: WideString): OleVariant;
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result           := InterfaceVariant.FieldValue[FieldNameorNum];
end;

{$ENDIF}

class function CoSqlClass.Create: _SqlClass;
begin
  Result := CreateComObject(CLASS_SqlClass) as _SqlClass;
end;

class function CoSqlClass.CreateRemote(const MachineName: string): _SqlClass;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SqlClass) as _SqlClass;
end;

procedure TSqlClass.InitServerData;
const
  CServerData: TServerData = (ClassID: '{CEA217D2-2E26-4E20-A7E4-094A55E3C421}'; IntfIID: '{53B092BD-10D4-4F44-B8C4-8137951306D3}';
    EventIID: '{22157BF3-9288-4011-BF76-7A3E4B8AD5CA}'; LicenseKey: nil; Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSqlClass.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    FIntf := punk as _SqlClass;
  end;
end;

procedure TSqlClass.ConnectTo(svrIntf: _SqlClass);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TSqlClass.Disconnect;
begin
  if FIntf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TSqlClass.GetDefaultInterface: _SqlClass;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSqlClass.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSqlClassProperties.Create(Self);
{$ENDIF}
end;

destructor TSqlClass.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

function TSqlClass.GetServerProperties: TSqlClassProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TSqlClass.InvokeEvent(dispid: TDispID; var Params: TVariantArray);
begin
  case dispid of
    - 1:
      Exit; // DISPID_UNKNOWN
    1:
      if Assigned(FOnExecute) then
        FOnExecute(Self, Params[0] { Double } , WordBool((TVarData(Params[1]).VPointer)^) { var WordBool } );
    2:
      if Assigned(FOnFillOutputFile) then
        FOnFillOutputFile(Self, Params[0] { Integer } , Params[1] { Integer } , WordBool((TVarData(Params[2]).VPointer)^) { var WordBool } );
  end; { case DispID }
end;

function TSqlClass.Get_Error: _SqlError;
begin
  Result := DefaultInterface.Error;
end;

procedure TSqlClass._Set_Error(const Error: _SqlError);
{ Warning: The property Error has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Error := Error;
end;

procedure TSqlClass.Set_OutputFileFormat(Param1: FileType);
begin
  DefaultInterface.Set_OutputFileFormat(Param1);
end;

procedure TSqlClass.Set_OutputFileName(const Param1: WideString);
{ Warning: The property OutputFileName has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                := DefaultInterface;
  InterfaceVariant.OutputFileName := Param1;
end;

procedure TSqlClass.Set_OutputFileMode(Param1: MODE);
begin
  DefaultInterface.Set_OutputFileMode(Param1);
end;

function TSqlClass.Get_GetExecutionTime: Double;
begin
  Result := DefaultInterface.GetExecutionTime;
end;

function TSqlClass.Get_LastQueryRecCount: Integer;
begin
  Result := DefaultInterface.LastQueryRecCount;
end;

procedure TSqlClass.Initialize;
begin
  DefaultInterface.Initialize;
end;

function TSqlClass.WbSqlFunction(const QueryStatement: WideString; var WithCallBack: WordBool): OleVariant;
begin
  Result := DefaultInterface.WbSqlFunction(QueryStatement, WithCallBack);
end;

function TSqlClass.ExecuteSqlQuery(const QueryStatement: WideString; var WithCallBack: WordBool): Smallint;
begin
  Result := DefaultInterface.ExecuteSqlQuery(QueryStatement, WithCallBack);
end;

function TSqlClass.WanTotCallBack: WordBool;
begin
  Result := DefaultInterface.WanTotCallBack;
end;

function TSqlClass.ValidateQueryStatement(SqlStatement: OleVariant): WordBool;
begin
  Result := DefaultInterface.ValidateQueryStatement(SqlStatement);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}

constructor TSqlClassProperties.Create(AServer: TSqlClass);
begin
  inherited Create;
  FServer := AServer;
end;

function TSqlClassProperties.GetDefaultInterface: _SqlClass;
begin
  Result := FServer.DefaultInterface;
end;

function TSqlClassProperties.Get_Error: _SqlError;
begin
  Result := DefaultInterface.Error;
end;

procedure TSqlClassProperties._Set_Error(const Error: _SqlError);
{ Warning: The property Error has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant       := DefaultInterface;
  InterfaceVariant.Error := Error;
end;

procedure TSqlClassProperties.Set_OutputFileFormat(Param1: FileType);
begin
  DefaultInterface.Set_OutputFileFormat(Param1);
end;

procedure TSqlClassProperties.Set_OutputFileName(const Param1: WideString);
{ Warning: The property OutputFileName has a setter and a getter whose
  types do not match. Delphi was unable to generate a property of
  this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant                := DefaultInterface;
  InterfaceVariant.OutputFileName := Param1;
end;

procedure TSqlClassProperties.Set_OutputFileMode(Param1: MODE);
begin
  DefaultInterface.Set_OutputFileMode(Param1);
end;

function TSqlClassProperties.Get_GetExecutionTime: Double;
begin
  Result := DefaultInterface.GetExecutionTime;
end;

function TSqlClassProperties.Get_LastQueryRecCount: Integer;
begin
  Result := DefaultInterface.LastQueryRecCount;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TFieldDef, TPeriods, TFatalErrors, TFatalError, TWarnings, TQueries, TTablesUser, TTables, TWarning, TErrorCodes, TFields,
    TBookYears, TBookYear, TPeriod, TSocAnalyticalParam, TErrorCode, TImport, TDbClassApi, TCompte, TTableUser, TComptes, TDossier, TOptions, TField,
    TAnaLytique, TWbApiUtilities, TSqlError, TUser, TDossiers, TApiIni, TWinbooksObject, TParam, TTransactions, TAnalytiques, TTransaction, TSqlClass]);
end;

end.
