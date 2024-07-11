import 'dart:io';

void main(){
  //TABUADA
  print ('Digite um numero para ver a tabuada');
  var numeroDigitado = stdin.readLineSync()as String;
  var numero = int.parse(numeroDigitado);

  for(var contador=10; contador >= 1; contador--){
    var tabuada = contador * numero;
    print('$numero  x  $contador = $tabuada ');
  }
}