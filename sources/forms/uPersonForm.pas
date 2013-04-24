unit uPersonForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, StdCtrls, ComCtrls, ExtCtrls;

type
  TPersonForm = class(TForm)
    pnMain: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    lbFirstName: TLabel;
    lbLastName: TLabel;
    lbBirthdate: TLabel;
    edFirstName: TEdit;
    edLastName: TEdit;
    edBirthdate: TDateTimePicker;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FOnFormApply: TNotifyEvent;
    FOnFormShow: TNotifyEvent;
    function GetBirthdate: TDateTime;
    function GetFirstName: string;
    function GetLastName: string;
    procedure SetBirthdate(const Value: TDateTime);
    procedure SetFirstName(const Value: string);
    procedure SetLastName(const Value: string);
  public
    property OnFormApply: TNotifyEvent read FOnFormApply write FOnFormApply;
    property OnFormShow: TNotifyEvent read FOnFormShow write FOnFormShow;
    property FirstName: string read GetFirstName write SetFirstName;
    property LastName: string read GetLastName write SetLastName;
    property Birthdate: TDateTime read GetBirthdate write SetBirthdate;
  end;

var PersonForm: TPersonForm;

implementation

{$R *.dfm}

function TPersonForm.GetFirstName: string;
begin
  Result := edFirstName.Text;
end;

function TPersonForm.GetLastName: string;
begin
  Result := edLastName.Text;
end;

function TPersonForm.GetBirthdate: TDateTime;
begin
  Result := edBirthdate.Date;
end;

procedure TPersonForm.SetFirstName(const Value: string);
begin
  edFirstName.Text := Value;
end;

procedure TPersonForm.SetLastName(const Value: string);
begin
  edLastName.Text := Value;
end;

procedure TPersonForm.SetBirthdate(const Value: TDateTime);
begin
  edBirthdate.Date := Value;
end;

procedure TPersonForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr (27) then btnCancel.Click;
end;

procedure TPersonForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned (FOnFormApply) then FOnFormApply (Self);
end;

procedure TPersonForm.FormShow(Sender: TObject);
begin
  if Assigned (FOnFormShow) then FOnFormShow (Self);
end;

end.
