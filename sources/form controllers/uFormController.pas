unit uFormController;

interface

uses
  SysUtils, Classes, Dialogs, Forms, Controls;

type
  TFormClass = class of TForm;

  TFormController = class
    FApp: TObject;
    FForm: TForm;
  protected
    procedure AfterFormCreated; virtual; abstract;
  public
    property App: TObject read FApp;
    property Form: TForm read FForm write FForm;
    constructor Create (App: TObject; FormClass: TFormClass); virtual;
    destructor Destroy; override;
    procedure ShowForm;
    function ShowFormModal: TModalResult;
  end;

implementation

constructor TFormController.Create(App: TObject; FormClass: TFormClass);
begin
  FApp := App;
  Application.CreateForm (FormClass, FForm);
  AfterFormCreated;
end;

destructor TFormController.Destroy;
begin
  FForm.Free;
  inherited;
end;

procedure TFormController.ShowForm;
begin
  FForm.Show;
end;

function TFormController.ShowFormModal: TModalResult;
begin
  Result := FForm.ShowModal;
end;

end.
