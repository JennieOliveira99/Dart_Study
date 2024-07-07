import 'dart:io';

void main() {
  // Pedindo dados do cliente
  print("Qual o seu nome?");
  var nomeUsuario = stdin.readLineSync();

  print('Prezado(a), $nomeUsuario. Seja muito bem-vindo(a) à nossa loja.');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');

  print('Digite um número entre 1 e 2');
  var numeroDigitado = stdin.readLineSync() as String;
  var numero = int.tryParse(numeroDigitado);

  if (numero == 1) {
    print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
  } else if (numero == 2) {
    print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
  } else {
    print('Número inválido');
  }
}
