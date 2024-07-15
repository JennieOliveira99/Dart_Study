import 'dart:io';

void main() {
  int soma = 0;
  int contador = 0;

  do {
    print('Digite um número maior que 0:');
    var numeroDigitadoUsuario = stdin.readLineSync()as String;
    var numero = int.parse(numeroDigitadoUsuario);

    if (numero > 0) {
      soma += numero; // Adiciona o número à soma
      contador++;    // Incrementa o contador de números lidos
    } else {
      print('Número inválido. Digite um número maior que 0.');
    }
  } while (soma < 100);

  print('Quantidade de números necessários para alcançar a soma >= 100: $contador');
}
