import 'dart:io';

void main() {
  print('Digite o valor de N:');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];

  for (int i = 0; i < n; i++) {
    print('Digite o ${i + 1}º número:');
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  Map<int, int> quantidade = {};

  for (int numero in numeros) {
    quantidade[numero] = (quantidade[numero] ?? 0) + 1;
  }

  quantidade.forEach((numero, vezes) {
    print('$numero - $vezes');
  });
}