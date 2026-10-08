import 'dart:io';

void main() {
  print('Digite o número de termos:');
  int n = int.parse(stdin.readLineSync()!);

  int a = 1;
  int b = 5;
  int c = 100;

  for (int i = 0; i < n; i++) {
    print('$a $b $c');

    a *= 2;
    b += 5;
    c -= 10;
  }
}