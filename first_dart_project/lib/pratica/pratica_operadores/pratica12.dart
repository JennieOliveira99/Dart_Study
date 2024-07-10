import 'dart:io';

void main(){

  print('Digite seu peso:');
  var pesoDoUsuario = stdin.readLineSync()as String;
  var peso = double.parse(pesoDoUsuario);

 print('Digite seu altura:');
  var alturaDoUsuario = stdin.readLineSync()as String;
  var altura = double.parse(alturaDoUsuario);

  var calculoDoIMC = peso / (altura * altura);

  if(calculoDoIMC <= 18.5){
    print('$calculoDoIMC IMC menor que 18.5 - magreza');
  }else if(calculoDoIMC > 18.5 && calculoDoIMC <= 24.9){
    print('$calculoDoIMC entre 18.5 e 24.9 - normal');
  }else if(calculoDoIMC > 24.9 && calculoDoIMC <= 30){
    print('$calculoDoIMC IMC entre 24.9 e 30 - sobrepeso');
  }else if(calculoDoIMC > 30){
    print('$calculoDoIMC IMC maior que 30 - obesidade');
  }else {
    print('Dados inválidos');
  }

}