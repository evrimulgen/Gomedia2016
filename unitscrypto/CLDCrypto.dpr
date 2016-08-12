library CLDCrypto;

uses SysUtils,DCPcrypt2, DCPblockciphers,
  DCPdes, DCPsha1,  DCPBase64, EncdDecd;

// Compiled using Delphi 2007.

// NOTE: If your project doesn't have version information included, you may
// receive the error "The "ResolveManifestFiles" task failed unexpectedly"
// when compiling the C# application.

{$R *.res}

// Example function takes an input integer and input string, and returns
// inputInt + 1, and inputString + ' ' + IntToStr(outputInt) as output
// parameters. If successful, the return result is nil (null), otherwise it is
// the exception message string.


// NOTE: I've posted a better version of this below. You should use that instead.


function Base64EncodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: integer;
begin
 ilen:=Length(Input);
 SetLength(result, (ilen div 3) * 4);
 rlen:=Base64Encode(@Input[0], @result[0], ilen);
 SetLength(result, rlen);
end;

function Base64DecodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: integer;
begin
  ilen := Length(Input);
  SetLength(result, (ilen div 4) * 3);
  rlen := Base64Decode(@Input[0], @result[0], ilen);
  // Adjust the length of the output buffer according to the number of valid
  // b64 characters
  SetLength(result, rlen);
end;


function EncryptStringDES(source:string): string;
var
  des: TDCP_des;
  src, enc, b64: TBytes;
  index, slen, bsize, padsize: integer;
begin
  des:=tdcp_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), tdcp_sha1);

    src := TEncoding.UTF8.GetBytes(source);
    slen := Length(src);
    // Add padding
    bsize := des.BlockSize div 8;
    padsize := bsize - (slen mod bsize);
    Inc(slen, padsize);
    SetLength(src, slen);
    for index := padsize downto 1 do
    begin
      src[slen - index] := padsize;
    end;

    SetLength(enc, slen);
    des.EncryptCBC(src[0], enc[0], slen);
    result := EncdDecd.EncodeBase64(@enc[0], Length(enc));
  finally
    des.Free;
  end;
end;

function DecryptStringDES(ASource: string): string;
var
  des: TDCP_des;
  key, src, dec, b64: TBytes;
  pad, slen: integer;
begin
  des := TDCP_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), tdcp_sha1);

    src := EncdDecd.DecodeBase64(AnsiString(ASource));
    slen := Length(src);
    SetLength(dec, slen);
    des.DecryptCBC(src[0], dec[0], slen);

    // Remove padding
    pad := dec[slen - 1];
    SetLength(dec, slen - pad);

    result := TEncoding.UTF8.GetString(dec);
  finally
    des.Free;
  end;
end;


function EncodeFunction(
                        inputString : PAnsiChar;
                        outputStringBufferSize : integer;
                        var outputStringBuffer : PAnsiChar;
                        errorMsgBufferSize : integer;
                        var errorMsgBuffer : PAnsiChar)
                        : WordBool; stdcall; export;
var s : ansistring;
begin
  try
    s := EncryptStringDES(inputString);
    StrLCopy(outputStringBuffer, PAnsiChar(s), outputStringBufferSize-1);
    errorMsgBuffer[0] := #0;
    Result := true;
  except
    on e : exception do
    begin
      StrLCopy(errorMsgBuffer, PAnsiChar(e.Message), errorMsgBufferSize-1);
      Result := false;
    end;
  end;
end;

function DecodeFunction(
                        inputString : PAnsiChar;
                        outputStringBufferSize : integer;
                        var outputStringBuffer : PAnsiChar;
                        errorMsgBufferSize : integer;
                        var errorMsgBuffer : PAnsiChar)
                        : WordBool; stdcall; export;
var s : ansistring;
begin
  try
    s := DecryptStringDES(inputString);
    StrLCopy(outputStringBuffer, PAnsiChar(s), outputStringBufferSize-1);
    errorMsgBuffer[0] := #0;
    Result := true;
  except
    on e : exception do
    begin
      StrLCopy(errorMsgBuffer, PAnsiChar(e.Message), errorMsgBufferSize-1);
      Result := false;
    end;
  end;
end;



// I would have thought having "export" at the end of the function declartion
// (above) would have been enough to export the function, but I couldn't get it
// to work without this line also.
// exports DecodeFunction;
exports EncodeFunction;
exports DecodeFunction;
begin
end.
