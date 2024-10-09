unit uMediaSalario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcular: TButton;
    edtSalarioBrutoJan: TEdit;
    edtSalarioBrutoFev: TEdit;
    edtSalarioBrutoMar: TEdit;
    edtSalarioBrutoAbr: TEdit;
    edtSalarioBrutoMai: TEdit;
    edtSalarioBrutoJun: TEdit;
    edtSalarioBrutoJul: TEdit;
    edtSalarioBrutoAgo: TEdit;
    edtSalarioBrutoSet: TEdit;
    edtSalarioBrutoOut: TEdit;
    edtSalarioBrutoNov: TEdit;
    edtSalarioBrutoDez: TEdit;
    edtDescontoJan: TEdit;
    edtDescontoFev: TEdit;
    edtDescontoMar: TEdit;
    edtDescontoAbr: TEdit;
    edtDescontoMai: TEdit;
    edtDescontoJun: TEdit;
    edtDescontoJul: TEdit;
    edtDescontoAgo: TEdit;
    edtDescontoSet: TEdit;
    edtDescontoOut: TEdit;
    edtDescontoNov: TEdit;
    edtDescontoDez: TEdit;
    edtSalarioLiqJan: TEdit;
    edtSalarioLiqFev: TEdit;
    edtSalarioLiqMar: TEdit;
    edtSalarioLiqAbr: TEdit;
    edtSalarioLiqMai: TEdit;
    edtSalarioLiqJun: TEdit;
    edtSalarioLiqJul: TEdit;
    edtSalarioLiqAgo: TEdit;
    edtSalarioLiqSet: TEdit;
    edtSalarioLiqOut: TEdit;
    edtSalarioLiqNov: TEdit;
    edtSalarioLiqDez: TEdit;
    edtSomaTotalSalarioBruto: TEdit;
    edtSomaTotalDesconto: TEdit;
    edtSomaTotalSalarioLiquido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  i: Integer;
  salarioBruto, desconto, salarioLiquido, totalSalarioBruto, totalDesconto, totalSalarioLiquido: Double;
  salarioBrutoEdits, descontoEdits, salarioLiquidoEdits: array[1..12] of TEdit;
begin
  // Inicialização dos arrays com os componentes corretos
  salarioBrutoEdits[1] := edtSalarioBrutoJan;
  salarioBrutoEdits[2] := edtSalarioBrutoFev;
  salarioBrutoEdits[3] := edtSalarioBrutoMar;
  salarioBrutoEdits[4] := edtSalarioBrutoAbr;
  salarioBrutoEdits[5] := edtSalarioBrutoMai;
  salarioBrutoEdits[6] := edtSalarioBrutoJun;
  salarioBrutoEdits[7] := edtSalarioBrutoJul;
  salarioBrutoEdits[8] := edtSalarioBrutoAgo;
  salarioBrutoEdits[9] := edtSalarioBrutoSet;
  salarioBrutoEdits[10] := edtSalarioBrutoOut;
  salarioBrutoEdits[11] := edtSalarioBrutoNov;
  salarioBrutoEdits[12] := edtSalarioBrutoDez;

  descontoEdits[1] := edtDescontoJan;
  descontoEdits[2] := edtDescontoFev;
  descontoEdits[3] := edtDescontoMar;
  descontoEdits[4] := edtDescontoAbr;
  descontoEdits[5] := edtDescontoMai;
  descontoEdits[6] := edtDescontoJun;
  descontoEdits[7] := edtDescontoJul;
  descontoEdits[8] := edtDescontoAgo;
  descontoEdits[9] := edtDescontoSet;
  descontoEdits[10] := edtDescontoOut;
  descontoEdits[11] := edtDescontoNov;
  descontoEdits[12] := edtDescontoDez;

  salarioLiquidoEdits[1] := edtSalarioLiqJan;
  salarioLiquidoEdits[2] := edtSalarioLiqFev;
  salarioLiquidoEdits[3] := edtSalarioLiqMar;
  salarioLiquidoEdits[4] := edtSalarioLiqAbr;
  salarioLiquidoEdits[5] := edtSalarioLiqMai;
  salarioLiquidoEdits[6] := edtSalarioLiqJun;
  salarioLiquidoEdits[7] := edtSalarioLiqJul;
  salarioLiquidoEdits[8] := edtSalarioLiqAgo;
  salarioLiquidoEdits[9] := edtSalarioLiqSet;
  salarioLiquidoEdits[10] := edtSalarioLiqOut;
  salarioLiquidoEdits[11] := edtSalarioLiqNov;
  salarioLiquidoEdits[12] := edtSalarioLiqDez;

  // Inicializar os totais
  totalSalarioBruto := 0;
  totalDesconto := 0;
  totalSalarioLiquido := 0;

  // Loop para calcular totais
  for i := 1 to 12 do
  begin
    // Ler valores com tratamento de erro
    salarioBruto := StrToFloatDef(salarioBrutoEdits[i].Text, 0);
    desconto := StrToFloatDef(descontoEdits[i].Text, 0);
    salarioLiquido := StrToFloatDef(salarioLiquidoEdits[i].Text, 0);

    // Calcular totais
    totalSalarioBruto := totalSalarioBruto + salarioBruto;
    totalDesconto := totalDesconto + desconto;
    totalSalarioLiquido := totalSalarioLiquido + salarioLiquido;
  end;

  // Exibir resultados
  edtSomaTotalSalarioBruto.Text := FloatToStr(totalSalarioBruto);
  edtSomaTotalDesconto.Text := FloatToStr(totalDesconto);
  edtSomaTotalSalarioLiquido.Text := FloatToStr(totalSalarioLiquido);
end;

end.

