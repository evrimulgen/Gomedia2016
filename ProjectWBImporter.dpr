program ProjectWBImporter;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  WinbooksOfficeApi_TLB in 'units\WinbooksOfficeApi_TLB.pas',
  ClientDMunit in 'formsunits\ClientDMunit.pas' {RemoteDB: TDataModule},
  DavidUtilsunit in 'units\DavidUtilsunit.pas',
  ReconcileFRMUnit in 'formsunits\ReconcileFRMUnit.pas' {ReconcileErrorForm},
  GlobalsUnit in 'units\GlobalsUnit.pas',
  Threadsunit in 'units\Threadsunit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRemoteDB, RemoteDB);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
