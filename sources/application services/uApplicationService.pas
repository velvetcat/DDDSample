unit uApplicationService;

interface

uses
  SysUtils, Dialogs, Classes, Controls, Forms, uShellUtils;

type
  TApplicationService = class
  public
    class procedure CloseApplication;
    class procedure ShowAboutBox;
    class procedure OpenMyWebPage;
  end;

implementation

uses uAboutFormController;

{ TApplicationService }

class procedure TApplicationService.CloseApplication;
begin
  Application.MainForm.Close;
end;

class procedure TApplicationService.ShowAboutBox;
begin
  AboutFormController.ShowFormModal;
end;

class procedure TApplicationService.OpenMyWebPage;
begin
  OpenWebPage('http://www.alexandermozgovoy.com');
end;

end.
