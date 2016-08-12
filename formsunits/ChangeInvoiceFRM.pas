unit ChangeInvoiceFRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TFormChangeInvoice = class(TForm)
    EditSalesCustomerId: TcxTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Button1: TButton;
    procedure EditSalesCustomerIdKeyPress(Sender: TObject; var Key: Char);
    procedure EditSalesCustomerIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChangeInvoice: TFormChangeInvoice;

implementation

uses ClientDMunit, GlobalsUnit, DB;

{$R *.dfm}

procedure TFormChangeInvoice.EditSalesCustomerIdKeyPress(Sender: TObject;
  var Key: Char);
const backspace=#8; {key code for backspace character}
begin
 if Key in [backspace, '0'..'9'] then begin

  exit;
 end;
 Key := #0;
end;

procedure TFormChangeInvoice.EditSalesCustomerIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (EditSalesCustomerId.Text > '0') and (EditSalesCustomerId.Text < '99999999')  then begin
    if not RemoteDB.Customers.Locate('Customers_nbr',EditSalesCustomerId.Text,[loCaseInsensitive]) then RemoteDB.Customers.First;
   end
   else begin
    messagedlg('Entrez un N° de client valide',mtwarning,[mbok],0);
    EditSalesCustomerID.Text:=IntToStr(CONNECTEDSHOP);
 end;
end;

end.
