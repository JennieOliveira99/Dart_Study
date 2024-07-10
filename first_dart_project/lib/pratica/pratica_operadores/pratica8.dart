import 'dart:io';

void main(){

print ('Digite sua idade');
var idadeDoUsuario = stdin.readLineSync() as String;
var idade = int.parse(idadeDoUsuario);

if (idade <= 15){
  print ('Idade mínima para votar é 16 anos, você não pode votar');
}else if (idade > 15 || idade < 18 || idade < 69){
  print('Voto facultativo');
}else if(idade >= 18 || idade <= 69){
  print('Voto obrigatório');
}else {
  print('Idade invalida');
}
}