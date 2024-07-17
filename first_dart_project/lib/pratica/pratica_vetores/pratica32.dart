import 'dart:io';

void main(){

  /* Crie um programa para armazenar a velocidade de 6 voltas de um piloto em uma pista de kart.

Depois de ter armazenado as velocidades, seu programa deve apresentar as velocidades na ordem contrária da lida 
(a última velocidade lida será a primeira a ser exibida, e assim sucessivamente). */
List<int> velocidadeKart = [];
List<int> numeroVoltas = [];
//pedindo os valores para o usuario:
for (var voltas = 0; voltas < 6; voltas++){
  print(  'Digite a quantidade de voltas:');
  var numeroDaVolta = stdin.readLineSync()as String;
  var volta = int.parse(numeroDaVolta);

  print('Digite a velocidade do kart');
  var velocidadeLeitura = stdin.readLineSync()as String;
  var velocidade = int.parse(velocidadeLeitura);

//armazenar no vetor os valores digitados pelo usario
velocidadeKart.add(velocidade);
numeroVoltas.add(volta);

 // Exibindo as velocidades na ordem inversa:
//para acessar o último elemento da lista, subtraímos 1 do comprimento total da lista (length - 1)
  print('Velocidades na ordem inversa:');
  for (var indice = velocidadeKart.length - 1; indice >= 0; indice--) {
    print('Volta ${numeroVoltas[indice]} - Velocidade: ${velocidadeKart[indice]}');
  }
}}