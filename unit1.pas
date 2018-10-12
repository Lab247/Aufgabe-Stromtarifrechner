unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnBerechnen: TButton;
    btnClose: TButton;
    edtKostenA: TEdit;
    edtKostenB: TEdit;
    edtKostenC: TEdit;
    edtkWh: TEdit;
    edtRooms: TEdit;
    lblkWh: TLabel;
    lblRooms: TLabel;
    pnlTarifA: TPanel;
    pnlHeader: TPanel;
    pnlTarifB: TPanel;
    pnlTarifC: TPanel;
    procedure btnBerechnenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.btnBerechnenClick(Sender: TObject);

//Variablen für Userinput
var kwh, rooms : integer;
  KostenA, KostenB, KostenC : real;

begin
  //Usereingaben einlesen
  rooms := StrToInt(edtRooms.Text);
  kwh := StrToInt(edtkWh.Text);

  //Tarife Berechnen
  //KostenA := 7.30 + kwh * 0.21;                       //7,30/1,85/0,21
  KostenC := kwh * 0.83;


  //Vergleichen

  //Ergebnis anzeigen
     //pnlTarifA.Visible := True;
     //pnlTarifA.Color := clred;
     //pnlTarifB.Visible := True;
     //pnlTarifB.Color := cllime;
     //pnlTarifC.Visible := True;
     //pnlTarifC.Color := clred;
     //edtKostenA.Visible := True;
     //edtKostenA.Text := FloatToStr(KostenA);
     //edtKostenB.Visible := True;
     //edtKostenB.Text := FloatToStr(KostenB);
     edtKostenC.Visible := True;
     edtKostenC.Text := FloatToStr(KostenC);




end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  close
end;

end.

