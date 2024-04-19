unit UnitOfZac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TFormOfZac_SAA = class(TForm)
    EditFIO_SAA: TEdit;
    EditNomer_SAA: TEdit;
    LabelFIO_SAA: TLabel;
    LabelNomer_SAA: TLabel;
    ButtonOf_SAA: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure ButtonOf_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOfZac_SAA: TFormOfZac_SAA;

implementation

{$R *.dfm}

uses UnitKatalog, UnitOfZakaz;


procedure TFormOfZac_SAA.ButtonOf_SAAClick(Sender: TObject);
begin
if (EditFIO_SAA.Text <> '') and (EditNomer_SAA.Text <> '') then
  begin
    ADOQuery1.SQL.Text := 'INSERT INTO `ФИО` (`ФИО`, `Телефон`) VALUES (:Field1Value, :Field2Value)';
    ADOQuery1.Parameters.ParamByName('Field1Value').Value := EditFIO_SAA.Text;
    ADOQuery1.Parameters.ParamByName('Field2Value').Value := EditNomer_SAA.Text;
    ADOQuery1.ExecSQL;
    FormKatalog_SAA.Show;
  end
  else
    ShowMessage('Пожалуйста, введите данные!');
    FormOfZakaz_SAA.ShowModal;
    Close;
end;

end.
