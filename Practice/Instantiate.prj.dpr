program Instantiate.prj;

uses
  Vcl.Forms,
  Instantiate_U in 'Instantiate_U.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
