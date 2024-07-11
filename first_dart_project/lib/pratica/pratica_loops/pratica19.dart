
import 'dart:io';
void main(){

  var totalValor = 0;

  for( var numero=1; numero <=5; numero++){
    print('Digite um numero');
    var valorLeitura = stdin.readLineSync() as String;
    var valor = int.parse(valorLeitura);
totalValor += valor; // Acumula o valor lido na variável totalValor
    
  }
  //printando fora do loop senao a cada numero que o usuario digitar vai imprimir(imprime varias vezes)
    print('A soma dos números é: $totalValor');
 
}