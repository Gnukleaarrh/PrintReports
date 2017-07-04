unit StartupScreen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TSplashScreen }

  TSplashScreen = class(TForm)
    ScrollBar1: TScrollBar;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }

  public
    { public declarations }
  end;

var
  SplashScreen: TSplashScreen;

implementation

{$R *.lfm}

{ TSplashScreen }

procedure TSplashScreen.FormCreate(Sender: TObject);
begin
  Timer1.Interval := 1000;
  Timer1.Enabled := True;
end;

procedure TSplashScreen.Timer1Timer(Sender: TObject);
begin
  ScrollBar1.Position:=;
end;

end.

