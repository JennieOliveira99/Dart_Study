//Elabore um programa em Dart que mostre todos os números múltiplos divisiveis por 5 do numero que o usuario digitar ate 100

import 'dart:io';
void main() {
  print('Digite um número:');
  var numeroDigitadoUsuario = stdin.readLineSync()as String;
  var numeroDigitado = int.parse(numeroDigitadoUsuario);

  var numeroAtual = numeroDigitado;

  while (numeroAtual <= 100) {
    if (numeroAtual % 5 == 0) {
      print(numeroAtual);
    }
    numeroAtual++;
  }
}

