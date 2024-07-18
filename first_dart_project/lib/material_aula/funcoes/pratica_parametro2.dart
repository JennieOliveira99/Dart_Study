
// crie um programa que vai calcular o valor total de uma compra de um Biscoito(bolacha)
// caso o cliente compre + que 10 Biscoito(bolacha) aplique 10% de desconto no valor do Biscoito(bolacha)
// ----------------------------------------


// Step 1
// Crie um menu para o usuário escolher 2 tipos de bolachas 
// 1 - Sem Recheio
// 2 - Recheada

// Step 2
// Após isso solicite o usuário a quantidade de bolachas que ele gostaria



import 'dart:io';

String? menuEscolha(String comRecheio, String semRecheio) { //String?  permitindo retornar null
  print('Escolha o tipo de Bolacha:');
  print('1 - Com Recheio');
  print('2 - Sem Recheio');
  var escolhaBolacha = stdin.readLineSync();

  if (escolhaBolacha == '1') {
    return comRecheio;
  } else if (escolhaBolacha == '2') {
    return semRecheio;
  } else {
    print('Escolha inválida');
    return null; // ou tratar de outra forma, como lançar uma exceção
  }
}



double calcularPrecoBolacha(int quantidade, double valorBolacha) {
  if (quantidade > 10) {
    valorBolacha = valorBolacha * 0.9; // aplicando desconto de 10%
    print('Aplicando o desconto de 10%');
  }
  return valorBolacha * quantidade;
}

void main() {
  var comRecheio = 'Com Recheio'; // ajuste conforme os tipos reais de bolacha
  var semRecheio = 'Sem Recheio'; // ajuste conforme os tipos reais de bolacha

   var tipoBolacha = menuEscolha(comRecheio, semRecheio);
  if (tipoBolacha == null) {
    print('Escolha inválida. Encerrando o programa.');
    return; // Encerra o programa caso a escolha seja inválida
  }

  print('Digite a quantidade de Bolachas desejada:');
  var quantidade = int.parse(stdin.readLineSync()as String);

  var valorBolacha = 1.0; // valor base da bolacha

  var valorTotal = calcularPrecoBolacha(quantidade, valorBolacha);
  print('Valor total: $valorTotal');
}

