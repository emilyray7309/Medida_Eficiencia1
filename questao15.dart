import 'dart:io';

void main() {
  print('Informe a quantidade de bois cadastrados:');
  int quantidade = int.parse(stdin.readLineSync()!);

  List<int> codigoBoi = [];
  List<double> pesoBoi = [];

  for (int i = 0; i < quantidade; i++) {
    print('\nBoi ${i + 1}');

    print('Número do boi:');
    codigoBoi.add(int.parse(stdin.readLineSync()!));

    print('Peso do boi:');
    pesoBoi.add(double.parse(stdin.readLineSync()!));
  }

  double pesoMinimo;

  do {
    print('\nDigite o peso mínimo (-1 para sair):');
    pesoMinimo = double.parse(stdin.readLineSync()!);

    if (pesoMinimo == -1) {
      print('Programa encerrado.');
      break;
    }

    print('Digite o peso máximo:');
    double pesoMaximo = double.parse(stdin.readLineSync()!);

    print('\nBois encontrados:');

    bool encontrou = false;

    for (int i = 0; i < quantidade; i++) {
      if (pesoBoi[i] >= pesoMinimo && pesoBoi[i] <= pesoMaximo) {
        print(
            'Código: ${codigoBoi[i]} | Peso: ${pesoBoi[i].toStringAsFixed(2)} kg');
        encontrou = true;
      }
    }

    if (!encontrou) {
      print('Nenhum boi encontrado nessa faixa de peso.');
    }
  } while (true);
}