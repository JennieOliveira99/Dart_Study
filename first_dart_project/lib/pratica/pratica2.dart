import 'dart:io';
void main(){

  print('Digite a velocidade ,máxima do carro');
  var velocidadeMaximaDoCarro = stdin.readLineSync() as String;
  var velocidadeDoCarro = int.parse(velocidadeMaximaDoCarro);

  if (velocidadeDoCarro >= 80){
    print('MULTADO');
  } 
}