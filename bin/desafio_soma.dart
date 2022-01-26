import 'dart:io';

/// Seleção de Desenvolvedor de Software - Escribo, Teste Técnico 01
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

      // 1. Se não for divisivel por 3, testar por 5 ou reduzir
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
      print(resultSaida);

      print('\n___\n');
      number = '';
    }
  }
}
