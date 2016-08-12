unit DialogRefundFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLookOut, ExtCtrls,
  ImgList, Davidutilsunit, JvExControls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TRefundForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    JvExpressButton12: TJvExpressButton;
    ImageListSmallImages: TImageList;
    JvExpressButton1: TJvExpressButton;
    ButtonCancel: TButton;
    cxCurrencyEdit: TcxCurrencyEdit;
    procedure JvExpressButton1Click(Sender: TObject);
    procedure JvExpressButton12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RefundForm: TRefundForm;

implementation

{$R *.dfm}

uses clientDMUnit, MainFRMUnit, GlobalsUnit, wgssSTU_TLB, SignatureForm;

procedure TRefundForm.JvExpressButton1Click(Sender: TObject);
begin
  cxCurrencyEdit.Value := ( RemoteDB.Customers.Fieldbyname('customers_credit').Value / ((MarginDepositVoucher) / 100) *
    ((MarginDepositRefund) / 100) );
end;

procedure TRefundForm.JvExpressButton12Click(Sender: TObject);
begin
  cxCurrencyEdit.Value := 0;
end;

procedure TRefundForm.Button1Click(Sender: TObject);
var
  TicketToPrint: TTicketJob;
  Data: WideString;
  Num, i, LineSpacing: Integer;
  usbDevices : IUsbDevices;
  usbDevice  : IUsbDevice;
  FormSign : TFormSign;
  RefundValid : bool;
begin
  RefundValid := False;
  if cxCurrencyEdit.Value - 0.01 > (RemoteDB.Customers.Fieldbyname('customers_credit').Value / (MarginDepositVoucher / 100) *
    (MarginDepositRefund / 100)) then
  begin
    cxCurrencyEdit.Value := (RemoteDB.Customers.Fieldbyname('customers_credit').Value / (MarginDepositVoucher / 100) *
      (MarginDepositRefund / 100));
    messagedlg('Montant sup�rieur au cr�dit disponible', mtwarning, [mbok], 0);
  end else begin
    // Verification type d'op�ration

    if (Mainform.Parameter['MiscSIGNPADUse'] = 'TRUE') then begin

    ///
    /// Utilisation Signpad
    ///
    usbDevices := CoUsbDevices.Create();
    if (usbDevices.Count > 0) then
    begin
      FormSign := TFormSign.Create(self);
      try
      try
        begin
          usbDevice := usbDevices.Item[0]; //select the first device
          FormSign.TextLines.Add('Remboursement : '+ cxCurrencyEdit.Text);
          FormSign.TextLines.Add('Client # : ' + RemoteDB.CustomersCustomers_nbr.Text);
          FormSign.TextLines.Add('Nom : ' + RemoteDB.CustomersCustomers_firstname.Text);
          FormSign.TextLines.Add('Ancien bon : ' + RemoteDB.CustomersCustomers_credit.Text);
          FormSign.TextLines.Add('Nouveau bon : ' +
            floattostrf((RemoteDB.CustomersCustomers_credit.AsFloat - (cxCurrencyEdit.Value * (MarginDepositVoucher / 100) /
            (MarginDepositRefund / 100))), fffixed, 7, 2));
          FormSign.connect(usbDevice);
          FormSign.ShowModal();
        end;
      except
        on e : Exception do
          ShowMessage(e.Message);
      end;
      if FormSign.ModalResult=mrOK then  RefundValid:=True;

      finally
        FormSign.Free;
      end;
    end
    else
    begin
      ShowMessage('Pad de signature non connect�');
    end;

    end else begin
    ///
    /// Ticket
    ///
    if not(Mainform.Parameter['PrintersTicketEnabled'] = 'TRUE') then
      if messagedlg('Imprimante � tickets non activ�e ! Voulez-vous continuer ?', mtwarning, [mbyes, mbno], 0) = mrNo then
        Exit;
    if (Mainform.Parameter['PrintersTicketEnabled'] = 'TRUE') then
    begin
      begin
        TicketToPrint := TTicketJob.Create(self);
        try
          TicketToPrint.Printer  := Mainform.Parameter['PrintersTicketPrinter'];
          TicketToPrint.Logo     := PrintLogo;
          TicketToPrint.Url      := WEBURL;
          TicketToPrint.ShopData := ShopDataList;
          if (Mainform.Parameter['PrintersTicketContinuous'] = 'TRUE') then
            TicketToPrint.Model := TmContinuous;

          TicketToPrint.AddFinancialLine('Remboursement :', cxCurrencyEdit.Value);
          TicketToPrint.AddCustomerLine('Client # :', RemoteDB.CustomersCustomers_nbr.Text);
          TicketToPrint.AddCustomerLine('Nom :', RemoteDB.CustomersCustomers_firstname.Text);
          TicketToPrint.AddCustomerLine('Ancien bon :', RemoteDB.CustomersCustomers_credit.Text);
          TicketToPrint.AddCustomerLine('Nouveau bon :',
            floattostrf((RemoteDB.CustomersCustomers_credit.AsFloat - (cxCurrencyEdit.Value * (MarginDepositVoucher / 100) /
            (MarginDepositRefund / 100))), fffixed, 7, 2));

          if Mainform.Parameter['PrintersTicketOpos'] = 'TRUE' then
            TicketToPrint.PrintOpos
          else
            TicketToPrint.Print;
          RefundValid:=True;
        finally
          TicketToPrint.Free;
        end;
      end; // fin if opos
    end; // Fin Ticket

    end; // Fin type de signature
    ///
    ///
    ///
    /// Modification de la DB
    ///
    ///
    if RefundValid then begin
      RemoteDB.Customers.Edit;
      RemoteDB.CustomersCustomers_credit.AsFloat := RemoteDB.CustomersCustomers_credit.AsFloat -
        (cxCurrencyEdit.Value * (MarginDepositVoucher / 100) / (MarginDepositRefund / 100));
      RemoteDB.Customers.Post;
      RemoteDB.netshop_refunds.Append;
      RemoteDB.netshop_refunds.Fieldbyname('refunds_amount').Value := -cxCurrencyEdit.Value;
      RemoteDB.netshop_refunds.Fieldbyname('refunds_nature').Value := 'Retrait';
      RemoteDB.netshop_refunds.Fieldbyname('refunds_customer_nbr').Value := RemoteDB.CustomersCustomers_nbr.Value;
      if (Mainform.Parameter['MiscSIGNPADUse'] = 'TRUE')  then RemoteDB.StoreSignBlob('signature.jpg','refunds');
      RemoteDB.netshop_refunds.Post;
      self.ModalResult := MrOk;
    end;
  end;

end;

end.
