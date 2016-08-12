unit DavidUtilsunit;

interface

uses Windows, Sysutils, Types, Graphics, Classes, Strutils, Printers, Dialogs,
  STDactns,
  activex, OleCtrls, SHDocVw_EWB, EwbCore, COPTRLib_TLB,
  DCPcrypt2, DCPblockciphers,
  DCPdes, DCPsha1, DCPBase64, EncdDecd;

type
  LabelStyle       = (lsNew, lsSh, lsDp, lsAddress, lsrent);
  LabelModel       = (LmContinuous, LmFinished);
  TTransactionType = (TtIn, TtOut);
  BoxStyle         = (bsFin, bsCust, bsProd);
  TGridLine        = array of string;

  TInTVA = record
    Rate: Real;
    Base: Real;
    Tax: Real;
  end;

  TicketStyle = set of (tsHeader, tsFooter, tsBody, tsFinancial, tsCustomer, tsTip, tsGrid);
  TicketModel = (TmContinuous, TmFinished);

  TLabelAddress = class
  private
    LAPrinter: string;
    LAFontSize: Integer;
    PrintDialog: TprintDlg;
  public
    constructor Create;
    procedure Print(var Address: TStrings; ShowDialog: Boolean);
    property LabelPrinter: string read LAPrinter write LAPrinter;
    property LabelFontSize: Integer read LAFontSize write LAFontSize;
  end;

  TLabelRent = class
  private
    LRPrinter: string;
    LRPModel: string;
    LRID: Integer;
    PrintDialog: TprintDlg;
  public
    constructor Create;
    procedure Print(Model, Name: string; ID: Integer; ShowDialog: Boolean);
    property ProductModel: string read LRPModel write LRPModel;
    property ID: Integer read LRID write LRID;
    property LabelPrinter: string read LRPrinter write LRPrinter;
  end;

  TLabelCODE39 = class
  private
    LRPrinter: string;
    LRPModel: string;
    LRID: Integer;
    PrintDialog: TprintDlg;
  public
    constructor Create;
    procedure Print(Model, Name: string; ID: Integer; ShowDialog: Boolean);
    property ProductModel: string read LRPModel write LRPModel;
    property ID: Integer read LRID write LRID;
    property LabelPrinter: string read LRPrinter write LRPrinter;
  end;

  TSmsMessage = record
    Customer: string;
    Model: string;
    Phone: string;
    TextMessage: string;
    Response: string;
    Status: Integer;
  end;

  TLabelJob = class
  private
    LJTitle: string;
    LJStyle: LabelStyle;
    LJPrinter: string;
    LJPrinterIndex: Integer;
    LJLogo: TBitmap;
    LJOwner: Integer;
    LJUrl: string;
    LJLabelsCount: Integer;
    LJModel: LabelModel;

    LJLabels: array of array [1 .. 2] of string;
    aPrintDialog: TprintDlg;
    procedure SetLogo(const Value: TBitmap);
  public
    constructor Create;
    property Title: string read LJTitle write LJTitle;
    property Style: LabelStyle read LJStyle write LJStyle;
    property LabelPrinter: string read LJPrinter write LJPrinter;
    property PrinterIndex: Integer read LJPrinterIndex write LJPrinterIndex;
    property Logo: TBitmap read LJLogo write SetLogo;
    property Url: string read LJUrl write LJUrl;
    property Model: LabelModel read LJModel write LJModel;
    procedure Addlabel(Price: Real; Title: string);
    procedure Print(ShowDialog: Boolean);
    property Owner: Integer read LJOwner write LJOwner;
  published
  end;

  TTicketJob = class(Tcomponent)
  private
    TJTitle: string;
    TJStyle: TicketStyle;
    TJModel: TicketModel;
    TJPrinter: string;
    TJPrinterIndex: Integer;
    TJLogo: TBitmap;
    TJOwner: Integer;
    TJUrl: string;
    TJID: string;
    TJComment: WideString;
    TJDateTime: TDateTime;
    TJBoxesCount: Integer;
    TJBoxesNames: TStrings;
    TJBoxesStyles: array of BoxStyle;
    TJFinancials: array of array [1 .. 2] of string;
    TJCustomer: array of array [1 .. 2] of string;
    TJBoxes: array of array of array [1 .. 4] of string;
    TJInTVA: array of TInTVA;
    TJBoxesSum: array of Boolean;
    TJShopData: TStrings;
    procedure SetLogo(const Value: TBitmap);
    procedure Setshopdata(const Value: TStrings);
    procedure InternalPrint;
    procedure InternalPrintOpos;
  public
    constructor Create(Owner: Tcomponent);
    property Title: string read TJTitle write TJTitle;
    property Style: TicketStyle read TJStyle write TJStyle;
    property Model: TicketModel read TJModel write TJModel;
    property Printer: string read TJPrinter write TJPrinter;
    property PrinterIndex: Integer read TJPrinterIndex write TJPrinterIndex;
    property Logo: TBitmap read TJLogo write SetLogo;
    property Url: string read TJUrl write TJUrl;
    property Comment: WideString read TJComment write TJComment;
    property ID: string read TJID write TJID;
    property ShopData: TStrings read TJShopData write Setshopdata;
    property Owner: Integer read TJOwner write TJOwner;
    property DateTime: TDateTime read TJDateTime write TJDateTime;
    procedure AddBox(const Title: string; Sum: Boolean; Style: BoxStyle);
    procedure AddLine(Q, Price, Title, box: string; DisplayOnly: Boolean); overload;
    procedure AddLine(Q, Price, Title, box: string); overload;
    procedure AddHeader(GridLine: TGridLine; box: string);
    procedure AddFinancialLine(Title: string; Amount: Real);
    procedure AddCustomerLine(Title: string; Value: string);
    procedure AddInTVA(Rate, Base, Tax: Real);
    procedure Print; overload;
    procedure PrintOpos; overload;
  end;

function IsInteger(totest: string): Boolean;
function HResultToErrorNumber(hr: HResult): Integer;
function OSCToVCLDate(OSCDate: string): TDateTime;
function VCLToOSCDate(VCLDate: TDateTime): string;
function BankToVCLDate(Date: string): TDateTime;
function BankToVCLShortDate(ShortDate: string): TDateTime;
function checkean(barcode: string): Boolean;
function checkupc(barcode: string): Boolean;
function ComputeEanCheck(barcode: string): Integer;
function validatemodel(ProductModel: string): Boolean;
function DynaLink_InternetGetConnectedState(lpdwFlags: LPDWORD; dwReserved: DWORD): BOOL;
function ClearPhoneNbr(source: string): string;
function InvertStr(source: string): string;
function ConverttoPoint(source: string): string;
function RemovePunct(source: string): string;
function Detection_Connexion: Boolean;
function StripHTML(S: string): string;
function StreamToStr(const aStream: TMemoryStream): string;
function ExTractFromHtml(BPsource, StartStr, EndStr: string): string;
function GetBrowserHtml(const webBrowser: TEWBCore): string;
function IsStrIntNum(S: string): Boolean;
function scShellMoveFile(FormHandle: THandle; StrFrom, StrTo: string; BlnSilent: Boolean = False): Boolean;
function ExtractTextInsideGivenTagEx(const Tag, Text: string): string;
function InvFormatDatetime(Cadena: string; Formato: string): TDateTime;
function IsStrANumber(const S: string): Boolean;
function StrSplit(chaine: string; delimiteur: string): TStringList;
function AddLeadingZeroes(const aNumber, Length: Integer): string;
function DecryptStringDES(ASource: string): string;
function EncryptStringDES(source: string): string;

const
  CODE_BASE = $200;

implementation

uses clientDMUnit, wininet, barcode, DateUtils,
  ShellApi;

function StrSplit(chaine: string; delimiteur: string): TStringList;
var
  L: TStringList;
begin
  L        := TStringList.Create;
  L.Text   := StringReplace(chaine, delimiteur, #13#10, [rfReplaceAll]);
  StrSplit := L;
end;

function IsStrANumber(const S: string): Boolean;
begin
  Result := True;
  try
    StrToInt(S);
  except
    Result := False;
  end;
end;

function InvFormatDatetime(Cadena: string; Formato: string): TDateTime;

var
  PosD, PosM, PosY: Integer;
  sD, sM, sY: string;

begin

  sD := '0';
  sM := '0';
  sY := '0';

  if Length(Cadena) = Length(Formato) then
  begin
    Formato := UpperCase(Formato);
    PosD    := Pos('D', Formato);
    PosM    := Pos('M', Formato);
    PosY    := Pos('Y', Formato);

    sD := Copy(Cadena, PosD, 2);
    sM := Copy(Cadena, PosM, 2);

    if Length(Cadena) = 6 then
    begin
      sY := Copy(Cadena, PosY, 2);
      if StrToInt(sY) > 50 then
        sY := '19' + sY
      else
        sY := '20' + sY;
    end
    else
      sY := Copy(Cadena, PosY, 4);
  end;
  Result := EncodeDate(StrToInt(sY), StrToInt(sM), StrToInt(sD));
end;

function ExtractTextInsideGivenTagEx(const Tag, Text: string): string;
var
  StartPos1, StartPos2, EndPos: Integer;
  i: Integer;
begin
  Result    := '';
  StartPos1 := Pos('<' + Tag, Text);
  EndPos    := Pos('</' + Tag + '>', Text);
  StartPos2 := 0;
  for i     := StartPos1 + Length(Tag) + 1 to EndPos do
    if Text[i] = '>' then
    begin
      StartPos2 := i + 1;
      break;
    end;

  if (StartPos2 > 0) and (EndPos > StartPos2) then
    Result := Copy(Text, StartPos2, EndPos - StartPos2);
end;

// ----------------------------------------------------------------
// Move files
// ----------------------------------------------------------------
function scShellMoveFile(FormHandle: THandle; StrFrom, StrTo: string; BlnSilent: Boolean = False): Boolean;
var
  F: TShFileOpStruct;
begin
  F.Wnd    := FormHandle;
  F.wFunc  := FO_MOVE;
  F.pFrom  := PChar(StrFrom + #0);
  F.pTo    := PChar(StrTo + #0);
  F.fFlags := FOF_ALLOWUNDO or FOF_RENAMEONCOLLISION;
  if BlnSilent then
    F.fFlags := F.fFlags or FOF_SILENT;
  if ShFileOperation(F) <> 0 then
    Result := False
  else
    Result := True;
end;

function IsStrIntNum(S: string): Boolean;
begin
  try
    StrToInt(S);
    Result := True;
  except
    Result := False;
  end;
end;

function GetBrowserHtml(const webBrowser: TEWBCore): string;
var
  strStream: TStringStream;
  adapter: IStream;
  browserStream: IPersistStreamInit;
begin
  strStream := TStringStream.Create('');
  try
    browserStream := webBrowser.Document as IPersistStreamInit;
    adapter       := TStreamAdapter.Create(strStream, soReference);
    browserStream.Save(adapter, True);
    Result := strStream.DataString;
  finally
  end;
  strStream.Free();
end;

function StripHTML(S: string): string;
var
  TagBegin, TagEnd, TagLength: Integer;
begin
  TagBegin := Pos('<', S); // search position of first <

  while (TagBegin > 0) do
  begin // while there is a < in S
    TagEnd    := Pos('>', S); // find the matching >
    TagLength := TagEnd - TagBegin + 1;
    Delete(S, TagBegin, TagLength); // delete the tag
    TagBegin := Pos('<', S); // search for next <
  end;

  Result := S; // give the result
end;

function HResultToErrorNumber(hr: HResult): Integer;
begin
  Result := (hr and $FFFF);
end;

function ConverttoPoint(source: string): string;
var
  i: Integer;
begin
  Result := '';
  for i  := 1 to Length(source) do
  begin
    if source[i] = ',' then
      Result := Result + '.'
    else
      Result := Result + source[i];
  end;
end;

function ClearPhoneNbr(source: string): string;
var
  i: Integer;
  suspend: Boolean;
begin
  Result  := '';
  suspend := False;
  for i   := 1 to Length(source) do
  begin
    if source[i] = '(' then
      suspend := True;
    if source[i] = ')' then
      suspend := False;
    if ((source[i] >= '0') and (source[i] <= '9') and (not suspend)) then
      Result := Result + source[i];
  end;
end;

function Detection_Connexion: Boolean;
var
  dwFlags: DWORD;
begin
  dwFlags := INTERNET_CONNECTION_MODEM + INTERNET_CONNECTION_LAN + INTERNET_CONNECTION_PROXY;
  Result  := InternetGetConnectedState(@dwFlags, 0);
end;

function DynaLink_InternetGetConnectedState(lpdwFlags: LPDWORD; dwReserved: DWORD): BOOL;
var
  WininetDLL: THandle;
  Wininet_InternetGetConnectedState: function(lpdwFlags: LPDWORD; dwReserved: DWORD): BOOL; stdcall;
begin
  Result     := True;
  WininetDLL := LoadLibrary('WININET.DLL');
  if WininetDLL > 0 then
  begin
    @Wininet_InternetGetConnectedState := GetProcAddress(WininetDLL, 'InternetGetConnectedState');
    if Assigned(Wininet_InternetGetConnectedState) then
    begin
      Result := Wininet_InternetGetConnectedState(lpdwFlags, dwReserved);
    end;
    FreeLibrary(WininetDLL);
  end;
end;

function OSCToVCLDate(OSCDate: string): TDateTime;
var
  Day, Month, Year: Integer;
begin
  Year   := StrToInt(LeftStr(OSCDate, 4));
  Month  := StrToInt(MidStr(OSCDate, 5, 2));
  Day    := StrToInt(RightStr(OSCDate, 2));
  Result := EncodeDate(Year, Month, Day);
end;

function VCLToOSCDate(VCLDate: TDateTime): string;
begin
  Result := FormatDateTime('yyyymmdd', VCLDate);
end;

function BankToVCLDate(Date: string): TDateTime;
var
  Day, Month, Year: Integer;
begin
  Day    := StrToInt(LeftStr(Date, 2));
  Month  := StrToInt(MidStr(Date, 3, 2));
  Year   := 2000 + StrToInt(RightStr(Date, 2));
  Result := EncodeDate(Year, Month, Day);
end;

function BankToVCLShortDate(ShortDate: string): TDateTime;
var
  Day, Month, Year: Integer;
begin
  Day   := StrToInt(LeftStr(ShortDate, 2));
  Month := StrToInt(RightStr(ShortDate, 2));
  Year  := Yearof(Now);
  if (Month > 9) and (Monthof(Now) < 3) then
    Year := Year - 1;
  Result := EncodeDate(Year, Month, Day);
end;

function checkean(barcode: string): Boolean;
var
  counter, Sum, checksum: Integer;
begin
  Result := False;
  if Length(barcode) < 11 then
    exit;

  for counter := 1 to Length(barcode) do
  begin
    if (barcode[counter] < '0') or (barcode[counter] > '9') then
      exit;
  end;

  Sum         := 0;
  for counter := (Length(barcode) - 1) downto 1 do
  begin
    if (Length(barcode) - counter + 1) mod 2 = 0 then
      Sum := Sum + StrToInt(barcode[counter]) * 3
    else
      Sum := Sum + StrToInt(barcode[counter]) * 1;
  end;
  if StrToInt(barcode[Length(barcode)]) = 0 then
    checksum := 10
  else
    checksum := StrToInt(barcode[Length(barcode)]);
  if Sum mod 10 = 10 - checksum then
    Result := True;
end;

function validatemodel(ProductModel: string): Boolean;
var
  counter, charcount: Integer;
begin
  Result := False;
  if checkean(ProductModel) then
  begin
    Result := True;
  end else begin
    charcount   := 0;
    for counter := 1 to Length(ProductModel) do
    begin
      if (ProductModel[counter] >= 'A') and (ProductModel[counter] <= 'z') then
        charcount := charcount + 1;
    end;
    if charcount > (Length(ProductModel) div 5) then
      Result := True;
  end;
end;

function checkupc(barcode: string): Boolean;
var
  counter, Sum, checksum: Integer;
begin
  Result := False;
  if Length(barcode) < 11 then
    exit;

  for counter := 1 to Length(barcode) do
  begin
    if (barcode[counter] < '0') or (barcode[counter] > '9') then
      exit;
  end;

  Sum         := 0;
  for counter := 1 to 11 do
  begin
    if counter mod 2 = 0 then
      Sum := Sum + StrToInt(barcode[counter]) * 1
    else
      Sum := Sum + StrToInt(barcode[counter]) * 3;
  end;
  if StrToInt(barcode[12]) = 0 then
    checksum := 10
  else
    checksum := StrToInt(barcode[12]);
  if Sum mod 10 = 10 - checksum then
    Result := True
  else
    Result := False;
end;

function ComputeEanCheck(barcode: string): Integer;
var
  counter, Sum, checksum: Integer;
begin
  Sum         := 0;
  for counter := (Length(barcode) - 1) downto 1 do
  begin
    if (Length(barcode) - counter + 1) mod 2 = 0 then
      Sum := Sum + StrToInt(barcode[counter]) * 3
    else
      Sum := Sum + StrToInt(barcode[counter]) * 1;
  end;
  if Sum mod 10 <> 0 then
    checksum := 10 - (Sum mod 10)
  else
    checksum := 0;
  Result     := checksum;
end;

function AddLeadingZeroes(const aNumber, Length: Integer): string;
begin
  Result := Sysutils.Format('%.*d', [Length, aNumber]);
end;

{ TLabelJob }

procedure TLabelJob.Addlabel(Price: Real; Title: string);
begin
  Self.LJLabelsCount := Self.LJLabelsCount + 1;
  Setlength(Self.LJLabels, Self.LJLabelsCount);
  Self.LJLabels[Self.LJLabelsCount - 1, 1] := Title;
  Self.LJLabels[Self.LJLabelsCount - 1, 2] := FloatToStrf(Price, fffixed, 7, 2) + ' �';
end;

constructor TLabelJob.Create;
begin
  LJTitle      := 'Manager Label';
  LJModel      := LmFinished;
  aPrintDialog := TprintDlg.Create(nil);
end;

procedure TLabelJob.Print(ShowDialog: Boolean);
var
  LogoHeight, Ypos, Xpos, i: Integer;
  Logorect: Trect;
  Split1, Split2: string;
  NewLine, LastCharisSpace, StartJob: Boolean;
  labelcounter: Integer;
  ADevice, ADriver, APort: array [0 .. 255] of Char;
  DeviceHandle: THandle;
  DevMode: PDeviceMode;
  Device: array [0 .. 255] of Char;
  Driver: array [0 .. 255] of Char;
  Port: array [0 .. 255] of Char;
  hDMode: THandle;
  PDMode: PDEVMODE;

begin
  i := Printer.Printers.IndexOf(Self.LJPrinter);
  if i >= 0 then
    Printer.PrinterIndex := i;

  Printer.GetPrinter(Device, Driver, Port, hDMode);
  if hDMode <> 0 then
  begin
    PDMode := GlobalLock(hDMode);
    if PDMode <> nil then
    begin
      GlobalUnlock(hDMode);
    end;
  end;

  Printers.Printer.Copies := 1;
  StartJob                := True;
  if ShowDialog then
  begin
    if aPrintDialog.Execute then
    begin
      if aPrintDialog.ExecuteResult = False then
        StartJob := False;
    end;
  end;
  if StartJob then
    try
      if LJModel = LmContinuous then
      begin
        with Printers.Printer do
        begin { impression Etiquette }
          Title             := Self.LJTitle;
          Copies            := 1;
          Canvas.Font.Name  := 'Arial';
          Canvas.Font.Size  := 8;
          Canvas.Font.Style := [];
          BeginDoc;
          for labelcounter := 1 to Self.LJLabelsCount do
          begin
            if Self.LJStyle = lsNew then
            begin
              { LogoRect:=Rect(0,0,Round(Printer.PageHeight*1/4)*2,Round(Printer.PageHeight*1/4)); }
              Logorect := rect(155 - 50, 55 - 25, 155 + 50, 55 + 25);
              Canvas.StretchDraw(Logorect, Self.LJLogo);

              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [fsBold];
              Xpos              := Round(155 - Canvas.Textwidth(Self.LJUrl) / 2);
              Canvas.Textout(Xpos, 0, Self.LJUrl);

              { Xpos:=Xpos+Round(PageHeight*2/3)*2; }
              { Canvas.Brush.Color := clBlack;

                Canvas.FrameRect(Rect(Xpos+10,0,XPos+310,PageHeight));
                Canvas.Brush.Color := clWhite; }

              Xpos := 0;
              { Impression Titre du Jeu }
              if Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) < 290 then
                Canvas.Textout(Xpos + 155 - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) / 2), 90, Self.LJLabels[labelcounter - 1, 1])
              else
              begin
                Split1  := '';
                Split2  := '';
                NewLine := False;
                for i   := 1 to Length(Self.LJLabels[labelcounter - 1, 1]) do
                begin
                  if Self.LJLabels[labelcounter - 1, 1][i] = ' ' then
                    LastCharisSpace := True
                  else
                    LastCharisSpace := False;
                  if (i > Round(Length(Self.LJLabels[labelcounter - 1, 1]) / 2)) and LastCharisSpace then
                    NewLine := True;
                  if NewLine then
                    Split2 := Split2 + Self.LJLabels[labelcounter - 1, 1][i]
                  else
                    Split1 := Split1 + Self.LJLabels[labelcounter - 1, 1][i];
                end;
                Canvas.Textout(Xpos + 155 - Round(Canvas.Textwidth(Split1) / 2), 85, Split1);
                Canvas.Textout(Xpos + 155 - Round(Canvas.Textwidth(Split2) / 2), 105, Split2);
              end;

              { Impression Prix }
              Canvas.Font.Size := 20;
              Ypos             := PageHeight - Canvas.TextHeight(Self.LJLabels[labelcounter - 1, 2]);
              Xpos             := Xpos + 160 - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 2]) / 2);
              Canvas.Textout(Xpos, Ypos, Self.LJLabels[labelcounter - 1, 2]);
            end;

            if (Self.LJStyle = lsSh) or (Self.LJStyle = lsDp) then
            begin
              Ypos              := 0;
              Xpos              := 0;
              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [fsBold];

              // Canvas.Brush.Color := clBlack;
              // Canvas.FrameRect(Rect(Xpos,0,XPos+300,PageHeight));
              // Canvas.Brush.Color := clWhite;

              Canvas.Textout(Xpos + 100 - Round(Canvas.Textwidth('OCCASION') / 2), Ypos, 'OCCASION');
              Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 1.2);
              if Self.LJStyle = lsSh then begin
                Logorect := rect(50 - 25, 55 - 25, 50 + 25, 55 + 25);
                Canvas.StretchDraw(Logorect, Self.LJLogo);
              end;
              Canvas.Textout(Xpos + 100 - Round(Canvas.Textwidth(inttoStr(Self.LJOwner)) / 2), Ypos, inttoStr(Self.LJOwner));
              { Impression Titre du Jeu }
              if Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) < 200 then
                Canvas.Textout(Xpos + 100 - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) / 2), 70, Self.LJLabels[labelcounter - 1, 1])
              else
              begin
                Split1  := '';
                Split2  := '';
                NewLine := False;
                for i   := 1 to Length(Self.LJLabels[labelcounter - 1, 1]) do
                begin
                  if Self.LJLabels[labelcounter - 1, 1][i] = ' ' then
                    LastCharisSpace := True
                  else
                    LastCharisSpace := False;
                  if (i > Round(Length(Self.LJLabels[labelcounter - 1, 1]) / 2)) and LastCharisSpace then
                    NewLine := True;
                  if NewLine then
                    Split2 := Split2 + Self.LJLabels[labelcounter - 1, 1][i]
                  else
                    Split1 := Split1 + Self.LJLabels[labelcounter - 1, 1][i];
                end;
                Canvas.Textout(Xpos + 100 - Round(Canvas.Textwidth(Split1) / 2), 60, Split1);
                Canvas.Textout(Xpos + 100 - Round(Canvas.Textwidth(Split2) / 2), 80, Split2);
              end;

              { Impression Prix }
              Canvas.Font.Size := 20;
              Ypos             := PageHeight - Canvas.TextHeight(Self.LJLabels[labelcounter - 1, 2]);
              Xpos             := Xpos + 100 - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 2]) / 2);
              Canvas.Textout(Xpos, Ypos, Self.LJLabels[labelcounter - 1, 2]);
            end;
            if labelcounter < Self.LJLabelsCount then
              NewPage;
          end;
          EndDoc;
        end;
      end;
      if LJModel = LmFinished then
      begin
        with Printer do
        begin { impression Etiquette }
          Title := Self.LJTitle;
          // Orientation:=poPortrait;
          BeginDoc;
          for labelcounter := 1 to Self.LJLabelsCount do
          begin
            if Self.LJStyle = lsNew then
            begin
              Canvas.Font.Name  := 'Arial';
              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [];
              Ypos              := 0;
              Ypos              := Round(Canvas.TextHeight(AnsiUpperCase(Self.LJUrl)) * 1.2);

              LogoHeight := 40;
              Ypos       := Ypos + LogoHeight;
              Logorect   := rect(Round(PageWidth / 2) - (LogoHeight * 2), Ypos - (LogoHeight), Round(PageWidth / 2) + (LogoHeight * 2), Ypos + (LogoHeight));
              Canvas.StretchDraw(Logorect, Self.LJLogo);

              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [fsBold];
              Xpos              := Round(Round(PageWidth / 2) - Canvas.Textwidth(AnsiUpperCase(Self.LJUrl)) / 2);
              Canvas.Textout(Xpos, 0, AnsiUpperCase(Self.LJUrl));

              Xpos := 0;
              Ypos := Ypos + LogoHeight;
              Ypos := Round(Ypos + Canvas.TextHeight(AnsiUpperCase(Self.LJUrl)) * 0.2);
              { Impression Titre du Jeu }
              if Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) < Round(PageWidth * 0.80) then
                Canvas.Textout(Xpos + Round(PageWidth / 2) - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) / 2), Ypos,
                  Self.LJLabels[labelcounter - 1, 1])
              else
              begin
                Split1  := '';
                Split2  := '';
                NewLine := False;
                for i   := 1 to Length(Self.LJLabels[labelcounter - 1, 1]) do
                begin
                  if Self.LJLabels[labelcounter - 1, 1][i] = ' ' then
                    LastCharisSpace := True
                  else
                    LastCharisSpace := False;
                  if (i > Round(Length(Self.LJLabels[labelcounter - 1, 1]) / 2)) and LastCharisSpace then
                    NewLine := True;
                  if NewLine then
                    Split2 := Split2 + Self.LJLabels[labelcounter - 1, 1][i]
                  else
                    Split1 := Split1 + Self.LJLabels[labelcounter - 1, 1][i];
                end;
                Canvas.Textout(Xpos + Round(PageWidth / 2) - Round(Canvas.Textwidth(Split1) / 2), Ypos, Split1);
                Ypos := Round(Ypos + Canvas.TextHeight(AnsiUpperCase(Self.LJUrl)) * 1.2);
                Canvas.Textout(Xpos + Round(PageWidth / 2) - Round(Canvas.Textwidth(Split2) / 2), Ypos, Split2);
              end;

              { Impression Prix }
              Canvas.Font.Size := 20;
              Ypos             := PageHeight - Round(Canvas.TextHeight(Self.LJLabels[labelcounter - 1, 2]) * 1.2);
              Xpos             := Xpos + Round(PageWidth / 2) - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 2]) / 2);
              Canvas.Textout(Xpos, Ypos, Self.LJLabels[labelcounter - 1, 2]);
            end;

            if (Self.LJStyle = lsSh) or (Self.LJStyle = lsDp) then
            begin
              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [fsBold];

              // Canvas.Brush.Color := clBlack;
              // Canvas.FrameRect(Rect(Xpos,0,XPos+300,PageHeight));
              // Canvas.Brush.Color := clWhite;

              if Self.LJStyle = lsSh then begin
                LogoHeight := 40;
                Ypos       := Ypos + LogoHeight;
                Logorect   := rect(Round(PageWidth / 4) - (LogoHeight), Ypos - (LogoHeight), Round(PageWidth / 4) + (LogoHeight), Ypos + (LogoHeight));
                Canvas.StretchDraw(Logorect, Self.LJLogo);
              end;

              Ypos              := 0;
              Xpos              := 0;

              Canvas.Textout(Round(PageWidth / 2) - Round(Canvas.Textwidth('OCCASION') / 2), Ypos, 'OCCASION');
              Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 1.2);
              Canvas.Textout(Round(PageWidth / 2) - Round(Canvas.Textwidth(inttoStr(Self.LJOwner)) / 2), Ypos, inttoStr(Self.LJOwner));
              Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 2);
              { Impression Titre du Jeu }
              if Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) < Round(PageWidth * 0.80) then
                Canvas.Textout(Round(PageWidth / 2) - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 1]) / 2), Ypos, Self.LJLabels[labelcounter - 1, 1])
              else
              begin
                Split1  := '';
                Split2  := '';
                NewLine := False;
                for i   := 1 to Length(Self.LJLabels[labelcounter - 1, 1]) do
                begin
                  if Self.LJLabels[labelcounter - 1, 1][i] = ' ' then
                    LastCharisSpace := True
                  else
                    LastCharisSpace := False;
                  if (i > Round(Length(Self.LJLabels[labelcounter - 1, 1]) / 2)) and LastCharisSpace then
                    NewLine := True;
                  if NewLine then
                    Split2 := Split2 + Self.LJLabels[labelcounter - 1, 1][i]
                  else
                    Split1 := Split1 + Self.LJLabels[labelcounter - 1, 1][i];
                end;
                Canvas.Textout(Round(PageWidth / 2) - Round(Canvas.Textwidth(Split1) / 2), Ypos, Split1);
                Ypos := Round(Ypos + Canvas.TextHeight(AnsiUpperCase(Self.LJUrl)) * 1.2);
                Canvas.Textout(Round(PageWidth / 2) - Round(Canvas.Textwidth(Split2) / 2), Ypos, Split2);
              end;

              { Impression Prix }
              Canvas.Font.Size := 20;
              Ypos             := PageHeight - Round(Canvas.TextHeight(Self.LJLabels[labelcounter - 1, 2]) * 1.2);
              Xpos             := Round(PageWidth / 2) - Round(Canvas.Textwidth(Self.LJLabels[labelcounter - 1, 2]) / 2);
              Canvas.Textout(Xpos, Ypos, Self.LJLabels[labelcounter - 1, 2]);
            end;
            if labelcounter < Self.LJLabelsCount then
              NewPage;
          end;
          EndDoc;
        end;
      end;
    finally
      // APrinter.Free;
    end;

end;

procedure TLabelJob.SetLogo(const Value: TBitmap);
begin
  Self.LJLogo := TBitmap.Create;
  Self.LJLogo.Assign(Value);
end;

{ TTicketJob }

procedure TTicketJob.AddBox(const Title: string; Sum: Boolean; Style: BoxStyle);
begin
  if Self.TJBoxesCount = 0 then
    Self.TJBoxesNames := TStringList.Create;
  Setlength(Self.TJBoxesSum, Length(Self.TJBoxesSum) + 1);
  Setlength(Self.TJBoxesStyles, Length(Self.TJBoxesStyles) + 1);
  Self.TJBoxesCount := Self.TJBoxesCount + 1;
  Setlength(Self.TJBoxes, Self.TJBoxesCount);
  Self.TJBoxesSum[high(Self.TJBoxesSum)] := Sum;
  Self.TJBoxesNames.Add(Title);
  Self.TJBoxesStyles[high(Self.TJBoxesStyles)] := Style;
end;

procedure TTicketJob.AddCustomerLine(Title, Value: string);
begin
  Setlength(Self.TJCustomer, Length(Self.TJCustomer) + 1);
  Self.TJCustomer[high(Self.TJCustomer), 1] := Title;
  Self.TJCustomer[high(Self.TJCustomer), 2] := Value;
end;

procedure TTicketJob.AddFinancialLine(Title: string; Amount: Real);
begin
  Setlength(Self.TJFinancials, Length(Self.TJFinancials) + 1);
  Self.TJFinancials[high(Self.TJFinancials), 1] := Title;
  Self.TJFinancials[high(Self.TJFinancials), 2] := FloatToStrf(Amount, fffixed, 7, 2) + ' �';
end;

procedure TTicketJob.AddHeader(GridLine: TGridLine; box: string);
begin
end;

procedure TTicketJob.AddInTVA(Rate, Base, Tax: Real);
begin
  Setlength(Self.TJInTVA, Length(Self.TJInTVA) + 1);
  Self.TJInTVA[high(Self.TJInTVA)].Rate := Rate;
  Self.TJInTVA[high(Self.TJInTVA)].Base := Base;
  Self.TJInTVA[high(Self.TJInTVA)].Tax  := Tax;
end;

procedure TTicketJob.AddLine(Q, Price, Title, box: string; DisplayOnly: Boolean);
var
  currentbox: Integer;
begin
  currentbox := TJBoxesNames.IndexOf(box);
  Setlength(Self.TJBoxes[currentbox], Length(Self.TJBoxes[currentbox]) + 1);
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 1] := Q;
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 2] := Title;
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 3] := Price;
  if DisplayOnly then
    Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 4] := 'True'
  else
    Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 4] := 'False'
end;

procedure TTicketJob.AddLine(Q, Price, Title, box: string);
var
  currentbox: Integer;
begin
  currentbox := TJBoxesNames.IndexOf(box);
  Setlength(Self.TJBoxes[currentbox], Length(Self.TJBoxes[currentbox]) + 1);
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 1] := Q;
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 2] := Title;
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 3] := Price;
  Self.TJBoxes[currentbox, high(Self.TJBoxes[currentbox]), 4] := 'False';
end;

constructor TTicketJob.Create(Owner: Tcomponent);
begin
  inherited Create(Owner);
  TJDateTime := Now;
  TJTitle    := 'Manager Ticket';
  TJID       := '';
  TJUrl      := '';
  TJComment  := '';
  TJModel    := TmFinished;
end;

procedure TTicketJob.InternalPrint;
const
  right = 0.99;
  rightinner = 0.95;
  leftborder = 0.05;

var
  Width, AvailableWidth, AvailableHeight, Xpos, Ypos, Left, Middle, TipRectTop: Integer;
  BoxCounter, BoxlineCounter: Integer;
  aRect: Trect;
  TempStr: string;
  APrinter: TPrinter;
  TotalArticle, i, LastSpaceIndex: Integer;
  SStotal, TotalValeur: Real;
  Tiplines: array of string;
  Commentlines: array of string;
  ADevice, ADriver, APort: array [0 .. 255] of Char;
  DeviceHandle: THandle;
  DevMode: PDeviceMode;
  BoxHeight: Integer;



begin
  APrinter := Printers.Printer;
  // Printers.SetPrinter(Aprinter);
  try
    APrinter.Refresh;
    APrinter.PrinterIndex := APrinter.Printers.IndexOf(Self.TJPrinter);

    APrinter.GetPrinter(ADevice, ADriver, APort, DeviceHandle);

    if DeviceHandle = 0 then
    begin
      APrinter.PrinterIndex := APrinter.PrinterIndex;
      APrinter.GetPrinter(ADevice, ADriver, APort, DeviceHandle);
    end;

    if DeviceHandle = 0 then
      raise Exception.Create('Could Not Initialize TDeviceMode structure')
    else
      DevMode := GlobalLock(DeviceHandle);
    with DevMode^ do
    begin
      dmFields       := dmFields or DM_PRINTQUALITY;
      dmPrintQuality := -4;
    end;

    APrinter.SetPrinter(ADevice, ADriver, APort, DeviceHandle);

    if not DeviceHandle = 0 then
      GlobalUnlock(DeviceHandle);

    with APrinter do
    begin { impression Etiquette }
      Title             := Self.TJTitle;
      Orientation       := TPrinterOrientation(poportrait);
      Copies            := 1;
      Canvas.Font.Name  := 'Arial';
      Canvas.Font.Size  := 8;
      Canvas.Font.Style := [];
      BeginDoc;

      Left   := Round(PageWidth * leftborder);
      Middle := Round(PageWidth / 2);
      if TJModel = TmContinuous then
        Ypos := 0
      else
        Ypos := Canvas.TextHeight('C') * 5;

      ///
      /// Header
      ///
      if tsHeader in Self.TJStyle then
      begin
        AvailableWidth  := Round(Middle - 2 * Left);
        AvailableHeight := Round(((Canvas.TextHeight('C') * 1.2) * 4) + Canvas.TextHeight('C'));
        if (Self.TJLogo.Width > 0) and (Self.TJLogo.Height > 0) then
          if Self.TJLogo.Width / Self.TJLogo.Height > AvailableWidth / AvailableHeight then
          begin { Maximise Width }
            aRect := rect(Left, Ypos + Round((AvailableHeight - (Self.TJLogo.Height / Self.TJLogo.Width * AvailableWidth)) / 2), Middle - Left,
              Ypos + Round(AvailableWidth - ((AvailableHeight - (Self.TJLogo.Height / Self.TJLogo.Width * AvailableWidth)) / 2)));
            Canvas.StretchDraw(aRect, Self.TJLogo);
          end else begin
            aRect := rect(Left + Round((AvailableWidth - (Self.TJLogo.Width / Self.TJLogo.Height * AvailableHeight)) / 2), Ypos,
              Left + AvailableWidth - Round((AvailableWidth - (Self.TJLogo.Width / Self.TJLogo.Height * AvailableHeight)) / 2), Ypos + AvailableHeight);
            Canvas.StretchDraw(aRect, Self.TJLogo);
          end;
        Width := Canvas.Textwidth(Self.TJShopData[0]);
        Xpos  := Round(((PageWidth * right) / 2 - Width) / 2 + (PageWidth * right) / 2);
        Canvas.Textout(Xpos, Ypos, Self.TJShopData[0]);
        Ypos  := Ypos + Round(Canvas.TextHeight(Self.TJShopData[0]) * 1.2);
        Width := Canvas.Textwidth(Self.TJShopData[1]);
        Xpos  := Round(((PageWidth * right) / 2 - Width) / 2 + (PageWidth * right) / 2);
        Canvas.Textout(Xpos, Ypos, Self.TJShopData[1]);
        Ypos  := Ypos + Round(Canvas.TextHeight(Self.TJShopData[2]) * 1.2);
        Width := Canvas.Textwidth(Self.TJShopData[2]);
        Xpos  := Round(((PageWidth * right) / 2 - Width) / 2 + (PageWidth * right) / 2);
        Canvas.Textout(Xpos, Ypos, Self.TJShopData[2]);
        Ypos  := Ypos + Round(Canvas.TextHeight(Self.TJShopData[2]) * 1.2);
        Width := Canvas.Textwidth(Self.TJShopData[3]);
        Xpos  := Round(((PageWidth * right) / 2 - Width) / 2 + (PageWidth * right) / 2);
        Canvas.Textout(Xpos, Ypos, Self.TJShopData[3]);
        Ypos  := Ypos + Round(Canvas.TextHeight(Self.TJShopData[3]) * 1.2);
        Width := Canvas.Textwidth(Self.TJShopData[4]);
        Xpos  := Round(((PageWidth * right) / 2 - Width) / 2 + (PageWidth * right) / 2);
        Canvas.Textout(Xpos, Ypos, Self.TJShopData[4]);
        Ypos := Ypos + Round(Canvas.TextHeight(Self.TJShopData[4]) * 1.2);
        Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 1);
      end;
      ///
      /// BODY
      ///
      if tsBody in Self.TJStyle then
      begin

        for BoxCounter := 0 to high(Self.TJBoxes) do
        begin
          if TJBoxesStyles[BoxCounter] = bsCust then
          begin

            //
            // Titre
            //
            Canvas.Font.Size  := 20;
            Canvas.Font.Style := [fsBold];

            Ypos := Ypos + Round(Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]) / 4);
            Xpos := Round(PageWidth * leftborder);
            Canvas.Textout(Xpos, Ypos, Self.TJBoxesNames[BoxCounter]);
            Ypos := Ypos + Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]);
            Ypos := Ypos + Round(Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]) / 4);

            Canvas.Penpos := (Point(Round(PageWidth * leftborder), Ypos));
            Canvas.LineTo(Round(PageWidth * right), Ypos);
            //
            // Boite
            //
            Canvas.Font.Size   := 8;
            Canvas.Font.Style  := [];
            Ypos               := Ypos + Round(Canvas.TextHeight('CCC') * 0.5);
            for BoxlineCounter := 0 to high(Self.TJBoxes[BoxCounter]) do
            begin
              Canvas.Textout(Round(PageWidth * leftborder), Ypos, Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]) + ' ' +
                Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 2]));
              Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 1.5);
            end; // FinLignes Ds La Boite
            Canvas.Penpos := (Point(Round(PageWidth * leftborder), Ypos));
            Canvas.LineTo(Round(PageWidth * right), Ypos);
            //
            //
          end;

          if TJBoxesStyles[BoxCounter] = bsProd then
          begin
            TotalArticle := 0;
            TotalValeur  := 0;
            //
            // Titre
            //
            Canvas.Font.Size  := 20;
            Canvas.Font.Style := [fsBold];

            Ypos := Ypos + Round(Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]) / 4);
            Xpos := Round((PageWidth - Canvas.Textwidth(Self.TJBoxesNames[BoxCounter])) / 2);
            Canvas.Textout(Xpos, Ypos, Self.TJBoxesNames[BoxCounter]);
            Ypos := Ypos + Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]);
            Ypos := Ypos + Round(Canvas.TextHeight(Self.TJBoxesNames[BoxCounter]) / 4);

            Canvas.Penpos := (Point(Round(PageWidth * leftborder), Ypos));
            Canvas.LineTo(Round(PageWidth * right), Ypos);
            //
            // Boite
            //
            Canvas.Font.Size  := 8;
            Canvas.Font.Style := [];
            Ypos              := Ypos + Round(Canvas.TextHeight('CCC') * 0.5);

            for BoxlineCounter := 0 to high(Self.TJBoxes[BoxCounter]) do
            begin
              if Self.TJBoxes[BoxCounter, BoxlineCounter, 4] = 'False' then
              begin
                Canvas.Textout(Round(PageWidth * leftborder), Ypos, Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]) + ' ' +
                  Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 2]));
                SStotal := StrToInt(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]) * strtofloat(Self.TJBoxes[BoxCounter, BoxlineCounter, 3]);
                TempStr := FloatToStrf(SStotal, fffixed, 7, 2) + ' �';
                Xpos    := Round(PageWidth * right) - Canvas.Textwidth(TempStr);
                Canvas.Textout(Xpos, Ypos, Trim(TempStr));
                Ypos         := Ypos + Round(Canvas.TextHeight('CCC') * 1.5);
                TotalArticle := TotalArticle + StrToInt(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]);
                TotalValeur  := TotalValeur + SStotal;
              end else begin
                Canvas.Textout(Round(PageWidth * leftborder), Ypos, Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 2]));
                Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 1.5);
              end;
            end; // FinLignes Ds La Boite

            Canvas.Penpos := (Point(Round(PageWidth * leftborder), Ypos));
            Canvas.LineTo(Round(PageWidth * right), Ypos);
            //
            //
            if Self.TJBoxesSum[BoxCounter] then
            begin
              Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 0.5);
              Canvas.Textout(Round(PageWidth * leftborder), Ypos, inttoStr(TotalArticle) + ' article(s), valeur totale :');
              Xpos := Round(PageWidth * right) - Canvas.Textwidth(FloatToStrf(TotalValeur, fffixed, 7, 2) + ' �');
              Canvas.Textout(Xpos, Ypos, FloatToStrf(TotalValeur, fffixed, 7, 2) + ' �');
              Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 2);
            end;
          end
        end; // Fin Boite
      end;

      if tsFinancial in Self.TJStyle then
      begin
        for BoxCounter := 0 to high(Self.TJFinancials) do
        begin
          Canvas.Textout(Round(PageWidth * leftborder), Ypos, Self.TJFinancials[BoxCounter, 1]);
          Xpos := Round(PageWidth * right) - Canvas.Textwidth(Self.TJFinancials[BoxCounter, 2]);
          Canvas.Textout(Xpos, Ypos, Self.TJFinancials[BoxCounter, 2]);
          Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 1.2);
        end;
        Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 0.5);
      end;

      if tsCustomer in Self.TJStyle then
      begin
        for BoxCounter := 0 to high(Self.TJCustomer) do
        begin
          Canvas.Textout(Round(PageWidth * leftborder), Ypos, Self.TJCustomer[BoxCounter, 1]);
          Xpos := Round(PageWidth * right) - Canvas.Textwidth(Self.TJCustomer[BoxCounter, 2]);
          Canvas.Textout(Xpos, Ypos, Self.TJCustomer[BoxCounter, 2]);
          Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 1.2);
        end;
        Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 0.5);
      end;

      if TJModel = TmContinuous then
      begin
        ///
        /// FOOTER
        ///
        if tsFooter in Self.TJStyle then
        begin
          TempStr := FormatDateTime('"Le" DD MMMM YYYY "�" hh:mm', TJDateTime);
          Xpos    := Round((PageWidth - Canvas.Textwidth(TempStr)) / 2);
          Canvas.Textout(Xpos, Ypos, TempStr);
          if TJID <> '' then
          begin
            Ypos    := Ypos + Round(Canvas.TextHeight('CCC') * 1);
            TempStr := TJID;
            Xpos    := Round((PageWidth - Canvas.Textwidth(TempStr)) / 2);
            Canvas.Textout(Xpos, Ypos, TempStr);
            Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 2);
          end else begin
            Ypos := Ypos + Round(Canvas.TextHeight('CCC') * 2);
          end;
          Canvas.Font.Size  := 14;
          Canvas.Font.Style := [fsBold];
          Xpos              := Round((PageWidth - Canvas.Textwidth(Self.TJUrl)) / 2);
          Canvas.Textout(Xpos, Ypos, Self.TJUrl);
        end;
        ///
        /// TIPBOX
        ///
        if tsTip in Self.TJStyle then
        begin
          Randomize;
          i := Trunc(Random(RemoteDB.Tips.Recordcount));
          RemoteDB.Tips.First;
          if not RemoteDB.Tips.Eof then
          begin
            while i <> 0 do
            begin
              RemoteDB.Tips.Next;
              i := i - 1;
            end;
            Canvas.Font.Name  := 'Arial';
            Canvas.Font.Size  := 8;
            Canvas.Font.Style := [];
            Ypos              := Ypos + Round(Canvas.TextHeight('CCC') * 2);
            if Canvas.Textwidth(RemoteDB.Tips.Fieldbyname('tipstext').AsString) > PageWidth * rightinner then
            begin
              // Calcul des lignes
              LastSpaceIndex := 0;
              Setlength(Tiplines, 1);
              for i := 1 to Length(RemoteDB.Tips.Fieldbyname('tipstext').AsString) do
              begin
                Tiplines[high(Tiplines)] := Tiplines[high(Tiplines)] + RemoteDB.Tips.Fieldbyname('tipstext').AsString[i];
                if RemoteDB.Tips.Fieldbyname('tipstext').AsString[i] = ' ' then
                  LastSpaceIndex := i;
                if Canvas.Textwidth(Tiplines[high(Tiplines)]) > PageWidth * rightinner then
                begin
                  TempStr                  := RightStr(Tiplines[high(Tiplines)], (i - LastSpaceIndex));
                  Tiplines[high(Tiplines)] := LeftStr(Tiplines[high(Tiplines)], (Length(Tiplines[high(Tiplines)]) - (i - LastSpaceIndex)));
                  Setlength(Tiplines, Length(Tiplines) + 1);
                  Tiplines[high(Tiplines)] := TempStr;
                end;
              end;
              // Impression des lignes
              Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right),
                Ypos + Round(Canvas.TextHeight('C') * 1.2 * (Length(Tiplines) + 2))));
              for i := 0 to high(Tiplines) do
              begin
                Ypos := Ypos + Round(Canvas.TextHeight('C') * 1.2);
                Xpos := Round((PageWidth - Canvas.Textwidth(Tiplines[i])) / 2);
                Canvas.Textout(Xpos, Ypos, Tiplines[i]);
              end;
            end else begin
              Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right), Ypos + Canvas.TextHeight('C') * 3));
              Ypos := Ypos + Round(Canvas.TextHeight('C') * 2 / 2);
              Xpos := Round((PageWidth - Canvas.Textwidth(RemoteDB.Tips.Fieldbyname('tipstext').AsString)) / 2);
              Canvas.Textout(Xpos, Ypos, RemoteDB.Tips.Fieldbyname('tipstext').AsString);
            end;
          end;
        end;
        //
        // CommentBox
        //

        if Self.TJComment <> '' then
        begin
          Canvas.Font.Name  := 'Arial';
          Canvas.Font.Size  := 8;
          Canvas.Font.Style := [];
          Ypos              := Ypos + Round(Canvas.TextHeight('CCC') * 2);
          if Canvas.Textwidth(Self.TJComment) > PageWidth * 0.9 then begin
            // Calcul des lignes
            LastSpaceIndex := 0;
            Setlength(Commentlines, 1);
            for i := 1 to Length(Self.TJComment) do
            begin
              if Self.TJComment[i] = Chr(13) then  Setlength(Commentlines, Length(Commentlines) + 1)
              else begin
                Commentlines[high(Commentlines)] := Commentlines[high(Commentlines)] + Self.TJComment[i];
                if Self.TJComment[i] = ' ' then
                  LastSpaceIndex := i;
                if Canvas.Textwidth(Commentlines[high(Commentlines)]) > PageWidth * rightinner then
                begin
                  TempStr                          := RightStr(Commentlines[high(Commentlines)], (i - LastSpaceIndex));
                  Commentlines[high(Commentlines)] := LeftStr(Commentlines[high(Commentlines)],
                    (Length(Commentlines[high(Commentlines)]) - (i - LastSpaceIndex)));
                  Setlength(Commentlines, Length(Commentlines) + 1);
                  Commentlines[high(Commentlines)] := TempStr;
                end;
              end;
            end;
            // Impression des lignes
            //Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right),
            //  Ypos + Round(Canvas.TextHeight('C') * 1.2 * (Length(Commentlines) + 2))));
            for i := 0 to high(Commentlines) do
            begin
              Ypos := Ypos + Round(Canvas.TextHeight('C') * 1.2);
              // Xpos := Round((PageWidth - Canvas.Textwidth(Commentlines[i])) / 2);
              Xpos := 30;
              Canvas.Textout(Xpos, Ypos, Commentlines[i]);
            end;
          end else begin
            Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right), Ypos + Canvas.TextHeight('C') * 3));
            Ypos := Ypos + Round(Canvas.TextHeight('C') * 2 / 2);
            // Xpos := Round((PageWidth - Canvas.Textwidth(Self.TJComment)) / 2);
            Xpos := 30;
            Canvas.Textout(Xpos, Ypos, Self.TJComment);
          end;
        end;
      end;

      if TJModel = TmFinished then
      begin
        Ypos := PageHeight;
        ///
        /// TIPBOX
        ///
        if tsTip in Self.TJStyle then
        begin
          if not RemoteDB.Tips.Eof and RemoteDB.Tips.bof then
          begin
            Randomize;
            i := Trunc(Random(RemoteDB.Tips.Recordcount));
            RemoteDB.Tips.First;
            if not RemoteDB.Tips.Eof then
            begin
              while i <> 0 do
              begin
                RemoteDB.Tips.Next;
                i := i - 1;
              end;
              Canvas.Font.Name  := 'Arial';
              Canvas.Font.Size  := 8;
              Canvas.Font.Style := [];
              Ypos              := Ypos - Round(Canvas.TextHeight('CCC') * 2);
              begin
                // Calcul des lignes
                LastSpaceIndex := 0;
                Setlength(Tiplines, 1);
                for i := 1 to Length(RemoteDB.Tips.Fieldbyname('tipstext').AsString) do
                begin
                  if (RemoteDB.Tips.Fieldbyname('tipstext').AsString[i] = chr(13)) or (RemoteDB.Tips.Fieldbyname('tipstext').AsString[i] = chr(10)) then
                  begin
                    Setlength(Tiplines, Length(Tiplines) + 1)
                  end else begin
                    Tiplines[high(Tiplines)] := Tiplines[high(Tiplines)] + RemoteDB.Tips.Fieldbyname('tipstext').AsString[i];
                    if RemoteDB.Tips.Fieldbyname('tipstext').AsString[i] = ' ' then
                      LastSpaceIndex := i;
                    if Canvas.Textwidth(Tiplines[high(Tiplines)]) > PageWidth * rightinner then
                    begin
                      TempStr                  := RightStr(Tiplines[high(Tiplines)], (i - LastSpaceIndex));
                      Tiplines[high(Tiplines)] := LeftStr(Tiplines[high(Tiplines)], (Length(Tiplines[high(Tiplines)]) - (i - LastSpaceIndex)));
                      Setlength(Tiplines, Length(Tiplines) + 1);
                      Tiplines[high(Tiplines)] := TempStr;
                    end;
                  end;
                end;
                // Impression des lignes
                TipRectTop := Ypos - Round(Canvas.TextHeight('C') * 1.2 * (Length(Tiplines) + 2));
                Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right), TipRectTop));
                Ypos  := Ypos - Round(Canvas.TextHeight('C') * 1);
                for i := 0 to high(Tiplines) do
                begin
                  Ypos := Ypos - Round(Canvas.TextHeight('C') * 1.2);
                  Xpos := Round((PageWidth - Canvas.Textwidth(Tiplines[high(Tiplines) - i])) / 2);
                  Canvas.Textout(Xpos, Ypos, Tiplines[high(Tiplines) - i]);
                end;
              end;
            end;
            Ypos := TipRectTop;
          end;
        end;

        ///
        /// CommentBOX
        ///
        if TJComment <> '' then
        begin
          Canvas.Font.Name  := 'Arial';
          Canvas.Font.Size  := 8;
          Canvas.Font.Style := [];
          Ypos              := Ypos - Round(Canvas.TextHeight('CCC') * 2);
          // Calcul des lignes
          LastSpaceIndex := 0;
          Setlength(Commentlines, 1);
          for i := 1 to Length(TJComment) do
          begin
            if (TJComment[i] = chr(13)) or (TJComment[i] = chr(10)) then
            begin
              Setlength(Commentlines, Length(Commentlines) + 1)
            end else begin
              Commentlines[high(Commentlines)] := Commentlines[high(Commentlines)] + TJComment[i];
              if TJComment[i] = ' ' then
                LastSpaceIndex := i;
              if Canvas.Textwidth(Commentlines[high(Commentlines)]) > PageWidth * rightinner then
              begin
                TempStr                          := RightStr(Commentlines[high(Commentlines)], (i - LastSpaceIndex));
                Commentlines[high(Commentlines)] := LeftStr(Commentlines[high(Commentlines)],
                  (Length(Commentlines[high(Commentlines)]) - (i - LastSpaceIndex)));
                Setlength(Commentlines, Length(Commentlines) + 1);
                Commentlines[high(Commentlines)] := TempStr;
              end;
            end;
          end;
          // Impression des lignes
          TipRectTop := Ypos - Round(Canvas.TextHeight('C') * 1.2 * (Length(Commentlines) + 2));
          Canvas.Rectangle(rect(Round(PageWidth * leftborder), Ypos, Round(PageWidth * right), TipRectTop));
          Ypos  := Ypos - Round(Canvas.TextHeight('C') * 1);
          for i := 0 to high(Commentlines) do
          begin
            Ypos := Ypos - Round(Canvas.TextHeight('C') * 1.2);
            Xpos := Round((PageWidth - Canvas.Textwidth(Commentlines[high(Commentlines) - i])) / 2);
            Canvas.Textout(Xpos, Ypos, Commentlines[high(Commentlines) - i]);
          end;
        end;
        Ypos := TipRectTop;

        ///
        /// FOOTER
        ///
        if tsFooter in Self.TJStyle then
        begin

          /// URL
          Ypos              := Ypos - Round(Canvas.TextHeight('CCC') * 1);
          Canvas.Font.Size  := 14;
          Canvas.Font.Style := [fsBold];
          Ypos              := Ypos - Canvas.TextHeight('CCC') * 1;
          Xpos              := Round((PageWidth - Canvas.Textwidth(Self.TJUrl)) / 2);
          Canvas.Textout(Xpos, Ypos, Self.TJUrl);
          Canvas.Font.Name  := 'Arial';
          Canvas.Font.Size  := 8;
          Canvas.Font.Style := [];

          /// TJID
          if TJID <> '' then
          begin
            Ypos    := Ypos - Round(Canvas.TextHeight('CCC') * 1);
            TempStr := TJID;
            Xpos    := Round((PageWidth - Canvas.Textwidth(TempStr)) / 2);
            Canvas.Textout(Xpos, Ypos, TempStr);
            Ypos := Ypos - Round(Canvas.TextHeight('CCC') * 1);
          end else begin
            Ypos := Ypos - Round(Canvas.TextHeight('CCC') * 1);
          end;

          // TIME
          TempStr := FormatDateTime('"Le" DD MMMM YYYY "�" hh:mm', TJDateTime);
          Xpos    := Round((PageWidth - Canvas.Textwidth(TempStr)) / 2);
          Canvas.Textout(Xpos, Ypos, TempStr);

        end; // Tsfooter
      end;

      EndDoc;
    end; // Whith Printer do begin
  finally
    // Aprinter.Free;
  end; // Endif ticket

end;

procedure TTicketJob.InternalPrintOpos;
var
  Width, AvailableWidth, AvailableHeight, Xpos, Ypos, Left, Middle, TipRectTop: Integer;
  BoxCounter, BoxlineCounter: Integer;
  TempStr: string;
  Num, TotalArticle, i, LastSpaceIndex: Integer;
  SStotal, TotalValeur: Real;
  Tiplines: array of string;
  ADevice, ADriver, APort: array [0 .. 255] of Char;
  DeviceHandle: THandle;
  DevMode: PDeviceMode;
  BoxHeight: Integer;
  PosPrinter: TOPOSPosPrinter;
  Data: WideString;

begin

  PosPrinter := TOPOSPosPrinter.Create(Self);
  try
    PosPrinter.Open(WideString('ticket'));
    PosPrinter.Claim(200);
    PosPrinter.DeviceEnabled    := True;
    PosPrinter.RecLetterQuality := True;
    PosPrinter.CharacterSet     := 2;
    PosPrinter.AsyncMode        := False;

    ///
    /// Header
    ///
    if tsHeader in Self.TJStyle then
    begin
      Data := '-2';
      Num  := 3;
      PosPrinter.DirectIO(111, Num, Data);
      PosPrinter.RecLineHeight := 14;
    end;
    ///
    /// BODY
    ///
    if tsBody in Self.TJStyle then
    begin

      for BoxCounter := 0 to high(Self.TJBoxes) do
      begin
        if TJBoxesStyles[BoxCounter] = bsCust then
        begin

          //
          // Titre
          //

          PosPrinter.PrintNormal(2, chr(10) + chr(13));
          PosPrinter.PrintNormal(2, chr(27) + '!' + chr(57) + chr(27) + '|cA' + WideString(Self.TJBoxesNames[BoxCounter]) + chr(13));
          PosPrinter.PrintNormal(2, '__________________________________________' + chr(10) + chr(13));

          //
          // Boite
          //
          for BoxlineCounter := 0 to high(Self.TJBoxes[BoxCounter]) do
          begin
            PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + WideString(Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]) + ' ' +
              Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 2])) + chr(10) + chr(13));
          end; // FinLignes Ds La Boite
          PosPrinter.PrintNormal(2, '__________________________________________' + chr(10) + chr(13));
          //
          //
        end;

        if TJBoxesStyles[BoxCounter] = bsProd then
        begin
          TotalArticle := 0;
          TotalValeur  := 0;
          //
          // Titre
          //

          PosPrinter.PrintNormal(2, chr(10) + chr(13));
          PosPrinter.PrintNormal(2, chr(27) + '!' + chr(57) + chr(27) + '|cA' + Self.TJBoxesNames[BoxCounter] + chr(13));
          PosPrinter.PrintNormal(2, '__________________________________________' + chr(10) + chr(13));


          //
          // Boite
          //

          for BoxlineCounter := 0 to high(Self.TJBoxes[BoxCounter]) do
          begin
            if Self.TJBoxes[BoxCounter, BoxlineCounter, 4] = 'False' then
            begin
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + Self.TJBoxes[BoxCounter, BoxlineCounter, 1] + ' ' + Self.TJBoxes[BoxCounter, BoxlineCounter, 2]
                + chr(10) + chr(13));
              SStotal := StrToInt(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]) * strtofloat(Self.TJBoxes[BoxCounter, BoxlineCounter, 3]);
              TempStr := FloatToStrf(SStotal, fffixed, 7, 2) + ' EUR';
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(50) + TempStr + chr(10) + chr(13));
              TotalArticle := TotalArticle + StrToInt(Self.TJBoxes[BoxCounter, BoxlineCounter, 1]);
              TotalValeur  := TotalValeur + SStotal;
            end else begin
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + Trim(Self.TJBoxes[BoxCounter, BoxlineCounter, 2]) + chr(10) + chr(13));
            end;
          end; // FinLignes Ds La Boite

          PosPrinter.PrintNormal(2, '__________________________________________' + chr(10) + chr(13));

          //
          //
          if Self.TJBoxesSum[BoxCounter] then
          begin
            PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + inttoStr(TotalArticle) + ' article(s), valeur totale :' + ' ' + FloatToStrf(TotalValeur, fffixed,
              7, 2) + ' EUR' + chr(10) + chr(13));
          end;
        end
      end; // Fin Boite
    end;

    if tsFinancial in Self.TJStyle then
    begin
      for BoxCounter := 0 to high(Self.TJFinancials) do
      begin
        PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + Self.TJFinancials[BoxCounter, 1] + ' ' + Self.TJFinancials[BoxCounter, 2] + chr(10) + chr(13));
      end;
    end;

    if tsCustomer in Self.TJStyle then
    begin
      for BoxCounter := 0 to high(Self.TJCustomer) do
      begin
        PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + Self.TJCustomer[BoxCounter, 1] + ' ' + Self.TJCustomer[BoxCounter, 2] + chr(10) + chr(13));
      end;
    end;

    ///
    /// FOOTER
    ///
    if tsFooter in Self.TJStyle then
    begin
      TempStr := FormatDateTime('"Le" DD MMMM YYYY "�" hh:mm', TJDateTime);
      PosPrinter.PrintNormal(2, chr(13) + chr(10));
      PosPrinter.PrintNormal(2, chr(27) + '|cA' + TempStr + '' + chr(10) + chr(13));

      if TJID <> '' then
      begin

        TempStr := TJID;
        PosPrinter.PrintNormal(2, chr(27) + '|cA' + TempStr + '' + chr(10) + chr(13));
      end else begin
      end;

      PosPrinter.PrintNormal(2, chr(27) + '!' + chr(57) + chr(27) + '|cA' + TJUrl + chr(13));
    end;
    ///
    /// TIPBOX
    ///
    if tsTip in Self.TJStyle then
    begin
      Randomize;
      i := Trunc(Random(RemoteDB.Tips.Recordcount));
      RemoteDB.Tips.First;
      if not RemoteDB.Tips.Eof then
      begin
        while i <> 0 do
        begin
          RemoteDB.Tips.Next;
          i := i - 1;
        end;
        PosPrinter.PrintNormal(2, chr(13) + chr(10)
          { +chr(13)+chr(10)+chr(13)+chr(10) } );
        PosPrinter.PrintNormal(2, chr(27) + '|cA' + RemoteDB.TipsTipsText.AsString + chr(10) + chr(13));
      end; // If tips EOF
    end; // If Tips in TJSTYLE

    ///
    /// TIPBOX
    ///
    if TJComment <> '' then
    begin
      PosPrinter.PrintNormal(2, chr(13) + chr(10)
        { +chr(13)+chr(10)+chr(13)+chr(10) } );
      PosPrinter.PrintNormal(2, chr(27) + '|cA' + TJComment + chr(10) + chr(13));

    end; // If Comment not empty

    if tsFinancial in Self.TJStyle then
    begin
    end;
    PosPrinter.PrintNormal(2, chr(13) + chr(10) + chr(13) + chr(10) + chr(13) + chr(10));
    PosPrinter.PrintNormal(2, chr(13) + chr(10) + chr(13) + chr(10) + chr(13) + chr(10));
    PosPrinter.CutPaper(70);
  finally
    PosPrinter.Free;
  end;

end;

procedure TTicketJob.Print;
begin
  TJStyle := [tsHeader, tsFooter, tsGrid];
  TJStyle := [tsHeader, tsFooter, tsCustomer, tsFinancial, tsBody, tsTip];
  InternalPrint;
end;

procedure TTicketJob.PrintOpos;
begin
  TJStyle := [tsHeader, tsFooter, tsGrid];
  TJStyle := [tsHeader, tsFooter, tsCustomer, tsFinancial, tsBody, tsTip];
  InternalPrintOpos;
end;

procedure TTicketJob.SetLogo(const Value: TBitmap);
begin
  Self.TJLogo := TBitmap.Create;
  Self.TJLogo.Assign(Value);
end;

procedure TTicketJob.Setshopdata(const Value: TStrings);
begin
  Self.TJShopData := TStringList.Create;
  Self.TJShopData.Assign(Value);
end;

function IsInteger(totest: string): Boolean;
var
  test: Integer;
begin
  try
    Result := True;
    test   := StrToInt(totest);
  except
    on E: EConvertError do
    begin
      Result := False;
    end;
  end;
end;

{ TLabelAddress }

constructor TLabelAddress.Create;
begin
  PrintDialog := TprintDlg.Create(nil);
  LAFontSize  := 0;
  inherited Create;
end;

procedure TLabelAddress.Print(var Address: TStrings; ShowDialog: Boolean);
var
  LogoHeight, Ypos, Xpos, i: Integer;
  Logorect: Trect;
  Split1, Split2: string;
  NewLine, LastCharisSpace: Boolean;
  labelcounter: Integer;
  ADevice, ADriver, APort: array [0 .. 255] of Char;
  DeviceHandle: THandle;
  Device: array [0 .. 255] of Char;
  Driver: array [0 .. 255] of Char;
  Port: array [0 .. 255] of Char;
  hDMode: THandle;
  PDMode: PDEVMODE;
  StartJob: Boolean;
begin
  i := Printer.Printers.IndexOf(Self.LAPrinter);
  if i >= 0 then
    Printer.PrinterIndex := i;

  Printer.PrinterIndex := Printer.PrinterIndex;
  Printer.GetPrinter(Device, Driver, Port, hDMode);
  if hDMode <> 0 then
  begin
    PDMode := GlobalLock(hDMode);
    if PDMode <> nil then
    begin
      GlobalUnlock(hDMode);
    end;
  end;
  Printer.PrinterIndex    := Printer.PrinterIndex;
  Printers.Printer.Copies := 1;
  StartJob                := True;
  if ShowDialog then
  begin
    if PrintDialog.Execute then
    begin
      if PrintDialog.ExecuteResult = False then
        StartJob := False;
    end;
  end;
  if StartJob then
    try
      with Printers.Printer do
      begin { impression Etiquette }
        Title            := 'Address';
        Copies           := 1;
        Canvas.Font.Name := 'Arial';
        if LAFontSize = 0 then
        begin
          Canvas.Font.Size := 20;
        end else begin
          Canvas.Font.Size := LAFontSize;
        end;
        Canvas.Font.Style := [];
        BeginDoc;
        //
        // Calcul Font Size
        //
        while Round(Canvas.TextHeight('CCC') * 1.2 * Address.Count) > Round(Printer.PageHeight * 0.90) do
        begin
          Canvas.Font.Size := Canvas.Font.Size - 1;
        end;
        Ypos  := 0;
        Ypos  := Ypos + Round(Canvas.TextHeight('OCCASION') * 0.2);
        for i := 0 to Address.Count - 1 do
        begin
          Xpos := Round(Round(PageWidth / 2) - Canvas.Textwidth(Address.Strings[i]) / 2);
          Canvas.Textout(Xpos, Ypos, Address.Strings[i]);
          Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 1.2);
        end;
        EndDoc;
      end;
    finally
      // APrinter.Free;
    end;

end;

{ TLabelRent }

constructor TLabelRent.Create;
begin
  PrintDialog := TprintDlg.Create(nil);
  inherited Create;
end;

procedure TLabelRent.Print(Model, Name: string; ID: Integer; ShowDialog: Boolean);
var
  barcode: TASBarCode;
  Ypos, Xpos, i: Integer;
  Device: array [0 .. 255] of Char;
  Driver: array [0 .. 255] of Char;
  Port: array [0 .. 255] of Char;
  hDMode: THandle;
  PDMode: PDEVMODE;
  StartJob: Boolean;
begin
  i := Printer.Printers.IndexOf(Self.LRPrinter);
  if i >= 0 then
    Printer.PrinterIndex := i;

  Printer.PrinterIndex := Printer.PrinterIndex;
  Printer.GetPrinter(Device, Driver, Port, hDMode);
  if hDMode <> 0 then
  begin
    PDMode := GlobalLock(hDMode);
    if PDMode <> nil then
    begin
      GlobalUnlock(hDMode);
    end;
  end;
  Printer.PrinterIndex    := Printer.PrinterIndex;
  Printers.Printer.Copies := 1;
  StartJob                := True;
  if ShowDialog then
  begin
    if PrintDialog.Execute then
    begin
      if PrintDialog.ExecuteResult = False then
        StartJob := False;
    end;
  end;
  if StartJob then
  begin
    barcode := TASBarCode.Create(nil);
    try
      with Printers.Printer do
      begin { impression Etiquette }
        Title             := 'RentSticker';
        Copies            := 1;
        Orientation       := TPrinterOrientation(POLandscape);
        Canvas.Font.Name  := 'Arial';
        Canvas.Font.Size  := 8;
        Canvas.Font.Style := [];
        BeginDoc;
        if checkean(Model) then
        begin
          barcode.Typ    := bcCodeEAN13;
          barcode.Text   := Model;
          barcode.Top    := Round(PageHeight * 0.05);
          barcode.Left   := Round(PageWidth * 0.05);
          barcode.Height := Round(PageHeight / 3 * 0.90);
          barcode.Width  := Round(PageWidth * 0.90);
          barcode.Angle  := 0;
          barcode.DrawBarcode(Canvas);
        end;
        //
        // Calcul Font Size
        //

        Ypos := Round(PageHeight / 2);
        Xpos := Round(Round(PageWidth / 2) - Canvas.Textwidth(inttoStr(ID)) / 2);
        Canvas.Textout(Xpos, Ypos, inttoStr(ID));

        Ypos := Round(PageHeight / 4 * 3);
        Xpos := Round(Round(PageWidth / 2) - Canvas.Textwidth(name) / 2);
        Canvas.Textout(Xpos, Ypos, name);

        for i := 0 to 5 do
        begin
          // Xpos:=Round(  Round(PageWidth/2) - Canvas.Textwidth(Address.Strings[i])/2  );
          // Canvas.Textout(Xpos,Ypos,Address.Strings[i]);
          // Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 1.2);
        end;
        EndDoc;
        Orientation := TPrinterOrientation(poportrait);
      end;
    finally
      barcode.Free;
    end;
  end;
end;

function StreamToStr(const aStream: TMemoryStream): string;
var
  SS: TStringStream;
begin
  SS := TStringStream.Create('');
  try
    SS.CopyFrom(aStream, 0);
    Result := SS.DataString;
  finally
    SS.Free;
  end;
end;

function ExTractFromHtml(BPsource, StartStr, EndStr: string): string;
var
  StartPos, EndPos, i: Integer;
  EndSubStr: string;
begin
  StartPos  := Pos(StartStr, BPsource);
  EndSubStr := RightStr(BPsource, Length(BPsource) - (StartPos + Length(StartStr)));
  EndPos    := Pos(EndStr, EndSubStr);
  EndPos    := StartPos + EndPos;
  if ((StartPos = 0) or (EndPos = 0)) then
  begin
  end else begin
    for i := StartPos + Length(StartStr) to EndPos + Length(StartStr) - 1 do
    begin
      Result := Result + BPsource[i];
    end;
  end;
end;

function InvertStr(source: string): string;
var
  i: Integer;
begin
  Result := '';
  for i  := Length(source) downto 1 do
  begin
    Result := Result + source[i];
  end;
end;

function RemovePunct(source: string): string;
var
  i: Integer;
begin
  Result := '';
  for i  := 1 to Length(source) do
  begin
    if (source[i] <> ',') and (source[i] <> '.') and (source[i] <> ';') and (source[i] <> ':') then
      Result := Result + source[i]
    else
      Result := Result + ' ';
  end;
end;

{ TLabelCODE39 }

constructor TLabelCODE39.Create;
begin
  PrintDialog := TprintDlg.Create(nil);
  inherited Create;
end;

procedure TLabelCODE39.Print(Model, Name: string; ID: Integer; ShowDialog: Boolean);
var
  barcode: TASBarCode;
  Ypos, Xpos, i: Integer;
  Device: array [0 .. 255] of Char;
  Driver: array [0 .. 255] of Char;
  Port: array [0 .. 255] of Char;
  hDMode: THandle;
  PDMode: PDEVMODE;
  StartJob: Boolean;
begin
  i := Printer.Printers.IndexOf(Self.LRPrinter);
  if i >= 0 then
    Printer.PrinterIndex := i;

  Printer.PrinterIndex := Printer.PrinterIndex;
  Printer.GetPrinter(Device, Driver, Port, hDMode);
  if hDMode <> 0 then
  begin
    PDMode := GlobalLock(hDMode);
    if PDMode <> nil then
    begin
      GlobalUnlock(hDMode);
    end;
  end;
  Printer.PrinterIndex    := Printer.PrinterIndex;
  Printers.Printer.Copies := 1;
  StartJob                := True;
  if ShowDialog then
  begin
    if PrintDialog.Execute then
    begin
      if PrintDialog.ExecuteResult = False then
        StartJob := False;
    end;
  end;
  if StartJob then
  begin
    barcode := TASBarCode.Create(nil);
    try
      with Printers.Printer do
      begin { impression Etiquette }
        Title             := 'RentSticker';
        Copies            := 1;
        Orientation       := TPrinterOrientation(POLandscape);
        Canvas.Font.Name  := 'Arial';
        Canvas.Font.Size  := 8;
        Canvas.Font.Style := [];
        BeginDoc;
        if checkean(Model) then
        begin
          barcode.Typ    := bcCode39;
          barcode.Text   := Model;
          barcode.Top    := Round(PageHeight * 0.05);
          barcode.Left   := Round(PageWidth * 0.05);
          barcode.Height := Round(PageHeight / 3 * 0.90);
          barcode.Width  := Round(PageWidth * 0.90);
          barcode.Angle  := 0;
          barcode.DrawBarcode(Canvas);
        end;
        //
        // Calcul Font Size
        //

        Ypos := Round(PageHeight / 2);
        Xpos := Round(Round(PageWidth / 2) - Canvas.Textwidth(inttoStr(ID)) / 2);
        Canvas.Textout(Xpos, Ypos, inttoStr(ID));

        Ypos := Round(PageHeight / 4 * 3);
        Xpos := Round(Round(PageWidth / 2) - Canvas.Textwidth(name) / 2);
        Canvas.Textout(Xpos, Ypos, name);

        for i := 0 to 5 do
        begin
          // Xpos:=Round(  Round(PageWidth/2) - Canvas.Textwidth(Address.Strings[i])/2  );
          // Canvas.Textout(Xpos,Ypos,Address.Strings[i]);
          // Ypos := Ypos + Round(Canvas.TextHeight('OCCASION') * 1.2);
        end;
        EndDoc;
        Orientation := TPrinterOrientation(poportrait);
      end;
    finally
      barcode.Free;
    end;
  end;
end;

function Base64EncodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: Integer;
begin
  ilen := Length(Input);
  Setlength(Result, (ilen div 3) * 4);
  rlen := Base64Encode(@Input[0], @Result[0], ilen);
  Setlength(Result, rlen);
end;

function Base64DecodeBytes(Input: TBytes): TBytes;
var
  ilen, rlen: Integer;
begin
  ilen := Length(Input);
  Setlength(Result, (ilen div 4) * 3);
  rlen := Base64Decode(@Input[0], @Result[0], ilen);
  // Adjust the length of the output buffer according to the number of valid
  // b64 characters
  Setlength(Result, rlen);
end;

function EncryptStringDES(source: string): string;
var
  des: TDCP_des;
  src, enc: TBytes;
  index, slen, bsize, padsize: Integer;
begin
  des := TDCP_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), tdcp_sha1);

    src  := TEncoding.UTF8.GetBytes(source);
    slen := Length(src);
    // Add padding
    bsize   := des.BlockSize div 8;
    padsize := bsize - (slen mod bsize);
    Inc(slen, padsize);
    Setlength(src, slen);
    for index := padsize downto 1 do
    begin
      src[slen - index] := padsize;
    end;

    Setlength(enc, slen);
    des.EncryptCBC(src[0], enc[0], slen);
    Result := EncdDecd.EncodeBase64(@enc[0], Length(enc));
  finally
    des.Free;
  end;
end;

function DecryptStringDES(ASource: string): string;
var
  des: TDCP_des;
  src, dec: TBytes;
  pad, slen: Integer;
begin
  des := TDCP_des.Create(nil);
  try
    des.InitStr(AnsiString('PEp7XustuPawreF8'), tdcp_sha1);

    src  := EncdDecd.DecodeBase64(AnsiString(ASource));
    slen := Length(src);
    Setlength(dec, slen);
    des.DecryptCBC(src[0], dec[0], slen);

    // Remove padding
    pad := dec[slen - 1];
    Setlength(dec, slen - pad);

    Result := TEncoding.UTF8.GetString(dec);
  finally
    des.Free;
  end;
end;

end.
