unit uPersonDbMapper;

interface

uses
  SysUtils, DB, ADODB,
  uPerson;

type
  TPersonDbMapper = class
  private
    FConnection: TADOConnection;
    function CreateQuery: TADOQuery;
    procedure DestroyQuery (Query: TADOQuery);
  public
    constructor Create (Connection: TADOConnection);
    procedure Read (Person: TPerson; const Id: integer);
    procedure Update (Person: TPerson);
  end;

implementation

{ TPersonMapper }

// Todo: когда по€в€тс€ другие мапперы, убрать повтор€ющийс€ код
constructor TPersonDbMapper.Create(Connection: TADOConnection);
begin
  FConnection := Connection;
end;

procedure TPersonDbMapper.Read (Person: TPerson; const Id: integer);
var Query: TADOQuery;
begin
  Query := CreateQuery;
  try
    Query.SQL.Text := 'select id, first_name, last_name, birthdate from persons where id=:id';
    Query.Parameters.ParamByName('id').Value := Id;

    try
      Query.Open;
    except
      // Todo: улучшить отображение ошибки выполнени€ запроса
      raise;
    end;

    if Query.RecordCount = 0 then raise Exception.Create('ќшибка в TPersonMapper.LoadById: не удалось найти запись с id=' + IntToStr(Id));
    if Query.RecordCount > 1 then raise Exception.Create('ќшибка в TPersonMapper.LoadById: найдено несколько записей c id=' + IntToStr(Id));

    Person.Id := Query.FieldByName('id').AsInteger;
    Person.FirstName := Query.FieldByName('first_name').AsString;
    Person.LastName := Query.FieldByName('last_name').AsString;
    Person.Birthdate := Query.FieldByName('birthdate').AsDateTime;
  finally
    DestroyQuery(Query);
  end;
end;

procedure TPersonDbMapper.Update(Person: TPerson);
var Query: TADOQuery;
begin
  Query := CreateQuery;
  try
    Query.SQL.Text := 'update persons set first_name=:first_name, last_name=:last_name, birthdate=:birthdate where id=:id';
    Query.Parameters.ParamByName('id').Value := Person.Id;
    Query.Parameters.ParamByName('first_name').Value := Person.FirstName;
    Query.Parameters.ParamByName('last_name').Value := Person.LastName;
    Query.Parameters.ParamByName('birthdate').Value := Person.Birthdate;
    try
      Query.ExecSQL;
    except
      // Todo: улучшить отображение ошибки выполнени€ запроса
      raise;
    end;
  finally
    DestroyQuery(Query);
  end;
end;

function TPersonDbMapper.CreateQuery: TADOQuery;
begin
  Result:= TADOQuery.Create (nil);
  Result.Connection := FConnection;
end;

procedure TPersonDbMapper.DestroyQuery(Query: TADOQuery);
begin
  FreeAndNil (Query);
end;

end.
