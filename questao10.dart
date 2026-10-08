import 'dart:io';

void main() {
  int totalHomens = 0;
  int totalMulheres = 0;

  int somaIdadesHomensExp = 0;
  int qtdHomensExp = 0;

  int homensAcima45 = 0;
  int mulheresJovensExp = 0;

  int idadeMenorCandidata = 999;
  String nomeCandidata = '';

  while (true) {
    print('Digite o nome do candidato (ou FIM para encerrar):');
    String nome = stdin.readLineSync()!;

    if (nome.toUpperCase() == 'FIM') {
      break;
    }

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Possui experiência? (S/N):');
    String possuiExperiencia = stdin.readLineSync()!.toUpperCase();

    if (sexo == 'M') {
      totalHomens++;

      if (idade > 45) {
        homensAcima45++;
      }

      if (possuiExperiencia == 'S') {
        somaIdadesHomensExp += idade;
        qtdHomensExp++;
      }
    } else if (sexo == 'F') {
      totalMulheres++;

      if (idade < 30 && possuiExperiencia == 'S') {
        mulheresJovensExp++;
      }

      if (possuiExperiencia == 'S' && idade < idadeMenorCandidata) {
        idadeMenorCandidata = idade;
        nomeCandidata = nome;
      }
    }
  }

  print('\n===== RESULTADOS =====');

  print('Quantidade de homens: $totalHomens');
  print('Quantidade de mulheres: $totalMulheres');

  if (qtdHomensExp > 0) {
    double mediaIdade = somaIdadesHomensExp / qtdHomensExp;
    print(
        'Média de idade dos homens com experiência: ${mediaIdade.toStringAsFixed(1)} anos');
  }

  if (totalHomens > 0) {
    double percentual = (homensAcima45 * 100) / totalHomens;
    print(
        'Percentual de homens com mais de 45 anos: ${percentual.toStringAsFixed(1)}%');
  }

  print(
      'Quantidade de mulheres com menos de 30 anos e experiência: $mulheresJovensExp');

  if (nomeCandidata.isNotEmpty) {
    print('Candidata mais jovem com experiência: $nomeCandidata');
  }
}