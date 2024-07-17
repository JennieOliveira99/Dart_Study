import 'dart:io';

void main() {
/* 
    Agora para finalizar você deve permitir a compra de mais de um ingresso.
    por usuário
    Regras:
      - Validar se a fileira escolhida existe
      - Validar se a poltrona escolhida existe
      - Validar se a poltrona escolhida está disponível para compra.
*/

  var teatro = [];
  var fileiras = 7;
  var poltronasPorFileira = 6;

  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraTeatro = [];
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      fileiraTeatro.add(0);
    }
    teatro.add(fileiraTeatro);
  }

  var comprarMaisIngressos = 'S';

  while (comprarMaisIngressos.toLowerCase() == 's') {
    print(
        'Digite o numero da fileira em que voce deseja comprar (0 a ${fileiras - 1})');
    var fileiraComprada = int.parse(stdin.readLineSync() as String);

    if (fileiraComprada >= fileiras) {
      print('Fileira não existe');
      continue;
    }

    print(
        'Digite o numero da poltrona em que voce deseja comprar (0 a ${poltronasPorFileira - 1})');
    var poltronaComprada = int.parse(stdin.readLineSync() as String);

    if (poltronaComprada >= poltronasPorFileira) {
      print('Poltrona não existe');
      continue;
    }
    if (teatro[fileiraComprada][poltronaComprada] != 0) {
      print('Poltrona já comprada, por favor escolha outra.');
      continue;
    }
    teatro[fileiraComprada][poltronaComprada] = 1;

    print('Comprar Mais Ingressos? (S ou N)');
    comprarMaisIngressos = stdin.readLineSync() as String;
  }

  print('Mapa do Teatro');
  print('--------------------------------------');
  print('                # PALCO #             ');
  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraP = '';
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      if (teatro[fileira][poltrona] == 1) {
        fileiraP += '  ***    | ';
      } else {
        fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
      }
    }
    print(fileiraP);
  }
  print('');
  print('            # FINAL DO TEATRO #             ');
}