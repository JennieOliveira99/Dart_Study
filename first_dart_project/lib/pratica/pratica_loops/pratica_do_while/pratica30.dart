import 'dart:io';

void main() {
  
  bool diaEscolhidoValido = false;

  do {
    print('Qual o melhor dia para você pagar o seu boleto?');
    print('Dia 2, 5, ou 10? (Digite o número correspondente)');
    var melhorDiaDePagamento = stdin.readLineSync()as String;
    var diaPagamento = int.tryParse(melhorDiaDePagamento);

    if (diaPagamento == 2 || diaPagamento == 5 || diaPagamento == 10) {
      diaEscolhidoValido = true;
      print('Boleto registrado, pagamento dia $diaPagamento');
    } else {
      print('$diaPagamento é inválido, por favor escolha entre os dias: 2, 5, ou 10');
    }
  } while (!diaEscolhidoValido);
}

/*Você foi contratado para desenvolver um sistema de emissão de boletos.

O cliente deve informar qual o melhor dia para pagamento do boleto.

    Os dias disponíveis são 2, 5 ou 10.
    O sistema deve validar o dia informado pelo cliente e apresentar a mensagem boleto registrado caso o dia seja válido.
    Se o dia for inválido, o sistema deve solicitar um novo dia até que ele seja digitado corretamente.
 */