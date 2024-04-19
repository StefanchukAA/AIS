unit UnitKatalog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFormKatalog_SAA = class(TForm)
    ImageNez_SAA: TImage;
    ImageRyu_SAA: TImage;
    ImageYu_SAA: TImage;
    ImageTrop_SAA: TImage;
    LabelNez_SAA: TLabel;
    LabelNezChen_SAA: TLabel;
    LabelRyu_SAA: TLabel;
    LabelRyuChen_SAA: TLabel;
    LabelYu_SAA: TLabel;
    LabelYuChen_SAA: TLabel;
    LabelTrop_SAA: TLabel;
    LabelTropChen_SAA: TLabel;
    ButtonNez_SAA: TButton;
    ButtonYu_SAA: TButton;
    ButtonRyu_SAA: TButton;
    ButtonTrop_SAA: TButton;
    LabelPolz_SAA: TLabel;
    procedure ButtonNez_SAAClick(Sender: TObject);
    procedure ButtonRyu_SAAClick(Sender: TObject);
    procedure ButtonYu_SAAClick(Sender: TObject);
    procedure ButtonTrop_SAAClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure SetFullName(const FullName: string);
    { Public declarations }
  end;

var
  FormKatalog_SAA: TFormKatalog_SAA;

implementation

{$R *.dfm}

uses UnitOfZac;

procedure TFormKatalog_SAA.ButtonNez_SAAClick(Sender: TObject);
begin
FormOfZac_SAA.ShowModal;
Close;
end;

procedure TFormKatalog_SAA.ButtonRyu_SAAClick(Sender: TObject);
begin
FormOfZac_SAA.ShowModal;
Close;
end;

procedure TFormKatalog_SAA.ButtonTrop_SAAClick(Sender: TObject);
begin
FormOfZac_SAA.ShowModal;
Close;
end;

procedure TFormKatalog_SAA.ButtonYu_SAAClick(Sender: TObject);
begin
FormOfZac_SAA.ShowModal;
Close;
end;

procedure TFormKatalog_SAA.SetFullName(const FullName: string);
begin
  LabelPolz_SAA.Caption := 'Аккаунт: ' + FullName;
end;

end.
