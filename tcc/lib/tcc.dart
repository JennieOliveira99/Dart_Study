import 'dart:io';

void main() {
  var clientesAtendidos = 0;
  var continuar = true;

  while (continuar) {
    clientesAtendidos++;
    print('Cliente/atendimento $clientesAtendidos');

    print("De qual forma quer acessar? (Digite 1 para funcionário ou 2 para cliente)");
    var tipoDeAcesso = stdin.readLineSync() as String; // Recebe como String
    var acesso = int.parse(tipoDeAcesso);

    switch (acesso) {
      case 1:
        print('Digite o código');
        var codigoUsuarioFuncionario = stdin.readLineSync() as String;

        if (codigoUsuarioFuncionario == 'cuidapetrestrito') {
          var total = 0.0;

          print('O cliente comprou Ração Royal Canin Indor 7,5kg? Digite S ou N');
          var compraClienteRacao = stdin.readLineSync()!.toUpperCase();

          if (compraClienteRacao == 'S') {
            total += 280.0;
          }

          print('O cliente solicitou banho e tosa? Digite S ou N');
          var compraClienteBanhoTosa = stdin.readLineSync()!.toUpperCase();
          if (compraClienteBanhoTosa == 'S') {
            total += 54.0;
          }

          print('O cliente solicitou tosa higienica? Digite S ou N');
          var compraClienteTosaHigienica = stdin.readLineSync()!.toUpperCase();
          if (compraClienteTosaHigienica == 'S') {
            total += 10.99;
          }

          print('O cliente solicitou hidratação? Digite S ou N.');
          var compraClienteHidratacao = stdin.readLineSync()!.toUpperCase();
          if (compraClienteHidratacao == 'S') {
            total += 39.99;
          }

          print('Valor total da ordem de serviço: R\$ ${total.toStringAsFixed(2)}');
        }
        break;

      case 2:
        var numeroDigitado = 0; // Inicializando aqui
        print("Qual o seu nome?");
        var nomeUsuario = stdin.readLineSync() as String;

        print('Prezado(a), $nomeUsuario. Seja muito bem-vindo(a) à nossa loja.');
        print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

        double valorProduto = 0.0;
        double desconto = 0.0;

        while (numeroDigitado != 10) {
          print('Digite um número entre 1, 2, 3, 4, 5, 6 ou 10 para sair');
          var numeroDigitadoString = stdin.readLineSync() as String;
          numeroDigitado = int.tryParse(numeroDigitadoString) ?? 0;

          switch (numeroDigitado) {
            case 1:
              print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
              valorProduto = 280.0;
              break;
            case 2:
              print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
              valorProduto = 54.0;
              break;
            case 3:
              print('Roupas em oferta - Capa de chuva R\$ 59,99');
              valorProduto = 59.99;
              break;
            case 4:
              print('Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99');
              valorProduto = 10.99 + 39.99 + 55.99;
              break;
            case 5:
              print('Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho');
              valorProduto = 345.99;
              desconto = 0.1;
              break;
            case 6:
              print('Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total');
              valorProduto = 54.0 + 10.99 + 39.99;
              desconto = 0.2;
              break;
            case 10:
              print('Saindo do programa...');
              continuar = false; // Modificando a variável de controle para sair do while
              break;
            default:
              print('Número inválido');
          }
          if (numeroDigitado != 10) {
            double totalComDesconto = valorProduto - (valorProduto * desconto);
            print('Valor com desconto: R\$ ${totalComDesconto.toStringAsFixed(2)}');
          }
        }
        break;

      default:
        print('#');
    }
  }

  print('Número total de clientes atendidos hoje: $clientesAtendidos');
}
