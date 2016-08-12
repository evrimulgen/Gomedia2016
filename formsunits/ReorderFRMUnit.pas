unit ReorderFRMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSEngn,

  DB,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxmdaset,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, dxPSCore,
  dxPSDBBasedXplorer, dxPgsDlg, dxPrnDlg, dxPScxCommon, dxBar,
  cxGridExportLink,




  dxPScxGridLnk, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv,
  dxPScxPageControlProducer, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers;

type
  TReorderForm = class(TForm)
    dxBarManager: TdxBarManager;
    dxBarButtonPrint: TdxBarButton;
    dxBarButtonSave: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    dxPageSetupDialog: TdxPageSetupDialog;
    dxPrintDialog: TdxPrintDialog;
    dxPrintStyleManager: TdxPrintStyleManager;
    dxPSDBBasedExplorer1: TdxPSDBBasedExplorer;
    dxPSEngineController: TdxPSEngineController;
    Grid: TcxGrid;
    Gridview: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    SaveDialog: TSaveDialog;
    TableData: TdxMemData;
    TableDataEAN: TStringField;
    TableDataNom: TStringField;
    TableDataRootCategoryName: TStringField;
    TableDataQuantity: TIntegerField;
    TableDataConfirmBO: TBooleanField;
    Source: TDataSource;
    GridviewRecId: TcxGridDBColumn;
    GridviewEAN: TcxGridDBColumn;
    GridviewName: TcxGridDBColumn;
    GridviewRootCategoryName: TcxGridDBColumn;
    GridviewQuantity: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    TableDataGroupAvailable: TIntegerField;
    TableDataAvailable: TIntegerField;
    GridviewGroupAvailable: TcxGridDBColumn;
    GridviewAvailable: TcxGridDBColumn;
    TableDataIDART: TStringField;
    GridviewIDART: TcxGridDBColumn;
    TableDataQCLD: TIntegerField;
    GridviewQCLD: TcxGridDBColumn;
    TableDataQSTOCK: TIntegerField;
    GridviewQSTOCK: TcxGridDBColumn;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure GridviewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReorderForm: TReorderForm;

implementation

uses MainFRMUnit, TransferRequestFRMUnit;

{$R *.dfm}

procedure TReorderForm.dxBarButton1Click(Sender: TObject);
var
  QueryString: Widestring;
  i: integer;
begin
  TableData.First;
  QueryString := '';
  i           := 1;
  while not TableData.Eof do
  begin
    if TableData.FieldByName('Quantity').AsInteger > 0 then
    begin
      QueryString := QueryString + '&id_art' + inttostr(i) + '=' + TableData.FieldByName('IDART').AsString;
      QueryString := QueryString + '&q' + inttostr(i) + '=' + TableData.FieldByName('Quantity').AsString;
      i           := i + 1;
    end;
    if i mod 15 = 0 then begin
      MainForm.WebbrowserCLDAddItems(QueryString);
      QueryString := '';
    end;
    TableData.Next;
  end;
  MainForm.WebbrowserCLDAddItems(QueryString);
  self.close;
end;

procedure TReorderForm.dxBarButtonPrintClick(Sender: TObject);
begin
  dxComponentPrinter.Print(true, nil);
end;

procedure TReorderForm.dxBarButtonSaveClick(Sender: TObject);
var
  Filename: string;
begin
  Filename            := 'Order' + '.xls';
  SaveDialog.Filename := Filename;
  if SaveDialog.Execute then
  begin
    ExportGridToExcel(SaveDialog.Filename, Grid, true, true, true);
  end;
end;

procedure TReorderForm.GridviewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  aTransferRequestForm: TTransferRequestForm;
begin
  aTransferRequestForm                        := TTransferRequestForm.Create(self);
  aTransferRequestForm.products_model         := TableData.FieldByName('EAN').AsString;
  aTransferRequestForm.products_name          := TableData.FieldByName('Name').AsString;
  aTransferRequestForm.products_root_category := TableData.FieldByName('RootCategoryName').AsString;
  aTransferRequestForm.Show;
end;

end.
