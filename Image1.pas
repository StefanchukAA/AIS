unit Image1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls;

type
  TImage1 = class(TImage)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TImage1]);
end;

end.
