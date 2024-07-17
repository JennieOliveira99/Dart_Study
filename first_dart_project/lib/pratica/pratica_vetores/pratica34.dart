import 'dart:io';

void main(){

  /*Crie um programa para armazenar os 6 caracteres da senha do usuário.

A senha só pode ter as vogais (a, e, i, o e u).

Depois de armazenar cada vogal em uma posição, seu programa deve realizar a criptografia da senha.

A lógica da criptografia é: cada letra 'a' deve ser substituída pelo caractere 'z', letra 'e' pelo caractere '3', letra 'i' pelo caractere 'l', letra 'o' pelo caractere '0' e letra 'u' pelo caractere $.

Após criptografar a senha, o programa deve apresentar a senha digitada e a senha criptografada. */

 List<String> senha = List<String>.filled(6, ''); // Criando um vetor para armazenar a senha de tamanho 6

  for (int i = 0; i < senha.length; i++) {
    print('Digite o ${i + 1}º caractere da senha (apenas vogais a, e, i, o, u):');
    String caractere = stdin.readLineSync()as String;

    // Validando se o caractere é uma vogal permitida
    if (caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u') {
      senha[i] = caractere;
    } else {
      print('Caractere inválido. Por favor, digite uma vogal (a, e, i, o, u).');
      i--; // Para repetir a entrada do mesmo índice
    }
  }

  // Criptografando a senha
  String senhaCriptografada = '';
  for (int i = 0; i < senha.length; i++) {
    String caractere = senha[i];
    switch (caractere) {
      case 'a':
        senhaCriptografada += 'z';
        break;
      case 'e':
        senhaCriptografada += '3';
        break;
      case 'i':
        senhaCriptografada += 'l';
        break;
      case 'o':
        senhaCriptografada += '0';
        break;
      case 'u':
        senhaCriptografada += '\$';
        break;
      default:
     
        break;
    }
  }

  // Exibindo as senhas
  print('Senha digitada: ${senha.join()}'); // Usando join() para converter a lista em string
  print('Senha criptografada: $senhaCriptografada');
}
