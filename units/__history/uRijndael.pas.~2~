unit uRijndael;
// Helper functions for 256-bit Rijndael/AES encryption with DCPcrypt

interface

uses
  StdCtrls;

function RijndaelEncryptHex(hexstrKey, hexstrIV, hexstrPlain: string; MMo: TMemo = nil): string;
function RijndaelDecryptHex(hexstrKey, hexstrIV, hexstrCypher: string; MMo: TMemo = nil): string;
// Input en output zijn strings met hex waarden ('014730f80ac625fe84f026c60bfd547d')
//
// Deze routines gebruiken een 256-key AES/Rijndael encryptie, waarbij de plaintext
// met NULL waarden ge-pad wordt tot een veelvoud van de blocksize.
// Merk op dat de initializatievector even groot moet zijn als de blocksize (128 bits, dus een hex string van 32 tekens).
//
// Als TMemo gespecificeerd is wordt daar naar toe gelogd.

// Helper routines:
function HexToString(H: string): string;
function StringtoHex(Data: string; WithSpaces: Boolean = false): string;
function HexToInt(HexNum: string): LongInt;

implementation

uses
  SysUtils,
  DCPbase64, DCPcrypt2, DCPblockciphers, DCPrijndael;

type
  KeyBuffer = array [1 .. 32] of Byte;
  IVBuffer  = array [1 .. 16] of Byte;

function HexToString(H: string): string;
var
  I: Integer;
begin
  Result   := '';
  for I    := 1 to length(H) div 2 do
    Result := Result + Char(StrToInt('$' + Copy(H, (I - 1) * 2 + 1, 2)));
end;

function StringtoHex(Data: string; WithSpaces: Boolean = false): string;
var
  I, i2: Integer;
  s: string;
begin
  i2    := 1;
  for I := 1 to length(Data) do
  begin
    Inc(i2);
    if i2 = 2 then
    begin
      if WithSpaces then
        s := s + ' ';
      i2  := 1;
    end;
    s := s + IntToHex(Ord(Data[I]), 2);
  end;
  Result := s;
end;

function HexToInt(HexNum: string): LongInt;
begin
  Result := StrToInt('$' + HexNum);
end;

function FilterHex(s: string): string;
// Filters all hex characters 0..F (case insensitive) uit S
var
  SOut: string;
  l: Word;
begin
  SOut  := '';
  for l := 1 to length(s) do
    if not(s[l] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'A', 'B', 'C', 'D', 'E', 'F']) then
      SOut := SOut + s[l];
  Result   := SOut;
end;

function RijndaelEncryptHex(hexstrKey, hexstrIV, hexstrPlain: string; MMo: TMemo = nil): string;
var
  InBuf, OutBuf: array of Byte;
  BufSizeInBytes: Word;
  KeyBuf: KeyBuffer;
  IVBuf: IVBuffer;
  l, I: Integer;
  Bytes, SOut: string;
  DCPR: TDCP_rijndael;
begin
  l := length(hexstrKey);
  Assert(l = 64, 'Key heeft ongeldige lengte (moet 64 chars zijn): ' + IntToStr(l));
  Assert(FilterHex(hexstrKey) = '', 'Key heeft ongeldige tekens: ' + hexstrKey);
  l := length(hexstrIV);
  Assert(l = 32, 'IV heeft ongeldige lengte (moet 32 chars zijn): ' + IntToStr(l));
  Assert(FilterHex(hexstrIV) = '', 'IV heeft ongeldige tekens: ' + hexstrIV);
  Assert(FilterHex(hexstrPlain) = '', 'Plaintext heeft ongeldige tekens: ' + hexstrPlain);
  l := length(hexstrPlain);
  Assert(l mod 2 = 0, 'Plaintext heeft oneven lengte: ' + hexstrPlain);
  if MMo <> nil then
  begin
    MMo.Lines.Add('Key: ' + hexstrKey);
    MMo.Lines.Add('IV: ' + hexstrIV);
    MMo.Lines.Add('Plaintext: ' + hexstrPlain);
  end;
  l           := length(hexstrKey) div 2;
  for I       := 1 to l do
    KeyBuf[I] := HexToInt(Copy(hexstrKey, 2 * (I - 1) + 1, 2));
  l           := length(hexstrIV) div 2;
  for I       := 1 to l do
    IVBuf[I]  := HexToInt(Copy(hexstrIV, 2 * (I - 1) + 1, 2));
  // Pad with zeroes:
  while length(hexstrPlain) mod 32 <> 0 do
    hexstrPlain  := hexstrPlain + '00';
  BufSizeInBytes := length(hexstrPlain) div 2;
  SetLength(InBuf, BufSizeInBytes);
  SetLength(OutBuf, BufSizeInBytes);
  for I      := 0 to BufSizeInBytes - 1 do
    InBuf[I] := HexToInt(Copy(hexstrPlain, 2 * I + 1, 2));
  DCPR       := TDCP_rijndael.Create(nil);
  DCPR.Init(KeyBuf, 256, @IVBuf);
  DCPR.EncryptCBC(InBuf[0], OutBuf[0], BufSizeInBytes);
  DCPR.Burn; // Leeg memory buffers voor security
  DCPR.Free;
  SOut  := '';
  for I := 0 to BufSizeInBytes - 1 do
  begin
    SOut  := SOut + Chr(OutBuf[I]);
    Bytes := Bytes + IntToStr(OutBuf[I]) + ' ';
  end;
  if MMo <> nil then
  begin
    MMo.Lines.Add('Cyphertext (bytes): ' + Bytes);
    MMo.Lines.Add('Cyphertext (base64): ' + Base64EncodeStr(SOut));
  end;
  SOut := LowerCase(StringtoHex(SOut));
  if MMo <> nil then
  begin
    MMo.Lines.Add('Cyphertext (hex): ' + SOut);
    MMo.Lines.Add('');
  end;
  Result := SOut;
end; { RijndaelEncryptHex }

function RijndaelDecryptHex(hexstrKey, hexstrIV, hexstrCypher: string; MMo: TMemo = nil): string;
var
  InBuf, OutBuf: array of Byte;
  BufSizeInBytes: Word;
  KeyBuf: KeyBuffer;
  IVBuf: IVBuffer;
  l, I: Integer;
  SOut: string;
  DCPR: TDCP_rijndael;
begin
  l := length(hexstrKey);
  Assert(l = 64, 'Key heeft ongeldige lengte (moet 64 chars zijn): ' + IntToStr(l));
  Assert(FilterHex(hexstrKey) = '', 'Key heeft ongeldige tekens: ' + hexstrKey);
  l := length(hexstrIV);
  Assert(l = 32, 'IV heeft ongeldige lengte (moet 32 chars zijn): ' + IntToStr(l));
  Assert(FilterHex(hexstrIV) = '', 'IV heeft ongeldige tekens: ' + hexstrIV);
  Assert(FilterHex(hexstrCypher) = '', 'Cyphertext heeft ongeldige tekens: ' + hexstrCypher);
  l := length(hexstrCypher);
  Assert(l mod 2 = 0, 'Cyphertext heeft oneven lengte: ' + hexstrCypher);
  if MMo <> nil then
  begin
    MMo.Lines.Add('Key: ' + hexstrKey);
    MMo.Lines.Add('IV: ' + hexstrIV);
    MMo.Lines.Add('CypherText: ' + hexstrCypher);
  end;
  l           := length(hexstrKey) div 2;
  for I       := 1 to l do
    KeyBuf[I] := HexToInt(Copy(hexstrKey, 2 * (I - 1) + 1, 2));
  l           := length(hexstrIV) div 2;
  for I       := 1 to l do
    IVBuf[I]  := HexToInt(Copy(hexstrIV, 2 * (I - 1) + 1, 2));
  // Pad with zeroes:
  BufSizeInBytes := length(hexstrCypher) div 2;
  SetLength(InBuf, BufSizeInBytes);
  SetLength(OutBuf, BufSizeInBytes);
  for I      := 0 to BufSizeInBytes - 1 do
    InBuf[I] := HexToInt(Copy(hexstrCypher, 2 * I + 1, 2));
  DCPR       := TDCP_rijndael.Create(nil);
  DCPR.Init(KeyBuf, 256, @IVBuf);
  DCPR.DecryptCBC(InBuf[0], OutBuf[0], BufSizeInBytes);
  DCPR.Burn;
  DCPR.Free;
  SOut   := '';
  for I  := 0 to BufSizeInBytes - 1 do
    SOut := SOut + Chr(OutBuf[I]);
  SOut   := LowerCase(StringtoHex(SOut));
  if MMo <> nil then
  begin
    MMo.Lines.Add('Plaintext (hex): ' + SOut);
    MMo.Lines.Add('');
  end;
  Result := SOut;
end; { RijndaelDecryptHex }

end.
