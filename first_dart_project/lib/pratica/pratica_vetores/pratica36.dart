import 'dart:io';

void main(){

  /* Escreva um programa que leia um vetor de números inteiros e calcule a soma de todos os elementos. */

  List<int> numerosInteiros = [];

  print('Digiteum número');
  var numeroDigitadoLeitura = stdin.readLineSync()as String;
  var numeroDigitado = int.parse(numeroDigitadoLeitura);
  numerosInteiros.add(numeroDigitado);
  
}