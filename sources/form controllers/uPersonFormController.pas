unit uPersonFormController;

interface

uses
  SysUtils, Dialogs, Classes, Forms, Controls,
  uFormController, uPerson, uPersonForm, uPersonFormBinder;

type
  TPersonFormController = class (TFormController)
  protected
    procedure AfterFormCreated; override;
  public
    procedure PopulateForm (Person: TPerson);
    procedure PickForm (Person: TPerson);
  end;

var
  PersonFormController: TPersonFormController;

implementation

procedure TPersonFormController.AfterFormCreated;
begin
  inherited;
end;

procedure TPersonFormController.PopulateForm (Person: TPerson);
begin
  TPersonFormBinder.PopulateForm (FForm, Person);
end;

procedure TPersonFormController.PickForm (Person: TPerson);
begin
  TPersonFormBinder.PickForm (FForm, Person);
end;

end.

