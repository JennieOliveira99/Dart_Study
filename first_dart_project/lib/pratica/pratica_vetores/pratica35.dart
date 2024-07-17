import 'dart:io';

void main() {
  /* Crie um programa para armazenar o nome do jogador e a quantidade de gols de 11 jogadores de um time.

Ao finalizar a leitura dos jogadores, o algoritmo deve apresentar na tela o nome e 
a quantidade de gols do artilheiro do time. */

  List<String> nomes = [];
  List<int> quantidadeGols = [];

  // Solicitando dados de 11 jogadores
  for (int jogador = 1; jogador <= 11; jogador++) {
    print('Digite o nome do jogador $jogador:');
    var nomeJogador = stdin.readLineSync()!;

    print('Digite a quantidade de gols de $nomeJogador:');
    var quantidadeGolsLeitura = stdin.readLineSync()!;
    var quantidade = int.parse(quantidadeGolsLeitura);

    //atribuindo ao vetor
    nomes.add(nomeJogador);
    quantidadeGols.add(quantidade);
  }

  // Encontrando o jogador com mais gols (artilheiro)
  int maiorNumeroGols = 0;
  int indiceArtilheiro = 0;

  for (int indice = 0; indice < quantidadeGols.length; indice++) {
    if (quantidadeGols[indice] > maiorNumeroGols) {
      maiorNumeroGols = quantidadeGols[indice];
      indiceArtilheiro = indice;
    }
  }

  // Exibindo o nome e a quantidade de gols do artilheiro
  print('\nArtilheiro do time:');
  print('Nome: ${nomes[indiceArtilheiro]}');
  print('Gols: ${quantidadeGols[indiceArtilheiro]}');
}
