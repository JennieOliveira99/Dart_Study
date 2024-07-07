
    import 'dart:io';
    void main(){

      print ('Digite sua idade');
      String idadeUsuario = stdin.readLineSync() as String;

      print ('Digite o valor do seu celular');
      String valorDoTelefone = stdin.readLineSync() as String;

     
  // Converte a idade para inteiro e soma 10 anos
  int idade = int.parse(idadeUsuario) + 10;

  // Converte o valor do celular para double e subtrai 10 reais
  double valorCelular = double.parse(valorDoTelefone) - 10.0;

  // Apresenta os resultados na tela
  print("\nApós 10 anos, a sua idade será: $idade anos");
  print("Após uma redução de R\$10, o novo valor do celular é: $valorCelular");
}

 
 /*2° exercicio


  print ('Digite sua idade.');
 var idade = stdin.readLineSync() as String;//transformando de ?string para string
  print(int.parse(idade) + 2); //mudando o tipo do dado

    */