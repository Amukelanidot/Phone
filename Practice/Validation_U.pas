unit Validation_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtName: TEdit;
    rgpColor: TRadioGroup;
    rgpTestmark: TRadioGroup;
    btnShow: TButton;
    btnReset: TButton;
    btnClose: TButton;
    cmbTime: TComboBox;
    r1: TRichEdit;
    procedure btnShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sname, scolor, sgrade, symbol: string;
  time: integer;

implementation

{$R *.dfm}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  edtName.text := 'Enter the studen''s name';
  rgpColor.itemindex := -1;
  rgpTestmark.itemindex := -1;
  cmbTime.text := 'How long was the test';
  r1.clear;
  Form1.color := clwhite;
end;

procedure TForm1.btnShowClick(Sender: TObject);
begin
  if edtName.text = '' then
  begin
    showmessage('Enter your name');
    exit;
  end;

  if rgpColor.itemindex = -1 then
  begin
    showmessage('Pick a color');
    exit;
  end;

  if rgpTestmark.itemindex = -1 then
  begin
    showmessage('Pick the mark given');
    exit;
  end;

  case rgpTestmark.itemindex of
    0:
      symbol := 'A';
    1:
      symbol := 'B';
    2:
      symbol := 'C';
    3:
      symbol := 'D';
    4:
      symbol := 'E';
    5:
      symbol := 'F';
  end;

  case rgpColor.itemindex of
    0:
      Form1.color := clblue;
    1:
      Form1.color := clgreen;
    2:
      Form1.color := clpurple;
  end;

  sname := edtName.text;
  scolor := rgpColor.items[rgpColor.itemindex];
  time := strtoint(cmbTime.items[cmbTime.itemindex]);
  r1.lines.add('Name of student: ' + ' ' + sname);
  r1.lines.add('Course: ' + ' ' + scolor);
  r1.lines.add('Grade : ' + ' ' + symbol);
  r1.lines.add('Time  : ' + ' ' + inttostr(time) + ' ');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  showmessage('Fill in all the information needed to show the results');
  r1.lines.clear;
end;

end.
