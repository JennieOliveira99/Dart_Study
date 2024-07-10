import 'dart:io';
void main(){

  print('Digite um número');
  var numeroDigitado = stdin.readLineSync() as String;

var numero = int.parse(numeroDigitado);

  if (numero == 5){
    print('Você acertou');
  }else{
    print('Você não acertou');
  }
}