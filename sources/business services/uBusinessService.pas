unit uBusinessService;

interface

uses
  SysUtils, Dialogs, Classes, Controls, Forms, uShellUtils, uDomainTypes, uPerson, uPersonRepository, uDb;

type
  TBusinessService = class
  public
    class function EditPerson (const PersonId: TPersonId): boolean; overload;
    class function EditPerson (const Person: TPerson): boolean; overload;
  end;

implementation

uses uPersonFormController;

class function TBusinessService.EditPerson (const PersonId: TPersonId): boolean;
var
  Repository: TPersonRepository;
  Person: TPerson;
begin
  Repository := TPersonRepository.Create (Db.Connection);
  Person := Repository.Get(PersonId);
  Result := EditPerson(Person);
  if Result then Repository.Update(Person);
  Person.Free;
  Repository.Free;
end;

class function TBusinessService.EditPerson(const Person: TPerson): boolean;
begin
  Result := false;
  PersonFormController.PopulateForm(Person);
  if PersonFormController.ShowFormModal = mrOk then begin
    PersonFormController.PickForm(Person);
    Result := true;
  end;
end;

end.
