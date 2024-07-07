import 'dart:io';

void main(){

  print('Digite a quantidade de Sucos desejadas: ');
  var quantidadeDeSucos = stdin.readLineSync()as String;
  var quantidadeSucos = int.parse(quantidadeDeSucos);

  var totalSemDesconto = 5.50 * quantidadeSucos;
  var totalComDesconto = 4.50 * quantidadeSucos;

  if (quantidadeSucos < 10){
  
    print(' O valor total sem desconto é: $totalSemDesconto');
  }
else{
  print('O valor total com desconto é $totalComDesconto');
}
}