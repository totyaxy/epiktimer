program et_demo;

{$mode objfpc}{$H+}

uses
  Interfaces,
  Forms, et_main_form, et_newsw_form, et_splash_form;

var
  i:Integer;
begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Form3 := TForm3.Create(nil);
  Try
  Application.ProcessMessages;
  Application.CreateForm(TForm1, Form1);
  for i:=1 to MaxStopwatches do
    Begin
      Application.CreateForm(TForm2, NewStopwatches[i]);
      Form3.Progressbar1.position:=i;
      Application.ProcessMessages;
    End;
  Finally
    Form3.free;
  End;
  Application.Run;
end.

