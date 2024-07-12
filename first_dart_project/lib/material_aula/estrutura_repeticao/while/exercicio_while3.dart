import 'dart:io';
// Escreva um algoritmo que simule um radar em uma rodovia. 
//
// A entrada das velocidades deve ser informada via teclado. 
//
// Os veículos que passarem com a velocidade acima de 120 km/h devem ser multados. 
//
// No final do algoritmo, deve-se apresentar a quantidade de veículos com a velocidade medida e a quantidade 
// de veículos multados.


void main() {

var continuarMedindoVelocidade = 'sim';
var qtdDeVeiculosMedidos = 0;
var qtdCarrosMultados = 0;
var velocidadeMaxima = 120;

while(continuarMedindoVelocidade == 'sim'){
    print('Digite a velocidade');
    var velocidadeVeiculoLeitura = stdin.readLineSync() as String;
    var velocidadeVeiculo = int.parse(velocidadeVeiculoLeitura);

    if(velocidadeVeiculo > velocidadeMaxima){
      qtdCarrosMultados++; //veiculo multado +1
    }
    qtdDeVeiculosMedidos++; //veiculo medido +1

    
  print('Devo continuar medindo?:');
    continuarMedindoVelocidade = stdin.readLineSync()as String;


}
 print('Total de Veiculo(s): $qtdDeVeiculosMedidos');
  print('Total de Carros multados: $qtdCarrosMultados');

}