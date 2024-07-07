//1°  importar biblioteca

import 'dart:io';


void main(){


  //pedindo para que o usuario digite algo
  print('Qual o seu nome?');
  //recendo dados digitados e armazenando em uma variavel
  var nomeAluno = stdin.readLineSync();


   print('Qual o sua altura em cm?');
   var alturaAluno = stdin.readLineSync();


   print('Qual o sua idade?');
   var idadeAluno = stdin.readLineSync();


  print ('O nome do aluno é: $nomeAluno, Sua altura é $alturaAluno, Sua idade é $idadeAluno');


 
 
}