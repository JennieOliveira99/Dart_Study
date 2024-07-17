import 'dart:io';

void main() {
  // 1- Criar um script que vai registrar o salario de todos os jogadores e o numero da camisa
// 2- Calcular a média salarial do time
// 3- Apresentar os jogadores que estão ganhando acima da média.

  List<int> numeroCamisa = [];
  List<double> salario = [];
  double totalSalario = 0.0;
  double mediaSalarial = 0.0;

//parte 1
  for (var jogadores = 0; jogadores < 11; jogadores++) {
    print(
        'Digite o salário do jogador ${jogadores + 1}:'); //a variavel +1 é para ir do 0 ate 11
    var salarioJogadorLeitura = stdin.readLineSync() as String;
    var salarioJogador = double.parse(salarioJogadorLeitura);

    print('Digite o número da camisa do jogador ${jogadores + 1}');
    var numeroCamisaJogadorLeitura = stdin.readLineSync() as String;
    var numeroCamisaJogador = int.parse(numeroCamisaJogadorLeitura);

    //guardando  os valores

    numeroCamisa.add(numeroCamisaJogador);
    salario.add(salarioJogador);
    totalSalario = totalSalario + salarioJogador;//adcionando o salario do jogador
  }
  // 2 - calculando a media
  mediaSalarial = totalSalario / 11;
  print("A media salarial dos 11 jogadores é : $mediaSalarial");

//parte 3
  //ler o vetores baseado no indice:

  for(var jogadores = 0; jogadores < 11; jogadores++){
    if (salario[jogadores] > mediaSalarial){//a partir do indice de jogadores
  print('Salario acima da media: ${salario[jogadores]} - camisa: ${numeroCamisa[jogadores]} ');
    }
  }
}
