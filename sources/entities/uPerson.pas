unit uPerson;

interface

uses
  SysUtils, uDomainTypes;

type

  TPersonId = TId;

  TPersonName = class
  private
    FFirstName: TFirstName;
    FLastName: TLastName;
  public
    constructor Create (const FirstName: TFirstName; const LastName: TLastName);
    property FirstName: TFirstName read FFirstName;
    property LastName: TLastName read FLastName;
  end;



  TPerson = class
  private
    FId: TPersonId;
    FName: TPersonName;
    FBirthdate: TDateTime;
    procedure SetName(const Value: TPersonName);
  public
    property Id: TPersonId read FId write FId;
    property Name: TPersonName read FName write SetName;
    property Birthdate: TDateTime read FBirthdate write FBirthdate;
  end;

implementation

constructor TPersonName.Create (const FirstName: TFirstName; const LastName: TLastName);
begin
  FFirstName := FirstName;
  FLastName := LastName;
end;

// Todo: —делать валидацию приход€щих значений полей
procedure TPerson.SetName(const Value: TPersonName);
begin
  FName.Free;
  FName := Value;
end;

end.
