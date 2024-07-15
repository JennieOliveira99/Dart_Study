import 'dart:io';

void main(){

  print('Sistema de Gerenciamento de prova CNH');
/*
  //precisa do um aluno com 18 anos de idade:
  //dessa forma a execucao nao para e uma possivel solução ira fazer com que precise repetir o codigo
  int idade = 0;
  while (idade < 18){
     print('O candidato precisa ser maior de 18 anos ');
      print('DIgite a idade do candidato');
      var idadeLeitura = stdin.readLineSync()as String;
      var idade = int.parse(idadeLeitura);
  }*/

  int idade;

  do{
    print('Atenção: O candidato deve ser maior de 18 anos');
    print('Digite a idade:');
    var idadeLeitura = stdin.readLineSync() as String;
    idade = int.parse(idadeLeitura);
  }while(idade < 18);
}