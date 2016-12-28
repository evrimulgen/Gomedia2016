unit DialogAddFundFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLookOut, ExtCtrls,
  ImgList, Davidutilsunit, JvEdit, JvExStdCtrls, JvExControls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TAddFundForm = class(TForm)
    Label1: TLabel;
    ButtonAdd: TButton;
    Panel1: TPanel;
    JvExpressButton12: TJvExpressButton;
    ImageListSmallImages: TImageList;
    ButtonCancel: TButton;
    Label2: TLabel;
    Edit1: TJvEdit;
    FnpAmount: TcxCurrencyEdit;
    Label3: TLabel;
    cxCurrencyEditOldAmount: TcxCurrencyEdit;
    procedure JvExpressButton12Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddFundForm: TAddFundForm;

implementation

{$R *.dfm}

uses clientDMUnit, MainFRMUnit, GlobalsUnit;

procedure TAddFundForm.JvExpressButton12Click(Sender: TObject);
begin
  FnpAmount.Value := 0;
  Edit1.Text;
end;

procedure TAddFundForm.ButtonAddClick(Sender: TObject);
var
  TicketToPrint: TTicketJob;
  Data: WideString;
  Num, LineSpacing, i: integer;
begin
  if Length(Edit1.Text) < 8 then
  begin
    Messagedlg('Veuillez complèter la raison', mtwarning, [mbok], 0);
    Exit;
  end;
  try
    RemoteDB.Customers.DisableControls;
    RemoteDB.netshop_refunds.DisableControls;
    ///
    /// Ticket
    ///
    if not(Mainform.Parameter['PrintersTicketEnabled'] = 'TRUE') then
      if Messagedlg('Imprimante à tickets non activée ! Voulez-vous continuer ?', mtwarning, [mbyes, mbno], 0) = mrNo then
        Exit;
    if (Mainform.Parameter['PrintersTicketEnabled'] = 'TRUE') then
    begin
      TicketToPrint := TTicketJob.Create(self);
      try
        TicketToPrint.Printer  := (Mainform.Parameter['PrintersTicketPrinter']);
        TicketToPrint.Logo     := PrintLogo;
        TicketToPrint.Url      := WEBURL;
        TicketToPrint.ShopData := ShopDataList;

        if (Mainform.Parameter['PrintersTicketContinuous'] = 'TRUE') then
          TicketToPrint.Model := TmContinuous;

        TicketToPrint.AddFinancialLine('Ajout :', FnpAmount.Value);

        TicketToPrint.AddCustomerLine('Client # :', RemoteDB.CustomersCustomers_nbr.Text);
        TicketToPrint.AddCustomerLine('Nom :', RemoteDB.CustomersCustomers_firstname.Text);
        TicketToPrint.AddCustomerLine('Ancien bon :', RemoteDB.CustomersCustomers_credit.Text);
        TicketToPrint.AddCustomerLine('Nouveau bon :', floattostrf((FnpAmount.Value), fffixed, 7, 2));

        if Mainform.Parameter['PrintersTicketOpos'] = 'TRUE' then
          TicketToPrint.PrintOpos
        else
          TicketToPrint.Print;
      finally
        TicketToPrint.Free;
      end;
    end; // Fin Ticket

    ///
    /// Modification de la DB
    ///
    RemoteDB.Customers.Edit;
    RemoteDB.CustomersCustomers_credit.AsFloat := FnpAmount.Value;
    RemoteDB.Customers.Post;
    RemoteDB.netshop_refunds.Append;

    RemoteDB.CDSActions.Append;
    RemoteDB.CDSActions.FieldByName('action').AsString := 'Bon ' + RemoteDB.CustomersCustomers_nbr.Text + ' de ' + cxCurrencyEditOldAmount.Text + ' à ' +
      FnpAmount.Text;
    RemoteDB.CDSActions.Post;


    // RemoteDB.netshop_refunds.FieldByName('refunds_amount').Value:=FnpAmount.Value;
    // RemoteDB.netshop_refunds.FieldByName('refunds_nature').AsString:='Ajout : '+Edit1.Text;
    // RemoteDB.netshop_refunds.FieldByName('refunds_customer_nbr').Value:=RemoteDB.CustomersCustomers_nbr.Value;
    // RemoteDB.netshop_refunds.Post;

  finally
    RemoteDB.Customers.EnableControls;
    RemoteDB.netshop_refunds.EnableControls;
  end;
  self.ModalResult := MrOk;
end;

end.
