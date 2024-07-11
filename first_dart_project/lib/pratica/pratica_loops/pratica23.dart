import 'dart:io';

void main(){

  for (var chance=1; chance <= 5; chance++){
    print('Digite a quantidade dee Bolinhas de GUde que você acha que tem no pote (5 tentativas)');
    var numeroDeTentativas = stdin.readLineSync()as String;
    var tentativas = int.parse(numeroDeTentativas);

    if(tentativas == 82){
      print('Parabéns, você acertou');
      break;
    }else if(tentativas < 82){
        print('Você errou! Existem mais bolinhas do que você digitou');
    }else if(tentativas > 82){
        print('Você errou! Existem menos bolinhas do que você digitou');
    }else{
      print('numero invalido');
    }

  }
}