unit uPersonRepository;

interface

uses DB, ADODB, uDomainTypes, uPerson, uPersonDbMapper, uDb;

type
  TPersonRepository = class
  private
    FMapper: TPersonDbMapper;
  public
    constructor Create (Connection: TADOConnection); virtual;
    destructor Destroy; override;
    procedure Add (Person: TPerson);
    procedure Remove (Person: TPerson);
    procedure Update (Person: TPerson);
    function Get (Id: TPersonId): TPerson;
  end;

implementation

{ TPersonRepository }

constructor TPersonRepository.Create (Connection: TADOConnection);
begin
  FMapper := TPersonDbMapper.Create(Connection);
end;

destructor TPersonRepository.Destroy;
begin
  FMapper.Free;
  inherited;
end;

procedure TPersonRepository.Add(Person: TPerson);
begin
  //
end;

procedure TPersonRepository.Remove(Person: TPerson);
begin

end;

function TPersonRepository.Get(Id: TPersonId): TPerson;
begin
  Result := TPerson.Create;
  FMapper.Read(Result, Id);
end;

procedure TPersonRepository.Update(Person: TPerson);
begin
  FMapper.Update(Person);
end;

end.
