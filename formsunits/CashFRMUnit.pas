unit CashFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxMaskEdit, cxSpinEdit, StdCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxDBEdit, ClientDMUnit, Buttons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormCashClose = class(TForm)
    cxCurrencyEditNew: TcxCurrencyEdit;
    cxCurrencyEditVoucher: TcxCurrencyEdit;
    cxCurrencyEditVisa: TcxCurrencyEdit;
    cxCurrencyEditBought: TcxCurrencyEdit;
    cxCurrencyEditDeposit: TcxCurrencyEdit;
    cxCurrencyEditReturn: TcxCurrencyEdit;
    cxCurrencyEditTotalIn: TcxCurrencyEdit;
    cxCurrencyEditBCT: TcxCurrencyEdit;
    cxCurrencyEditBank: TcxCurrencyEdit;
    LabelNew: TLabel;
    LabelBought: TLabel;
    LabelDeposit: TLabel;
    LabelCancel: TLabel;
    LabelTotalIn: TLabel;
    LabelBCT: TLabel;
    LabelVisa: TLabel;
    LabelBank: TLabel;
    LabelVouchers: TLabel;
    cxCurrencyEditRefunds: TcxCurrencyEdit;
    cxCurrencyEditExpenses: TcxCurrencyEdit;
    LabelRefunds: TLabel;
    LabelExpenses: TLabel;
    cxCurrencyEditTotalOut: TcxCurrencyEdit;
    LabelTotalOut: TLabel;
    cxCurrencyEditTotalCash: TcxCurrencyEdit;
    LabelTotalCash: TLabel;
    LabelToTake: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxSpinEdit50000: TcxSpinEdit;
    cxSpinEdit20000: TcxSpinEdit;
    cxSpinEdit10000: TcxSpinEdit;
    cxSpinEdit5000: TcxSpinEdit;
    cxSpinEdit2000: TcxSpinEdit;
    cxSpinEdit1000: TcxSpinEdit;
    cxSpinEdit500: TcxSpinEdit;
    cxSpinEdit200: TcxSpinEdit;
    cxSpinEdit100: TcxSpinEdit;
    cxSpinEdit50: TcxSpinEdit;
    cxSpinEdit20: TcxSpinEdit;
    cxSpinEdit10: TcxSpinEdit;
    cxSpinEdit5: TcxSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxCurrencyEditCompteur: TcxCurrencyEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextEditInCharge: TcxDBTextEdit;
    cxCurrencyEditCashLeft: TcxDBCurrencyEdit;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    cxCurrencyEditToTake: TcxDBSpinEdit;
    Label16: TLabel;
    Label17: TLabel;
    LabelStatDate: TLabel;
    LabelEndDate: TLabel;
    Label18: TLabel;
    cxCurrencyEditPurchased: TcxCurrencyEdit;
    Label19: TLabel;
    cxDBTextEditTasks: TcxDBTextEdit;
    procedure cxSpinEdit50000KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSpinEdit50000MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxCurrencyEditToTakePropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtnOkClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    procedure UpdateCounter;
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    PreviousAmount: Double;
    { Public declarations }
  end;

var
  FormCashClose: TFormCashClose;

implementation

uses MainFRMUnit, DavidUtilsUnit;

{$R *.dfm}

procedure TFormCashClose.BitBtnCancelClick(Sender: TObject);
begin
  cxDBTextEditInCharge.Text := 'Annulation';
end;

procedure TFormCashClose.BitBtnOkClick(Sender: TObject);
var
  Labelstoprint: TLabelAddress;
  Address: TStrings;
begin
  if (MainForm.Parameter['PrintersLabelEnabled'] = 'TRUE') then
  begin
    Labelstoprint := TLabelAddress.Create;
    Address := TStringList.Create;
    try
      Address.Add(MainFRMUnit.ShopdataList[0]);
      Address.Add(LabelStatDate.Caption + ' - ' + LabelEndDate.Caption);
      Address.Add('Caisse : ' + cxCurrencyEditTotalCash.Text);
      Address.Add('Sortie : ' + cxCurrencyEditToTake.Text);
      Address.Add('Solde : ' + cxCurrencyEditCashLeft.Text);
      Labelstoprint.LabelPrinter :=
        (MainForm.Parameter['PrintersLabelPrinter']);
      Labelstoprint.Print(Address,
        (StrToBool(MainForm.Parameter['PrintersLabelDialog'])));
    finally
      Labelstoprint.Free;
      Address.Free;
    end;
  end
  else
    messagedlg('Imprimante à étiquettes non activée', mtwarning, [mbok], 0);
end;

procedure TFormCashClose.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    ExStyle := ExStyle or WS_EX_APPWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;

procedure TFormCashClose.cxCurrencyEditToTakePropertiesChange(Sender: TObject);
begin
  cxCurrencyEditCashLeft.Value := Self.PreviousAmount +
    cxCurrencyEditTotalIn.Value - cxCurrencyEditTotalOut.Value -
    cxCurrencyEditToTake.Value;
  Self.UpdateCounter;
end;

procedure TFormCashClose.cxSpinEdit50000KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Self.UpdateCounter;
end;

procedure TFormCashClose.cxSpinEdit50000MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Self.UpdateCounter;
end;

procedure TFormCashClose.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ((Length(cxDBTextEditInCharge.Text) < 3)) then
  begin
    ShowMessage('Veuillez remlir votre nom');
    CanClose := False;
  end
  else
  begin
    CanClose := True;
  end;
end;

procedure TFormCashClose.UpdateCounter;
begin
  cxCurrencyEditCompteur.Value := cxSpinEdit50000.Value * 500 +
    cxSpinEdit20000.Value * 200 + cxSpinEdit10000.Value * 100 +
    cxSpinEdit5000.Value * 50 + cxSpinEdit2000.Value * 20 + cxSpinEdit1000.Value
    * 10 + cxSpinEdit500.Value * 5 + cxSpinEdit200.Value * 2 +
    cxSpinEdit100.Value * 1 + cxSpinEdit50.Value * 0.5 + cxSpinEdit20.Value *
    0.20 + cxSpinEdit10.Value * 0.10 + cxSpinEdit5.Value * 0.05;
end;

end.
