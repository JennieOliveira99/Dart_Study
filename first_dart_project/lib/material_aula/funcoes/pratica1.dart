import 'dart:io';

void calcularQtdAguaDiaria(){
  double peso;
  double resultado;
  String praticaAtividadeFisica;
  

  do { //add do while para evitar que o usuario digite valor menor que zero

    print('Digite seu peso');
    peso = double.parse(stdin.readLineSync() as String);
  }while(peso <= 0);
  
  do { //usando do while para evitar que ususario digite algo diferente de s ou n
  
    print('Digite S se você pratica atividade fisica ou N caso não pratique');
    praticaAtividadeFisica = stdin.readLineSync() as String;
  }while(praticaAtividadeFisica != 'S' && praticaAtividadeFisica != 'N');

  if(praticaAtividadeFisica == 'S'){
    resultado = peso * 0.04;
  }else{
    resultado = peso * 0.035;
  }
  print('Você deve beber $resultado litros de agua por dia');

}

void main() {
  print('Inicio do programa');
  calcularQtdAguaDiaria();
  print('Fim do programa');
}
