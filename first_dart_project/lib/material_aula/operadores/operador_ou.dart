import 'dart:io';
void main() {

  print('Qual a previsão do tempo?');
  var previsao = stdin.readLineSync() as String;

  print('Você tem prova?');
  var temProva = stdin.readLineSync() as String;

  // Operador (OU) (OR) (||)
  if(previsao == 'sol' || temProva == 'n'){
    print('Vou para a praia');
  }else{
    print('não vou para a praia');
  }

}