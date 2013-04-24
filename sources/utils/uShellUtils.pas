unit uShellUtils;

interface

uses
  SysUtils, Dialogs, Classes, Forms, Controls, Windows,
  ShellApi;

procedure OpenWebPage (const URL: string);

implementation

{ TWebUtils }

procedure OpenWebPage(const URL: string);
begin
  ShellExecute(0, 'open', PAnsiChar (URL), nil, nil, SW_NORMAL);
end;

end.
