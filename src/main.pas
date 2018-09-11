unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //TAbreForm = procedure abreForm; StdCall;

var
  Form1: TForm1;


implementation

var
  myHandle : THandle;

function soma: double; StdCall; External 'demo.dll';
//function abreForm: double; StdCall; External 'demo.dll';


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  aDllProcedure : procedure; stdcall;
begin
  myHandle := LoadLibrary('demo.dll');

  if myHandle <> 0 then
  begin
    @aDllProcedure := GetProcAddress (myHandle, 'aDllProcedure');
    if @aDllProcedure <> nil then
      aDllProcedure;
  end;
end;

begin
end.
