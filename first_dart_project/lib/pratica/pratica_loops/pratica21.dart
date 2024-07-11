import 'dart:io';

void main() {
//criando a variavel para armazenar valores m
  var maioresAlturasAtletas = 0;
  for (var i = 1; i <= 12; i++) {
    print('Digite a altura do atleta:');
    var alturaDoAtletas = stdin.readLineSync() as String;
    var altura = double.parse(alturaDoAtletas);

    if (altura > 1.90) {
      maioresAlturasAtletas++;
    }
  }

  print('Quantidade de atletas coma  aultura maior que 1.90: $maioresAlturasAtletas');
}
