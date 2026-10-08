import 'dart:io';

void main() {
  print('Informe o tamanho dos vetores:');
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetorA = lerValores(tamanho);
  List<int> vetorB = lerValores(tamanho);

  List<int> vetorResultado = somarVetores(vetorA, vetorB);

  int somaTotal = 0;

  for (int valor in vetorResultado) {
    somaTotal += valor;
  }

  print('\nVetor resultante:');
  print(vetorResultado);

  print('Soma dos elementos: $somaTotal');
}

List<int> lerValores(int quantidade) {
  List<int> numeros = [];

  for (int i = 0; i < quantidade; i++) {
    print('Digite o valor da posição ${i + 1}:');
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  return numeros;
}

List<int> somarVetores(List<int> vetorA, List<int> vetorB) {
  List<int> resultado = [];

  for (int i = 0; i < vetorA.length; i++) {
    resultado.add(vetorA[i] + vetorB[i]);
  }

  return resultado;
}