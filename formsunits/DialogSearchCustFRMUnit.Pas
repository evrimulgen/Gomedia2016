unit DialogSearchCustFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxDBEdit,
  cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormSelectCust = class(TForm)
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
    CustSel: TClientDataSet;
    LabelCustomerNbr: TLabel;
    DBEditCustomerNbr: TcxDBTextEdit;
    LabelCustomerLastname: TLabel;
    DBEditCustomerName: TcxDBTextEdit;
    LabelCustomerFirstname: TLabel;
    DBEditCustomerFirstName: TcxDBTextEdit;
    SearchString: TcxTextEdit;
    SBCustSearch: TSpeedButton;
    CustSelSRC: TDataSource;
    cxEditStyleController1: TcxEditStyleController;
    procedure FormCreate(Sender: TObject);
    procedure SBCustSearchClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSelectCust: TFormSelectCust;
  LastSearchString: string;

implementation

uses ClientDMUnit;

{$R *.dfm}

procedure TFormSelectCust.FormCreate(Sender: TObject);
begin
  CustSel.CloneCursor(RemoteDB.Customers, True);
end;

procedure TFormSelectCust.SBCustSearchClick(Sender: TObject);
var
  Found, followup: Boolean;
begin
  Found := False;
  if lowercase(SearchString.Text) = LastSearchString then
    followup := True
  else
    followup := False;
  LastSearchString := lowercase(SearchString.Text);
  try
    if not followup then
      self.CustSel.First
    else
      self.CustSel.Next;
    while (not Found) and (not self.CustSel.Eof) do
    begin
      if Pos(lowercase(SearchString.Text),
        lowercase(self.CustSel.Fieldbyname('customers_nbr').AsString)) <> 0 then
      begin
        Found := True;
      end;
      if Pos(lowercase(SearchString.Text),
        lowercase(self.CustSel.Fieldbyname('customers_firstname').AsString)) <> 0
      then
      begin
        Found := True;
      end;
      if Pos(lowercase(SearchString.Text),
        lowercase(self.CustSel.Fieldbyname('customers_lastname').AsString)) <> 0
      then
      begin
        Found := True;
      end;
      if Pos(lowercase(SearchString.Text),
        lowercase(self.CustSel.Fieldbyname('customers_email_address').AsString)
        ) <> 0 then
      begin
        Found := True;
      end;
      if not Found then
        self.CustSel.Next;
    end;
  finally
    if self.CustSel.Eof then
    begin
      LastSearchString := '';
      if Found = False then
        messagedlg('Client non trouvé', mtwarning, [mbok], 0);
    end;
  end;
end;

procedure TFormSelectCust.BitBtnOKClick(Sender: TObject);
begin
  ModalResult := CustSel.Fieldbyname('Customers_Nbr').AsInteger;
end;

procedure TFormSelectCust.BitBtnCancelClick(Sender: TObject);
begin
  ModalResult := -1;
end;

end.
