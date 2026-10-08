import 'dart:io';

void main() {
  double totalSalarioMasculino = 0;
  double totalSalarioFeminino = 0;

  int homens = 0;
  int mulheres = 0;

  while (true) {
    print('Informe o código do funcionário:');
    String codigo = stdin.readLineSync()!;

    if (codigo == '9999') {
      break;
    }

    print('Nome do funcionário:');
    String nomeFuncionario = stdin.readLineSync()!;

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Quantidade de horas trabalhadas:');
    double horasTrabalhadas = double.parse(stdin.readLineSync()!);

    double salarioBruto = horasTrabalhadas * 12.30;
    double salarioLiquido = 0;

    if (sexo == 'M') {
      salarioLiquido = salarioBruto - (salarioBruto * 0.10);
      totalSalarioMasculino += salarioLiquido;
      homens++;
    } else if (sexo == 'F') {
      salarioLiquido = salarioBruto - (salarioBruto * 0.05);
      totalSalarioFeminino += salarioLiquido;
      mulheres++;
    }

    print('\nDados do funcionário');
    print('Código: $codigo');
    print('Nome: $nomeFuncionario');
    print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
    print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');
  }

  print('\nResultados finais');

  if (homens > 0) {
    double mediaMasculina = totalSalarioMasculino / homens;
    print(
        'Média dos salários líquidos dos homens: R\$ ${mediaMasculina.toStringAsFixed(2)}');
  }

  if (mulheres > 0) {
    double mediaFeminina = totalSalarioFeminino / mulheres;
    print(
        'Média dos salários líquidos das mulheres: R\$ ${mediaFeminina.toStringAsFixed(2)}');
  }
}