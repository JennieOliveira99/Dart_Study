import 'dart:io';

void main(){
  
var totalDiasNascimento = 0;
var totalVacinasRealizadas = 1;

while (totalVacinasRealizadas <= 30){
  print ('Digite a quantidade de dias do recém-nascido');
  var diasNascimento = stdin.readLineSync()as String;
  totalDiasNascimento = totalDiasNascimento +  int.parse(diasNascimento);
  totalVacinasRealizadas++;
}

  var mediaDias = totalDiasNascimento / 30;
  print('A média dos bebês vacinados por dia foi de: $mediaDias dias.');
}