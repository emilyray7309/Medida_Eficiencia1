import 'dart:io';

void main() {
  List<List<int>> listaVetores = [];

  for (int i = 0; i < 4; i++) {
    print('Informe o tamanho do vetor ${i + 1}:');
    int tamanho = int.parse(stdin.readLineSync()!);

    List<int> vetor = [];

    for (int j = 0; j < tamanho; j++) {
      print('Digite o elemento ${j + 1}:');
      vetor.add(int.parse(stdin.readLineSync()!));
    }

    listaVetores.add(vetor);
  }

  List<int> vetorFinal = [];

  for (int i = 0; i < listaVetores.length; i++) {
    vetorFinal.addAll(listaVetores[i]);
  }

  vetorFinal.sort();

  List<int> elementosComuns = [];

  for (int numero in listaVetores[0]) {
    if (listaVetores[1].contains(numero) &&
        listaVetores[2].contains(numero) &&
        listaVetores[3].contains(numero)) {
      if (!elementosComuns.contains(numero)) {
        elementosComuns.add(numero);
      }
    }
  }

  print('\nQuinto vetor em ordem crescente:');
  print(vetorFinal);

  print('\nElementos presentes nos quatro vetores:');
  print(elementosComuns);
}