import 'dart:io';

void main() {
  print('Você está apto para tirar carteira de motorista tipo D?');
  print('Digite sua idade: ');
  var idadeDoMotorista = stdin.readLineSync()as String;
  var idade = int.parse(idadeDoMotorista);

  print('Você está habilitado há pelo menos dois anos com a carteira B ou um ano com a carteira C? (sim/não)');
  var respostaCarteiraB = stdin.readLineSync() == 'sim';

  print('Você está habilitado há pelo menos um ano com a carteira C? (sim/não)');
  var respostaCarteiraC = stdin.readLineSync() == 'sim';

  print('Você tem alguma infração nos últimos doze meses? (sim/não)');
  var respostaInfracao = stdin.readLineSync() == 'sim';

  if (idade <= 20) {
    print('Sua idade é menor que 21 anos, por isso, você não pode tirar a carteira tipo D.');
  } else if (!respostaCarteiraB && !respostaCarteiraC) {
    print('Você não está habilitado pelo tempo necessário com as carteiras B ou C.');
  } else if (!respostaCarteiraC) {
    print('Você não está habilitado pelo tempo necessário com a carteira C.');
  } else if (respostaInfracao) {
    print('Você tem infração nos últimos doze meses, não pode tirar a carteira tipo D.');
  } else {
    print('Você está autorizado a tirar a carteira tipo D.');
  }
}
