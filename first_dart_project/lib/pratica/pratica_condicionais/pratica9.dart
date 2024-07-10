import 'dart:io';

void main(){
  print ('Digite um número entre 1 e 7');

  var numeroDigitado = stdin.readLineSync() as String;
  var numero = int.parse(numeroDigitado);

  if(numero == 1){
    print ('DOMINGO');
  }else if(numero == 2){
    print('SEGUNDA');
  }else if(numero == 3){
    print('TERÇA');
  }else if(numero == 4){
    print('QUARTA');
  }else if(numero == 5){
    print('QUINTA');
  }else if(numero == 6){
    print('SEXTA');
  }else if(numero == 7){
    print('SABADO');
  }else{
     print('Número inválido');
  }
}