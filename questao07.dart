import 'dart:io';
import 'dart:math';

void main() {
  print('Digite o valor de X:');
  double valorX = double.parse(stdin.readLineSync()!);

  print('Digite a quantidade de termos:');
  int quantidadeTermos = int.parse(stdin.readLineSync()!);

  double resultado = 0;

  for (int termo = 1; termo <= quantidadeTermos; termo++) {
    int resto = (termo - 1) % 6;

    int numeroFatorial;

    if (resto == 0) {
      numeroFatorial = 1;
    } else if (resto == 1 || resto == 5) {
      numeroFatorial = 2;
    } else if (resto == 2 || resto == 4) {
      numeroFatorial = 3;
    } else {
      numeroFatorial = 4;
    }

    int potencia = termo + 1;

    resultado =
        resultado + (pow(valorX, potencia) / fatorial(numeroFatorial));
  }

  print('Resultado da série: $resultado');
}

int fatorial(int n) {
  int fat = 1;

  for (int i = 2; i <= n; i++) {
    fat *= i;
  }

  return fat;
}