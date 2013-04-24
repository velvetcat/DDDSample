unit uPerson;

interface

uses
  SysUtils, uDomainTypes;

type

  TPerson = class
  private
    FId: TPersonId;
    FFirstName: TFirstName;
    FLastName: TLastName;
    FBirthdate: TDateTime;
  public
    property Id: TPersonId read FId write FId;
    property FirstName: TFirstName read FFirstName write FFirstName;
    property LastName: TLastName read FLastName write FLastName;
    property Birthdate: TDateTime read FBirthdate write FBirthdate;
  end;

implementation

{ TPerson }

// Todo: —делать валидацию приход€щих значений полей

end.
