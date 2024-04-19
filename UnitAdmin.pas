unit UnitAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Datasnap.Provider, Vcl.StdCtrls;

type
  TFormAdmin_SAA = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin_SAA: TFormAdmin_SAA;

implementation

{$R *.dfm}

procedure TFormAdmin_SAA.Button1Click(Sender: TObject);
begin
try
ADOQuery1.Active:=True;
ADOQuery1.Post;
except
on e:Exception do
end;
end;

procedure TFormAdmin_SAA.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid1.Canvas.Brush.Color := clWhite;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  Close;
end;

end.
