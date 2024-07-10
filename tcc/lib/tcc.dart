import 'dart:io';

void main() {
  // Pedindo dados do cliente
  print("Qual o seu nome?");
  var nomeUsuario = stdin.readLineSync();

  print('Prezado(a), $nomeUsuario. Seja muito bem-vindo(a) à nossa loja.');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

  print('Digite um número entre 1 , 2, 3, 4, 5, 6');
  var numeroDigitado = stdin.readLineSync() as String;
  var numero = int.tryParse(numeroDigitado);

  if (numero == 1) {
    print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
  } else if (numero == 2) {
    print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
  }else if (numero == 3) {
    print('Roupas em oferta - Capa de chuva R\$59,99');
  }else if (numero == 4) {
    print('Novos serviços oferecidos: Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99');
  } else if (numero == 5) {
    print('Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho');
  } else if (numero == 6) {
    print('Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total');
  } else {
    print('Número inválido');
  }
}
