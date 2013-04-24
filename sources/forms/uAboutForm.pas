unit uAboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Jpeg;

type
  TAboutForm = class(TForm)
    pnMain: TPanel;
    btnOk: TButton;
    imLogo: TImage;
    lbText: TLabel;
    lbLink: TLabel;
    procedure lbLinkClick(Sender: TObject);
  private
    FOnLinkClick: TNotifyEvent;
  public
    property OnLinkClick: TNotifyEvent read FOnLinkClick write FOnLinkClick;
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.lbLinkClick(Sender: TObject);
begin
  if Assigned (FOnLinkClick) then FOnLinkClick (self);
end;

end.
