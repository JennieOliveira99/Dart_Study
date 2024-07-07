import 'dart:io';

void main(){

  print('Digite um numero');
  var numeroDigitado = stdin.readLineSync()as String;
   var numero = int.parse(numeroDigitado);

  if(numero > 0 ){
    print('Esse número $numero é positivo');
  }else{
    print('Esse numero: $numero, é negativo');
  }
}

