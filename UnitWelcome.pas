unit UnitWelcome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormWelcome_SAA = class(TForm)
    ButtonZakaz_SAA: TButton;
    ButtonSotrydnik_SAA: TButton;
    LabelWelcome_SAA: TLabel;
    procedure ButtonZakaz_SAAClick(Sender: TObject);
    procedure ButtonSotrydnik_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormWelcome_SAA: TFormWelcome_SAA;

implementation


uses UnitVhod, UnitSotrVhod;

{$R *.dfm}

procedure TFormWelcome_SAA.ButtonSotrydnik_SAAClick(Sender: TObject);
begin
FormSotrVhod_SAA.ShowModal;
end;

procedure TFormWelcome_SAA.ButtonZakaz_SAAClick(Sender: TObject);
begin
FormVhod_SAA.ShowModal;
Close;
end;

end.
