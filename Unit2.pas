unit Unit2;

interface

uses
  Classes, SysUtils;//Unit1;

type
  STREAM = class(TThread)
  private
     index:integer;
     procedure UpdateLabel;
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses Unit1;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure STREAM.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ STREAM }

procedure STREAM.Execute;
begin
index:=1;
while index>0 do
begin
Synchronize(UpdateLabel);
inc(index);
if index>100000 then
index:=0;
if terminated then exit;
end;
  { Place thread code here }
end;
procedure STREAM.UpdateLabel;
begin
Form1.Label1.Caption:=IntToStr(index);
end;
end.

