program Validation.prj;

uses
  Vcl.Forms,
  Validation_U in 'Validation_U.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
