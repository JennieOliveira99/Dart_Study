import 'dart:io';

void main() {

  print('Digite a sua idade:');
  var idadeLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas teóricas assistida:');
  var horasTeoricasLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas práticas assistida:');
  var horasPraticasLeitura = stdin.readLineSync() as String;

  var idade = int.parse(idadeLeitura);
  var horasTeorica = int.parse(horasTeoricasLeitura);
  var horasPraticas = int.parse(horasPraticasLeitura);

  // E (And) (&&)
  if(idade >= 18 && horasTeorica >= 45 && horasPraticas >=20){
    print('Apto(a)');
  }else{
    print('Não Apto(a)');
  }
  


}