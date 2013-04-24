unit uAboutFormController;

interface

uses
  SysUtils, Dialogs, Classes, Forms, Controls,
  uFormController, uAboutForm;

type
  TAboutFormController = class (TFormController)
  private
    procedure OnLinkClick(Sender: TObject);
  protected
    procedure AfterFormCreated; override;
  end;

var
  AboutFormController: TAboutFormController;

implementation

uses uApplicationService;

// ���������� ������������� �� ����� ����� � ����������: ����� ������� ����� � �������� ������ ����������
procedure TAboutFormController.AfterFormCreated;
begin
  (FForm as TAboutForm).OnLinkClick := OnLinkClick;
  inherited;
end;

procedure TAboutFormController.OnLinkClick(Sender: TObject);
begin
  TApplicationService.OpenMyWebPage;
end;

end.
