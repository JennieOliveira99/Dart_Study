/*Crie um programa que solicite uma letra e no final diga se ela é vogal ou não.
 Esse programa deve utilizar uma função que retorne o resultado para o programa principal.
 A mensagem final deve ser exibida então no programa principal */
import 'dart:io';

// Função que verifica se a letra é uma vogal
bool eVogal(String letra) {
  // Lista de vogais
  const vogais = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  return vogais.contains(letra);
}

void main() {
  print('Digite uma letra:');
  var letra = stdin.readLineSync();

  // Verifica se a entrada não é nula e tem apenas um caractere
  if (letra != null && letra.length == 1) { //verificando se nulo ou se apeas 1 letra
    if (eVogal(letra)) {
      print('A letra "$letra" é uma vogal.');
    } else {
      print('A letra "$letra" não é uma vogal.');
    }
  } else {
    print('Por favor, digite apenas uma letra.');
  }

  print('Fim da função');
}
