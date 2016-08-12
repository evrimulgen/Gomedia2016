unit CancelInvoiceItemFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, ClientDMUnit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, ComCtrls, StdCtrls, Buttons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TInvoicesCancelItemForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    UpDown1: TUpDown;
    EditQmax: TcxMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoicesCancelItemForm: TInvoicesCancelItemForm;

implementation

{$R *.dfm}

procedure TInvoicesCancelItemForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
  begin
    EditQmax.Text := inttostr(min(StrtoInt(EditQmax.Text) + 1, RemoteDB.netshop_invoices_items.FieldByName('invoices_items_quantity').AsInteger));
  end;
  if Button = btPrev then
  begin
    EditQmax.Text := inttostr(max(StrtoInt(EditQmax.Text) - 1, 1));
  end;

end;

procedure TInvoicesCancelItemForm.BitBtnCancelClick(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

end.
