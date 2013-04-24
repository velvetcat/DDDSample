unit uPersonFormBinder;

interface

uses
  SysUtils, Classes, Forms, uPerson, uPersonForm;

type
  TPersonFormBinder=class
    class procedure PopulateForm (Form: TForm; Person: TPerson);
    class procedure PickForm (Form: TForm; Person: TPerson);
  end;

implementation

{ TPersonFormBinder }
class procedure TPersonFormBinder.PickForm(Form: TForm; Person: TPerson);
begin
  Person.Name := TPersonName.Create((Form as TPersonForm).FirstName, (Form as TPersonForm).LastName);
  Person.Birthdate := (Form as TPersonForm).Birthdate;
end;

class procedure TPersonFormBinder.PopulateForm(Form: TForm; Person: TPerson);
begin
  (Form as TPersonForm).FirstName := Person.Name.FirstName;
  (Form as TPersonForm).LastName := Person.Name.LastName;
  (Form as TPersonForm).Birthdate := Person.Birthdate;
end;

end.
