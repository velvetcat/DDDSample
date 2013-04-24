program DDDSample;

uses
  Forms,
  uShellUtils in 'utils\uShellUtils.pas',
  uMainForm in 'forms\uMainForm.pas' {MainForm},
  uPersonForm in 'forms\uPersonForm.pas' {PersonForm},
  uAboutForm in 'forms\uAboutForm.pas' {AboutForm},
  uDB in 'database mappers\uDB.pas',
  uPerson in 'entities\uPerson.pas',
  uFormController in 'form controllers\uFormController.pas',
  uMainFormController in 'form controllers\uMainFormController.pas',
  uAboutFormController in 'form controllers\uAboutFormController.pas',
  uPersonFormController in 'form controllers\uPersonFormController.pas',
  uPersonFormBinder in 'form controllers\uPersonFormBinder.pas',
  uPersonDbMapper in 'database mappers\uPersonDbMapper.pas',
  uPersonRepository in 'repositories\uPersonRepository.pas',
  uApplicationService in 'application services\uApplicationService.pas',
  uBusinessService in 'business services\uBusinessService.pas',
  uDomainTypes in 'business services\uDomainTypes.pas';

{$R *.res}

const
  CONNECTION_STRING = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Dropbox\!projects\DDDSample\db\base.mdb;User Id=admin;Password=;'; // либо 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog=base;Data Source=WILDSAM\WILDSAM;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;' +'Workstation ID=WILDSAM;Use Encryption for Data=False;Tag with column collation when possible=False';

begin
  Application.Initialize;
  Application.Title := 'DDD Sample Application';

  Db := TDb.Create(CONNECTION_STRING);

  MainFormController := TMainFormController.Create (nil, TMainForm);
  AboutFormController := TAboutFormController.Create(nil, TAboutForm);
  PersonFormController := TPersonFormController.Create(nil, TPersonForm);

  Application.Run;
end.
