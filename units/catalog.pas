// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://service.cld.be/catalog.asmx?WSDL
// >Import : http://service.cld.be/catalog.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (08-11-13 17:21:26 - - $Rev: 45757 $)
// ************************************************************************ //

unit catalog;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, SOAPHTTPTrans;

const
  IS_OPTN = $0001;
  IS_REF = $0080;

type
  TWebNodeAction = class
  public
    class procedure HTTPRIOHTTPWebNodeBeforePost(const HTTPReqResp
      : THTTPReqResp; Data: Pointer);
  end;

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[GblElm]

  ShowPricelistResult = class; { "http://service.cld.be/"[Cplx] }
  ShowBackOrdersResult = class; { "http://service.cld.be/"[Cplx] }
  ShowProductByEANResult = class; { "http://service.cld.be/"[Cplx] }
  ShowProductByCLDIDResult = class; { "http://service.cld.be/"[Cplx] }

  // ************************************************************************ //
  // XML       : ShowPricelistResult, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ShowPricelistResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData index(IS_REF)read Fschema write Fschema;
  end;

  // ************************************************************************ //
  // XML       : ShowBackOrdersResult, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ShowBackOrdersResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData index(IS_REF)read Fschema write Fschema;
  end;

  // ************************************************************************ //
  // XML       : ShowProductByEANResult, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ShowProductByEANResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData index(IS_REF)read Fschema write Fschema;
  end;

  // ************************************************************************ //
  // XML       : ShowProductByCLDIDResult, <complexType>
  // Namespace : http://service.cld.be/
  // ************************************************************************ //
  ShowProductByCLDIDResult = class(TRemotable)
  private
    Fschema: TXMLData;
  public
    destructor Destroy; override;
  published
    property schema: TXMLData index(IS_REF)read Fschema write Fschema;
  end;

  // ************************************************************************ //
  // Namespace : http://service.cld.be/
  // soapAction: http://service.cld.be/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CatalogSoap12
  // service   : Catalog
  // port      : CatalogSoap12
  // URL       : http://service.cld.be/catalog.asmx
  // ************************************************************************ //
  CatalogSoap = interface(IInvokable)
    ['{15DDC506-A5DC-3CD2-E171-6FF08DD6D80D}']
    function Identify(const username: string; const password: string)
      : Boolean; stdcall;
    function HelloWorld: string; stdcall;
    function ShowPricelist: ShowPricelistResult; stdcall;
    function ShowProductByCLDID(const CLDID: string)
      : ShowProductByCLDIDResult; stdcall;
    function ShowProductByEAN(const EAN: string)
      : ShowProductByEANResult; stdcall;
    function ShowBackOrders: ShowBackOrdersResult; stdcall;
    function OrderItem(const CLD_ID: string; const Q: Integer;
      const REF: string): Boolean; stdcall;
    function CliCheck(const SKU: string): Integer; stdcall;
    function RequestCode(const SKU: string; const sales_id: string)
      : string; stdcall;
    function RequestPastCode(const SKU: string; const sales_id: string)
      : string; stdcall;
  end;

function GetCatalogSoap(UseWSDL: Boolean = System.False; Addr: string = '';
  HTTPRIO: THTTPRIO = nil): CatalogSoap;

implementation

uses SysUtils, WinInet;

class procedure TWebNodeAction.HTTPRIOHTTPWebNodeBeforePost(const HTTPReqResp
  : THTTPReqResp; Data: Pointer);
var
  conntimeout, sendtimeout, recvtimeout: Integer;
begin
  conntimeout := 15000; // in milleseconds.
  sendtimeout := 15000; // in milleseconds.
  recvtimeout := 15000; // in milleseconds.
  InternetSetOption(nil, INTERNET_OPTION_CONNECT_TIMEOUT, Pointer(@conntimeout),
    SizeOf(conntimeout));
  InternetSetOption(nil, INTERNET_OPTION_SEND_TIMEOUT, Pointer(@sendtimeout),
    SizeOf(sendtimeout));
  InternetSetOption(nil, INTERNET_OPTION_RECEIVE_TIMEOUT, Pointer(@recvtimeout),
    SizeOf(recvtimeout));
end;

function GetCatalogSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO)
  : CatalogSoap;
const
  defWSDL = 'http://service.cld.be/catalog.asmx?WSDL';
  defURL = 'http://service.cld.be/catalog.asmx';
  defSvc = 'Catalog';
  defPrt = 'CatalogSoap12';
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
  begin
    RIO := THTTPRIO.Create(nil);
    RIO.HTTPWebNode.OnBeforePost := TWebNodeAction.HTTPRIOHTTPWebNodeBeforePost;
  end
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CatalogSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
      RIO.HTTPWebNode.ConnectTimeout := 2000;
    end
    else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

destructor ShowPricelistResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

destructor ShowBackOrdersResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

destructor ShowProductByEANResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

destructor ShowProductByCLDIDResult.Destroy;
begin
  SysUtils.FreeAndNil(Fschema);
  inherited Destroy;
end;

initialization

{ CatalogSoap }
InvRegistry.RegisterInterface(TypeInfo(CatalogSoap),
  'http://service.cld.be/', 'utf-8');
InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CatalogSoap),
  'http://service.cld.be/%operationName%');
InvRegistry.RegisterInvokeOptions(TypeInfo(CatalogSoap), ioDocument);
InvRegistry.RegisterInvokeOptions(TypeInfo(CatalogSoap), ioSOAP12);
{ CatalogSoap.Identify }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'Identify', '',
  '[ReturnName="IdentifyResult"]');
{ CatalogSoap.HelloWorld }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'HelloWorld', '',
  '[ReturnName="HelloWorldResult"]', IS_OPTN);
{ CatalogSoap.ShowPricelist }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'ShowPricelist', '',
  '[ReturnName="ShowPricelistResult"]', IS_OPTN);
{ CatalogSoap.ShowProductByCLDID }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'ShowProductByCLDID', '',
  '[ReturnName="ShowProductByCLDIDResult"]', IS_OPTN);
{ CatalogSoap.ShowProductByEAN }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'ShowProductByEAN', '',
  '[ReturnName="ShowProductByEANResult"]', IS_OPTN);
{ CatalogSoap.ShowBackOrders }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'ShowBackOrders', '',
  '[ReturnName="ShowBackOrdersResult"]', IS_OPTN);
{ CatalogSoap.OrderItem }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'OrderItem', '',
  '[ReturnName="OrderItemResult"]');
{ CatalogSoap.CliCheck }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'CliCheck', '',
  '[ReturnName="CliCheckResult"]');
{ CatalogSoap.RequestCode }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'RequestCode', '',
  '[ReturnName="RequestCodeResult"]', IS_OPTN);
{ CatalogSoap.RequestPastCode }
InvRegistry.RegisterMethodInfo(TypeInfo(CatalogSoap), 'RequestPastCode', '',
  '[ReturnName="RequestPastCodeResult"]', IS_OPTN);
RemClassRegistry.RegisterXSClass(ShowPricelistResult, 'http://service.cld.be/',
  'ShowPricelistResult');
RemClassRegistry.RegisterXSClass(ShowBackOrdersResult, 'http://service.cld.be/',
  'ShowBackOrdersResult');
RemClassRegistry.RegisterXSClass(ShowProductByEANResult,
  'http://service.cld.be/', 'ShowProductByEANResult');
RemClassRegistry.RegisterXSClass(ShowProductByCLDIDResult,
  'http://service.cld.be/', 'ShowProductByCLDIDResult');

end.
