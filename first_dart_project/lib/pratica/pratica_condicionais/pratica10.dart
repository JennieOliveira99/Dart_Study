import 'dart:io';

void main(){
  print ('Escolha uma letra entre: L, M, A, U ');
  var letraEscolhida = stdin.readLineSync();

  if (letraEscolhida == "L"){
    print('Você escolheu o suco de laranja  que possui vitamina C');
  }else if(letraEscolhida == "M"){
    print('Você escolheu o suco de morango  que possui vitamina A');
  }else if(letraEscolhida == "A"){
    print('Você escolheu o suco de acerola  que possui vitamina C');
  }else if(letraEscolhida == "U"){
    print('Você escolheu o suco de uva que possui vitamina E');
  }else{
    print('Letra Inválida');
  }

}