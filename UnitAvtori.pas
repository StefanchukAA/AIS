unit UnitAvtori;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormAvtori_SAA = class(TForm)
    EditLog_SAA: TEdit;
    EditPar_SAA: TEdit;
    LabelLog_SAA: TLabel;
    LabelPar_SAA: TLabel;
    ButtonAvtori_SAA: TButton;
    function GetFullNameFromNameFile(Index: Integer): string;
    procedure ButtonAvtori_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure SetFullName(const FullName: string);
    { Public declarations }
  end;

var
  FormAvtori_SAA: TFormAvtori_SAA;
  GlobalLogin: string;
  GlobalPassword: string;
  MontserratFont: TFont;

implementation

uses UnitKatalog;

{$R *.dfm}

procedure TFormAvtori_SAA.ButtonAvtori_SAAClick(Sender: TObject);
var
  saveTxt: TStringList;
  i: Integer;
  LoginandPassword: string;
begin
  GlobalLogin := EditLog_SAA.Text;
  GlobalPassword := EditPar_SAA.Text;
  saveTxt := TStringList.Create;
  try
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    LoginandPassword := Trim(EditLog_SAA.Text) + ' ' + Trim(EditPar_SAA.Text);
    for i := 0 to saveTxt.Count - 1 do
    begin
      if LoginandPassword = Trim(saveTxt[i]) then
      begin
        // Передаем ФИО в Form4
        FormKatalog_SAA.SetFullName(GetFullNameFromNameFile(i));
        FormKatalog_SAA.Show;
        Exit;
      end;
    end;
    ShowMessage('Неправильные данные!');
  finally
    saveTxt.Free;
  end;
  Close;
end;

function TFormAvtori_SAA.GetFullNameFromNameFile(Index: Integer): string;
var
  nameTxt: TStringList;
begin
  Result := ''; // Инициализируем результат
  nameTxt := TStringList.Create;
  try
    nameTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    // Проверка, чтобы индекс не выходил за границы массива nameTxt
    if (Index < nameTxt.Count) then
      Result := nameTxt[Index];
  finally
    nameTxt.Free;
  end;
end;

procedure TFormAvtori_SAA.SetFullName(const FullName: string);
begin
  //LabelPolz_SAA.Caption := 'Аккаунт: ' + FullName;
end;

end.
