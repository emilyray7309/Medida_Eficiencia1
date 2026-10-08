import 'dart:math';

void main() {
  int termos = 5;
  double soma = 0;

  for (int i = 1; i <= termos; i++) {
    double base = 2 * i + 1;
    double expoente = 4 * i;
    double denominador = 5 * i;

    double valor = pow(base, expoente) / denominador;

    if (i >= 4 && i % 2 == 0) {
      soma -= valor;
    } else if (i >= 3 && i % 2 == 1) {
      soma += valor;
    } else {
      soma += valor;
    }
  }

  print('S = $soma');
}