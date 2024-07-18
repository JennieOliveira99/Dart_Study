/*Crie um programa para uma calculadora. Cada uma das operações deve ser uma função específica. 
O resultado da operação deve ser exibido dentro da função. */

import 'dart:io';


void main() {
  print('Início da função');
  // Chamando as funções
  calcularAdicao(); 
  calcularSubtracao();
  calcularMultiplicacao();
  calcularDivisao();
  print('Fim da função');
}

void calcularAdicao() {
  print('Digite o primeiro número:');
  var numero = int.parse(stdin.readLineSync() as String);
  print('Digite o segundo número:');
  var segundoNumero = int.parse(stdin.readLineSync() as String);

  var resultado = numero + segundoNumero;

  print('O resultado é: $resultado');
}


void calcularSubtracao() {
  print('Digite o primeiro número:');
  var numero = int.parse(stdin.readLineSync() as String);
  print('Digite o segundo número:');
  var segundoNumero = int.parse(stdin.readLineSync() as String);

  var resultado = numero - segundoNumero;

  print('O resultado é: $resultado');
}

void calcularMultiplicacao(){
  print ('Digite o primeiro número:');
   var numero = int.parse(stdin.readLineSync() as String);
  print('Digite o segundo número:');
  var segundoNumero = int.parse(stdin.readLineSync() as String);

  var resultado = numero * segundoNumero;

  print('O resultado é: $resultado');

}


void calcularDivisao(){
  print ('Digite o primeiro número:');
   var numero = int.parse(stdin.readLineSync() as String);
  print('Digite o segundo número:');
  var segundoNumero = int.parse(stdin.readLineSync() as String);

  var resultado = numero / segundoNumero;

  print('O resultado é: $resultado');

}