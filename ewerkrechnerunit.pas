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
var raeume, verbrauch, error1, error2 :longint;
var KostenA, KostenB, KostenC : real;

begin
  //raeume := StrToInt(txtRooms.Text);
  val(txtRooms.Text, raeume, error1);
  val(txtConsumtion.Text, verbrauch, error2);

  if (error1 <> 0) or (error2 <> 0) then
    begin
      pnlTarifA.Visible := False;
      pnlTarifB.Visible := False;
      pnlTarifC.Visible := False;
    end
  else
      begin
        if raeume > 2 Then
             begin
                  KostenA := 7.30 + ((raeume -2)*1.85) + verbrauch * 0.21;
                  KostenB := 12.80 + ((raeume -2)*2.55) + verbrauch * 0.17;
             end
         else
             begin
                  KostenA := 7.20  + verbrauch * 0.21;
                  KostenB := 12.80  + verbrauch * 0.17;
             end;
         KostenC := verbrauch * 0.83;

         If KostenA < KostenB Then
             Begin
                  If KostenA < KostenC Then
                      begin
                           pnlTarifA.Visible := True;
                           pnlTarifB.Visible := False;
                           pnlTarifC.Visible := False;
                      end
                  else
                      begin
                           pnlTarifA.Visible := False;
                           pnlTarifB.Visible := False;
                           pnlTarifC.Visible := True;
                      end;
             end
         Else
             Begin
                  if KostenB < KostenC Then
                      begin
                           pnlTarifA.Visible := False;
                           pnlTarifB.Visible := True;
                           pnlTarifC.Visible := False;
                      end
                  else
                      begin
                           pnlTarifA.Visible := False;
                           pnlTarifB.Visible := False;
                           pnlTarifC.Visible := True;
                      end;
             end;
      end;
  end;

end.

edt

