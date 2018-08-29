unit EWerkRechnerUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    cmdClose: TButton;
    cmdCalc: TButton;
    pnlTarifA: TPanel;
    pnlTarifB: TPanel;
    pnlTarifC: TPanel;
    txtRooms: TEdit;
    txtConsumtion: TEdit;
    lblConsumtion: TLabel;
    lblRooms: TLabel;
    lblHead: TLabel;
    procedure cmdCalcClick(Sender: TObject);
    procedure cmdCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.cmdCloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.cmdCalcClick(Sender: TObject);
var raeume, verbrauch, error :longint;
var KostenA, KostenB, KostenC : real;

begin
  //raeume := StrToInt(txtRooms.Text);
  val(txtRooms.Text, raeume, error);
  val(txtConsumtion.Text, verbrauch, error);

  If raeume > 2 Then
  KostenA := 7.30 + ((raeume -2)*1.85) + verbrauch * 0.21;

end;

end.

