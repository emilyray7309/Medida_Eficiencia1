import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numero = random.nextInt(100) + 1;

  int menor = 1;
  int maior = 100;

  while (true) {
    print('Digite um número entre $menor e $maior:');
    int tentativa = int.parse(stdin.readLineSync()!);

    if (tentativa == numero) {
      print('Você acertou!');
      break;
    }

    if (tentativa < numero) {
      menor = tentativa + 1;
    } else {
      maior = tentativa - 1;
    }

    print('O número está entre $menor e $maior');
  }
}