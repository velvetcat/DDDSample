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

{ TPersonFormMapper }
class procedure TPersonFormBinder.PickForm(Form: TForm; Person: TPerson);
begin
  Person.FirstName := (Form as TPersonForm).FirstName;
  Person.LastName := (Form as TPersonForm).LastName;
  Person.Birthdate := (Form as TPersonForm).Birthdate;
end;

class procedure TPersonFormBinder.PopulateForm(Form: TForm; Person: TPerson);
begin
  (Form as TPersonForm).FirstName := Person.FirstName;
  (Form as TPersonForm).LastName := Person.LastName;
  (Form as TPersonForm).Birthdate := Person.Birthdate;
end;

end.
