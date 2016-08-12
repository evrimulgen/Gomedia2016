program AccountCreator;

uses
  Forms,
  AccountCreatorMainFrmUnit in 'AccountCreatorMainFrmUnit.pas' {MainForm},
  ServersManagersFrmUnit in 'ServersManagersFrmUnit.pas' {FormManageServers};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'JonaMedia Accounts Creator';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormManageServers, FormManageServers);
  Application.Run;
end.
