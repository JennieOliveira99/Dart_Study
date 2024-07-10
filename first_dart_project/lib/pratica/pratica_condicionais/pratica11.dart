import 'dart:io';

void main(){

  print ('Digite sua estação do ano favorita:');
  var estacaoDoAno = stdin.readLineSync();

  if(estacaoDoAno == "inverno"){
    print('inverno - 21 junho');
  }else if(estacaoDoAno == "outono"){
    print('outono - 20 de março');
  }else if(estacaoDoAno == "verao"){
    print('verão - 21 de dezembro');
  }else if(estacaoDoAno == "primavera"){
    print('primavera - 22 setembro');
  }else {
    print ('Estação invalida');
  }
}