program Project_AIS_FlowerShop_SAA;

uses
  Vcl.Forms,
  UnitWelcome in 'UnitWelcome.pas' {FormWelcome_SAA},
  UnitVhod in 'UnitVhod.pas' {FormVhod_SAA},
  UnitSotrVhod in 'UnitSotrVhod.pas' {FormSotrVhod_SAA},
  UnitAvtori in 'UnitAvtori.pas' {FormAvtori_SAA},
  UnitReg in 'UnitReg.pas' {FormReg_SAA},
  UnitKatalog in 'UnitKatalog.pas' {FormKatalog_SAA},
  UnitOfZac in 'UnitOfZac.pas' {FormOfZac_SAA},
  UnitAdmin in 'UnitAdmin.pas' {FormAdmin_SAA},
  UnitOfZakaz in 'UnitOfZakaz.pas' {FormOfZakaz_SAA};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormWelcome_SAA, FormWelcome_SAA);
  Application.CreateForm(TFormVhod_SAA, FormVhod_SAA);
  Application.CreateForm(TFormSotrVhod_SAA, FormSotrVhod_SAA);
  Application.CreateForm(TFormAvtori_SAA, FormAvtori_SAA);
  Application.CreateForm(TFormReg_SAA, FormReg_SAA);
  Application.CreateForm(TFormKatalog_SAA, FormKatalog_SAA);
  Application.CreateForm(TFormOfZac_SAA, FormOfZac_SAA);
  Application.CreateForm(TFormAdmin_SAA, FormAdmin_SAA);
  Application.CreateForm(TFormOfZakaz_SAA, FormOfZakaz_SAA);
  Application.Run;
end.
