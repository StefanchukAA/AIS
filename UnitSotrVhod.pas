unit UnitSotrVhod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormSotrVhod_SAA = class(TForm)
    EditLog_SAA: TEdit;
    LabelLog_SAA: TLabel;
    LabelPar_SAA: TLabel;
    EditPar_SAA: TEdit;
    ButtonStrVhod_SAA: TButton;
    procedure ButtonStrVhod_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSotrVhod_SAA: TFormSotrVhod_SAA;

implementation

{$R *.dfm}
uses UnitAdmin;


procedure TFormSotrVhod_SAA.ButtonStrVhod_SAAClick(Sender: TObject);
begin
var
  Login, Password: string;
begin
Login:='студент'; Password:='12345';
 if (EditLog_SAA.text=login) and (EditPar_SAA.text=password) then begin
    FormAdmin_SAA.show;
  EditLog_SAA.text:='';
  EditPar_SAA.text:='';
  end
  else
  showmessage('Неверные данные!');
end;
Close;
end;

end.
