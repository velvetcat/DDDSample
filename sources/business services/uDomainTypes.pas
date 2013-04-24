unit uDomainTypes;

interface

type
  TId = integer;

  TFirstName = string;
  TLastName = string;
  TPatronimyc = string;

  TPersonId = TId;

  TPersonName = record
    FirstName: TFirstName;
    LastName: TLastName;
    Patronymic: TPatronimyc;
  end;

  TPersonNameVO = class
  private
    FFirstName: TFirstName;
    FLastName: TLastName;
    FPatronymic: TPatronimyc;
  public
    constructor Create (const FirstName, LastName, Patronymic: string);
    property FirstName: TFirstName read FFirstName;
    property LastName: TLastName read FLastName;
    property Patronymic: TPatronimyc read FPatronymic;
  end;

implementation


constructor TPersonNameVO.Create(const FirstName, LastName, Patronymic: string);
begin
  FFirstName := FirstName;
  FLastName := LastName;
  FPatronymic := Patronymic;
end;


end.
