import 'dart:io';

void main() {
  print('Digite o tamanho da blusa (P, M, G)');
  var tamanhoDaBlusa = stdin.readLineSync();

  switch (tamanhoDaBlusa) {
    case 'p':
      print('Tamanho $tamanhoDaBlusa: 0.46 X 0.55');
      break;
    case 'm':
      print('Tamanho $tamanhoDaBlusa: 0.51 X 0.56 ');
      break;
    case 'g':
      print('Tamanho $tamanhoDaBlusa: 0.52 X 0.58');
      break;
    default:
    print('Tamanho inválido');
  }
}
