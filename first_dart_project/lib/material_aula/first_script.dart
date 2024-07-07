//importando a biblioteca responsavel pela leitura
import 'dart:io';

void main(){
  print ('Qual a sua idade?');
//solicitando dados do usurio
  var idade = stdin.readLineSync();//só vai executar depois do usuario digitar algo
    //print (idade);
  print ('Obrigada sua idade é: $idade');
}
