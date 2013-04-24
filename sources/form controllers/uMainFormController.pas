unit uMainFormController;

interface

uses
  SysUtils, Dialogs, Classes, Controls, Forms,
  uFormController, uMainForm;

type
  TMainFormController = class (TFormController)
  private
    procedure OnFormAboutActionExecute (Sender: TObject);
    procedure OnFormCloseActionExecute (Sender: TObject);
    procedure OnFormTestActionExecute (Sender: TObject);
  protected
    procedure AfterFormCreated; override;
  public
  end;

var MainFormController: TMainFormController;

implementation

uses uApplicationService, uBusinessService;

procedure TMainFormController.AfterFormCreated;
begin
  (Form as TMainForm).OnAboutActionExecute := OnFormAboutActionExecute;
  (Form as TMainForm).OnCloseActionExecute := OnFormCloseActionExecute;
  (Form as TMainForm).OnTestActionExecute := OnFormTestActionExecute;
  inherited;
end;

procedure TMainFormController.OnFormAboutActionExecute (Sender: TObject);
begin
   TApplicationService.ShowAboutBox;
end;

procedure TMainFormController.OnFormCloseActionExecute (Sender: TObject);
begin
   TApplicationService.CloseApplication;
end;

procedure TMainFormController.OnFormTestActionExecute(Sender: TObject);
begin
  TBusinessService.EditPerson(3);
end;

end.
