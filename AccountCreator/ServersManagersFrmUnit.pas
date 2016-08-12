unit ServersManagersFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, AccountCreatorMainFrmUnit, dxBarDBNav,
  dxBar;

type
  TFormManageServers = class(TForm)
    DBGrid1: TDBGrid;
    dxBarManagerServers: TdxBarManager;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarButton1: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManageServers: TFormManageServers;

implementation

{$R *.dfm}

end.
