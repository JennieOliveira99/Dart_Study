//Faça um programa que calcule o fatorial de um número.

//Esse programa deve receber como entrada um número inteiro positivo e imprimir na tela o fatorial dele.

import 'dart:io';

void main() {
  var calcularFatorial = 'sim';

  while (calcularFatorial == 'sim') {
    print('Digite um numero');
    var numeroLeituraCalculo = stdin.readLineSync() as String;
    var numeroCalculo = int.parse(numeroLeituraCalculo);
 
    var fatorial = calcularFatorialNumero(numeroCalculo);

    print('O fatorial de $numeroCalculo é $fatorial');

    print('Deseja calcular o fatorial de outro número? (sim/não):');
    calcularFatorial = stdin.readLineSync()!;
  }
}

//criando FUNÇÃO para calcular o fatorial
int calcularFatorialNumero(int n) {
  if (n == 0) {
    return 1;
  }

  var fatorial = 1;
  for (var i = 1; i <= n; i++) {
    fatorial *= i;
  }

  return fatorial;
}