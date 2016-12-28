unit FTPConn;

interface

uses
  System.JSON, SysUtils, Data.DBXJSONReflect;

type

  TFTPConn = class
  private
    _Host: string;
    _Dir: string;
    _Login: string;
    _Pass: string;
  public
    constructor create(Host, Dir, Login, Pass: string);
    property Host: string read _Host;
    property Dir: string read _Dir;
    property Login: string read _Login;
    property Pass: string read _Pass;
  end;

function FTPConnToJSON(FTPConn: TFTPConn): TJSONValue;
function JSONToFTPConn(JSON: TJSONValue): TFTPConn;

implementation

function FTPConnToJSON(FTPConn: TFTPConn): TJSONValue;
var
  m: TJSONMarshal;
begin
  if Assigned(FTPConn) then
  begin
    m := TJSONMarshal.create(TJSONConverter.create);
    try
      exit(m.Marshal(FTPConn))
    finally
      m.Free;
    end;
  end
  else
    exit(TJSONNull.create);
end;

function JSONToFTPConn(JSON: TJSONValue): TFTPConn;
var
  unm: TJSONUnMarshal;
begin
  if JSON is TJSONNull then
    exit(nil);
  unm := TJSONUnMarshal.create;
  try
    exit(unm.Unmarshal(JSON) as TFTPConn)
  finally
    unm.Free;
  end;
end;

{ TFTPConn }

constructor TFTPConn.create(Host, Dir, Login, Pass: string);
begin
  _Host := Host;
  _Pass := Pass;
  _Dir := Dir;
  _Login := Login;
  inherited create;
end;

end.
