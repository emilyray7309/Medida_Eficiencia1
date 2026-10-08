import 'dart:io';

void main() {
  double somaTurma = 0;
  int totalAlunos = 0;
  int totalAprovados = 0;

  double melhorMediaMasculina = 0;
  double melhorMediaFeminina = 0;

  String matriculaMelhorAluno = '';
  String matriculaMelhorAluna = '';

  double somaMediaFeminina = 0;
  int quantidadeMulheres = 0;

  while (true) {
    print('Digite a matrícula do aluno:');
    String matricula = stdin.readLineSync()!;

    if (matricula == '00000') {
      break;
    }

    print('Nome do aluno:');
    String nome = stdin.readLineSync()!;

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Primeira nota:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Segunda nota:');
    double nota2 = double.parse(stdin.readLineSync()!);

    print('Terceira nota:');
    double nota3 = double.parse(stdin.readLineSync()!);

    print('Número de faltas:');
    int faltas = int.parse(stdin.readLineSync()!);

    double mediaFinal = (nota1 + nota2 + nota3) / 3;

    somaTurma += mediaFinal;
    totalAlunos++;

    if (sexo == 'F') {
      somaMediaFeminina += mediaFinal;
      quantidadeMulheres++;
    }

    bool aprovado = false;

    if (mediaFinal >= 7 && faltas <= 18) {
      aprovado = true;
      totalAprovados++;
    }

    if (aprovado) {
      if (sexo == 'M' && mediaFinal > melhorMediaMasculina) {
        melhorMediaMasculina = mediaFinal;
        matriculaMelhorAluno = matricula;
      }

      if (sexo == 'F' && mediaFinal > melhorMediaFeminina) {
        melhorMediaFeminina = mediaFinal;
        matriculaMelhorAluna = matricula;
      }
    }
  }

  print('\n===== RESULTADOS =====');

  if (totalAlunos > 0) {
    double mediaTurma = somaTurma / totalAlunos;
    double percentualAprovados =
        (totalAprovados * 100) / totalAlunos;

    print('Média geral da turma: ${mediaTurma.toStringAsFixed(2)}');
    print(
        'Percentual de aprovados: ${percentualAprovados.toStringAsFixed(1)}%');
  }

  print('Matrícula do homem aprovado com maior média: $matriculaMelhorAluno');
  print('Matrícula da mulher aprovada com maior média: $matriculaMelhorAluna');

  if (quantidadeMulheres > 0) {
    double mediaMulheres = somaMediaFeminina / quantidadeMulheres;

    print(
        'Média das alunas: ${mediaMulheres.toStringAsFixed(2)}');
  }
}