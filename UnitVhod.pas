unit UnitVhod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormVhod_SAA = class(TForm)
    ButtonEst_SAA: TButton;
    ButtonReg_SAA: TButton;
    procedure ButtonEst_SAAClick(Sender: TObject);
    procedure ButtonReg_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVhod_SAA: TFormVhod_SAA;

implementation

 uses UnitAvtori, UnitReg;

{$R *.dfm}

procedure TFormVhod_SAA.ButtonEst_SAAClick(Sender: TObject);
begin
FormAvtori_SAA.ShowModal;
Close;
end;

procedure TFormVhod_SAA.ButtonReg_SAAClick(Sender: TObject);
begin
FormReg_SAA.ShowModal;
Close;
end;

end.
