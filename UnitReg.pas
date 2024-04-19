unit UnitReg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormReg_SAA = class(TForm)
    EditImi_SAA: TEdit;
    EditLog_SAA: TEdit;
    EditPar_SAA: TEdit;
    LabelImi_SAA: TLabel;
    LabelLog_SAA: TLabel;
    LabelPar_SAA: TLabel;
    ButtonNext_SAA: TButton;
    procedure ButtonNext_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReg_SAA: TFormReg_SAA;
  GlobalLogin: string;
  GlobalPassword: string;
  MontserratFont: TFont;

implementation

{$R *.dfm}

uses UnitAvtori;

procedure TFormReg_SAA.ButtonNext_SAAClick(Sender: TObject);
var
  saveTxt, nametxt: TStringList;
  Login, Password, FullName: string;
begin
  saveTxt := TStringList.Create;
  nametxt := TStringList.Create;
  try
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    nametxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    if (EditImi_SAA.Text <> '') and (EditLog_SAA.Text <> '') and (EditPar_SAA.Text <> '') then
    begin
      FullName := Format('%s', [EditImi_SAA.Text]);
      Login := EditLog_SAA.Text;
      Password := EditPar_SAA.Text;
      saveTxt.Add(Login + ' ' + Password);
      nametxt.Add(FullName);
      saveTxt.SaveToFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
      nametxt.SaveToFile(ExtractFilePath(Application.ExeName) + 'name.txt');
      FormReg_SAA.Close;
      FormAvtori_SAA.ShowModal;

    end
    else
    Showmessage('¬ведите все данные');
  finally
    saveTxt.Free;
    nametxt.Free;
  end;
  EditImi_SAA.Text := '';
  EditLog_SAA.Text := '';
  EditPar_SAA.Text := '';

end;
end.
