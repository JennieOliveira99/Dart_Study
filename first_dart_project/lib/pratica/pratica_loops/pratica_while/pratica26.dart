import 'dart:io';

void main(){

  //Faça um programa, utilizando while, que permita o usuário fazer contas de adição enquanto quiser.

  var continuarSomando = 'sim';
 
  while (continuarSomando == 'sim'){

print('Digite o primeiro numero');
var primeiroNumeroDigitado = stdin.readLineSync()as String;
var primeiroNumero = int.parse(primeiroNumeroDigitado);

print('Digite o segundo numero');
var segundoNumeroDigitado = stdin.readLineSync()as String;
var segundoNumero = int.parse(segundoNumeroDigitado);


 var soma = primeiroNumero + segundoNumero;


   print ('Resultado da sima: $soma');
 
  print('Continuar somando? (sim/não):');
    continuarSomando = stdin.readLineSync()!;
  }

  print('Programa encerrado.');
}