unit QExport4DBFPATCH;

{$I QExport4VerCtrl.inc}

interface

uses QExport4, Classes, SysUtils, QExport4IniFiles;

const
  dBaseIII     = $03;
  dBaseIIIMemo = $83;
  dBaseIVMemo  = $8B;
  dBaseIVSQL   = $63;
  FoxPro       = $05;
  FoxProMemo   = $F5;

  dftString  = 'C'; // char (symbol(s))
  dftBoolean = 'L'; // boolean
  dftNumber  = 'N'; // number
  dftDate    = 'D'; // date
  dftMemo    = 'M'; // memo
  dftFloat   = 'F'; // float -- not in DBaseIII

  MAX_FIELD_NAME_LEN = 10;

type

  TFieldName = array [1 .. MAX_FIELD_NAME_LEN] of AnsiChar;

  TDBFHeader = packed record { *** First record ***  L=32 }
    { +0 } DBType,
    { +1 } Year,
    { +2 } Month,
    { +3 } Day: Byte;
    { +4 } RecCount: LongInt;
    { +8 } HeaderSize: Word;
    { +10 } RecordSize: LongInt;
    { +14 } FDelayTrans: Byte;
    { +15 } Reserve2: array [1 .. 13] of Byte;
    { +28 } FlagMDX: Byte;
    { +29 } Reserve3: array [1 .. 3] of Byte;
  end;

  PDBFFieldDescriptor = ^TDBFFieldDescriptor;

  TDBFFieldDescriptor = packed record { *** Field Descriptor *** L= 32 }
    { +0 } FieldName: TFieldName;
    (* dee    {+10} FieldEnd: Char;
      {+11} FieldType: Char;
    *)
    { +10 } FieldEnd: AnsiChar;
    { +11 } FieldType: AnsiChar;
    { +12 } FieldDisp: LongInt;
    { +16 } FieldLen,
    { +17 } FieldDec: Byte;
    { +18 } A1: array [1 .. 13] of Byte;
    { +31 } FlagTagMDX: Byte;
  end;

  // TMemoType = (mtNone, mtDBT, mtFPT);
  TQExport4DBF = class;

  TQDBFWriter = class(TQExportWriter)
  private
    DBFHeader: TDBFHeader;
    DList: TList;
{$IFDEF QE_UNICODE}
    FExportCharsetType: TQExportCharsetType;
{$ENDIF}
    MemoStream: TFileStream;
    MemoRecord: PByteArray;
    NextMemoRecord: integer;

    function GetDBFExport: TQExport4DBF;
  protected
    property DBFExport: TQExport4DBF read GetDBFExport;
  public
    constructor Create(AOwner: TQExport4; AStream: TStream); override;
    destructor Destroy; override;
    procedure AddFieldDef(Descriptor: PDBFFieldDescriptor);
    procedure CreateDBF;
    procedure DestroyDBF;
{$IFDEF VCL12}
    procedure WriteData(Num: integer; const AData: string);
{$ELSE}
    procedure WriteData(Num: integer; const Data: string);
{$ENDIF}
    function WriteMemo(Index: integer): integer;
{$IFDEF QE_UNICODE}
    property ExportCharsetType: TQExportCharsetType read FExportCharsetType write FExportCharsetType;
{$ENDIF}
  end;

  TQExport4DBF = class(TQExport4Text)
  private
    FColumnsPrecision: TStrings;
    FOldDecimalSeparator: char;
    FDefaultFloatSize: integer;
    FDefaultFloatDecimal: integer;
    FExportTimeAsStr: Boolean;
    function GetMemoFileName: string;
    function GetNullValue: string;
    procedure SetNullValue(const Value: string);
    procedure SetColumnsPrecision(Value: TStrings);
    procedure GetColumnSizeDecimal(const ColumnName: string; var Size, Decimal: integer);
  protected
    function GetWriterClass: TQExportWriterClass; override;
    function GetWriter: TQDBFWriter;

    procedure BeginExport; override;
    procedure EndExport; override;
    procedure BeforeExport; override;
    procedure AfterExport; override;

    procedure WriteDataRow; override;
    procedure SaveProperties(IniFile: TQIniFile); override;
    procedure LoadProperties(IniFile: TQIniFile); override;

    property MemoFileName: string read GetMemoFileName;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Captions;
    property ColumnsLength;
    property ColumnsPrecision: TStrings read FColumnsPrecision write SetColumnsPrecision;
    property DefaultFloatSize: integer read FDefaultFloatSize write FDefaultFloatSize default 15;
    property DefaultFloatDecimal: integer read FDefaultFloatDecimal write FDefaultFloatDecimal default 4;
    property ExportTimeAsStr: Boolean read FExportTimeAsStr write FExportTimeAsStr;
    property NullValue: string read GetNullValue write SetNullValue;
  end;

  TShortFieldNameGenerator = class
  private
    FFieldNames: TStringList;
    function GetNumberString(const AValue: integer): string;
    function IncNumberString(const AValue: string): string;
  public
    constructor Create;
    destructor Destroy; override;
    function GetShortFieldName(AFieldName: string): string;
  end;

implementation

uses QExport4Common, DB, QExport4Types{$IFDEF VCL9}, Windows{$ENDIF}, Math;

{ TQDBFWriter }

procedure TQDBFWriter.AddFieldDef(Descriptor: PDBFFieldDescriptor);
begin
  DList.Add(Descriptor);
end;

constructor TQDBFWriter.Create(AOwner: TQExport4; AStream: TStream);
begin
  inherited;
  DList := TList.Create;
end;

procedure TQDBFWriter.CreateDBF;
var
  B: Byte;
  I: integer;
  Y, M, D: Word;
begin
  FillChar(DBFHeader, 32, #0);
  DecodeDate(Date, Y, M, D);
  with DBFHeader do
  begin
    if (Owner as TQExport4DBF).Columns.ContainsBLOB and (Stream is TFileStream) then
    begin
      DBType     := dBaseIIIMemo;
      MemoStream := TFileStream.Create((Owner as TQExport4DBF).MemoFileName, fmCreate);
      GetMem(MemoRecord, 512);
      FillChar(MemoRecord^, 512, #0);
      MemoStream.WriteBuffer(MemoRecord^, 512);
      NextMemoRecord := 1;
    end
    else
      DBType := dBaseIII;

    Year         := Y - 2000;
    Month        := M;
    Day          := D;
    HeaderSize   := (DList.Count + 1) * 32 + 1;
    RecordSize   := 1;
    for I        := 0 to DList.Count - 1 do
      RecordSize := RecordSize + PDBFFieldDescriptor(DList[I])^.FieldLen;
  end;
  Stream.WriteBuffer(DBFHeader, SizeOf(DBFHeader));
  for I := 0 to DList.Count - 1 do
    Stream.WriteBuffer(PDBFFieldDescriptor(DList[I])^, 32);
  B := $0D; // End of DBF Header
  Stream.WriteBuffer(B, SizeOf(B));
end;

destructor TQDBFWriter.Destroy;
var
  I: integer;
begin
  for I := 0 to DList.Count - 1 do
    if Assigned(DList.Items[I]) then
      Dispose(PDBFFieldDescriptor(DList.Items[I]));
  DList.Free;
  inherited;
end;

procedure TQDBFWriter.DestroyDBF;
begin
  if Assigned(MemoStream) then
  begin
    MemoStream.Seek(0, soFromBeginning);
    MemoStream.Write(NextMemoRecord, SizeOf(integer));
    MemoStream.Free;
  end;
end;

function TQDBFWriter.GetDBFExport: TQExport4DBF;
begin
  Result := Owner as TQExport4DBF;
end;

{$IFDEF VCL12}

procedure TQDBFWriter.WriteData(Num: integer; const AData: string);
{$ELSE}

procedure TQDBFWriter.WriteData(Num: integer; const Data: string);
{$ENDIF}
{$IFDEF QE_UNICODE}
  procedure WriteUsingCharset(WS: WideString);
  var
    s: AnsiString;
  begin
    if not Assigned(Owner) then
      Exit;
    if WS = EmptyStr then
      Exit;

    case ExportCharsetType of
      ectLocalANSI, ectLocalOEM, ectLocalMAC:
        begin
          s := WideStringToString(WS, integer(ExportCharsetType));
          if length(s) > length(WS) then
            SetLength(s, length(WS));
          Stream.WriteBuffer(s[1], length(s));
        end;
      ectUTF8:
        begin
          s := UTF8Encode(WS);
          if length(s) > length(WS) then
            SetLength(s, length(WS));
          Stream.WriteBuffer(s[1], length(s));
        end;
    end;
  end;
{$ENDIF}

const
  NewRecordMarker: Byte = $20;
  STrue                 = 'TRUE';
  SFalse                = 'FALSE';
  SDBFTrue              = 'T';
  SDBFFalse             = 'F';
var
  CurPos, RCount: integer;
{$IFDEF VCL12}
  Data: AnsiString;
{$ENDIF}
  _Data: AnsiString;
  DD: TDateTime;
begin
{$IFDEF VCL12}
  Data := AnsiString(AData);
{$ENDIF}
  SetLength(_Data, PDBFFieldDescriptor(DList[Num])^.FieldLen);
  FillChar(_Data[1], length(_Data), ' ');
  if string(Data) <> EmptyStr then
  begin
    case PDBFFieldDescriptor(DList[Num])^.FieldType of
      dftString:
        if length(Data) > 254 // !!!
        then
          Move(Data[1], _Data[1], 254) // !!!
        else
          Move(Data[1], _Data[1], length(Data));
      dftNumber:
        begin
          Move(Data[1], _Data[Max(length(_Data) - length(Data) + 1, 1)], length(Data));
        end;
      dftDate:
        begin
          DD    := StrToDateTime(string(Data));
          _Data := AnsiString(FormatDateTime('yyyymmdd', DD));
          if string(_Data) = EmptyStr then
          begin
            SetLength(_Data, 8);
            FillChar(_Data[1], 8, ' ');
          end;
        end;
      dftBoolean:
        begin
          if Pos(STrue, UpperCase(string(Data))) > 0 then
            _Data[1] := SDBFTrue
          else if Pos(SFalse, UpperCase(string(Data))) > 0 then
            _Data[1] := SDBFFalse
          else
            _Data[1] := ' ';
        end;
    end;
  end;
  if Num = 0 then
  begin
    Stream.WriteBuffer(NewRecordMarker, 1); // it's new record
    // update record count
    CurPos          := Stream.Position; // save current position
    Stream.Position := 4;
    Stream.ReadBuffer(RCount, 4);
    Inc(RCount);
    Stream.Position := 4;
    Stream.WriteBuffer(RCount, 4);
    Stream.Position := CurPos; // restore current position
  end;
{$IFDEF QE_UNICODE}
  WriteUsingCharset(string(_Data));
  // alex c - используется локальная функция, иначе при перекодировке идет смещение поля
{$ELSE}
  write(_Data);
{$ENDIF}
  RCount := length(_Data);
  if RCount = 0 then
    SysUtils.Beep;
end;

function TQDBFWriter.WriteMemo(Index: integer): integer;
var
  Field: TField;
  FieldBuffer: TMemoryStream;
  Size, Position: integer;
  Finish: Byte;
begin
  Result := -1;
  if not((Owner as TQExport4DBF).ExportSource in [esDataSet, esDBGrid]) then
    Exit;

  Field := nil;
  case (Owner as TQExport4DBF).ExportSource of
    esDataSet:
      Field := DBFExport.DataSet.FindField(DBFExport.Columns.Items[index].Name);
{$IFNDEF NOGUI}
    esDBGrid:
      Field := DBFExport.DBGrid.DataSource.DataSet.FindField(DBFExport.Columns[index].Name);
{$ENDIF}
  end;
  if not Assigned(Field) or not(Field is TBlobField) then
    Exit;

  Size := (Field as TBlobField).BlobSize;
  if (Size <= 0) or (Size > 65536) then
    Exit;
  FieldBuffer := TMemoryStream.Create;
  try
{$IFDEF QE_UNICODE}
{$IFDEF VER180} // temporary fix
    WriteToStreamUsingCharset(FieldBuffer, Field.AsWideString, ExportCharsetType);
{$ELSE}
    (Field as TBlobField).SaveToStream(FieldBuffer);
{$ENDIF}
{$ELSE}
    (Field as TBlobField).SaveToStream(FieldBuffer);
{$ENDIF}
    Finish := $1A;
    FieldBuffer.WriteBuffer(Finish, SizeOf(Byte));
    FieldBuffer.WriteBuffer(Finish, SizeOf(Byte));
    FieldBuffer.Position := 0;

    Result := NextMemoRecord;
    while (FieldBuffer.Size - FieldBuffer.Position) > 512 do
    begin
      FillChar(MemoRecord^, 512, #0);
      FieldBuffer.ReadBuffer(MemoRecord^, 512);
      MemoStream.Write(MemoRecord^, 512);
      Inc(NextMemoRecord);
    end;
    Size     := FieldBuffer.Size;
    Position := FieldBuffer.Position;
    if (Size - Position) > 0 then
    begin
      FillChar(MemoRecord^, 512, #0);
      FieldBuffer.ReadBuffer(MemoRecord^, Size - Position);
      MemoStream.WriteBuffer(MemoRecord^, 512);
      Inc(NextMemoRecord);
    end;
  finally
    FieldBuffer.Free;
  end;
end;

{ TQExport4DBF }

constructor TQExport4DBF.Create(AOwner: TComponent);
begin
  inherited;
  FColumnsPrecision    := TStringList.Create;
  FDefaultFloatSize    := 15;
  FDefaultFloatDecimal := 4;
  Formats.NullString   := S_NULL_STRING;
{$IFDEF QE_UNICODE}
  CharsetType := ectLocalANSI;
{$ENDIF}
end;

destructor TQExport4DBF.Destroy;
begin
  FColumnsPrecision.Free;
  inherited;
end;

procedure TQExport4DBF.AfterExport;
begin
  SysUtils.FormatSettings.DecimalSeparator := FOldDecimalSeparator;
  inherited;
end;

procedure TQExport4DBF.BeforeExport;
begin
  inherited;
  FOldDecimalSeparator                     := SysUtils.FormatSettings.DecimalSeparator;
  SysUtils.FormatSettings.DecimalSeparator := '.';
end;

procedure TQExport4DBF.BeginExport;
var
  sfnGen: TShortFieldNameGenerator;
  I, CurrDisp: integer;
  FD: PDBFFieldDescriptor;
  str: string;
  s, D: integer;
begin
  inherited;
  CurrDisp := 0;
  sfnGen   := TShortFieldNameGenerator.Create;
  try
    for I := 0 to Columns.Count - 1 do
    begin
      // if Columns[i].IsBlob and not Columns[i].IsMemo then Continue;
      New(FD);
      FillChar(FD^, 32, #0);

      str := GetColCaption(I);

      if length(str) > 10 then
        str := sfnGen.GetShortFieldName(str);

      Move(AnsiString(UpperCase(str))[1], FD^.FieldName, length(str));
      FD^.FieldEnd := #0;

      if Columns[I].IsBlob then
      begin
        FD^.FieldType := dftMemo;
        FD^.FieldLen  := 10;
        FD^.FieldDec  := 0;
      end else begin
        case Columns[I].ColType of
          ectInteger:
            begin
              FD^.FieldType := dftNumber;
              FD^.FieldLen  := 11;
              FD^.FieldDec  := 0;
            end;
          ectBigint:
            begin
              FD^.FieldType := dftNumber;
              FD^.FieldLen  := 20;
              FD^.FieldDec  := 0;
            end;
          (* ftInteger, ftAutoInc: begin
            FD^.FieldType := dftNumber;
            FD^.FieldLen := 11;
            FD^.FieldDec := 0;
            end;
            ftSmallint: begin
            FD^.FieldType := dftNumber;
            FD^.FieldLen := 6;
            FD^.FieldDec := 0;
            end;
            ftWord: begin
            FD^.FieldType := dftNumber;
            FD^.FieldLen := 5;
            FD^.FieldDec := 0;
            end; *)
          ectString:
            begin
              FD^.FieldType := dftString;
              if Columns[I].length > 254 then
                FD^.FieldLen := 254
              else
                FD^.FieldLen := Columns[I].length;
              FD^.FieldDec   := 0;
            end;
          (* ftString{$IFDEF VCL4}, ftWideString{$ENDIF}: begin
            FD^.FieldType := dftString;
            if Dataset.Fields[I].Size > 254 then
            FD^.FieldLen := 254
            else
            FD^.FieldLen := Dataset.Fields[I].Size - 1;
            FD^.FieldDec := 0;
            end; *)
          ectFloat, ectCurrency:
            begin
              s := FDefaultFloatSize;
              D := FDefaultFloatDecimal;
              GetColumnSizeDecimal(Columns[I].Name, s, D);

              FD^.FieldType := dftNumber;
              FD^.FieldLen  := s;
              FD^.FieldDec  := D;
            end;
          ectDate, ectTime, ectDateTime:
            begin
              if ExportTimeAsStr and (Columns[I].ColType in [ectTime, ectDateTime]) then
              begin
                FD^.FieldType := dftString;
                if not Columns[I].length > 25 then
                  FD^.FieldLen := Columns[I].length
                else
                  FD^.FieldLen     := 25;
                Columns[I].ColType := ectString;
                FD^.FieldDec       := 0;
              end else begin
                FD^.FieldType := dftDate;
                FD^.FieldLen  := 8;
                FD^.FieldDec  := 0;
              end;
            end;
          ectBoolean:
            begin
              FD^.FieldType := dftBoolean;
              FD^.FieldLen  := 1;
              FD^.FieldDec  := 0;
            end
        else
          begin
            FD^.FieldType := dftString;
            FD^.FieldLen  := 50;
            // 10; igorp при неопознанных > 10 (например GUID) вываливается AV
            FD^.FieldDec := 0;
          end;
        end;
      end;
      FD^.FieldDisp := CurrDisp;
      CurrDisp      := CurrDisp + FD^.FieldLen;
      GetWriter.AddFieldDef(FD);
    end;
  finally
    sfnGen.Free;
  end;
  GetWriter.CreateDBF;
end;

procedure TQExport4DBF.EndExport;
begin
  GetWriter.Write(Chr($1A));
  GetWriter.DestroyDBF;
  inherited;
end;

function TQExport4DBF.GetMemoFileName: string;
begin
  Result := ChangeFileExt(FileName, '.dbt');
end;

function TQExport4DBF.GetNullValue: string;
begin
  Result := Formats.NullString;
end;

procedure TQExport4DBF.SetNullValue(const Value: string);
begin
  if Formats.NullString <> Value then
    Formats.NullString := Value;
end;

procedure TQExport4DBF.SetColumnsPrecision(Value: TStrings);
begin
  FColumnsPrecision.Assign(Value);
end;

procedure TQExport4DBF.GetColumnSizeDecimal(const ColumnName: string; var Size, Decimal: integer);
var
  j: integer;
  str: string;
begin

  Size    := FDefaultFloatSize;
  Decimal := FDefaultFloatDecimal;

  if ColumnName = 'CURRATE' then
  begin
    Size    := 12;
    Decimal := 5;
  end;
  if ColumnName = 'REMINDLEV' then
  begin
    Size    := 1;
    Decimal := 0;
  end;

  j := FColumnsPrecision.IndexOfName(ColumnName);
  if j > -1 then
  begin
    str := FColumnsPrecision.Values[FColumnsPrecision.Names[j]];
    j   := Pos(',', str);
    if j > 0 then
    begin
      Size    := StrToIntDef(Copy(str, 1, j - 1), 0);
      Decimal := StrToIntDef(Copy(str, j + 1, length(str) - j), 0);
      if (Size <= 0) and (Decimal <= 0) then
      begin
        Size    := FDefaultFloatSize;
        Decimal := FDefaultFloatDecimal;
      end;
    end;
  end;
end;

function TQExport4DBF.GetWriter: TQDBFWriter;
begin
  Result := TQDBFWriter(inherited GetWriter);
end;

function TQExport4DBF.GetWriterClass: TQExportWriterClass;
begin
  Result := TQDBFWriter;
end;

procedure TQExport4DBF.LoadProperties(IniFile: TQIniFile);
begin
  inherited;
  with IniFile do
  begin
    ColumnsLength.Clear;
    ReadSectionValues(S_LENGTH, ColumnsLength);
  end;
end;

procedure TQExport4DBF.SaveProperties(IniFile: TQIniFile);
var
  I: integer;
begin
  inherited;
  with IniFile do
  begin
    EraseSection(S_LENGTH);
    for I := 0 to ColumnsLength.Count - 1 do
      WriteString(S_LENGTH, Format('%s%d', [S_Line, I]), ColumnsLength[I]);
  end;
end;

procedure TQExport4DBF.WriteDataRow;
var
  I, Address: integer;
  fmtstr, str: string;
  s, D: integer;
begin
  for I := 0 to ExportRow.Count - 1 do
  begin

    // if Columns[i].IsBlob and not Columns[i].IsMemo then Continue;

    // alex c
{$IFDEF QE_UNICODE}
    TQDBFWriter(GetWriter).ExportCharsetType := CharsetType;
{$ENDIF}
    str := GetExportedValue(ExportRow[I]);
    if AnsiCompareText(str, 'null') = 0 then
      str := EmptyStr;
    if Columns[I].ColType in [ectFloat, ectCurrency] then
    begin
      if str = EmptyStr then
      begin
        str := Formats.NullString;
        GetWriter.WriteData(I, str);
      end else begin
        s := FDefaultFloatSize;
        D := FDefaultFloatDecimal;
        GetColumnSizeDecimal(ExportRow[I].Name, s, D);
        fmtstr := Format('%%%d.%df', [s, D]);
        str    := ExportRow[I].Data;
        str    := Format(fmtstr, [StrToFloat(str)]);
        { [ExportRow[i].Data] - Format '%15.4f' invalid or incompatible with argument }
        if Pos(',', str) > 0 then
          str := Replace(str, ',', '.');
        GetWriter.WriteData(I, str)
      end;
    end else if Columns[I].IsBlob then
    begin
      if (GetWriter.Stream is TFileStream) then
      begin
        Address := GetWriter.WriteMemo(I);
        str     := '          ';
        if Address > -1 then
        begin
          str := IntToStr(Address);
          while length(str) < 10 do
            str := ' ' + str;
        end;
        GetWriter.Stream.Write(str[1], 10);
      end
    end
    else
      GetWriter.WriteData(I, str);
  end;
end;

{ TShortFieldNameGenerator }

constructor TShortFieldNameGenerator.Create;
begin
  inherited;
  FFieldNames            := TStringList.Create;
  FFieldNames.Sorted     := True;
  FFieldNames.Duplicates := dupIgnore;
end;

destructor TShortFieldNameGenerator.Destroy;
begin
  FFieldNames.Free;
  inherited;
end;

function TShortFieldNameGenerator.GetNumberString(const AValue: integer): string;
begin
  Result := Format('~%d', [AValue]);
end;

function TShortFieldNameGenerator.GetShortFieldName(AFieldName: string): string;
var
  I: integer;
  ns: string;
begin
  Delete(AFieldName, MAX_FIELD_NAME_LEN + 1, MaxInt);
  Result := AFieldName;
  if FFieldNames.Find(AFieldName, I) then
  begin
    FFieldNames.Objects[I] := TObject(integer(FFieldNames.Objects[I]) + 1);
    ns                     := GetNumberString(integer(FFieldNames.Objects[I]));
    Delete(AFieldName, MAX_FIELD_NAME_LEN - length(ns) + 1, length(ns));
    Result := AFieldName + ns;
    if FFieldNames.Find(Result, I) then
      Result := IncNumberString(Result);
    FFieldNames.AddObject(Result, TObject(0));
  end
  else
    FFieldNames.AddObject(AFieldName, TObject(0));
end;

function TShortFieldNameGenerator.IncNumberString(const AValue: string): string;
var
  p, n: integer;
  s, ns: string;
begin
  Result := AValue;
  p      := Pos('~', AValue);
  if p = 0 then
    Exit;
  s := Copy(AValue, p + 1, MaxInt);
  n := StrToIntDef(s, -1);
  if n = -1 then
    Exit;
  Inc(n);
  ns := GetNumberString(n);
  Delete(Result, MAX_FIELD_NAME_LEN - length(ns) + 1, length(ns));
  Result := Result + ns;
end;

end.
