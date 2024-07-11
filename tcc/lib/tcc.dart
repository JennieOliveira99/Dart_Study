import 'dart:io';

void main() {
  print("De qual forma quer acessar? (Digite 1 para funcionário ou 2 para cliente)");
  var tipoDeAcesso = stdin.readLineSync()!;
  var acesso = int.parse(tipoDeAcesso);

  switch (acesso) {
    case 1:
      print('Digite o código');
      var codigoUsuarioFuncionario = stdin.readLineSync();

      if (codigoUsuarioFuncionario == 'cuidapetrestrito') {
        print('O cliente comprou Ração Royal Canin Indor 7,5kg? Digite S ou N');
        var compraClienteRacao = stdin.readLineSync()!;
        var total = 0.0;

        if (compraClienteRacao == 'S') {
          total += 280.0;
        }

        print('O cliente solicitou banho e tosa? Digite S ou N');
        var compraClienteBanhoTosa = stdin.readLineSync()!;
        if (compraClienteBanhoTosa == 'S') {
          // Adicionar o valor do serviço de banho e tosa ao total
          total += 54.0;
        }

        print('O cliente solicitou tosa higienica? Digite S ou N');
        var compraClienteTosaHigienica = stdin.readLineSync()!;
        if (compraClienteTosaHigienica == 'S') {
          // Adicionar o valor do serviço de tosa higiênica ao total
          total += 10.99;
        }

        print('O cliente solicitou hidratação? Digite S ou N.');
        var compraClienteHidratacao = stdin.readLineSync()!;
        if (compraClienteHidratacao == 'S') {
          // Adicionar o valor do serviço de hidratação ao total
          total += 39.99;
        }

        // Exibir o valor total da ordem de serviço
        print('Valor total da ordem de serviço: R\$ ${total.toStringAsFixed(2)}');
      }

      break;

    case 2:
      // Pedindo dados do cliente
      print("Qual o seu nome?");
      var nomeUsuario = stdin.readLineSync()as String;

      print('Prezado(a), $nomeUsuario. Seja muito bem-vindo(a) à nossa loja.');
      print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

      print('Digite um número entre 1 , 2, 3, 4, 5, 6');
      var numeroDigitado = stdin.readLineSync()as String;
      var numero = int.tryParse(numeroDigitado) ?? 0;

      double valorProduto = 0.0;
      double desconto = 0.0;

      if (numero == 1) {
        print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
        valorProduto = 280.0;
      } else if (numero == 2) {
        print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
        valorProduto = 54.0;
      } else if (numero == 3) {
        print('Roupas em oferta - Capa de chuva R\$59,99');
        valorProduto = 59.99;
      } else if (numero == 4) {
        print('Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99');
        // Aqui você pode somar os valores dos serviços escolhidos
        valorProduto = 10.99 + 39.99 + 55.99;
      } else if (numero == 5) {
        print('Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho');
        valorProduto = 345.99;
        desconto = 0.1; 
      } else if (numero == 6) {
        print('Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total');
        // Aqui você pode somar os valores dos serviços escolhidos
        valorProduto = 54.0 + 10.99 + 39.99;
        desconto = 0.2; 
      } else {
        print('Número inválido');
      }

      // Calcular o valor com desconto
      double totalComDesconto = valorProduto - (valorProduto * desconto);

      // Exibir o valor final com desconto
      print('Valor com desconto: R\$ ${totalComDesconto.toStringAsFixed(2)}');
      break;

    default:
      print('');
  }
}
