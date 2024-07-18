import 'dart:io';

void menu(){
   print(
        'Opção 1 – Ver promoções | Opção 2 – Solicitar serviço | Opção 3 – Listar carrinho de compras | Opção 4 - Finalizar carrinho de compras | Opção 0 - Sair');
}

void main() {
  List<double> carrinhoDeCompras = [];
  const int maxItens = 3; //definindo condicao de apenas 3 itens por venda

  // Fase 1
  print('Bem-vindo ao autoatendimento do Cuidapet');
  print('Qual é o seu nome?');
  var nomeCliente = stdin.readLineSync() as String;

  if (nomeCliente == "cuidapetrestrito") {
    //Fase 9
    //Fase 10
    print('Digite o nome do cliente: ');
    var nomeClienteEntrada = stdin.readLineSync() as String;

    print('Digite o valor gasto pelo cliente: ');
    var valorGastoCliente = stdin.readLineSync() as String;
    var valorGasto = double.parse(valorGastoCliente);

    print('Qual foi a forma de pagamento? D para Dinheiro e C para Cartão');
    var formaPagamento = stdin.readLineSync()!.toUpperCase();
    if (formaPagamento == 'D') {
      double desconto = valorGasto * 0.10; // 10% de desconto
      valorGasto -= desconto;
      print('Desconto aplicado: R\$ ${desconto.toStringAsFixed(2)}');
    } else if (formaPagamento == 'C') {
      print('Pagamento realizado no cartão, sem desconto.');
    } else {
      print('Forma de pagamento inválida.');
    }

    print('Valor final a ser pago pelo cliente $nomeClienteEntrada é: R\$ ${valorGasto.toStringAsFixed(2)}');
  }

  while (true) {
    //garantindo que seja executada até o usuário pedir para sair
    // Fase 2
   // print( 'Opção 1 – Ver promoções | Opção 2 – Solicitar serviço | Opção 3 – Listar carrinho de compras | Opção 4 - Finalizar carrinho de compras | Opção 0 - Sair');
  menu();
    
    print('Digite sua opção desejada:');
    var opcaoMenuLeitura = stdin.readLineSync() ?? '';
    var opcaoMenu = int.tryParse(opcaoMenuLeitura) ?? -1;

    // Fase 4
    switch (opcaoMenu) {
      case 1:
        print(
            'Código 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$ 290,00.');
        print(
            'Código 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$ 492,00.');
        print(
            'Código 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.');
        print(
            'Código 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.');

        print(
            '8 – Digite o código do produto para adicionar ao carrinho ou 0 para voltar:');

        var codigoProdutoDigitado = stdin.readLineSync() ?? '';
        var codigoProduto = int.tryParse(codigoProdutoDigitado) ?? -1;

        //se opção 0 for digitada
        if (codigoProduto == 0) {
          break;
        }

        if (carrinhoDeCompras.length >= maxItens) {
          print(
              'Erro: Você não pode adicionar mais de $maxItens itens ao carrinho.');
          break;
        }

        switch (codigoProduto) {
          case 101:
            carrinhoDeCompras.add(290.00);
            print('Produto adicionado ao carrinho.');
            break;
          case 102:
            carrinhoDeCompras.add(492.00);
            print('Produto adicionado ao carrinho.');
            break;
          case 103:
            carrinhoDeCompras.add(23.92);
            print('Produto adicionado ao carrinho.');
            break;
          case 104:
            carrinhoDeCompras.add(38.61);
            print('Produto adicionado ao carrinho.');
            break;
          default:
            print('Código de produto inválido.');
        }
        break;
      //Fase 5
      case 2:
        print('Código 201 - Banho e tosa - R\$ 55,99.');
        print('Código 202 - Tosa higienica -R\$ 12,99.');
        print('Código 203 - Hidratação dos pelos - R\$ 20,99.');

        print(
            '8 – Digite o código do serviço para adicionar ao carrinho ou 0 para voltar:');

        var codigoProdutoDigitado = stdin.readLineSync() ?? '';
        var codigoProduto = int.tryParse(codigoProdutoDigitado) ?? -1;

        //se opção 0 for digitada
        if (codigoProduto == 0) {
          break;
        }
        //Fase 8
        if (carrinhoDeCompras.length >= maxItens) {
          print(
              'Erro: Você não pode adicionar mais de $maxItens itens ao carrinho.');
          break;
        }

        switch (codigoProduto) {
          case 201:
            carrinhoDeCompras.add(55.99);
            print('Serviço adicionado ao carrinho.');
            break;

          case 202:
            carrinhoDeCompras.add(12.99);
            print('Serviço adicionado ao carrinho.');
            break;

          case 203:
            carrinhoDeCompras.add(20.99);
            print('Serviço adicionado ao carrinho.');
            break;

          default:
            print('Código de produto inválido.');
        }

        break;
      // Fase 6
      // Fase 3
      case 3:
        if (carrinhoDeCompras.isEmpty) {
          print('Carrinho vazio.');
        } else {
          print('Itens no carrinho de compras:');
          for (int produtoIndex = 0;
              produtoIndex < carrinhoDeCompras.length;
              produtoIndex++) {
            print(
                'Produto ${produtoIndex + 1}: R\$ ${carrinhoDeCompras[produtoIndex]}');
          }
        }
        break;
      //Fase 7
      case 4:
        if (carrinhoDeCompras.isNotEmpty) {
          double totalDaCompra = 0.0;
          // Calculo do total usando for
          for (double item in carrinhoDeCompras) {
            totalDaCompra += item;
          }

          print('Qual a forma de Pagamento? D para Dinheiro e C para cartão');
          var metodoPagamento = stdin.readLineSync()!.toUpperCase();
          if (metodoPagamento == 'D') {
            double desconto = totalDaCompra * 0.10; // 10% de desconto
            totalDaCompra -= desconto;
            print('Desconto aplicado: R\$ ${desconto.toStringAsFixed(2)}');
          }

          print('Total do carrinho: R\$ ${totalDaCompra.toStringAsFixed(2)}');
          print('Finalizando a compra.');

          return;
        } else {
          print(
              'Carrinho está vazio. Adicione itens antes de finalizar a compra.');
        }
        break;
      case 0:
        print('Saindo...');
        return;

      default:
        print(
            'Por favor, digite o código correto da opção desejada ou digite 0 para SAIR.');
    }
  }
}
