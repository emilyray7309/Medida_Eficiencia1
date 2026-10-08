import 'dart:io';

void main() {
  print('Digite a quantidade de elementos do primeiro vetor:');
  int tamanho1 = int.parse(stdin.readLineSync()!);

  List<int> primeiroVetor = [];

  for (int i = 0; i < tamanho1; i++) {
    print('Informe o valor ${i + 1}:');
    primeiroVetor.add(int.parse(stdin.readLineSync()!));
  }

  print('\nDigite a quantidade de elementos do segundo vetor:');
  int tamanho2 = int.parse(stdin.readLineSync()!);

  List<int> segundoVetor = [];

  for (int i = 0; i < tamanho2; i++) {
    print('Informe o valor ${i + 1}:');
    segundoVetor.add(int.parse(stdin.readLineSync()!));
  }

  List<int> vetorUnido = [];

  for (int numero in primeiroVetor) {
    vetorUnido.add(numero);
  }

  for (int numero in segundoVetor) {
    vetorUnido.add(numero);
  }

  vetorUnido.sort();

  print('\nVetor após a junção e ordenação:');
  print(vetorUnido);
}