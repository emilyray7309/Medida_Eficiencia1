import 'dart:io';

void main() {
  int totalCandidatos = 0;
  int qtdHomens = 0;
  int qtdMulheres = 0;

  int menorNotaHomem = 5001;
  String nomeMenorNota = '';

  int maiorNotaSI = 0;
  String codigoMaiorNotaSI = '';

  while (true) {
    print('\nDigite o código do candidato:');
    String codigo = stdin.readLineSync()!;

    if (codigo == '0000') {
      break;
    }

    print('Curso (CC ou SI):');
    String curso = stdin.readLineSync()!.toUpperCase();

    print('Nome do candidato:');
    String nome = stdin.readLineSync()!;

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Pontuação obtida:');
    int nota = int.parse(stdin.readLineSync()!);

    totalCandidatos++;

    if (sexo == 'M') {
      qtdHomens++;

      if (nota < menorNotaHomem) {
        menorNotaHomem = nota;
        nomeMenorNota = nome;
      }
    } else if (sexo == 'F') {
      qtdMulheres++;
    }

    if (curso == 'CC' && nota > 2500) {
      print('\nCandidato de CC com mais de 2500 pontos:');
      print('Código: $codigo');
      print('Nome: $nome');
      print('Pontuação: $nota');
    }

    if (curso == 'SI' && sexo == 'M') {
      if (nota > maiorNotaSI) {
        maiorNotaSI = nota;
        codigoMaiorNotaSI = codigo;
      }
    }
  }

  print('\n===== RESULTADOS =====');

  print('Homem com menor pontuação: $nomeMenorNota');
  print('Código do homem com maior pontuação em SI: $codigoMaiorNotaSI');

  if (totalCandidatos > 0) {
    double percentualHomens =
        (qtdHomens * 100) / totalCandidatos;

    double percentualMulheres =
        (qtdMulheres * 100) / totalCandidatos;

    print(
        'Percentual masculino: ${percentualHomens.toStringAsFixed(2)}%');

    print(
        'Percentual feminino: ${percentualMulheres.toStringAsFixed(2)}%');
  }
}