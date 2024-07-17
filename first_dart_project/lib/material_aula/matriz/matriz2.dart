import 'dart:io';

void main(){
  /*    Continuando o exemplo da venda de ingresso, agora o seu sistema deve solicitar 
    ao usuário qual poltrona ele deseja comprar. 
    O sistema então deve ocultar a poltrona comprada.  */

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

  print(
      'Digite o numero da fileira em que voce deseja comprar (0 a ${fileiras - 1})');
  var fileiraComprada = int.parse(stdin.readLineSync() as String);
  print(
      'Digite o numero da poltrona em que voce deseja comprar (0 a ${poltronasPorFileira - 1})');
  var poltronaComprada = int.parse(stdin.readLineSync() as String);

  print('Mapa do Teatro');
  print('--------------------------------------');
  print('                # PALCO #             ');
  for (var fileira = 0; fileira < fileiras; fileira++) {
    var fileiraP = '';
    for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
      if (fileira == fileiraComprada && poltrona == poltronaComprada) {
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