// Imagine que você foi contratado para desenvolver um sistema para um caixa eletrônico
// de dinheiro. Esse caixa só serve para sacar dinheiro e só funciona para 10 clientes 
// por dia. Ao final de um dia, o sistema deve emitir um relatório apresentando: 
// qual foi o maior valor de dinheiro sacado, 
// qual a média do dinheiro sacado e 
// qual foi o total de dinheiro sacado por todos os clientes naquele dia.
import 'dart:io';

void main() {


  var maiorValor = 0;
  var totalValor = 0;

  for(var saques=1; saques <= 10; saques++){
    print('Qual o valor que você deseja sacar?');
    var valorLeitura = stdin.readLineSync() as String;
    var valor = int.parse(valorLeitura);

    if(valor > maiorValor) {
      maiorValor = valor;
    }

    totalValor = totalValor + valor;
    print('Saque de $valor realizado com sucesso ');
  }

  print('Relatório do Dia');
  print('Maior valor sacado: $maiorValor');
  print('Média do valor sacado: ${totalValor / 10}');
  print('Total de valor sacado: $totalValor');
}