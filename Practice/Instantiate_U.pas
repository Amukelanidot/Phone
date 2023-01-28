unit Instantiate_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    edtname: TEdit;
    sedscore: TSpinEdit;
    btndisplay: TButton;
    btnshape: TButton;
    redshow: TRichEdit;
    rgpcolor: TRadioGroup;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btndisplayClick(Sender: TObject);
    procedure btnshapeClick(Sender: TObject);
    procedure rgpcolorClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iscore: integer;
  smesg, sname: string;
  shp: tshape;
  i: integer;

implementation

{$R *.dfm}

procedure TForm1.btndisplayClick(Sender: TObject);
begin
  iscore := sedscore.value;
  sname := edtname.text;

  case iscore of
    80 .. 100:
      smesg := 'Gold medal';
    70 .. 79:
      smesg := 'Silver medal';
    60 .. 69:
      smesg := 'Bronze medal';
    40 .. 59:
      smesg := 'Certificate';
  else
    showmessage('Disqualified');
  end;

  redshow.lines.add(sname + ': ' + smesg);
end;

procedure TForm1.btnshapeClick(Sender: TObject);
var
  shp: tshape;
begin
  shp := tshape.Create(Form1);
  shp.Parent := Form1;
  shp.left := 450;
  shp.top := 225;
  shp.brush.Color := clblack;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.itemindex of
    0:
      i := 20;
    1:
      i := 60;
    2:
      i := 100;
  end; // case
  shp.Width := i;
  shp.Height := i;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  showmessage('Please fill in all the information to get the best results :)');
  redshow.lines.clear;
end;

procedure TForm1.rgpcolorClick(Sender: TObject);
begin
  case rgpcolor.itemindex of
    0:
      shp.brush.Color := clblue;
    1:
      shp.brush.Color := clpurple;
    2:
      shp.brush.Color := clgreen;
    3:
      shp.brush.Color := clyellow;
  end; // case
end;

end.
