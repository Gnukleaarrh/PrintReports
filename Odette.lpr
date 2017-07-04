program Odette;

{
Odette a character in Swan Lake is the working title for the Print Reports application used by Harvey Beef.
It parses the CSV files created by the PaperCut print logger
https://simple.wikipedia.org/wiki/Swan_Lake
}

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, StartupScreen
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  SplashScreen := TSplashScreen.Create(nil) ;
  SplashScreen.Show;
  SplashScreen.Update;

  Application.CreateForm(TForm1, Form1);
  SplashScreen.Hide;
  SplashScreen.Free;
  Application.Run;
end.

