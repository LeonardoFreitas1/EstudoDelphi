program Calculator;

uses
  Vcl.Forms,
  Calculadora in 'Calculadora.pas' {frmCalculator},
  CountHistory in 'CountHistory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculator, frmCalculator);
  Application.Run;
end.
