unit UnitOfZakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TFormOfZakaz_SAA = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOfZakaz_SAA: TFormOfZakaz_SAA;

implementation

{$R *.dfm}

uses UnitKatalog;

procedure TFormOfZakaz_SAA.Button1Click(Sender: TObject);
begin
if (Edit1.Text <> '') and (Edit2.Text <> '') then
  begin
    ADOQuery1.SQL.Text := 'INSERT INTO `Букеты` (`Букет`, `Количество`) VALUES (:Field1Value, :Field2Value)';
    ADOQuery1.Parameters.ParamByName('Field1Value').Value := Edit1.Text;
    ADOQuery1.Parameters.ParamByName('Field2Value').Value := Edit2.Text;
    ADOQuery1.ExecSQL;
    ShowMessage('Спасибо, Ваш заказ оформлен!');
  end
  else
    ShowMessage('Пожалуйста, введите данные!');
    FormOfZakaz_SAA.ShowModal;
    Close;
end;

procedure TFormOfZakaz_SAA.Button2Click(Sender: TObject);
begin
 Close();
end;

end.
