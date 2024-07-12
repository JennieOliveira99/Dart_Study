import 'dart:io';

void main(){
  //Faça um programa, utilizando while, que mostre na tela de 0 até N, em que N é o limite inserido pelo usuário.
  var numeroContagem = 0;
  print ('Digite um numero');
  var numeroDigitado = stdin.readLineSync()as String;
  var numero = int.parse(numeroDigitado);

  while (numeroContagem <= numero){
    print('$numeroContagem');
    numeroContagem++;

  }
}