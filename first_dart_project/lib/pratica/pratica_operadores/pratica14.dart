import 'dart:io';

void main() {
  // Definição dos preços dos produtos
  var precoLeite = 5.00;
  var precoQueijo = 8.00;
  var precoCoxinha = 15.00;
  var precoPaoDoce = 12.00;
  var precoBisnaga = 9.00;
  var precoPaoDeForma = 10.00;

  // Inputs do usuário
  print('Quantos pães você deseja comprar?');
  var quantidadeDePaes = int.parse(stdin.readLineSync()!);

  print('Precisa de Leite? (sim/não)');
  var compraLeite = stdin.readLineSync() == 'sim';

  print('Precisa de Queijo? (sim/não)');
  var compraQueijo = stdin.readLineSync() == 'sim';

  print('Precisa de Coxinha? (sim/não)');
  var compraCoxinha = stdin.readLineSync() == 'sim';

  // Variável para armazenar o maior desconto aplicável
  var descontoMaximo = 0.0;

  // Regra 1: 10% de desconto se comprar 10 pães e mais um queijo
  if (quantidadeDePaes >= 10 && compraQueijo) {
    var desconto = (precoQueijo + (10 * precoPaoDeForma)) * 0.1;
    if (desconto > descontoMaximo) {
      descontoMaximo = desconto;
    }
  }

  // Regra 2: 15% de desconto se comprar Bisnaga ou Pão de Forma
  if (quantidadeDePaes >= 1) {
    if (compraLeite && (compraQueijo || compraCoxinha)) {
      var desconto = (precoLeite + precoQueijo) * 0.05;
      if (desconto > descontoMaximo) {
        descontoMaximo = desconto;
      }
    }
  }

  // Regra 3: 5% de desconto se comprar Leite e Pão Doce ou Suspiro
  if (quantidadeDePaes >= 1) {
    if (compraLeite && (compraQueijo || compraCoxinha)) {
      var desconto = (precoLeite + precoPaoDoce) * 0.05;
      if (desconto > descontoMaximo) {
        descontoMaximo = desconto;
      }
    }
  }

  // Calcula o valor total da compra
  var total = (quantidadeDePaes * precoPaoDeForma) +
      (compraLeite ? precoLeite : 0) +
      (compraQueijo ? precoQueijo : 0) +
      (compraCoxinha ? precoCoxinha : 0);

  // Aplica o desconto máximo encontrado
  var valorComDesconto = total - descontoMaximo;

  // Exibe o resultado
  print('Valor total da compra: R\$ $total');
  print('Desconto aplicado: R\$ $descontoMaximo');
  print('Valor com desconto: R\$ $valorComDesconto');
}
