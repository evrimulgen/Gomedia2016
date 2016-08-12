unit UnitFRMDacalSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientDMunit,
  cxControls,
  DB,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxBar, dxBarDBNav,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData;

type
  TFormDacalSearch = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1Bar1: TdxBar;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarButtonSearch: TdxBarButton;
    dxBarEditSearchText: TdxBarEdit;
    dxBarManager1Bar2: TdxBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1machine_id: TcxGridDBColumn;
    cxGrid1DBTableView1slot_id: TcxGridDBColumn;
    cxGrid1DBTableView1model: TcxGridDBColumn;
    cxGrid1DBTableView1customer_nbr: TcxGridDBColumn;
    cxGrid1DBTableView1isroot: TcxGridDBColumn;
    cxGrid1DBTableView1nextid: TcxGridDBColumn;
    procedure dxBarButtonSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDacalSearch: TFormDacalSearch;

implementation

{$R *.dfm}

procedure TFormDacalSearch.dxBarButtonSearchClick(Sender: TObject);
begin
  RemoteDB.Caroussel.Locate('model', dxBarEditSearchText.Text, [locaseinsensitive]);
end;

end.
