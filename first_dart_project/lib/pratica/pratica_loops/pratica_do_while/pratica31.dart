import 'dart:io';
void main() {
  /* Desenvolva um programa que solicite ao usuário digitar uma senha.
   Se a senha não conter pelo menos 6 caracteres, o programa deve solicitar 
   novamente até que uma senha válida seja digitada.
   */
  String senhaDigitada;
  bool senhaValida = false;

  do {
    print('Digite uma senha:');
    senhaDigitada = stdin.readLineSync()as String;

    if (senhaDigitada.length >= 6) {
      senhaValida = true;
    } else {
      print('A senha deve ter pelo menos 6 caracteres.\n');
    }
  } while (!senhaValida);

  print('Senha válida: $senhaDigitada');
}