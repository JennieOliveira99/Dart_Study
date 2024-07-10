import 'dart:io';

void main() {

  //CONDICIONAL SIMPLES IF
  //CONDICIONAL COMPOSTA IF ELSE
  print('Digite o seu nome:');

  //exercicio1
  String nome = stdin.readLineSync() as String;

  print('Digite sua idade:');
  String idadeLeitura = stdin.readLineSync() as String;

  int idade = int.parse(idadeLeitura);


  if(idade >= 18){
    print('$nome é maior de idade');
  } else {
    print('$nome é menor de idade');
  }

  print('Fim do programa');




}