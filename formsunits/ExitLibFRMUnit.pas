unit ExitLibFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  JvExStdCtrls, JvHtControls, JvExControls,
  JvSegmentedLEDDisplay, DLLsucdapi;

type
  TFormExitLibrary = class(TForm)
    BtMain: TBitBtn;
    BitBtnCancel: TBitBtn;
    MessageLabel: TJvHTLabel;
    Image1: TImage;
    LedSlot: TJvSegmentedLEDDisplay;
    Label1: TLabel;
    LedMachine: TJvSegmentedLEDDisplay;
    procedure FormShow(Sender: TObject);
    procedure BtMainClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FEOwner: string;
    FEModel: string;
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
  published
    function Enter(owner, model: string): TModalResult;
  end;

var
  FormExitLibrary: TFormExitLibrary;
  Next_id, Machine, slot: integer;

implementation

uses ClientDmUnit, ThreadsUnit;

{$R *.dfm}

procedure TFormExitLibrary.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    ExStyle := ExStyle or WS_EX_APPWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;

procedure TFormExitLibrary.FormShow(Sender: TObject);
var
  USBCDMoveOpen: TUSBCDMoveOpen;
  i: integer;
  Machinetext: string;

begin
  MessageLabel.Caption := '';
  BtMain.Enabled := True;
  Next_id := -1;

  Machine := RemoteDB.Caroussel.fieldbyName('machine_id').Value;
  slot := RemoteDB.Caroussel.fieldbyName('slot_id').Value;
  if RemoteDB.Caroussel.fieldbyName('nextid').Value <> -1 then
  begin
    Next_id := RemoteDB.Caroussel.fieldbyName('nextid').Value;
    BtMain.Caption := 'CD Suivant';
  end;

  Machinetext := '';
  for i := 7 downto length(inttostr(Machine)) do
  begin
    Machinetext := Machinetext + '0';
  end;
  LedMachine.Text := Machinetext + inttostr(Machine);

  // Update Leds

  if length(floattostr(slot)) = 1 then
  begin
    LedSlot.Text := '00' + floattostr(slot);
  end;
  if length(floattostr(slot)) = 2 then
  begin
    LedSlot.Text := '0' + floattostr(slot);
  end;
  if length(floattostr(slot)) = 3 then
  begin
    LedSlot.Text := floattostr(slot);
  end;

  if USBCDGetStatus(Machine) = DEVICE_COMMANDOK then
  begin
    USBCDMoveOpen := TUSBCDMoveOpen.Create(Machine, slot);
    USBCDMoveOpen.Execute;
  end
  else
  begin
    MessageLabel.Caption := 'CD Library pleines ou indisponibles';
    BtMain.Enabled := False;
  end;
end;

procedure TFormExitLibrary.BtMainClick(Sender: TObject);
var
  USBCDMoveOpen: TUSBCDMoveOpen;
begin

  RemoteDB.Caroussel.Delete;

  if Next_id = -1 then
  begin
    USBCDGetCDDown(Machine);
    ModalResult := Mrok;
  end
  else
  begin
    ModalResult := MRnone;
    USBCDGetCDDown(Machine);

    if RemoteDB.Caroussel.Locate('id', Next_id, []) then
    begin

      Machine := RemoteDB.Caroussel.fieldbyName('machine_id').Value;
      slot := RemoteDB.Caroussel.fieldbyName('slot_id').Value;

      if RemoteDB.Caroussel.fieldbyName('nextid').Value <> -1 then
      begin
        Next_id := RemoteDB.Caroussel.fieldbyName('nextid').Value;
        BtMain.Caption := 'CD Suivant';
      end
      else
      begin
        Next_id := -1;
        BtMain.Caption := 'OK';
      end;

      if USBCDGetStatus(Machine) <> DEVICE_COMMANDOK then
      begin
        MessageLabel.Caption := 'CD Library pleines ou indisponibles';
        BtMain.Enabled := False;
        exit;
      end
      else
      begin
        USBCDMoveOpen := TUSBCDMoveOpen.Create(Machine, slot);
        if length(floattostr(slot)) = 1 then
        begin
          LedSlot.Text := '00' + floattostr(slot);
        end;
        if length(floattostr(slot)) = 2 then
        begin
          LedSlot.Text := '0' + floattostr(slot);
        end;
        if length(floattostr(slot)) = 3 then
        begin
          LedSlot.Text := floattostr(slot);
        end;
        USBCDMoveOpen.Execute;
      end;

    end
    else
    begin
      messagedlg('Produit non trouvé', mtwarning, [mbok], 0);
    end;
  end;
end;

procedure TFormExitLibrary.BitBtnCancelClick(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

function TFormExitLibrary.Enter(owner, model: string): TModalResult;
begin
  FEOwner := owner;
  FEModel := model;
  Result := Self.ShowModal;
end;

procedure TFormExitLibrary.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // if ((Sender<>btmain) or (sender<>bitbtncancel)) then CanClose:=False;
end;

end.
