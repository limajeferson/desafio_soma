import 'dart:io';

/// M01 - Lista - Exercício 1 - Área de um Quadrado
void main() {
  print(
      'Por favor, digite um valor inteiro ou tecle Enter para sair.\nEx.: 3\n');
  String number = '';
  while (number.isEmpty) {
    number = stdin.readLineSync() ?? '';
    if (number.isEmpty) exit(0);
    if (int.parse(number) <= 0) {
      print('\nDigite um valor inteiro positivo!\nEx.: 3');
      number.isEmpty;
      print('\n___\n');
      number = '';
    } else {
      int inputEntrada = int.parse(number) - 1;

      // 1. Escreva um algoritmo em Dart que calcule a área de um quadrado.
      int resultSaida = 0;

      while (inputEntrada >= 3) {
        if (inputEntrada % 3 == 0) {
          resultSaida += inputEntrada;
        } else if (inputEntrada % 5 == 0) {
          resultSaida += inputEntrada;
        }
        inputEntrada--;
      }

      // 2. Exibir o resultado na tela.
      // print('');
      print(resultSaida);

      print('\n___\n');
      number = '';
    }
  }
}
