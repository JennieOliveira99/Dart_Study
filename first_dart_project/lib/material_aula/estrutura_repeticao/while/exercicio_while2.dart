import 'dart:io';
void main() {

  var diasNascimentoTotal = 0;
  var totalVacinasRealizadas = 1;
  var aindaTemVacina = 'sim';

  while(aindaTemVacina == 'sim'){
    print('Digite a quantidade de dias do recém-nascido:');
    var diasNascimentoLeitura = stdin.readLineSync() as String;
    diasNascimentoTotal = diasNascimentoTotal + int.parse(diasNascimentoLeitura);
    totalVacinasRealizadas++;
    print('Ainda tem vacinas?');
    aindaTemVacina = stdin.readLineSync() as String;
  }
  print('Média dos bebês vacinados no dia foi de: ${diasNascimentoTotal / totalVacinasRealizadas}');

}
// Imagine que você foi contratado para desenvolver um sistema de uma clínica de vacina. 

// Não existe limite de vacinas BCG. 

// Monte um programa utilizando o comando enquanto que solicite quantos dias de nascimento tem o bebê que receberá 
// a vacina BCG. 
