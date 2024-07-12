import 'dart:io';

void main(){

//criando a variavel para armazenar valores maiores que 50
var numerosMaioresQue50 = 0;
  for (var numero=1; numero<=10;numero++){

    print('Digite um número:');
 var valorLeitura = stdin.readLineSync()as String;
  var numero = int.parse(valorLeitura);

    if (numero > 50) {
      numerosMaioresQue50++;
    }
  }

  print('Quantidade de números maiores que 50: $numerosMaioresQue50');
}