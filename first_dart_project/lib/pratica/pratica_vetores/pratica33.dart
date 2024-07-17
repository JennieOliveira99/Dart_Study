/*Crie um programa para fidelização de clientes de um restaurante.

A cada pagamento no restaurante, o valor é armazenado na cartela de fidelização.

Assim que o cliente completar as 10 posições da cartela, o sistema deve apresentar a seguinte mensagem: "Hoje o seu almoço é uma cortesia da casa, Parabéns!".
 */

import 'dart:io';

void main() {
  List<double> valores = [];
  int contadorPagamentos = 0;


  while (contadorPagamentos < 10) {
    contadorPagamentos++;
    
    print('Digite o valor do $contadorPagamentos º pagamento:');
    var valorPagopeloCliente = stdin.readLineSync()as String;
    var valorPago = double.parse(valorPagopeloCliente);

    // Armazenando o valor pago
    valores.add(valorPago);
  }


  print(' Hoje o seu almoço é uma cortesia da casa, Parabéns!');
}
