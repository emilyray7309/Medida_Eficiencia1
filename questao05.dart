import 'dart:io';

void main() {
  int totalBebes = 0;
  int qtdBaixoPeso = 0;
  int qtdPesoNormal = 0;
  int qtdAltoPeso = 0;

  double maiorPesoMenina = 0;
  String nomeMaiorPesoMenina = '';

  while (true) {
    print('\nNome do recém-nascido (digite FIM para encerrar):');
    String nome = stdin.readLineSync()!;

    if (nome.toUpperCase() == 'FIM') {
      break;
    }

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Peso em kg:');
    double peso = double.parse(stdin.readLineSync()!);

    String categoria;

    if (peso <= 2) {
      categoria = 'Baixo Peso';
      qtdBaixoPeso++;
    } else if (peso <= 4) {
      categoria = 'Peso Normal';
      qtdPesoNormal++;
    } else {
      categoria = 'Alto Peso';
      qtdAltoPeso++;
    }

    print('\nDados do bebê:');
    print('Nome: $nome');
    print('Sexo: $sexo');
    print('Classificação: $categoria');

    totalBebes++;

    if (sexo == 'F' && peso > maiorPesoMenina) {
      maiorPesoMenina = peso;
      nomeMaiorPesoMenina = nome;
    }
  }

  print('\n===== RELATÓRIO FINAL =====');

  if (nomeMaiorPesoMenina.isNotEmpty) {
    print('Recém-nascida com maior peso: $nomeMaiorPesoMenina');
  }

  if (totalBebes > 0) {
    double percentualBaixo =
        (qtdBaixoPeso * 100) / totalBebes;

    double percentualNormal =
        (qtdPesoNormal * 100) / totalBebes;

    double percentualAlto =
        (qtdAltoPeso * 100) / totalBebes;

    print(
        'Percentual de baixo peso: ${percentualBaixo.toStringAsFixed(2)}%');

    print(
        'Percentual de peso normal: ${percentualNormal.toStringAsFixed(2)}%');

    print(
        'Percentual de alto peso: ${percentualAlto.toStringAsFixed(2)}%');
  }
}