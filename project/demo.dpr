library demo;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  uCustomForm in '..\src\uCustomForm.pas' {Form2};

Type
  // Class singleton that can manage databaseconnections for exemple
  TmyClass = class
  private
    class var _self : TMyClass;
    constructor Create;
  public
    class function getInstance():TMyClass;
    procedure openASingleForm;
  end;

{$R *.res}


procedure aDllProcedure();
begin
  TmyClass.getInstance.openASingleForm;
end;

exports aDllProcedure;

{ TmyClass }

procedure TmyClass.openASingleForm;
var
  form : TCustomForm;
begin

  form := TCustomForm.Create(nil);
  form.ShowModal;
  form.Free;;
end;

constructor TmyClass.Create;
begin
end;

class function TmyClass.getInstance: TMyClass;
begin
  if _self = nil then
    _self := self.Create
  else
    result := _self;
end;

begin

end.
