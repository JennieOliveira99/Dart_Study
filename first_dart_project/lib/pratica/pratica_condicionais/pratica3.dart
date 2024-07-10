import 'dart:io';

void main(){

  print('Digite a primeira nota');
  var nota1DoAluno = stdin.readLineSync()as String;
  var nota1 = int.parse(nota1DoAluno);

   print('Digite a segunda nota');
  var nota2DoAluno = stdin.readLineSync()as String;
  var nota2 = int.parse(nota2DoAluno);

  var media = (nota1 + nota2)/2;
  if (media >= 6 ){
    print('APROVADO(A)');
  }else{
    print('EM RECUPERAÇÃO');
  }
}