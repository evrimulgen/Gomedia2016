// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://service.cld.be:4433/esd.asmx?WSDL
//  >Import : https://service.cld.be:4433/esd.asmx?WSDL>0
//  >Import : https://service.cld.be:4433/esd.asmx?WSDL>1
// Encoding : utf-8
// Version  : 1.0
// (04-10-15 16:43:25 - - $Rev: 70145 $)
// ************************************************************************ //

unit esd;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  ESDGetCatalogStatus2 = class;                 { "http://service.cld.be/"[GblCplx] }
  ESDGetCatalogStatus  = class;                 { "http://service.cld.be/"[GblElm] }
  ESDTokenReturnStatus2 = class;                { "http://service.cld.be/"[GblCplx] }
  ESDTokenReturnStatus = class;                 { "http://service.cld.be/"[GblElm] }
  ESDTokenStatus2      = class;                 { "http://service.cld.be/"[GblCplx] }
  ESDTokenStatus       = class;                 { "http://service.cld.be/"[GblElm] }
  ESDAuth2             = class;                 { "http://service.cld.be/"[GblCplx] }
  ESDAuth              = class;                 { "http://service.cld.be/"[GblElm] }
  ESDLink2             = class;                 { "http://service.cld.be/"[GblCplx] }
  ESDLink              = class;                 { "http://service.cld.be/"[GblElm] }
  ESDToken             = class;                 { "http://service.cld.be/"[GblCplx] }

  boolean_        =  type Boolean;      { "http://service.cld.be/"[GblElm] }


  // ************************************************************************ //
  // XML       : ESDGetCatalogStatus, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDGetCatalogStatus2 = class(TRemotable)
  private
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
  published
    property comment: string   Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:  Integer  read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : ESDGetCatalogStatus, global, <element>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDGetCatalogStatus = class(ESDGetCatalogStatus2)
  private
  published
  end;

  guid            =  type string;      { "http://microsoft.com/wsdl/types/"[GblSmpl] }


  // ************************************************************************ //
  // XML       : ESDTokenReturnStatus, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDTokenReturnStatus2 = class(TRemotable)
  private
    FUniqueId: guid;
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    Fid: string;
    Fid_Specified: boolean;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
  published
    property UniqueId: guid     read FUniqueId write FUniqueId;
    property comment:  string   Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:   Integer  read Fstatus write Fstatus;
    property id:       string   Index (IS_OPTN) read Fid write Setid stored id_Specified;
  end;



  // ************************************************************************ //
  // XML       : ESDTokenReturnStatus, global, <element>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDTokenReturnStatus = class(ESDTokenReturnStatus2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ESDTokenStatus, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDTokenStatus2 = class(TRemotable)
  private
    FUniqueId: guid;
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    Flastupdate: TXSDateTime;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UniqueId:   guid         read FUniqueId write FUniqueId;
    property comment:    string       Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:     Integer      read Fstatus write Fstatus;
    property lastupdate: TXSDateTime  read Flastupdate write Flastupdate;
  end;



  // ************************************************************************ //
  // XML       : ESDTokenStatus, global, <element>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDTokenStatus = class(ESDTokenStatus2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ESDAuth, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDAuth2 = class(TRemotable)
  private
    FUniqueId: guid;
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
  published
    property UniqueId: guid     read FUniqueId write FUniqueId;
    property comment:  string   Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:   Integer  read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : ESDAuth, global, <element>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDAuth = class(ESDAuth2)
  private
  published
  end;

  string_         =  type string;      { "http://service.cld.be/"[GblElm] }


  // ************************************************************************ //
  // XML       : ESDLink, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDLink2 = class(TRemotable)
  private
    FUniqueId: guid;
    Flink: string;
    Flink_Specified: boolean;
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    procedure Setlink(Index: Integer; const Astring: string);
    function  link_Specified(Index: Integer): boolean;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
  published
    property UniqueId: guid     read FUniqueId write FUniqueId;
    property link:     string   Index (IS_OPTN) read Flink write Setlink stored link_Specified;
    property comment:  string   Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:   Integer  read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : ESDLink, global, <element>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDLink = class(ESDLink2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ESDToken, global, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ESDToken = class(TRemotable)
  private
    Ftoken: string;
    Ftoken_Specified: boolean;
    Flink: string;
    Flink_Specified: boolean;
    Fcomment: string;
    Fcomment_Specified: boolean;
    Fstatus: Integer;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
    procedure Setlink(Index: Integer; const Astring: string);
    function  link_Specified(Index: Integer): boolean;
    procedure Setcomment(Index: Integer; const Astring: string);
    function  comment_Specified(Index: Integer): boolean;
  published
    property token:   string   Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
    property link:    string   Index (IS_OPTN) read Flink write Setlink stored link_Specified;
    property comment: string   Index (IS_OPTN) read Fcomment write Setcomment stored comment_Specified;
    property status:  Integer  read Fstatus write Fstatus;
  end;


  // ************************************************************************ //
  // Namespace : http://service.cld.be/
  // soapAction: http://service.cld.be/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : EsdSoap
  // service   : Esd
  // port      : EsdSoap
  // URL       : https://service.cld.be:4433/esd.asmx
  // ************************************************************************ //
  EsdSoap = interface(IInvokable)
  ['{1AEDE539-EBCB-AF4C-42F8-2C08F1B5BC83}']
    function  Identify(const username: string; const password: string): Boolean; stdcall;
    function  HelloWorld: string; stdcall;
    function  Booktoken(const EAN: string; const POID: string; const StoreID: string; const forcemssku: Boolean): ESDAuth2; stdcall;
    function  Requesttoken(const UniqueId: guid): ESDToken; stdcall;
    function  Refreshlink(const EAN: string; const forcesku: Boolean): ESDLink2; stdcall;
    function  GetCatalog(const agency: Boolean): ESDGetCatalogStatus2; stdcall;
    function  Checkstatus(const token: string): ESDTokenStatus2; stdcall;
    function  ReturnToken(const token: string; const POID: string): ESDTokenReturnStatus2; stdcall;
    function  RequestPastCode(const SKU: string; const sales_id: string): string; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://service.cld.be/
  // style     : ????
  // use       : ????
  // binding   : EsdHttpGet
  // service   : Esd
  // port      : EsdHttpGet
  // ************************************************************************ //
  EsdHttpGet = interface(IInvokable)
  ['{FF25B6A9-B5A0-2C45-AD62-4C5F0C4DAA5A}']
    function  Identify(const username: string; const password: string): boolean_; stdcall;
    function  HelloWorld: string_; stdcall;
    function  Booktoken(const EAN: string; const POID: string; const StoreID: string; const forcemssku: string): ESDAuth; stdcall;
    function  Refreshlink(const EAN: string; const forcesku: string): ESDLink; stdcall;
    function  GetCatalog(const agency: string): ESDGetCatalogStatus; stdcall;
    function  Checkstatus(const token: string): ESDTokenStatus; stdcall;
    function  ReturnToken(const token: string; const POID: string): ESDTokenReturnStatus; stdcall;
    function  RequestPastCode(const SKU: string; const sales_id: string): string_; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : http://service.cld.be/
  // style     : ????
  // use       : ????
  // binding   : EsdHttpPost
  // service   : Esd
  // port      : EsdHttpPost
  // ************************************************************************ //
  EsdHttpPost = interface(IInvokable)
  ['{3DF09F02-FC0B-5207-3159-0B37A235288C}']
    function  Identify(const username: string; const password: string): boolean_; stdcall;
    function  HelloWorld: string_; stdcall;
    function  Booktoken(const EAN: string; const POID: string; const StoreID: string; const forcemssku: string): ESDAuth; stdcall;
    function  Refreshlink(const EAN: string; const forcesku: string): ESDLink; stdcall;
    function  GetCatalog(const agency: string): ESDGetCatalogStatus; stdcall;
    function  Checkstatus(const token: string): ESDTokenStatus; stdcall;
    function  ReturnToken(const token: string; const POID: string): ESDTokenReturnStatus; stdcall;
    function  RequestPastCode(const SKU: string; const sales_id: string): string_; stdcall;
  end;

function GetEsdSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EsdSoap;
function GetEsdHttpGet(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EsdHttpGet;
function GetEsdHttpPost(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EsdHttpPost;


implementation
  uses System.SysUtils;

function GetEsdSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EsdSoap;
const
  defWSDL = 'https://service.cld.be:4433/esd.asmx?WSDL';
  defURL  = 'https://service.cld.be:4433/esd.asmx';
  defSvc  = 'Esd';
  defPrt  = 'EsdSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as EsdSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetEsdHttpGet(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EsdHttpGet;
const
  defWSDL = 'https://service.cld.be:4433/esd.asmx?WSDL';
  defURL  = '';
  defSvc  = 'Esd';
  defPrt  = 'EsdHttpGet';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as EsdHttpGet);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetEsdHttpPost(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EsdHttpPost;
const
  defWSDL = 'https://service.cld.be:4433/esd.asmx?WSDL';
  defURL  = '';
  defSvc  = 'Esd';
  defPrt  = 'EsdHttpPost';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as EsdHttpPost);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure ESDGetCatalogStatus2.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDGetCatalogStatus2.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure ESDTokenReturnStatus2.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDTokenReturnStatus2.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure ESDTokenReturnStatus2.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function ESDTokenReturnStatus2.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

destructor ESDTokenStatus2.Destroy;
begin
  System.SysUtils.FreeAndNil(Flastupdate);
  inherited Destroy;
end;

procedure ESDTokenStatus2.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDTokenStatus2.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure ESDAuth2.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDAuth2.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure ESDLink2.Setlink(Index: Integer; const Astring: string);
begin
  Flink := Astring;
  Flink_Specified := True;
end;

function ESDLink2.link_Specified(Index: Integer): boolean;
begin
  Result := Flink_Specified;
end;

procedure ESDLink2.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDLink2.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

procedure ESDToken.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function ESDToken.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

procedure ESDToken.Setlink(Index: Integer; const Astring: string);
begin
  Flink := Astring;
  Flink_Specified := True;
end;

function ESDToken.link_Specified(Index: Integer): boolean;
begin
  Result := Flink_Specified;
end;

procedure ESDToken.Setcomment(Index: Integer; const Astring: string);
begin
  Fcomment := Astring;
  Fcomment_Specified := True;
end;

function ESDToken.comment_Specified(Index: Integer): boolean;
begin
  Result := Fcomment_Specified;
end;

initialization
  { EsdSoap }
  InvRegistry.RegisterInterface(TypeInfo(EsdSoap), 'http://service.cld.be/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EsdSoap), 'http://service.cld.be/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(EsdSoap), ioDocument);
  { EsdSoap.Identify }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'Identify', '',
                                 '[ReturnName="IdentifyResult"]');
  { EsdSoap.HelloWorld }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'HelloWorld', '',
                                 '[ReturnName="HelloWorldResult"]', IS_OPTN);
  { EsdSoap.Booktoken }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'Booktoken', '',
                                 '[ReturnName="BooktokenResult"]', IS_OPTN);
  { EsdSoap.Requesttoken }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'Requesttoken', '',
                                 '[ReturnName="RequesttokenResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EsdSoap), 'Requesttoken', 'UniqueId', '',
                                '[Namespace="http://microsoft.com/wsdl/types/"]');
  { EsdSoap.Refreshlink }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'Refreshlink', '',
                                 '[ReturnName="RefreshlinkResult"]', IS_OPTN);
  { EsdSoap.GetCatalog }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'GetCatalog', '',
                                 '[ReturnName="GetCatalogResult"]', IS_OPTN);
  { EsdSoap.Checkstatus }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'Checkstatus', '',
                                 '[ReturnName="CheckstatusResult"]', IS_OPTN);
  { EsdSoap.ReturnToken }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'ReturnToken', '',
                                 '[ReturnName="ReturnTokenResult"]', IS_OPTN);
  { EsdSoap.RequestPastCode }
  InvRegistry.RegisterMethodInfo(TypeInfo(EsdSoap), 'RequestPastCode', '',
                                 '[ReturnName="RequestPastCodeResult"]', IS_OPTN);
  { EsdHttpGet }
  InvRegistry.RegisterInterface(TypeInfo(EsdHttpGet), 'http://service.cld.be/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EsdHttpGet), '');
  { EsdHttpPost }
  InvRegistry.RegisterInterface(TypeInfo(EsdHttpPost), 'http://service.cld.be/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EsdHttpPost), '');
  RemClassRegistry.RegisterXSInfo(TypeInfo(boolean_), 'http://service.cld.be/', 'boolean_', 'boolean');
  RemClassRegistry.RegisterXSClass(ESDGetCatalogStatus2, 'http://service.cld.be/', 'ESDGetCatalogStatus2', 'ESDGetCatalogStatus');
  RemClassRegistry.RegisterXSClass(ESDGetCatalogStatus, 'http://service.cld.be/', 'ESDGetCatalogStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(guid), 'http://microsoft.com/wsdl/types/', 'guid');
  RemClassRegistry.RegisterXSClass(ESDTokenReturnStatus2, 'http://service.cld.be/', 'ESDTokenReturnStatus2', 'ESDTokenReturnStatus');
  RemClassRegistry.RegisterXSClass(ESDTokenReturnStatus, 'http://service.cld.be/', 'ESDTokenReturnStatus');
  RemClassRegistry.RegisterXSClass(ESDTokenStatus2, 'http://service.cld.be/', 'ESDTokenStatus2', 'ESDTokenStatus');
  RemClassRegistry.RegisterXSClass(ESDTokenStatus, 'http://service.cld.be/', 'ESDTokenStatus');
  RemClassRegistry.RegisterXSClass(ESDAuth2, 'http://service.cld.be/', 'ESDAuth2', 'ESDAuth');
  RemClassRegistry.RegisterXSClass(ESDAuth, 'http://service.cld.be/', 'ESDAuth');
  RemClassRegistry.RegisterXSInfo(TypeInfo(string_), 'http://service.cld.be/', 'string_', 'string');
  RemClassRegistry.RegisterXSClass(ESDLink2, 'http://service.cld.be/', 'ESDLink2', 'ESDLink');
  RemClassRegistry.RegisterXSClass(ESDLink, 'http://service.cld.be/', 'ESDLink');
  RemClassRegistry.RegisterXSClass(ESDToken, 'http://service.cld.be/', 'ESDToken');

end.