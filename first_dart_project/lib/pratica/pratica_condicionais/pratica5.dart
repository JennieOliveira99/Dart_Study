import 'dart:io';

void main(){

  print('Você precisa de atendimento prioritário? Responda sim ou nao');

  var atendimentoPrioritario = stdin.readLineSync();

  if (atendimentoPrioritario == "sim"){
    print ('Vá para os caixas 1, 2 e 3');
  }
else {
  print('Vá para qualquer caixa, exceto os 1, 2 e 3, que são prioritários');
}
}