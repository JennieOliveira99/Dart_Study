import 'dart:io';


void main(){

  print('Digite o preço da Gasolina');
  var precoDaGasolina = stdin.readLineSync()as String;
  var gasolina = double.parse(precoDaGasolina);

   print('Digite o preço do Etanol');
  var precoDoEtanol = stdin.readLineSync()as String;
  var etanol = double.parse(precoDoEtanol);

  var divisaoDePrecos = gasolina / etanol;

  if(divisaoDePrecos >= 0.7){
    print('Compensa abastecer com gasolina');
  }else{
    print('Compensa abastecer com etanol');
  }

}