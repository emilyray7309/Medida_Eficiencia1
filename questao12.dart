import 'dart:io';

void main() {
  print('Digite um número:');
  String numero = stdin.readLineSync()!;

  String invertido = numero.split('').reversed.join('');

  print('Número invertido: $invertido');
}