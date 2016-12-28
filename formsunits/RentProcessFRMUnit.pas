unit RentProcessFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, AdvPageControl,
  StdCtrls, Buttons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, DBAdvGrid,
  AdvObj, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TRentOperation = (RentOut, RentIn);

  TFormProcessRent = class(TForm)
    GroupBoxSalesexeccustomer: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    BitBtnRentClear: TBitBtn;
    BitBtnRentExec: TBitBtn;
    DBEditCustomerNbr: TcxDBTextEdit;
    DBEditCustomerName: TcxDBTextEdit;
    DBEditCustomerFirstName: TcxDBTextEdit;
    DBEditCustomerVoucher: TcxDBTextEdit;
    DBEditCustomerPoints: TcxDBTextEdit;
    DBAdvGrid1: TDBAdvGrid;
    procedure FormShow(Sender: TObject);
    procedure BitBtnRentClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnRentExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    RentSchemeId: integer;
    RentOperation: TRentOperation;
    { Public declarations }
  end;

var
  FormProcessRent: TFormProcessRent;
  TransactionSavePoint, RentStockSavePoint: integer;

implementation

uses MainFRMunit, ClientDMunit, GlobalsUnit, DavidUtilsunit;

{$R *.dfm}

procedure TFormProcessRent.FormShow(Sender: TObject);
var
  NowRow, GridIndex, i, CustIndex, CustId: integer;
begin
  TransactionSavePoint := RemoteDB.netshop_rent_transaction.SavePoint;
  RentStockSavePoint := RemoteDB.netshop_rent_stock.SavePoint;

  for i := 0 to TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
    .ControlCount - 1 do
  begin
    if TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage).Controls[i]
      .ClassType = TAdvStringGrid then
    begin
      GridIndex := i;
    end;
  end;

  if RemoteDB.Customers.Locate('customers_nbr',
    Mainform.GetRentCaddyCustomerNbr, []) then
  begin

    if RentOperation = RentOut then
    begin

      RemoteDB.netshop_rent_transaction.Filter :=
        'rent_transaction_returned= 0  and rent_transaction_customer_nbr = ' +
        RemoteDB.Customerscustomers_nbr.AsString;
      RemoteDB.netshop_rent_transaction.Filtered := True;

      with TAdvStringGrid(TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
        .Controls[GridIndex]) do
        for NowRow := 1 to Rowcount - 2 do
        begin
          with RemoteDB.netshop_rent_transaction do
          begin
            Append;
            FieldByName('rent_transaction_product_model').Value :=
              Cells[0, NowRow];
            FieldByName('rent_transaction_product_name').Value :=
              Cells[1, NowRow];
            FieldByName('rent_transaction_start_date').Value :=
              Strtodate(Cells[3, NowRow]);
            FieldByName('rent_transaction_due_date').Value :=
              Strtodate(Cells[4, NowRow]);
            FieldByName('rent_transaction_customer_nbr').Value :=
              RemoteDB.Customerscustomers_nbr.Value;
            RemoteDB.netshop_rent_schemes.SetKey;
            RemoteDB.netshop_rent_schemes.FieldByName('rent_scheme_base_price')
              .AsString := Cells[5, NowRow];
            RemoteDB.netshop_rent_schemes.FieldByName('rent_scheme_extra_price')
              .AsString := Cells[6, NowRow];
            RemoteDB.netshop_rent_schemes.GotoKey;
            FieldByName('rent_transaction_scheme_id').Value :=
              RemoteDB.netshop_rent_schemes.FieldByName('rent_scheme_id').Value;
            Post;
          end;

          with RemoteDB.netshop_rent_stock do
          begin
            Filter := '(rent_stock_product_model = ' +
              quotedstr(RemoteDB.netshop_rent_transaction.FieldByName
              ('rent_transaction_product_model').Value) +
              ') and (rent_stock_state= 1)';
            Filtered := True;
            if not Eof and Bof then
            begin
              Edit;
              FieldByName('rent_stock_count').Value :=
                FieldByName('rent_stock_count').Value + 1;
              FieldByName('rent_stock_last_rent').Value :=
                Strtodate(TAdvStringGrid
                (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
                .Controls[GridIndex]).Cells[3, NowRow]);
              FieldByName('rent_stock_state').Value := 0;
              Post;
            end
            else
            begin
              messagedlg('Stock incohérent', mtwarning, [mbok], 0);
            end;
            Filtered := False;
          end;
        end;
    end;

    if RentOperation = RentIn then
    begin

      RemoteDB.netshop_rent_transaction.Filter :=
        'rent_transaction_returned= 0 and rent_transaction_customer_nbr = ' +
        RemoteDB.Customerscustomers_nbr.AsString;
      RemoteDB.netshop_rent_transaction.Filtered := True;
      with TAdvStringGrid(TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
        .Controls[GridIndex]) do
        for NowRow := 1 to Rowcount - 2 do
        begin
          with RemoteDB.netshop_rent_transaction do
          begin
            if Locate('rent_transaction_product_model', Cells[0, NowRow], [])
            then
            begin
              // retour en stock locations
              with RemoteDB.netshop_rent_stock do
              begin
                Filter := '(rent_stock_product_model = ' +
                  quotedstr(RemoteDB.netshop_rent_transaction.FieldByName
                  ('rent_transaction_product_model').Value) +
                  ') and (rent_stock_state= 0)';
                Filtered := True;
                if not Eof and Bof then
                begin
                  Edit;
                  FieldByName('rent_stock_state').Value := 1;
                  Post;
                end
                else
                begin
                  messagedlg('Stock incohérent', mtwarning, [mbok], 0);
                end;
                Filtered := False;
              end;
              Edit;
              FieldByName('rent_transaction_returned').Value := 1;
              FieldByName('rent_transaction_returned_date').Value := Now;
              Post;
            end;
          end;
        end;
    end;
  end
  else
  begin
    ShowMessage('Client introuvable');
  end; // Locate Customer Caddy

end;

procedure TFormProcessRent.BitBtnRentClearClick(Sender: TObject);
begin
  RemoteDB.netshop_rent_transaction.Filtered := False;
  RemoteDB.netshop_rent_stock.Filtered := False;
  { TODO : Check DB Save and savepoints return }
  RemoteDB.netshop_rent_transaction.SavePoint := TransactionSavePoint;
  RemoteDB.netshop_rent_stock.SavePoint := RentStockSavePoint;
  RemoteDB.netshop_rent_transaction.Filter := '';
  RemoteDB.netshop_rent_transaction.Filtered := False;
  Self.ModalResult := MrCancel;
end;

procedure TFormProcessRent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RemoteDB.netshop_rent_transaction.Filter := '';
  RemoteDB.netshop_rent_transaction.Filtered := False;
end;

procedure TFormProcessRent.BitBtnRentExecClick(Sender: TObject);
var
  Num, NowRow, i, j, nowrowsales, SalesPage, SalesGridIndex, RentGridIndex,
    OverDueDays: integer;
  Data: WideString;
  OverDueAmount: Double;
  TicketToPrint: TTicketJob;

begin
  if RentOperation = RentOut then
  begin

    RemoteDB.netshop_rent_transaction.Filter :=
      'rent_transaction_returned = 0  and rent_transaction_customer_nbr = ' +
      RemoteDB.Customerscustomers_nbr.AsString;
    RemoteDB.netshop_rent_transaction.Filtered := True;

    try
      // Print Rent Receipt to be Kept By Shop

      if ((Mainform.Parameter['PrintersTicketEnabled'] = 'TRUE')) then
      begin
        if Mainform.Parameter['PrintersTicketOpos'] = 'TRUE' then
        begin
          try
            Data := '-2';
            Num := 3;
            PosPrinter.DirectIO(111, Num, Data);
            PosPrinter.RecLineHeight := 14;
            PosPrinter.PrintNormal(2, chr(10) + chr(13));
            PosPrinter.PrintNormal(2, chr(27) + '!' + chr(57) + chr(27) + '|cA'
              + 'LOCATIONS ' + chr(13));
            PosPrinter.PrintNormal(2,
              '__________________________________________' + chr(10) + chr(13));
            RemoteDB.netshop_rent_transaction.First;
            while not RemoteDB.netshop_rent_transaction.Eof do
            begin
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) +
                RemoteDB.netshop_rent_transaction.FieldByName
                ('rent_transaction_product_name').AsString + chr(10) + chr(13));
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(50) + 'Du ' +
                DatetoStr(RemoteDB.netshop_rent_transaction.FieldByName
                ('rent_transaction_start_date').AsFloat) + ' Au ' +
                DatetoStr(RemoteDB.netshop_rent_transaction.FieldByName
                ('rent_transaction_due_date').AsFloat) + chr(10) + chr(13));
              RemoteDB.netshop_rent_transaction.Next;
            end;
            PosPrinter.PrintNormal(2,
              '__________________________________________' + chr(10) + chr(13));

            if RemoteDB.Customerscustomers_nbr.Value > 100 then
            begin
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + 'Client # : ' +
                RemoteDB.Customerscustomers_nbr.Text + '' + chr(10) + chr(13));
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + 'Nom : ' +
                RemoteDB.CustomersCustomers_LastName.Text + '' + chr(10)
                + chr(13));
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + 'Prenom : ' +
                RemoteDB.Customerscustomers_firstname.Text + '' + chr(10)
                + chr(13));
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + 'CI : ' +
                RemoteDB.Customerscustomers_identity.Text + '' + chr(10)
                + chr(13));
              PosPrinter.PrintNormal(2, chr(27) + 'a' + chr(0) + 'SIGNATURE' +
                '' + chr(10) + chr(13));
            end;

            PosPrinter.PrintNormal(2, chr(13) + chr(10));
            PosPrinter.PrintNormal(2, chr(27) + '|cA' +
              Formatdatetime('"Le" DD MMMM YYYY "à" hh:mm', Now) + '' + chr(10)
              + chr(13));
            PosPrinter.PrintNormal(2, chr(27) + '!' + chr(57) + chr(27) + '|cA'
              + WEBURL + chr(13));
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
              PosPrinter.PrintNormal(2, chr(27) + '|cA' +
                RemoteDB.TipsTipsText.AsString + chr(10) + chr(13));
            end;
            PosPrinter.PrintNormal(2, chr(13) + chr(10) + chr(13) + chr(10) +
              chr(13) + chr(10));
            PosPrinter.PrintNormal(2, chr(13) + chr(10) + chr(13) + chr(10) +
              chr(13) + chr(10));
            PosPrinter.CutPaper(70);

          finally
            RemoteDB.FreeItemsTo;
          end;
        end
        else
        begin // End if Opos
          { TicketToPrint:=TTicketJob.Create;
            try
            TicketToPrint.Printer:=Mainform.Parameter['PrintersTicketPrinter'];
            TicketToPrint.Logo:=PrintLogo;
            TicketToPrint.Url:=WEBURL;
            TicketToPrint.ID:=RemoteDB.Sales.FieldByName('sales_location').AssTring+'-'+RemoteDB.Sales.FieldByName('sales_id').AssTring;
            TicketToPrint.ShopData:=ShopDataList;
            if Mainform.Parameter['PrintersTicketContinuous']='TRUE' then TicketToPrint.Model:=TmContinuous;
            TicketToPrint.AddBox('Vente',True,bsProd);
            with TadvStringGrid(TAdvTabSheet(MainForm.PageControlSalesCaddy.ActivePage).Controls[index])do
            for NowRow:=1 To Rowcount-2 do begin
            TicketToPrint.AddLine(Cells[2,NowRow],Cells[4,NowRow],Cells[1,NowRow],'Vente');
            end;

            if NumberEditCash.Value>0 then begin
            TicketToPrint.AddFinancialLine('Liquide :',NumberEditCash.Value);
            end;
            if NumberEditBCT.Value>0 then begin
            TicketToPrint.AddFinancialLine('Carte de banque :',NumberEditBct.Value);
            end;
            if NumberEditVisa.Value>0 then begin
            TicketToPrint.AddFinancialLine('Carte de crédit :',NumberEditVisa.Value);
            end;
            if NumberEditProton.Value>0 then begin
            TicketToPrint.AddFinancialLine('Porte monnaie :',NumberEditProton.Value);
            end;
            if NumberEditVoucher.Value>0 then begin
            TicketToPrint.AddFinancialLine('Bon achat :',NumberEditVoucher.Value);
            end;
            if Strtofloat(LabelSolde.Caption)<0 then begin
            TicketToPrint.AddFinancialLine('Rendu :',-Strtofloat(LabelSolde.Caption));
            end;

            if RemoteDB.CustomersCustomers_nbr.Value > 100 then begin
            TicketToPrint.AddCustomerLine('Client # :',RemoteDB.CustomersCustomers_nbr.Text);
            TicketToPrint.AddCustomerLine('Nom :',RemoteDB.CustomersCustomers_lastname.Text);
            TicketToPrint.AddCustomerLine('Crédit :',RemoteDB.CustomersCustomers_credit.Text);
            TicketToPrint.AddCustomerLine('Points :',RemoteDB.CustomersCustomers_points.Text);
            end;

            TicketToPrint.Print;
            finally
            TicketToPrint.Free;
            end; }
        end; // End non Opos
      end; // End Ticket


      // Ajout du prix de la location dans le ventes

      // Find Customer Caddy
      SalesPage := -1;
      for i := 0 to Mainform.PageControlSalesCaddy.PageCount - 1 do
      begin
        for j := 0 to TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages[i])
          .ControlCount - 1 do
        begin
          if Mainform.PageControlSalesCaddy.Pages[i].Controls[j].Tag = 100 then
          begin
            if TEdit(Mainform.PageControlSalesCaddy.Pages[i].Controls[j])
              .Text = RemoteDB.Customerscustomers_nbr.AsString then
            begin
              SalesPage := i;
            end;
          end;
        end;
      end;

      // Create New caddy if not found
      if SalesPage = -1 then
      begin
        Mainform.SBNewSalesCaddyClick(Mainform);
        SalesPage := Mainform.PageControlSalesCaddy.ActivePageIndex;
      end;

      // Find Grid and populate
      for i := 0 to TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages[SalesPage]
        ).ControlCount - 1 do
      begin
        if TAdvTabSheet(Mainform.PageControlSalesCaddy.ActivePage).Controls[i]
          .ClassType = TAdvStringGrid then
        begin
          SalesGridIndex := i;
        end;
      end;

      for i := 0 to TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
        .ControlCount - 1 do
      begin
        if TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage).Controls[i]
          .ClassType = TAdvStringGrid then
        begin
          RentGridIndex := i;
        end;
      end;

      for NowRow := 1 to TAdvStringGrid
        (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
        .Controls[RentGridIndex]).Rowcount - 2 do
      begin
        // Add In the sales
        with TAdvStringGrid(TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages
          [SalesPage]).Controls[SalesGridIndex]) do
        begin
          nowrowsales := Rowcount - 1;
          Cells[0, nowrowsales] := 'LOCA';
          Cells[1, nowrowsales] := 'Location : ' +
            TAdvStringGrid
            (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
            .Controls[RentGridIndex]).Cells[1, NowRow];;
          Cells[2, nowrowsales] := '1';
          Cells[3, nowrowsales] :=
            TAdvStringGrid
            (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
            .Controls[RentGridIndex]).Cells[5, NowRow];
          Cells[4, nowrowsales] :=
            TAdvStringGrid
            (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
            .Controls[RentGridIndex]).Cells[5, NowRow];
          Cells[5, nowrowsales] := '0';
          Cells[6, nowrowsales] :=
            TAdvStringGrid
            (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
            .Controls[RentGridIndex]).Cells[3, NowRow];
          Cells[7, nowrowsales] := IntToStr(CONNECTEDSHOP);
          Cells[8, nowrowsales] := '0';
          Rowcount := nowrowsales + 2;
        end;
      end;

    finally
      RemoteDB.netshop_rent_transaction.Filter := '';
      RemoteDB.netshop_rent_transaction.Filtered := False;
    end;

  end; // if Rentout

  if RentOperation = RentIn then
  begin

    // Find Customer Caddy
    SalesPage := -1;
    for i := 0 to Mainform.PageControlSalesCaddy.PageCount - 1 do
    begin
      for j := 0 to TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages[i])
        .ControlCount - 1 do
      begin
        if Mainform.PageControlSalesCaddy.Pages[i].Controls[j].Tag = 95 then
        begin
          if TEdit(Mainform.PageControlSalesCaddy.Pages[i].Controls[j])
            .Text = RemoteDB.Customerscustomers_nbr.AsString then
          begin
            SalesPage := i;
          end;
        end;
      end;
    end;

    // Create New caddy if not found
    if SalesPage = -1 then
    begin
      Mainform.SBNewSalesCaddyClick(Mainform);
      SalesPage := Mainform.PageControlSalesCaddy.ActivePageIndex;
    end;

    // Find Grid and populate
    for i := 0 to TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages[SalesPage])
      .ControlCount - 1 do
    begin
      if TAdvTabSheet(Mainform.PageControlSalesCaddy.ActivePage).Controls[i]
        .ClassType = TAdvStringGrid then
      begin
        SalesGridIndex := i;
      end;
    end;

    // Locate Rent Grid
    for i := 0 to TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
      .ControlCount - 1 do
    begin
      if TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage).Controls[i]
        .ClassType = TAdvStringGrid then
      begin
        RentGridIndex := i;
      end;
    end;

    // PreCalcul des Retards de location
    for NowRow := 1 to TAdvStringGrid
      (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
      .Controls[RentGridIndex]).Rowcount - 2 do
    begin
      if RemoteDB.netshop_rent_transaction.Locate
        ('rent_transaction_product_model',
        TAdvStringGrid(TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
        .Controls[RentGridIndex]).Cells[0, NowRow], []) then
      begin
        if Round(RemoteDB.netshop_rent_transaction.FieldByName
          ('rent_transaction_due_date').Value) < Round(Now) then
        begin
          OverDueDays := Round(Now) -
            Round(RemoteDB.netshop_rent_transaction.FieldByName
            ('rent_transaction_due_date').Value + 1);
          RemoteDB.netshop_rent_schemes.Locate('rent_scheme_id',
            RemoteDB.netshop_rent_transaction.FieldByName
            ('rent_transaction_scheme_id').Value, []);
          OverDueAmount := OverDueDays * RemoteDB.netshop_rent_schemes.
            FieldByName('rent_scheme_extra_price').Value;
          // Add In the sales
          with TAdvStringGrid(TAdvTabSheet(Mainform.PageControlSalesCaddy.Pages
            [SalesPage]).Controls[SalesGridIndex]) do
          begin
            nowrowsales := Rowcount - 1;
            Cells[0, nowrowsales] := 'LOCA';
            Cells[1, nowrowsales] := 'Retard : ' +
              TAdvStringGrid
              (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
              .Controls[RentGridIndex]).Cells[1, NowRow];;
            Cells[2, nowrowsales] := '1';
            Cells[3, nowrowsales] := FloatToStrf(OverDueAmount, fffixed, 7, 2);
            Cells[4, nowrowsales] := FloatToStrf(OverDueAmount, fffixed, 7, 2);
            Cells[5, nowrowsales] := '0';
            Cells[6, nowrowsales] :=
              TAdvStringGrid
              (TAdvTabSheet(Mainform.PageControlRentCaddy.ActivePage)
              .Controls[RentGridIndex]).Cells[3, NowRow];
            Cells[7, nowrowsales] := IntToStr(CONNECTEDSHOP);
            Cells[8, nowrowsales] := '0';
            Rowcount := nowrowsales + 2;
          end;
        end; // end if overdue
      end; // end if locate transaction
    end; // end loop rows

  end;
end; // Procedure

end.
