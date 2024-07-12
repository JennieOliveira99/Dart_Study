import 'dart:io';

void main(){

  var maiorNota = 0.0;
   var menorNota = 100.0; // Inicializado com um valor alto para garantir que qualquer nota digitada seja menor
  var totalNotas = 0.0;

  for (var nota=1; nota <= 25; nota++){
  print('Digite a nota do aluno:');
    var notaLeitura = stdin.readLineSync() as String;
    var notaAluno = double.parse(notaLeitura);

      // Encontrar a maior nota
    if (notaAluno > maiorNota) {
      maiorNota = notaAluno;
    }

    // Encontrar a menor nota
    if (notaAluno < menorNota) {
      menorNota = notaAluno;
    }

  //obtendo a soma das notas(valores)
    totalNotas = totalNotas + notaAluno;
  }

  print('A maior nota é: $maiorNota');
  print('A menor nota é: $menorNota');
   print('Média entre as notas é: ${totalNotas / 25}');
}